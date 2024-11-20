// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.

#include "setupapi.g.h"

Win32Result SetupDiDestroyDeviceInfoList_Wrapper(HDEVINFO deviceInfoSet) {
  BOOL value_ = SetupDiDestroyDeviceInfoList(deviceInfoSet);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetupDiEnumDeviceInfo_Wrapper(HDEVINFO deviceInfoSet, unsigned long memberIndex, SP_DEVINFO_DATA* deviceInfoData) {
  BOOL value_ = SetupDiEnumDeviceInfo(deviceInfoSet, memberIndex, deviceInfoData);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetupDiEnumDeviceInterfaces_Wrapper(HDEVINFO deviceInfoSet, SP_DEVINFO_DATA* deviceInfoData, GUID* interfaceClassGuid, unsigned long memberIndex, SP_DEVICE_INTERFACE_DATA* deviceInterfaceData) {
  BOOL value_ = SetupDiEnumDeviceInterfaces(deviceInfoSet, deviceInfoData, interfaceClassGuid, memberIndex, deviceInterfaceData);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetupDiGetClassDevsW_Wrapper(GUID* classGuid, PCWSTR enumerator, HWND hwndParent, DWORD flags) {
  HDEVINFO value_ = SetupDiGetClassDevsW(classGuid, enumerator, hwndParent, flags);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i64 = value_}};
}

Win32Result SetupDiGetDeviceInstanceIdW_Wrapper(HDEVINFO deviceInfoSet, SP_DEVINFO_DATA* deviceInfoData, PWSTR deviceInstanceId, unsigned long deviceInstanceIdSize, unsigned long* requiredSize) {
  BOOL value_ = SetupDiGetDeviceInstanceIdW(deviceInfoSet, deviceInfoData, deviceInstanceId, deviceInstanceIdSize, requiredSize);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetupDiGetDeviceInterfaceDetailW_Wrapper(HDEVINFO deviceInfoSet, SP_DEVICE_INTERFACE_DATA* deviceInterfaceData, SP_DEVICE_INTERFACE_DETAIL_DATA_W* deviceInterfaceDetailData, unsigned long deviceInterfaceDetailDataSize, unsigned long* requiredSize, SP_DEVINFO_DATA* deviceInfoData) {
  BOOL value_ = SetupDiGetDeviceInterfaceDetailW(deviceInfoSet, deviceInterfaceData, deviceInterfaceDetailData, deviceInterfaceDetailDataSize, requiredSize, deviceInfoData);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetupDiGetDeviceRegistryPropertyW_Wrapper(HDEVINFO deviceInfoSet, SP_DEVINFO_DATA* deviceInfoData, DWORD property, unsigned long* propertyRegDataType, unsigned char* propertyBuffer, unsigned long propertyBufferSize, unsigned long* requiredSize) {
  BOOL value_ = SetupDiGetDeviceRegistryPropertyW(deviceInfoSet, deviceInfoData, property, propertyRegDataType, propertyBuffer, propertyBufferSize, requiredSize);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetupDiOpenDevRegKey_Wrapper(HDEVINFO deviceInfoSet, SP_DEVINFO_DATA* deviceInfoData, unsigned long scope, unsigned long hwProfile, unsigned long keyType, unsigned long samDesired) {
  HKEY value_ = SetupDiOpenDevRegKey(deviceInfoSet, deviceInfoData, scope, hwProfile, keyType, samDesired);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}
