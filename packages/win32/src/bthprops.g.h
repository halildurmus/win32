// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.

#include "win32.h"
#include <bluetoothapis.h>

MYLIB_EXPORT Win32Result BluetoothDisplayDeviceProperties_Wrapper(HWND hwndParent, BLUETOOTH_DEVICE_INFO* pbtdi);

MYLIB_EXPORT Win32Result BluetoothSelectDevices_Wrapper(BLUETOOTH_SELECT_DEVICE_PARAMS* pbtsdp);
