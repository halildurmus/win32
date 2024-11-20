import 'dart:ffi';

import 'package:code_builder/code_builder.dart' as cb;
import 'package:win32/win32.dart';
import 'package:winmd/winmd.dart';

import '../docs/api_details.dart';
import '../extensions/collection.dart';
import '../extensions/method.dart';
import '../extensions/parameter.dart';
import '../extensions/string.dart';
import '../extensions/typedef.dart';
import '../logger.dart';
import '../projection.dart';
import '../type.dart';
import '../windows_metadata.dart';
import 'method.dart';
import 'property.dart';

/// Represents a Dart projection for a COM interface defined by a [TypeDef].
///
/// This class generates a Dart class that mirrors the COM interface, providing
/// a type-safe and intuitive way to work with COM interfaces in Dart.
base class ComInterfaceProjection extends Projection with ProjectionMixin {
  /// Constructs a [ComInterfaceProjection] for a COM interface.
  ///
  /// Throws an [AssertionError] if the [typeDef] is not a COM interface.
  ComInterfaceProjection(this.typeDef)
    : assert(
        typeDef.kind == TypeKind.interface,
        '${typeDef.name} is not an interface.',
      ),
      name = typeDef.safeIdentifier,
      originalName = typeDef.simpleName;

  /// The name of the interface converted to a legal Dart type name.
  final String name;

  /// The original name of the interface.
  final String originalName;

  /// The metadata associated with the interface.
  final TypeDef typeDef;

  List<ComMethodProjection>? _cachedMethodProjections;

  /// The method projections for the methods of the interface.
  List<ComMethodProjection> get methodProjections =>
      _cachedMethodProjections ??= _cacheMethodProjections();

  List<ComMethodProjection> _cacheMethodProjections() =>
      typeDef.methods
          .map(
            (m) => switch (m) {
              _ when m.canBeProjectedAsGetter => ComGetPropertyProjection(m),
              _ when m.canBeProjectedAsSetter => ComSetPropertyProjection(m),
              _ => ComMethodProjection(m),
            },
          )
          .toFixedList();

  /// The interface that this interface inherits from (e.g., `IDispatch`).
  cb.Reference? get inheritsFrom =>
      typeDef.interfaces.firstOrNull != null
          ? cb.refer(typeDef.interfaces.first.safeIdentifier)
          : null;

  /// Set of core imports required for the interface.
  Set<String> get coreImports => {
    'dart:ffi',
    'dart:typed_data',
    'package:ffi/ffi.dart',
    'package:meta/meta.dart',
    '../allocator.dart',
    '../bstr.dart',
    '../constants.dart',
    '../constants.g.dart',
    '../extensions/iunknown.dart',
    '../extensions/pointer.dart',
    '../exception.dart',
    '../guid.dart',
    '../hresult.dart',
    '../hstring.dart',
    if (name == 'IUnknown') '../_internal/win32.dart',
    if (name != 'IUnknown') 'iunknown.g.dart',
    '../macros.dart',
    '../ntstatus.dart',
    '../pcstr.dart',
    '../pcwstr.dart',
    '../pstr.dart',
    '../pwstr.dart',
    '../structs.g.dart',
    if (typeDef.guid != null) 'interface.g.dart',
    if (hasMethods || typeDef.guid != null) '../types.dart',
    '../utils.dart',
  };

  /// Returns the appropriate import for the provided [typeDef].
  String? getImportForTypeDef(TypeDef typeDef) => switch (typeDef.kind) {
    TypeKind.delegate => '../callbacks.g.dart',
    TypeKind.enum$ => '../enums.g.dart',
    TypeKind.interface => typeDef.nameWithoutEncoding.safeFilename,
    _ => null,
  };

  /// Returns the appropriate import for the given [type].
  String? getImportForType(Type type) => switch (type) {
    DEVPROPKEYType() => '../devpropkey.dart',
    GUIDType() => '../guid.dart',
    PROPERTYKEYType() => '../propertykey.dart',
    PROPVARIANTType() => '../propvariant.dart',
    SID_IDENTIFIER_AUTHORITYType() => '../sididentifierauthority.dart',
    VARIANTType() => '../variant.dart',
    TypeDefType(:final typeDef) => getImportForTypeDef(typeDef),
    _ => null,
  };

  /// Set of imports required based on the methods of the interface.
  ///
  /// This analyzes the parameters and return types to determine necessary
  /// imports.
  Set<String> get methodBasedImports {
    final imports = <String>{};

    // Iterate through each method in the interface.
    for (final method in typeDef.methods) {
      // Combine method parameters and return type to analyze all type
      // identifiers.
      final paramsAndReturnType = [...method.parameters, method.returnType];

      // Iterate through each parameter and return type to add imports.
      for (final param in paramsAndReturnType) {
        // Add imports for a parameter itself (e.g., VARIANT).
        final import = getImportForType(param.type);
        if (import != null) imports.add(import);

        // Add imports for types within a pointer (e.g., Pointer<VARIANT>).
        // Keep unwrapping until there are no types left.
        var refType = param.typeIdentifier;
        while (refType.typeArg != null) {
          refType = refType.typeArg!;
          final import = getImportForType(Type.fromTypeIdentifier(refType));
          if (import != null) imports.add(import);
        }
      }
    }

    return imports;
  }

  /// Import for the inherited interface, if applicable.
  String? get inheritedInterfaceImport => switch (typeDef.interfaces) {
    // COM interfaces can only inherit from single interface.
    [final parent] => parent.nameWithoutEncoding.safeFilename,
    _ => null,
  };

  /// The complete set of imports for the generated file.
  List<cb.Directive> get imports =>
      {
        ...coreImports,
        ...methodBasedImports,
        if (inheritedInterfaceImport case final interfaceImport?)
          interfaceImport,
      }.map(cb.Directive.import).toFixedList();

  /// Whether the interface has methods.
  bool get hasMethods => typeDef.methods.isNotEmpty;

  /// Whether the interface has properties (getters or setters).
  bool get hasProperties => typeDef.methods.any(
    (m) => m.canBeProjectedAsGetter || m.canBeProjectedAsSetter,
  );

  /// The API documentation for the interface, if available.
  ApiDetails? get apiDetails => WindowsMetadata.docs.documentation(typeDef);

  @override
  cb.Library generate() {
    logger.finest('Generating $debugName...');
    return cb.Library(
      (b) =>
          b
            ..directives.addAll(imports)
            ..body.addAll([
              if (typeDef.guid case final guid?)
                _generateGuidConstant('IID_$name', guid),
              _generateClass(),
              _generateVtblStruct(),
              if (typeDef.guid != null) _generateCompanionClass(),
              if (name == 'IUnknown') _generateRefCountMethod(),
            ]),
    );
  }

  cb.Field _generateGuidConstant(String name, String guid) {
    cb.Expression hexExpression(int value) =>
        cb.CodeExpression(cb.Code('0x${value.toRadixString(16)}'));

    final nativeGuid = GUIDFromString(guid);
    final data4 = guid.split('-').sublist(3).join();
    final data4Chunks =
        [
          data4.substring(0, 2),
          data4.substring(2, 4),
          data4.substring(4, 6),
          data4.substring(6, 8),
          data4.substring(8, 10),
          data4.substring(10, 12),
          data4.substring(12, 14),
          data4.substring(14, 16),
        ].map((e) => int.parse('0x$e')).toFixedList();

    return cb.Field(
      (b) =>
          b
            ..docs.add('@nodoc')
            ..modifier = cb.FieldModifier.final$
            ..name = name
            ..assignment =
                cb.refer('Guid').property('fromComponents').call([
                  hexExpression(nativeGuid.ref.Data1),
                  hexExpression(nativeGuid.ref.Data2),
                  hexExpression(nativeGuid.ref.Data3),
                  cb.refer('Uint8List').property('fromList').call([
                    cb.literalConstList(
                      data4Chunks.map(hexExpression).toFixedList(),
                    ),
                  ]),
                ]).code,
    );
  }

  /// Generates the Dart class representing the COM interface.
  cb.Class _generateClass() => cb.Class(
    (b) =>
        b
          ..docs.addAll(
            generateApiDocs(apiDetails, tokenObject: typeDef, category: 'com'),
          )
          ..name = name
          ..extend = inheritsFrom
          ..implements.addAll([
            if (typeDef.guid != null) cb.refer('ComInterface'),
            if (name == 'IUnknown') cb.refer('Finalizable'),
          ])
          ..constructors.addAll(_generateConstructors())
          ..fields.addAll([
            ..._generateClassFields(),
            if (hasMethods) ...methodProjections.map((m) => m.functionLookup),
          ])
          ..methods.addAll([
            if (name == 'IUnknown') _generateDetachMethod(),
            ...methodProjections.map((m) => m.generate().body[0] as cb.Method),
            _generateToStringMethod(),
          ]),
  );

  /// Generates the constructor(s) for the COM interface.
  List<cb.Constructor> _generateConstructors() => [
    if (inheritsFrom == null)
      cb.Constructor(
        (b) =>
            b
              ..docs.addAll([
                'Creates a new instance of [$name] from a [VTablePointer].',
                'This constructor requires a valid pointer to the [$name] '
                    'interface. The [ptr] must not be [nullptr]; otherwise, an '
                    'assertion error is thrown.',
                if (typeDef.guid != null) ...[
                  '',
                  'A [NativeFinalizer] is attached to the object to ensure that '
                      'the [release] method is automatically called when the '
                      'object is GCed, preventing memory leaks.',
                ],
              ])
              ..requiredParameters.add(
                cb.Parameter(
                  (b) =>
                      b
                        ..name = 'ptr'
                        ..toThis = true,
                ),
              )
              ..initializers.add(
                const cb.Code(
                  "assert(ptr != nullptr, \"Pointer must not be 'nullptr'.\")",
                ),
              )
              ..initializers.add(_initializeVtblField())
              ..body =
                  name == 'IUnknown'
                      ? cb
                          .refer('_finalizer')
                          .property('attach')
                          .call(
                            [
                              cb.refer('this'),
                              cb.refer('ptr').property('cast').call(const []),
                            ],
                            {
                              'detach': cb.refer('this'),
                              'externalSize': cb.refer('sizeOf').call(
                                const [],
                                const {},
                                [cb.refer('Pointer')],
                              ),
                            },
                          )
                          .statement
                      : null,
      )
    else
      cb.Constructor(
        (b) =>
            b
              ..docs.addAll([
                'Creates a new instance of [$name] from a [VTablePointer].',
                'This constructor requires a valid pointer to the [$name] '
                    'interface. The [ptr] must not be [nullptr]; otherwise, an '
                    'assertion error is thrown.',
                '',
                'A [NativeFinalizer] is attached to the object to ensure that '
                    'the [release] method is automatically called when the '
                    'object is GCed, preventing memory leaks.',
              ])
              ..requiredParameters.add(
                cb.Parameter(
                  (b) =>
                      b
                        ..name = 'ptr'
                        ..toSuper = true,
                ),
              )
              ..initializers.addAll([if (hasMethods) _initializeVtblField()]),
      ),
    if (name == 'IUnknown' ||
        (inheritsFrom != null && !name.endsWith('EventHandler')))
      _generateFactoryConstructor(),
  ];

  /// Initializes the `_vtable` field.
  cb.Code _initializeVtblField() =>
      cb
          .refer('_vtable')
          .assign(
            cb.refer('ptr').property('value').property('cast').call(
              const [],
              const {},
              [cb.refer('${name}Vtbl')],
            ),
          )
          .property('ref')
          .code;

  /// Generates the factory constructor, if applicable.
  cb.Constructor _generateFactoryConstructor() => cb.Constructor(
    (b) =>
        b
          ..annotations.add(generatePreferInlineAnnotation())
          ..docs.addAll([
            'Creates a new instance of [$name] from an existing [interface].',
            'This factory constructor calls the [cast] method on the provided '
                '[interface], which internally uses the [queryInterface] '
                'method to obtain a reference to the [$name] interface.',
            '',
            'If [releaseOriginal] is set to `true`, the existing [interface] '
                'is _released_ by calling the [release] method before '
                'returning the new instance.',
            '',
            'Throws a [WindowsException] if the [queryInterface] call fails.',
          ])
          ..factory = true
          ..name = 'from'
          ..requiredParameters.add(
            cb.Parameter(
              (b) =>
                  b
                    ..name = 'interface'
                    ..type = cb.refer('IUnknown'),
            ),
          )
          ..optionalParameters.add(
            cb.Parameter(
              (b) =>
                  b
                    ..named = true
                    ..name = 'releaseOriginal'
                    ..type = cb.refer('bool')
                    ..defaultTo = cb.literalFalse.code,
            ),
          )
          ..lambda = true
          ..body =
              cb.refer('interface').property('cast').call(const [], {
                'releaseOriginal': cb.refer('releaseOriginal'),
              }).statement,
  );

  List<cb.Field> _generateClassFields() => [
    if (name == 'IUnknown')
      cb.Field(
        (b) =>
            b
              ..static = true
              ..modifier = cb.FieldModifier.final$
              ..name = '_finalizer'
              ..assignment =
                  cb.refer('NativeFinalizer').newInstance([
                    cb
                        .refer('releaseIUnknownAddress')
                        .property('cast')
                        .call(const []),
                  ]).code,
      ),
    if (inheritsFrom == null)
      cb.Field(
        (b) =>
            b
              ..modifier = cb.FieldModifier.final$
              ..type = cb.refer('VTablePointer')
              ..name = 'ptr',
      ),
    if (hasMethods)
      cb.Field(
        (b) =>
            b
              ..modifier = cb.FieldModifier.final$
              ..type = cb.refer('${name}Vtbl')
              ..name = '_vtable',
      ),
  ];

  cb.Method _generateDetachMethod() => cb.Method(
    (b) =>
        b
          ..docs.add(
            WindowsMetadata.docs
                .documentationFromIdentifier('IUnknown.detach')!
                .description!,
          )
          ..returns = cb.refer('void')
          ..name = 'detach'
          ..lambda = true
          ..body =
              cb.refer('_finalizer').property('detach').call([
                cb.refer('this'),
              ]).statement,
  );

  cb.Method _generateToStringMethod() => cb.Method(
    (b) =>
        b
          ..annotations.add(cb.refer('override'))
          ..returns = cb.refer('String')
          ..name = 'toString'
          ..lambda = true
          ..body = cb.literalString('$name(ptr: \$ptr)').code,
  );

  cb.Class _generateVtblStruct() => cb.Class(
    (b) =>
        b
          ..docs.add('@nodoc')
          ..modifier = cb.ClassModifier.base
          ..name = '${name}Vtbl'
          ..extend = cb.refer('Struct')
          ..fields.addAll([
            if (inheritsFrom != null)
              cb.Field(
                (b) =>
                    b
                      ..external = true
                      ..type = cb.refer('${inheritsFrom!.symbol}Vtbl')
                      ..name = r'base$',
              ),
            ...methodProjections.map(_generateVtblStructField).toFixedList(),
          ]),
  );

  cb.Field _generateVtblStructField(ComMethodProjection method) {
    final returnType = method.originalReturnType.ffiType;
    final nativeParameters = [
      r'VTablePointer this$',
      ...method.parameters.map((p) => '${p.type.ffiType} ${p.name}'),
    ].join(', ');
    return cb.Field(
      (b) =>
          b
            ..external = true
            ..type = cb.refer(
              'Pointer<NativeFunction<$returnType Function($nativeParameters)>>',
            )
            ..name = method.originalName,
    );
  }

  cb.Class _generateCompanionClass() => cb.Class(
    (b) =>
        b
          ..annotations.add(cb.refer('internal'))
          ..modifier = cb.ClassModifier.final$
          ..name = '${name}Companion'
          ..extend = cb.TypeReference(
            (b) =>
                b
                  ..symbol = 'ComCompanion'
                  ..types.add(cb.refer(name)),
          )
          ..constructors.add(cb.Constructor((b) => b..constant = true))
          ..methods.addAll([
            cb.Method(
              (b) =>
                  b
                    ..annotations.addAll([
                      generatePreferInlineAnnotation(),
                      cb.refer('override'),
                    ])
                    ..returns = cb.FunctionType(
                      (b) =>
                          b
                            ..returnType = cb.refer(name)
                            ..requiredParameters.add(cb.refer('VTablePointer')),
                    )
                    ..type = cb.MethodType.getter
                    ..name = 'fromPointer'
                    ..lambda = true
                    ..body = cb.refer(name).property('new').code,
            ),
            cb.Method(
              (b) =>
                  b
                    ..annotations.addAll([
                      generatePreferInlineAnnotation(),
                      cb.refer('override'),
                    ])
                    ..type = cb.MethodType.getter
                    ..returns = cb.refer('Guid')
                    ..name = 'iid'
                    ..lambda = true
                    ..body = cb.refer('IID_$name').code,
            ),
          ]),
  );

  cb.Method _generateRefCountMethod() => cb.Method(
    (b) =>
        b
          ..docs.addAll([
            'Returns the current reference count of the [object].',
            'This value is intended to be used for testing purposes.',
          ])
          ..returns = cb.refer('int')
          ..name = 'refCount'
          ..requiredParameters.add(
            cb.Parameter(
              (b) =>
                  b
                    ..type = cb.refer('IUnknown')
                    ..name = 'object',
            ),
          )
          ..body = cb.Block.of([
            cb.refer('object').property('_AddRefFn').call([
              cb.refer('object').property('ptr'),
            ]).statement,
            cb
                .refer('object')
                .property('_ReleaseFn')
                .call([cb.refer('object').property('ptr')])
                .returned
                .statement,
          ]),
  );

  @override
  String get debugName => 'ComInterfaceProjection(name: $name)';
}
