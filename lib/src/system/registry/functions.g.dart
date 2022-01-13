// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../combase.dart';
import '../../guid.dart';
import '../../system/registry/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../security/structs.g.dart'; // -----------------------------------------------------------------------

// advapi32.dll
// -----------------------------------------------------------------------
final _advapi32 = DynamicLibrary.open('advapi32.dll');

int RegCloseKey(
  int hKey,
) =>
    _RegCloseKey(
      hKey,
    );

late final _RegCloseKey = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr hKey,
),
    int Function(
  int hKey,
)>('RegCloseKey');

int RegConnectRegistryEx(
  Pointer<Utf16> lpMachineName,
  int hKey,
  int Flags,
  Pointer<IntPtr> phkResult,
) =>
    _RegConnectRegistryEx(
      lpMachineName,
      hKey,
      Flags,
      phkResult,
    );

late final _RegConnectRegistryEx = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpMachineName,
  IntPtr hKey,
  Uint32 Flags,
  Pointer<IntPtr> phkResult,
),
    int Function(
  Pointer<Utf16> lpMachineName,
  int hKey,
  int Flags,
  Pointer<IntPtr> phkResult,
)>('RegConnectRegistryExW');

int RegConnectRegistry(
  Pointer<Utf16> lpMachineName,
  int hKey,
  Pointer<IntPtr> phkResult,
) =>
    _RegConnectRegistry(
      lpMachineName,
      hKey,
      phkResult,
    );

late final _RegConnectRegistry = _advapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpMachineName,
  IntPtr hKey,
  Pointer<IntPtr> phkResult,
),
    int Function(
  Pointer<Utf16> lpMachineName,
  int hKey,
  Pointer<IntPtr> phkResult,
)>('RegConnectRegistryW');

int RegCopyTree(
  int hKeySrc,
  Pointer<Utf16> lpSubKey,
  int hKeyDest,
) =>
    _RegCopyTree(
      hKeySrc,
      lpSubKey,
      hKeyDest,
    );

late final _RegCopyTree = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr hKeySrc,
  Pointer<Utf16> lpSubKey,
  IntPtr hKeyDest,
),
    int Function(
  int hKeySrc,
  Pointer<Utf16> lpSubKey,
  int hKeyDest,
)>('RegCopyTreeW');

int RegCreateKeyEx(
  int hKey,
  Pointer<Utf16> lpSubKey,
  int Reserved,
  Pointer<Utf16> lpClass,
  int dwOptions,
  int samDesired,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
  Pointer<IntPtr> phkResult,
  Pointer<Uint32> lpdwDisposition,
) =>
    _RegCreateKeyEx(
      hKey,
      lpSubKey,
      Reserved,
      lpClass,
      dwOptions,
      samDesired,
      lpSecurityAttributes,
      phkResult,
      lpdwDisposition,
    );

late final _RegCreateKeyEx = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr hKey,
  Pointer<Utf16> lpSubKey,
  Uint32 Reserved,
  Pointer<Utf16> lpClass,
  Uint32 dwOptions,
  Uint32 samDesired,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
  Pointer<IntPtr> phkResult,
  Pointer<Uint32> lpdwDisposition,
),
    int Function(
  int hKey,
  Pointer<Utf16> lpSubKey,
  int Reserved,
  Pointer<Utf16> lpClass,
  int dwOptions,
  int samDesired,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
  Pointer<IntPtr> phkResult,
  Pointer<Uint32> lpdwDisposition,
)>('RegCreateKeyExW');

int RegCreateKeyTransacted(
  int hKey,
  Pointer<Utf16> lpSubKey,
  int Reserved,
  Pointer<Utf16> lpClass,
  int dwOptions,
  int samDesired,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
  Pointer<IntPtr> phkResult,
  Pointer<Uint32> lpdwDisposition,
  int hTransaction,
  Pointer pExtendedParemeter,
) =>
    _RegCreateKeyTransacted(
      hKey,
      lpSubKey,
      Reserved,
      lpClass,
      dwOptions,
      samDesired,
      lpSecurityAttributes,
      phkResult,
      lpdwDisposition,
      hTransaction,
      pExtendedParemeter,
    );

late final _RegCreateKeyTransacted = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr hKey,
  Pointer<Utf16> lpSubKey,
  Uint32 Reserved,
  Pointer<Utf16> lpClass,
  Uint32 dwOptions,
  Uint32 samDesired,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
  Pointer<IntPtr> phkResult,
  Pointer<Uint32> lpdwDisposition,
  IntPtr hTransaction,
  Pointer pExtendedParemeter,
),
    int Function(
  int hKey,
  Pointer<Utf16> lpSubKey,
  int Reserved,
  Pointer<Utf16> lpClass,
  int dwOptions,
  int samDesired,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
  Pointer<IntPtr> phkResult,
  Pointer<Uint32> lpdwDisposition,
  int hTransaction,
  Pointer pExtendedParemeter,
)>('RegCreateKeyTransactedW');

int RegCreateKey(
  int hKey,
  Pointer<Utf16> lpSubKey,
  Pointer<IntPtr> phkResult,
) =>
    _RegCreateKey(
      hKey,
      lpSubKey,
      phkResult,
    );

late final _RegCreateKey = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr hKey,
  Pointer<Utf16> lpSubKey,
  Pointer<IntPtr> phkResult,
),
    int Function(
  int hKey,
  Pointer<Utf16> lpSubKey,
  Pointer<IntPtr> phkResult,
)>('RegCreateKeyW');

int RegDeleteKeyEx(
  int hKey,
  Pointer<Utf16> lpSubKey,
  int samDesired,
  int Reserved,
) =>
    _RegDeleteKeyEx(
      hKey,
      lpSubKey,
      samDesired,
      Reserved,
    );

late final _RegDeleteKeyEx = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr hKey,
  Pointer<Utf16> lpSubKey,
  Uint32 samDesired,
  Uint32 Reserved,
),
    int Function(
  int hKey,
  Pointer<Utf16> lpSubKey,
  int samDesired,
  int Reserved,
)>('RegDeleteKeyExW');

int RegDeleteKeyTransacted(
  int hKey,
  Pointer<Utf16> lpSubKey,
  int samDesired,
  int Reserved,
  int hTransaction,
  Pointer pExtendedParameter,
) =>
    _RegDeleteKeyTransacted(
      hKey,
      lpSubKey,
      samDesired,
      Reserved,
      hTransaction,
      pExtendedParameter,
    );

late final _RegDeleteKeyTransacted = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr hKey,
  Pointer<Utf16> lpSubKey,
  Uint32 samDesired,
  Uint32 Reserved,
  IntPtr hTransaction,
  Pointer pExtendedParameter,
),
    int Function(
  int hKey,
  Pointer<Utf16> lpSubKey,
  int samDesired,
  int Reserved,
  int hTransaction,
  Pointer pExtendedParameter,
)>('RegDeleteKeyTransactedW');

int RegDeleteKeyValue(
  int hKey,
  Pointer<Utf16> lpSubKey,
  Pointer<Utf16> lpValueName,
) =>
    _RegDeleteKeyValue(
      hKey,
      lpSubKey,
      lpValueName,
    );

late final _RegDeleteKeyValue = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr hKey,
  Pointer<Utf16> lpSubKey,
  Pointer<Utf16> lpValueName,
),
    int Function(
  int hKey,
  Pointer<Utf16> lpSubKey,
  Pointer<Utf16> lpValueName,
)>('RegDeleteKeyValueW');

int RegDeleteKey(
  int hKey,
  Pointer<Utf16> lpSubKey,
) =>
    _RegDeleteKey(
      hKey,
      lpSubKey,
    );

late final _RegDeleteKey = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr hKey,
  Pointer<Utf16> lpSubKey,
),
    int Function(
  int hKey,
  Pointer<Utf16> lpSubKey,
)>('RegDeleteKeyW');

int RegDeleteTree(
  int hKey,
  Pointer<Utf16> lpSubKey,
) =>
    _RegDeleteTree(
      hKey,
      lpSubKey,
    );

late final _RegDeleteTree = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr hKey,
  Pointer<Utf16> lpSubKey,
),
    int Function(
  int hKey,
  Pointer<Utf16> lpSubKey,
)>('RegDeleteTreeW');

int RegDeleteValue(
  int hKey,
  Pointer<Utf16> lpValueName,
) =>
    _RegDeleteValue(
      hKey,
      lpValueName,
    );

late final _RegDeleteValue = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr hKey,
  Pointer<Utf16> lpValueName,
),
    int Function(
  int hKey,
  Pointer<Utf16> lpValueName,
)>('RegDeleteValueW');

int RegDisablePredefinedCache() => _RegDisablePredefinedCache();

late final _RegDisablePredefinedCache =
    _advapi32.lookupFunction<Uint32 Function(), int Function()>(
        'RegDisablePredefinedCache');

int RegDisablePredefinedCacheEx() => _RegDisablePredefinedCacheEx();

late final _RegDisablePredefinedCacheEx =
    _advapi32.lookupFunction<Uint32 Function(), int Function()>(
        'RegDisablePredefinedCacheEx');

int RegDisableReflectionKey(
  int hBase,
) =>
    _RegDisableReflectionKey(
      hBase,
    );

late final _RegDisableReflectionKey = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr hBase,
),
    int Function(
  int hBase,
)>('RegDisableReflectionKey');

int RegEnableReflectionKey(
  int hBase,
) =>
    _RegEnableReflectionKey(
      hBase,
    );

late final _RegEnableReflectionKey = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr hBase,
),
    int Function(
  int hBase,
)>('RegEnableReflectionKey');

int RegEnumKeyEx(
  int hKey,
  int dwIndex,
  Pointer<Utf16> lpName,
  Pointer<Uint32> lpcchName,
  Pointer<Uint32> lpReserved,
  Pointer<Utf16> lpClass,
  Pointer<Uint32> lpcchClass,
  Pointer<FILETIME> lpftLastWriteTime,
) =>
    _RegEnumKeyEx(
      hKey,
      dwIndex,
      lpName,
      lpcchName,
      lpReserved,
      lpClass,
      lpcchClass,
      lpftLastWriteTime,
    );

late final _RegEnumKeyEx = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr hKey,
  Uint32 dwIndex,
  Pointer<Utf16> lpName,
  Pointer<Uint32> lpcchName,
  Pointer<Uint32> lpReserved,
  Pointer<Utf16> lpClass,
  Pointer<Uint32> lpcchClass,
  Pointer<FILETIME> lpftLastWriteTime,
),
    int Function(
  int hKey,
  int dwIndex,
  Pointer<Utf16> lpName,
  Pointer<Uint32> lpcchName,
  Pointer<Uint32> lpReserved,
  Pointer<Utf16> lpClass,
  Pointer<Uint32> lpcchClass,
  Pointer<FILETIME> lpftLastWriteTime,
)>('RegEnumKeyExW');

int RegEnumKey(
  int hKey,
  int dwIndex,
  Pointer<Utf16> lpName,
  int cchName,
) =>
    _RegEnumKey(
      hKey,
      dwIndex,
      lpName,
      cchName,
    );

late final _RegEnumKey = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr hKey,
  Uint32 dwIndex,
  Pointer<Utf16> lpName,
  Uint32 cchName,
),
    int Function(
  int hKey,
  int dwIndex,
  Pointer<Utf16> lpName,
  int cchName,
)>('RegEnumKeyW');

int RegEnumValue(
  int hKey,
  int dwIndex,
  Pointer<Utf16> lpValueName,
  Pointer<Uint32> lpcchValueName,
  Pointer<Uint32> lpReserved,
  Pointer<Uint32> lpType,
  Pointer<Uint8> lpData,
  Pointer<Uint32> lpcbData,
) =>
    _RegEnumValue(
      hKey,
      dwIndex,
      lpValueName,
      lpcchValueName,
      lpReserved,
      lpType,
      lpData,
      lpcbData,
    );

late final _RegEnumValue = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr hKey,
  Uint32 dwIndex,
  Pointer<Utf16> lpValueName,
  Pointer<Uint32> lpcchValueName,
  Pointer<Uint32> lpReserved,
  Pointer<Uint32> lpType,
  Pointer<Uint8> lpData,
  Pointer<Uint32> lpcbData,
),
    int Function(
  int hKey,
  int dwIndex,
  Pointer<Utf16> lpValueName,
  Pointer<Uint32> lpcchValueName,
  Pointer<Uint32> lpReserved,
  Pointer<Uint32> lpType,
  Pointer<Uint8> lpData,
  Pointer<Uint32> lpcbData,
)>('RegEnumValueW');

int RegFlushKey(
  int hKey,
) =>
    _RegFlushKey(
      hKey,
    );

late final _RegFlushKey = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr hKey,
),
    int Function(
  int hKey,
)>('RegFlushKey');

int RegGetKeySecurity(
  int hKey,
  int SecurityInformation,
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  Pointer<Uint32> lpcbSecurityDescriptor,
) =>
    _RegGetKeySecurity(
      hKey,
      SecurityInformation,
      pSecurityDescriptor,
      lpcbSecurityDescriptor,
    );

late final _RegGetKeySecurity = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr hKey,
  Uint32 SecurityInformation,
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  Pointer<Uint32> lpcbSecurityDescriptor,
),
    int Function(
  int hKey,
  int SecurityInformation,
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  Pointer<Uint32> lpcbSecurityDescriptor,
)>('RegGetKeySecurity');

int RegGetValue(
  int hkey,
  Pointer<Utf16> lpSubKey,
  Pointer<Utf16> lpValue,
  int dwFlags,
  Pointer<Uint32> pdwType,
  Pointer pvData,
  Pointer<Uint32> pcbData,
) =>
    _RegGetValue(
      hkey,
      lpSubKey,
      lpValue,
      dwFlags,
      pdwType,
      pvData,
      pcbData,
    );

late final _RegGetValue = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr hkey,
  Pointer<Utf16> lpSubKey,
  Pointer<Utf16> lpValue,
  Uint32 dwFlags,
  Pointer<Uint32> pdwType,
  Pointer pvData,
  Pointer<Uint32> pcbData,
),
    int Function(
  int hkey,
  Pointer<Utf16> lpSubKey,
  Pointer<Utf16> lpValue,
  int dwFlags,
  Pointer<Uint32> pdwType,
  Pointer pvData,
  Pointer<Uint32> pcbData,
)>('RegGetValueW');

int RegLoadAppKey(
  Pointer<Utf16> lpFile,
  Pointer<IntPtr> phkResult,
  int samDesired,
  int dwOptions,
  int Reserved,
) =>
    _RegLoadAppKey(
      lpFile,
      phkResult,
      samDesired,
      dwOptions,
      Reserved,
    );

late final _RegLoadAppKey = _advapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpFile,
  Pointer<IntPtr> phkResult,
  Uint32 samDesired,
  Uint32 dwOptions,
  Uint32 Reserved,
),
    int Function(
  Pointer<Utf16> lpFile,
  Pointer<IntPtr> phkResult,
  int samDesired,
  int dwOptions,
  int Reserved,
)>('RegLoadAppKeyW');

int RegLoadKey(
  int hKey,
  Pointer<Utf16> lpSubKey,
  Pointer<Utf16> lpFile,
) =>
    _RegLoadKey(
      hKey,
      lpSubKey,
      lpFile,
    );

late final _RegLoadKey = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr hKey,
  Pointer<Utf16> lpSubKey,
  Pointer<Utf16> lpFile,
),
    int Function(
  int hKey,
  Pointer<Utf16> lpSubKey,
  Pointer<Utf16> lpFile,
)>('RegLoadKeyW');

int RegLoadMUIString(
  int hKey,
  Pointer<Utf16> pszValue,
  Pointer<Utf16> pszOutBuf,
  int cbOutBuf,
  Pointer<Uint32> pcbData,
  int Flags,
  Pointer<Utf16> pszDirectory,
) =>
    _RegLoadMUIString(
      hKey,
      pszValue,
      pszOutBuf,
      cbOutBuf,
      pcbData,
      Flags,
      pszDirectory,
    );

late final _RegLoadMUIString = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr hKey,
  Pointer<Utf16> pszValue,
  Pointer<Utf16> pszOutBuf,
  Uint32 cbOutBuf,
  Pointer<Uint32> pcbData,
  Uint32 Flags,
  Pointer<Utf16> pszDirectory,
),
    int Function(
  int hKey,
  Pointer<Utf16> pszValue,
  Pointer<Utf16> pszOutBuf,
  int cbOutBuf,
  Pointer<Uint32> pcbData,
  int Flags,
  Pointer<Utf16> pszDirectory,
)>('RegLoadMUIStringW');

int RegNotifyChangeKeyValue(
  int hKey,
  int bWatchSubtree,
  int dwNotifyFilter,
  int hEvent,
  int fAsynchronous,
) =>
    _RegNotifyChangeKeyValue(
      hKey,
      bWatchSubtree,
      dwNotifyFilter,
      hEvent,
      fAsynchronous,
    );

late final _RegNotifyChangeKeyValue = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr hKey,
  Int32 bWatchSubtree,
  Uint32 dwNotifyFilter,
  IntPtr hEvent,
  Int32 fAsynchronous,
),
    int Function(
  int hKey,
  int bWatchSubtree,
  int dwNotifyFilter,
  int hEvent,
  int fAsynchronous,
)>('RegNotifyChangeKeyValue');

int RegOpenCurrentUser(
  int samDesired,
  Pointer<IntPtr> phkResult,
) =>
    _RegOpenCurrentUser(
      samDesired,
      phkResult,
    );

late final _RegOpenCurrentUser = _advapi32.lookupFunction<
    Uint32 Function(
  Uint32 samDesired,
  Pointer<IntPtr> phkResult,
),
    int Function(
  int samDesired,
  Pointer<IntPtr> phkResult,
)>('RegOpenCurrentUser');

int RegOpenKeyEx(
  int hKey,
  Pointer<Utf16> lpSubKey,
  int ulOptions,
  int samDesired,
  Pointer<IntPtr> phkResult,
) =>
    _RegOpenKeyEx(
      hKey,
      lpSubKey,
      ulOptions,
      samDesired,
      phkResult,
    );

late final _RegOpenKeyEx = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr hKey,
  Pointer<Utf16> lpSubKey,
  Uint32 ulOptions,
  Uint32 samDesired,
  Pointer<IntPtr> phkResult,
),
    int Function(
  int hKey,
  Pointer<Utf16> lpSubKey,
  int ulOptions,
  int samDesired,
  Pointer<IntPtr> phkResult,
)>('RegOpenKeyExW');

int RegOpenKeyTransacted(
  int hKey,
  Pointer<Utf16> lpSubKey,
  int ulOptions,
  int samDesired,
  Pointer<IntPtr> phkResult,
  int hTransaction,
  Pointer pExtendedParemeter,
) =>
    _RegOpenKeyTransacted(
      hKey,
      lpSubKey,
      ulOptions,
      samDesired,
      phkResult,
      hTransaction,
      pExtendedParemeter,
    );

late final _RegOpenKeyTransacted = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr hKey,
  Pointer<Utf16> lpSubKey,
  Uint32 ulOptions,
  Uint32 samDesired,
  Pointer<IntPtr> phkResult,
  IntPtr hTransaction,
  Pointer pExtendedParemeter,
),
    int Function(
  int hKey,
  Pointer<Utf16> lpSubKey,
  int ulOptions,
  int samDesired,
  Pointer<IntPtr> phkResult,
  int hTransaction,
  Pointer pExtendedParemeter,
)>('RegOpenKeyTransactedW');

int RegOpenKey(
  int hKey,
  Pointer<Utf16> lpSubKey,
  Pointer<IntPtr> phkResult,
) =>
    _RegOpenKey(
      hKey,
      lpSubKey,
      phkResult,
    );

late final _RegOpenKey = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr hKey,
  Pointer<Utf16> lpSubKey,
  Pointer<IntPtr> phkResult,
),
    int Function(
  int hKey,
  Pointer<Utf16> lpSubKey,
  Pointer<IntPtr> phkResult,
)>('RegOpenKeyW');

int RegOpenUserClassesRoot(
  int hToken,
  int dwOptions,
  int samDesired,
  Pointer<IntPtr> phkResult,
) =>
    _RegOpenUserClassesRoot(
      hToken,
      dwOptions,
      samDesired,
      phkResult,
    );

late final _RegOpenUserClassesRoot = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr hToken,
  Uint32 dwOptions,
  Uint32 samDesired,
  Pointer<IntPtr> phkResult,
),
    int Function(
  int hToken,
  int dwOptions,
  int samDesired,
  Pointer<IntPtr> phkResult,
)>('RegOpenUserClassesRoot');

int RegOverridePredefKey(
  int hKey,
  int hNewHKey,
) =>
    _RegOverridePredefKey(
      hKey,
      hNewHKey,
    );

late final _RegOverridePredefKey = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr hKey,
  IntPtr hNewHKey,
),
    int Function(
  int hKey,
  int hNewHKey,
)>('RegOverridePredefKey');

int RegQueryInfoKey(
  int hKey,
  Pointer<Utf16> lpClass,
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
) =>
    _RegQueryInfoKey(
      hKey,
      lpClass,
      lpcchClass,
      lpReserved,
      lpcSubKeys,
      lpcbMaxSubKeyLen,
      lpcbMaxClassLen,
      lpcValues,
      lpcbMaxValueNameLen,
      lpcbMaxValueLen,
      lpcbSecurityDescriptor,
      lpftLastWriteTime,
    );

late final _RegQueryInfoKey = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr hKey,
  Pointer<Utf16> lpClass,
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
),
    int Function(
  int hKey,
  Pointer<Utf16> lpClass,
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
)>('RegQueryInfoKeyW');

int RegQueryMultipleValues(
  int hKey,
  Pointer<VALENT> val_list,
  int num_vals,
  Pointer<Utf16> lpValueBuf,
  Pointer<Uint32> ldwTotsize,
) =>
    _RegQueryMultipleValues(
      hKey,
      val_list,
      num_vals,
      lpValueBuf,
      ldwTotsize,
    );

late final _RegQueryMultipleValues = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr hKey,
  Pointer<VALENT> val_list,
  Uint32 num_vals,
  Pointer<Utf16> lpValueBuf,
  Pointer<Uint32> ldwTotsize,
),
    int Function(
  int hKey,
  Pointer<VALENT> val_list,
  int num_vals,
  Pointer<Utf16> lpValueBuf,
  Pointer<Uint32> ldwTotsize,
)>('RegQueryMultipleValuesW');

int RegQueryReflectionKey(
  int hBase,
  Pointer<Int32> bIsReflectionDisabled,
) =>
    _RegQueryReflectionKey(
      hBase,
      bIsReflectionDisabled,
    );

late final _RegQueryReflectionKey = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr hBase,
  Pointer<Int32> bIsReflectionDisabled,
),
    int Function(
  int hBase,
  Pointer<Int32> bIsReflectionDisabled,
)>('RegQueryReflectionKey');

int RegQueryValueEx(
  int hKey,
  Pointer<Utf16> lpValueName,
  Pointer<Uint32> lpReserved,
  Pointer<Uint32> lpType,
  Pointer<Uint8> lpData,
  Pointer<Uint32> lpcbData,
) =>
    _RegQueryValueEx(
      hKey,
      lpValueName,
      lpReserved,
      lpType,
      lpData,
      lpcbData,
    );

late final _RegQueryValueEx = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr hKey,
  Pointer<Utf16> lpValueName,
  Pointer<Uint32> lpReserved,
  Pointer<Uint32> lpType,
  Pointer<Uint8> lpData,
  Pointer<Uint32> lpcbData,
),
    int Function(
  int hKey,
  Pointer<Utf16> lpValueName,
  Pointer<Uint32> lpReserved,
  Pointer<Uint32> lpType,
  Pointer<Uint8> lpData,
  Pointer<Uint32> lpcbData,
)>('RegQueryValueExW');

int RegQueryValue(
  int hKey,
  Pointer<Utf16> lpSubKey,
  Pointer<Utf16> lpData,
  Pointer<Int32> lpcbData,
) =>
    _RegQueryValue(
      hKey,
      lpSubKey,
      lpData,
      lpcbData,
    );

late final _RegQueryValue = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr hKey,
  Pointer<Utf16> lpSubKey,
  Pointer<Utf16> lpData,
  Pointer<Int32> lpcbData,
),
    int Function(
  int hKey,
  Pointer<Utf16> lpSubKey,
  Pointer<Utf16> lpData,
  Pointer<Int32> lpcbData,
)>('RegQueryValueW');

int RegRenameKey(
  int hKey,
  Pointer<Utf16> lpSubKeyName,
  Pointer<Utf16> lpNewKeyName,
) =>
    _RegRenameKey(
      hKey,
      lpSubKeyName,
      lpNewKeyName,
    );

late final _RegRenameKey = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr hKey,
  Pointer<Utf16> lpSubKeyName,
  Pointer<Utf16> lpNewKeyName,
),
    int Function(
  int hKey,
  Pointer<Utf16> lpSubKeyName,
  Pointer<Utf16> lpNewKeyName,
)>('RegRenameKey');

int RegReplaceKey(
  int hKey,
  Pointer<Utf16> lpSubKey,
  Pointer<Utf16> lpNewFile,
  Pointer<Utf16> lpOldFile,
) =>
    _RegReplaceKey(
      hKey,
      lpSubKey,
      lpNewFile,
      lpOldFile,
    );

late final _RegReplaceKey = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr hKey,
  Pointer<Utf16> lpSubKey,
  Pointer<Utf16> lpNewFile,
  Pointer<Utf16> lpOldFile,
),
    int Function(
  int hKey,
  Pointer<Utf16> lpSubKey,
  Pointer<Utf16> lpNewFile,
  Pointer<Utf16> lpOldFile,
)>('RegReplaceKeyW');

int RegRestoreKey(
  int hKey,
  Pointer<Utf16> lpFile,
  int dwFlags,
) =>
    _RegRestoreKey(
      hKey,
      lpFile,
      dwFlags,
    );

late final _RegRestoreKey = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr hKey,
  Pointer<Utf16> lpFile,
  Int32 dwFlags,
),
    int Function(
  int hKey,
  Pointer<Utf16> lpFile,
  int dwFlags,
)>('RegRestoreKeyW');

int RegSaveKeyEx(
  int hKey,
  Pointer<Utf16> lpFile,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
  int Flags,
) =>
    _RegSaveKeyEx(
      hKey,
      lpFile,
      lpSecurityAttributes,
      Flags,
    );

late final _RegSaveKeyEx = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr hKey,
  Pointer<Utf16> lpFile,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
  Uint32 Flags,
),
    int Function(
  int hKey,
  Pointer<Utf16> lpFile,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
  int Flags,
)>('RegSaveKeyExW');

int RegSaveKey(
  int hKey,
  Pointer<Utf16> lpFile,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
) =>
    _RegSaveKey(
      hKey,
      lpFile,
      lpSecurityAttributes,
    );

late final _RegSaveKey = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr hKey,
  Pointer<Utf16> lpFile,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
),
    int Function(
  int hKey,
  Pointer<Utf16> lpFile,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
)>('RegSaveKeyW');

int RegSetKeySecurity(
  int hKey,
  int SecurityInformation,
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
) =>
    _RegSetKeySecurity(
      hKey,
      SecurityInformation,
      pSecurityDescriptor,
    );

late final _RegSetKeySecurity = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr hKey,
  Uint32 SecurityInformation,
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
),
    int Function(
  int hKey,
  int SecurityInformation,
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
)>('RegSetKeySecurity');

int RegSetKeyValue(
  int hKey,
  Pointer<Utf16> lpSubKey,
  Pointer<Utf16> lpValueName,
  int dwType,
  Pointer lpData,
  int cbData,
) =>
    _RegSetKeyValue(
      hKey,
      lpSubKey,
      lpValueName,
      dwType,
      lpData,
      cbData,
    );

late final _RegSetKeyValue = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr hKey,
  Pointer<Utf16> lpSubKey,
  Pointer<Utf16> lpValueName,
  Uint32 dwType,
  Pointer lpData,
  Uint32 cbData,
),
    int Function(
  int hKey,
  Pointer<Utf16> lpSubKey,
  Pointer<Utf16> lpValueName,
  int dwType,
  Pointer lpData,
  int cbData,
)>('RegSetKeyValueW');

int RegSetValueEx(
  int hKey,
  Pointer<Utf16> lpValueName,
  int Reserved,
  int dwType,
  Pointer<Uint8> lpData,
  int cbData,
) =>
    _RegSetValueEx(
      hKey,
      lpValueName,
      Reserved,
      dwType,
      lpData,
      cbData,
    );

late final _RegSetValueEx = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr hKey,
  Pointer<Utf16> lpValueName,
  Uint32 Reserved,
  Uint32 dwType,
  Pointer<Uint8> lpData,
  Uint32 cbData,
),
    int Function(
  int hKey,
  Pointer<Utf16> lpValueName,
  int Reserved,
  int dwType,
  Pointer<Uint8> lpData,
  int cbData,
)>('RegSetValueExW');

int RegSetValue(
  int hKey,
  Pointer<Utf16> lpSubKey,
  int dwType,
  Pointer<Utf16> lpData,
  int cbData,
) =>
    _RegSetValue(
      hKey,
      lpSubKey,
      dwType,
      lpData,
      cbData,
    );

late final _RegSetValue = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr hKey,
  Pointer<Utf16> lpSubKey,
  Uint32 dwType,
  Pointer<Utf16> lpData,
  Uint32 cbData,
),
    int Function(
  int hKey,
  Pointer<Utf16> lpSubKey,
  int dwType,
  Pointer<Utf16> lpData,
  int cbData,
)>('RegSetValueW');

int RegUnLoadKey(
  int hKey,
  Pointer<Utf16> lpSubKey,
) =>
    _RegUnLoadKey(
      hKey,
      lpSubKey,
    );

late final _RegUnLoadKey = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr hKey,
  Pointer<Utf16> lpSubKey,
),
    int Function(
  int hKey,
  Pointer<Utf16> lpSubKey,
)>('RegUnLoadKeyW');

// -----------------------------------------------------------------------
// api-ms-win-core-state-helpers-l1-1-0.dll
// -----------------------------------------------------------------------
final _api_ms_win_core_state_helpers_l1_1_0 =
    DynamicLibrary.open('api-ms-win-core-state-helpers-l1-1-0.dll');

int GetRegistryValueWithFallback(
  int hkeyPrimary,
  Pointer<Utf16> pwszPrimarySubKey,
  int hkeyFallback,
  Pointer<Utf16> pwszFallbackSubKey,
  Pointer<Utf16> pwszValue,
  int dwFlags,
  Pointer<Uint32> pdwType,
  Pointer pvData,
  int cbDataIn,
  Pointer<Uint32> pcbDataOut,
) =>
    _GetRegistryValueWithFallback(
      hkeyPrimary,
      pwszPrimarySubKey,
      hkeyFallback,
      pwszFallbackSubKey,
      pwszValue,
      dwFlags,
      pdwType,
      pvData,
      cbDataIn,
      pcbDataOut,
    );

late final _GetRegistryValueWithFallback =
    _api_ms_win_core_state_helpers_l1_1_0.lookupFunction<
        Uint32 Function(
  IntPtr hkeyPrimary,
  Pointer<Utf16> pwszPrimarySubKey,
  IntPtr hkeyFallback,
  Pointer<Utf16> pwszFallbackSubKey,
  Pointer<Utf16> pwszValue,
  Uint32 dwFlags,
  Pointer<Uint32> pdwType,
  Pointer pvData,
  Uint32 cbDataIn,
  Pointer<Uint32> pcbDataOut,
),
        int Function(
  int hkeyPrimary,
  Pointer<Utf16> pwszPrimarySubKey,
  int hkeyFallback,
  Pointer<Utf16> pwszFallbackSubKey,
  Pointer<Utf16> pwszValue,
  int dwFlags,
  Pointer<Uint32> pdwType,
  Pointer pvData,
  int cbDataIn,
  Pointer<Uint32> pcbDataOut,
)>('GetRegistryValueWithFallbackW');
