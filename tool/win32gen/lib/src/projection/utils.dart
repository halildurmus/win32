// Useful utilities

import 'dart:collection';

import 'package:winmd/winmd.dart';

import '../model/exclusions.dart';
import '../model/false_properties.dart';
import 'safenames.dart';
import 'type.dart';

const acronyms = <String>{
  // These are acronyms that appear in the enum identifiers, function names.
  // We use this Set while projecting enums and functions to match the Dart
  // style guide.
  // See https://dart.dev/guides/language/effective-dart/style#do-capitalize-acronyms-and-abbreviations-longer-than-two-letters-like-words
  'AC', 'DB', 'DPad', 'HD', 'HR', 'IO', 'IP', 'NT', 'TV', 'UI', 'WiFi' //
};

const falseAnsiEndings = <String>[
  // These are structs that appear in the Win32 metadata that end in 'A' but
  // are not ANSI. In the absence of a better way to determine ANSI attributes
  // (https://github.com/microsoft/win32metadata/issues/711), we resort to a
  // manual list.
  'DATA', 'SCHEMA', 'AREA', 'ANTENNA', 'MEDIA', 'M128A', 'CIECHROMA', 'PARA',
  'ALPHA', 'BUFFER_WMA', 'CRITERIA', 'UIDNA', 'YCbCrA', 'RGBA',
  'PSP_FILE_CALLBACK_A',
];

/// Returns true if a [TypeDef] name ends with 'A' but is _not_ ANSI.
bool typePretendsToBeAnsi(String typeName) {
  for (final word in falseAnsiEndings) {
    if (typeName.endsWith(word)) {
      return true;
    }
  }

  // There are a number of types in this namespace that end with 'A' but are not
  // ANSI, so we treat this as a one-off exception.
  if (typeName.startsWith('Windows.Win32.System.Wmi.MI_')) {
    return true;
  }

  return false;
}

/// Returns true if a [TypeDef] struct is ANSI.
///
/// This is used to avoid projecting ANSI types in favor of Unicode ones.
bool typedefIsAnsi(TypeDef typeDef) =>
    typeDef.name.endsWith('A') && !typePretendsToBeAnsi(typeDef.name);

/// Strip the Unicode / ANSI suffix from the name. For example, `MessageBoxW`
/// should become `MessageBox`. Heuristic approach.
String stripAnsiUnicodeSuffix(String typeName) {
  if (typeName.startsWith('Pointer<')) {
    final wrappedType = stripPointer(typeName);
    return 'Pointer<${stripAnsiUnicodeSuffix(wrappedType)}>';
  }

  // Frustratingly, Windows.Win32.System.Wmi.MI_* types are the exception where
  // 'A' suffix does not seem to denote ASCII.
  if (typePretendsToBeAnsi(typeName) || typeName.startsWith('MI_')) {
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
  final name = lastComponent(typeDef.name);
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

/// Take a name like `Pointer<Pointer<Int32>>` and return the wrapped type (e.g.
/// `Pointer<Int32>`).
String stripPointer(String typeName) =>
    typeName.substring(8, typeName.length - 1);

/// Take an input string and turn it into a multi-line doc comment.
String wrapCommentText(String inputText, [int wrapLength = 76]) {
  if (inputText.isEmpty) return '';

  final words = inputText.split(' ');
  final textLine = StringBuffer('///');
  final outputText = StringBuffer();

  for (final word in words) {
    if ((textLine.length + word.length) >= wrapLength) {
      textLine.write('\n');
      outputText.write(textLine);
      textLine
        ..clear()
        ..write('/// $word');
    } else {
      textLine.write(' $word');
    }
  }

  outputText.write(textLine);
  return outputText.toString().trimRight();
}

/// Take a fully-qualified interface name (e.g.
/// `Windows.Win32.UI.Shell.IShellLinkW`) and return the corresponding class
/// name (e.g. `Windows.Win32.UI.Shell.ShellLink`).
String classNameForInterfaceName(String interfaceName) {
  final interfaceNameAsList = interfaceName.split('.');

  // Strip off the 'I' from the last component
  final fullyQualifiedClassName =
      (interfaceNameAsList.sublist(0, interfaceNameAsList.length - 1)
            ..add(interfaceNameAsList.last.substring(1)))
          .join('.');

  // If class has a 'W' suffix, erase it.
  return stripAnsiUnicodeSuffix(fullyQualifiedClassName);
}

extension CamelCaseConversion on String {
  String toCamelCase() =>
      length >= 2 ? substring(0, 1).toLowerCase() + substring(1) : this;
}

String importForWin32Type(TypeIdentifier identifier) {
  if (excludedWin32Structs.contains(identifier.name)) {
    return 'specialTypes.dart';
  }

  final folder = folderFromNamespace(identifier.name);
  if (identifier.type != null && identifier.type!.isDelegate) {
    return '$folder/callbacks.g.dart';
  } else if (identifier.type!.isInterface) {
    final fileName = stripAnsiUnicodeSuffix(lastComponent(identifier.name));
    return '$folder/$fileName.dart';
  } else {
    return '$folder/structs.g.dart';
  }
}

/// Converts a namespace (e.g. `Windows.Win32.System.Console`) and returns the
/// matching folder (e.g. `system`).
String folderFromNamespace(String namespace) {
  final segments = namespace.split('.').skip(2).toList()..removeLast();
  return segments.join('/').toLowerCase();
}

/// Marks an identifier as private to the win32 library.
String private(String identifier) => '_$identifier';

/// Returns true if the string can be converted to an integer.
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

/// Take a name like TypedEventHandler`2 and return TypedEventHandler.
String stripGenerics(String name) {
  final backtickIndex = name.indexOf('`');
  if (backtickIndex == -1) return name;
  return name.substring(0, backtickIndex);
}

/// Sorts [importLines] according to Effective Dart: Style guidelines.
/// See https://dart.dev/guides/language/effective-dart/style#ordering
List<String> sortImports(List<String> importLines) {
  if (importLines.isEmpty) return importLines;

  final dartImports = SplayTreeSet<String>();
  final packageImports = SplayTreeSet<String>();
  final projectRelativeImports = SplayTreeSet<String>();

  for (final importLine in importLines) {
    assert(importLine.startsWith('import ') && importLine.endsWith(';'));

    if (importLine.contains('dart:')) {
      dartImports.add(importLine);
    } else if (importLine.contains('package:')) {
      packageImports.add(importLine);
    } else {
      projectRelativeImports.add(importLine);
    }
  }

  final sortedImportLines = <String>[];

  if (dartImports.isNotEmpty) {
    sortedImportLines.addAll(dartImports);
  }

  if (packageImports.isNotEmpty) {
    if (dartImports.isNotEmpty) sortedImportLines.add('');
    sortedImportLines.addAll(packageImports);
  }

  if (projectRelativeImports.isNotEmpty) {
    if (dartImports.isNotEmpty || packageImports.isNotEmpty) {
      sortedImportLines.add('');
    }

    sortedImportLines.addAll(projectRelativeImports);
  }

  return sortedImportLines;
}
