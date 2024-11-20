// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

#include "win32.h"
#include <bluetoothapis.h>

MYLIB_EXPORT BOOL BluetoothDisplayDeviceProperties_Wrapper(HWND hwndParent, BLUETOOTH_DEVICE_INFO* pbtdi);

MYLIB_EXPORT BOOL BluetoothSelectDevices_Wrapper(BLUETOOTH_SELECT_DEVICE_PARAMS* pbtsdp);
