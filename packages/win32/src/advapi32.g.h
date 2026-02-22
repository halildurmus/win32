// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.

#include "win32.h"
#include <evntrace.h>
#include <ntsecapi.h>
#include <perflib.h>
#include <wct.h>
#include <wincred.h>
#include <winsafer.h>

MYLIB_EXPORT Win32Result ChangeServiceConfig2W_Wrapper(SC_HANDLE hService, DWORD dwInfoLevel, void* lpInfo);

MYLIB_EXPORT Win32Result CloseServiceHandle_Wrapper(SC_HANDLE hSCObject);

MYLIB_EXPORT Win32Result ControlService_Wrapper(SC_HANDLE hService, unsigned long dwControl, SERVICE_STATUS* lpServiceStatus);

MYLIB_EXPORT Win32Result ControlServiceExW_Wrapper(SC_HANDLE hService, unsigned long dwControl, unsigned long dwInfoLevel, void* pControlParams);

MYLIB_EXPORT Win32Result CredDeleteW_Wrapper(PCWSTR targetName, DWORD type, unsigned long flags);

MYLIB_EXPORT Win32Result CredReadW_Wrapper(PCWSTR targetName, DWORD type, unsigned long flags, CREDENTIALW** credential);

MYLIB_EXPORT Win32Result CredWriteW_Wrapper(CREDENTIALW* credential, unsigned long flags);

MYLIB_EXPORT Win32Result DecryptFileW_Wrapper(PCWSTR lpFileName, unsigned long dwReserved);

MYLIB_EXPORT Win32Result DeleteService_Wrapper(SC_HANDLE hService);

MYLIB_EXPORT Win32Result EncryptFileW_Wrapper(PCWSTR lpFileName);

MYLIB_EXPORT Win32Result EnumDependentServicesW_Wrapper(SC_HANDLE hService, DWORD dwServiceState, ENUM_SERVICE_STATUSW* lpServices, unsigned long cbBufSize, unsigned long* pcbBytesNeeded, unsigned long* lpServicesReturned);

MYLIB_EXPORT Win32Result EnumServicesStatusW_Wrapper(SC_HANDLE hSCManager, DWORD dwServiceType, DWORD dwServiceState, ENUM_SERVICE_STATUSW* lpServices, unsigned long cbBufSize, unsigned long* pcbBytesNeeded, unsigned long* lpServicesReturned, unsigned long* lpResumeHandle);

MYLIB_EXPORT Win32Result EnumServicesStatusExW_Wrapper(SC_HANDLE hSCManager, LONG infoLevel, DWORD dwServiceType, DWORD dwServiceState, unsigned char* lpServices, unsigned long cbBufSize, unsigned long* pcbBytesNeeded, unsigned long* lpServicesReturned, unsigned long* lpResumeHandle, PCWSTR pszGroupName);

MYLIB_EXPORT Win32Result FileEncryptionStatusW_Wrapper(PCWSTR lpFileName, unsigned long* lpStatus);

MYLIB_EXPORT Win32Result GetServiceDisplayNameW_Wrapper(SC_HANDLE hSCManager, PCWSTR lpServiceName, PWSTR lpDisplayName, unsigned long* lpcchBuffer);

MYLIB_EXPORT Win32Result GetServiceKeyNameW_Wrapper(SC_HANDLE hSCManager, PCWSTR lpDisplayName, PWSTR lpServiceName, unsigned long* lpcchBuffer);

MYLIB_EXPORT Win32Result GetTokenInformation_Wrapper(HANDLE tokenHandle, LONG tokenInformationClass, void* tokenInformation, unsigned long tokenInformationLength, unsigned long* returnLength);

MYLIB_EXPORT Win32Result GetUserNameW_Wrapper(PWSTR lpBuffer, unsigned long* pcbBuffer);

MYLIB_EXPORT Win32Result NotifyBootConfigStatus_Wrapper(BOOL bootAcceptable);

MYLIB_EXPORT Win32Result OpenProcessToken_Wrapper(HANDLE processHandle, DWORD desiredAccess, HANDLE* tokenHandle);

MYLIB_EXPORT Win32Result OpenSCManagerW_Wrapper(PCWSTR lpMachineName, PCWSTR lpDatabaseName, unsigned long dwDesiredAccess);

MYLIB_EXPORT Win32Result OpenServiceW_Wrapper(SC_HANDLE hSCManager, PCWSTR lpServiceName, unsigned long dwDesiredAccess);

MYLIB_EXPORT Win32Result OpenThreadToken_Wrapper(HANDLE threadHandle, DWORD desiredAccess, BOOL openAsSelf, HANDLE* tokenHandle);

MYLIB_EXPORT Win32Result QueryServiceConfigW_Wrapper(SC_HANDLE hService, QUERY_SERVICE_CONFIGW* lpServiceConfig, unsigned long cbBufSize, unsigned long* pcbBytesNeeded);

MYLIB_EXPORT Win32Result QueryServiceConfig2W_Wrapper(SC_HANDLE hService, DWORD dwInfoLevel, unsigned char* lpBuffer, unsigned long cbBufSize, unsigned long* pcbBytesNeeded);

MYLIB_EXPORT Win32Result QueryServiceDynamicInformation_Wrapper(SERVICE_STATUS_HANDLE hServiceStatus, unsigned long dwInfoLevel, void** ppDynamicInfo);

MYLIB_EXPORT Win32Result QueryServiceObjectSecurity_Wrapper(SC_HANDLE hService, unsigned long dwSecurityInformation, PSECURITY_DESCRIPTOR lpSecurityDescriptor, unsigned long cbBufSize, unsigned long* pcbBytesNeeded);

MYLIB_EXPORT Win32Result QueryServiceStatus_Wrapper(SC_HANDLE hService, SERVICE_STATUS* lpServiceStatus);

MYLIB_EXPORT Win32Result QueryServiceStatusEx_Wrapper(SC_HANDLE hService, LONG infoLevel, unsigned char* lpBuffer, unsigned long cbBufSize, unsigned long* pcbBytesNeeded);

MYLIB_EXPORT Win32Result RegisterServiceCtrlHandlerW_Wrapper(PCWSTR lpServiceName, LPHANDLER_FUNCTION lpHandlerProc);

MYLIB_EXPORT Win32Result RegisterServiceCtrlHandlerExW_Wrapper(PCWSTR lpServiceName, LPHANDLER_FUNCTION_EX lpHandlerProc, void* lpContext);

MYLIB_EXPORT Win32Result SetServiceObjectSecurity_Wrapper(SC_HANDLE hService, DWORD dwSecurityInformation, PSECURITY_DESCRIPTOR lpSecurityDescriptor);

MYLIB_EXPORT Win32Result SetServiceStatus_Wrapper(SERVICE_STATUS_HANDLE hServiceStatus, SERVICE_STATUS* lpServiceStatus);

MYLIB_EXPORT Win32Result SetThreadToken_Wrapper(HANDLE* thread, HANDLE token);

MYLIB_EXPORT Win32Result StartServiceW_Wrapper(SC_HANDLE hService, unsigned long dwNumServiceArgs, PCWSTR* lpServiceArgVectors);

MYLIB_EXPORT Win32Result StartServiceCtrlDispatcherW_Wrapper(SERVICE_TABLE_ENTRYW* lpServiceStartTable);
