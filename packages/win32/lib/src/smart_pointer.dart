import 'dart:ffi';

import '_internal/win32.dart';
import 'allocator.dart';
import 'extensions/pointer.dart';

/// A wrapper around [Pointer] that provides automatic memory management.
///
/// This class uses a [NativeFinalizer] to automatically release the memory
/// allocated for the [Pointer] when the object is garbage-collected. This
/// ensures proper cleanup of unmanaged resources.
///
/// If you need full control over the object's lifecycle, you can opt out of
/// automatic finalization by using the [detach] method. This is especially
/// useful in scenarios where ownership of the object is transferred to another
/// part of your application or when explicit lifecycle management is required.
final class SmartPointer<T extends NativeType> implements Finalizable {
  /// Creates a [SmartPointer] from the given [ptr].
  ///
  /// Ensures that [ptr] is not NULL and attaches a [NativeFinalizer] to the
  /// the instance to automatically free the [ptr] when the object is GCed.
  ///
  /// Optionally, [sizeInBytes] can be provided to assist the GC with scheduling
  /// heuristics.
  SmartPointer(this.ptr, {int? sizeInBytes}) {
    if (ptr.isNull) {
      throw ArgumentError.value(ptr, 'ptr', 'Pointer cannot be null');
    }

    _finalizer.attach(
      this,
      ptr.cast(),
      detach: this,
      externalSize: sizeInBytes,
    );
  }

  static final _finalizer = NativeFinalizer(coTaskMemFreeAddress);

  /// The underlying [Pointer] managed by this instance.
  final Pointer<T> ptr;

  /// Access to the raw pointer value.
  @pragma('vm:prefer_inline')
  int get address => ptr.address;

  /// Detaches the object from the [NativeFinalizer], requiring the caller to
  /// manage memory manually.
  ///
  /// This is typically used when ownership of [ptr] is transferred or explicit
  /// control is needed.
  void detach() => _finalizer.detach(this);

  /// Frees the memory associated with [ptr].
  ///
  /// Detaches the object from the [NativeFinalizer] and frees the [ptr].
  /// After calling this method, [ptr] becomes invalid, and the object should
  /// not be used further.
  ///
  /// Use this method to immediately release the memory rather than waiting for
  /// GC.
  void free() {
    _finalizer.detach(this);
    loggingCalloc.free(ptr);
  }

  @override
  bool operator ==(Object other) {
    if (other is! Pointer) return false;
    return address == other.address;
  }

  @override
  int get hashCode => address.hashCode;

  @override
  String toString() => 'SmartPointer(ptr: $ptr)';
}
