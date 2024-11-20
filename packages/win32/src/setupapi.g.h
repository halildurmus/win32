// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

#include "win32.h"
#include <SetupAPI.h>

MYLIB_EXPORT BOOL SetupDiDestroyDeviceInfoList_Wrapper(HDEVINFO deviceInfoSet);

MYLIB_EXPORT BOOL SetupDiEnumDeviceInfo_Wrapper(HDEVINFO deviceInfoSet, unsigned long memberIndex, SP_DEVINFO_DATA* deviceInfoData);

MYLIB_EXPORT BOOL SetupDiEnumDeviceInterfaces_Wrapper(HDEVINFO deviceInfoSet, SP_DEVINFO_DATA* deviceInfoData, GUID* interfaceClassGuid, unsigned long memberIndex, SP_DEVICE_INTERFACE_DATA* deviceInterfaceData);

MYLIB_EXPORT HDEVINFO SetupDiGetClassDevsW_Wrapper(GUID* classGuid, PCWSTR enumerator, HWND hwndParent, DWORD flags);

MYLIB_EXPORT BOOL SetupDiGetDeviceInstanceIdW_Wrapper(HDEVINFO deviceInfoSet, SP_DEVINFO_DATA* deviceInfoData, PWSTR deviceInstanceId, unsigned long deviceInstanceIdSize, unsigned long* requiredSize);

MYLIB_EXPORT BOOL SetupDiGetDeviceInterfaceDetailW_Wrapper(HDEVINFO deviceInfoSet, SP_DEVICE_INTERFACE_DATA* deviceInterfaceData, SP_DEVICE_INTERFACE_DETAIL_DATA_W* deviceInterfaceDetailData, unsigned long deviceInterfaceDetailDataSize, unsigned long* requiredSize, SP_DEVINFO_DATA* deviceInfoData);

MYLIB_EXPORT BOOL SetupDiGetDeviceRegistryPropertyW_Wrapper(HDEVINFO deviceInfoSet, SP_DEVINFO_DATA* deviceInfoData, DWORD property, unsigned long* propertyRegDataType, unsigned char* propertyBuffer, unsigned long propertyBufferSize, unsigned long* requiredSize);

MYLIB_EXPORT HKEY SetupDiOpenDevRegKey_Wrapper(HDEVINFO deviceInfoSet, SP_DEVINFO_DATA* deviceInfoData, unsigned long scope, unsigned long hwProfile, unsigned long keyType, unsigned long samDesired);
