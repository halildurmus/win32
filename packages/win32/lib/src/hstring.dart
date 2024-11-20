import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '_internal/win32.dart';
import 'constants.dart';
import 'exception.dart';
import 'extensions/string.dart';
import 'structs.g.dart';
import 'types.dart';
import 'win32/api_ms_win_core_winrt_string_l1_1_0.g.dart';

/// A shorthand function to create a new [Hstring] from a Dart string.
///
/// This is a convenience function for quickly wrapping a Dart string in a
/// [Hstring]. It behaves the same as calling the [Hstring] constructor
/// directly.
///
/// {@category winrt}
@pragma('vm:prefer-inline')
Hstring h(String string) => Hstring(string);

/// A wrapper for the [HSTRING], used in Windows Runtime (WinRT) APIs.
///
/// This class simplifies working with [HSTRING]s by providing automatic memory
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
///
/// {@category winrt}
final class Hstring implements Finalizable {
  /// Creates a new [Hstring] with the provided [string].
  ///
  /// Attaches a [NativeFinalizer] to the instance to automatically free the
  /// memory when no longer used.
  @pragma('vm:prefer-inline')
  factory Hstring(String string) => Hstring._fromHandle(string.toHSTRING());

  Hstring._fromHandle(this.handle) {
    if (handle == NULL) return;
    _finalizer.attach(
      this,
      Pointer<HSTRING>.fromAddress(handle).cast(),
      detach: this,
      externalSize: sizeOf<HSTRING>(),
    );
  }

  /// Creates a [Hstring] from an existing [HSTRING].
  ///
  /// Attaches a [NativeFinalizer] to the instance to automatically free the
  /// [HSTRING] when the object is GCed.
  @pragma('vm:prefer-inline')
  factory Hstring.fromHandle(int handle) => Hstring._fromHandle(handle);

  static final _finalizer = NativeFinalizer(deleteHSTRINGAddress.cast());

  /// The underlying [HSTRING].
  final int handle;

  /// The length of the [HSTRING] in bytes.
  @pragma('vm:prefer-inline')
  int get byteLength => length * sizeOf<WCHAR>();

  /// Creates a new [Hstring] that is a copy of the current Hstring.
  @pragma('vm:prefer-inline')
  Hstring clone() => Hstring._fromHandle(WindowsDuplicateString(handle));

  /// Detaches this instance from the [NativeFinalizer].
  ///
  /// Use this method to manually manage the memory of the [HSTRING].
  /// After calling this method, the [NativeFinalizer] will no longer free the
  /// memory automatically.
  void detach() => _finalizer.detach(this);

  /// Frees the memory associated with this object.
  ///
  /// This method detaches the instance from the [NativeFinalizer] and releases
  /// the resources associated with the [Hstring].
  /// After calling this method, the [handle] becomes invalid and this object
  /// should not be used further.
  ///
  /// Use this method to immediately release the memory rather than waiting for
  /// GC.
  void free() {
    if (handle == NULL) return;
    _finalizer.detach(this);
    WindowsDeleteString(handle);
  }

  /// Whether this [HSTRING] is empty.
  @pragma('vm:prefer-inline')
  bool get isEmpty => handle == NULL || WindowsIsStringEmpty(handle);

  /// The number of UTF-16 code units in this [Hstring].
  @pragma('vm:prefer-inline')
  int get length => handle == NULL ? 0 : WindowsGetStringLen(handle);

  /// Concatenates this [Hstring] with [other] and returns the result.
  ///
  /// Throws a [WindowsException] if the concatenation fails.
  @pragma('vm:prefer-inline')
  Hstring operator +(Hstring other) =>
      Hstring._fromHandle(WindowsConcatString(handle, other.handle));

  /// Converts this [Hstring] to a Dart string.
  String toDartString() {
    if (handle == NULL) return '';
    final pwstr = WindowsGetStringRawBuffer(handle, null);
    return pwstr.toDartString(length: length);
  }

  @override
  String toString() => 'Hstring(handle: $handle)';
}
