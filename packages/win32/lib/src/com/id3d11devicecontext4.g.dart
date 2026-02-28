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
import 'id3d11devicecontext3.g.dart';
import 'id3d11fence.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ID3D11DeviceContext4 = GUID.fromComponents(
  0x917600da,
  0xf58c,
  0x4c33,
  Uint8List.fromList(const [0x98, 0xd8, 0x3e, 0x15, 0xb3, 0x90, 0xfa, 0x24]),
);

/// The device context interface represents a device context; it is used to
/// render commands.
///
/// ID3D11DeviceContext4 adds new methods to those in ID3D11DeviceContext3.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11_3/nn-d3d11_3-id3d11devicecontext4>.
///
/// {@category com}
class ID3D11DeviceContext4 extends ID3D11DeviceContext3
    implements ComInterface {
  /// Creates a new instance of [ID3D11DeviceContext4] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ID3D11DeviceContext4]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ID3D11DeviceContext4(super.ptr)
    : _vtable = ptr.value.cast<ID3D11DeviceContext4Vtbl>().ref;

  /// Creates a new instance of [ID3D11DeviceContext4] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3D11DeviceContext4] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3D11DeviceContext4.from(IUnknown interface) =>
      interface.queryInterface();

  final ID3D11DeviceContext4Vtbl _vtable;
  late final _SignalFn = _vtable
      .Signal.asFunction<int Function(VTablePointer, VTablePointer, int)>();
  late final _WaitFn = _vtable
      .Wait.asFunction<int Function(VTablePointer, VTablePointer, int)>();

  /// Updates a fence to a specified value after all previous work has
  /// completed.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_3/nf-d3d11_3-id3d11devicecontext4-signal>.
  @pragma('vm:prefer-inline')
  void signal(ID3D11Fence? pFence, int value) {
    final hr$ = HRESULT(_SignalFn(ptr, pFence?.ptr ?? nullptr, value));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Waits until the specified fence reaches or exceeds the specified value
  /// before future work can begin.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_3/nf-d3d11_3-id3d11devicecontext4-wait>.
  @pragma('vm:prefer-inline')
  void wait(ID3D11Fence? pFence, int value) {
    final hr$ = HRESULT(_WaitFn(ptr, pFence?.ptr ?? nullptr, value));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'ID3D11DeviceContext4(ptr: $ptr)';
}

/// @nodoc
base class ID3D11DeviceContext4Vtbl extends Struct {
  external ID3D11DeviceContext3Vtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, VTablePointer pFence, Uint64 value)
    >
  >
  Signal;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, VTablePointer pFence, Uint64 value)
    >
  >
  Wait;
}

@internal
final class ID3D11DeviceContext4Companion
    extends ComCompanion<ID3D11DeviceContext4> {
  const ID3D11DeviceContext4Companion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11DeviceContext4 Function(VTablePointer) get fromPointer =>
      ID3D11DeviceContext4.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11DeviceContext4;
}
