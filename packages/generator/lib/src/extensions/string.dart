extension StringExtension on String {
  /// Whether the string can be converted to an integer.
  bool get _characterIsNumeral => int.tryParse(this) != null;

  /// Capitalizes the first character of this string.
  String capitalize() {
    if (isEmpty) return this;
    if (length == 1) return toUpperCase();
    return this[0].toUpperCase() + substring(1); // e.g., value -> Value
  }

  /// Escapes special characters and encodes non-ASCII characters in a string.
  ///
  /// This method transforms a string by escaping common special characters,
  /// such as backslashes (`\`), newlines (`\n`), tabs (`\t`), and others,
  /// with their respective escape sequences. It also encodes non-ASCII
  /// characters (e.g., Unicode characters outside the range of
  /// `\u{0000}`–`\u{00FF}`) into their Unicode (`\uXXXX`) or hexadecimal
  /// (`\xXX`) representations for safe processing.
  ///
  /// Example:
  /// ```dart
  /// final rawString = 'Hello\nWorld!\tNon-ASCII: €';
  /// final escapedString = rawString.escapeSpecialChars();
  /// print(escapedString); // Output: Hello\nWorld!\tNon-ASCII: \u20ac
  /// ```
  ///
  /// Escaped characters:
  /// - `\` -> `\\`
  /// - `\b` -> `\\b`
  /// - `\f` -> `\\f`
  /// - `\n` -> `\\n`
  /// - `\r` -> `\\r`
  /// - `\t` -> `\\t`
  /// - `\v` -> `\\v`
  /// - `$` -> `\\$`
  /// - Unicode characters in the range `\u{0100}`–`\u{10FFFF}` -> `\uXXXX`
  /// - Non-printable ASCII characters outside the range `\x20-\x7E` -> `\xXX`
  String escapeSpecialChars() => replaceAll(r'\', r'\\')
      .replaceAll('\b', r'\b')
      .replaceAll('\f', r'\f')
      .replaceAll('\n', r'\n')
      .replaceAll('\r', r'\r')
      .replaceAll('\t', r'\t')
      .replaceAll('\v', r'\v')
      .replaceAll(r'$', r'\$')
      .replaceAllMapped(
        RegExp('[\u{0100}-\u{10FFFF}]'),
        (match) =>
            '\\u${match.group(0)!.codeUnitAt(0).toRadixString(16).padLeft(4, '0')}',
      )
      .replaceAllMapped(
        RegExp('[^\x20-\x7E]'),
        (match) =>
            '\\x${match.group(0)!.codeUnitAt(0).toRadixString(16).padLeft(2, '0')}',
      );

  /// Retrieves the final component of a fully qualified name.
  ///
  /// This method extracts the last component of a fully qualified name (e.g.,
  /// `Windows.Win32.UI.Controls.TASKDIALOGCONFIG` becomes `TASKDIALOGCONFIG`).
  String get lastComponent => split('.').last;

  /// Converts the string into a nullable type by appending a `?` to it only if
  /// it does not already end with one (e.g., `int` becomes `int?`).
  String nullable() => endsWith('?') ? this : '$this?';

  /// Converts the string into a private identifier by prepending an underscore
  /// to it (e.g., `foo` becomes `_foo`).
  String privatize() => isEmpty ? this : '_$this';

  /// Wrap this string in single quotes (e.g., `foo` -> `'foo'`).
  String quote() => "'$this'";

  /// Generates a safe Dart filename for code generation.
  ///
  /// The filename is constructed by first extracting the last component of the
  /// string, then using [safeTypeName] to convert it into a valid Dart type,
  /// and finally converting the resulting type to lowercase and appending
  /// `.g.dart` to it. This ensures the file follows Dart's convention for
  /// generated files.
  ///
  /// For example, `Windows.Win32.System.Com.IUnknown` becomes
  /// `iunknown.g.dart`.
  String get safeFilename =>
      '${lastComponent.safeTypeName.toLowerCase()}.g.dart';

  /// Converts the string into a safe Dart identifier (i.e. one that is not a
  /// reserved word or starts with a private modifier).
  ///
  /// For example, `VARIANT var` should be converted to `VARIANT var$`, and
  /// `_XmlWriterProperty` should be converted to `XmlWriterProperty`.
  String get safeIdentifier {
    final str = stripLeadingUnderscores();
    // If the string is a reserved word, append a dollar sign ($) to it.
    return _badIdentifierNames.contains(str) ? '$str\$' : str;
  }

  /// Strips off private modifiers from the string to create a safe Dart
  /// type name.
  ///
  /// For example, `Pointer<_alljoyn_abouticon_handle>` should become
  /// `Pointer<alljoyn_abouticon_handle>`.
  String get safeTypeName {
    // If the string starts with `Array<`, process the inner type.
    if (startsWith('Array<')) {
      final wrappedType = stripArray();
      return 'Array<${wrappedType.safeTypeName}>';
    }

    // If the string starts with `Pointer<`, process the inner type.
    if (startsWith('Pointer<')) {
      final wrappedType = stripPointer();
      return 'Pointer<${wrappedType.safeTypeName}>';
    }

    // Otherwise, strip leading underscores from the string.
    return stripLeadingUnderscores();
  }

  /// Strips the ANSI (`A`) or Unicode (`W`) suffix from the string.
  ///
  /// For example, `MessageBoxW` should become `MessageBox`.
  String stripAnsiUnicodeSuffix() {
    // Remove the last character if the string ends with either `A` or `W`.
    if (endsWith('A') || endsWith('W')) return substring(0, length - 1);

    // Otherwise, return the original string.
    return this;
  }

  /// Extracts the inner wrapped type from the string that represents a nested
  /// `Array` structure.
  ///
  /// Given a string like `Array<Int32>`, this method returns the inner wrapped
  /// type, which in this case would be `Int32`.
  String stripArray() => startsWith('Array<') ? substring(6, length - 1) : this;

  /// Strips leading underscores from the string while preserving identifier
  /// validity.
  ///
  /// If the string does not start with an underscore, it returns the original
  /// string.
  ///
  /// If the string starts with an underscore, it checks if the character
  /// following the underscore is a numeral (0-9). If it is, it prepends an `x`
  /// to the string to ensure it remains a valid identifier.
  ///
  /// If the following character is not a numeral, it continues stripping
  /// leading underscores recursively until a non-underscore or a
  /// numeral-followed underscore is encountered.
  String stripLeadingUnderscores() {
    if (!startsWith('_')) return this;
    return substring(1, 2)._characterIsNumeral
        ? 'x${substring(1)}'
        : substring(1).stripLeadingUnderscores();
  }

  /// Extracts the inner wrapped type from the string that represents a nested
  /// `Pointer` structure.
  ///
  /// Given a string like `Pointer<Int32>`, this method returns the inner
  /// wrapped type, which in this case would be `Int32`.
  String stripPointer() =>
      startsWith('Pointer<') ? substring(8, length - 1) : this;

  /// Strips trailing underscores from the string.
  ///
  /// If the string does not end with an underscore, it returns the original
  /// string.
  String stripTrailingUnderscores() {
    if (!endsWith('_')) return this;
    return substring(0, length - 1).stripTrailingUnderscores();
  }

  /// Converts the string to `camelCase` convention.
  String toCamelCase() {
    if (isEmpty) return this;

    // If the input string has only one character, convert it to lowercase.
    if (length == 1) return toLowerCase();

    // Convert the first character to lowercase and concatenate the rest.
    return this[0].toLowerCase() + substring(1);
  }

  /// Converts a Win32 namespace (e.g., `Windows.Win32.System.Console`) to its
  /// corresponding folder path (e.g., `system`).
  String toFolderPath() {
    final segments = split('.').skip(2).toList()..removeLast();
    return segments.join('/').toLowerCase();
  }
}

/// Set of reserved words in the Dart that cannot be used as identifiers.
///
/// This set includes Dart keywords and reserved words, as documented in [here](
/// https://dart.dev/language/keywords).
///
/// Contextual keywords and built-in identifiers are not included here, as they
/// can be used as valid identifiers in most places.
const _dartReservedWords = <String>{
  'assert', 'break', 'case', 'catch', 'class', 'const', 'continue', 'default',
  'do', 'else', 'enum', 'extends', 'false', 'final', 'finally', 'for', 'if', //
  'in', 'is', 'new', 'null', 'rethrow', 'return', 'super', 'switch', 'this', //
  'throw', 'true', 'try', 'var', 'void', 'when', 'while', 'with', //
};

/// Set of Dart intrinsic types that can cause problems if used as identifiers.
const _dartTypes = <String>{
  'bool', 'double', 'int', 'List', 'Map', 'Set', 'String', //
};

/// Set of FFI (Foreign Function Interface) types that can cause problems if
/// used as identifiers.
const _ffiTypes = <String>{
  'Array', 'Double', 'Float', 'IntPtr',
  'Int8', 'Int16', 'Int32', 'Int64', 'Uint8', 'Uint16', 'Uint32', 'Uint64',
  'Opaque', 'Packed', 'Pointer', 'Struct', 'Union', 'Unsized', 'Void',

  // `Handle` is excluded as it's used in practice and doesn't seem to cause
  // issues.
  // 'Handle',
};

/// Set of Win32 types used both as types and identifiers.
///
/// In Dart, using a statement like `GUID GUID;` is not valid if the type
/// `GUID` already exists. To avoid such conflicts, this set includes types
/// used in Win32 that may also be used as identifiers. For example,
/// `Windows.Win32.Media.DirectShow.VMRGUID.GUID`.
const _win32TypesUsedAsIdentifiers = <String>{'GUID', 'UiInfo'};

/// Set of words restricted from use as identifiers.
///
/// This set includes reserved words in Dart, Dart types, FFI types, and Win32
/// types that are also used as identifiers. Using these words as identifiers
/// may lead to conflicts or compilation issues.
///
/// Additionally, the word `ptr` is included as it is used in COM interfaces.
const _badIdentifierNames = <String>{
  ..._dartReservedWords,
  ..._dartTypes,
  ..._ffiTypes,
  ..._win32TypesUsedAsIdentifiers,
  'ptr', // Used in COM interfaces.
};
