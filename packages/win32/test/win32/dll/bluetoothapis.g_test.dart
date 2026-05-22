// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated).
//
// ignore_for_file: non_constant_identifier_names, unnecessary_ignore
// ignore_for_file: specify_nonobvious_property_types, unused_import

@TestOn('windows')
library;

import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:ffi/ffi.dart';
import 'package:test/scaffolding.dart';
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
      check(_BluetoothFindDeviceClose).isA<Function>();
    });
    test('BluetoothFindFirstDevice can be instantiated', () {
      check(_BluetoothFindFirstDevice).isA<Function>();
    });
    test('BluetoothFindFirstRadio can be instantiated', () {
      check(_BluetoothFindFirstRadio).isA<Function>();
    });
    test('BluetoothFindNextDevice can be instantiated', () {
      check(_BluetoothFindNextDevice).isA<Function>();
    });
    test('BluetoothFindNextRadio can be instantiated', () {
      check(_BluetoothFindNextRadio).isA<Function>();
    });
    test('BluetoothFindRadioClose can be instantiated', () {
      check(_BluetoothFindRadioClose).isA<Function>();
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
      check(_BluetoothGetRadioInfo).isA<Function>();
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
      check(_BluetoothSdpEnumAttributes).isA<Function>();
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
      check(_BluetoothUnregisterAuthentication).isA<Function>();
    });
    test('BluetoothUpdateDeviceRecord can be instantiated', () {
      check(_BluetoothUpdateDeviceRecord).isA<Function>();
    });
  });
}

final _bluetoothapis = DynamicLibrary.open('bluetoothapis.dll');

final _BluetoothEnableDiscovery = _bluetoothapis
    .lookupFunction<Int32 Function(Pointer, Int32), int Function(Pointer, int)>(
      'BluetoothEnableDiscovery',
    );

final _BluetoothEnableIncomingConnections = _bluetoothapis
    .lookupFunction<Int32 Function(Pointer, Int32), int Function(Pointer, int)>(
      'BluetoothEnableIncomingConnections',
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

final _BluetoothFindDeviceClose = _bluetoothapis
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'BluetoothFindDeviceClose',
    );

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

final _BluetoothFindFirstRadio = _bluetoothapis
    .lookupFunction<
      Pointer Function(Pointer<BLUETOOTH_FIND_RADIO_PARAMS>, Pointer<Pointer>),
      Pointer Function(Pointer<BLUETOOTH_FIND_RADIO_PARAMS>, Pointer<Pointer>)
    >('BluetoothFindFirstRadio');

final _BluetoothFindNextDevice = _bluetoothapis
    .lookupFunction<
      Int32 Function(Pointer, Pointer<BLUETOOTH_DEVICE_INFO>),
      int Function(Pointer, Pointer<BLUETOOTH_DEVICE_INFO>)
    >('BluetoothFindNextDevice');

final _BluetoothFindNextRadio = _bluetoothapis
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Pointer>),
      int Function(Pointer, Pointer<Pointer>)
    >('BluetoothFindNextRadio');

final _BluetoothFindRadioClose = _bluetoothapis
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'BluetoothFindRadioClose',
    );

final _BluetoothGATTAbortReliableWrite = _bluetoothapis
    .lookupFunction<
      Int32 Function(Pointer, Uint64, Uint32),
      int Function(Pointer, int, int)
    >('BluetoothGATTAbortReliableWrite');

final _BluetoothGATTBeginReliableWrite = _bluetoothapis
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Uint64>, Uint32),
      int Function(Pointer, Pointer<Uint64>, int)
    >('BluetoothGATTBeginReliableWrite');

final _BluetoothGATTEndReliableWrite = _bluetoothapis
    .lookupFunction<
      Int32 Function(Pointer, Uint64, Uint32),
      int Function(Pointer, int, int)
    >('BluetoothGATTEndReliableWrite');

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

final _BluetoothGATTUnregisterEvent = _bluetoothapis
    .lookupFunction<Int32 Function(IntPtr, Uint32), int Function(int, int)>(
      'BluetoothGATTUnregisterEvent',
    );

final _BluetoothGetDeviceInfo = _bluetoothapis
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<BLUETOOTH_DEVICE_INFO>),
      int Function(Pointer, Pointer<BLUETOOTH_DEVICE_INFO>)
    >('BluetoothGetDeviceInfo');

final _BluetoothGetRadioInfo = _bluetoothapis
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<BLUETOOTH_RADIO_INFO>),
      int Function(Pointer, Pointer<BLUETOOTH_RADIO_INFO>)
    >('BluetoothGetRadioInfo');

final _BluetoothIsConnectable = _bluetoothapis
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'BluetoothIsConnectable',
    );

final _BluetoothIsDiscoverable = _bluetoothapis
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'BluetoothIsDiscoverable',
    );

final _BluetoothIsVersionAvailable = _bluetoothapis
    .lookupFunction<Int32 Function(Uint8, Uint8), int Function(int, int)>(
      'BluetoothIsVersionAvailable',
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

final _BluetoothRemoveDevice = _bluetoothapis
    .lookupFunction<
      Uint32 Function(Pointer<BLUETOOTH_ADDRESS>),
      int Function(Pointer<BLUETOOTH_ADDRESS>)
    >('BluetoothRemoveDevice');

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

final _BluetoothSdpGetElementData = _bluetoothapis
    .lookupFunction<
      Uint32 Function(Pointer<Uint8>, Uint32, Pointer<SDP_ELEMENT_DATA>),
      int Function(Pointer<Uint8>, int, Pointer<SDP_ELEMENT_DATA>)
    >('BluetoothSdpGetElementData');

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

final _BluetoothSendAuthenticationResponseEx = _bluetoothapis
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<BLUETOOTH_AUTHENTICATE_RESPONSE>),
      int Function(Pointer, Pointer<BLUETOOTH_AUTHENTICATE_RESPONSE>)
    >('BluetoothSendAuthenticationResponseEx');

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

final _BluetoothUnregisterAuthentication = _bluetoothapis
    .lookupFunction<Int32 Function(IntPtr), int Function(int)>(
      'BluetoothUnregisterAuthentication',
    );

final _BluetoothUpdateDeviceRecord = _bluetoothapis
    .lookupFunction<
      Uint32 Function(Pointer<BLUETOOTH_DEVICE_INFO>),
      int Function(Pointer<BLUETOOTH_DEVICE_INFO>)
    >('BluetoothUpdateDeviceRecord');
