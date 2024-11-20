// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.

#include "advapi32.g.h"

Win32Result ChangeServiceConfig2W_Wrapper(SC_HANDLE hService, DWORD dwInfoLevel, void* lpInfo) {
  BOOL value_ = ChangeServiceConfig2W(hService, dwInfoLevel, lpInfo);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result CloseServiceHandle_Wrapper(SC_HANDLE hSCObject) {
  BOOL value_ = CloseServiceHandle(hSCObject);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result ControlService_Wrapper(SC_HANDLE hService, unsigned long dwControl, SERVICE_STATUS* lpServiceStatus) {
  BOOL value_ = ControlService(hService, dwControl, lpServiceStatus);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result ControlServiceExW_Wrapper(SC_HANDLE hService, unsigned long dwControl, unsigned long dwInfoLevel, void* pControlParams) {
  BOOL value_ = ControlServiceExW(hService, dwControl, dwInfoLevel, pControlParams);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result CredDeleteW_Wrapper(PCWSTR targetName, DWORD type, unsigned long flags) {
  BOOL value_ = CredDeleteW(targetName, type, flags);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result CredReadW_Wrapper(PCWSTR targetName, DWORD type, unsigned long flags, CREDENTIALW** credential) {
  BOOL value_ = CredReadW(targetName, type, flags, credential);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result CredWriteW_Wrapper(CREDENTIALW* credential, unsigned long flags) {
  BOOL value_ = CredWriteW(credential, flags);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result DecryptFileW_Wrapper(PCWSTR lpFileName, unsigned long dwReserved) {
  BOOL value_ = DecryptFileW(lpFileName, dwReserved);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result DeleteService_Wrapper(SC_HANDLE hService) {
  BOOL value_ = DeleteService(hService);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result EncryptFileW_Wrapper(PCWSTR lpFileName) {
  BOOL value_ = EncryptFileW(lpFileName);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result EnumDependentServicesW_Wrapper(SC_HANDLE hService, DWORD dwServiceState, ENUM_SERVICE_STATUSW* lpServices, unsigned long cbBufSize, unsigned long* pcbBytesNeeded, unsigned long* lpServicesReturned) {
  BOOL value_ = EnumDependentServicesW(hService, dwServiceState, lpServices, cbBufSize, pcbBytesNeeded, lpServicesReturned);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result EnumServicesStatusW_Wrapper(SC_HANDLE hSCManager, DWORD dwServiceType, DWORD dwServiceState, ENUM_SERVICE_STATUSW* lpServices, unsigned long cbBufSize, unsigned long* pcbBytesNeeded, unsigned long* lpServicesReturned, unsigned long* lpResumeHandle) {
  BOOL value_ = EnumServicesStatusW(hSCManager, dwServiceType, dwServiceState, lpServices, cbBufSize, pcbBytesNeeded, lpServicesReturned, lpResumeHandle);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result EnumServicesStatusExW_Wrapper(SC_HANDLE hSCManager, LONG infoLevel, DWORD dwServiceType, DWORD dwServiceState, unsigned char* lpServices, unsigned long cbBufSize, unsigned long* pcbBytesNeeded, unsigned long* lpServicesReturned, unsigned long* lpResumeHandle, PCWSTR pszGroupName) {
  BOOL value_ = EnumServicesStatusExW(hSCManager, infoLevel, dwServiceType, dwServiceState, lpServices, cbBufSize, pcbBytesNeeded, lpServicesReturned, lpResumeHandle, pszGroupName);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result FileEncryptionStatusW_Wrapper(PCWSTR lpFileName, unsigned long* lpStatus) {
  BOOL value_ = FileEncryptionStatusW(lpFileName, lpStatus);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetServiceDisplayNameW_Wrapper(SC_HANDLE hSCManager, PCWSTR lpServiceName, PWSTR lpDisplayName, unsigned long* lpcchBuffer) {
  BOOL value_ = GetServiceDisplayNameW(hSCManager, lpServiceName, lpDisplayName, lpcchBuffer);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetServiceKeyNameW_Wrapper(SC_HANDLE hSCManager, PCWSTR lpDisplayName, PWSTR lpServiceName, unsigned long* lpcchBuffer) {
  BOOL value_ = GetServiceKeyNameW(hSCManager, lpDisplayName, lpServiceName, lpcchBuffer);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetTokenInformation_Wrapper(HANDLE tokenHandle, LONG tokenInformationClass, void* tokenInformation, unsigned long tokenInformationLength, unsigned long* returnLength) {
  BOOL value_ = GetTokenInformation(tokenHandle, tokenInformationClass, tokenInformation, tokenInformationLength, returnLength);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetUserNameW_Wrapper(PWSTR lpBuffer, unsigned long* pcbBuffer) {
  BOOL value_ = GetUserNameW(lpBuffer, pcbBuffer);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result NotifyBootConfigStatus_Wrapper(BOOL bootAcceptable) {
  BOOL value_ = NotifyBootConfigStatus(bootAcceptable);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result OpenProcessToken_Wrapper(HANDLE processHandle, DWORD desiredAccess, HANDLE* tokenHandle) {
  BOOL value_ = OpenProcessToken(processHandle, desiredAccess, tokenHandle);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result OpenSCManagerW_Wrapper(PCWSTR lpMachineName, PCWSTR lpDatabaseName, unsigned long dwDesiredAccess) {
  SC_HANDLE value_ = OpenSCManagerW(lpMachineName, lpDatabaseName, dwDesiredAccess);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result OpenServiceW_Wrapper(SC_HANDLE hSCManager, PCWSTR lpServiceName, unsigned long dwDesiredAccess) {
  SC_HANDLE value_ = OpenServiceW(hSCManager, lpServiceName, dwDesiredAccess);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result OpenThreadToken_Wrapper(HANDLE threadHandle, DWORD desiredAccess, BOOL openAsSelf, HANDLE* tokenHandle) {
  BOOL value_ = OpenThreadToken(threadHandle, desiredAccess, openAsSelf, tokenHandle);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result QueryServiceConfigW_Wrapper(SC_HANDLE hService, QUERY_SERVICE_CONFIGW* lpServiceConfig, unsigned long cbBufSize, unsigned long* pcbBytesNeeded) {
  BOOL value_ = QueryServiceConfigW(hService, lpServiceConfig, cbBufSize, pcbBytesNeeded);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result QueryServiceConfig2W_Wrapper(SC_HANDLE hService, DWORD dwInfoLevel, unsigned char* lpBuffer, unsigned long cbBufSize, unsigned long* pcbBytesNeeded) {
  BOOL value_ = QueryServiceConfig2W(hService, dwInfoLevel, lpBuffer, cbBufSize, pcbBytesNeeded);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result QueryServiceDynamicInformation_Wrapper(SERVICE_STATUS_HANDLE hServiceStatus, unsigned long dwInfoLevel, void** ppDynamicInfo) {
  BOOL value_ = QueryServiceDynamicInformation(hServiceStatus, dwInfoLevel, ppDynamicInfo);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result QueryServiceObjectSecurity_Wrapper(SC_HANDLE hService, unsigned long dwSecurityInformation, PSECURITY_DESCRIPTOR lpSecurityDescriptor, unsigned long cbBufSize, unsigned long* pcbBytesNeeded) {
  BOOL value_ = QueryServiceObjectSecurity(hService, dwSecurityInformation, lpSecurityDescriptor, cbBufSize, pcbBytesNeeded);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result QueryServiceStatus_Wrapper(SC_HANDLE hService, SERVICE_STATUS* lpServiceStatus) {
  BOOL value_ = QueryServiceStatus(hService, lpServiceStatus);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result QueryServiceStatusEx_Wrapper(SC_HANDLE hService, LONG infoLevel, unsigned char* lpBuffer, unsigned long cbBufSize, unsigned long* pcbBytesNeeded) {
  BOOL value_ = QueryServiceStatusEx(hService, infoLevel, lpBuffer, cbBufSize, pcbBytesNeeded);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result RegisterServiceCtrlHandlerW_Wrapper(PCWSTR lpServiceName, LPHANDLER_FUNCTION lpHandlerProc) {
  SERVICE_STATUS_HANDLE value_ = RegisterServiceCtrlHandlerW(lpServiceName, lpHandlerProc);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result RegisterServiceCtrlHandlerExW_Wrapper(PCWSTR lpServiceName, LPHANDLER_FUNCTION_EX lpHandlerProc, void* lpContext) {
  SERVICE_STATUS_HANDLE value_ = RegisterServiceCtrlHandlerExW(lpServiceName, lpHandlerProc, lpContext);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result SetServiceObjectSecurity_Wrapper(SC_HANDLE hService, DWORD dwSecurityInformation, PSECURITY_DESCRIPTOR lpSecurityDescriptor) {
  BOOL value_ = SetServiceObjectSecurity(hService, dwSecurityInformation, lpSecurityDescriptor);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetServiceStatus_Wrapper(SERVICE_STATUS_HANDLE hServiceStatus, SERVICE_STATUS* lpServiceStatus) {
  BOOL value_ = SetServiceStatus(hServiceStatus, lpServiceStatus);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetThreadToken_Wrapper(HANDLE* thread, HANDLE token) {
  BOOL value_ = SetThreadToken(thread, token);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result StartServiceW_Wrapper(SC_HANDLE hService, unsigned long dwNumServiceArgs, PCWSTR* lpServiceArgVectors) {
  BOOL value_ = StartServiceW(hService, dwNumServiceArgs, lpServiceArgVectors);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result StartServiceCtrlDispatcherW_Wrapper(SERVICE_TABLE_ENTRYW* lpServiceStartTable) {
  BOOL value_ = StartServiceCtrlDispatcherW(lpServiceStartTable);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}
