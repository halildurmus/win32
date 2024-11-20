import 'package:code_builder/code_builder.dart' as cb;
import 'package:winmd/winmd.dart' as winmd;

import '../extensions/collection.dart';
import '../extensions/method_def.dart';
import '../extensions/module_ref.dart';
import '../extensions/param.dart';
import '../extensions/string.dart';
import '../extensions/type_def.dart';
import '../interop_type.dart';
import '../logger.dart';
import '../models/functions.dart';
import '../projection.dart';
import 'function.dart';

/// Generates Dart projections for the functions exported by a dynamic
/// library (DLL).
final class DynamicLibraryProjection extends Projection {
  /// Constructs a [DynamicLibraryProjection] with the given [module] and
  /// [methods].
  DynamicLibraryProjection(this.module, this.methods, {super.formatCode})
    : name = module.name.toLowerCase(),
      safeName = module.safeName;

  /// The metadata about the dynamic library.
  final winmd.ModuleRef module;

  /// The name of the dynamic library being projected (e.g., `ole32.dll`).
  final String name;

  /// A safe Dart identifier for the dynamic library, with invalid characters
  /// replaced and file extensions removed (e.g., `ole32`).
  final String safeName;

  /// The list of methods associated with the dynamic library.
  final List<winmd.MethodDef> methods;

  /// Returns the appropriate import for the provided [typeDef].
  String? getImportForTypeDef(winmd.TypeDef typeDef) =>
      switch (typeDef.category) {
        winmd.TypeCategory.delegate => '../callbacks.g.dart',
        winmd.TypeCategory.enum$ => '../enums.g.dart',
        winmd.TypeCategory.interface =>
          '../com/${typeDef.nameWithoutEncoding.safeFilename}',
        _ => null,
      };

  /// Returns the appropriate import for the given [type].
  String? getImportForType(InteropType type) => switch (type) {
    DEVPROPKEYType() => '../devpropkey.dart',
    GUIDType() => '../guid.dart',
    PROPERTYKEYType() => '../propertykey.dart',
    PROPVARIANTType() => '../propvariant.dart',
    SID_IDENTIFIER_AUTHORITYType() => '../sididentifierauthority.dart',
    VARIANTType() => '../variant.dart',
    ObjectType() => '../com/iinspectable.g.dart',
    TypeDefType(:final typeDef) => getImportForTypeDef(typeDef),
    _ => null,
  };

  /// Set of imports required based on the functions in the dynamic library.
  ///
  /// This analyzes the parameters and return types to determine necessary
  /// imports.
  Set<String> get functionBasedImports {
    final imports = <String>{};

    // Iterate through each method in the interface.
    for (final method in methods) {
      final types = [
        // Add the return type of the method.
        method.returnType,
        // Add the types of each parameter.
        ...method.parameters.map((p) => p.type),
      ];
      // Iterate through each parameter to add imports.
      for (final type in types) {
        // Add imports for a parameter itself (e.g., VARIANT).
        final import = getImportForType(type);
        if (import != null) imports.add(import);

        // Add imports for types within an array (e.g., SAFEARRAYBOUND[]).
        if (type case ArrayType(:final element)) {
          final import = getImportForType(element);
          if (import != null) imports.add(import);
        }

        // Add imports for types within a pointer (e.g., Pointer<VARIANT>).
        var refType = type;
        while (refType.tryDeref() != null) {
          refType = refType.deref();
          final import = getImportForType(refType);
          if (import != null) imports.add(import);
        }
      }
    }

    return imports;
  }

  /// Set of core imports required for the generated file.
  Set<String> get coreImports => {
    'dart:ffi',
    'package:ffi/ffi.dart',
    '../allocator.dart',
    '../bstr.dart',
    '../com/interface.g.dart',
    '../com/iunknown.g.dart',
    '../constants.dart',
    '../constants.g.dart',
    '../extensions/pointer.dart',
    '../exception.dart',
    '../hresult.dart',
    '../hstring.dart',
    if (methods.any((m) => m.supportsLastError))
      '../_internal/$safeName.g.dart',
    '../macros.dart',
    '../ntstatus.dart',
    '../pcstr.dart',
    '../pcwstr.dart',
    '../pstr.dart',
    '../pwstr.dart',
    '../structs.g.dart',
    '../types.dart',
    '../utils.dart',
  };

  /// The complete set of imports for the generated file.
  List<cb.Directive> get imports => {
    ...coreImports,
    ...functionBasedImports,
  }.map(cb.Directive.import).toFixedList();

  @override
  cb.Library generate() {
    generatorLogger.finest('Generating $debugName...');
    return cb.Library(
      (b) => b
        ..directives.addAll(imports)
        ..body.addAll(methods.map((m) => FunctionProjection(m).generate())),
    );
  }

  @override
  String get debugName => 'DynamicLibraryProjection(name: $name)';
}

/// Generates unit tests for the functions exported by a dynamic library,
/// verifying that the function can be instantiated correctly.
///
/// It also supports version checks for functions that are only available in
/// specific Windows versions.
final class DynamicLibraryTestProjection extends DynamicLibraryProjection {
  /// Constructs a [DynamicLibraryTestProjection] for the given [module],
  /// [methods], and [functions].
  DynamicLibraryTestProjection(super.module, super.methods, this.functions);

  /// Metadata about the Win32 functions to assist in test generation.
  final List<Win32Function> functions;

  @override
  Set<String> get coreImports => {
    'dart:ffi',
    'package:checks/checks.dart',
    'package:ffi/ffi.dart',
    'package:test/scaffolding.dart',
    if (methods.any((m) => m.supportsLastError))
      'package:win32/src/_internal/$safeName.g.dart',
    'package:win32/win32.dart',
    if (name == 'ws2_32.dll') 'package:win32/winsock2.dart',
    '../../helpers.dart',
  };

  @override
  Set<String> get functionBasedImports => const {};

  @override
  cb.Library generate() {
    generatorLogger.finest('Generating $debugName...');
    return cb.Library(
      (b) => b
        ..directives.addAll(imports)
        ..body.addAll([
          cb.Method.returnsVoid(
            (b) => b
              ..name = 'main'
              ..body = cb.Block.of([
                cb.Block.of([
                  cb.Code("group('$name', () {"),
                  ...methods.map(_generateTest),
                  const cb.Code('});'),
                ]),
              ]),
          ),
          ...methods
              .where((m) => !m.supportsLastError)
              .where((m) {
                final function = functions.firstWhere(
                  (f) => f.originalName == m.name,
                );
                // Skip functions that require an EXE manifest for testing
                // (e.g., TaskDialog APIs).
                if (function.originalName.startsWith('TaskDialog')) {
                  return false;
                }
                return true;
              })
              .map((m) => FunctionProjection(m).generateNativeFunction()),
        ]),
    );
  }

  /// Generates a test for a specific [method].
  ///
  /// The test verifies that the method can be looked up in the dynamic library
  /// and instantiated correctly as a Dart function.
  cb.Block _generateTest(winmd.MethodDef method) {
    final function = functions.firstWhere((f) => f.originalName == method.name);
    // Skip functions that require an EXE manifest for testing (e.g.,
    // TaskDialog APIs).
    if (function.originalName.startsWith('TaskDialog')) {
      generatorLogger.finest('Skipping test for ${method.name}...');
      return cb.Block.of(const []);
    }

    generatorLogger.finest('Generating test for ${method.name}...');
    final projection = FunctionProjection(method);
    final minVersion = function.minimumWindowsVersion;
    return cb.Block.of([
      cb.Code(
        "test('${projection.name} can be instantiated', "
        // Skip the test if the minimum Windows version requirement is not met.
        "${minVersion > 0 ? 'skip: $minVersion > windowsBuildNumber, ' : ''}"
        '() {',
      ),
      // Ensure the function can be looked up in the dynamic library.
      cb
          .refer('check')
          .call([cb.refer(projection.wrapperName)])
          .property('isA')
          .call(const [], const {}, [cb.refer('Function')])
          .statement,
      const cb.Code('});'),
    ]);
  }

  @override
  String get debugName => 'DynamicLibraryTestProjection(name: $name)';
}
