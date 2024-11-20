// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated).
//
// ignore_for_file: non_constant_identifier_names, unnecessary_ignore
// ignore_for_file: unused_import

@TestOn('windows')
library;

import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:ffi/ffi.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/src/_internal/bluetoothapis.g.dart';
import 'package:win32/win32.dart';

import '../../helpers.dart';

void main() {
  group('bluetoothapis.dll', () {
    test('BluetoothEnableDiscovery can be instantiated', () {
      check(_BluetoothEnableDiscovery).isA<Function>();
    });
    test('BluetoothEnableIncomingConnections can be instantiated', () {
      check(_BluetoothEnableIncomingConnections).isA<Function>();
    });
    test('BluetoothEnumerateInstalledServices can be instantiated', () {
      check(_BluetoothEnumerateInstalledServices).isA<Function>();
    });
    test('BluetoothFindDeviceClose can be instantiated', () {
      check(BluetoothFindDeviceClose_Wrapper).isA<Function>();
    });
    test('BluetoothFindFirstDevice can be instantiated', () {
      check(BluetoothFindFirstDevice_Wrapper).isA<Function>();
    });
    test('BluetoothFindFirstRadio can be instantiated', () {
      check(BluetoothFindFirstRadio_Wrapper).isA<Function>();
    });
    test('BluetoothFindNextDevice can be instantiated', () {
      check(BluetoothFindNextDevice_Wrapper).isA<Function>();
    });
    test('BluetoothFindNextRadio can be instantiated', () {
      check(BluetoothFindNextRadio_Wrapper).isA<Function>();
    });
    test('BluetoothFindRadioClose can be instantiated', () {
      check(BluetoothFindRadioClose_Wrapper).isA<Function>();
    });
    test('BluetoothGATTAbortReliableWrite can be instantiated', () {
      check(_BluetoothGATTAbortReliableWrite).isA<Function>();
    });
    test('BluetoothGATTBeginReliableWrite can be instantiated', () {
      check(_BluetoothGATTBeginReliableWrite).isA<Function>();
    });
    test('BluetoothGATTEndReliableWrite can be instantiated', () {
      check(_BluetoothGATTEndReliableWrite).isA<Function>();
    });
    test('BluetoothGATTGetCharacteristics can be instantiated', () {
      check(_BluetoothGATTGetCharacteristics).isA<Function>();
    });
    test('BluetoothGATTGetCharacteristicValue can be instantiated', () {
      check(_BluetoothGATTGetCharacteristicValue).isA<Function>();
    });
    test('BluetoothGATTGetDescriptors can be instantiated', () {
      check(_BluetoothGATTGetDescriptors).isA<Function>();
    });
    test('BluetoothGATTGetDescriptorValue can be instantiated', () {
      check(_BluetoothGATTGetDescriptorValue).isA<Function>();
    });
    test('BluetoothGATTGetIncludedServices can be instantiated', () {
      check(_BluetoothGATTGetIncludedServices).isA<Function>();
    });
    test('BluetoothGATTGetServices can be instantiated', () {
      check(_BluetoothGATTGetServices).isA<Function>();
    });
    test('BluetoothGATTRegisterEvent can be instantiated', () {
      check(_BluetoothGATTRegisterEvent).isA<Function>();
    });
    test('BluetoothGATTSetCharacteristicValue can be instantiated', () {
      check(_BluetoothGATTSetCharacteristicValue).isA<Function>();
    });
    test('BluetoothGATTSetDescriptorValue can be instantiated', () {
      check(_BluetoothGATTSetDescriptorValue).isA<Function>();
    });
    test('BluetoothGATTUnregisterEvent can be instantiated', () {
      check(_BluetoothGATTUnregisterEvent).isA<Function>();
    });
    test('BluetoothGetDeviceInfo can be instantiated', () {
      check(_BluetoothGetDeviceInfo).isA<Function>();
    });
    test('BluetoothGetRadioInfo can be instantiated', () {
      check(BluetoothGetRadioInfo_Wrapper).isA<Function>();
    });
    test('BluetoothIsConnectable can be instantiated', () {
      check(_BluetoothIsConnectable).isA<Function>();
    });
    test('BluetoothIsDiscoverable can be instantiated', () {
      check(_BluetoothIsDiscoverable).isA<Function>();
    });
    test('BluetoothIsVersionAvailable can be instantiated', () {
      check(_BluetoothIsVersionAvailable).isA<Function>();
    });
    test('BluetoothRegisterForAuthenticationEx can be instantiated', () {
      check(_BluetoothRegisterForAuthenticationEx).isA<Function>();
    });
    test('BluetoothRemoveDevice can be instantiated', () {
      check(_BluetoothRemoveDevice).isA<Function>();
    });
    test('BluetoothSdpEnumAttributes can be instantiated', () {
      check(BluetoothSdpEnumAttributes_Wrapper).isA<Function>();
    });
    test('BluetoothSdpGetAttributeValue can be instantiated', () {
      check(_BluetoothSdpGetAttributeValue).isA<Function>();
    });
    test('BluetoothSdpGetContainerElementData can be instantiated', () {
      check(_BluetoothSdpGetContainerElementData).isA<Function>();
    });
    test('BluetoothSdpGetElementData can be instantiated', () {
      check(_BluetoothSdpGetElementData).isA<Function>();
    });
    test('BluetoothSdpGetString can be instantiated', () {
      check(_BluetoothSdpGetString).isA<Function>();
    });
    test('BluetoothSendAuthenticationResponseEx can be instantiated', () {
      check(_BluetoothSendAuthenticationResponseEx).isA<Function>();
    });
    test('BluetoothSetServiceState can be instantiated', () {
      check(_BluetoothSetServiceState).isA<Function>();
    });
    test('BluetoothUnregisterAuthentication can be instantiated', () {
      check(BluetoothUnregisterAuthentication_Wrapper).isA<Function>();
    });
    test('BluetoothUpdateDeviceRecord can be instantiated', () {
      check(_BluetoothUpdateDeviceRecord).isA<Function>();
    });
  });
}

@Native<Int32 Function(Pointer, Int32)>(symbol: 'BluetoothEnableDiscovery')
external int _BluetoothEnableDiscovery(Pointer hRadio, int fEnabled);

@Native<Int32 Function(Pointer, Int32)>(
  symbol: 'BluetoothEnableIncomingConnections',
)
external int _BluetoothEnableIncomingConnections(Pointer hRadio, int fEnabled);

@Native<
  Uint32 Function(
    Pointer,
    Pointer<BLUETOOTH_DEVICE_INFO>,
    Pointer<Uint32>,
    Pointer<GUID>,
  )
>(symbol: 'BluetoothEnumerateInstalledServices')
external int _BluetoothEnumerateInstalledServices(
  Pointer hRadio,
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
  Pointer<Uint32> pcServiceInout,
  Pointer<GUID> pGuidServices,
);

@Native<Int32 Function(Pointer, Uint64, Uint32)>(
  symbol: 'BluetoothGATTAbortReliableWrite',
)
external int _BluetoothGATTAbortReliableWrite(
  Pointer hDevice,
  int reliableWriteContext,
  int flags,
);

@Native<Int32 Function(Pointer, Pointer<Uint64>, Uint32)>(
  symbol: 'BluetoothGATTBeginReliableWrite',
)
external int _BluetoothGATTBeginReliableWrite(
  Pointer hDevice,
  Pointer<Uint64> reliableWriteContext,
  int flags,
);

@Native<Int32 Function(Pointer, Uint64, Uint32)>(
  symbol: 'BluetoothGATTEndReliableWrite',
)
external int _BluetoothGATTEndReliableWrite(
  Pointer hDevice,
  int reliableWriteContext,
  int flags,
);

@Native<
  Int32 Function(
    Pointer,
    Pointer<BTH_LE_GATT_SERVICE>,
    Uint16,
    Pointer<BTH_LE_GATT_CHARACTERISTIC>,
    Pointer<Uint16>,
    Uint32,
  )
>(symbol: 'BluetoothGATTGetCharacteristics')
external int _BluetoothGATTGetCharacteristics(
  Pointer hDevice,
  Pointer<BTH_LE_GATT_SERVICE> service,
  int characteristicsBufferCount,
  Pointer<BTH_LE_GATT_CHARACTERISTIC> characteristicsBuffer,
  Pointer<Uint16> characteristicsBufferActual,
  int flags,
);

@Native<
  Int32 Function(
    Pointer,
    Pointer<BTH_LE_GATT_CHARACTERISTIC>,
    Uint32,
    Pointer<BTH_LE_GATT_CHARACTERISTIC_VALUE>,
    Pointer<Uint16>,
    Uint32,
  )
>(symbol: 'BluetoothGATTGetCharacteristicValue')
external int _BluetoothGATTGetCharacteristicValue(
  Pointer hDevice,
  Pointer<BTH_LE_GATT_CHARACTERISTIC> characteristic,
  int characteristicValueDataSize,
  Pointer<BTH_LE_GATT_CHARACTERISTIC_VALUE> characteristicValue,
  Pointer<Uint16> characteristicValueSizeRequired,
  int flags,
);

@Native<
  Int32 Function(
    Pointer,
    Pointer<BTH_LE_GATT_CHARACTERISTIC>,
    Uint16,
    Pointer<BTH_LE_GATT_DESCRIPTOR>,
    Pointer<Uint16>,
    Uint32,
  )
>(symbol: 'BluetoothGATTGetDescriptors')
external int _BluetoothGATTGetDescriptors(
  Pointer hDevice,
  Pointer<BTH_LE_GATT_CHARACTERISTIC> characteristic,
  int descriptorsBufferCount,
  Pointer<BTH_LE_GATT_DESCRIPTOR> descriptorsBuffer,
  Pointer<Uint16> descriptorsBufferActual,
  int flags,
);

@Native<
  Int32 Function(
    Pointer,
    Pointer<BTH_LE_GATT_DESCRIPTOR>,
    Uint32,
    Pointer<BTH_LE_GATT_DESCRIPTOR_VALUE>,
    Pointer<Uint16>,
    Uint32,
  )
>(symbol: 'BluetoothGATTGetDescriptorValue')
external int _BluetoothGATTGetDescriptorValue(
  Pointer hDevice,
  Pointer<BTH_LE_GATT_DESCRIPTOR> descriptor,
  int descriptorValueDataSize,
  Pointer<BTH_LE_GATT_DESCRIPTOR_VALUE> descriptorValue,
  Pointer<Uint16> descriptorValueSizeRequired,
  int flags,
);

@Native<
  Int32 Function(
    Pointer,
    Pointer<BTH_LE_GATT_SERVICE>,
    Uint16,
    Pointer<BTH_LE_GATT_SERVICE>,
    Pointer<Uint16>,
    Uint32,
  )
>(symbol: 'BluetoothGATTGetIncludedServices')
external int _BluetoothGATTGetIncludedServices(
  Pointer hDevice,
  Pointer<BTH_LE_GATT_SERVICE> parentService,
  int includedServicesBufferCount,
  Pointer<BTH_LE_GATT_SERVICE> includedServicesBuffer,
  Pointer<Uint16> includedServicesBufferActual,
  int flags,
);

@Native<
  Int32 Function(
    Pointer,
    Uint16,
    Pointer<BTH_LE_GATT_SERVICE>,
    Pointer<Uint16>,
    Uint32,
  )
>(symbol: 'BluetoothGATTGetServices')
external int _BluetoothGATTGetServices(
  Pointer hDevice,
  int servicesBufferCount,
  Pointer<BTH_LE_GATT_SERVICE> servicesBuffer,
  Pointer<Uint16> servicesBufferActual,
  int flags,
);

@Native<
  Int32 Function(
    Pointer,
    Int32,
    Pointer,
    Pointer<NativeFunction<PFNBLUETOOTH_GATT_EVENT_CALLBACK>>,
    Pointer,
    Pointer<IntPtr>,
    Uint32,
  )
>(symbol: 'BluetoothGATTRegisterEvent')
external int _BluetoothGATTRegisterEvent(
  Pointer hService,
  int eventType,
  Pointer eventParameterIn,
  Pointer<NativeFunction<PFNBLUETOOTH_GATT_EVENT_CALLBACK>> callback,
  Pointer callbackContext,
  Pointer<IntPtr> pEventHandle,
  int flags,
);

@Native<
  Int32 Function(
    Pointer,
    Pointer<BTH_LE_GATT_CHARACTERISTIC>,
    Pointer<BTH_LE_GATT_CHARACTERISTIC_VALUE>,
    Uint64,
    Uint32,
  )
>(symbol: 'BluetoothGATTSetCharacteristicValue')
external int _BluetoothGATTSetCharacteristicValue(
  Pointer hDevice,
  Pointer<BTH_LE_GATT_CHARACTERISTIC> characteristic,
  Pointer<BTH_LE_GATT_CHARACTERISTIC_VALUE> characteristicValue,
  int reliableWriteContext,
  int flags,
);

@Native<
  Int32 Function(
    Pointer,
    Pointer<BTH_LE_GATT_DESCRIPTOR>,
    Pointer<BTH_LE_GATT_DESCRIPTOR_VALUE>,
    Uint32,
  )
>(symbol: 'BluetoothGATTSetDescriptorValue')
external int _BluetoothGATTSetDescriptorValue(
  Pointer hDevice,
  Pointer<BTH_LE_GATT_DESCRIPTOR> descriptor,
  Pointer<BTH_LE_GATT_DESCRIPTOR_VALUE> descriptorValue,
  int flags,
);

@Native<Int32 Function(IntPtr, Uint32)>(symbol: 'BluetoothGATTUnregisterEvent')
external int _BluetoothGATTUnregisterEvent(int eventHandle, int flags);

@Native<Uint32 Function(Pointer, Pointer<BLUETOOTH_DEVICE_INFO>)>(
  symbol: 'BluetoothGetDeviceInfo',
)
external int _BluetoothGetDeviceInfo(
  Pointer hRadio,
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
);

@Native<Int32 Function(Pointer)>(symbol: 'BluetoothIsConnectable')
external int _BluetoothIsConnectable(Pointer hRadio);

@Native<Int32 Function(Pointer)>(symbol: 'BluetoothIsDiscoverable')
external int _BluetoothIsDiscoverable(Pointer hRadio);

@Native<Int32 Function(Uint8, Uint8)>(symbol: 'BluetoothIsVersionAvailable')
external int _BluetoothIsVersionAvailable(int majorVersion, int minorVersion);

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

@Native<Uint32 Function(Pointer<BLUETOOTH_ADDRESS>)>(
  symbol: 'BluetoothRemoveDevice',
)
external int _BluetoothRemoveDevice(Pointer<BLUETOOTH_ADDRESS> pAddress);

@Native<
  Uint32 Function(Pointer<Uint8>, Uint32, Uint16, Pointer<SDP_ELEMENT_DATA>)
>(symbol: 'BluetoothSdpGetAttributeValue')
external int _BluetoothSdpGetAttributeValue(
  Pointer<Uint8> pRecordStream,
  int cbRecordLength,
  int usAttributeId,
  Pointer<SDP_ELEMENT_DATA> pAttributeData,
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

@Native<Uint32 Function(Pointer<Uint8>, Uint32, Pointer<SDP_ELEMENT_DATA>)>(
  symbol: 'BluetoothSdpGetElementData',
)
external int _BluetoothSdpGetElementData(
  Pointer<Uint8> pSdpStream,
  int cbSdpStreamLength,
  Pointer<SDP_ELEMENT_DATA> pData,
);

@Native<
  Uint32 Function(
    Pointer<Uint8>,
    Uint32,
    Pointer<SDP_STRING_TYPE_DATA>,
    Uint16,
    Pointer<Utf16>,
    Pointer<Uint32>,
  )
>(symbol: 'BluetoothSdpGetString')
external int _BluetoothSdpGetString(
  Pointer<Uint8> pRecordStream,
  int cbRecordLength,
  Pointer<SDP_STRING_TYPE_DATA> pStringData,
  int usStringOffset,
  Pointer<Utf16> pszString,
  Pointer<Uint32> pcchStringLength,
);

@Native<Uint32 Function(Pointer, Pointer<BLUETOOTH_AUTHENTICATE_RESPONSE>)>(
  symbol: 'BluetoothSendAuthenticationResponseEx',
)
external int _BluetoothSendAuthenticationResponseEx(
  Pointer hRadioIn,
  Pointer<BLUETOOTH_AUTHENTICATE_RESPONSE> pauthResponse,
);

@Native<
  Uint32 Function(
    Pointer,
    Pointer<BLUETOOTH_DEVICE_INFO>,
    Pointer<GUID>,
    Uint32,
  )
>(symbol: 'BluetoothSetServiceState')
external int _BluetoothSetServiceState(
  Pointer hRadio,
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
  Pointer<GUID> pGuidService,
  int dwServiceFlags,
);

@Native<Uint32 Function(Pointer<BLUETOOTH_DEVICE_INFO>)>(
  symbol: 'BluetoothUpdateDeviceRecord',
)
external int _BluetoothUpdateDeviceRecord(Pointer<BLUETOOTH_DEVICE_INFO> pbtdi);
