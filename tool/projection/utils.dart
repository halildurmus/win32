// Useful utilities

import 'dart:io';

import 'package:winmd/winmd.dart';

import '../v3/exclusions.dart';
import '../v3/falseProperties.dart';
import 'type.dart';

const dartKeywords = <String>[
  // Keywords from https://dart.dev/guides/language/language-tour#keywords.
  // Contextual keywords and built-in identifiers are not included here, since
  // they can be used as valid identifiers in most places.
  'assert', 'break', 'case', 'catch', 'class', 'const', 'continue', 'default',
  'do', 'else', 'enum', 'extends', 'false', 'final', 'finally', 'for', 'if',
  'in', 'is', 'new', 'null', 'rethrow', 'return', 'super', 'switch', 'this',
  'throw', 'true', 'try', 'var', 'void', 'while', 'with',

  'String',

  // FFI special words
  'Int8', 'Int16', 'Int32', 'Int64',
  'Uint8', 'Uint16', 'Uint32', 'Uint64',
  'Double', 'Float', 'Array', 'IntPtr',
  'Pointer', 'Union', 'Opaque', 'Struct',
  'Unsized', 'Void', 'Packed', 'Handle',
];

bool typePretendsToBeAnsi(String typeName) {
  final falseAnsiEndings = [
    'DATA',
    'SCHEMA',
    'AREA',
    'ANTENNA',
    'MEDIA',
    'M128A',
    'CIECHROMA',
    'PARA',
    'ALPHA',
    'BUFFER_WMA',
    'CRITERIA',
    'UIDNA',
    'YCbCrA',
    'RGBA',
  ];
  for (final word in falseAnsiEndings) {
    if (typeName.endsWith(word)) {
      return true;
    }
  }

  if (typeName.startsWith('Windows.Win32.System.Wmi.MI_')) {
    return true;
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
  return stripAnsiUnicodeSuffix(fullyQualifiedClassName);
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
  if (excludedStructs.contains(identifier.name)) {
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

String shortenTypeDef(TypeDef typeDef) =>
    stripAnsiUnicodeSuffix(typeDef.name.split('.').last);

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

  return stripLeadingUnderscores(name);
}

bool isExcludedGetProperty(Method method) => falseProperties
    .where((p) =>
        p.interface == shortenTypeDef(method.parent) &&
        p.property == method.name)
    .isNotEmpty;

bool isExcludedSetProperty(Method method) => falseProperties
    .where((p) =>
        p.interface == shortenTypeDef(method.parent) &&
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

/// Takes a type and makes sure it is accessible by stripping off any private
/// modifiers.
///
/// For example, `Pointer<_alljoyn_abouticon_handle>` should become
/// `Pointer<alljoyn_abouticon_handle>`.
String safeTypename(String name) {
  if (name.startsWith('Pointer<')) {
    final wrappedType = stripPointer(name);
    return 'Pointer<${safeTypename(wrappedType)}>';
  }

  return stripLeadingUnderscores(name);
}
