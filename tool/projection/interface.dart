import 'package:winmd/winmd.dart';

import '../v3/exclusions.dart';
import 'method.dart';
import 'property.dart';
import 'utils.dart';

class InterfaceProjection {
  final TypeDef typeDef;
  final List<MethodProjection> methodProjections = [];

  InterfaceProjection(this.typeDef) {
    var vtableOffset = vtableStart;
    for (final method in typeDef.methods) {
      if (method.isGetProperty) {
        final getPropertyProjection =
            GetPropertyProjection(method, vtableOffset++);
        methodProjections.add(getPropertyProjection);
      } else if (method.isSetProperty && method.parameters.isNotEmpty) {
        final setPropertyProjection =
            SetPropertyProjection(method, vtableOffset++);
        methodProjections.add(setPropertyProjection);
      } else {
        final methodProjection = MethodProjection(method, vtableOffset++);
        methodProjections.add(methodProjection);
      }
    }
  }

  int calculateVTableStart(TypeDef? type) {
    if (type == null) {
      return 0;
    }

    if (type.isInterface && type.interfaces.isNotEmpty) {
      var sum = 0;

      for (final interface in type.interfaces) {
        sum += interface.methods.length + calculateVTableStart(interface);
      }

      return sum;
    }

    return 0;
  }

  String get shortName => shortenTypeDef(typeDef);

  int get vtableStart => calculateVTableStart(typeDef);

  String get inheritsFrom {
    if (typeDef.interfaces.isNotEmpty) {
      return shortenTypeDef(typeDef.interfaces.first);
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
  }

  // TODO: Find duplicate
  Set<String> importsForClass() {
    final importList = <String>{};

    for (final method in typeDef.methods) {
      final paramsAndReturnType = [...method.parameters, method.returnType];
      for (final param in paramsAndReturnType) {
        // Add imports for a parameter itself (e.g. VARIANT)
        final import = getImportForTypeIdentifier(param.typeIdentifier);
        if (import != null) importList.add(import);

        // Add imports for a type within a pointer (e.g. Pointer<VARIANT>)
        if (param.typeIdentifier.typeArg != null) {
          final import =
              getImportForTypeIdentifier(param.typeIdentifier.typeArg!);
          if (import != null) importList.add(import);

          // Add imports for a type within a double pointer (e.g.
          // Pointer<Pointer<VARIANT>>)
          if (param.typeIdentifier.typeArg!.typeArg != null) {
            final import = getImportForTypeIdentifier(
                param.typeIdentifier.typeArg!.typeArg!);
            if (import != null) importList.add(import);
          }
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
      ..removeWhere((item) => item == '');
    return imports.map((import) => "import '$pathToSrc$import';").join('\n');
  }

  String get header => '''
    // $shortName.dart

    // THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

    // ignore_for_file: unused_import, directives_ordering

    import 'dart:ffi';

    import 'package:ffi/ffi.dart';

    import '${pathToSrc}combase.dart';
    import '${pathToSrc}constants.dart';
    import '${pathToSrc}exceptions.dart';
    import '${pathToSrc}guid.dart';
    import '${pathToSrc}macros.dart';
    import '${pathToSrc}ole32.dart';
    import '${pathToSrc}structs.dart';
    import '${pathToSrc}structs.g.dart';
    import '${pathToSrc}utils.dart';
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
      $importHeader
      $guidConstants

      /// {@category Interface}
      /// {@category com}
      class $shortName $extendsClause {
        // vtable begins at $vtableStart, ends at ${vtableStart + methodProjections.length - 1}
        $constructor

        ${methodProjections.map((p) => p.toString()).join('\n')}

        $queryInterfaceHelper
      }
    ''';
  }
}
