import 'dart:ffi';
import 'dart:typed_data';

import '_internal/win32.dart';
import 'allocator.dart';
import 'extensions/pointer.dart';
import 'guid.dart';
import 'structs.g.dart';

/// A wrapper for the [PROPERTYKEY] structure, used in Windows property system
/// APIs.
///
/// This class simplifies working with [PROPERTYKEY]s by providing automatic
/// memory management and convenient Dart-friendly operations.
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
final class PropertyKey implements Finalizable {
  /// Creates a new [PropertyKey] instance from a [GUID] and a property ID.
  ///
  /// Attaches a [NativeFinalizer] to the instance to automatically free the
  /// memory when no longer used.
  factory PropertyKey(GUID fmtid, int pid) {
    final ptr = loggingCalloc<PROPERTYKEY>();
    ptr.ref
      ..fmtid = fmtid
      ..pid = pid;
    return PropertyKey._fromPointer(ptr);
  }

  /// Creates a new [PropertyKey] instance from its individual components.
  ///
  /// - [data1]: The first 32 bits of the [GUID].
  /// - [data2]: The next 16 bits of the [GUID].
  /// - [data3]: The next 16 bits of the [GUID].
  /// - [data4]: A [Uint8List] containing the remaining 8 bytes of the [GUID].
  /// - [pid]: An integer representing the property ID within the property set.
  ///
  /// Attaches a [NativeFinalizer] to the instance to automatically free the
  /// memory when no longer used.
  factory PropertyKey.fromComponents(
    int data1,
    int data2,
    int data3,
    Uint8List data4,
    int pid,
  ) {
    if (data4.length != 8) {
      throw ArgumentError.value(
        data4,
        'data4',
        'Must contain exactly 8 bytes.',
      );
    }

    final ptr = loggingCalloc<PROPERTYKEY>();
    ptr.ref
      ..fmtid.setGUIDFromComponents(data1, data2, data3, data4)
      ..pid = pid;
    return PropertyKey._fromPointer(ptr);
  }

  PropertyKey._fromPointer(this.ptr) {
    _finalizer.attach(
      this,
      ptr.cast(),
      detach: this,
      externalSize: sizeOf<PROPERTYKEY>(),
    );
  }

  /// Creates a [PropertyKey] instance from an existing pointer to a
  /// [PROPERTYKEY] structure.
  ///
  /// Validates that the [ptr] is not NULL and attaches a [NativeFinalizer] to
  /// the instance to automatically free the [ptr] when the object is GCed.
  factory PropertyKey.fromPointer(Pointer<PROPERTYKEY> ptr) {
    if (ptr.isNull) {
      throw ArgumentError.value(ptr, 'ptr', 'Pointer cannot be null');
    }

    return PropertyKey._fromPointer(ptr);
  }

  static final _finalizer = NativeFinalizer(coTaskMemFreeAddress);

  /// The pointer to the [PROPERTYKEY] structure.
  final Pointer<PROPERTYKEY> ptr;

  /// Detaches this instance from the [NativeFinalizer].
  ///
  /// Use this method to manually manage the memory of the [PROPERTYKEY]
  /// structure. After calling this method, the [NativeFinalizer] will no longer
  /// free the memory automatically.
  void detach() => _finalizer.detach(this);

  /// Frees the memory associated with this object.
  ///
  /// This method detaches the instance from the [NativeFinalizer] and
  /// explicitly frees the memory allocated for the [PROPERTYKEY] structure.
  /// After calling this method, the [ptr] becomes invalid and this object
  /// should not be used further.
  ///
  /// Use this method to immediately release the memory rather than waiting for
  /// GC.
  void free() {
    _finalizer.detach(this);
    loggingCalloc.free(ptr);
  }

  /// Provides access to the underlying [PROPERTYKEY] structure.
  @pragma('vm:prefer-inline')
  PROPERTYKEY get ref => ptr.ref;
  @pragma('vm:prefer-inline')
  set ref(PROPERTYKEY value) => ptr.ref = value;

  /// A unique [GUID] for the property.
  @pragma('vm:prefer-inline')
  GUID get fmtid => ref.fmtid;

  /// A property identifier (PID).
  @pragma('vm:prefer-inline')
  int get pid => ref.pid;

  @override
  String toString() => 'PropertyKey($fmtid, $pid)';
}
