import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '_internal/win32.dart';
import 'allocator.dart';
import 'exception.dart';
import 'extensions/pointer.dart';
import 'extensions/string.dart';
import 'types.dart';

/// A pointer to a constant null-terminated string of 16-bit Unicode characters.
typedef PCWSTR = Pointer<Utf16>;

/// A shorthand function to create a new [Pcwstr] from a Dart string.
///
/// This is a convenience function for quickly wrapping a Dart string in a
/// [Pcwstr]. It behaves the same as calling the [Pcwstr] constructor directly.
@pragma('vm:prefer-inline')
Pcwstr w(String string) => Pcwstr(string);

/// A wrapper for the [PCWSTR], used in Windows APIs.
///
/// This class simplifies working with [PCWSTR]s by providing automatic memory
/// management and convenient Dart-friendly operations.
///
/// This class uses a [NativeFinalizer] to automatically free the memory
/// allocated for the structure when the object is GCed. This ensures that the
/// unmanaged memory allocated for the structure is automatically freed when the
/// object is GCed.
///
/// If you need full control over the object's lifecycle, you can opt out of
/// automatic finalization by using the [detach] method. This is especially
/// useful in scenarios where ownership of the object is transferred to another
/// part of your application or when explicit lifecycle management is required.
final class Pcwstr implements Finalizable {
  /// Creates a new [Pcwstr] with the provided [string].
  ///
  /// Attaches a [NativeFinalizer] to the instance to automatically free the
  /// memory when no longer used.
  ///
  /// **Note:** If [string] contains embedded NUL characters, the result of
  /// [toDartString] may be truncated unless a specific length is provided.
  @pragma('vm:prefer-inline')
  factory Pcwstr(String string) => Pcwstr._fromPointer(string.toPWSTR());

  Pcwstr._fromPointer(this.ptr) {
    _finalizer.attach(
      this,
      ptr.cast(),
      detach: this,
      externalSize: sizeOf<WCHAR>(),
    );
  }

  /// Creates a [Pcwstr] from an existing [PCWSTR].
  ///
  /// Validates that the [ptr] is not NULL and attaches a [NativeFinalizer] to
  /// the instance to automatically free the [ptr] when the object is GCed.
  factory Pcwstr.fromPointer(PCWSTR ptr) {
    if (ptr.isNull) {
      throw ArgumentError.value(ptr, 'ptr', 'Pointer cannot be null');
    }

    return Pcwstr._fromPointer(ptr);
  }

  static final _finalizer = NativeFinalizer(coTaskMemFreeAddress);

  /// The underlying [PCWSTR].
  final PCWSTR ptr;

  /// The length of the [PCWSTR] in bytes, not including the terminating NUL
  /// character.
  @pragma('vm:prefer-inline')
  int get byteLength => length * sizeOf<WCHAR>();

  /// Creates a new [Pcwstr] that is a copy of the current [Pcwstr].
  Pcwstr clone() {
    // Allocate memory for a PSTR of sufficient length (including the NUL
    // terminator) to hold the string.
    final pcwstr = loggingCalloc<WCHAR>(length + 1);
    pcwstr
        .asTypedList(length + 1)
        .setAll(0, ptr.cast<WCHAR>().asTypedList(length + 1));
    return Pcwstr._fromPointer(pcwstr.cast());
  }

  /// Detaches this instance from the [NativeFinalizer].
  ///
  /// Use this method to manually manage the memory of the [PCWSTR].
  /// After calling this method, the [NativeFinalizer] will no longer free the
  /// memory automatically.
  void detach() => _finalizer.detach(this);

  /// Frees the memory associated with this object.
  ///
  /// This method detaches the instance from the [NativeFinalizer] and releases
  /// the resources associated with the [PCWSTR].
  /// After calling this method, the [ptr] becomes invalid and this object
  /// should not be used further.
  ///
  /// Use this method to immediately release the memory rather than waiting for
  /// GC.
  void free() {
    _finalizer.detach(this);
    loggingCalloc.free(ptr);
  }

  /// Whether this [PCWSTR] is empty.
  @pragma('vm:prefer-inline')
  bool get isEmpty => length == 0;

  /// The number of UTF-16 code units in this [PCWSTR], not including the
  /// terminating NUL character.
  int get length {
    final ptr = this.ptr.cast<WCHAR>();
    var length = 0;
    while (ptr[length] != 0) {
      length++;
    }
    return length;
  }

  /// Concatenates this [Pcwstr] with [other] and returns the result.
  ///
  /// Throws a [WindowsException] if the concatenation fails.
  Pcwstr operator +(Pcwstr other) {
    final pcwstr = loggingMalloc<WCHAR>(length + other.length + 1);
    pcwstr.asTypedList(length + other.length)
      ..setAll(0, ptr.cast<WCHAR>().asTypedList(length))
      ..setAll(length, other.ptr.cast<WCHAR>().asTypedList(other.length));
    pcwstr[length + other.length] = 0;
    return Pcwstr._fromPointer(pcwstr.cast());
  }

  /// Converts this [Pcwstr] to a Dart string.
  ///
  /// - If [length] is provided, the conversion includes only the specified
  ///   number of UTF-16 code units, allowing for NUL characters in the string.
  /// - If [length] is not provided, the conversion stops at the first NUL
  ///   character.
  String toDartString({int? length}) {
    if (length != null) RangeError.checkNotNegative(length, 'length');
    return String.fromCharCodes(
      ptr.cast<WCHAR>().asTypedList(length ?? this.length),
    );
  }

  @override
  String toString() => 'Pcwstr(ptr: $ptr)';
}
