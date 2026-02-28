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
import 'id3d11devicechild.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ID3DDeviceContextState = GUID.fromComponents(
  0x5c1e0d8a,
  0x7c23,
  0x48f9,
  Uint8List.fromList(const [0x8c, 0x59, 0xa9, 0x29, 0x58, 0xce, 0xff, 0x11]),
);

/// Represents a context state object, which holds state and behavior
/// information about a Microsoft Direct3D device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11_1/nn-d3d11_1-id3ddevicecontextstate>.
///
/// {@category com}
class ID3DDeviceContextState extends ID3D11DeviceChild implements ComInterface {
  /// Creates a new instance of [ID3DDeviceContextState] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ID3DDeviceContextState]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ID3DDeviceContextState(super.ptr);

  /// Creates a new instance of [ID3DDeviceContextState] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3DDeviceContextState] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3DDeviceContextState.from(IUnknown interface) =>
      interface.queryInterface();

  @override
  String toString() => 'ID3DDeviceContextState(ptr: $ptr)';
}

/// @nodoc
base class ID3DDeviceContextStateVtbl extends Struct {
  external ID3D11DeviceChildVtbl base$;
}

@internal
final class ID3DDeviceContextStateCompanion
    extends ComCompanion<ID3DDeviceContextState> {
  const ID3DDeviceContextStateCompanion();

  @pragma('vm:prefer-inline')
  @override
  ID3DDeviceContextState Function(VTablePointer) get fromPointer =>
      ID3DDeviceContextState.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3DDeviceContextState;
}
