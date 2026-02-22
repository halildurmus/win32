// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.

#include "win32.h"
#include <bluetoothapis.h>

MYLIB_EXPORT Win32Result BluetoothFindDeviceClose_Wrapper(HBLUETOOTH_DEVICE_FIND hFind);

MYLIB_EXPORT Win32Result BluetoothFindFirstDevice_Wrapper(BLUETOOTH_DEVICE_SEARCH_PARAMS* pbtsp, BLUETOOTH_DEVICE_INFO* pbtdi);

MYLIB_EXPORT Win32Result BluetoothFindFirstRadio_Wrapper(BLUETOOTH_FIND_RADIO_PARAMS* pbtfrp, HANDLE* phRadio);

MYLIB_EXPORT Win32Result BluetoothFindNextDevice_Wrapper(HBLUETOOTH_DEVICE_FIND hFind, BLUETOOTH_DEVICE_INFO* pbtdi);

MYLIB_EXPORT Win32Result BluetoothFindNextRadio_Wrapper(HBLUETOOTH_RADIO_FIND hFind, HANDLE* phRadio);

MYLIB_EXPORT Win32Result BluetoothFindRadioClose_Wrapper(HBLUETOOTH_RADIO_FIND hFind);

MYLIB_EXPORT Win32Result BluetoothGetRadioInfo_Wrapper(HANDLE hRadio, BLUETOOTH_RADIO_INFO* pRadioInfo);

MYLIB_EXPORT Win32Result BluetoothSdpEnumAttributes_Wrapper(unsigned char* pSDPStream, unsigned long cbStreamSize, PFN_BLUETOOTH_ENUM_ATTRIBUTES_CALLBACK pfnCallback, void* pvParam);

MYLIB_EXPORT Win32Result BluetoothUnregisterAuthentication_Wrapper(HANDLE hRegHandle);
