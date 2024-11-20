// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

#include "setupapi.g.h"

BOOL SetupDiDestroyDeviceInfoList_Wrapper(HDEVINFO deviceInfoSet) {
  trace_print("Calling SetupDiDestroyDeviceInfoList\n");
  BOOL result_ = SetupDiDestroyDeviceInfoList(deviceInfoSet);
  trace_print("SetupDiDestroyDeviceInfoList returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetupDiEnumDeviceInfo_Wrapper(HDEVINFO deviceInfoSet, unsigned long memberIndex, SP_DEVINFO_DATA* deviceInfoData) {
  trace_print("Calling SetupDiEnumDeviceInfo\n");
  BOOL result_ = SetupDiEnumDeviceInfo(deviceInfoSet, memberIndex, deviceInfoData);
  trace_print("SetupDiEnumDeviceInfo returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetupDiEnumDeviceInterfaces_Wrapper(HDEVINFO deviceInfoSet, SP_DEVINFO_DATA* deviceInfoData, GUID* interfaceClassGuid, unsigned long memberIndex, SP_DEVICE_INTERFACE_DATA* deviceInterfaceData) {
  trace_print("Calling SetupDiEnumDeviceInterfaces\n");
  BOOL result_ = SetupDiEnumDeviceInterfaces(deviceInfoSet, deviceInfoData, interfaceClassGuid, memberIndex, deviceInterfaceData);
  trace_print("SetupDiEnumDeviceInterfaces returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HDEVINFO SetupDiGetClassDevsW_Wrapper(GUID* classGuid, PCWSTR enumerator, HWND hwndParent, DWORD flags) {
  trace_print("Calling SetupDiGetClassDevsW\n");
  HDEVINFO result_ = SetupDiGetClassDevsW(classGuid, enumerator, hwndParent, flags);
  trace_print("SetupDiGetClassDevsW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetupDiGetDeviceInstanceIdW_Wrapper(HDEVINFO deviceInfoSet, SP_DEVINFO_DATA* deviceInfoData, PWSTR deviceInstanceId, unsigned long deviceInstanceIdSize, unsigned long* requiredSize) {
  trace_print("Calling SetupDiGetDeviceInstanceIdW\n");
  BOOL result_ = SetupDiGetDeviceInstanceIdW(deviceInfoSet, deviceInfoData, deviceInstanceId, deviceInstanceIdSize, requiredSize);
  trace_print("SetupDiGetDeviceInstanceIdW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetupDiGetDeviceInterfaceDetailW_Wrapper(HDEVINFO deviceInfoSet, SP_DEVICE_INTERFACE_DATA* deviceInterfaceData, SP_DEVICE_INTERFACE_DETAIL_DATA_W* deviceInterfaceDetailData, unsigned long deviceInterfaceDetailDataSize, unsigned long* requiredSize, SP_DEVINFO_DATA* deviceInfoData) {
  trace_print("Calling SetupDiGetDeviceInterfaceDetailW\n");
  BOOL result_ = SetupDiGetDeviceInterfaceDetailW(deviceInfoSet, deviceInterfaceData, deviceInterfaceDetailData, deviceInterfaceDetailDataSize, requiredSize, deviceInfoData);
  trace_print("SetupDiGetDeviceInterfaceDetailW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetupDiGetDeviceRegistryPropertyW_Wrapper(HDEVINFO deviceInfoSet, SP_DEVINFO_DATA* deviceInfoData, DWORD property, unsigned long* propertyRegDataType, unsigned char* propertyBuffer, unsigned long propertyBufferSize, unsigned long* requiredSize) {
  trace_print("Calling SetupDiGetDeviceRegistryPropertyW\n");
  BOOL result_ = SetupDiGetDeviceRegistryPropertyW(deviceInfoSet, deviceInfoData, property, propertyRegDataType, propertyBuffer, propertyBufferSize, requiredSize);
  trace_print("SetupDiGetDeviceRegistryPropertyW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HKEY SetupDiOpenDevRegKey_Wrapper(HDEVINFO deviceInfoSet, SP_DEVINFO_DATA* deviceInfoData, unsigned long scope, unsigned long hwProfile, unsigned long keyType, unsigned long samDesired) {
  trace_print("Calling SetupDiOpenDevRegKey\n");
  HKEY result_ = SetupDiOpenDevRegKey(deviceInfoSet, deviceInfoData, scope, hwProfile, keyType, samDesired);
  trace_print("SetupDiOpenDevRegKey returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}
