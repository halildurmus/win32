// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

#include "bthprops.g.h"

BOOL BluetoothDisplayDeviceProperties_Wrapper(HWND hwndParent, BLUETOOTH_DEVICE_INFO* pbtdi) {
  trace_print("Calling BluetoothDisplayDeviceProperties\n");
  BOOL result_ = BluetoothDisplayDeviceProperties(hwndParent, pbtdi);
  trace_print("BluetoothDisplayDeviceProperties returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL BluetoothSelectDevices_Wrapper(BLUETOOTH_SELECT_DEVICE_PARAMS* pbtsdp) {
  trace_print("Calling BluetoothSelectDevices\n");
  BOOL result_ = BluetoothSelectDevices(pbtsdp);
  trace_print("BluetoothSelectDevices returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}
