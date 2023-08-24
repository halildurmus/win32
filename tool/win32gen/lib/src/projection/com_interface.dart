import 'package:winmd/winmd.dart';

import '../model/exclusions.dart';
import 'com_method.dart';
import 'com_property.dart';
import 'method.dart';
import 'safenames.dart';
import 'utils.dart';

class ComInterfaceProjection {
  final TypeDef typeDef;
  final String comment;

  // Lazily cached values, with matching property
  int? _vtableStart;
  int get vtableStart => _vtableStart ??= cacheVtableStart(typeDef);

  List<MethodProjection>? _methodProjections;
  List<MethodProjection> get methodProjections =>
      _methodProjections ??= _cacheMethodProjections();

  ComInterfaceProjection(this.typeDef, [this.comment = '']);

  int cacheVtableStart(TypeDef? type) {
    if (type == null) return 0;

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
            ComGetPropertyProjection(method, vtableOffset++);
        projection.add(getPropertyProjection);
      } else if (method.isSetProperty &&
          method.parameters.isNotEmpty &&
          !isExcludedSetProperty(method)) {
        final setPropertyProjection =
            ComSetPropertyProjection(method, vtableOffset++);
        projection.add(setPropertyProjection);
      } else {
        final methodProjection = ComMethodProjection(method, vtableOffset++);
        projection.add(methodProjection);
      }
    }
    return projection;
  }

  // TODO: May need to review suffix stripping on v3
  String get shortName => stripAnsiUnicodeSuffix(
      stripLeadingUnderscores(safeIdentifierForTypeDef(typeDef)));

  String get inheritsFrom => typeDef.interfaces.isNotEmpty
      ? safeIdentifierForTypeDef(typeDef.interfaces.first)
      : '';

  String getImportForTypeDef(TypeDef typeDef) {
    if (typeDef.isDelegate) {
      return '${folderFromNamespace(typeDef.name)}/callbacks.g.dart';
    } else if (typeDef.isInterface) {
      return '${folderFromNamespace(typeDef.name)}/${stripAnsiUnicodeSuffix(lastComponent(typeDef.name)).toLowerCase()}.dart';
    } else {
      return '${folderFromNamespace(typeDef.name)}/structs.g.dart';
    }
  }

  String? getImportForTypeIdentifier(TypeIdentifier typeIdentifier) {
    if (excludedTypes.contains(typeIdentifier.name)) return 'specialTypes.dart';
    if (typeIdentifier.name == 'System.Guid') return '../guid.dart';

    if (typeIdentifier.name.startsWith('Windows')) {
      return getImportForTypeDef(typeIdentifier.type!);
    }

    return null;
  }

  // TODO: Find duplicates. This is the "correct" one.
  Set<String> get importsForClass {
    final importList = <String>{};
    final methods = {
      ...typeDef.methods,
      // Also add the methods in typeDef's interfaces
      ...[for (final typeDef in typeDef.interfaces) ...typeDef.methods]
    };

    for (final method in methods) {
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

  String get header => '''
    // ${shortName.toLowerCase()}.dart

    // THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

    // ignore_for_file: unused_import
    // ignore_for_file: constant_identifier_names, non_constant_identifier_names
    // ignore_for_file: no_leading_underscores_for_local_identifiers
  ''';

  List<String> get coreImports => ['dart:ffi', 'package:ffi/ffi.dart'];

  // COM interfaces can only inherit from one parent
  Set<String> get interfaceImports {
    if (typeDef.interfaces.isNotEmpty) {
      final interfaceName =
          lastComponent(typeDef.interfaces.first.name).toLowerCase();
      if (interfaceName.isNotEmpty) {
        return {'$interfaceName.dart', 'iunknown.dart'};
      }
    }

    return {};
  }

  List<String> get extraImports => [
        '../callbacks.dart',
        '../combase.dart',
        '../constants.dart',
        '../exceptions.dart',
        '../guid.dart',
        '../macros.dart',
        '../structs.g.dart',
        '../utils.dart',
        '../variant.dart',
        '../win32/ole32.g.dart',
      ];

  String get importHeader {
    final imports = {...coreImports, ...interfaceImports, ...extraImports};
    return sortImports(
      imports.map((import) => "import '$import';").toList(),
    ).join('\n');
  }

  String get guidConstants => '''
    /// @nodoc
    const IID_$shortName = '${typeDef.guid}';
  ''';

  String get fromCOMObjectHelper => '''
  factory $shortName.from(IUnknown interface) =>
      $shortName(interface.toInterface(IID_$shortName));
  ''';

  String get category => 'com';

  String get classType => 'Interface';

  String get classPreamble {
    final wrappedComment = wrapCommentText(comment);
    final categoryComment = classType.isNotEmpty
        ? '/// {@category $classType}\n/// {@category $category}'
        : '/// {@category $category}';

    return wrappedComment.isNotEmpty
        ? '$wrappedComment\n///\n$categoryComment'
        : categoryComment;
  }

  @override
  String toString() {
    final extendsClause = inheritsFrom.isEmpty ? '' : 'extends $inheritsFrom';
    final constructor = inheritsFrom.isEmpty
        ? 'Pointer<COMObject> ptr;\n\n$shortName(this.ptr);'
        : '$shortName(super.ptr);';

    return '''
      $header
      $importHeader
      $guidConstants

      $classPreamble
      class $shortName $extendsClause {
        // vtable begins at $vtableStart, is ${methodProjections.length} entries long.
        $constructor

        $fromCOMObjectHelper

        ${methodProjections.map((p) => p.toString()).join('\n')}
      }
  ''';
  }
}
