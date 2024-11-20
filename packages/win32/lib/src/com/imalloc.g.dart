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
import 'iunknown.g.dart';

/// @nodoc
final IID_IMalloc = Guid.fromComponents(
  0x2,
  0x0,
  0x0,
  Uint8List.fromList(const [0xc0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x46]),
);

/// Allocates, frees, and manages memory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/objidlbase/nn-objidlbase-imalloc>.
///
/// {@category com}
class IMalloc extends IUnknown implements ComInterface {
  /// Creates a new instance of [IMalloc] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IMalloc] interface. The
  /// [ptr] must not be [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IMalloc(super.ptr) : _vtable = ptr.value.cast<IMallocVtbl>().ref;

  /// Creates a new instance of [IMalloc] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IMalloc] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IMalloc.from(IUnknown interface, {bool releaseOriginal = false}) =>
      interface.cast(releaseOriginal: releaseOriginal);

  final IMallocVtbl _vtable;
  late final _AllocFn =
      _vtable.Alloc.asFunction<Pointer Function(VTablePointer, int)>();
  late final _ReallocFn = _vtable
      .Realloc.asFunction<Pointer Function(VTablePointer, Pointer, int)>();
  late final _FreeFn =
      _vtable.Free.asFunction<void Function(VTablePointer, Pointer)>();
  late final _GetSizeFn =
      _vtable.GetSize.asFunction<int Function(VTablePointer, Pointer)>();
  late final _DidAllocFn =
      _vtable.DidAlloc.asFunction<int Function(VTablePointer, Pointer)>();
  late final _HeapMinimizeFn =
      _vtable.HeapMinimize.asFunction<void Function(VTablePointer)>();

  /// Allocates a block of memory.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-imalloc-alloc>.
  @pragma('vm:prefer-inline')
  Pointer alloc(int cb) => _AllocFn(ptr, cb);

  /// Changes the size of a previously allocated block of memory.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidlbase/nf-objidlbase-imalloc-realloc>.
  @pragma('vm:prefer-inline')
  Pointer realloc(Pointer? pv, int cb) => _ReallocFn(ptr, pv ?? nullptr, cb);

  /// Frees a previously allocated block of memory.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidlbase/nf-objidlbase-imalloc-free>.
  @pragma('vm:prefer-inline')
  void free(Pointer? pv) => _FreeFn(ptr, pv ?? nullptr);

  /// Retrieves the size of a previously allocated block of memory.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidlbase/nf-objidlbase-imalloc-getsize>.
  @pragma('vm:prefer-inline')
  int getSize(Pointer? pv) => _GetSizeFn(ptr, pv ?? nullptr);

  /// Determines whether this allocator was used to allocate the specified block
  /// of memory.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidlbase/nf-objidlbase-imalloc-didalloc>.
  @pragma('vm:prefer-inline')
  int didAlloc(Pointer? pv) => _DidAllocFn(ptr, pv ?? nullptr);

  /// Minimizes the heap by releasing unused memory to the operating system.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidlbase/nf-objidlbase-imalloc-heapminimize>.
  @pragma('vm:prefer-inline')
  void heapMinimize() => _HeapMinimizeFn(ptr);

  @override
  String toString() => 'IMalloc(ptr: $ptr)';
}

/// @nodoc
base class IMallocVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<Pointer Function(VTablePointer this$, IntPtr cb)>
  >
  Alloc;
  external Pointer<
    NativeFunction<Pointer Function(VTablePointer this$, Pointer pv, IntPtr cb)>
  >
  Realloc;
  external Pointer<
    NativeFunction<Void Function(VTablePointer this$, Pointer pv)>
  >
  Free;
  external Pointer<
    NativeFunction<IntPtr Function(VTablePointer this$, Pointer pv)>
  >
  GetSize;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer pv)>
  >
  DidAlloc;
  external Pointer<NativeFunction<Void Function(VTablePointer this$)>>
  HeapMinimize;
}

@internal
final class IMallocCompanion extends ComCompanion<IMalloc> {
  const IMallocCompanion();

  @pragma('vm:prefer-inline')
  @override
  IMalloc Function(VTablePointer) get fromPointer => IMalloc.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IMalloc;
}
