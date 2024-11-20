import 'dart:convert';
import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '_internal/win32.dart';
import 'allocator.dart';
import 'exception.dart';
import 'extensions/pointer.dart';
import 'extensions/string.dart';
import 'types.dart';

/// A pointer to a constant null-terminated string of 8-bit Windows (ANSI)
/// characters.
typedef PCSTR = Pointer<Utf8>;

/// A shorthand function to create a new [Pcstr] from a Dart string.
///
/// This is a convenience function for quickly wrapping a Dart string in a
/// [Pcstr]. It behaves the same as calling the [Pcstr] constructor directly.
@pragma('vm:prefer-inline')
Pcstr s(String string) => Pcstr(string);

/// A wrapper for the [PCSTR], used in Windows APIs.
///
/// This class simplifies working with [PCSTR]s by providing automatic memory
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
final class Pcstr implements Finalizable {
  /// Creates a new [Pcstr] with the provided [string].
  ///
  /// Attaches a [NativeFinalizer] to the instance to automatically free the
  /// memory when no longer used.
  ///
  /// **Note:** If [string] contains embedded NUL characters, the result of
  /// [toDartString] may be truncated unless a specific length is provided.
  @pragma('vm:prefer-inline')
  factory Pcstr(String string) => Pcstr._fromPointer(string.toPSTR());

  Pcstr._fromPointer(this.ptr) {
    _finalizer.attach(
      this,
      ptr.cast(),
      detach: this,
      externalSize: sizeOf<BYTE>(),
    );
  }

  /// Creates a [Pcstr] from an existing [PCSTR].
  ///
  /// Validates that the [ptr] is not NULL and attaches a [NativeFinalizer] to
  /// the instance to automatically free the [ptr] when the object is GCed.
  factory Pcstr.fromPointer(PCSTR ptr) {
    if (ptr.isNull) {
      throw ArgumentError.value(ptr, 'ptr', 'Pointer cannot be null');
    }

    return Pcstr._fromPointer(ptr);
  }

  static final _finalizer = NativeFinalizer(coTaskMemFreeAddress);

  /// The underlying [PCSTR].
  final PCSTR ptr;

  /// The length of the [PCSTR] in bytes, not including the terminating NUL
  /// character.
  @pragma('vm:prefer-inline')
  int get byteLength => length;

  /// Creates a new [Pcstr] that is a copy of the current [Pcstr].
  Pcstr clone() {
    // Allocate memory for a PCSTR of sufficient length (including the NUL
    // terminator) to hold the string.
    final pcstr = loggingCalloc<BYTE>(length + 1);
    pcstr
        .asTypedList(length + 1)
        .setAll(0, ptr.cast<BYTE>().asTypedList(length + 1));
    return Pcstr._fromPointer(pcstr.cast());
  }

  /// Detaches this instance from the [NativeFinalizer].
  ///
  /// Use this method to manually manage the memory of the [PCSTR].
  /// After calling this method, the [NativeFinalizer] will no longer free the
  /// memory automatically.
  void detach() => _finalizer.detach(this);

  /// Frees the memory associated with this object.
  ///
  /// This method detaches the instance from the [NativeFinalizer] and releases
  /// the resources associated with the [PCSTR].
  /// After calling this method, the [ptr] becomes invalid and this object
  /// should not be used further.
  ///
  /// Use this method to immediately release the memory rather than waiting for
  /// GC.
  void free() {
    _finalizer.detach(this);
    loggingCalloc.free(ptr);
  }

  /// Whether this [PCSTR] is empty.
  @pragma('vm:prefer-inline')
  bool get isEmpty => length == 0;

  /// The number of UTF-8 code units in this [PCSTR], not including the
  /// terminating NUL character.
  int get length {
    final ptr = this.ptr.cast<BYTE>();
    var length = 0;
    while (ptr[length] != 0) {
      length++;
    }
    return length;
  }

  /// Concatenates this [Pcstr] with [other] and returns the result.
  ///
  /// Throws a [WindowsException] if the concatenation fails.
  Pcstr operator +(Pcstr other) {
    final pcstr = loggingMalloc<BYTE>(length + other.length + 1);
    pcstr.asTypedList(length + other.length)
      ..setAll(0, ptr.cast<BYTE>().asTypedList(length))
      ..setAll(length, other.ptr.cast<BYTE>().asTypedList(other.length));
    pcstr[length + other.length] = 0;
    return Pcstr._fromPointer(pcstr.cast());
  }

  /// Converts this [Pcstr] to a Dart string.
  ///
  /// - If [length] is provided, the conversion includes only the specified
  ///   number of UTF-8 code units, allowing for NUL characters in the string.
  /// - If [length] is not provided, the conversion stops at the first NUL
  ///   character.
  String toDartString({int? length}) {
    if (length != null) RangeError.checkNotNegative(length, 'length');
    return utf8.decode(ptr.cast<BYTE>().asTypedList(length ?? this.length));
  }

  @override
  String toString() => 'Pcstr(ptr: $ptr)';
}
