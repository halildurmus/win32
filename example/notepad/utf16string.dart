import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

class Utf16String {
  late Pointer<Utf16> pointer;

  /// Represents the length set. This value is only accurate if you don't
  /// pass the `pointer` value to other functions. In that event, you will need
  /// to set the length manually.
  int length;

  /// Creates a fixed length string with capacity to store `length` characters,
  /// initialized to `\0`
  Utf16String(this.length) {
    pointer = calloc<Uint16>(length).cast<Utf16>();
  }

  factory Utf16String.fromString(String string) {
    final value = Utf16String(string.length + 1);
    value.pointer = Utf16.toUtf16(string);
    value.length = string.length;

    return value;
  }

  /// Returns the memory-backed address of the string.
  int get address => pointer.address;

  /// Returns true if this string is empty
  bool get isEmpty => pointer.cast<Uint16>().value == 0;

  /// Clears the string.
  void clear() {
    pointer.cast<Uint16>().value = 0;
    length = 0;
  }

  /// Deletes the space allocated on the heap for the string contents
  void delete() {
    calloc.free(pointer);
  }

  /// Returns the referenced string as a Dart `String`
  @override
  String toString({int maxLength = -1}) =>
      pointer.unpackString(maxLength == -1 ? length : maxLength);

  /// Unpacks the string into a `List`.
  ///
  /// Assumes an array of null-terminated strings, with the final
  /// element terminated with a second null.
  List<String> toList() => pointer.unpackStringArray(length);
}
