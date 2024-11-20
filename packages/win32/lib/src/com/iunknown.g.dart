// Dart representation of a COM interface.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';

import '../_internal/win32.dart';
import '../allocator.dart';
import '../bstr.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../exception.dart';
import '../extensions/iunknown.dart';
import '../extensions/pointer.dart';
import '../guid.dart';
import '../hresult.dart';
import '../hstring.dart';
import '../macros.dart';
import '../ntstatus.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'interface.g.dart';

/// @nodoc
final IID_IUnknown = Guid.fromComponents(
  0x0,
  0x0,
  0x0,
  Uint8List.fromList(const [0xc0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x46]),
);

/// The foundational COM interface that provides methods for querying other
/// interfaces and managing the lifecycle of a COM object.
///
/// All COM interfaces directly or indirectly inherit from [IUnknown]. As such,
/// the three methods defined by [IUnknown] ([queryInterface], [addRef], and
/// [release]) are always the first entries in the VTable for any COM interface.
///
/// This class uses a [NativeFinalizer] to automatically call the [release]
/// method when the object is garbage collected. This ensures that unmanaged
/// resources are properly released, preventing memory leaks.
///
/// If you need full control over the object's lifecycle, you can opt out of
/// automatic finalization by using the [detach] method. This is especially
/// useful in scenarios where ownership of the object is transferred to another
/// part of your application or when explicit lifecycle management is required.
///
/// Additionally, invoking [addRef] or [release] will automatically detach the
/// finalizer. These methods indicate that the caller is explicitly managing the
/// object's lifecycle, taking full responsibility for releasing unmanaged
/// resources.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/unknwn/nn-unknwn-iunknown>.
///
/// {@category com}
class IUnknown implements ComInterface, Finalizable {
  /// Creates a new instance of [IUnknown] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IUnknown] interface. The
  /// [ptr] must not be [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUnknown(this.ptr)
    : assert(ptr != nullptr, "Pointer must not be 'nullptr'."),
      _vtable = ptr.value.cast<IUnknownVtbl>().ref {
    _finalizer.attach(
      this,
      ptr.cast(),
      detach: this,
      externalSize: sizeOf<Pointer>(),
    );
  }

  /// Creates a new instance of [IUnknown] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUnknown] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUnknown.from(IUnknown interface, {bool releaseOriginal = false}) =>
      interface.cast(releaseOriginal: releaseOriginal);

  static final _finalizer = NativeFinalizer(releaseIUnknownAddress.cast());
  final VTablePointer ptr;
  final IUnknownVtbl _vtable;
  late final _QueryInterfaceFn =
      _vtable.QueryInterface.asFunction<
        int Function(VTablePointer, Pointer<GUID>, Pointer<Pointer>)
      >();
  late final _AddRefFn =
      _vtable.AddRef.asFunction<int Function(VTablePointer)>();
  late final _ReleaseFn =
      _vtable.Release.asFunction<int Function(VTablePointer)>();

  /// Detaches this instance from the [NativeFinalizer].
  ///
  /// Once detached, the finalizer will no longer automatically call the
  /// [release] method when the object is GCed. This allows you to take full
  /// control over the lifecycle of the object.
  ///
  /// You should call this method in situations where the ownership of the COM
  /// object is being transferred to another part of your application, or when
  /// you want to manage its lifecycle manually.
  ///
  /// Example:
  /// ```dart
  /// // Create a new COM object instance (e.g., IFileDialog).
  /// final fileDialog = createInstance<IFileDialog>(FileOpenDialog);
  /// fileDialog.detach(); // Detach the finalizer to take manual control.
  ///
  /// // Perform some operations with the file dialog instance.
  /// // ...
  ///
  /// // Later, when done with the file dialog:
  /// fileDialog.release();
  /// ```
  void detach() => _finalizer.detach(this);

  /// Queries this COM object for a specific interface defined by the type
  /// parameter [T].
  ///
  /// This method attempts to retrieve an interface implemented by the same COM
  /// object. If the interface is supported, it returns an instance of that
  /// interface, ensuring that [addRef] is called to increment the reference
  /// count.
  ///
  /// Throws a [WindowsException] if the requested interface is not implemented
  /// by the object.
  ///
  /// This method uses the [ComInterface.type] method to retrieve metadata about
  /// the target interface, including its IID (Interface ID) and instantiation
  /// logic. All COM interfaces provided by this package are pre-registered.
  /// Custom COM interfaces must be registered manually using the
  /// [ComInterface.register] method before calling this method.
  ///
  /// Example:
  /// ```dart
  /// // Create a COM object instance (e.g., IFileDialog).
  /// final fileDialog = createInstance<IFileDialog>(FileOpenDialog);
  /// // Query for the IFileDialog2 interface.
  /// final fileDialog2 = fileDialog.queryInterface<IFileDialog2>();
  /// ```
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/unknwn/nf-unknwn-iunknown-queryinterface(refiid_void)>.
  T queryInterface<T extends IUnknown>() {
    final companion = ComInterface.type<T>();
    final riid = companion.iid;
    final ppvObject = loggingCalloc<Pointer>();
    final hr$ = HRESULT(_QueryInterfaceFn(ptr, riid.ptr, ppvObject));
    if (hr$.isError) {
      free(ppvObject);
      throw WindowsException(hr$);
    }
    final result = companion.fromPointer(ppvObject.value.cast());
    free(ppvObject);
    return result;
  }

  /// Increments the reference count of this COM object.
  ///
  /// This method also detaches the instance from the [NativeFinalizer]. By
  /// detaching, the responsibility for managing the object's lifetime is
  /// transferred to the caller, who must ensure that [release] is called when
  /// the object is no longer needed.
  ///
  /// Call this method for every new copy of an interface pointer that you make.
  /// For example, if you return a copy of a pointer from a method, then you
  /// must call [addRef] on it before returning. Similarly, if you pass a
  /// pointer as an `in-out` parameter to a method, you should call [addRef] on
  /// it before the call. This ensures the method has a valid reference to the
  /// object and can safely call [release] before replacing the original pointer
  /// with the out-value.
  ///
  /// Each call to [addRef] must be balanced by a corresponding call to
  /// [release] to properly manage the object's lifetime.
  ///
  /// Example:
  /// ```dart
  /// // Create a new COM object instance (e.g., IFileDialog).
  /// final fileDialog = createInstance<IFileDialog>(FileOpenDialog);
  ///
  /// // Increment the reference count before assigning the object to a VARIANT.
  /// fileDialog.addRef();
  ///
  /// // Create a VARIANT to hold the COM object.
  /// final variant = Variant.unknown(fileDialog);
  ///
  /// // Pass the VARIANT to a native function.
  /// // ...
  ///
  /// // Clear the VARIANT eagerly, releasing its resources (including calling
  /// // release on the COM object).
  /// variant.free();
  ///
  /// // Release the final reference to the COM object.
  /// fileDialog.release();
  /// ```
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/unknwn/nf-unknwn-iunknown-addref>.
  @pragma('vm:prefer-inline')
  int addRef() {
    _finalizer.detach(this);
    return _AddRefFn(ptr);
  }

  /// Decrements the reference count of this COM object.
  ///
  /// This method also detaches the instance from the [NativeFinalizer]. By
  /// detaching, it ensures that the finalizer does not automatically attempt to
  /// release the object (again), preventing potential use-after-free errors.
  ///
  /// Call this method to release the object's resources immediately, rather
  /// than waiting for GC. If this is the last reference to the object, the COM
  /// object is destroyed, and its resources are freed. Ensure that you do not
  /// access the object after calling [release] if its reference count reaches
  /// zero.
  ///
  /// Example:
  /// ```dart
  /// // Create a new COM object instance (e.g., IFileDialog).
  /// final fileDialog = createInstance<IFileDialog>(FileOpenDialog);
  ///
  /// // Perform some operations with the file dialog instance.
  /// // ...
  ///
  /// // Later, when done with the file dialog:
  /// fileDialog.release(); // Ensures resources are freed immediately.
  /// ```
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/unknwn/nf-unknwn-iunknown-release>.
  @pragma('vm:prefer-inline')
  int release() {
    _finalizer.detach(this);
    return _ReleaseFn(ptr);
  }

  @override
  String toString() => 'IUnknown(ptr: $ptr)';
}

/// @nodoc
base class IUnknownVtbl extends Struct {
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<GUID> riid,
        Pointer<Pointer> ppvObject,
      )
    >
  >
  QueryInterface;
  external Pointer<NativeFunction<Uint32 Function(VTablePointer this$)>> AddRef;
  external Pointer<NativeFunction<Uint32 Function(VTablePointer this$)>>
  Release;
}

@internal
final class IUnknownCompanion extends ComCompanion<IUnknown> {
  const IUnknownCompanion();

  @pragma('vm:prefer-inline')
  @override
  IUnknown Function(VTablePointer) get fromPointer => IUnknown.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUnknown;
}

/// Returns the current reference count of the [object].
///
/// This value is intended to be used for testing purposes.
int refCount(IUnknown object) {
  object._AddRefFn(object.ptr);
  return object._ReleaseFn(object.ptr);
}
