import 'package:winmd/winmd.dart';

import '../shared/exclusions.dart';
import '../shared/importHeaders.dart';
import 'method.dart';
import 'property.dart';
import 'safenames.dart';
import 'utils.dart';

class InterfaceProjection {
  final TypeDef typeDef;

  // Lazily cached values, with matching property
  int? _vtableStart;
  int get vtableStart => _vtableStart ??= cacheVtableStart(typeDef);

  List<MethodProjection>? _methodProjections;
  List<MethodProjection> get methodProjections =>
      _methodProjections ??= _cacheMethodProjections();

  InterfaceProjection(this.typeDef);

  int cacheVtableStart(TypeDef? type) {
    if (type == null) {
      return 0;
    }

    if (type.isInterface && type.interfaces.isNotEmpty) {
      var sum = 0;

      for (final interface in type.interfaces) {
        sum += interface.methods.length + cacheVtableStart(interface);
      }

      return sum;
    }

    return 0;
  }

  List<MethodProjection> _cacheMethodProjections() {
    final projection = <MethodProjection>[];
    var vtableOffset = vtableStart;
    for (final method in typeDef.methods) {
      if (method.isGetProperty && !isExcludedGetProperty(method)) {
        final getPropertyProjection =
            GetPropertyProjection(method, vtableOffset++);
        projection.add(getPropertyProjection);
      } else if (method.isSetProperty &&
          method.parameters.isNotEmpty &&
          !isExcludedSetProperty(method)) {
        final setPropertyProjection =
            SetPropertyProjection(method, vtableOffset++);
        projection.add(setPropertyProjection);
      } else {
        final methodProjection = MethodProjection(method, vtableOffset++);
        projection.add(methodProjection);
      }
    }
    return projection;
  }

  // TODO: May need to review suffix stripping on v3
  String get shortName => stripAnsiUnicodeSuffix(
      stripLeadingUnderscores(safeIdentifierForTypeDef(typeDef)));

  String get inheritsFrom {
    if (typeDef.interfaces.isNotEmpty) {
      return safeIdentifierForTypeDef(typeDef.interfaces.first);
    }
    return '';
  }

  String getImportForTypeDef(TypeDef typeDef) {
    if (typeDef.isDelegate) {
      return '${folderFromNamespace(typeDef.name)}/callbacks.g.dart';
    } else if (typeDef.isInterface) {
      return '${folderFromNamespace(typeDef.name)}/${stripAnsiUnicodeSuffix(typeDef.name.split('.').last)}.dart';
    } else {
      return '${folderFromNamespace(typeDef.name)}/structs.g.dart';
    }
  }

  String? getImportForTypeIdentifier(TypeIdentifier typeIdentifier) {
    if (specialTypes.contains(typeIdentifier.name)) {
      return 'specialTypes.dart';
    }

    if (typeIdentifier.name.startsWith('Windows.Win32')) {
      return getImportForTypeDef(typeIdentifier.type!);
    }

    return null;
  }

  // TODO: Find duplicates. This is the "correct" one.
  Set<String> importsForClass() {
    final importList = <String>{};

    for (final method in typeDef.methods) {
      final paramsAndReturnType = [...method.parameters, method.returnType];
      for (final param in paramsAndReturnType) {
        // Add imports for a parameter itself (e.g. VARIANT)
        final import = getImportForTypeIdentifier(param.typeIdentifier);
        if (import != null) importList.add(import);

        // Add imports for a type within a pointer (e.g. Pointer<VARIANT>). Keep
        // unwrapping until there are no types left.
        var refType = param.typeIdentifier;
        while (refType.typeArg != null) {
          refType = refType.typeArg!;
          final import = getImportForTypeIdentifier(refType);
          if (import != null) importList.add(import);
        }
      }
    }
    return importList;
  }

  late final pathToSrc = '../' * (typeDef.name.split('.').length - 3);

  String get interfaceImport =>
      inheritsFrom != '' ? getImportForTypeDef(typeDef.interfaces.first) : '';

  String get importHeader {
    final imports = {interfaceImport, ...importsForClass()}
      ..removeWhere((item) => item == '')
      // TODO: Use exclusions.dart for these next two lines
      ..removeWhere((item) => item.endsWith('ICondition.dart'))
      ..removeWhere((item) => item.endsWith('IStemmer.dart'));
    return imports.map((import) => "import '$pathToSrc$import';").join('\n');
  }

  String get header => '''
    // $shortName.dart

    // THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

    // ignore_for_file: unused_import, directives_ordering
    // ignore_for_file: constant_identifier_names, non_constant_identifier_names
    // ignore_for_file: no_leading_underscores_for_local_identifiers

    import 'dart:ffi';

    import 'package:ffi/ffi.dart';
  ''';

  String get guidConstants => '''
    /// @nodoc
    const IID_$shortName = '${typeDef.guid}';
  ''';

  String get queryInterfaceHelper => shortName != 'IUnknown'
      ? ''
      : '''
    /// Cast an existing COM object to a specified interface.
    ///
    /// Takes a string (typically a constant such as `IID_IModalWindow`) and does
    /// a COM QueryInterface to return a reference to that interface. This method
    /// reduces the boilerplate associated with calling QueryInterface manually.
    Pointer<COMObject> toInterface(String iid) {
      final pIID = convertToIID(iid);
      final pObject = calloc<COMObject>();
      try {
        final hr = QueryInterface(pIID, pObject.cast());
        if (FAILED(hr)) throw WindowsException(hr);
        return pObject;
      } finally {
        free(pIID);
      }
    }
  ''';

  @override
  String toString() {
    final extendsClause = inheritsFrom.isEmpty ? '' : 'extends $inheritsFrom';
    final constructor = inheritsFrom.isEmpty
        ? 'Pointer<COMObject> ptr;\n\n$shortName(this.ptr);'
        : '$shortName(Pointer<COMObject> ptr) : super(ptr);';

    return '''
      $header
      ${versionSpecificImports(pathToSrc, importHeader, typeDef.interfaces)}
      ${specialHeaders(pathToSrc, typeDef.name)}
      $guidConstants

      /// {@category Interface}
      /// {@category com}
      class $shortName $extendsClause {
        // vtable begins at $vtableStart, is ${methodProjections.length} entries long.
        $constructor

        ${methodProjections.map((p) => p.toString()).join('\n')}

        $queryInterfaceHelper
      }
    ''';
  }
}
