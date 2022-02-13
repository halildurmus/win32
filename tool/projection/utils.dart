// Useful utilities

import 'dart:io';

import 'package:winmd/winmd.dart';

import '../differences/falseProperties.dart';
import '../metadata/exclusions.dart';
import 'safenames.dart';
import 'type.dart';

const falseAnsiEndings = <String>[
  // These are structs that appear in the Win32 metadata that end in 'A' but
  // are not ANSI. In the absence of a better way to determine ANSI attributes
  // (https://github.com/microsoft/win32metadata/issues/711), we resort to a
  // manual list.
  'DATA', 'SCHEMA', 'AREA', 'ANTENNA', 'MEDIA', 'M128A', 'CIECHROMA', 'PARA',
  'ALPHA', 'BUFFER_WMA', 'CRITERIA', 'UIDNA', 'YCbCrA', 'RGBA',
  'PSP_FILE_CALLBACK_A',
];
bool typePretendsToBeAnsi(String typeName) {
  final falseAnsiEndings = ['DATA', 'SCHEMA', 'AREA', 'M128A', 'CIECHROMA'];
  for (final word in falseAnsiEndings) {
    if (typeName.endsWith(word)) {
      return true;
    }
  }
  return false;
}

bool typedefIsAnsi(TypeDef typedef) =>
    typedef.name.endsWith('A') && !typePretendsToBeAnsi(typedef.name);

/// Strip the Unicode / ANSI suffix from the name. For example,`MessageBoxW`
/// should become `MessageBox`. Heuristic approach.
String stripAnsiUnicodeSuffix(String typeName) {
  if (typeName.startsWith('Pointer<')) {
    final wrappedType = stripPointer(typeName);
    return 'Pointer<${stripAnsiUnicodeSuffix(wrappedType)}>';
  }
  if (typePretendsToBeAnsi(typeName)) {
    return typeName;
  }
  if (typeName.endsWith('W') || typeName.endsWith('A')) {
    return typeName.substring(0, typeName.length - 1);
  }
  return typeName;
}

/// Return the final component of a fully qualified name (e.g.
/// `Windows.Win32.UI.Controls.TASKDIALOGCONFIG` becomes `TASKDIALOGCONFIG`).
String lastComponent(String fullyQualifiedType) =>
    fullyQualifiedType.split('.').last;

/// Convert a nested type to a guaranteed-unique name.
String mangleName(TypeDef typeDef) {
  final name = typeDef.name.split('.').last;
  if (!typeDef.isNested) {
    return '_$name';
  }
  return '${mangleName(typeDef.enclosingClass!)}_$name';
}

/// Convert a *typeProjection into a typeProjection
TypeProjection dereference(TypeProjection pointer) {
  if (pointer.typeIdentifier.typeArg != null) {
    return TypeProjection(pointer.typeIdentifier.typeArg!);
  } else {
    throw Exception('Type $pointer cannot be dereferenced.');
  }
}

String stripPointer(String typeName) =>
    typeName.substring(8, typeName.length - 1); // Pointer<X> => X

/// Take an input string and turn it into a multi-line doc comment.
String wrapCommentText(String inputText, [int wrapLength = 76]) {
  final words = inputText.split(' ');
  final textLine = StringBuffer('/// ');
  final outputText = StringBuffer();

  for (final word in words) {
    if ((textLine.length + word.length) >= wrapLength) {
      textLine.write('\n');
      outputText.write(textLine);
      textLine
        ..clear()
        ..write('/// $word ');
    } else {
      textLine.write('$word ');
    }
  }

  outputText.write(textLine);
  return outputText.toString().trimRight();
}

extension CamelCaseConversion on String {
  String toCamelCase() =>
      length >= 2 ? substring(0, 1).toLowerCase() + substring(1) : this;
}

/// Given a known file of arbitrary depth in the lib/src hierarchy, return the
/// relative path to the src parent directory.
String relativePathToSrcDirectory(File file) {
  // Find out how many parents there are to the lib/src directory
  final pathDepth = file.path.split('/').reversed.toList().indexOf('src') - 1;

  return '../' * pathDepth;
}

String importForWin32Type(TypeIdentifier identifier) {
  if (excludedTypes.contains(identifier.name)) {
    return 'specialTypes.dart';
  }

  if (identifier.type != null && identifier.type!.isDelegate) {
    return '${folderFromNamespace(identifier.name)}/callbacks.g.dart';
  } else if (identifier.type!.isInterface) {
    return '${folderFromNamespace(identifier.name)}/${identifier.name.split(".").last}.dart';
  } else {
    return '${folderFromNamespace(identifier.name)}/structs.g.dart';
  }
}

/// Converts a namespace (e.g. `Windows.Win32.System.Console`) and returns the
/// matching folder (e.g. `system/console`).
String folderFromNamespace(String namespace) {
  final segments = namespace.split('.').skip(2).toList()..removeLast();

  return segments.join('/').toLowerCase();
}

bool characterIsNumeral(String c) => int.tryParse(c) != null;

bool isExcludedGetProperty(Method method) => falseProperties
    .where((p) =>
        p.interface == safeTypenameForTypeDef(method.parent) &&
        p.property == method.name)
    .isNotEmpty;

bool isExcludedSetProperty(Method method) => falseProperties
    .where((p) =>
        p.interface == safeTypenameForTypeDef(method.parent) &&
        p.property.replaceFirst('get', 'put') == method.name)
    .isNotEmpty;

String stripLeadingUnderscores(String name) {
  if (name.startsWith('_')) {
    if (characterIsNumeral(name.substring(1, 2))) {
      return 'x${name.substring(1)}';
    } else {
      return stripLeadingUnderscores(name.substring(1));
    }
  }
  return name;
}
