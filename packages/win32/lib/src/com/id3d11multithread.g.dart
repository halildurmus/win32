// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Dart representation of a COM interface.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:meta/meta.dart';

import '../bstr.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../exception.dart';
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
import '../rpc_status.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ID3D11Multithread = GUID.fromComponents(
  0x9b7e4e00,
  0x342c,
  0x4106,
  Uint8List.fromList(const [0xa1, 0x9f, 0x4f, 0x27, 0x4, 0xf6, 0x89, 0xf0]),
);

/// Provides threading protection for critical sections of a multi-threaded
/// application.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11_4/nn-d3d11_4-id3d11multithread>.
///
/// {@category com}
class ID3D11Multithread extends IUnknown implements ComInterface {
  /// Creates a new instance of [ID3D11Multithread] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ID3D11Multithread]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ID3D11Multithread(super.ptr)
    : _vtable = ptr.value.cast<ID3D11MultithreadVtbl>().ref;

  /// Creates a new instance of [ID3D11Multithread] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3D11Multithread] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3D11Multithread.from(IUnknown interface) =>
      interface.queryInterface();

  final ID3D11MultithreadVtbl _vtable;
  late final _EnterFn =
      _vtable.Enter.asFunction<void Function(VTablePointer)>();
  late final _LeaveFn =
      _vtable.Leave.asFunction<void Function(VTablePointer)>();
  late final _SetMultithreadProtectedFn = _vtable
      .SetMultithreadProtected.asFunction<int Function(VTablePointer, int)>();
  late final _GetMultithreadProtectedFn =
      _vtable.GetMultithreadProtected.asFunction<int Function(VTablePointer)>();

  /// Enter a device's critical section.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_4/nf-d3d11_4-id3d11multithread-enter>.
  @pragma('vm:prefer-inline')
  void enter() => _EnterFn(ptr);

  /// Leave a device's critical section.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_4/nf-d3d11_4-id3d11multithread-leave>.
  @pragma('vm:prefer-inline')
  void leave() => _LeaveFn(ptr);

  /// Turns multithread protection on or off.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_4/nf-d3d11_4-id3d11multithread-setmultithreadprotected>.
  @pragma('vm:prefer-inline')
  bool setMultithreadProtected(bool bMTProtect) =>
      _SetMultithreadProtectedFn(ptr, bMTProtect ? TRUE : FALSE) != FALSE;

  /// Find out if multithread protection is turned on or not.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_4/nf-d3d11_4-id3d11multithread-getmultithreadprotected>.
  @pragma('vm:prefer-inline')
  bool getMultithreadProtected() => _GetMultithreadProtectedFn(ptr) != FALSE;

  @override
  String toString() => 'ID3D11Multithread(ptr: $ptr)';
}

/// @nodoc
base class ID3D11MultithreadVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<NativeFunction<Void Function(VTablePointer this$)>> Enter;
  external Pointer<NativeFunction<Void Function(VTablePointer this$)>> Leave;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 bMTProtect)>
  >
  SetMultithreadProtected;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>>
  GetMultithreadProtected;
}

@internal
final class ID3D11MultithreadCompanion extends ComCompanion<ID3D11Multithread> {
  const ID3D11MultithreadCompanion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11Multithread Function(VTablePointer) get fromPointer =>
      ID3D11Multithread.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11Multithread;
}
