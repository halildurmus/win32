import 'dart:ffi';

/// Extension on `Array<Uint16>` to provide utility methods for working with
/// null-terminated UTF-16 strings.
extension Uint16Array on Array<Uint16> {
  /// Writes a null-terminated UTF-16 code unit array derived from the provided
  /// [string] into the array.
  ///
  /// If [string] contains embedded NUL characters, only the portion of the
  /// string up to the first NUL character will be retained when converting
  /// back to a Dart string using [toDartString], as the null terminator
  /// signifies the end of the string.
  ///
  /// It is the caller's responsibility to ensure the array has sufficient
  /// capacity to accommodate all UTF-16 code units from [string] and the null
  /// terminator.
  void setString(String string) {
    final units = string.codeUnits;
    final length = units.length;
    // Copy the string's UTF-16 code units into the array.
    for (var i = 0; i < length; i++) {
      this[i] = units[i];
    }
    this[length] = 0; // Append the null terminator.
  }

  /// Converts the null-terminated UTF-16 string stored in the array to a Dart
  /// string.
  ///
  /// The returned string is the string up til but not including the first NUL
  /// character.
  String toDartString() {
    final buffer = StringBuffer();
    var i = 0;

    // Read the array until the null terminator is encountered.
    while (true) {
      final char = this[i];
      if (char == 0) return buffer.toString();
      buffer.writeCharCode(char);
      i++;
    }
  }
}
