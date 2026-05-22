// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';

import '../bstr.dart';
import '../callbacks.g.dart';
import '../com/interface.g.dart';
import '../com/iunknown.g.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../enums.g.dart';
import '../exception.dart';
import '../extensions/pointer.dart';
import '../functions.dart';
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
import '../win32_error.dart';
import '../win32_result.dart';

final _bluetoothapis = DynamicLibrary.open('bluetoothapis.dll');

/// Changes the discovery state of a local Bluetooth radio or radios.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothenablediscovery>.
///
/// {@category bluetoothapis}
@pragma('vm:prefer-inline')
bool BluetoothEnableDiscovery(HANDLE? hRadio, bool fEnabled) =>
    _BluetoothEnableDiscovery(hRadio ?? nullptr, fEnabled ? TRUE : FALSE) !=
    FALSE;

final _BluetoothEnableDiscovery = _bluetoothapis
    .lookupFunction<Int32 Function(Pointer, Int32), int Function(Pointer, int)>(
      'BluetoothEnableDiscovery',
    );

/// Modifies whether a local Bluetooth radio accepts incoming connections.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothenableincomingconnections>.
///
/// {@category bluetoothapis}
@pragma('vm:prefer-inline')
bool BluetoothEnableIncomingConnections(HANDLE? hRadio, bool fEnabled) =>
    _BluetoothEnableIncomingConnections(
      hRadio ?? nullptr,
      fEnabled ? TRUE : FALSE,
    ) !=
    FALSE;

final _BluetoothEnableIncomingConnections = _bluetoothapis
    .lookupFunction<Int32 Function(Pointer, Int32), int Function(Pointer, int)>(
      'BluetoothEnableIncomingConnections',
    );

/// Enumerates the services GUIDs (Globally Unique Identifiers) enabled on a
/// Bluetooth device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothenumerateinstalledservices>.
///
/// {@category bluetoothapis}
@pragma('vm:prefer-inline')
int BluetoothEnumerateInstalledServices(
  HANDLE? hRadio,
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
  Pointer<Uint32> pcServiceInout,
  Pointer<GUID>? pGuidServices,
) => _BluetoothEnumerateInstalledServices(
  hRadio ?? nullptr,
  pbtdi,
  pcServiceInout,
  pGuidServices ?? nullptr,
);

final _BluetoothEnumerateInstalledServices = _bluetoothapis
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Pointer<BLUETOOTH_DEVICE_INFO>,
        Pointer<Uint32>,
        Pointer<GUID>,
      ),
      int Function(
        Pointer,
        Pointer<BLUETOOTH_DEVICE_INFO>,
        Pointer<Uint32>,
        Pointer<GUID>,
      )
    >('BluetoothEnumerateInstalledServices');

/// Closes an enumeration handle associated with a device query.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothfinddeviceclose>.
///
/// {@category bluetoothapis}
Win32Result<bool> BluetoothFindDeviceClose(HBLUETOOTH_DEVICE_FIND hFind) {
  resolveGetLastError();
  final result_ = _BluetoothFindDeviceClose(hFind);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _BluetoothFindDeviceClose = _bluetoothapis
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'BluetoothFindDeviceClose',
    );

/// Begins the enumeration Bluetooth devices.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothfindfirstdevice>.
///
/// {@category bluetoothapis}
Win32Result<HBLUETOOTH_DEVICE_FIND> BluetoothFindFirstDevice(
  Pointer<BLUETOOTH_DEVICE_SEARCH_PARAMS> pbtsp,
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
) {
  resolveGetLastError();
  final result_ = _BluetoothFindFirstDevice(pbtsp, pbtdi);
  return .new(value: .new(result_), error: GetLastError());
}

final _BluetoothFindFirstDevice = _bluetoothapis
    .lookupFunction<
      Pointer Function(
        Pointer<BLUETOOTH_DEVICE_SEARCH_PARAMS>,
        Pointer<BLUETOOTH_DEVICE_INFO>,
      ),
      Pointer Function(
        Pointer<BLUETOOTH_DEVICE_SEARCH_PARAMS>,
        Pointer<BLUETOOTH_DEVICE_INFO>,
      )
    >('BluetoothFindFirstDevice');

/// Begins the enumeration of local Bluetooth radios.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothfindfirstradio>.
///
/// {@category bluetoothapis}
Win32Result<HBLUETOOTH_RADIO_FIND> BluetoothFindFirstRadio(
  Pointer<BLUETOOTH_FIND_RADIO_PARAMS> pbtfrp,
  Pointer<Pointer> phRadio,
) {
  resolveGetLastError();
  final result_ = _BluetoothFindFirstRadio(pbtfrp, phRadio);
  return .new(value: .new(result_), error: GetLastError());
}

final _BluetoothFindFirstRadio = _bluetoothapis
    .lookupFunction<
      Pointer Function(Pointer<BLUETOOTH_FIND_RADIO_PARAMS>, Pointer<Pointer>),
      Pointer Function(Pointer<BLUETOOTH_FIND_RADIO_PARAMS>, Pointer<Pointer>)
    >('BluetoothFindFirstRadio');

/// Finds the next Bluetooth device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothfindnextdevice>.
///
/// {@category bluetoothapis}
Win32Result<bool> BluetoothFindNextDevice(
  HBLUETOOTH_DEVICE_FIND hFind,
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
) {
  resolveGetLastError();
  final result_ = _BluetoothFindNextDevice(hFind, pbtdi);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _BluetoothFindNextDevice = _bluetoothapis
    .lookupFunction<
      Int32 Function(Pointer, Pointer<BLUETOOTH_DEVICE_INFO>),
      int Function(Pointer, Pointer<BLUETOOTH_DEVICE_INFO>)
    >('BluetoothFindNextDevice');

/// Finds the next Bluetooth radio.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothfindnextradio>.
///
/// {@category bluetoothapis}
Win32Result<bool> BluetoothFindNextRadio(
  HBLUETOOTH_RADIO_FIND hFind,
  Pointer<Pointer> phRadio,
) {
  resolveGetLastError();
  final result_ = _BluetoothFindNextRadio(hFind, phRadio);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _BluetoothFindNextRadio = _bluetoothapis
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Pointer>),
      int Function(Pointer, Pointer<Pointer>)
    >('BluetoothFindNextRadio');

/// Closes the enumeration handle associated with finding Bluetooth radios.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothfindradioclose>.
///
/// {@category bluetoothapis}
Win32Result<bool> BluetoothFindRadioClose(HBLUETOOTH_RADIO_FIND hFind) {
  resolveGetLastError();
  final result_ = _BluetoothFindRadioClose(hFind);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _BluetoothFindRadioClose = _bluetoothapis
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'BluetoothFindRadioClose',
    );

/// Specifies the end of reliable write procedures, and the writes should be
/// aborted.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothleapis/nf-bluetoothleapis-bluetoothgattabortreliablewrite>.
///
/// {@category bluetoothapis}
@pragma('vm:prefer-inline')
void BluetoothGATTAbortReliableWrite(
  HANDLE hDevice,
  int reliableWriteContext,
  int flags,
) {
  final hr$ = HRESULT(
    _BluetoothGATTAbortReliableWrite(hDevice, reliableWriteContext, flags),
  );
  if (hr$.isError) throw WindowsException(hr$);
}

final _BluetoothGATTAbortReliableWrite = _bluetoothapis
    .lookupFunction<
      Int32 Function(Pointer, Uint64, Uint32),
      int Function(Pointer, int, int)
    >('BluetoothGATTAbortReliableWrite');

/// Specifies that reliable writes are about to begin.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothleapis/nf-bluetoothleapis-bluetoothgattbeginreliablewrite>.
///
/// {@category bluetoothapis}
@pragma('vm:prefer-inline')
void BluetoothGATTBeginReliableWrite(
  HANDLE hDevice,
  Pointer<Uint64> reliableWriteContext,
  int flags,
) {
  final hr$ = HRESULT(
    _BluetoothGATTBeginReliableWrite(hDevice, reliableWriteContext, flags),
  );
  if (hr$.isError) throw WindowsException(hr$);
}

final _BluetoothGATTBeginReliableWrite = _bluetoothapis
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Uint64>, Uint32),
      int Function(Pointer, Pointer<Uint64>, int)
    >('BluetoothGATTBeginReliableWrite');

/// Specifies the end of reliable writes, and the writes should be committed.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothleapis/nf-bluetoothleapis-bluetoothgattendreliablewrite>.
///
/// {@category bluetoothapis}
@pragma('vm:prefer-inline')
void BluetoothGATTEndReliableWrite(
  HANDLE hDevice,
  int reliableWriteContext,
  int flags,
) {
  final hr$ = HRESULT(
    _BluetoothGATTEndReliableWrite(hDevice, reliableWriteContext, flags),
  );
  if (hr$.isError) throw WindowsException(hr$);
}

final _BluetoothGATTEndReliableWrite = _bluetoothapis
    .lookupFunction<
      Int32 Function(Pointer, Uint64, Uint32),
      int Function(Pointer, int, int)
    >('BluetoothGATTEndReliableWrite');

/// Gets all the characteristics available for the specified service.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothleapis/nf-bluetoothleapis-bluetoothgattgetcharacteristics>.
///
/// {@category bluetoothapis}
@pragma('vm:prefer-inline')
void BluetoothGATTGetCharacteristics(
  HANDLE hDevice,
  Pointer<BTH_LE_GATT_SERVICE>? service,
  int characteristicsBufferCount,
  Pointer<BTH_LE_GATT_CHARACTERISTIC>? characteristicsBuffer,
  Pointer<Uint16> characteristicsBufferActual,
  int flags,
) {
  final hr$ = HRESULT(
    _BluetoothGATTGetCharacteristics(
      hDevice,
      service ?? nullptr,
      characteristicsBufferCount,
      characteristicsBuffer ?? nullptr,
      characteristicsBufferActual,
      flags,
    ),
  );
  if (hr$.isError) throw WindowsException(hr$);
}

final _BluetoothGATTGetCharacteristics = _bluetoothapis
    .lookupFunction<
      Int32 Function(
        Pointer,
        Pointer<BTH_LE_GATT_SERVICE>,
        Uint16,
        Pointer<BTH_LE_GATT_CHARACTERISTIC>,
        Pointer<Uint16>,
        Uint32,
      ),
      int Function(
        Pointer,
        Pointer<BTH_LE_GATT_SERVICE>,
        int,
        Pointer<BTH_LE_GATT_CHARACTERISTIC>,
        Pointer<Uint16>,
        int,
      )
    >('BluetoothGATTGetCharacteristics');

/// Gets the value of the specified characteristic.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothleapis/nf-bluetoothleapis-bluetoothgattgetcharacteristicvalue>.
///
/// {@category bluetoothapis}
@pragma('vm:prefer-inline')
void BluetoothGATTGetCharacteristicValue(
  HANDLE hDevice,
  Pointer<BTH_LE_GATT_CHARACTERISTIC> characteristic,
  int characteristicValueDataSize,
  Pointer<BTH_LE_GATT_CHARACTERISTIC_VALUE>? characteristicValue,
  Pointer<Uint16>? characteristicValueSizeRequired,
  int flags,
) {
  final hr$ = HRESULT(
    _BluetoothGATTGetCharacteristicValue(
      hDevice,
      characteristic,
      characteristicValueDataSize,
      characteristicValue ?? nullptr,
      characteristicValueSizeRequired ?? nullptr,
      flags,
    ),
  );
  if (hr$.isError) throw WindowsException(hr$);
}

final _BluetoothGATTGetCharacteristicValue = _bluetoothapis
    .lookupFunction<
      Int32 Function(
        Pointer,
        Pointer<BTH_LE_GATT_CHARACTERISTIC>,
        Uint32,
        Pointer<BTH_LE_GATT_CHARACTERISTIC_VALUE>,
        Pointer<Uint16>,
        Uint32,
      ),
      int Function(
        Pointer,
        Pointer<BTH_LE_GATT_CHARACTERISTIC>,
        int,
        Pointer<BTH_LE_GATT_CHARACTERISTIC_VALUE>,
        Pointer<Uint16>,
        int,
      )
    >('BluetoothGATTGetCharacteristicValue');

/// Gets all the descriptors available for the specified characteristic.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothleapis/nf-bluetoothleapis-bluetoothgattgetdescriptors>.
///
/// {@category bluetoothapis}
@pragma('vm:prefer-inline')
void BluetoothGATTGetDescriptors(
  HANDLE hDevice,
  Pointer<BTH_LE_GATT_CHARACTERISTIC> characteristic,
  int descriptorsBufferCount,
  Pointer<BTH_LE_GATT_DESCRIPTOR>? descriptorsBuffer,
  Pointer<Uint16> descriptorsBufferActual,
  int flags,
) {
  final hr$ = HRESULT(
    _BluetoothGATTGetDescriptors(
      hDevice,
      characteristic,
      descriptorsBufferCount,
      descriptorsBuffer ?? nullptr,
      descriptorsBufferActual,
      flags,
    ),
  );
  if (hr$.isError) throw WindowsException(hr$);
}

final _BluetoothGATTGetDescriptors = _bluetoothapis
    .lookupFunction<
      Int32 Function(
        Pointer,
        Pointer<BTH_LE_GATT_CHARACTERISTIC>,
        Uint16,
        Pointer<BTH_LE_GATT_DESCRIPTOR>,
        Pointer<Uint16>,
        Uint32,
      ),
      int Function(
        Pointer,
        Pointer<BTH_LE_GATT_CHARACTERISTIC>,
        int,
        Pointer<BTH_LE_GATT_DESCRIPTOR>,
        Pointer<Uint16>,
        int,
      )
    >('BluetoothGATTGetDescriptors');

/// Gets the value of the specified descriptor.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothleapis/nf-bluetoothleapis-bluetoothgattgetdescriptorvalue>.
///
/// {@category bluetoothapis}
@pragma('vm:prefer-inline')
void BluetoothGATTGetDescriptorValue(
  HANDLE hDevice,
  Pointer<BTH_LE_GATT_DESCRIPTOR> descriptor,
  int descriptorValueDataSize,
  Pointer<BTH_LE_GATT_DESCRIPTOR_VALUE>? descriptorValue,
  Pointer<Uint16>? descriptorValueSizeRequired,
  int flags,
) {
  final hr$ = HRESULT(
    _BluetoothGATTGetDescriptorValue(
      hDevice,
      descriptor,
      descriptorValueDataSize,
      descriptorValue ?? nullptr,
      descriptorValueSizeRequired ?? nullptr,
      flags,
    ),
  );
  if (hr$.isError) throw WindowsException(hr$);
}

final _BluetoothGATTGetDescriptorValue = _bluetoothapis
    .lookupFunction<
      Int32 Function(
        Pointer,
        Pointer<BTH_LE_GATT_DESCRIPTOR>,
        Uint32,
        Pointer<BTH_LE_GATT_DESCRIPTOR_VALUE>,
        Pointer<Uint16>,
        Uint32,
      ),
      int Function(
        Pointer,
        Pointer<BTH_LE_GATT_DESCRIPTOR>,
        int,
        Pointer<BTH_LE_GATT_DESCRIPTOR_VALUE>,
        Pointer<Uint16>,
        int,
      )
    >('BluetoothGATTGetDescriptorValue');

/// Gets all the included services available for a given service.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothleapis/nf-bluetoothleapis-bluetoothgattgetincludedservices>.
///
/// {@category bluetoothapis}
@pragma('vm:prefer-inline')
void BluetoothGATTGetIncludedServices(
  HANDLE hDevice,
  Pointer<BTH_LE_GATT_SERVICE>? parentService,
  int includedServicesBufferCount,
  Pointer<BTH_LE_GATT_SERVICE>? includedServicesBuffer,
  Pointer<Uint16> includedServicesBufferActual,
  int flags,
) {
  final hr$ = HRESULT(
    _BluetoothGATTGetIncludedServices(
      hDevice,
      parentService ?? nullptr,
      includedServicesBufferCount,
      includedServicesBuffer ?? nullptr,
      includedServicesBufferActual,
      flags,
    ),
  );
  if (hr$.isError) throw WindowsException(hr$);
}

final _BluetoothGATTGetIncludedServices = _bluetoothapis
    .lookupFunction<
      Int32 Function(
        Pointer,
        Pointer<BTH_LE_GATT_SERVICE>,
        Uint16,
        Pointer<BTH_LE_GATT_SERVICE>,
        Pointer<Uint16>,
        Uint32,
      ),
      int Function(
        Pointer,
        Pointer<BTH_LE_GATT_SERVICE>,
        int,
        Pointer<BTH_LE_GATT_SERVICE>,
        Pointer<Uint16>,
        int,
      )
    >('BluetoothGATTGetIncludedServices');

/// Gets all the primary services available for a server.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothleapis/nf-bluetoothleapis-bluetoothgattgetservices>.
///
/// {@category bluetoothapis}
@pragma('vm:prefer-inline')
void BluetoothGATTGetServices(
  HANDLE hDevice,
  int servicesBufferCount,
  Pointer<BTH_LE_GATT_SERVICE>? servicesBuffer,
  Pointer<Uint16> servicesBufferActual,
  int flags,
) {
  final hr$ = HRESULT(
    _BluetoothGATTGetServices(
      hDevice,
      servicesBufferCount,
      servicesBuffer ?? nullptr,
      servicesBufferActual,
      flags,
    ),
  );
  if (hr$.isError) throw WindowsException(hr$);
}

final _BluetoothGATTGetServices = _bluetoothapis
    .lookupFunction<
      Int32 Function(
        Pointer,
        Uint16,
        Pointer<BTH_LE_GATT_SERVICE>,
        Pointer<Uint16>,
        Uint32,
      ),
      int Function(
        Pointer,
        int,
        Pointer<BTH_LE_GATT_SERVICE>,
        Pointer<Uint16>,
        int,
      )
    >('BluetoothGATTGetServices');

/// Registers a routine to be called back during a characteristic value change
/// event on the given characteristic identified by its characteristic handle.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothleapis/nf-bluetoothleapis-bluetoothgattregisterevent>.
///
/// {@category bluetoothapis}
@pragma('vm:prefer-inline')
void BluetoothGATTRegisterEvent(
  HANDLE hService,
  BTH_LE_GATT_EVENT_TYPE eventType,
  Pointer eventParameterIn,
  Pointer<NativeFunction<PFNBLUETOOTH_GATT_EVENT_CALLBACK>> callback,
  Pointer? callbackContext,
  Pointer<IntPtr> pEventHandle,
  int flags,
) {
  final hr$ = HRESULT(
    _BluetoothGATTRegisterEvent(
      hService,
      eventType,
      eventParameterIn,
      callback,
      callbackContext ?? nullptr,
      pEventHandle,
      flags,
    ),
  );
  if (hr$.isError) throw WindowsException(hr$);
}

final _BluetoothGATTRegisterEvent = _bluetoothapis
    .lookupFunction<
      Int32 Function(
        Pointer,
        Int32,
        Pointer,
        Pointer<NativeFunction<PFNBLUETOOTH_GATT_EVENT_CALLBACK>>,
        Pointer,
        Pointer<IntPtr>,
        Uint32,
      ),
      int Function(
        Pointer,
        int,
        Pointer,
        Pointer<NativeFunction<PFNBLUETOOTH_GATT_EVENT_CALLBACK>>,
        Pointer,
        Pointer<IntPtr>,
        int,
      )
    >('BluetoothGATTRegisterEvent');

/// Writes the specified characteristic value to the Bluetooth device.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothleapis/nf-bluetoothleapis-bluetoothgattsetcharacteristicvalue>.
///
/// {@category bluetoothapis}
@pragma('vm:prefer-inline')
void BluetoothGATTSetCharacteristicValue(
  HANDLE hDevice,
  Pointer<BTH_LE_GATT_CHARACTERISTIC> characteristic,
  Pointer<BTH_LE_GATT_CHARACTERISTIC_VALUE> characteristicValue,
  int? reliableWriteContext,
  int flags,
) {
  final hr$ = HRESULT(
    _BluetoothGATTSetCharacteristicValue(
      hDevice,
      characteristic,
      characteristicValue,
      reliableWriteContext ?? NULL,
      flags,
    ),
  );
  if (hr$.isError) throw WindowsException(hr$);
}

final _BluetoothGATTSetCharacteristicValue = _bluetoothapis
    .lookupFunction<
      Int32 Function(
        Pointer,
        Pointer<BTH_LE_GATT_CHARACTERISTIC>,
        Pointer<BTH_LE_GATT_CHARACTERISTIC_VALUE>,
        Uint64,
        Uint32,
      ),
      int Function(
        Pointer,
        Pointer<BTH_LE_GATT_CHARACTERISTIC>,
        Pointer<BTH_LE_GATT_CHARACTERISTIC_VALUE>,
        int,
        int,
      )
    >('BluetoothGATTSetCharacteristicValue');

/// Writes the specified descriptor value to the Bluetooth device.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothleapis/nf-bluetoothleapis-bluetoothgattsetdescriptorvalue>.
///
/// {@category bluetoothapis}
@pragma('vm:prefer-inline')
void BluetoothGATTSetDescriptorValue(
  HANDLE hDevice,
  Pointer<BTH_LE_GATT_DESCRIPTOR> descriptor,
  Pointer<BTH_LE_GATT_DESCRIPTOR_VALUE> descriptorValue,
  int flags,
) {
  final hr$ = HRESULT(
    _BluetoothGATTSetDescriptorValue(
      hDevice,
      descriptor,
      descriptorValue,
      flags,
    ),
  );
  if (hr$.isError) throw WindowsException(hr$);
}

final _BluetoothGATTSetDescriptorValue = _bluetoothapis
    .lookupFunction<
      Int32 Function(
        Pointer,
        Pointer<BTH_LE_GATT_DESCRIPTOR>,
        Pointer<BTH_LE_GATT_DESCRIPTOR_VALUE>,
        Uint32,
      ),
      int Function(
        Pointer,
        Pointer<BTH_LE_GATT_DESCRIPTOR>,
        Pointer<BTH_LE_GATT_DESCRIPTOR_VALUE>,
        int,
      )
    >('BluetoothGATTSetDescriptorValue');

/// Unregisters the given characteristic value change event.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothleapis/nf-bluetoothleapis-bluetoothgattunregisterevent>.
///
/// {@category bluetoothapis}
@pragma('vm:prefer-inline')
void BluetoothGATTUnregisterEvent(int eventHandle, int flags) {
  final hr$ = HRESULT(_BluetoothGATTUnregisterEvent(eventHandle, flags));
  if (hr$.isError) throw WindowsException(hr$);
}

final _BluetoothGATTUnregisterEvent = _bluetoothapis
    .lookupFunction<Int32 Function(IntPtr, Uint32), int Function(int, int)>(
      'BluetoothGATTUnregisterEvent',
    );

/// Retrieves information about a remote Bluetooth device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothgetdeviceinfo>.
///
/// {@category bluetoothapis}
@pragma('vm:prefer-inline')
int BluetoothGetDeviceInfo(
  HANDLE? hRadio,
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
) => _BluetoothGetDeviceInfo(hRadio ?? nullptr, pbtdi);

final _BluetoothGetDeviceInfo = _bluetoothapis
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<BLUETOOTH_DEVICE_INFO>),
      int Function(Pointer, Pointer<BLUETOOTH_DEVICE_INFO>)
    >('BluetoothGetDeviceInfo');

/// Obtains information about a Bluetooth radio.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothgetradioinfo>.
///
/// {@category bluetoothapis}
Win32Result<int> BluetoothGetRadioInfo(
  HANDLE hRadio,
  Pointer<BLUETOOTH_RADIO_INFO> pRadioInfo,
) {
  resolveGetLastError();
  final result_ = _BluetoothGetRadioInfo(hRadio, pRadioInfo);
  return .new(value: result_, error: GetLastError());
}

final _BluetoothGetRadioInfo = _bluetoothapis
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<BLUETOOTH_RADIO_INFO>),
      int Function(Pointer, Pointer<BLUETOOTH_RADIO_INFO>)
    >('BluetoothGetRadioInfo');

/// Determines whether a Bluetooth radio or radios is connectable.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothisconnectable>.
///
/// {@category bluetoothapis}
@pragma('vm:prefer-inline')
bool BluetoothIsConnectable(HANDLE? hRadio) =>
    _BluetoothIsConnectable(hRadio ?? nullptr) != FALSE;

final _BluetoothIsConnectable = _bluetoothapis
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'BluetoothIsConnectable',
    );

/// Determines whether a Bluetooth radio or radios is discoverable.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothisdiscoverable>.
///
/// {@category bluetoothapis}
@pragma('vm:prefer-inline')
bool BluetoothIsDiscoverable(HANDLE? hRadio) =>
    _BluetoothIsDiscoverable(hRadio ?? nullptr) != FALSE;

final _BluetoothIsDiscoverable = _bluetoothapis
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'BluetoothIsDiscoverable',
    );

/// Indicates if the installed Bluetooth binary set supports the requested
/// version.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothisversionavailable>.
///
/// {@category bluetoothapis}
@pragma('vm:prefer-inline')
bool BluetoothIsVersionAvailable(int majorVersion, int minorVersion) =>
    _BluetoothIsVersionAvailable(majorVersion, minorVersion) != FALSE;

final _BluetoothIsVersionAvailable = _bluetoothapis
    .lookupFunction<Int32 Function(Uint8, Uint8), int Function(int, int)>(
      'BluetoothIsVersionAvailable',
    );

/// Registers an application for a pin request, numeric comparison and callback
/// function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothregisterforauthenticationex>.
///
/// {@category bluetoothapis}
@pragma('vm:prefer-inline')
int BluetoothRegisterForAuthenticationEx(
  Pointer<BLUETOOTH_DEVICE_INFO>? pbtdiIn,
  Pointer<IntPtr> phRegHandleOut,
  Pointer<NativeFunction<PFN_AUTHENTICATION_CALLBACK_EX>>? pfnCallbackIn,
  Pointer? pvParam,
) => _BluetoothRegisterForAuthenticationEx(
  pbtdiIn ?? nullptr,
  phRegHandleOut,
  pfnCallbackIn ?? nullptr,
  pvParam ?? nullptr,
);

final _BluetoothRegisterForAuthenticationEx = _bluetoothapis
    .lookupFunction<
      Uint32 Function(
        Pointer<BLUETOOTH_DEVICE_INFO>,
        Pointer<IntPtr>,
        Pointer<NativeFunction<PFN_AUTHENTICATION_CALLBACK_EX>>,
        Pointer,
      ),
      int Function(
        Pointer<BLUETOOTH_DEVICE_INFO>,
        Pointer<IntPtr>,
        Pointer<NativeFunction<PFN_AUTHENTICATION_CALLBACK_EX>>,
        Pointer,
      )
    >('BluetoothRegisterForAuthenticationEx');

/// Removes authentication between a Bluetooth device and the computer and
/// clears cached service information for the device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothremovedevice>.
///
/// {@category bluetoothapis}
@pragma('vm:prefer-inline')
int BluetoothRemoveDevice(Pointer<BLUETOOTH_ADDRESS> pAddress) =>
    _BluetoothRemoveDevice(pAddress);

final _BluetoothRemoveDevice = _bluetoothapis
    .lookupFunction<
      Uint32 Function(Pointer<BLUETOOTH_ADDRESS>),
      int Function(Pointer<BLUETOOTH_ADDRESS>)
    >('BluetoothRemoveDevice');

/// Enumerates through the SDP record stream, and calls the callback function
/// for each attribute in the record.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothsdpenumattributes>.
///
/// {@category bluetoothapis}
Win32Result<bool> BluetoothSdpEnumAttributes(
  Pointer<Uint8> pSDPStream,
  int cbStreamSize,
  Pointer<NativeFunction<PFN_BLUETOOTH_ENUM_ATTRIBUTES_CALLBACK>> pfnCallback,
  Pointer pvParam,
) {
  resolveGetLastError();
  final result_ = _BluetoothSdpEnumAttributes(
    pSDPStream,
    cbStreamSize,
    pfnCallback,
    pvParam,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _BluetoothSdpEnumAttributes = _bluetoothapis
    .lookupFunction<
      Int32 Function(
        Pointer<Uint8>,
        Uint32,
        Pointer<NativeFunction<PFN_BLUETOOTH_ENUM_ATTRIBUTES_CALLBACK>>,
        Pointer,
      ),
      int Function(
        Pointer<Uint8>,
        int,
        Pointer<NativeFunction<PFN_BLUETOOTH_ENUM_ATTRIBUTES_CALLBACK>>,
        Pointer,
      )
    >('BluetoothSdpEnumAttributes');

/// Retrieves the attribute value for an attribute identifier.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothsdpgetattributevalue>.
///
/// {@category bluetoothapis}
@pragma('vm:prefer-inline')
int BluetoothSdpGetAttributeValue(
  Pointer<Uint8> pRecordStream,
  int cbRecordLength,
  int usAttributeId,
  Pointer<SDP_ELEMENT_DATA> pAttributeData,
) => _BluetoothSdpGetAttributeValue(
  pRecordStream,
  cbRecordLength,
  usAttributeId,
  pAttributeData,
);

final _BluetoothSdpGetAttributeValue = _bluetoothapis
    .lookupFunction<
      Uint32 Function(
        Pointer<Uint8>,
        Uint32,
        Uint16,
        Pointer<SDP_ELEMENT_DATA>,
      ),
      int Function(Pointer<Uint8>, int, int, Pointer<SDP_ELEMENT_DATA>)
    >('BluetoothSdpGetAttributeValue');

/// Iterates a container stream and returns each element contained within the
/// container element.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothsdpgetcontainerelementdata>.
///
/// {@category bluetoothapis}
@pragma('vm:prefer-inline')
int BluetoothSdpGetContainerElementData(
  Pointer<Uint8> pContainerStream,
  int cbContainerLength,
  Pointer<IntPtr> pElement,
  Pointer<SDP_ELEMENT_DATA> pData,
) => _BluetoothSdpGetContainerElementData(
  pContainerStream,
  cbContainerLength,
  pElement,
  pData,
);

final _BluetoothSdpGetContainerElementData = _bluetoothapis
    .lookupFunction<
      Uint32 Function(
        Pointer<Uint8>,
        Uint32,
        Pointer<IntPtr>,
        Pointer<SDP_ELEMENT_DATA>,
      ),
      int Function(
        Pointer<Uint8>,
        int,
        Pointer<IntPtr>,
        Pointer<SDP_ELEMENT_DATA>,
      )
    >('BluetoothSdpGetContainerElementData');

/// Retrieves and parses a single element from an SDP stream.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothsdpgetelementdata>.
///
/// {@category bluetoothapis}
@pragma('vm:prefer-inline')
int BluetoothSdpGetElementData(
  Pointer<Uint8> pSdpStream,
  int cbSdpStreamLength,
  Pointer<SDP_ELEMENT_DATA> pData,
) => _BluetoothSdpGetElementData(pSdpStream, cbSdpStreamLength, pData);

final _BluetoothSdpGetElementData = _bluetoothapis
    .lookupFunction<
      Uint32 Function(Pointer<Uint8>, Uint32, Pointer<SDP_ELEMENT_DATA>),
      int Function(Pointer<Uint8>, int, Pointer<SDP_ELEMENT_DATA>)
    >('BluetoothSdpGetElementData');

/// Converts a raw string embedded in the SDP record into a Unicode string.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothsdpgetstring>.
///
/// {@category bluetoothapis}
@pragma('vm:prefer-inline')
int BluetoothSdpGetString(
  Pointer<Uint8> pRecordStream,
  int cbRecordLength,
  Pointer<SDP_STRING_TYPE_DATA>? pStringData,
  int usStringOffset,
  PWSTR pszString,
  Pointer<Uint32> pcchStringLength,
) => _BluetoothSdpGetString(
  pRecordStream,
  cbRecordLength,
  pStringData ?? nullptr,
  usStringOffset,
  pszString,
  pcchStringLength,
);

final _BluetoothSdpGetString = _bluetoothapis
    .lookupFunction<
      Uint32 Function(
        Pointer<Uint8>,
        Uint32,
        Pointer<SDP_STRING_TYPE_DATA>,
        Uint16,
        Pointer<Utf16>,
        Pointer<Uint32>,
      ),
      int Function(
        Pointer<Uint8>,
        int,
        Pointer<SDP_STRING_TYPE_DATA>,
        int,
        Pointer<Utf16>,
        Pointer<Uint32>,
      )
    >('BluetoothSdpGetString');

/// Called when an authentication request to send the passkey or a Numeric
/// Comparison response is made.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothsendauthenticationresponseex>.
///
/// {@category bluetoothapis}
@pragma('vm:prefer-inline')
int BluetoothSendAuthenticationResponseEx(
  HANDLE? hRadioIn,
  Pointer<BLUETOOTH_AUTHENTICATE_RESPONSE> pauthResponse,
) => _BluetoothSendAuthenticationResponseEx(hRadioIn ?? nullptr, pauthResponse);

final _BluetoothSendAuthenticationResponseEx = _bluetoothapis
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<BLUETOOTH_AUTHENTICATE_RESPONSE>),
      int Function(Pointer, Pointer<BLUETOOTH_AUTHENTICATE_RESPONSE>)
    >('BluetoothSendAuthenticationResponseEx');

/// Enables or disables services for a Bluetooth device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothsetservicestate>.
///
/// {@category bluetoothapis}
@pragma('vm:prefer-inline')
int BluetoothSetServiceState(
  HANDLE? hRadio,
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
  Pointer<GUID> pGuidService,
  int dwServiceFlags,
) => _BluetoothSetServiceState(
  hRadio ?? nullptr,
  pbtdi,
  pGuidService,
  dwServiceFlags,
);

final _BluetoothSetServiceState = _bluetoothapis
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Pointer<BLUETOOTH_DEVICE_INFO>,
        Pointer<GUID>,
        Uint32,
      ),
      int Function(Pointer, Pointer<BLUETOOTH_DEVICE_INFO>, Pointer<GUID>, int)
    >('BluetoothSetServiceState');

/// Removes registration for a callback routine that was previously registered
/// with a call to the BluetoothRegisterForAuthentication function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothunregisterauthentication>.
///
/// {@category bluetoothapis}
Win32Result<bool> BluetoothUnregisterAuthentication(int hRegHandle) {
  resolveGetLastError();
  final result_ = _BluetoothUnregisterAuthentication(hRegHandle);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _BluetoothUnregisterAuthentication = _bluetoothapis
    .lookupFunction<Int32 Function(IntPtr), int Function(int)>(
      'BluetoothUnregisterAuthentication',
    );

/// Updates the local computer cache about a Bluetooth device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothupdatedevicerecord>.
///
/// {@category bluetoothapis}
@pragma('vm:prefer-inline')
int BluetoothUpdateDeviceRecord(Pointer<BLUETOOTH_DEVICE_INFO> pbtdi) =>
    _BluetoothUpdateDeviceRecord(pbtdi);

final _BluetoothUpdateDeviceRecord = _bluetoothapis
    .lookupFunction<
      Uint32 Function(Pointer<BLUETOOTH_DEVICE_INFO>),
      int Function(Pointer<BLUETOOTH_DEVICE_INFO>)
    >('BluetoothUpdateDeviceRecord');
