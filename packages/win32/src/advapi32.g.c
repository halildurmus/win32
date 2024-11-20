// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

#include "advapi32.g.h"

BOOL ChangeServiceConfig2W_Wrapper(SC_HANDLE hService, DWORD dwInfoLevel, void* lpInfo) {
  trace_print("Calling ChangeServiceConfig2W\n");
  BOOL result_ = ChangeServiceConfig2W(hService, dwInfoLevel, lpInfo);
  trace_print("ChangeServiceConfig2W returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL CloseServiceHandle_Wrapper(SC_HANDLE hSCObject) {
  trace_print("Calling CloseServiceHandle\n");
  BOOL result_ = CloseServiceHandle(hSCObject);
  trace_print("CloseServiceHandle returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL ControlService_Wrapper(SC_HANDLE hService, unsigned long dwControl, SERVICE_STATUS* lpServiceStatus) {
  trace_print("Calling ControlService\n");
  BOOL result_ = ControlService(hService, dwControl, lpServiceStatus);
  trace_print("ControlService returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL ControlServiceExW_Wrapper(SC_HANDLE hService, unsigned long dwControl, unsigned long dwInfoLevel, void* pControlParams) {
  trace_print("Calling ControlServiceExW\n");
  BOOL result_ = ControlServiceExW(hService, dwControl, dwInfoLevel, pControlParams);
  trace_print("ControlServiceExW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL CredDeleteW_Wrapper(PCWSTR targetName, DWORD type, unsigned long flags) {
  trace_print("Calling CredDeleteW\n");
  BOOL result_ = CredDeleteW(targetName, type, flags);
  trace_print("CredDeleteW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL CredReadW_Wrapper(PCWSTR targetName, DWORD type, unsigned long flags, CREDENTIALW** credential) {
  trace_print("Calling CredReadW\n");
  BOOL result_ = CredReadW(targetName, type, flags, credential);
  trace_print("CredReadW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL CredWriteW_Wrapper(CREDENTIALW* credential, unsigned long flags) {
  trace_print("Calling CredWriteW\n");
  BOOL result_ = CredWriteW(credential, flags);
  trace_print("CredWriteW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL DecryptFileW_Wrapper(PCWSTR lpFileName, unsigned long dwReserved) {
  trace_print("Calling DecryptFileW\n");
  BOOL result_ = DecryptFileW(lpFileName, dwReserved);
  trace_print("DecryptFileW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL DeleteService_Wrapper(SC_HANDLE hService) {
  trace_print("Calling DeleteService\n");
  BOOL result_ = DeleteService(hService);
  trace_print("DeleteService returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL EncryptFileW_Wrapper(PCWSTR lpFileName) {
  trace_print("Calling EncryptFileW\n");
  BOOL result_ = EncryptFileW(lpFileName);
  trace_print("EncryptFileW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL EnumDependentServicesW_Wrapper(SC_HANDLE hService, DWORD dwServiceState, ENUM_SERVICE_STATUSW* lpServices, unsigned long cbBufSize, unsigned long* pcbBytesNeeded, unsigned long* lpServicesReturned) {
  trace_print("Calling EnumDependentServicesW\n");
  BOOL result_ = EnumDependentServicesW(hService, dwServiceState, lpServices, cbBufSize, pcbBytesNeeded, lpServicesReturned);
  trace_print("EnumDependentServicesW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL EnumServicesStatusW_Wrapper(SC_HANDLE hSCManager, DWORD dwServiceType, DWORD dwServiceState, ENUM_SERVICE_STATUSW* lpServices, unsigned long cbBufSize, unsigned long* pcbBytesNeeded, unsigned long* lpServicesReturned, unsigned long* lpResumeHandle) {
  trace_print("Calling EnumServicesStatusW\n");
  BOOL result_ = EnumServicesStatusW(hSCManager, dwServiceType, dwServiceState, lpServices, cbBufSize, pcbBytesNeeded, lpServicesReturned, lpResumeHandle);
  trace_print("EnumServicesStatusW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL EnumServicesStatusExW_Wrapper(SC_HANDLE hSCManager, LONG infoLevel, DWORD dwServiceType, DWORD dwServiceState, unsigned char* lpServices, unsigned long cbBufSize, unsigned long* pcbBytesNeeded, unsigned long* lpServicesReturned, unsigned long* lpResumeHandle, PCWSTR pszGroupName) {
  trace_print("Calling EnumServicesStatusExW\n");
  BOOL result_ = EnumServicesStatusExW(hSCManager, infoLevel, dwServiceType, dwServiceState, lpServices, cbBufSize, pcbBytesNeeded, lpServicesReturned, lpResumeHandle, pszGroupName);
  trace_print("EnumServicesStatusExW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL FileEncryptionStatusW_Wrapper(PCWSTR lpFileName, unsigned long* lpStatus) {
  trace_print("Calling FileEncryptionStatusW\n");
  BOOL result_ = FileEncryptionStatusW(lpFileName, lpStatus);
  trace_print("FileEncryptionStatusW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetServiceDisplayNameW_Wrapper(SC_HANDLE hSCManager, PCWSTR lpServiceName, PWSTR lpDisplayName, unsigned long* lpcchBuffer) {
  trace_print("Calling GetServiceDisplayNameW\n");
  BOOL result_ = GetServiceDisplayNameW(hSCManager, lpServiceName, lpDisplayName, lpcchBuffer);
  trace_print("GetServiceDisplayNameW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetServiceKeyNameW_Wrapper(SC_HANDLE hSCManager, PCWSTR lpDisplayName, PWSTR lpServiceName, unsigned long* lpcchBuffer) {
  trace_print("Calling GetServiceKeyNameW\n");
  BOOL result_ = GetServiceKeyNameW(hSCManager, lpDisplayName, lpServiceName, lpcchBuffer);
  trace_print("GetServiceKeyNameW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetTokenInformation_Wrapper(HANDLE tokenHandle, LONG tokenInformationClass, void* tokenInformation, unsigned long tokenInformationLength, unsigned long* returnLength) {
  trace_print("Calling GetTokenInformation\n");
  BOOL result_ = GetTokenInformation(tokenHandle, tokenInformationClass, tokenInformation, tokenInformationLength, returnLength);
  trace_print("GetTokenInformation returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetUserNameW_Wrapper(PWSTR lpBuffer, unsigned long* pcbBuffer) {
  trace_print("Calling GetUserNameW\n");
  BOOL result_ = GetUserNameW(lpBuffer, pcbBuffer);
  trace_print("GetUserNameW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL NotifyBootConfigStatus_Wrapper(BOOL bootAcceptable) {
  trace_print("Calling NotifyBootConfigStatus\n");
  BOOL result_ = NotifyBootConfigStatus(bootAcceptable);
  trace_print("NotifyBootConfigStatus returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL OpenProcessToken_Wrapper(HANDLE processHandle, DWORD desiredAccess, HANDLE* tokenHandle) {
  trace_print("Calling OpenProcessToken\n");
  BOOL result_ = OpenProcessToken(processHandle, desiredAccess, tokenHandle);
  trace_print("OpenProcessToken returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

SC_HANDLE OpenSCManagerW_Wrapper(PCWSTR lpMachineName, PCWSTR lpDatabaseName, unsigned long dwDesiredAccess) {
  trace_print("Calling OpenSCManagerW\n");
  SC_HANDLE result_ = OpenSCManagerW(lpMachineName, lpDatabaseName, dwDesiredAccess);
  trace_print("OpenSCManagerW returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

SC_HANDLE OpenServiceW_Wrapper(SC_HANDLE hSCManager, PCWSTR lpServiceName, unsigned long dwDesiredAccess) {
  trace_print("Calling OpenServiceW\n");
  SC_HANDLE result_ = OpenServiceW(hSCManager, lpServiceName, dwDesiredAccess);
  trace_print("OpenServiceW returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL OpenThreadToken_Wrapper(HANDLE threadHandle, DWORD desiredAccess, BOOL openAsSelf, HANDLE* tokenHandle) {
  trace_print("Calling OpenThreadToken\n");
  BOOL result_ = OpenThreadToken(threadHandle, desiredAccess, openAsSelf, tokenHandle);
  trace_print("OpenThreadToken returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL QueryServiceConfigW_Wrapper(SC_HANDLE hService, QUERY_SERVICE_CONFIGW* lpServiceConfig, unsigned long cbBufSize, unsigned long* pcbBytesNeeded) {
  trace_print("Calling QueryServiceConfigW\n");
  BOOL result_ = QueryServiceConfigW(hService, lpServiceConfig, cbBufSize, pcbBytesNeeded);
  trace_print("QueryServiceConfigW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL QueryServiceConfig2W_Wrapper(SC_HANDLE hService, DWORD dwInfoLevel, unsigned char* lpBuffer, unsigned long cbBufSize, unsigned long* pcbBytesNeeded) {
  trace_print("Calling QueryServiceConfig2W\n");
  BOOL result_ = QueryServiceConfig2W(hService, dwInfoLevel, lpBuffer, cbBufSize, pcbBytesNeeded);
  trace_print("QueryServiceConfig2W returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL QueryServiceDynamicInformation_Wrapper(SERVICE_STATUS_HANDLE hServiceStatus, unsigned long dwInfoLevel, void** ppDynamicInfo) {
  trace_print("Calling QueryServiceDynamicInformation\n");
  BOOL result_ = QueryServiceDynamicInformation(hServiceStatus, dwInfoLevel, ppDynamicInfo);
  trace_print("QueryServiceDynamicInformation returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL QueryServiceObjectSecurity_Wrapper(SC_HANDLE hService, unsigned long dwSecurityInformation, PSECURITY_DESCRIPTOR lpSecurityDescriptor, unsigned long cbBufSize, unsigned long* pcbBytesNeeded) {
  trace_print("Calling QueryServiceObjectSecurity\n");
  BOOL result_ = QueryServiceObjectSecurity(hService, dwSecurityInformation, lpSecurityDescriptor, cbBufSize, pcbBytesNeeded);
  trace_print("QueryServiceObjectSecurity returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL QueryServiceStatus_Wrapper(SC_HANDLE hService, SERVICE_STATUS* lpServiceStatus) {
  trace_print("Calling QueryServiceStatus\n");
  BOOL result_ = QueryServiceStatus(hService, lpServiceStatus);
  trace_print("QueryServiceStatus returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL QueryServiceStatusEx_Wrapper(SC_HANDLE hService, LONG infoLevel, unsigned char* lpBuffer, unsigned long cbBufSize, unsigned long* pcbBytesNeeded) {
  trace_print("Calling QueryServiceStatusEx\n");
  BOOL result_ = QueryServiceStatusEx(hService, infoLevel, lpBuffer, cbBufSize, pcbBytesNeeded);
  trace_print("QueryServiceStatusEx returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

SERVICE_STATUS_HANDLE RegisterServiceCtrlHandlerW_Wrapper(PCWSTR lpServiceName, LPHANDLER_FUNCTION lpHandlerProc) {
  trace_print("Calling RegisterServiceCtrlHandlerW\n");
  SERVICE_STATUS_HANDLE result_ = RegisterServiceCtrlHandlerW(lpServiceName, lpHandlerProc);
  trace_print("RegisterServiceCtrlHandlerW returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

SERVICE_STATUS_HANDLE RegisterServiceCtrlHandlerExW_Wrapper(PCWSTR lpServiceName, LPHANDLER_FUNCTION_EX lpHandlerProc, void* lpContext) {
  trace_print("Calling RegisterServiceCtrlHandlerExW\n");
  SERVICE_STATUS_HANDLE result_ = RegisterServiceCtrlHandlerExW(lpServiceName, lpHandlerProc, lpContext);
  trace_print("RegisterServiceCtrlHandlerExW returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetServiceObjectSecurity_Wrapper(SC_HANDLE hService, DWORD dwSecurityInformation, PSECURITY_DESCRIPTOR lpSecurityDescriptor) {
  trace_print("Calling SetServiceObjectSecurity\n");
  BOOL result_ = SetServiceObjectSecurity(hService, dwSecurityInformation, lpSecurityDescriptor);
  trace_print("SetServiceObjectSecurity returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetServiceStatus_Wrapper(SERVICE_STATUS_HANDLE hServiceStatus, SERVICE_STATUS* lpServiceStatus) {
  trace_print("Calling SetServiceStatus\n");
  BOOL result_ = SetServiceStatus(hServiceStatus, lpServiceStatus);
  trace_print("SetServiceStatus returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetThreadToken_Wrapper(HANDLE* thread, HANDLE token) {
  trace_print("Calling SetThreadToken\n");
  BOOL result_ = SetThreadToken(thread, token);
  trace_print("SetThreadToken returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL StartServiceW_Wrapper(SC_HANDLE hService, unsigned long dwNumServiceArgs, PCWSTR* lpServiceArgVectors) {
  trace_print("Calling StartServiceW\n");
  BOOL result_ = StartServiceW(hService, dwNumServiceArgs, lpServiceArgVectors);
  trace_print("StartServiceW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL StartServiceCtrlDispatcherW_Wrapper(SERVICE_TABLE_ENTRYW* lpServiceStartTable) {
  trace_print("Calling StartServiceCtrlDispatcherW\n");
  BOOL result_ = StartServiceCtrlDispatcherW(lpServiceStartTable);
  trace_print("StartServiceCtrlDispatcherW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}
