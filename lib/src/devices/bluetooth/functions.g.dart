// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../combase.dart';
import '../../guid.dart';
import '../../foundation/structs.g.dart';
import '../../devices/bluetooth/structs.g.dart';
import '../../devices/bluetooth/callbacks.g.dart'; // -----------------------------------------------------------------------

// bluetoothapis.dll
// -----------------------------------------------------------------------
final _bluetoothapis = DynamicLibrary.open('bluetoothapis.dll');

int BluetoothEnableDiscovery(
  int hRadio,
  int fEnabled,
) =>
    _BluetoothEnableDiscovery(
      hRadio,
      fEnabled,
    );

late final _BluetoothEnableDiscovery = _bluetoothapis.lookupFunction<
    Int32 Function(
  IntPtr hRadio,
  Int32 fEnabled,
),
    int Function(
  int hRadio,
  int fEnabled,
)>('BluetoothEnableDiscovery');

int BluetoothEnableIncomingConnections(
  int hRadio,
  int fEnabled,
) =>
    _BluetoothEnableIncomingConnections(
      hRadio,
      fEnabled,
    );

late final _BluetoothEnableIncomingConnections = _bluetoothapis.lookupFunction<
    Int32 Function(
  IntPtr hRadio,
  Int32 fEnabled,
),
    int Function(
  int hRadio,
  int fEnabled,
)>('BluetoothEnableIncomingConnections');

int BluetoothEnumerateInstalledServices(
  int hRadio,
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
  Pointer<Uint32> pcServiceInout,
  Pointer<GUID> pGuidServices,
) =>
    _BluetoothEnumerateInstalledServices(
      hRadio,
      pbtdi,
      pcServiceInout,
      pGuidServices,
    );

late final _BluetoothEnumerateInstalledServices = _bluetoothapis.lookupFunction<
    Uint32 Function(
  IntPtr hRadio,
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
  Pointer<Uint32> pcServiceInout,
  Pointer<GUID> pGuidServices,
),
    int Function(
  int hRadio,
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
  Pointer<Uint32> pcServiceInout,
  Pointer<GUID> pGuidServices,
)>('BluetoothEnumerateInstalledServices');

int BluetoothFindDeviceClose(
  int hFind,
) =>
    _BluetoothFindDeviceClose(
      hFind,
    );

late final _BluetoothFindDeviceClose = _bluetoothapis.lookupFunction<
    Int32 Function(
  IntPtr hFind,
),
    int Function(
  int hFind,
)>('BluetoothFindDeviceClose');

int BluetoothFindFirstDevice(
  Pointer<BLUETOOTH_DEVICE_SEARCH_PARAMS> pbtsp,
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
) =>
    _BluetoothFindFirstDevice(
      pbtsp,
      pbtdi,
    );

late final _BluetoothFindFirstDevice = _bluetoothapis.lookupFunction<
    IntPtr Function(
  Pointer<BLUETOOTH_DEVICE_SEARCH_PARAMS> pbtsp,
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
),
    int Function(
  Pointer<BLUETOOTH_DEVICE_SEARCH_PARAMS> pbtsp,
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
)>('BluetoothFindFirstDevice');

int BluetoothFindFirstRadio(
  Pointer<BLUETOOTH_FIND_RADIO_PARAMS> pbtfrp,
  Pointer<IntPtr> phRadio,
) =>
    _BluetoothFindFirstRadio(
      pbtfrp,
      phRadio,
    );

late final _BluetoothFindFirstRadio = _bluetoothapis.lookupFunction<
    IntPtr Function(
  Pointer<BLUETOOTH_FIND_RADIO_PARAMS> pbtfrp,
  Pointer<IntPtr> phRadio,
),
    int Function(
  Pointer<BLUETOOTH_FIND_RADIO_PARAMS> pbtfrp,
  Pointer<IntPtr> phRadio,
)>('BluetoothFindFirstRadio');

int BluetoothFindNextDevice(
  int hFind,
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
) =>
    _BluetoothFindNextDevice(
      hFind,
      pbtdi,
    );

late final _BluetoothFindNextDevice = _bluetoothapis.lookupFunction<
    Int32 Function(
  IntPtr hFind,
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
),
    int Function(
  int hFind,
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
)>('BluetoothFindNextDevice');

int BluetoothFindNextRadio(
  int hFind,
  Pointer<IntPtr> phRadio,
) =>
    _BluetoothFindNextRadio(
      hFind,
      phRadio,
    );

late final _BluetoothFindNextRadio = _bluetoothapis.lookupFunction<
    Int32 Function(
  IntPtr hFind,
  Pointer<IntPtr> phRadio,
),
    int Function(
  int hFind,
  Pointer<IntPtr> phRadio,
)>('BluetoothFindNextRadio');

int BluetoothFindRadioClose(
  int hFind,
) =>
    _BluetoothFindRadioClose(
      hFind,
    );

late final _BluetoothFindRadioClose = _bluetoothapis.lookupFunction<
    Int32 Function(
  IntPtr hFind,
),
    int Function(
  int hFind,
)>('BluetoothFindRadioClose');

int BluetoothGetDeviceInfo(
  int hRadio,
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
) =>
    _BluetoothGetDeviceInfo(
      hRadio,
      pbtdi,
    );

late final _BluetoothGetDeviceInfo = _bluetoothapis.lookupFunction<
    Uint32 Function(
  IntPtr hRadio,
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
),
    int Function(
  int hRadio,
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
)>('BluetoothGetDeviceInfo');

int BluetoothGetRadioInfo(
  int hRadio,
  Pointer<BLUETOOTH_RADIO_INFO> pRadioInfo,
) =>
    _BluetoothGetRadioInfo(
      hRadio,
      pRadioInfo,
    );

late final _BluetoothGetRadioInfo = _bluetoothapis.lookupFunction<
    Uint32 Function(
  IntPtr hRadio,
  Pointer<BLUETOOTH_RADIO_INFO> pRadioInfo,
),
    int Function(
  int hRadio,
  Pointer<BLUETOOTH_RADIO_INFO> pRadioInfo,
)>('BluetoothGetRadioInfo');

int BluetoothIsConnectable(
  int hRadio,
) =>
    _BluetoothIsConnectable(
      hRadio,
    );

late final _BluetoothIsConnectable = _bluetoothapis.lookupFunction<
    Int32 Function(
  IntPtr hRadio,
),
    int Function(
  int hRadio,
)>('BluetoothIsConnectable');

int BluetoothIsDiscoverable(
  int hRadio,
) =>
    _BluetoothIsDiscoverable(
      hRadio,
    );

late final _BluetoothIsDiscoverable = _bluetoothapis.lookupFunction<
    Int32 Function(
  IntPtr hRadio,
),
    int Function(
  int hRadio,
)>('BluetoothIsDiscoverable');

int BluetoothIsVersionAvailable(
  int MajorVersion,
  int MinorVersion,
) =>
    _BluetoothIsVersionAvailable(
      MajorVersion,
      MinorVersion,
    );

late final _BluetoothIsVersionAvailable = _bluetoothapis.lookupFunction<
    Int32 Function(
  Uint8 MajorVersion,
  Uint8 MinorVersion,
),
    int Function(
  int MajorVersion,
  int MinorVersion,
)>('BluetoothIsVersionAvailable');

int BluetoothRegisterForAuthentication(
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
  Pointer<IntPtr> phRegHandle,
  Pointer<NativeFunction<PFN_AUTHENTICATION_CALLBACK>> pfnCallback,
  Pointer pvParam,
) =>
    _BluetoothRegisterForAuthentication(
      pbtdi,
      phRegHandle,
      pfnCallback,
      pvParam,
    );

late final _BluetoothRegisterForAuthentication = _bluetoothapis.lookupFunction<
    Uint32 Function(
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
  Pointer<IntPtr> phRegHandle,
  Pointer<NativeFunction<PFN_AUTHENTICATION_CALLBACK>> pfnCallback,
  Pointer pvParam,
),
    int Function(
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
  Pointer<IntPtr> phRegHandle,
  Pointer<NativeFunction<PFN_AUTHENTICATION_CALLBACK>> pfnCallback,
  Pointer pvParam,
)>('BluetoothRegisterForAuthentication');

int BluetoothRegisterForAuthenticationEx(
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdiIn,
  Pointer<IntPtr> phRegHandleOut,
  Pointer<NativeFunction<PFN_AUTHENTICATION_CALLBACK_EX>> pfnCallbackIn,
  Pointer pvParam,
) =>
    _BluetoothRegisterForAuthenticationEx(
      pbtdiIn,
      phRegHandleOut,
      pfnCallbackIn,
      pvParam,
    );

late final _BluetoothRegisterForAuthenticationEx =
    _bluetoothapis.lookupFunction<
        Uint32 Function(
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdiIn,
  Pointer<IntPtr> phRegHandleOut,
  Pointer<NativeFunction<PFN_AUTHENTICATION_CALLBACK_EX>> pfnCallbackIn,
  Pointer pvParam,
),
        int Function(
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdiIn,
  Pointer<IntPtr> phRegHandleOut,
  Pointer<NativeFunction<PFN_AUTHENTICATION_CALLBACK_EX>> pfnCallbackIn,
  Pointer pvParam,
)>('BluetoothRegisterForAuthenticationEx');

int BluetoothRemoveDevice(
  Pointer<BLUETOOTH_ADDRESS> pAddress,
) =>
    _BluetoothRemoveDevice(
      pAddress,
    );

late final _BluetoothRemoveDevice = _bluetoothapis.lookupFunction<
    Uint32 Function(
  Pointer<BLUETOOTH_ADDRESS> pAddress,
),
    int Function(
  Pointer<BLUETOOTH_ADDRESS> pAddress,
)>('BluetoothRemoveDevice');

int BluetoothSdpEnumAttributes(
  Pointer<Uint8> pSDPStream,
  int cbStreamSize,
  Pointer<NativeFunction<PFN_BLUETOOTH_ENUM_ATTRIBUTES_CALLBACK>> pfnCallback,
  Pointer pvParam,
) =>
    _BluetoothSdpEnumAttributes(
      pSDPStream,
      cbStreamSize,
      pfnCallback,
      pvParam,
    );

late final _BluetoothSdpEnumAttributes = _bluetoothapis.lookupFunction<
    Int32 Function(
  Pointer<Uint8> pSDPStream,
  Uint32 cbStreamSize,
  Pointer<NativeFunction<PFN_BLUETOOTH_ENUM_ATTRIBUTES_CALLBACK>> pfnCallback,
  Pointer pvParam,
),
    int Function(
  Pointer<Uint8> pSDPStream,
  int cbStreamSize,
  Pointer<NativeFunction<PFN_BLUETOOTH_ENUM_ATTRIBUTES_CALLBACK>> pfnCallback,
  Pointer pvParam,
)>('BluetoothSdpEnumAttributes');

int BluetoothSdpGetAttributeValue(
  Pointer<Uint8> pRecordStream,
  int cbRecordLength,
  int usAttributeId,
  Pointer<SDP_ELEMENT_DATA> pAttributeData,
) =>
    _BluetoothSdpGetAttributeValue(
      pRecordStream,
      cbRecordLength,
      usAttributeId,
      pAttributeData,
    );

late final _BluetoothSdpGetAttributeValue = _bluetoothapis.lookupFunction<
    Uint32 Function(
  Pointer<Uint8> pRecordStream,
  Uint32 cbRecordLength,
  Uint16 usAttributeId,
  Pointer<SDP_ELEMENT_DATA> pAttributeData,
),
    int Function(
  Pointer<Uint8> pRecordStream,
  int cbRecordLength,
  int usAttributeId,
  Pointer<SDP_ELEMENT_DATA> pAttributeData,
)>('BluetoothSdpGetAttributeValue');

int BluetoothSdpGetContainerElementData(
  Pointer<Uint8> pContainerStream,
  int cbContainerLength,
  Pointer<IntPtr> pElement,
  Pointer<SDP_ELEMENT_DATA> pData,
) =>
    _BluetoothSdpGetContainerElementData(
      pContainerStream,
      cbContainerLength,
      pElement,
      pData,
    );

late final _BluetoothSdpGetContainerElementData = _bluetoothapis.lookupFunction<
    Uint32 Function(
  Pointer<Uint8> pContainerStream,
  Uint32 cbContainerLength,
  Pointer<IntPtr> pElement,
  Pointer<SDP_ELEMENT_DATA> pData,
),
    int Function(
  Pointer<Uint8> pContainerStream,
  int cbContainerLength,
  Pointer<IntPtr> pElement,
  Pointer<SDP_ELEMENT_DATA> pData,
)>('BluetoothSdpGetContainerElementData');

int BluetoothSdpGetElementData(
  Pointer<Uint8> pSdpStream,
  int cbSdpStreamLength,
  Pointer<SDP_ELEMENT_DATA> pData,
) =>
    _BluetoothSdpGetElementData(
      pSdpStream,
      cbSdpStreamLength,
      pData,
    );

late final _BluetoothSdpGetElementData = _bluetoothapis.lookupFunction<
    Uint32 Function(
  Pointer<Uint8> pSdpStream,
  Uint32 cbSdpStreamLength,
  Pointer<SDP_ELEMENT_DATA> pData,
),
    int Function(
  Pointer<Uint8> pSdpStream,
  int cbSdpStreamLength,
  Pointer<SDP_ELEMENT_DATA> pData,
)>('BluetoothSdpGetElementData');

int BluetoothSdpGetString(
  Pointer<Uint8> pRecordStream,
  int cbRecordLength,
  Pointer<SDP_STRING_TYPE_DATA> pStringData,
  int usStringOffset,
  Pointer<Utf16> pszString,
  Pointer<Uint32> pcchStringLength,
) =>
    _BluetoothSdpGetString(
      pRecordStream,
      cbRecordLength,
      pStringData,
      usStringOffset,
      pszString,
      pcchStringLength,
    );

late final _BluetoothSdpGetString = _bluetoothapis.lookupFunction<
    Uint32 Function(
  Pointer<Uint8> pRecordStream,
  Uint32 cbRecordLength,
  Pointer<SDP_STRING_TYPE_DATA> pStringData,
  Uint16 usStringOffset,
  Pointer<Utf16> pszString,
  Pointer<Uint32> pcchStringLength,
),
    int Function(
  Pointer<Uint8> pRecordStream,
  int cbRecordLength,
  Pointer<SDP_STRING_TYPE_DATA> pStringData,
  int usStringOffset,
  Pointer<Utf16> pszString,
  Pointer<Uint32> pcchStringLength,
)>('BluetoothSdpGetString');

int BluetoothSendAuthenticationResponse(
  int hRadio,
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
  Pointer<Utf16> pszPasskey,
) =>
    _BluetoothSendAuthenticationResponse(
      hRadio,
      pbtdi,
      pszPasskey,
    );

late final _BluetoothSendAuthenticationResponse = _bluetoothapis.lookupFunction<
    Uint32 Function(
  IntPtr hRadio,
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
  Pointer<Utf16> pszPasskey,
),
    int Function(
  int hRadio,
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
  Pointer<Utf16> pszPasskey,
)>('BluetoothSendAuthenticationResponse');

int BluetoothSendAuthenticationResponseEx(
  int hRadioIn,
  Pointer<BLUETOOTH_AUTHENTICATE_RESPONSE> pauthResponse,
) =>
    _BluetoothSendAuthenticationResponseEx(
      hRadioIn,
      pauthResponse,
    );

late final _BluetoothSendAuthenticationResponseEx =
    _bluetoothapis.lookupFunction<
        Uint32 Function(
  IntPtr hRadioIn,
  Pointer<BLUETOOTH_AUTHENTICATE_RESPONSE> pauthResponse,
),
        int Function(
  int hRadioIn,
  Pointer<BLUETOOTH_AUTHENTICATE_RESPONSE> pauthResponse,
)>('BluetoothSendAuthenticationResponseEx');

int BluetoothSetLocalServiceInfo(
  int hRadioIn,
  Pointer<GUID> pClassGuid,
  int ulInstance,
  Pointer<BLUETOOTH_LOCAL_SERVICE_INFO> pServiceInfoIn,
) =>
    _BluetoothSetLocalServiceInfo(
      hRadioIn,
      pClassGuid,
      ulInstance,
      pServiceInfoIn,
    );

late final _BluetoothSetLocalServiceInfo = _bluetoothapis.lookupFunction<
    Uint32 Function(
  IntPtr hRadioIn,
  Pointer<GUID> pClassGuid,
  Uint32 ulInstance,
  Pointer<BLUETOOTH_LOCAL_SERVICE_INFO> pServiceInfoIn,
),
    int Function(
  int hRadioIn,
  Pointer<GUID> pClassGuid,
  int ulInstance,
  Pointer<BLUETOOTH_LOCAL_SERVICE_INFO> pServiceInfoIn,
)>('BluetoothSetLocalServiceInfo');

int BluetoothSetServiceState(
  int hRadio,
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
  Pointer<GUID> pGuidService,
  int dwServiceFlags,
) =>
    _BluetoothSetServiceState(
      hRadio,
      pbtdi,
      pGuidService,
      dwServiceFlags,
    );

late final _BluetoothSetServiceState = _bluetoothapis.lookupFunction<
    Uint32 Function(
  IntPtr hRadio,
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
  Pointer<GUID> pGuidService,
  Uint32 dwServiceFlags,
),
    int Function(
  int hRadio,
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
  Pointer<GUID> pGuidService,
  int dwServiceFlags,
)>('BluetoothSetServiceState');

int BluetoothUnregisterAuthentication(
  int hRegHandle,
) =>
    _BluetoothUnregisterAuthentication(
      hRegHandle,
    );

late final _BluetoothUnregisterAuthentication = _bluetoothapis.lookupFunction<
    Int32 Function(
  IntPtr hRegHandle,
),
    int Function(
  int hRegHandle,
)>('BluetoothUnregisterAuthentication');

int BluetoothUpdateDeviceRecord(
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
) =>
    _BluetoothUpdateDeviceRecord(
      pbtdi,
    );

late final _BluetoothUpdateDeviceRecord = _bluetoothapis.lookupFunction<
    Uint32 Function(
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
),
    int Function(
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
)>('BluetoothUpdateDeviceRecord');

// -----------------------------------------------------------------------
// bthprops.cpl
// -----------------------------------------------------------------------
final _bthprops = DynamicLibrary.open('bthprops.cpl');

int BluetoothAuthenticateDevice(
  int hwndParent,
  int hRadio,
  Pointer<BLUETOOTH_DEVICE_INFO> pbtbi,
  Pointer<Utf16> pszPasskey,
  int ulPasskeyLength,
) =>
    _BluetoothAuthenticateDevice(
      hwndParent,
      hRadio,
      pbtbi,
      pszPasskey,
      ulPasskeyLength,
    );

late final _BluetoothAuthenticateDevice = _bthprops.lookupFunction<
    Uint32 Function(
  IntPtr hwndParent,
  IntPtr hRadio,
  Pointer<BLUETOOTH_DEVICE_INFO> pbtbi,
  Pointer<Utf16> pszPasskey,
  Uint32 ulPasskeyLength,
),
    int Function(
  int hwndParent,
  int hRadio,
  Pointer<BLUETOOTH_DEVICE_INFO> pbtbi,
  Pointer<Utf16> pszPasskey,
  int ulPasskeyLength,
)>('BluetoothAuthenticateDevice');

int BluetoothAuthenticateDeviceEx(
  int hwndParentIn,
  int hRadioIn,
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdiInout,
  Pointer<BLUETOOTH_OOB_DATA_INFO> pbtOobData,
  int authenticationRequirement,
) =>
    _BluetoothAuthenticateDeviceEx(
      hwndParentIn,
      hRadioIn,
      pbtdiInout,
      pbtOobData,
      authenticationRequirement,
    );

late final _BluetoothAuthenticateDeviceEx = _bthprops.lookupFunction<
    Uint32 Function(
  IntPtr hwndParentIn,
  IntPtr hRadioIn,
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdiInout,
  Pointer<BLUETOOTH_OOB_DATA_INFO> pbtOobData,
  Int32 authenticationRequirement,
),
    int Function(
  int hwndParentIn,
  int hRadioIn,
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdiInout,
  Pointer<BLUETOOTH_OOB_DATA_INFO> pbtOobData,
  int authenticationRequirement,
)>('BluetoothAuthenticateDeviceEx');

int BluetoothAuthenticateMultipleDevices(
  int hwndParent,
  int hRadio,
  int cDevices,
  Pointer<BLUETOOTH_DEVICE_INFO> rgbtdi,
) =>
    _BluetoothAuthenticateMultipleDevices(
      hwndParent,
      hRadio,
      cDevices,
      rgbtdi,
    );

late final _BluetoothAuthenticateMultipleDevices = _bthprops.lookupFunction<
    Uint32 Function(
  IntPtr hwndParent,
  IntPtr hRadio,
  Uint32 cDevices,
  Pointer<BLUETOOTH_DEVICE_INFO> rgbtdi,
),
    int Function(
  int hwndParent,
  int hRadio,
  int cDevices,
  Pointer<BLUETOOTH_DEVICE_INFO> rgbtdi,
)>('BluetoothAuthenticateMultipleDevices');

int BluetoothDisplayDeviceProperties(
  int hwndParent,
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
) =>
    _BluetoothDisplayDeviceProperties(
      hwndParent,
      pbtdi,
    );

late final _BluetoothDisplayDeviceProperties = _bthprops.lookupFunction<
    Int32 Function(
  IntPtr hwndParent,
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
),
    int Function(
  int hwndParent,
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
)>('BluetoothDisplayDeviceProperties');

int BluetoothSelectDevices(
  Pointer<BLUETOOTH_SELECT_DEVICE_PARAMS> pbtsdp,
) =>
    _BluetoothSelectDevices(
      pbtsdp,
    );

late final _BluetoothSelectDevices = _bthprops.lookupFunction<
    Int32 Function(
  Pointer<BLUETOOTH_SELECT_DEVICE_PARAMS> pbtsdp,
),
    int Function(
  Pointer<BLUETOOTH_SELECT_DEVICE_PARAMS> pbtsdp,
)>('BluetoothSelectDevices');

int BluetoothSelectDevicesFree(
  Pointer<BLUETOOTH_SELECT_DEVICE_PARAMS> pbtsdp,
) =>
    _BluetoothSelectDevicesFree(
      pbtsdp,
    );

late final _BluetoothSelectDevicesFree = _bthprops.lookupFunction<
    Int32 Function(
  Pointer<BLUETOOTH_SELECT_DEVICE_PARAMS> pbtsdp,
),
    int Function(
  Pointer<BLUETOOTH_SELECT_DEVICE_PARAMS> pbtsdp,
)>('BluetoothSelectDevicesFree');
