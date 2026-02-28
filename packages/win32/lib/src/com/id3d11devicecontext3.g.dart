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
import '../enums.g.dart';
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
import 'id3d11devicecontext2.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ID3D11DeviceContext3 = GUID.fromComponents(
  0xb4e3c01d,
  0xe79e,
  0x4637,
  Uint8List.fromList(const [0x91, 0xb2, 0x51, 0xe, 0x9f, 0x4c, 0x9b, 0x8f]),
);

/// The device context interface represents a device context; it is used to
/// render commands.
///
/// ID3D11DeviceContext3 adds new methods to those in ID3D11DeviceContext2.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11_3/nn-d3d11_3-id3d11devicecontext3>.
///
/// {@category com}
class ID3D11DeviceContext3 extends ID3D11DeviceContext2
    implements ComInterface {
  /// Creates a new instance of [ID3D11DeviceContext3] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ID3D11DeviceContext3]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ID3D11DeviceContext3(super.ptr)
    : _vtable = ptr.value.cast<ID3D11DeviceContext3Vtbl>().ref;

  /// Creates a new instance of [ID3D11DeviceContext3] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3D11DeviceContext3] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3D11DeviceContext3.from(IUnknown interface) =>
      interface.queryInterface();

  final ID3D11DeviceContext3Vtbl _vtable;
  late final _Flush1Fn =
      _vtable.Flush1.asFunction<void Function(VTablePointer, int, Pointer)>();
  late final _SetHardwareProtectionStateFn =
      _vtable.SetHardwareProtectionState.asFunction<
        void Function(VTablePointer, int)
      >();
  late final _GetHardwareProtectionStateFn =
      _vtable.GetHardwareProtectionState.asFunction<
        void Function(VTablePointer, Pointer<Int32>)
      >();

  /// Sends queued-up commands in the command buffer to the graphics processing
  /// unit (GPU), with a specified context type and an optional event handle to
  /// create an event query.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_3/nf-d3d11_3-id3d11devicecontext3-flush1>.
  @pragma('vm:prefer-inline')
  void flush1(D3D11_CONTEXT_TYPE contextType, HANDLE? hEvent) =>
      _Flush1Fn(ptr, contextType, hEvent ?? nullptr);

  /// Sets the hardware protection state.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_3/nf-d3d11_3-id3d11devicecontext3-sethardwareprotectionstate>.
  @pragma('vm:prefer-inline')
  void setHardwareProtectionState(bool hwProtectionEnable) =>
      _SetHardwareProtectionStateFn(ptr, hwProtectionEnable ? TRUE : FALSE);

  /// Gets whether hardware protection is enabled.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_3/nf-d3d11_3-id3d11devicecontext3-gethardwareprotectionstate>.
  @pragma('vm:prefer-inline')
  void getHardwareProtectionState(Pointer<Int32> pHwProtectionEnable) =>
      _GetHardwareProtectionStateFn(ptr, pHwProtectionEnable);

  @override
  String toString() => 'ID3D11DeviceContext3(ptr: $ptr)';
}

/// @nodoc
base class ID3D11DeviceContext3Vtbl extends Struct {
  external ID3D11DeviceContext2Vtbl base$;
  external Pointer<
    NativeFunction<
      Void Function(VTablePointer this$, Int32 contextType, Pointer hEvent)
    >
  >
  Flush1;
  external Pointer<
    NativeFunction<Void Function(VTablePointer this$, Int32 hwProtectionEnable)>
  >
  SetHardwareProtectionState;
  external Pointer<
    NativeFunction<
      Void Function(VTablePointer this$, Pointer<Int32> pHwProtectionEnable)
    >
  >
  GetHardwareProtectionState;
}

@internal
final class ID3D11DeviceContext3Companion
    extends ComCompanion<ID3D11DeviceContext3> {
  const ID3D11DeviceContext3Companion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11DeviceContext3 Function(VTablePointer) get fromPointer =>
      ID3D11DeviceContext3.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11DeviceContext3;
}
