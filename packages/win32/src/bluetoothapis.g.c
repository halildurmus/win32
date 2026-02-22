// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.

#include "bluetoothapis.g.h"

Win32Result BluetoothFindDeviceClose_Wrapper(HBLUETOOTH_DEVICE_FIND hFind) {
  BOOL value_ = BluetoothFindDeviceClose(hFind);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result BluetoothFindFirstDevice_Wrapper(BLUETOOTH_DEVICE_SEARCH_PARAMS* pbtsp, BLUETOOTH_DEVICE_INFO* pbtdi) {
  HBLUETOOTH_DEVICE_FIND value_ = BluetoothFindFirstDevice(pbtsp, pbtdi);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result BluetoothFindFirstRadio_Wrapper(BLUETOOTH_FIND_RADIO_PARAMS* pbtfrp, HANDLE* phRadio) {
  HBLUETOOTH_RADIO_FIND value_ = BluetoothFindFirstRadio(pbtfrp, phRadio);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result BluetoothFindNextDevice_Wrapper(HBLUETOOTH_DEVICE_FIND hFind, BLUETOOTH_DEVICE_INFO* pbtdi) {
  BOOL value_ = BluetoothFindNextDevice(hFind, pbtdi);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result BluetoothFindNextRadio_Wrapper(HBLUETOOTH_RADIO_FIND hFind, HANDLE* phRadio) {
  BOOL value_ = BluetoothFindNextRadio(hFind, phRadio);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result BluetoothFindRadioClose_Wrapper(HBLUETOOTH_RADIO_FIND hFind) {
  BOOL value_ = BluetoothFindRadioClose(hFind);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result BluetoothGetRadioInfo_Wrapper(HANDLE hRadio, BLUETOOTH_RADIO_INFO* pRadioInfo) {
  unsigned long value_ = BluetoothGetRadioInfo(hRadio, pRadioInfo);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}

Win32Result BluetoothSdpEnumAttributes_Wrapper(unsigned char* pSDPStream, unsigned long cbStreamSize, PFN_BLUETOOTH_ENUM_ATTRIBUTES_CALLBACK pfnCallback, void* pvParam) {
  BOOL value_ = BluetoothSdpEnumAttributes(pSDPStream, cbStreamSize, pfnCallback, pvParam);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result BluetoothUnregisterAuthentication_Wrapper(HANDLE hRegHandle) {
  BOOL value_ = BluetoothUnregisterAuthentication(hRegHandle);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}
