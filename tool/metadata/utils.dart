// Useful utilities

import 'dart:io';

import 'package:winmd/winmd.dart';

import '../namespace/exclusions.dart';

const dartKeywords = <String>[
  // Keywords from https://dart.dev/guides/language/language-tour#keywords.
  // Contextual keywords and built-in identifiers are not included here, since
  // they can be used as valid identifiers in most places.
  'assert', 'break', 'case', 'catch', 'class', 'const', 'continue', 'default',
  'do', 'else', 'enum', 'extends', 'false', 'final', 'finally', 'for', 'if',
  'in', 'is', 'new', 'null', 'rethrow', 'return', 'super', 'switch', 'this',
  'throw', 'true', 'try', 'var', 'void', 'while', 'with',

  // FFI special words
  'Int8', 'Int16', 'Int32', 'Int64',
  'Uint8', 'Uint16', 'Uint32', 'Uint64',
  'Double', 'Float', 'Array',
  'Pointer', 'Union', 'Opaque', 'Struct',
  'Unsized', 'Void', 'Packed', 'Handle',
];

/// Strip the Unicode / ANSI suffix from the name. For example,`MessageBoxW`
/// should become `MessageBox`. Heuristic approach.
String nameWithoutEncoding(String typeName) {
  if (typePretendsToBeAnsi(typeName)) {
    return typeName;
  }
  if (typeName.endsWith('W') || typeName.endsWith('A')) {
    return typeName.substring(0, typeName.length - 1);
  }
  return typeName;
}

bool typePretendsToBeAnsi(String typeName) =>
    typeName.endsWith('DATA') ||
    ['M128A', 'CIECHROMA'].contains(typeName.split('.').last);

bool typedefIsAnsi(TypeDef typedef) =>
    typedef.name.endsWith('A') && !typePretendsToBeAnsi(typedef.name);

/// Take an input string and turn it into a multi-line doc comment.
String wrapCommentText(String inputText, [int wrapLength = 76]) {
  final words = inputText.split(' ');
  final textLine = StringBuffer('/// ');
  final outputText = StringBuffer();

  for (final word in words) {
    if ((textLine.length + word.length) >= wrapLength) {
      textLine.write('\n');
      outputText.write(textLine);
      textLine.clear();
      textLine.write('/// $word ');
    } else {
      textLine.write('$word ');
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
  return nameWithoutEncoding(fullyQualifiedClassName);
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
  if (specialTypes.contains(identifier.name)) {
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

/// Takes an identifier and converts it to a safe Dart identifier (i.e. one that
/// is not a reserved word or a private modifier).
///
/// For example, `VARIANT var` should be converted to `VARIANT var_`, and
/// `_XmlWriterProperty` should be converted to `XmlWriterProperty`.
String safeName(String name) {
  if (dartKeywords.contains(name)) {
    return '${name}_';
  }
  if (name.startsWith('_')) {
    if (characterIsNumeral(name.substring(1, 2))) {
      return 'x${name.substring(1)}';
    } else {
      return name.substring(1);
    }
  }
  return name;
}

/// Takes a type and makes sure it is accessible by stripping off any private
/// modifiers.
///
/// For example, `Pointer<_alljoyn_abouticon_handle>` should become
/// `Pointer<alljoyn_abouticon_handle>`.
String safeTypename(String name) {
  if (name.startsWith('Pointer<')) {
    final wrappedType = name.substring(8, name.length - 1); // Pointer<X> => X
    return 'Pointer<${safeTypename(wrappedType)}>';
  }

  if (name.startsWith('_')) {
    return name.substring(1);
  } else {
    return name;
  }
}
