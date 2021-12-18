// Functions for taking raw identifiers in Windows Metadata and safely
// converting them to names that can be used as a Dart identifier.

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
};

/// These types are used in Win32 both as types and identifiers.
///
/// Since `GUID GUID;` is not a valid statement in Dart if the type already
/// exists, we need to avoid these. (An example is
/// `Windows.Win32.Media.DirectShow.VMRGUID.GUID`.)
const win32TypesUsedAsIdentifiers = <String>{'GUID'};

/// A list of all words that should not be used as identifiers.
const badIdentifierNames = <String>[
  ...dartReservedWords,
  ...dartTypes,
  ...ffiTypes,
  ...win32TypesUsedAsIdentifiers,
];

/// Convert a raw module name into something that can be safely used as an
/// identifier.
///
/// Raw module names may include hyphens (e.g.
/// `api-ms-win-core-winrt-l1-1-0.dll`), or periods (e.g.
/// `windows.ai.machinelearning.dll`)
String dartIdentifierFromModuleName(String libraryName) =>
    libraryName.replaceAll('-', '_').replaceAll('.', '_').toLowerCase();

String private(String identifier) => '_$identifier';
