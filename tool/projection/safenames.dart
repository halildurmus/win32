// Functions for taking raw identifiers in Windows Metadata and safely
// converting them to names that can be used as a Dart identifier.

import 'package:winmd/winmd.dart';

import 'utils.dart';

/// Reserved words in the Dart language that can never be used as identifiers.
/// Keywords from https://dart.dev/guides/language/language-tour#keywords.
const dartReservedWords = <String>{
  // Contextual keywords and built-in identifiers are not included here, since
  // they can be used as valid identifiers in most places.
  'assert', 'break', 'case', 'catch', 'class', 'const', 'continue', 'default',
  'do', 'else', 'enum', 'extends', 'false', 'final', 'finally', 'for', 'if',
  'in', 'is', 'new', 'null', 'rethrow', 'return', 'super', 'switch', 'this',
  'throw', 'true', 'try', 'var', 'void', 'while', 'with',
};

/// Dart intrinsic types.
const dartTypes = <String>{
  // These will cause problems if used as identifiers.
  'int', 'double', 'String', 'bool', 'List', 'Set', 'Map',
};

/// FFI types.
const ffiTypes = <String>{
  // These will also cause problems if used as identifiers. Several of these are
  // used in Win32 as identifiers, particularly Pointer.
  'Int8', 'Int16', 'Int32', 'Int64',
  'Uint8', 'Uint16', 'Uint32', 'Uint64',
  'Double', 'Float', 'Array', 'IntPtr',
  'Pointer', 'Union', 'Opaque', 'Struct',
  'Unsized', 'Void', 'Packed', 'Handle',

  // TODO: Add named prefix to use of dart:ffi so that this is a non-issue
};

/// These types are used in Win32 both as types and identifiers.
///
/// Since `GUID GUID;` is not a valid statement in Dart if the type already
/// exists, we need to avoid these. (An example is
/// `Windows.Win32.Media.DirectShow.VMRGUID.GUID`.)
const win32TypesUsedAsIdentifiers = <String>{'GUID', 'UiInfo'};

/// A list of all words that should not be used as identifiers.
const badIdentifierNames = <String>[
  ...dartReservedWords,
  ...dartTypes,
  ...ffiTypes,
  ...win32TypesUsedAsIdentifiers,
];

/// Take a [TypeDef] and return a name suitable for filenames.
///
/// This should not be used for identifiers without further processing, since it
/// could include a reserved word or a leading underscore.
String safeFilenameForTypeDef(TypeDef typeDef) =>
    stripAnsiUnicodeSuffix(lastComponent(typeDef.name));

/// Convert a raw module name into something that can be safely used as an
/// identifier.
///
/// Raw module names may include hyphens (e.g.
/// `api-ms-win-core-winrt-l1-1-0.dll`), or periods (e.g.
/// `windows.ai.machinelearning.dll`)
String identifierForModuleName(String moduleName) =>
    moduleName.replaceAll('-', '_').replaceAll('.', '_').toLowerCase();

/// Creates an allowed public identifier from a [TypeDef].
String safeIdentifierForTypeDef(TypeDef typeDef) {
  final name = lastComponent(typeDef.name);
  return safeIdentifierForString(name);
}

/// Takes an identifier and converts it to a safe Dart identifier (i.e. one that
/// is not a reserved word or a private modifier).
///
/// For example, `VARIANT var` should be converted to `VARIANT $var`, and
/// `_XmlWriterProperty` should be converted to `XmlWriterProperty`.
String safeIdentifierForString(String name) => badIdentifierNames.contains(name)
    ? r'$' + name
    : stripLeadingUnderscores(name);

String safeTypenameForTypeDef(TypeDef typeDef) =>
    safeTypenameForString(lastComponent(typeDef.name));

/// Takes a type and makes sure it is accessible by stripping off any private
/// modifiers.
///
/// For example, `Pointer<_alljoyn_abouticon_handle>` should become
/// `Pointer<alljoyn_abouticon_handle>`.
String safeTypenameForString(String name) {
  if (name.startsWith('Pointer<')) {
    final wrappedType = stripPointer(name);
    return 'Pointer<${safeTypenameForString(wrappedType)}>';
  }

  return stripLeadingUnderscores(name);
}
