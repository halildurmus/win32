// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.

#include "bthprops.g.h"

Win32Result BluetoothDisplayDeviceProperties_Wrapper(HWND hwndParent, BLUETOOTH_DEVICE_INFO* pbtdi) {
  BOOL value_ = BluetoothDisplayDeviceProperties(hwndParent, pbtdi);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result BluetoothSelectDevices_Wrapper(BLUETOOTH_SELECT_DEVICE_PARAMS* pbtsdp) {
  BOOL value_ = BluetoothSelectDevices(pbtsdp);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}
