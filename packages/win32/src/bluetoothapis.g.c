// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

#include "bluetoothapis.g.h"

BOOL BluetoothFindDeviceClose_Wrapper(HBLUETOOTH_DEVICE_FIND hFind) {
  trace_print("Calling BluetoothFindDeviceClose\n");
  BOOL result_ = BluetoothFindDeviceClose(hFind);
  trace_print("BluetoothFindDeviceClose returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HBLUETOOTH_DEVICE_FIND BluetoothFindFirstDevice_Wrapper(BLUETOOTH_DEVICE_SEARCH_PARAMS* pbtsp, BLUETOOTH_DEVICE_INFO* pbtdi) {
  trace_print("Calling BluetoothFindFirstDevice\n");
  HBLUETOOTH_DEVICE_FIND result_ = BluetoothFindFirstDevice(pbtsp, pbtdi);
  trace_print("BluetoothFindFirstDevice returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HBLUETOOTH_RADIO_FIND BluetoothFindFirstRadio_Wrapper(BLUETOOTH_FIND_RADIO_PARAMS* pbtfrp, HANDLE* phRadio) {
  trace_print("Calling BluetoothFindFirstRadio\n");
  HBLUETOOTH_RADIO_FIND result_ = BluetoothFindFirstRadio(pbtfrp, phRadio);
  trace_print("BluetoothFindFirstRadio returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL BluetoothFindNextDevice_Wrapper(HBLUETOOTH_DEVICE_FIND hFind, BLUETOOTH_DEVICE_INFO* pbtdi) {
  trace_print("Calling BluetoothFindNextDevice\n");
  BOOL result_ = BluetoothFindNextDevice(hFind, pbtdi);
  trace_print("BluetoothFindNextDevice returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL BluetoothFindNextRadio_Wrapper(HBLUETOOTH_RADIO_FIND hFind, HANDLE* phRadio) {
  trace_print("Calling BluetoothFindNextRadio\n");
  BOOL result_ = BluetoothFindNextRadio(hFind, phRadio);
  trace_print("BluetoothFindNextRadio returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL BluetoothFindRadioClose_Wrapper(HBLUETOOTH_RADIO_FIND hFind) {
  trace_print("Calling BluetoothFindRadioClose\n");
  BOOL result_ = BluetoothFindRadioClose(hFind);
  trace_print("BluetoothFindRadioClose returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long BluetoothGetRadioInfo_Wrapper(HANDLE hRadio, BLUETOOTH_RADIO_INFO* pRadioInfo) {
  trace_print("Calling BluetoothGetRadioInfo\n");
  unsigned long result_ = BluetoothGetRadioInfo(hRadio, pRadioInfo);
  trace_print("BluetoothGetRadioInfo returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL BluetoothSdpEnumAttributes_Wrapper(unsigned char* pSDPStream, unsigned long cbStreamSize, PFN_BLUETOOTH_ENUM_ATTRIBUTES_CALLBACK pfnCallback, void* pvParam) {
  trace_print("Calling BluetoothSdpEnumAttributes\n");
  BOOL result_ = BluetoothSdpEnumAttributes(pSDPStream, cbStreamSize, pfnCallback, pvParam);
  trace_print("BluetoothSdpEnumAttributes returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL BluetoothUnregisterAuthentication_Wrapper(HBLUETOOTH_AUTHENTICATION_REGISTRATION hRegHandle) {
  trace_print("Calling BluetoothUnregisterAuthentication\n");
  BOOL result_ = BluetoothUnregisterAuthentication(hRegHandle);
  trace_print("BluetoothUnregisterAuthentication returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}
