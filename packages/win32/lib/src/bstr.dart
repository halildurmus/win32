import 'dart:ffi';

import '_internal/win32.dart';
import 'exception.dart';
import 'extensions/pointer.dart';
import 'extensions/string.dart';
import 'structs.g.dart';
import 'types.dart';
import 'win32/oleaut32.g.dart';

/// A shorthand function to create a new [Bstr] from a Dart string.
///
/// This is a convenience function for quickly wrapping a Dart string in a
/// [Bstr]. It behaves the same as calling the [Bstr] constructor directly.
@pragma('vm:prefer-inline')
Bstr b(String string) => Bstr(string);

/// A wrapper for the [BSTR], used in COM APIs.
///
/// This class simplifies working with [BSTR]s by providing automatic memory
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
final class Bstr implements Finalizable {
  /// Creates a new [Bstr] with the provided [string].
  ///
  /// Attaches a [NativeFinalizer] to the instance to automatically free the
  /// memory when no longer used.
  @pragma('vm:prefer-inline')
  factory Bstr(String string) => Bstr._fromPointer(string.toBSTR());

  Bstr._fromPointer(this.ptr) {
    _finalizer.attach(
      this,
      ptr.cast(),
      detach: this,
      externalSize: sizeOf<WCHAR>(),
    );
  }

  /// Creates a [Bstr] from an existing [BSTR].
  ///
  /// Validates that the [ptr] is not NULL and attaches a [NativeFinalizer] to
  /// the instance to automatically free the [BSTR] when the object is GCed.
  factory Bstr.fromPointer(BSTR ptr) {
    if (ptr.isNull) {
      throw ArgumentError.value(ptr, 'ptr', 'Pointer cannot be null');
    }

    return Bstr._fromPointer(ptr);
  }

  static final _finalizer = NativeFinalizer(deleteBSTRAddress.cast());

  /// The underlying [BSTR].
  final BSTR ptr;

  /// The length of the [BSTR] in bytes, not including the terminating NUL
  /// character.
  @pragma('vm:prefer-inline')
  int get byteLength => SysStringByteLen(ptr);

  /// Creates a new [Bstr] that is a copy of the current Bstr.
  Bstr clone() {
    final bstr = SysAllocString(ptr);
    if (bstr.isNull) throw StateError('Failed to allocate memory for BSTR.');
    return Bstr._fromPointer(bstr);
  }

  /// Detaches this instance from the [NativeFinalizer].
  ///
  /// Use this method to manually manage the memory of the [BSTR].
  /// After calling this method, the [NativeFinalizer] will no longer free the
  /// memory automatically.
  void detach() => _finalizer.detach(this);

  /// Frees the memory associated with this object.
  ///
  /// This method detaches the instance from the [NativeFinalizer] and releases
  /// the resources associated with the [BSTR].
  /// After calling this method, the [ptr] becomes invalid and this object
  /// should not be used further.
  ///
  /// Use this method to immediately release the memory rather than waiting for
  /// GC.
  void free() {
    _finalizer.detach(this);
    SysFreeString(ptr);
  }

  /// Whether this [BSTR] is empty.
  @pragma('vm:prefer-inline')
  bool get isEmpty => length == 0;

  /// The number of UTF-16 code units in this [BSTR], not including the
  /// terminating NUL character.
  @pragma('vm:prefer-inline')
  int get length => SysStringLen(ptr);

  /// Concatenates this [Bstr] with [other] and returns the result.
  ///
  /// Throws a [WindowsException] if the concatenation fails.
  Bstr operator +(Bstr other) {
    final bstr = VarBstrCat(ptr, other.ptr);
    if (bstr.isNull) throw StateError('Failed to concatenate BSTRs.');
    return Bstr._fromPointer(bstr);
  }

  /// Converts this [Bstr] to a Dart string.
  @pragma('vm:prefer-inline')
  String toDartString() =>
      String.fromCharCodes(ptr.cast<WCHAR>().asTypedList(length));

  @override
  String toString() => 'Bstr(ptr: $ptr)';
}
