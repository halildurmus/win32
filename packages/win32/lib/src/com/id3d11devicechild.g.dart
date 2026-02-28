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
import 'id3d11device.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ID3D11DeviceChild = GUID.fromComponents(
  0x1841e5c8,
  0x16b0,
  0x489b,
  Uint8List.fromList(const [0xbc, 0xc8, 0x44, 0xcf, 0xb0, 0xd5, 0xde, 0xae]),
);

/// A device-child interface accesses data used by a device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11/nn-d3d11-id3d11devicechild>.
///
/// {@category com}
class ID3D11DeviceChild extends IUnknown implements ComInterface {
  /// Creates a new instance of [ID3D11DeviceChild] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ID3D11DeviceChild]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ID3D11DeviceChild(super.ptr)
    : _vtable = ptr.value.cast<ID3D11DeviceChildVtbl>().ref;

  /// Creates a new instance of [ID3D11DeviceChild] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3D11DeviceChild] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3D11DeviceChild.from(IUnknown interface) =>
      interface.queryInterface();

  final ID3D11DeviceChildVtbl _vtable;
  late final _GetDeviceFn =
      _vtable.GetDevice.asFunction<
        void Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _GetPrivateDataFn =
      _vtable.GetPrivateData.asFunction<
        int Function(VTablePointer, Pointer<GUID>, Pointer<Uint32>, Pointer)
      >();
  late final _SetPrivateDataFn =
      _vtable.SetPrivateData.asFunction<
        int Function(VTablePointer, Pointer<GUID>, int, Pointer)
      >();
  late final _SetPrivateDataInterfaceFn =
      _vtable.SetPrivateDataInterface.asFunction<
        int Function(VTablePointer, Pointer<GUID>, VTablePointer)
      >();

  /// Get a pointer to the device that created this interface.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicechild-getdevice>.
  @pragma('vm:prefer-inline')
  void getDevice(Pointer<VTablePointer> ppDevice) =>
      _GetDeviceFn(ptr, ppDevice);

  /// Get application-defined data from a device child.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicechild-getprivatedata>.
  @pragma('vm:prefer-inline')
  void getPrivateData(
    Pointer<GUID> guid,
    Pointer<Uint32> pDataSize,
    Pointer? pData,
  ) {
    final hr$ = HRESULT(
      _GetPrivateDataFn(ptr, guid, pDataSize, pData ?? nullptr),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Set application-defined data to a device child and associate that data
  /// with an application-defined guid.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicechild-setprivatedata>.
  @pragma('vm:prefer-inline')
  void setPrivateData(Pointer<GUID> guid, int dataSize, Pointer? pData) {
    final hr$ = HRESULT(
      _SetPrivateDataFn(ptr, guid, dataSize, pData ?? nullptr),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Associate an IUnknown-derived interface with this device child and
  /// associate that interface with an application-defined guid.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicechild-setprivatedatainterface>.
  @pragma('vm:prefer-inline')
  void setPrivateDataInterface(Pointer<GUID> guid, IUnknown? pData) {
    final hr$ = HRESULT(
      _SetPrivateDataInterfaceFn(ptr, guid, pData?.ptr ?? nullptr),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'ID3D11DeviceChild(ptr: $ptr)';
}

/// @nodoc
base class ID3D11DeviceChildVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Void Function(VTablePointer this$, Pointer<VTablePointer> ppDevice)
    >
  >
  GetDevice;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<GUID> guid,
        Pointer<Uint32> pDataSize,
        Pointer pData,
      )
    >
  >
  GetPrivateData;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<GUID> guid,
        Uint32 dataSize,
        Pointer pData,
      )
    >
  >
  SetPrivateData;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<GUID> guid,
        VTablePointer pData,
      )
    >
  >
  SetPrivateDataInterface;
}

@internal
final class ID3D11DeviceChildCompanion extends ComCompanion<ID3D11DeviceChild> {
  const ID3D11DeviceChildCompanion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11DeviceChild Function(VTablePointer) get fromPointer =>
      ID3D11DeviceChild.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11DeviceChild;
}
