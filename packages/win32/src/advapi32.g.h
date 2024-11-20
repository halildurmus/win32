// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

#include "win32.h"
#include <wincred.h>

MYLIB_EXPORT BOOL ChangeServiceConfig2W_Wrapper(SC_HANDLE hService, DWORD dwInfoLevel, void* lpInfo);

MYLIB_EXPORT BOOL CloseServiceHandle_Wrapper(SC_HANDLE hSCObject);

MYLIB_EXPORT BOOL ControlService_Wrapper(SC_HANDLE hService, unsigned long dwControl, SERVICE_STATUS* lpServiceStatus);

MYLIB_EXPORT BOOL ControlServiceExW_Wrapper(SC_HANDLE hService, unsigned long dwControl, unsigned long dwInfoLevel, void* pControlParams);

MYLIB_EXPORT BOOL CredDeleteW_Wrapper(PCWSTR targetName, DWORD type, unsigned long flags);

MYLIB_EXPORT BOOL CredReadW_Wrapper(PCWSTR targetName, DWORD type, unsigned long flags, CREDENTIALW** credential);

MYLIB_EXPORT BOOL CredWriteW_Wrapper(CREDENTIALW* credential, unsigned long flags);

MYLIB_EXPORT BOOL DecryptFileW_Wrapper(PCWSTR lpFileName, unsigned long dwReserved);

MYLIB_EXPORT BOOL DeleteService_Wrapper(SC_HANDLE hService);

MYLIB_EXPORT BOOL EncryptFileW_Wrapper(PCWSTR lpFileName);

MYLIB_EXPORT BOOL EnumDependentServicesW_Wrapper(SC_HANDLE hService, DWORD dwServiceState, ENUM_SERVICE_STATUSW* lpServices, unsigned long cbBufSize, unsigned long* pcbBytesNeeded, unsigned long* lpServicesReturned);

MYLIB_EXPORT BOOL EnumServicesStatusW_Wrapper(SC_HANDLE hSCManager, DWORD dwServiceType, DWORD dwServiceState, ENUM_SERVICE_STATUSW* lpServices, unsigned long cbBufSize, unsigned long* pcbBytesNeeded, unsigned long* lpServicesReturned, unsigned long* lpResumeHandle);

MYLIB_EXPORT BOOL EnumServicesStatusExW_Wrapper(SC_HANDLE hSCManager, LONG infoLevel, DWORD dwServiceType, DWORD dwServiceState, unsigned char* lpServices, unsigned long cbBufSize, unsigned long* pcbBytesNeeded, unsigned long* lpServicesReturned, unsigned long* lpResumeHandle, PCWSTR pszGroupName);

MYLIB_EXPORT BOOL FileEncryptionStatusW_Wrapper(PCWSTR lpFileName, unsigned long* lpStatus);

MYLIB_EXPORT BOOL GetServiceDisplayNameW_Wrapper(SC_HANDLE hSCManager, PCWSTR lpServiceName, PWSTR lpDisplayName, unsigned long* lpcchBuffer);

MYLIB_EXPORT BOOL GetServiceKeyNameW_Wrapper(SC_HANDLE hSCManager, PCWSTR lpDisplayName, PWSTR lpServiceName, unsigned long* lpcchBuffer);

MYLIB_EXPORT BOOL GetTokenInformation_Wrapper(HANDLE tokenHandle, LONG tokenInformationClass, void* tokenInformation, unsigned long tokenInformationLength, unsigned long* returnLength);

MYLIB_EXPORT BOOL GetUserNameW_Wrapper(PWSTR lpBuffer, unsigned long* pcbBuffer);

MYLIB_EXPORT BOOL NotifyBootConfigStatus_Wrapper(BOOL bootAcceptable);

MYLIB_EXPORT BOOL OpenProcessToken_Wrapper(HANDLE processHandle, DWORD desiredAccess, HANDLE* tokenHandle);

MYLIB_EXPORT SC_HANDLE OpenSCManagerW_Wrapper(PCWSTR lpMachineName, PCWSTR lpDatabaseName, unsigned long dwDesiredAccess);

MYLIB_EXPORT SC_HANDLE OpenServiceW_Wrapper(SC_HANDLE hSCManager, PCWSTR lpServiceName, unsigned long dwDesiredAccess);

MYLIB_EXPORT BOOL OpenThreadToken_Wrapper(HANDLE threadHandle, DWORD desiredAccess, BOOL openAsSelf, HANDLE* tokenHandle);

MYLIB_EXPORT BOOL QueryServiceConfigW_Wrapper(SC_HANDLE hService, QUERY_SERVICE_CONFIGW* lpServiceConfig, unsigned long cbBufSize, unsigned long* pcbBytesNeeded);

MYLIB_EXPORT BOOL QueryServiceConfig2W_Wrapper(SC_HANDLE hService, DWORD dwInfoLevel, unsigned char* lpBuffer, unsigned long cbBufSize, unsigned long* pcbBytesNeeded);

MYLIB_EXPORT BOOL QueryServiceDynamicInformation_Wrapper(SERVICE_STATUS_HANDLE hServiceStatus, unsigned long dwInfoLevel, void** ppDynamicInfo);

MYLIB_EXPORT BOOL QueryServiceObjectSecurity_Wrapper(SC_HANDLE hService, unsigned long dwSecurityInformation, PSECURITY_DESCRIPTOR lpSecurityDescriptor, unsigned long cbBufSize, unsigned long* pcbBytesNeeded);

MYLIB_EXPORT BOOL QueryServiceStatus_Wrapper(SC_HANDLE hService, SERVICE_STATUS* lpServiceStatus);

MYLIB_EXPORT BOOL QueryServiceStatusEx_Wrapper(SC_HANDLE hService, LONG infoLevel, unsigned char* lpBuffer, unsigned long cbBufSize, unsigned long* pcbBytesNeeded);

MYLIB_EXPORT SERVICE_STATUS_HANDLE RegisterServiceCtrlHandlerW_Wrapper(PCWSTR lpServiceName, LPHANDLER_FUNCTION lpHandlerProc);

MYLIB_EXPORT SERVICE_STATUS_HANDLE RegisterServiceCtrlHandlerExW_Wrapper(PCWSTR lpServiceName, LPHANDLER_FUNCTION_EX lpHandlerProc, void* lpContext);

MYLIB_EXPORT BOOL SetServiceObjectSecurity_Wrapper(SC_HANDLE hService, DWORD dwSecurityInformation, PSECURITY_DESCRIPTOR lpSecurityDescriptor);

MYLIB_EXPORT BOOL SetServiceStatus_Wrapper(SERVICE_STATUS_HANDLE hServiceStatus, SERVICE_STATUS* lpServiceStatus);

MYLIB_EXPORT BOOL SetThreadToken_Wrapper(HANDLE* thread, HANDLE token);

MYLIB_EXPORT BOOL StartServiceW_Wrapper(SC_HANDLE hService, unsigned long dwNumServiceArgs, PCWSTR* lpServiceArgVectors);

MYLIB_EXPORT BOOL StartServiceCtrlDispatcherW_Wrapper(SERVICE_TABLE_ENTRYW* lpServiceStartTable);
