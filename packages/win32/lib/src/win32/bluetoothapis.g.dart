// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../_internal/bluetoothapis.g.dart';
import '../allocator.dart';
import '../bstr.dart';
import '../callbacks.g.dart';
import '../com/interface.g.dart';
import '../com/iunknown.g.dart';
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
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';

/// Changes the discovery state of a local Bluetooth radio or radios.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothenablediscovery>.
///
/// {@category bluetoothapis}
@pragma('vm:prefer-inline')
bool BluetoothEnableDiscovery(int? hRadio, bool fEnabled) =>
    _BluetoothEnableDiscovery(hRadio ?? NULL, fEnabled ? TRUE : FALSE) != FALSE;

@Native<BOOL Function(HANDLE, BOOL)>(symbol: 'BluetoothEnableDiscovery')
external int _BluetoothEnableDiscovery(int hRadio, int fEnabled);

/// Modifies whether a local Bluetooth radio accepts incoming connections.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothenableincomingconnections>.
///
/// {@category bluetoothapis}
@pragma('vm:prefer-inline')
bool BluetoothEnableIncomingConnections(int? hRadio, bool fEnabled) =>
    _BluetoothEnableIncomingConnections(
      hRadio ?? NULL,
      fEnabled ? TRUE : FALSE,
    ) !=
    FALSE;

@Native<BOOL Function(HANDLE, BOOL)>(
  symbol: 'BluetoothEnableIncomingConnections',
)
external int _BluetoothEnableIncomingConnections(int hRadio, int fEnabled);

/// Enumerates the services GUIDs (Globally Unique Identifiers) enabled on a
/// Bluetooth device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothenumerateinstalledservices>.
///
/// {@category bluetoothapis}
@pragma('vm:prefer-inline')
int BluetoothEnumerateInstalledServices(
  int? hRadio,
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
  Pointer<Uint32> pcServiceInout,
  Pointer<GUID>? pGuidServices,
) => _BluetoothEnumerateInstalledServices(
  hRadio ?? NULL,
  pbtdi,
  pcServiceInout,
  pGuidServices ?? nullptr,
);

@Native<
  Uint32 Function(
    HANDLE,
    Pointer<BLUETOOTH_DEVICE_INFO>,
    Pointer<Uint32>,
    Pointer<GUID>,
  )
>(symbol: 'BluetoothEnumerateInstalledServices')
external int _BluetoothEnumerateInstalledServices(
  int hRadio,
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
  Pointer<Uint32> pcServiceInout,
  Pointer<GUID> pGuidServices,
);

/// Closes an enumeration handle associated with a device query.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothfinddeviceclose>.
///
/// {@category bluetoothapis}
@pragma('vm:prefer-inline')
bool BluetoothFindDeviceClose(int hFind) =>
    BluetoothFindDeviceClose_Wrapper(hFind) != FALSE;

/// Begins the enumeration Bluetooth devices.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothfindfirstdevice>.
///
/// {@category bluetoothapis}
@pragma('vm:prefer-inline')
int BluetoothFindFirstDevice(
  Pointer<BLUETOOTH_DEVICE_SEARCH_PARAMS> pbtsp,
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
) => BluetoothFindFirstDevice_Wrapper(pbtsp, pbtdi);

/// Begins the enumeration of local Bluetooth radios.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothfindfirstradio>.
///
/// {@category bluetoothapis}
@pragma('vm:prefer-inline')
int BluetoothFindFirstRadio(
  Pointer<BLUETOOTH_FIND_RADIO_PARAMS> pbtfrp,
  Pointer<HANDLE> phRadio,
) => BluetoothFindFirstRadio_Wrapper(pbtfrp, phRadio);

/// Finds the next Bluetooth device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothfindnextdevice>.
///
/// {@category bluetoothapis}
@pragma('vm:prefer-inline')
bool BluetoothFindNextDevice(int hFind, Pointer<BLUETOOTH_DEVICE_INFO> pbtdi) =>
    BluetoothFindNextDevice_Wrapper(hFind, pbtdi) != FALSE;

/// Finds the next Bluetooth radio.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothfindnextradio>.
///
/// {@category bluetoothapis}
@pragma('vm:prefer-inline')
bool BluetoothFindNextRadio(int hFind, Pointer<HANDLE> phRadio) =>
    BluetoothFindNextRadio_Wrapper(hFind, phRadio) != FALSE;

/// Closes the enumeration handle associated with finding Bluetooth radios.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothfindradioclose>.
///
/// {@category bluetoothapis}
@pragma('vm:prefer-inline')
bool BluetoothFindRadioClose(int hFind) =>
    BluetoothFindRadioClose_Wrapper(hFind) != FALSE;

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
  int hDevice,
  int reliableWriteContext,
  int flags,
) {
  final hr$ = HRESULT(
    _BluetoothGATTAbortReliableWrite(hDevice, reliableWriteContext, flags),
  );
  if (hr$.isError) throw WindowsException(hr$);
}

@Native<Int32 Function(HANDLE, Uint64, Uint32)>(
  symbol: 'BluetoothGATTAbortReliableWrite',
)
external int _BluetoothGATTAbortReliableWrite(
  int hDevice,
  int reliableWriteContext,
  int flags,
);

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
  int hDevice,
  Pointer<Uint64> reliableWriteContext,
  int flags,
) {
  final hr$ = HRESULT(
    _BluetoothGATTBeginReliableWrite(hDevice, reliableWriteContext, flags),
  );
  if (hr$.isError) throw WindowsException(hr$);
}

@Native<Int32 Function(HANDLE, Pointer<Uint64>, Uint32)>(
  symbol: 'BluetoothGATTBeginReliableWrite',
)
external int _BluetoothGATTBeginReliableWrite(
  int hDevice,
  Pointer<Uint64> reliableWriteContext,
  int flags,
);

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
  int hDevice,
  int reliableWriteContext,
  int flags,
) {
  final hr$ = HRESULT(
    _BluetoothGATTEndReliableWrite(hDevice, reliableWriteContext, flags),
  );
  if (hr$.isError) throw WindowsException(hr$);
}

@Native<Int32 Function(HANDLE, Uint64, Uint32)>(
  symbol: 'BluetoothGATTEndReliableWrite',
)
external int _BluetoothGATTEndReliableWrite(
  int hDevice,
  int reliableWriteContext,
  int flags,
);

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
  int hDevice,
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

@Native<
  Int32 Function(
    HANDLE,
    Pointer<BTH_LE_GATT_SERVICE>,
    Uint16,
    Pointer<BTH_LE_GATT_CHARACTERISTIC>,
    Pointer<Uint16>,
    Uint32,
  )
>(symbol: 'BluetoothGATTGetCharacteristics')
external int _BluetoothGATTGetCharacteristics(
  int hDevice,
  Pointer<BTH_LE_GATT_SERVICE> service,
  int characteristicsBufferCount,
  Pointer<BTH_LE_GATT_CHARACTERISTIC> characteristicsBuffer,
  Pointer<Uint16> characteristicsBufferActual,
  int flags,
);

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
  int hDevice,
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

@Native<
  Int32 Function(
    HANDLE,
    Pointer<BTH_LE_GATT_CHARACTERISTIC>,
    Uint32,
    Pointer<BTH_LE_GATT_CHARACTERISTIC_VALUE>,
    Pointer<Uint16>,
    Uint32,
  )
>(symbol: 'BluetoothGATTGetCharacteristicValue')
external int _BluetoothGATTGetCharacteristicValue(
  int hDevice,
  Pointer<BTH_LE_GATT_CHARACTERISTIC> characteristic,
  int characteristicValueDataSize,
  Pointer<BTH_LE_GATT_CHARACTERISTIC_VALUE> characteristicValue,
  Pointer<Uint16> characteristicValueSizeRequired,
  int flags,
);

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
  int hDevice,
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

@Native<
  Int32 Function(
    HANDLE,
    Pointer<BTH_LE_GATT_CHARACTERISTIC>,
    Uint16,
    Pointer<BTH_LE_GATT_DESCRIPTOR>,
    Pointer<Uint16>,
    Uint32,
  )
>(symbol: 'BluetoothGATTGetDescriptors')
external int _BluetoothGATTGetDescriptors(
  int hDevice,
  Pointer<BTH_LE_GATT_CHARACTERISTIC> characteristic,
  int descriptorsBufferCount,
  Pointer<BTH_LE_GATT_DESCRIPTOR> descriptorsBuffer,
  Pointer<Uint16> descriptorsBufferActual,
  int flags,
);

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
  int hDevice,
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

@Native<
  Int32 Function(
    HANDLE,
    Pointer<BTH_LE_GATT_DESCRIPTOR>,
    Uint32,
    Pointer<BTH_LE_GATT_DESCRIPTOR_VALUE>,
    Pointer<Uint16>,
    Uint32,
  )
>(symbol: 'BluetoothGATTGetDescriptorValue')
external int _BluetoothGATTGetDescriptorValue(
  int hDevice,
  Pointer<BTH_LE_GATT_DESCRIPTOR> descriptor,
  int descriptorValueDataSize,
  Pointer<BTH_LE_GATT_DESCRIPTOR_VALUE> descriptorValue,
  Pointer<Uint16> descriptorValueSizeRequired,
  int flags,
);

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
  int hDevice,
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

@Native<
  Int32 Function(
    HANDLE,
    Pointer<BTH_LE_GATT_SERVICE>,
    Uint16,
    Pointer<BTH_LE_GATT_SERVICE>,
    Pointer<Uint16>,
    Uint32,
  )
>(symbol: 'BluetoothGATTGetIncludedServices')
external int _BluetoothGATTGetIncludedServices(
  int hDevice,
  Pointer<BTH_LE_GATT_SERVICE> parentService,
  int includedServicesBufferCount,
  Pointer<BTH_LE_GATT_SERVICE> includedServicesBuffer,
  Pointer<Uint16> includedServicesBufferActual,
  int flags,
);

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
  int hDevice,
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

@Native<
  Int32 Function(
    HANDLE,
    Uint16,
    Pointer<BTH_LE_GATT_SERVICE>,
    Pointer<Uint16>,
    Uint32,
  )
>(symbol: 'BluetoothGATTGetServices')
external int _BluetoothGATTGetServices(
  int hDevice,
  int servicesBufferCount,
  Pointer<BTH_LE_GATT_SERVICE> servicesBuffer,
  Pointer<Uint16> servicesBufferActual,
  int flags,
);

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
  int hService,
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

@Native<
  Int32 Function(
    HANDLE,
    Int32,
    Pointer,
    Pointer<NativeFunction<PFNBLUETOOTH_GATT_EVENT_CALLBACK>>,
    Pointer,
    Pointer<IntPtr>,
    Uint32,
  )
>(symbol: 'BluetoothGATTRegisterEvent')
external int _BluetoothGATTRegisterEvent(
  int hService,
  int eventType,
  Pointer eventParameterIn,
  Pointer<NativeFunction<PFNBLUETOOTH_GATT_EVENT_CALLBACK>> callback,
  Pointer callbackContext,
  Pointer<IntPtr> pEventHandle,
  int flags,
);

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
  int hDevice,
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

@Native<
  Int32 Function(
    HANDLE,
    Pointer<BTH_LE_GATT_CHARACTERISTIC>,
    Pointer<BTH_LE_GATT_CHARACTERISTIC_VALUE>,
    Uint64,
    Uint32,
  )
>(symbol: 'BluetoothGATTSetCharacteristicValue')
external int _BluetoothGATTSetCharacteristicValue(
  int hDevice,
  Pointer<BTH_LE_GATT_CHARACTERISTIC> characteristic,
  Pointer<BTH_LE_GATT_CHARACTERISTIC_VALUE> characteristicValue,
  int reliableWriteContext,
  int flags,
);

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
  int hDevice,
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

@Native<
  Int32 Function(
    HANDLE,
    Pointer<BTH_LE_GATT_DESCRIPTOR>,
    Pointer<BTH_LE_GATT_DESCRIPTOR_VALUE>,
    Uint32,
  )
>(symbol: 'BluetoothGATTSetDescriptorValue')
external int _BluetoothGATTSetDescriptorValue(
  int hDevice,
  Pointer<BTH_LE_GATT_DESCRIPTOR> descriptor,
  Pointer<BTH_LE_GATT_DESCRIPTOR_VALUE> descriptorValue,
  int flags,
);

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

@Native<Int32 Function(IntPtr, Uint32)>(symbol: 'BluetoothGATTUnregisterEvent')
external int _BluetoothGATTUnregisterEvent(int eventHandle, int flags);

/// Retrieves information about a remote Bluetooth device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothgetdeviceinfo>.
///
/// {@category bluetoothapis}
@pragma('vm:prefer-inline')
int BluetoothGetDeviceInfo(int? hRadio, Pointer<BLUETOOTH_DEVICE_INFO> pbtdi) =>
    _BluetoothGetDeviceInfo(hRadio ?? NULL, pbtdi);

@Native<Uint32 Function(HANDLE, Pointer<BLUETOOTH_DEVICE_INFO>)>(
  symbol: 'BluetoothGetDeviceInfo',
)
external int _BluetoothGetDeviceInfo(
  int hRadio,
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
);

/// Obtains information about a Bluetooth radio.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothgetradioinfo>.
///
/// {@category bluetoothapis}
@pragma('vm:prefer-inline')
int BluetoothGetRadioInfo(
  int hRadio,
  Pointer<BLUETOOTH_RADIO_INFO> pRadioInfo,
) => BluetoothGetRadioInfo_Wrapper(hRadio, pRadioInfo);

/// Determines whether a Bluetooth radio or radios is connectable.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothisconnectable>.
///
/// {@category bluetoothapis}
@pragma('vm:prefer-inline')
bool BluetoothIsConnectable(int? hRadio) =>
    _BluetoothIsConnectable(hRadio ?? NULL) != FALSE;

@Native<BOOL Function(HANDLE)>(symbol: 'BluetoothIsConnectable')
external int _BluetoothIsConnectable(int hRadio);

/// Determines whether a Bluetooth radio or radios is discoverable.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothisdiscoverable>.
///
/// {@category bluetoothapis}
@pragma('vm:prefer-inline')
bool BluetoothIsDiscoverable(int? hRadio) =>
    _BluetoothIsDiscoverable(hRadio ?? NULL) != FALSE;

@Native<BOOL Function(HANDLE)>(symbol: 'BluetoothIsDiscoverable')
external int _BluetoothIsDiscoverable(int hRadio);

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

@Native<BOOL Function(Uint8, Uint8)>(symbol: 'BluetoothIsVersionAvailable')
external int _BluetoothIsVersionAvailable(int majorVersion, int minorVersion);

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

@Native<
  Uint32 Function(
    Pointer<BLUETOOTH_DEVICE_INFO>,
    Pointer<IntPtr>,
    Pointer<NativeFunction<PFN_AUTHENTICATION_CALLBACK_EX>>,
    Pointer,
  )
>(symbol: 'BluetoothRegisterForAuthenticationEx')
external int _BluetoothRegisterForAuthenticationEx(
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdiIn,
  Pointer<IntPtr> phRegHandleOut,
  Pointer<NativeFunction<PFN_AUTHENTICATION_CALLBACK_EX>> pfnCallbackIn,
  Pointer pvParam,
);

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

@Native<Uint32 Function(Pointer<BLUETOOTH_ADDRESS>)>(
  symbol: 'BluetoothRemoveDevice',
)
external int _BluetoothRemoveDevice(Pointer<BLUETOOTH_ADDRESS> pAddress);

/// Enumerates through the SDP record stream, and calls the callback function
/// for each attribute in the record.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothsdpenumattributes>.
///
/// {@category bluetoothapis}
@pragma('vm:prefer-inline')
bool BluetoothSdpEnumAttributes(
  Pointer<Uint8> pSDPStream,
  int cbStreamSize,
  Pointer<NativeFunction<PFN_BLUETOOTH_ENUM_ATTRIBUTES_CALLBACK>> pfnCallback,
  Pointer pvParam,
) =>
    BluetoothSdpEnumAttributes_Wrapper(
      pSDPStream,
      cbStreamSize,
      pfnCallback,
      pvParam,
    ) !=
    FALSE;

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

@Native<
  Uint32 Function(Pointer<Uint8>, Uint32, Uint16, Pointer<SDP_ELEMENT_DATA>)
>(symbol: 'BluetoothSdpGetAttributeValue')
external int _BluetoothSdpGetAttributeValue(
  Pointer<Uint8> pRecordStream,
  int cbRecordLength,
  int usAttributeId,
  Pointer<SDP_ELEMENT_DATA> pAttributeData,
);

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

@Native<
  Uint32 Function(
    Pointer<Uint8>,
    Uint32,
    Pointer<IntPtr>,
    Pointer<SDP_ELEMENT_DATA>,
  )
>(symbol: 'BluetoothSdpGetContainerElementData')
external int _BluetoothSdpGetContainerElementData(
  Pointer<Uint8> pContainerStream,
  int cbContainerLength,
  Pointer<IntPtr> pElement,
  Pointer<SDP_ELEMENT_DATA> pData,
);

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

@Native<Uint32 Function(Pointer<Uint8>, Uint32, Pointer<SDP_ELEMENT_DATA>)>(
  symbol: 'BluetoothSdpGetElementData',
)
external int _BluetoothSdpGetElementData(
  Pointer<Uint8> pSdpStream,
  int cbSdpStreamLength,
  Pointer<SDP_ELEMENT_DATA> pData,
);

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

@Native<
  Uint32 Function(
    Pointer<Uint8>,
    Uint32,
    Pointer<SDP_STRING_TYPE_DATA>,
    Uint16,
    PWSTR,
    Pointer<Uint32>,
  )
>(symbol: 'BluetoothSdpGetString')
external int _BluetoothSdpGetString(
  Pointer<Uint8> pRecordStream,
  int cbRecordLength,
  Pointer<SDP_STRING_TYPE_DATA> pStringData,
  int usStringOffset,
  PWSTR pszString,
  Pointer<Uint32> pcchStringLength,
);

/// Called when an authentication request to send the passkey or a Numeric
/// Comparison response is made.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothsendauthenticationresponseex>.
///
/// {@category bluetoothapis}
@pragma('vm:prefer-inline')
int BluetoothSendAuthenticationResponseEx(
  int? hRadioIn,
  Pointer<BLUETOOTH_AUTHENTICATE_RESPONSE> pauthResponse,
) => _BluetoothSendAuthenticationResponseEx(hRadioIn ?? NULL, pauthResponse);

@Native<Uint32 Function(HANDLE, Pointer<BLUETOOTH_AUTHENTICATE_RESPONSE>)>(
  symbol: 'BluetoothSendAuthenticationResponseEx',
)
external int _BluetoothSendAuthenticationResponseEx(
  int hRadioIn,
  Pointer<BLUETOOTH_AUTHENTICATE_RESPONSE> pauthResponse,
);

/// Enables or disables services for a Bluetooth device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothsetservicestate>.
///
/// {@category bluetoothapis}
@pragma('vm:prefer-inline')
int BluetoothSetServiceState(
  int? hRadio,
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
  Pointer<GUID> pGuidService,
  int dwServiceFlags,
) => _BluetoothSetServiceState(
  hRadio ?? NULL,
  pbtdi,
  pGuidService,
  dwServiceFlags,
);

@Native<
  Uint32 Function(HANDLE, Pointer<BLUETOOTH_DEVICE_INFO>, Pointer<GUID>, Uint32)
>(symbol: 'BluetoothSetServiceState')
external int _BluetoothSetServiceState(
  int hRadio,
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
  Pointer<GUID> pGuidService,
  int dwServiceFlags,
);

/// Removes registration for a callback routine that was previously registered
/// with a call to the BluetoothRegisterForAuthentication function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothunregisterauthentication>.
///
/// {@category bluetoothapis}
@pragma('vm:prefer-inline')
bool BluetoothUnregisterAuthentication(int hRegHandle) =>
    BluetoothUnregisterAuthentication_Wrapper(hRegHandle) != FALSE;

/// Updates the local computer cache about a Bluetooth device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothupdatedevicerecord>.
///
/// {@category bluetoothapis}
@pragma('vm:prefer-inline')
int BluetoothUpdateDeviceRecord(Pointer<BLUETOOTH_DEVICE_INFO> pbtdi) =>
    _BluetoothUpdateDeviceRecord(pbtdi);

@Native<Uint32 Function(Pointer<BLUETOOTH_DEVICE_INFO>)>(
  symbol: 'BluetoothUpdateDeviceRecord',
)
external int _BluetoothUpdateDeviceRecord(Pointer<BLUETOOTH_DEVICE_INFO> pbtdi);
