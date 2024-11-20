import 'dart:ffi';
import 'dart:typed_data';

import '_internal/win32.dart';
import 'allocator.dart';
import 'extensions/pointer.dart';
import 'structs.g.dart';

/// A wrapper for the [SID_IDENTIFIER_AUTHORITY] structure, used in Windows
/// security identifiers (SIDs).
///
/// This class simplifies working with [SID_IDENTIFIER_AUTHORITY]s by providing
/// automatic memory management and convenient Dart-friendly operations.
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
final class SidIdentifierAuthority implements Finalizable {
  /// Creates a new [SidIdentifierAuthority] instance from a [Uint8List].
  ///
  /// The provided [value] should be exactly 6 bytes long, as required by
  /// the [SID_IDENTIFIER_AUTHORITY] structure.
  ///
  /// Attaches a [NativeFinalizer] to the instance to automatically free the
  /// memory when no longer used.
  factory SidIdentifierAuthority(Uint8List value) {
    if (value.length != 6) {
      throw ArgumentError.value(
        value,
        'value',
        'SID_IDENTIFIER_AUTHORITY requires exactly 6 bytes',
      );
    }

    final ptr = loggingCalloc<SID_IDENTIFIER_AUTHORITY>();
    final array = ptr.ref.Value;
    for (var i = 0; i < 6; i++) {
      array[i] = value[i];
    }
    return SidIdentifierAuthority._fromPointer(ptr);
  }

  SidIdentifierAuthority._fromPointer(this.ptr) {
    _finalizer.attach(
      this,
      ptr.cast(),
      detach: this,
      externalSize: sizeOf<SID_IDENTIFIER_AUTHORITY>(),
    );
  }

  /// Creates a [SidIdentifierAuthority] instance from an existing pointer to a
  /// [SID_IDENTIFIER_AUTHORITY] structure.
  ///
  /// Validates that the [ptr] is not NULL and attaches a [NativeFinalizer] to
  /// the instance to automatically free the [ptr] when the object is GCed.
  factory SidIdentifierAuthority.fromPointer(
    Pointer<SID_IDENTIFIER_AUTHORITY> ptr,
  ) {
    if (ptr.isNull) {
      throw ArgumentError.value(ptr, 'ptr', 'Pointer cannot be null');
    }

    return SidIdentifierAuthority._fromPointer(ptr);
  }

  static final _finalizer = NativeFinalizer(coTaskMemFreeAddress);

  /// The pointer to the [SID_IDENTIFIER_AUTHORITY] structure.
  final Pointer<SID_IDENTIFIER_AUTHORITY> ptr;

  /// Detaches this instance from the [NativeFinalizer].
  ///
  /// Use this method to manually manage the memory of the
  /// [SID_IDENTIFIER_AUTHORITY] structure. After calling this method, the
  /// [NativeFinalizer] will no longer free the memory automatically.
  void detach() => _finalizer.detach(this);

  /// Frees the memory associated with this object.
  ///
  /// This method detaches the instance from the [NativeFinalizer] and
  /// explicitly frees the memory allocated for the [SID_IDENTIFIER_AUTHORITY]
  /// structure. After calling this method, the [ptr] becomes invalid and this
  /// object should not be used further.
  ///
  /// Use this method to immediately release the memory rather than waiting for
  /// GC.
  void free() {
    _finalizer.detach(this);
    loggingCalloc.free(ptr);
  }

  /// Provides access to the underlying [SID_IDENTIFIER_AUTHORITY] structure.
  @pragma('vm:prefer-inline')
  SID_IDENTIFIER_AUTHORITY get ref => ptr.ref;
  @pragma('vm:prefer-inline')
  set ref(SID_IDENTIFIER_AUTHORITY value) => ptr.ref = value;

  @pragma('vm:prefer-inline')
  Array<Uint8> get value => ref.Value;

  @override
  String toString() {
    final values = [for (var i = 0; i < 6; i++) value[i]];
    return 'SidIdentifierAuthority([${values.join(', ')}])';
  }
}
