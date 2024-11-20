// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

#include "win32.h"
#include <bluetoothapis.h>

MYLIB_EXPORT BOOL BluetoothFindDeviceClose_Wrapper(HBLUETOOTH_DEVICE_FIND hFind);

MYLIB_EXPORT HBLUETOOTH_DEVICE_FIND BluetoothFindFirstDevice_Wrapper(BLUETOOTH_DEVICE_SEARCH_PARAMS* pbtsp, BLUETOOTH_DEVICE_INFO* pbtdi);

MYLIB_EXPORT HBLUETOOTH_RADIO_FIND BluetoothFindFirstRadio_Wrapper(BLUETOOTH_FIND_RADIO_PARAMS* pbtfrp, HANDLE* phRadio);

MYLIB_EXPORT BOOL BluetoothFindNextDevice_Wrapper(HBLUETOOTH_DEVICE_FIND hFind, BLUETOOTH_DEVICE_INFO* pbtdi);

MYLIB_EXPORT BOOL BluetoothFindNextRadio_Wrapper(HBLUETOOTH_RADIO_FIND hFind, HANDLE* phRadio);

MYLIB_EXPORT BOOL BluetoothFindRadioClose_Wrapper(HBLUETOOTH_RADIO_FIND hFind);

MYLIB_EXPORT unsigned long BluetoothGetRadioInfo_Wrapper(HANDLE hRadio, BLUETOOTH_RADIO_INFO* pRadioInfo);

MYLIB_EXPORT BOOL BluetoothSdpEnumAttributes_Wrapper(unsigned char* pSDPStream, unsigned long cbStreamSize, PFN_BLUETOOTH_ENUM_ATTRIBUTES_CALLBACK pfnCallback, void* pvParam);

MYLIB_EXPORT BOOL BluetoothUnregisterAuthentication_Wrapper(HBLUETOOTH_AUTHENTICATION_REGISTRATION hRegHandle);
