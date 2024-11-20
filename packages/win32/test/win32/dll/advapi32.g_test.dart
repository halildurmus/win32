// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated).
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: non_constant_identifier_names, unused_import,
// ignore_for_file: unused_local_variable

@TestOn('windows')
library;

import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:ffi/ffi.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/src/_internal/advapi32.g.dart';
import 'package:win32/win32.dart';

import '../../helpers.dart';

void main() {
  group('advapi32.dll', () {
    test('ChangeServiceConfig2 can be instantiated', () {
      check(ChangeServiceConfig2W_Wrapper).isA<Function>();
    });
    test('CloseServiceHandle can be instantiated', () {
      check(CloseServiceHandle_Wrapper).isA<Function>();
    });
    test('ControlService can be instantiated', () {
      check(ControlService_Wrapper).isA<Function>();
    });
    test('ControlServiceEx can be instantiated', () {
      check(ControlServiceExW_Wrapper).isA<Function>();
    });
    test('CredDelete can be instantiated', () {
      check(CredDeleteW_Wrapper).isA<Function>();
    });
    test('CredFree can be instantiated', () {
      check(_CredFree).isA<Function>();
    });
    test('CredRead can be instantiated', () {
      check(CredReadW_Wrapper).isA<Function>();
    });
    test('CredWrite can be instantiated', () {
      check(CredWriteW_Wrapper).isA<Function>();
    });
    test('DecryptFile can be instantiated', () {
      check(DecryptFileW_Wrapper).isA<Function>();
    });
    test('DeleteService can be instantiated', () {
      check(DeleteService_Wrapper).isA<Function>();
    });
    test('EncryptFile can be instantiated', () {
      check(EncryptFileW_Wrapper).isA<Function>();
    });
    test('EnumDependentServices can be instantiated', () {
      check(EnumDependentServicesW_Wrapper).isA<Function>();
    });
    test('EnumServicesStatus can be instantiated', () {
      check(EnumServicesStatusW_Wrapper).isA<Function>();
    });
    test('EnumServicesStatusEx can be instantiated', () {
      check(EnumServicesStatusExW_Wrapper).isA<Function>();
    });
    test('FileEncryptionStatus can be instantiated', () {
      check(FileEncryptionStatusW_Wrapper).isA<Function>();
    });
    test('GetServiceDisplayName can be instantiated', () {
      check(GetServiceDisplayNameW_Wrapper).isA<Function>();
    });
    test('GetServiceKeyName can be instantiated', () {
      check(GetServiceKeyNameW_Wrapper).isA<Function>();
    });
    test('GetTokenInformation can be instantiated', () {
      check(GetTokenInformation_Wrapper).isA<Function>();
    });
    test('GetUserName can be instantiated', () {
      check(GetUserNameW_Wrapper).isA<Function>();
    });
    test('InitiateShutdown can be instantiated', () {
      check(_InitiateShutdown).isA<Function>();
    });
    test('NotifyBootConfigStatus can be instantiated', () {
      check(NotifyBootConfigStatus_Wrapper).isA<Function>();
    });
    test('NotifyServiceStatusChange can be instantiated', () {
      check(_NotifyServiceStatusChange).isA<Function>();
    });
    test('OpenProcessToken can be instantiated', () {
      check(OpenProcessToken_Wrapper).isA<Function>();
    });
    test('OpenSCManager can be instantiated', () {
      check(OpenSCManagerW_Wrapper).isA<Function>();
    });
    test('OpenService can be instantiated', () {
      check(OpenServiceW_Wrapper).isA<Function>();
    });
    test('OpenThreadToken can be instantiated', () {
      check(OpenThreadToken_Wrapper).isA<Function>();
    });
    test('QueryServiceConfig can be instantiated', () {
      check(QueryServiceConfigW_Wrapper).isA<Function>();
    });
    test('QueryServiceConfig2 can be instantiated', () {
      check(QueryServiceConfig2W_Wrapper).isA<Function>();
    });
    test('QueryServiceDynamicInformation can be instantiated', () {
      check(QueryServiceDynamicInformation_Wrapper).isA<Function>();
    });
    test('QueryServiceObjectSecurity can be instantiated', () {
      check(QueryServiceObjectSecurity_Wrapper).isA<Function>();
    });
    test('QueryServiceStatus can be instantiated', () {
      check(QueryServiceStatus_Wrapper).isA<Function>();
    });
    test('QueryServiceStatusEx can be instantiated', () {
      check(QueryServiceStatusEx_Wrapper).isA<Function>();
    });
    test('RegCloseKey can be instantiated', () {
      check(_RegCloseKey).isA<Function>();
    });
    test('RegConnectRegistry can be instantiated', () {
      check(_RegConnectRegistry).isA<Function>();
    });
    test('RegCopyTree can be instantiated', () {
      check(_RegCopyTree).isA<Function>();
    });
    test('RegCreateKey can be instantiated', () {
      check(_RegCreateKey).isA<Function>();
    });
    test('RegCreateKeyEx can be instantiated', () {
      check(_RegCreateKeyEx).isA<Function>();
    });
    test('RegCreateKeyTransacted can be instantiated', () {
      check(_RegCreateKeyTransacted).isA<Function>();
    });
    test('RegDeleteKey can be instantiated', () {
      check(_RegDeleteKey).isA<Function>();
    });
    test('RegDeleteKeyEx can be instantiated', () {
      check(_RegDeleteKeyEx).isA<Function>();
    });
    test('RegDeleteKeyTransacted can be instantiated', () {
      check(_RegDeleteKeyTransacted).isA<Function>();
    });
    test('RegDeleteKeyValue can be instantiated', () {
      check(_RegDeleteKeyValue).isA<Function>();
    });
    test('RegDeleteTree can be instantiated', () {
      check(_RegDeleteTree).isA<Function>();
    });
    test('RegDeleteValue can be instantiated', () {
      check(_RegDeleteValue).isA<Function>();
    });
    test('RegDisablePredefinedCache can be instantiated', () {
      check(_RegDisablePredefinedCache).isA<Function>();
    });
    test('RegDisablePredefinedCacheEx can be instantiated', () {
      check(_RegDisablePredefinedCacheEx).isA<Function>();
    });
    test('RegDisableReflectionKey can be instantiated', () {
      check(_RegDisableReflectionKey).isA<Function>();
    });
    test('RegEnableReflectionKey can be instantiated', () {
      check(_RegEnableReflectionKey).isA<Function>();
    });
    test('RegEnumKey can be instantiated', () {
      check(_RegEnumKey).isA<Function>();
    });
    test('RegEnumKeyEx can be instantiated', () {
      check(_RegEnumKeyEx).isA<Function>();
    });
    test('RegEnumValue can be instantiated', () {
      check(_RegEnumValue).isA<Function>();
    });
    test('RegFlushKey can be instantiated', () {
      check(_RegFlushKey).isA<Function>();
    });
    test('RegGetValue can be instantiated', () {
      check(_RegGetValue).isA<Function>();
    });
    test('RegisterServiceCtrlHandler can be instantiated', () {
      check(RegisterServiceCtrlHandlerW_Wrapper).isA<Function>();
    });
    test('RegisterServiceCtrlHandlerEx can be instantiated', () {
      check(RegisterServiceCtrlHandlerExW_Wrapper).isA<Function>();
    });
    test('RegLoadAppKey can be instantiated', () {
      check(_RegLoadAppKey).isA<Function>();
    });
    test('RegLoadKey can be instantiated', () {
      check(_RegLoadKey).isA<Function>();
    });
    test('RegLoadMUIString can be instantiated', () {
      check(_RegLoadMUIString).isA<Function>();
    });
    test('RegNotifyChangeKeyValue can be instantiated', () {
      check(_RegNotifyChangeKeyValue).isA<Function>();
    });
    test('RegOpenCurrentUser can be instantiated', () {
      check(_RegOpenCurrentUser).isA<Function>();
    });
    test('RegOpenKey can be instantiated', () {
      check(_RegOpenKey).isA<Function>();
    });
    test('RegOpenKeyEx can be instantiated', () {
      check(_RegOpenKeyEx).isA<Function>();
    });
    test('RegOpenKeyTransacted can be instantiated', () {
      check(_RegOpenKeyTransacted).isA<Function>();
    });
    test('RegOpenUserClassesRoot can be instantiated', () {
      check(_RegOpenUserClassesRoot).isA<Function>();
    });
    test('RegOverridePredefKey can be instantiated', () {
      check(_RegOverridePredefKey).isA<Function>();
    });
    test('RegQueryInfoKey can be instantiated', () {
      check(_RegQueryInfoKey).isA<Function>();
    });
    test('RegQueryMultipleValues can be instantiated', () {
      check(_RegQueryMultipleValues).isA<Function>();
    });
    test('RegQueryReflectionKey can be instantiated', () {
      check(_RegQueryReflectionKey).isA<Function>();
    });
    test('RegQueryValue can be instantiated', () {
      check(_RegQueryValue).isA<Function>();
    });
    test('RegQueryValueEx can be instantiated', () {
      check(_RegQueryValueEx).isA<Function>();
    });
    test('RegRenameKey can be instantiated', () {
      check(_RegRenameKey).isA<Function>();
    });
    test('RegReplaceKey can be instantiated', () {
      check(_RegReplaceKey).isA<Function>();
    });
    test('RegRestoreKey can be instantiated', () {
      check(_RegRestoreKey).isA<Function>();
    });
    test('RegSaveKey can be instantiated', () {
      check(_RegSaveKey).isA<Function>();
    });
    test('RegSaveKeyEx can be instantiated', () {
      check(_RegSaveKeyEx).isA<Function>();
    });
    test('RegSetKeyValue can be instantiated', () {
      check(_RegSetKeyValue).isA<Function>();
    });
    test('RegSetValue can be instantiated', () {
      check(_RegSetValue).isA<Function>();
    });
    test('RegSetValueEx can be instantiated', () {
      check(_RegSetValueEx).isA<Function>();
    });
    test('RegUnLoadKey can be instantiated', () {
      check(_RegUnLoadKey).isA<Function>();
    });
    test('SetServiceObjectSecurity can be instantiated', () {
      check(SetServiceObjectSecurity_Wrapper).isA<Function>();
    });
    test('SetServiceStatus can be instantiated', () {
      check(SetServiceStatus_Wrapper).isA<Function>();
    });
    test('SetThreadToken can be instantiated', () {
      check(SetThreadToken_Wrapper).isA<Function>();
    });
    test('StartService can be instantiated', () {
      check(StartServiceW_Wrapper).isA<Function>();
    });
    test('StartServiceCtrlDispatcher can be instantiated', () {
      check(StartServiceCtrlDispatcherW_Wrapper).isA<Function>();
    });
  });
}

@Native<Void Function(Pointer)>(symbol: 'CredFree')
external void _CredFree(Pointer buffer);

@Native<Uint32 Function(PCWSTR, PCWSTR, Uint32, Uint32, Uint32)>(
  symbol: 'InitiateShutdownW',
)
external int _InitiateShutdown(
  PCWSTR lpMachineName,
  PCWSTR lpMessage,
  int dwGracePeriod,
  int dwShutdownFlags,
  int dwReason,
);

@Native<Uint32 Function(SC_HANDLE, Uint32, Pointer<SERVICE_NOTIFY_2>)>(
  symbol: 'NotifyServiceStatusChangeW',
)
external int _NotifyServiceStatusChange(
  int hService,
  int dwNotifyMask,
  Pointer<SERVICE_NOTIFY_2> pNotifyBuffer,
);

@Native<Uint32 Function(HKEY)>(symbol: 'RegCloseKey')
external int _RegCloseKey(int hKey);

@Native<Uint32 Function(PCWSTR, HKEY, Pointer<HKEY>)>(
  symbol: 'RegConnectRegistryW',
)
external int _RegConnectRegistry(
  PCWSTR lpMachineName,
  int hKey,
  Pointer<HKEY> phkResult,
);

@Native<Uint32 Function(HKEY, PCWSTR, HKEY)>(symbol: 'RegCopyTreeW')
external int _RegCopyTree(int hKeySrc, PCWSTR lpSubKey, int hKeyDest);

@Native<Uint32 Function(HKEY, PCWSTR, Pointer<HKEY>)>(symbol: 'RegCreateKeyW')
external int _RegCreateKey(int hKey, PCWSTR lpSubKey, Pointer<HKEY> phkResult);

@Native<
  Uint32 Function(
    HKEY,
    PCWSTR,
    Uint32,
    PCWSTR,
    Uint32,
    Uint32,
    Pointer<SECURITY_ATTRIBUTES>,
    Pointer<HKEY>,
    Pointer<Uint32>,
  )
>(symbol: 'RegCreateKeyExW')
external int _RegCreateKeyEx(
  int hKey,
  PCWSTR lpSubKey,
  int reserved,
  PCWSTR lpClass,
  int dwOptions,
  int samDesired,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
  Pointer<HKEY> phkResult,
  Pointer<Uint32> lpdwDisposition,
);

@Native<
  Uint32 Function(
    HKEY,
    PCWSTR,
    Uint32,
    PCWSTR,
    Uint32,
    Uint32,
    Pointer<SECURITY_ATTRIBUTES>,
    Pointer<HKEY>,
    Pointer<Uint32>,
    HANDLE,
    Pointer,
  )
>(symbol: 'RegCreateKeyTransactedW')
external int _RegCreateKeyTransacted(
  int hKey,
  PCWSTR lpSubKey,
  int reserved,
  PCWSTR lpClass,
  int dwOptions,
  int samDesired,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
  Pointer<HKEY> phkResult,
  Pointer<Uint32> lpdwDisposition,
  int hTransaction,
  Pointer pExtendedParemeter,
);

@Native<Uint32 Function(HKEY, PCWSTR)>(symbol: 'RegDeleteKeyW')
external int _RegDeleteKey(int hKey, PCWSTR lpSubKey);

@Native<Uint32 Function(HKEY, PCWSTR, Uint32, Uint32)>(
  symbol: 'RegDeleteKeyExW',
)
external int _RegDeleteKeyEx(
  int hKey,
  PCWSTR lpSubKey,
  int samDesired,
  int reserved,
);

@Native<Uint32 Function(HKEY, PCWSTR, Uint32, Uint32, HANDLE, Pointer)>(
  symbol: 'RegDeleteKeyTransactedW',
)
external int _RegDeleteKeyTransacted(
  int hKey,
  PCWSTR lpSubKey,
  int samDesired,
  int reserved,
  int hTransaction,
  Pointer pExtendedParameter,
);

@Native<Uint32 Function(HKEY, PCWSTR, PCWSTR)>(symbol: 'RegDeleteKeyValueW')
external int _RegDeleteKeyValue(int hKey, PCWSTR lpSubKey, PCWSTR lpValueName);

@Native<Uint32 Function(HKEY, PCWSTR)>(symbol: 'RegDeleteTreeW')
external int _RegDeleteTree(int hKey, PCWSTR lpSubKey);

@Native<Uint32 Function(HKEY, PCWSTR)>(symbol: 'RegDeleteValueW')
external int _RegDeleteValue(int hKey, PCWSTR lpValueName);

@Native<Uint32 Function()>(symbol: 'RegDisablePredefinedCache')
external int _RegDisablePredefinedCache();

@Native<Uint32 Function()>(symbol: 'RegDisablePredefinedCacheEx')
external int _RegDisablePredefinedCacheEx();

@Native<Uint32 Function(HKEY)>(symbol: 'RegDisableReflectionKey')
external int _RegDisableReflectionKey(int hBase);

@Native<Uint32 Function(HKEY)>(symbol: 'RegEnableReflectionKey')
external int _RegEnableReflectionKey(int hBase);

@Native<Uint32 Function(HKEY, Uint32, PWSTR, Uint32)>(symbol: 'RegEnumKeyW')
external int _RegEnumKey(int hKey, int dwIndex, PWSTR lpName, int cchName);

@Native<
  Uint32 Function(
    HKEY,
    Uint32,
    PWSTR,
    Pointer<Uint32>,
    Pointer<Uint32>,
    PWSTR,
    Pointer<Uint32>,
    Pointer<FILETIME>,
  )
>(symbol: 'RegEnumKeyExW')
external int _RegEnumKeyEx(
  int hKey,
  int dwIndex,
  PWSTR lpName,
  Pointer<Uint32> lpcchName,
  Pointer<Uint32> lpReserved,
  PWSTR lpClass,
  Pointer<Uint32> lpcchClass,
  Pointer<FILETIME> lpftLastWriteTime,
);

@Native<
  Uint32 Function(
    HKEY,
    Uint32,
    PWSTR,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint8>,
    Pointer<Uint32>,
  )
>(symbol: 'RegEnumValueW')
external int _RegEnumValue(
  int hKey,
  int dwIndex,
  PWSTR lpValueName,
  Pointer<Uint32> lpcchValueName,
  Pointer<Uint32> lpReserved,
  Pointer<Uint32> lpType,
  Pointer<Uint8> lpData,
  Pointer<Uint32> lpcbData,
);

@Native<Uint32 Function(HKEY)>(symbol: 'RegFlushKey')
external int _RegFlushKey(int hKey);

@Native<
  Uint32 Function(
    HKEY,
    PCWSTR,
    PCWSTR,
    Uint32,
    Pointer<Uint32>,
    Pointer,
    Pointer<Uint32>,
  )
>(symbol: 'RegGetValueW')
external int _RegGetValue(
  int hkey,
  PCWSTR lpSubKey,
  PCWSTR lpValue,
  int dwFlags,
  Pointer<Uint32> pdwType,
  Pointer pvData,
  Pointer<Uint32> pcbData,
);

@Native<Uint32 Function(PCWSTR, Pointer<HKEY>, Uint32, Uint32, Uint32)>(
  symbol: 'RegLoadAppKeyW',
)
external int _RegLoadAppKey(
  PCWSTR lpFile,
  Pointer<HKEY> phkResult,
  int samDesired,
  int dwOptions,
  int reserved,
);

@Native<Uint32 Function(HKEY, PCWSTR, PCWSTR)>(symbol: 'RegLoadKeyW')
external int _RegLoadKey(int hKey, PCWSTR lpSubKey, PCWSTR lpFile);

@Native<
  Uint32 Function(HKEY, PCWSTR, PWSTR, Uint32, Pointer<Uint32>, Uint32, PCWSTR)
>(symbol: 'RegLoadMUIStringW')
external int _RegLoadMUIString(
  int hKey,
  PCWSTR pszValue,
  PWSTR pszOutBuf,
  int cbOutBuf,
  Pointer<Uint32> pcbData,
  int flags,
  PCWSTR pszDirectory,
);

@Native<Uint32 Function(HKEY, BOOL, Uint32, HANDLE, BOOL)>(
  symbol: 'RegNotifyChangeKeyValue',
)
external int _RegNotifyChangeKeyValue(
  int hKey,
  int bWatchSubtree,
  int dwNotifyFilter,
  int hEvent,
  int fAsynchronous,
);

@Native<Uint32 Function(Uint32, Pointer<HKEY>)>(symbol: 'RegOpenCurrentUser')
external int _RegOpenCurrentUser(int samDesired, Pointer<HKEY> phkResult);

@Native<Uint32 Function(HKEY, PCWSTR, Pointer<HKEY>)>(symbol: 'RegOpenKeyW')
external int _RegOpenKey(int hKey, PCWSTR lpSubKey, Pointer<HKEY> phkResult);

@Native<Uint32 Function(HKEY, PCWSTR, Uint32, Uint32, Pointer<HKEY>)>(
  symbol: 'RegOpenKeyExW',
)
external int _RegOpenKeyEx(
  int hKey,
  PCWSTR lpSubKey,
  int ulOptions,
  int samDesired,
  Pointer<HKEY> phkResult,
);

@Native<
  Uint32 Function(HKEY, PCWSTR, Uint32, Uint32, Pointer<HKEY>, HANDLE, Pointer)
>(symbol: 'RegOpenKeyTransactedW')
external int _RegOpenKeyTransacted(
  int hKey,
  PCWSTR lpSubKey,
  int ulOptions,
  int samDesired,
  Pointer<HKEY> phkResult,
  int hTransaction,
  Pointer pExtendedParemeter,
);

@Native<Uint32 Function(HANDLE, Uint32, Uint32, Pointer<HKEY>)>(
  symbol: 'RegOpenUserClassesRoot',
)
external int _RegOpenUserClassesRoot(
  int hToken,
  int dwOptions,
  int samDesired,
  Pointer<HKEY> phkResult,
);

@Native<Uint32 Function(HKEY, HKEY)>(symbol: 'RegOverridePredefKey')
external int _RegOverridePredefKey(int hKey, int hNewHKey);

@Native<
  Uint32 Function(
    HKEY,
    PWSTR,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<FILETIME>,
  )
>(symbol: 'RegQueryInfoKeyW')
external int _RegQueryInfoKey(
  int hKey,
  PWSTR lpClass,
  Pointer<Uint32> lpcchClass,
  Pointer<Uint32> lpReserved,
  Pointer<Uint32> lpcSubKeys,
  Pointer<Uint32> lpcbMaxSubKeyLen,
  Pointer<Uint32> lpcbMaxClassLen,
  Pointer<Uint32> lpcValues,
  Pointer<Uint32> lpcbMaxValueNameLen,
  Pointer<Uint32> lpcbMaxValueLen,
  Pointer<Uint32> lpcbSecurityDescriptor,
  Pointer<FILETIME> lpftLastWriteTime,
);

@Native<Uint32 Function(HKEY, Pointer<VALENT>, Uint32, PWSTR, Pointer<Uint32>)>(
  symbol: 'RegQueryMultipleValuesW',
)
external int _RegQueryMultipleValues(
  int hKey,
  Pointer<VALENT> val_list,
  int num_vals,
  PWSTR lpValueBuf,
  Pointer<Uint32> ldwTotsize,
);

@Native<Uint32 Function(HKEY, Pointer<BOOL>)>(symbol: 'RegQueryReflectionKey')
external int _RegQueryReflectionKey(
  int hBase,
  Pointer<BOOL> bIsReflectionDisabled,
);

@Native<Uint32 Function(HKEY, PCWSTR, PWSTR, Pointer<Int32>)>(
  symbol: 'RegQueryValueW',
)
external int _RegQueryValue(
  int hKey,
  PCWSTR lpSubKey,
  PWSTR lpData,
  Pointer<Int32> lpcbData,
);

@Native<
  Uint32 Function(
    HKEY,
    PCWSTR,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint8>,
    Pointer<Uint32>,
  )
>(symbol: 'RegQueryValueExW')
external int _RegQueryValueEx(
  int hKey,
  PCWSTR lpValueName,
  Pointer<Uint32> lpReserved,
  Pointer<Uint32> lpType,
  Pointer<Uint8> lpData,
  Pointer<Uint32> lpcbData,
);

@Native<Uint32 Function(HKEY, PCWSTR, PCWSTR)>(symbol: 'RegRenameKey')
external int _RegRenameKey(int hKey, PCWSTR lpSubKeyName, PCWSTR lpNewKeyName);

@Native<Uint32 Function(HKEY, PCWSTR, PCWSTR, PCWSTR)>(symbol: 'RegReplaceKeyW')
external int _RegReplaceKey(
  int hKey,
  PCWSTR lpSubKey,
  PCWSTR lpNewFile,
  PCWSTR lpOldFile,
);

@Native<Uint32 Function(HKEY, PCWSTR, Uint32)>(symbol: 'RegRestoreKeyW')
external int _RegRestoreKey(int hKey, PCWSTR lpFile, int dwFlags);

@Native<Uint32 Function(HKEY, PCWSTR, Pointer<SECURITY_ATTRIBUTES>)>(
  symbol: 'RegSaveKeyW',
)
external int _RegSaveKey(
  int hKey,
  PCWSTR lpFile,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
);

@Native<Uint32 Function(HKEY, PCWSTR, Pointer<SECURITY_ATTRIBUTES>, Uint32)>(
  symbol: 'RegSaveKeyExW',
)
external int _RegSaveKeyEx(
  int hKey,
  PCWSTR lpFile,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
  int flags,
);

@Native<Uint32 Function(HKEY, PCWSTR, PCWSTR, Uint32, Pointer, Uint32)>(
  symbol: 'RegSetKeyValueW',
)
external int _RegSetKeyValue(
  int hKey,
  PCWSTR lpSubKey,
  PCWSTR lpValueName,
  int dwType,
  Pointer lpData,
  int cbData,
);

@Native<Uint32 Function(HKEY, PCWSTR, Uint32, PCWSTR, Uint32)>(
  symbol: 'RegSetValueW',
)
external int _RegSetValue(
  int hKey,
  PCWSTR lpSubKey,
  int dwType,
  PCWSTR lpData,
  int cbData,
);

@Native<Uint32 Function(HKEY, PCWSTR, Uint32, Uint32, Pointer<Uint8>, Uint32)>(
  symbol: 'RegSetValueExW',
)
external int _RegSetValueEx(
  int hKey,
  PCWSTR lpValueName,
  int reserved,
  int dwType,
  Pointer<Uint8> lpData,
  int cbData,
);

@Native<Uint32 Function(HKEY, PCWSTR)>(symbol: 'RegUnLoadKeyW')
external int _RegUnLoadKey(int hKey, PCWSTR lpSubKey);
