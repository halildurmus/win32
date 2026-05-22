// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated).
//
// ignore_for_file: non_constant_identifier_names, unnecessary_ignore
// ignore_for_file: specify_nonobvious_property_types, unused_import

@TestOn('windows')
library;

import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:ffi/ffi.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

import '../../helpers.dart';

void main() {
  group('advapi32.dll', () {
    test('ChangeServiceConfig2 can be instantiated', () {
      check(_ChangeServiceConfig2).isA<Function>();
    });
    test('CloseServiceHandle can be instantiated', () {
      check(_CloseServiceHandle).isA<Function>();
    });
    test('CloseTrace can be instantiated', () {
      check(_CloseTrace).isA<Function>();
    });
    test('ControlService can be instantiated', () {
      check(_ControlService).isA<Function>();
    });
    test('ControlServiceEx can be instantiated', () {
      check(_ControlServiceEx).isA<Function>();
    });
    test('CredDelete can be instantiated', () {
      check(_CredDelete).isA<Function>();
    });
    test('CredFree can be instantiated', () {
      check(_CredFree).isA<Function>();
    });
    test('CredRead can be instantiated', () {
      check(_CredRead).isA<Function>();
    });
    test('CredWrite can be instantiated', () {
      check(_CredWrite).isA<Function>();
    });
    test('DecryptFile can be instantiated', () {
      check(_DecryptFile).isA<Function>();
    });
    test('DeleteService can be instantiated', () {
      check(_DeleteService).isA<Function>();
    });
    test('EncryptFile can be instantiated', () {
      check(_EncryptFile).isA<Function>();
    });
    test('EnumDependentServices can be instantiated', () {
      check(_EnumDependentServices).isA<Function>();
    });
    test('EnumServicesStatus can be instantiated', () {
      check(_EnumServicesStatus).isA<Function>();
    });
    test('EnumServicesStatusEx can be instantiated', () {
      check(_EnumServicesStatusEx).isA<Function>();
    });
    test('FileEncryptionStatus can be instantiated', () {
      check(_FileEncryptionStatus).isA<Function>();
    });
    test('GetServiceDisplayName can be instantiated', () {
      check(_GetServiceDisplayName).isA<Function>();
    });
    test('GetServiceKeyName can be instantiated', () {
      check(_GetServiceKeyName).isA<Function>();
    });
    test('GetTokenInformation can be instantiated', () {
      check(_GetTokenInformation).isA<Function>();
    });
    test('GetUserName can be instantiated', () {
      check(_GetUserName).isA<Function>();
    });
    test('InitiateShutdown can be instantiated', () {
      check(_InitiateShutdown).isA<Function>();
    });
    test('NotifyBootConfigStatus can be instantiated', () {
      check(_NotifyBootConfigStatus).isA<Function>();
    });
    test('NotifyServiceStatusChange can be instantiated', () {
      check(_NotifyServiceStatusChange).isA<Function>();
    });
    test('OpenProcessToken can be instantiated', () {
      check(_OpenProcessToken).isA<Function>();
    });
    test('OpenSCManager can be instantiated', () {
      check(_OpenSCManager).isA<Function>();
    });
    test('OpenService can be instantiated', () {
      check(_OpenService).isA<Function>();
    });
    test('OpenThreadToken can be instantiated', () {
      check(_OpenThreadToken).isA<Function>();
    });
    test('QueryServiceConfig can be instantiated', () {
      check(_QueryServiceConfig).isA<Function>();
    });
    test('QueryServiceConfig2 can be instantiated', () {
      check(_QueryServiceConfig2).isA<Function>();
    });
    test('QueryServiceDynamicInformation can be instantiated', () {
      check(_QueryServiceDynamicInformation).isA<Function>();
    });
    test('QueryServiceObjectSecurity can be instantiated', () {
      check(_QueryServiceObjectSecurity).isA<Function>();
    });
    test('QueryServiceStatus can be instantiated', () {
      check(_QueryServiceStatus).isA<Function>();
    });
    test('QueryServiceStatusEx can be instantiated', () {
      check(_QueryServiceStatusEx).isA<Function>();
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
      check(_RegisterServiceCtrlHandler).isA<Function>();
    });
    test('RegisterServiceCtrlHandlerEx can be instantiated', () {
      check(_RegisterServiceCtrlHandlerEx).isA<Function>();
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
      check(_SetServiceObjectSecurity).isA<Function>();
    });
    test('SetServiceStatus can be instantiated', () {
      check(_SetServiceStatus).isA<Function>();
    });
    test('SetThreadToken can be instantiated', () {
      check(_SetThreadToken).isA<Function>();
    });
    test('StartService can be instantiated', () {
      check(_StartService).isA<Function>();
    });
    test('StartServiceCtrlDispatcher can be instantiated', () {
      check(_StartServiceCtrlDispatcher).isA<Function>();
    });
  });
}

final _advapi32 = DynamicLibrary.open('advapi32.dll');

final _ChangeServiceConfig2 = _advapi32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Pointer),
      int Function(Pointer, int, Pointer)
    >('ChangeServiceConfig2W');

final _CloseServiceHandle = _advapi32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'CloseServiceHandle',
    );

final _CloseTrace = _advapi32
    .lookupFunction<Uint32 Function(Uint64), int Function(int)>('CloseTrace');

final _ControlService = _advapi32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Pointer<SERVICE_STATUS>),
      int Function(Pointer, int, Pointer<SERVICE_STATUS>)
    >('ControlService');

final _ControlServiceEx = _advapi32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Uint32, Pointer),
      int Function(Pointer, int, int, Pointer)
    >('ControlServiceExW');

final _CredDelete = _advapi32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Uint32, Uint32),
      int Function(Pointer<Utf16>, int, int)
    >('CredDeleteW');

final _CredFree = _advapi32
    .lookupFunction<Void Function(Pointer), void Function(Pointer)>('CredFree');

final _CredRead = _advapi32
    .lookupFunction<
      Int32 Function(
        Pointer<Utf16>,
        Uint32,
        Uint32,
        Pointer<Pointer<CREDENTIAL>>,
      ),
      int Function(Pointer<Utf16>, int, int, Pointer<Pointer<CREDENTIAL>>)
    >('CredReadW');

final _CredWrite = _advapi32
    .lookupFunction<
      Int32 Function(Pointer<CREDENTIAL>, Uint32),
      int Function(Pointer<CREDENTIAL>, int)
    >('CredWriteW');

final _DecryptFile = _advapi32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Uint32),
      int Function(Pointer<Utf16>, int)
    >('DecryptFileW');

final _DeleteService = _advapi32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'DeleteService',
    );

final _EncryptFile = _advapi32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>),
      int Function(Pointer<Utf16>)
    >('EncryptFileW');

final _EnumDependentServices = _advapi32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Uint32,
        Pointer<ENUM_SERVICE_STATUS>,
        Uint32,
        Pointer<Uint32>,
        Pointer<Uint32>,
      ),
      int Function(
        Pointer,
        int,
        Pointer<ENUM_SERVICE_STATUS>,
        int,
        Pointer<Uint32>,
        Pointer<Uint32>,
      )
    >('EnumDependentServicesW');

final _EnumServicesStatus = _advapi32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Uint32,
        Uint32,
        Pointer<ENUM_SERVICE_STATUS>,
        Uint32,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Uint32>,
      ),
      int Function(
        Pointer,
        int,
        int,
        Pointer<ENUM_SERVICE_STATUS>,
        int,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Uint32>,
      )
    >('EnumServicesStatusW');

final _EnumServicesStatusEx = _advapi32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Int32,
        Uint32,
        Uint32,
        Pointer<Uint8>,
        Uint32,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Utf16>,
      ),
      int Function(
        Pointer,
        int,
        int,
        int,
        Pointer<Uint8>,
        int,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Utf16>,
      )
    >('EnumServicesStatusExW');

final _FileEncryptionStatus = _advapi32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<Uint32>),
      int Function(Pointer<Utf16>, Pointer<Uint32>)
    >('FileEncryptionStatusW');

final _GetServiceDisplayName = _advapi32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Utf16>, Pointer<Utf16>, Pointer<Uint32>),
      int Function(Pointer, Pointer<Utf16>, Pointer<Utf16>, Pointer<Uint32>)
    >('GetServiceDisplayNameW');

final _GetServiceKeyName = _advapi32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Utf16>, Pointer<Utf16>, Pointer<Uint32>),
      int Function(Pointer, Pointer<Utf16>, Pointer<Utf16>, Pointer<Uint32>)
    >('GetServiceKeyNameW');

final _GetTokenInformation = _advapi32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Pointer, Uint32, Pointer<Uint32>),
      int Function(Pointer, int, Pointer, int, Pointer<Uint32>)
    >('GetTokenInformation');

final _GetUserName = _advapi32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<Uint32>),
      int Function(Pointer<Utf16>, Pointer<Uint32>)
    >('GetUserNameW');

final _InitiateShutdown = _advapi32
    .lookupFunction<
      Uint32 Function(Pointer<Utf16>, Pointer<Utf16>, Uint32, Uint32, Uint32),
      int Function(Pointer<Utf16>, Pointer<Utf16>, int, int, int)
    >('InitiateShutdownW');

final _NotifyBootConfigStatus = _advapi32
    .lookupFunction<Int32 Function(Int32), int Function(int)>(
      'NotifyBootConfigStatus',
    );

final _NotifyServiceStatusChange = _advapi32
    .lookupFunction<
      Uint32 Function(Pointer, Uint32, Pointer<SERVICE_NOTIFY_2>),
      int Function(Pointer, int, Pointer<SERVICE_NOTIFY_2>)
    >('NotifyServiceStatusChangeW');

final _OpenProcessToken = _advapi32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Pointer<Pointer>),
      int Function(Pointer, int, Pointer<Pointer>)
    >('OpenProcessToken');

final _OpenSCManager = _advapi32
    .lookupFunction<
      Pointer Function(Pointer<Utf16>, Pointer<Utf16>, Uint32),
      Pointer Function(Pointer<Utf16>, Pointer<Utf16>, int)
    >('OpenSCManagerW');

final _OpenService = _advapi32
    .lookupFunction<
      Pointer Function(Pointer, Pointer<Utf16>, Uint32),
      Pointer Function(Pointer, Pointer<Utf16>, int)
    >('OpenServiceW');

final _OpenThreadToken = _advapi32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Int32, Pointer<Pointer>),
      int Function(Pointer, int, int, Pointer<Pointer>)
    >('OpenThreadToken');

final _QueryServiceConfig = _advapi32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Pointer<QUERY_SERVICE_CONFIG>,
        Uint32,
        Pointer<Uint32>,
      ),
      int Function(Pointer, Pointer<QUERY_SERVICE_CONFIG>, int, Pointer<Uint32>)
    >('QueryServiceConfigW');

final _QueryServiceConfig2 = _advapi32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Pointer<Uint8>, Uint32, Pointer<Uint32>),
      int Function(Pointer, int, Pointer<Uint8>, int, Pointer<Uint32>)
    >('QueryServiceConfig2W');

final _QueryServiceDynamicInformation = _advapi32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Pointer<Pointer>),
      int Function(Pointer, int, Pointer<Pointer>)
    >('QueryServiceDynamicInformation');

final _QueryServiceObjectSecurity = _advapi32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Pointer, Uint32, Pointer<Uint32>),
      int Function(Pointer, int, Pointer, int, Pointer<Uint32>)
    >('QueryServiceObjectSecurity');

final _QueryServiceStatus = _advapi32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<SERVICE_STATUS>),
      int Function(Pointer, Pointer<SERVICE_STATUS>)
    >('QueryServiceStatus');

final _QueryServiceStatusEx = _advapi32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Pointer<Uint8>, Uint32, Pointer<Uint32>),
      int Function(Pointer, int, Pointer<Uint8>, int, Pointer<Uint32>)
    >('QueryServiceStatusEx');

final _RegCloseKey = _advapi32
    .lookupFunction<Uint32 Function(Pointer), int Function(Pointer)>(
      'RegCloseKey',
    );

final _RegConnectRegistry = _advapi32
    .lookupFunction<
      Uint32 Function(Pointer<Utf16>, Pointer, Pointer<Pointer>),
      int Function(Pointer<Utf16>, Pointer, Pointer<Pointer>)
    >('RegConnectRegistryW');

final _RegCopyTree = _advapi32
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Utf16>, Pointer),
      int Function(Pointer, Pointer<Utf16>, Pointer)
    >('RegCopyTreeW');

final _RegCreateKey = _advapi32
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Utf16>, Pointer<Pointer>),
      int Function(Pointer, Pointer<Utf16>, Pointer<Pointer>)
    >('RegCreateKeyW');

final _RegCreateKeyEx = _advapi32
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Pointer<Utf16>,
        Uint32,
        Pointer<Utf16>,
        Uint32,
        Uint32,
        Pointer<SECURITY_ATTRIBUTES>,
        Pointer<Pointer>,
        Pointer<Uint32>,
      ),
      int Function(
        Pointer,
        Pointer<Utf16>,
        int,
        Pointer<Utf16>,
        int,
        int,
        Pointer<SECURITY_ATTRIBUTES>,
        Pointer<Pointer>,
        Pointer<Uint32>,
      )
    >('RegCreateKeyExW');

final _RegCreateKeyTransacted = _advapi32
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Pointer<Utf16>,
        Uint32,
        Pointer<Utf16>,
        Uint32,
        Uint32,
        Pointer<SECURITY_ATTRIBUTES>,
        Pointer<Pointer>,
        Pointer<Uint32>,
        Pointer,
        Pointer,
      ),
      int Function(
        Pointer,
        Pointer<Utf16>,
        int,
        Pointer<Utf16>,
        int,
        int,
        Pointer<SECURITY_ATTRIBUTES>,
        Pointer<Pointer>,
        Pointer<Uint32>,
        Pointer,
        Pointer,
      )
    >('RegCreateKeyTransactedW');

final _RegDeleteKey = _advapi32
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Utf16>),
      int Function(Pointer, Pointer<Utf16>)
    >('RegDeleteKeyW');

final _RegDeleteKeyEx = _advapi32
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Utf16>, Uint32, Uint32),
      int Function(Pointer, Pointer<Utf16>, int, int)
    >('RegDeleteKeyExW');

final _RegDeleteKeyTransacted = _advapi32
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Pointer<Utf16>,
        Uint32,
        Uint32,
        Pointer,
        Pointer,
      ),
      int Function(Pointer, Pointer<Utf16>, int, int, Pointer, Pointer)
    >('RegDeleteKeyTransactedW');

final _RegDeleteKeyValue = _advapi32
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Utf16>, Pointer<Utf16>),
      int Function(Pointer, Pointer<Utf16>, Pointer<Utf16>)
    >('RegDeleteKeyValueW');

final _RegDeleteTree = _advapi32
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Utf16>),
      int Function(Pointer, Pointer<Utf16>)
    >('RegDeleteTreeW');

final _RegDeleteValue = _advapi32
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Utf16>),
      int Function(Pointer, Pointer<Utf16>)
    >('RegDeleteValueW');

final _RegDisablePredefinedCache = _advapi32
    .lookupFunction<Uint32 Function(), int Function()>(
      'RegDisablePredefinedCache',
    );

final _RegDisablePredefinedCacheEx = _advapi32
    .lookupFunction<Uint32 Function(), int Function()>(
      'RegDisablePredefinedCacheEx',
    );

final _RegDisableReflectionKey = _advapi32
    .lookupFunction<Uint32 Function(Pointer), int Function(Pointer)>(
      'RegDisableReflectionKey',
    );

final _RegEnableReflectionKey = _advapi32
    .lookupFunction<Uint32 Function(Pointer), int Function(Pointer)>(
      'RegEnableReflectionKey',
    );

final _RegEnumKey = _advapi32
    .lookupFunction<
      Uint32 Function(Pointer, Uint32, Pointer<Utf16>, Uint32),
      int Function(Pointer, int, Pointer<Utf16>, int)
    >('RegEnumKeyW');

final _RegEnumKeyEx = _advapi32
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Uint32,
        Pointer<Utf16>,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Utf16>,
        Pointer<Uint32>,
        Pointer<FILETIME>,
      ),
      int Function(
        Pointer,
        int,
        Pointer<Utf16>,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Utf16>,
        Pointer<Uint32>,
        Pointer<FILETIME>,
      )
    >('RegEnumKeyExW');

final _RegEnumValue = _advapi32
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Uint32,
        Pointer<Utf16>,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Uint8>,
        Pointer<Uint32>,
      ),
      int Function(
        Pointer,
        int,
        Pointer<Utf16>,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Uint8>,
        Pointer<Uint32>,
      )
    >('RegEnumValueW');

final _RegFlushKey = _advapi32
    .lookupFunction<Uint32 Function(Pointer), int Function(Pointer)>(
      'RegFlushKey',
    );

final _RegGetValue = _advapi32
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Uint32,
        Pointer<Uint32>,
        Pointer,
        Pointer<Uint32>,
      ),
      int Function(
        Pointer,
        Pointer<Utf16>,
        Pointer<Utf16>,
        int,
        Pointer<Uint32>,
        Pointer,
        Pointer<Uint32>,
      )
    >('RegGetValueW');

final _RegisterServiceCtrlHandler = _advapi32
    .lookupFunction<
      Pointer Function(
        Pointer<Utf16>,
        Pointer<NativeFunction<LPHANDLER_FUNCTION>>,
      ),
      Pointer Function(
        Pointer<Utf16>,
        Pointer<NativeFunction<LPHANDLER_FUNCTION>>,
      )
    >('RegisterServiceCtrlHandlerW');

final _RegisterServiceCtrlHandlerEx = _advapi32
    .lookupFunction<
      Pointer Function(
        Pointer<Utf16>,
        Pointer<NativeFunction<LPHANDLER_FUNCTION_EX>>,
        Pointer,
      ),
      Pointer Function(
        Pointer<Utf16>,
        Pointer<NativeFunction<LPHANDLER_FUNCTION_EX>>,
        Pointer,
      )
    >('RegisterServiceCtrlHandlerExW');

final _RegLoadAppKey = _advapi32
    .lookupFunction<
      Uint32 Function(Pointer<Utf16>, Pointer<Pointer>, Uint32, Uint32, Uint32),
      int Function(Pointer<Utf16>, Pointer<Pointer>, int, int, int)
    >('RegLoadAppKeyW');

final _RegLoadKey = _advapi32
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Utf16>, Pointer<Utf16>),
      int Function(Pointer, Pointer<Utf16>, Pointer<Utf16>)
    >('RegLoadKeyW');

final _RegLoadMUIString = _advapi32
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Uint32,
        Pointer<Uint32>,
        Uint32,
        Pointer<Utf16>,
      ),
      int Function(
        Pointer,
        Pointer<Utf16>,
        Pointer<Utf16>,
        int,
        Pointer<Uint32>,
        int,
        Pointer<Utf16>,
      )
    >('RegLoadMUIStringW');

final _RegNotifyChangeKeyValue = _advapi32
    .lookupFunction<
      Uint32 Function(Pointer, Int32, Uint32, Pointer, Int32),
      int Function(Pointer, int, int, Pointer, int)
    >('RegNotifyChangeKeyValue');

final _RegOpenCurrentUser = _advapi32
    .lookupFunction<
      Uint32 Function(Uint32, Pointer<Pointer>),
      int Function(int, Pointer<Pointer>)
    >('RegOpenCurrentUser');

final _RegOpenKey = _advapi32
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Utf16>, Pointer<Pointer>),
      int Function(Pointer, Pointer<Utf16>, Pointer<Pointer>)
    >('RegOpenKeyW');

final _RegOpenKeyEx = _advapi32
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Pointer<Utf16>,
        Uint32,
        Uint32,
        Pointer<Pointer>,
      ),
      int Function(Pointer, Pointer<Utf16>, int, int, Pointer<Pointer>)
    >('RegOpenKeyExW');

final _RegOpenKeyTransacted = _advapi32
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Pointer<Utf16>,
        Uint32,
        Uint32,
        Pointer<Pointer>,
        Pointer,
        Pointer,
      ),
      int Function(
        Pointer,
        Pointer<Utf16>,
        int,
        int,
        Pointer<Pointer>,
        Pointer,
        Pointer,
      )
    >('RegOpenKeyTransactedW');

final _RegOpenUserClassesRoot = _advapi32
    .lookupFunction<
      Uint32 Function(Pointer, Uint32, Uint32, Pointer<Pointer>),
      int Function(Pointer, int, int, Pointer<Pointer>)
    >('RegOpenUserClassesRoot');

final _RegOverridePredefKey = _advapi32
    .lookupFunction<
      Uint32 Function(Pointer, Pointer),
      int Function(Pointer, Pointer)
    >('RegOverridePredefKey');

final _RegQueryInfoKey = _advapi32
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Pointer<Utf16>,
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
      ),
      int Function(
        Pointer,
        Pointer<Utf16>,
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
    >('RegQueryInfoKeyW');

final _RegQueryMultipleValues = _advapi32
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Pointer<VALENT>,
        Uint32,
        Pointer<Utf16>,
        Pointer<Uint32>,
      ),
      int Function(
        Pointer,
        Pointer<VALENT>,
        int,
        Pointer<Utf16>,
        Pointer<Uint32>,
      )
    >('RegQueryMultipleValuesW');

final _RegQueryReflectionKey = _advapi32
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Int32>),
      int Function(Pointer, Pointer<Int32>)
    >('RegQueryReflectionKey');

final _RegQueryValue = _advapi32
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Utf16>, Pointer<Utf16>, Pointer<Int32>),
      int Function(Pointer, Pointer<Utf16>, Pointer<Utf16>, Pointer<Int32>)
    >('RegQueryValueW');

final _RegQueryValueEx = _advapi32
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Pointer<Utf16>,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Uint8>,
        Pointer<Uint32>,
      ),
      int Function(
        Pointer,
        Pointer<Utf16>,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Uint8>,
        Pointer<Uint32>,
      )
    >('RegQueryValueExW');

final _RegRenameKey = _advapi32
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Utf16>, Pointer<Utf16>),
      int Function(Pointer, Pointer<Utf16>, Pointer<Utf16>)
    >('RegRenameKey');

final _RegReplaceKey = _advapi32
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Utf16>, Pointer<Utf16>, Pointer<Utf16>),
      int Function(Pointer, Pointer<Utf16>, Pointer<Utf16>, Pointer<Utf16>)
    >('RegReplaceKeyW');

final _RegRestoreKey = _advapi32
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Utf16>, Uint32),
      int Function(Pointer, Pointer<Utf16>, int)
    >('RegRestoreKeyW');

final _RegSaveKey = _advapi32
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Utf16>, Pointer<SECURITY_ATTRIBUTES>),
      int Function(Pointer, Pointer<Utf16>, Pointer<SECURITY_ATTRIBUTES>)
    >('RegSaveKeyW');

final _RegSaveKeyEx = _advapi32
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Pointer<Utf16>,
        Pointer<SECURITY_ATTRIBUTES>,
        Uint32,
      ),
      int Function(Pointer, Pointer<Utf16>, Pointer<SECURITY_ATTRIBUTES>, int)
    >('RegSaveKeyExW');

final _RegSetKeyValue = _advapi32
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Uint32,
        Pointer,
        Uint32,
      ),
      int Function(Pointer, Pointer<Utf16>, Pointer<Utf16>, int, Pointer, int)
    >('RegSetKeyValueW');

final _RegSetValue = _advapi32
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Utf16>, Uint32, Pointer<Utf16>, Uint32),
      int Function(Pointer, Pointer<Utf16>, int, Pointer<Utf16>, int)
    >('RegSetValueW');

final _RegSetValueEx = _advapi32
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Pointer<Utf16>,
        Uint32,
        Uint32,
        Pointer<Uint8>,
        Uint32,
      ),
      int Function(Pointer, Pointer<Utf16>, int, int, Pointer<Uint8>, int)
    >('RegSetValueExW');

final _RegUnLoadKey = _advapi32
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Utf16>),
      int Function(Pointer, Pointer<Utf16>)
    >('RegUnLoadKeyW');

final _SetServiceObjectSecurity = _advapi32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Pointer),
      int Function(Pointer, int, Pointer)
    >('SetServiceObjectSecurity');

final _SetServiceStatus = _advapi32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<SERVICE_STATUS>),
      int Function(Pointer, Pointer<SERVICE_STATUS>)
    >('SetServiceStatus');

final _SetThreadToken = _advapi32
    .lookupFunction<
      Int32 Function(Pointer<Pointer>, Pointer),
      int Function(Pointer<Pointer>, Pointer)
    >('SetThreadToken');

final _StartService = _advapi32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Pointer<Pointer<Utf16>>),
      int Function(Pointer, int, Pointer<Pointer<Utf16>>)
    >('StartServiceW');

final _StartServiceCtrlDispatcher = _advapi32
    .lookupFunction<
      Int32 Function(Pointer<SERVICE_TABLE_ENTRY>),
      int Function(Pointer<SERVICE_TABLE_ENTRY>)
    >('StartServiceCtrlDispatcherW');
