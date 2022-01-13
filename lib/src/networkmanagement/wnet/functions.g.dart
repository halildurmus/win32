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
import '../../networkmanagement/wnet/structs.g.dart';
import '../../foundation/structs.g.dart'; // -----------------------------------------------------------------------

// mpr.dll
// -----------------------------------------------------------------------
final _mpr = DynamicLibrary.open('mpr.dll');

int MultinetGetConnectionPerformance(
  Pointer<NETRESOURCE> lpNetResource,
  Pointer<NETCONNECTINFOSTRUCT> lpNetConnectInfoStruct,
) =>
    _MultinetGetConnectionPerformance(
      lpNetResource,
      lpNetConnectInfoStruct,
    );

late final _MultinetGetConnectionPerformance = _mpr.lookupFunction<
    Uint32 Function(
  Pointer<NETRESOURCE> lpNetResource,
  Pointer<NETCONNECTINFOSTRUCT> lpNetConnectInfoStruct,
),
    int Function(
  Pointer<NETRESOURCE> lpNetResource,
  Pointer<NETCONNECTINFOSTRUCT> lpNetConnectInfoStruct,
)>('MultinetGetConnectionPerformanceW');

int WNetAddConnection2(
  Pointer<NETRESOURCE> lpNetResource,
  Pointer<Utf16> lpPassword,
  Pointer<Utf16> lpUserName,
  int dwFlags,
) =>
    _WNetAddConnection2(
      lpNetResource,
      lpPassword,
      lpUserName,
      dwFlags,
    );

late final _WNetAddConnection2 = _mpr.lookupFunction<
    Uint32 Function(
  Pointer<NETRESOURCE> lpNetResource,
  Pointer<Utf16> lpPassword,
  Pointer<Utf16> lpUserName,
  Uint32 dwFlags,
),
    int Function(
  Pointer<NETRESOURCE> lpNetResource,
  Pointer<Utf16> lpPassword,
  Pointer<Utf16> lpUserName,
  int dwFlags,
)>('WNetAddConnection2W');

int WNetAddConnection3(
  int hwndOwner,
  Pointer<NETRESOURCE> lpNetResource,
  Pointer<Utf16> lpPassword,
  Pointer<Utf16> lpUserName,
  int dwFlags,
) =>
    _WNetAddConnection3(
      hwndOwner,
      lpNetResource,
      lpPassword,
      lpUserName,
      dwFlags,
    );

late final _WNetAddConnection3 = _mpr.lookupFunction<
    Uint32 Function(
  IntPtr hwndOwner,
  Pointer<NETRESOURCE> lpNetResource,
  Pointer<Utf16> lpPassword,
  Pointer<Utf16> lpUserName,
  Uint32 dwFlags,
),
    int Function(
  int hwndOwner,
  Pointer<NETRESOURCE> lpNetResource,
  Pointer<Utf16> lpPassword,
  Pointer<Utf16> lpUserName,
  int dwFlags,
)>('WNetAddConnection3W');

int WNetAddConnection4(
  int hwndOwner,
  Pointer<NETRESOURCE> lpNetResource,
  Pointer pAuthBuffer,
  int cbAuthBuffer,
  int dwFlags,
  Pointer<Uint8> lpUseOptions,
  int cbUseOptions,
) =>
    _WNetAddConnection4(
      hwndOwner,
      lpNetResource,
      pAuthBuffer,
      cbAuthBuffer,
      dwFlags,
      lpUseOptions,
      cbUseOptions,
    );

late final _WNetAddConnection4 = _mpr.lookupFunction<
    Uint32 Function(
  IntPtr hwndOwner,
  Pointer<NETRESOURCE> lpNetResource,
  Pointer pAuthBuffer,
  Uint32 cbAuthBuffer,
  Uint32 dwFlags,
  Pointer<Uint8> lpUseOptions,
  Uint32 cbUseOptions,
),
    int Function(
  int hwndOwner,
  Pointer<NETRESOURCE> lpNetResource,
  Pointer pAuthBuffer,
  int cbAuthBuffer,
  int dwFlags,
  Pointer<Uint8> lpUseOptions,
  int cbUseOptions,
)>('WNetAddConnection4W');

int WNetAddConnection(
  Pointer<Utf16> lpRemoteName,
  Pointer<Utf16> lpPassword,
  Pointer<Utf16> lpLocalName,
) =>
    _WNetAddConnection(
      lpRemoteName,
      lpPassword,
      lpLocalName,
    );

late final _WNetAddConnection = _mpr.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpRemoteName,
  Pointer<Utf16> lpPassword,
  Pointer<Utf16> lpLocalName,
),
    int Function(
  Pointer<Utf16> lpRemoteName,
  Pointer<Utf16> lpPassword,
  Pointer<Utf16> lpLocalName,
)>('WNetAddConnectionW');

int WNetCancelConnection2(
  Pointer<Utf16> lpName,
  int dwFlags,
  int fForce,
) =>
    _WNetCancelConnection2(
      lpName,
      dwFlags,
      fForce,
    );

late final _WNetCancelConnection2 = _mpr.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpName,
  Uint32 dwFlags,
  Int32 fForce,
),
    int Function(
  Pointer<Utf16> lpName,
  int dwFlags,
  int fForce,
)>('WNetCancelConnection2W');

int WNetCancelConnection(
  Pointer<Utf16> lpName,
  int fForce,
) =>
    _WNetCancelConnection(
      lpName,
      fForce,
    );

late final _WNetCancelConnection = _mpr.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpName,
  Int32 fForce,
),
    int Function(
  Pointer<Utf16> lpName,
  int fForce,
)>('WNetCancelConnectionW');

int WNetCloseEnum(
  int hEnum,
) =>
    _WNetCloseEnum(
      hEnum,
    );

late final _WNetCloseEnum = _mpr.lookupFunction<
    Uint32 Function(
  IntPtr hEnum,
),
    int Function(
  int hEnum,
)>('WNetCloseEnum');

int WNetConnectionDialog(
  int hwnd,
  int dwType,
) =>
    _WNetConnectionDialog(
      hwnd,
      dwType,
    );

late final _WNetConnectionDialog = _mpr.lookupFunction<
    Uint32 Function(
  IntPtr hwnd,
  Uint32 dwType,
),
    int Function(
  int hwnd,
  int dwType,
)>('WNetConnectionDialog');

int WNetConnectionDialog1(
  Pointer<CONNECTDLGSTRUCT> lpConnDlgStruct,
) =>
    _WNetConnectionDialog1(
      lpConnDlgStruct,
    );

late final _WNetConnectionDialog1 = _mpr.lookupFunction<
    Uint32 Function(
  Pointer<CONNECTDLGSTRUCT> lpConnDlgStruct,
),
    int Function(
  Pointer<CONNECTDLGSTRUCT> lpConnDlgStruct,
)>('WNetConnectionDialog1W');

int WNetDisconnectDialog(
  int hwnd,
  int dwType,
) =>
    _WNetDisconnectDialog(
      hwnd,
      dwType,
    );

late final _WNetDisconnectDialog = _mpr.lookupFunction<
    Uint32 Function(
  IntPtr hwnd,
  Uint32 dwType,
),
    int Function(
  int hwnd,
  int dwType,
)>('WNetDisconnectDialog');

int WNetDisconnectDialog1(
  Pointer<DISCDLGSTRUCT> lpConnDlgStruct,
) =>
    _WNetDisconnectDialog1(
      lpConnDlgStruct,
    );

late final _WNetDisconnectDialog1 = _mpr.lookupFunction<
    Uint32 Function(
  Pointer<DISCDLGSTRUCT> lpConnDlgStruct,
),
    int Function(
  Pointer<DISCDLGSTRUCT> lpConnDlgStruct,
)>('WNetDisconnectDialog1W');

int WNetEnumResource(
  int hEnum,
  Pointer<Uint32> lpcCount,
  Pointer lpBuffer,
  Pointer<Uint32> lpBufferSize,
) =>
    _WNetEnumResource(
      hEnum,
      lpcCount,
      lpBuffer,
      lpBufferSize,
    );

late final _WNetEnumResource = _mpr.lookupFunction<
    Uint32 Function(
  IntPtr hEnum,
  Pointer<Uint32> lpcCount,
  Pointer lpBuffer,
  Pointer<Uint32> lpBufferSize,
),
    int Function(
  int hEnum,
  Pointer<Uint32> lpcCount,
  Pointer lpBuffer,
  Pointer<Uint32> lpBufferSize,
)>('WNetEnumResourceW');

int WNetGetConnection(
  Pointer<Utf16> lpLocalName,
  Pointer<Utf16> lpRemoteName,
  Pointer<Uint32> lpnLength,
) =>
    _WNetGetConnection(
      lpLocalName,
      lpRemoteName,
      lpnLength,
    );

late final _WNetGetConnection = _mpr.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpLocalName,
  Pointer<Utf16> lpRemoteName,
  Pointer<Uint32> lpnLength,
),
    int Function(
  Pointer<Utf16> lpLocalName,
  Pointer<Utf16> lpRemoteName,
  Pointer<Uint32> lpnLength,
)>('WNetGetConnectionW');

int WNetGetLastError(
  Pointer<Uint32> lpError,
  Pointer<Utf16> lpErrorBuf,
  int nErrorBufSize,
  Pointer<Utf16> lpNameBuf,
  int nNameBufSize,
) =>
    _WNetGetLastError(
      lpError,
      lpErrorBuf,
      nErrorBufSize,
      lpNameBuf,
      nNameBufSize,
    );

late final _WNetGetLastError = _mpr.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> lpError,
  Pointer<Utf16> lpErrorBuf,
  Uint32 nErrorBufSize,
  Pointer<Utf16> lpNameBuf,
  Uint32 nNameBufSize,
),
    int Function(
  Pointer<Uint32> lpError,
  Pointer<Utf16> lpErrorBuf,
  int nErrorBufSize,
  Pointer<Utf16> lpNameBuf,
  int nNameBufSize,
)>('WNetGetLastErrorW');

int WNetGetNetworkInformation(
  Pointer<Utf16> lpProvider,
  Pointer<NETINFOSTRUCT> lpNetInfoStruct,
) =>
    _WNetGetNetworkInformation(
      lpProvider,
      lpNetInfoStruct,
    );

late final _WNetGetNetworkInformation = _mpr.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpProvider,
  Pointer<NETINFOSTRUCT> lpNetInfoStruct,
),
    int Function(
  Pointer<Utf16> lpProvider,
  Pointer<NETINFOSTRUCT> lpNetInfoStruct,
)>('WNetGetNetworkInformationW');

int WNetGetProviderName(
  int dwNetType,
  Pointer<Utf16> lpProviderName,
  Pointer<Uint32> lpBufferSize,
) =>
    _WNetGetProviderName(
      dwNetType,
      lpProviderName,
      lpBufferSize,
    );

late final _WNetGetProviderName = _mpr.lookupFunction<
    Uint32 Function(
  Uint32 dwNetType,
  Pointer<Utf16> lpProviderName,
  Pointer<Uint32> lpBufferSize,
),
    int Function(
  int dwNetType,
  Pointer<Utf16> lpProviderName,
  Pointer<Uint32> lpBufferSize,
)>('WNetGetProviderNameW');

int WNetGetResourceInformation(
  Pointer<NETRESOURCE> lpNetResource,
  Pointer lpBuffer,
  Pointer<Uint32> lpcbBuffer,
  Pointer<Pointer<Utf16>> lplpSystem,
) =>
    _WNetGetResourceInformation(
      lpNetResource,
      lpBuffer,
      lpcbBuffer,
      lplpSystem,
    );

late final _WNetGetResourceInformation = _mpr.lookupFunction<
    Uint32 Function(
  Pointer<NETRESOURCE> lpNetResource,
  Pointer lpBuffer,
  Pointer<Uint32> lpcbBuffer,
  Pointer<Pointer<Utf16>> lplpSystem,
),
    int Function(
  Pointer<NETRESOURCE> lpNetResource,
  Pointer lpBuffer,
  Pointer<Uint32> lpcbBuffer,
  Pointer<Pointer<Utf16>> lplpSystem,
)>('WNetGetResourceInformationW');

int WNetGetResourceParent(
  Pointer<NETRESOURCE> lpNetResource,
  Pointer lpBuffer,
  Pointer<Uint32> lpcbBuffer,
) =>
    _WNetGetResourceParent(
      lpNetResource,
      lpBuffer,
      lpcbBuffer,
    );

late final _WNetGetResourceParent = _mpr.lookupFunction<
    Uint32 Function(
  Pointer<NETRESOURCE> lpNetResource,
  Pointer lpBuffer,
  Pointer<Uint32> lpcbBuffer,
),
    int Function(
  Pointer<NETRESOURCE> lpNetResource,
  Pointer lpBuffer,
  Pointer<Uint32> lpcbBuffer,
)>('WNetGetResourceParentW');

int WNetGetUniversalName(
  Pointer<Utf16> lpLocalPath,
  int dwInfoLevel,
  Pointer lpBuffer,
  Pointer<Uint32> lpBufferSize,
) =>
    _WNetGetUniversalName(
      lpLocalPath,
      dwInfoLevel,
      lpBuffer,
      lpBufferSize,
    );

late final _WNetGetUniversalName = _mpr.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpLocalPath,
  Uint32 dwInfoLevel,
  Pointer lpBuffer,
  Pointer<Uint32> lpBufferSize,
),
    int Function(
  Pointer<Utf16> lpLocalPath,
  int dwInfoLevel,
  Pointer lpBuffer,
  Pointer<Uint32> lpBufferSize,
)>('WNetGetUniversalNameW');

int WNetGetUser(
  Pointer<Utf16> lpName,
  Pointer<Utf16> lpUserName,
  Pointer<Uint32> lpnLength,
) =>
    _WNetGetUser(
      lpName,
      lpUserName,
      lpnLength,
    );

late final _WNetGetUser = _mpr.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpName,
  Pointer<Utf16> lpUserName,
  Pointer<Uint32> lpnLength,
),
    int Function(
  Pointer<Utf16> lpName,
  Pointer<Utf16> lpUserName,
  Pointer<Uint32> lpnLength,
)>('WNetGetUserW');

int WNetOpenEnum(
  int dwScope,
  int dwType,
  int dwUsage,
  Pointer<NETRESOURCE> lpNetResource,
  Pointer<IntPtr> lphEnum,
) =>
    _WNetOpenEnum(
      dwScope,
      dwType,
      dwUsage,
      lpNetResource,
      lphEnum,
    );

late final _WNetOpenEnum = _mpr.lookupFunction<
    Uint32 Function(
  Uint32 dwScope,
  Uint32 dwType,
  Uint32 dwUsage,
  Pointer<NETRESOURCE> lpNetResource,
  Pointer<IntPtr> lphEnum,
),
    int Function(
  int dwScope,
  int dwType,
  int dwUsage,
  Pointer<NETRESOURCE> lpNetResource,
  Pointer<IntPtr> lphEnum,
)>('WNetOpenEnumW');

void WNetSetLastError(
  int err,
  Pointer<Utf16> lpError,
  Pointer<Utf16> lpProviders,
) =>
    _WNetSetLastError(
      err,
      lpError,
      lpProviders,
    );

late final _WNetSetLastError = _mpr.lookupFunction<
    Void Function(
  Uint32 err,
  Pointer<Utf16> lpError,
  Pointer<Utf16> lpProviders,
),
    void Function(
  int err,
  Pointer<Utf16> lpError,
  Pointer<Utf16> lpProviders,
)>('WNetSetLastErrorW');

int WNetUseConnection4(
  int hwndOwner,
  Pointer<NETRESOURCE> lpNetResource,
  Pointer pAuthBuffer,
  int cbAuthBuffer,
  int dwFlags,
  Pointer<Uint8> lpUseOptions,
  int cbUseOptions,
  Pointer<Utf16> lpAccessName,
  Pointer<Uint32> lpBufferSize,
  Pointer<Uint32> lpResult,
) =>
    _WNetUseConnection4(
      hwndOwner,
      lpNetResource,
      pAuthBuffer,
      cbAuthBuffer,
      dwFlags,
      lpUseOptions,
      cbUseOptions,
      lpAccessName,
      lpBufferSize,
      lpResult,
    );

late final _WNetUseConnection4 = _mpr.lookupFunction<
    Uint32 Function(
  IntPtr hwndOwner,
  Pointer<NETRESOURCE> lpNetResource,
  Pointer pAuthBuffer,
  Uint32 cbAuthBuffer,
  Uint32 dwFlags,
  Pointer<Uint8> lpUseOptions,
  Uint32 cbUseOptions,
  Pointer<Utf16> lpAccessName,
  Pointer<Uint32> lpBufferSize,
  Pointer<Uint32> lpResult,
),
    int Function(
  int hwndOwner,
  Pointer<NETRESOURCE> lpNetResource,
  Pointer pAuthBuffer,
  int cbAuthBuffer,
  int dwFlags,
  Pointer<Uint8> lpUseOptions,
  int cbUseOptions,
  Pointer<Utf16> lpAccessName,
  Pointer<Uint32> lpBufferSize,
  Pointer<Uint32> lpResult,
)>('WNetUseConnection4W');

int WNetUseConnection(
  int hwndOwner,
  Pointer<NETRESOURCE> lpNetResource,
  Pointer<Utf16> lpPassword,
  Pointer<Utf16> lpUserId,
  int dwFlags,
  Pointer<Utf16> lpAccessName,
  Pointer<Uint32> lpBufferSize,
  Pointer<Uint32> lpResult,
) =>
    _WNetUseConnection(
      hwndOwner,
      lpNetResource,
      lpPassword,
      lpUserId,
      dwFlags,
      lpAccessName,
      lpBufferSize,
      lpResult,
    );

late final _WNetUseConnection = _mpr.lookupFunction<
    Uint32 Function(
  IntPtr hwndOwner,
  Pointer<NETRESOURCE> lpNetResource,
  Pointer<Utf16> lpPassword,
  Pointer<Utf16> lpUserId,
  Uint32 dwFlags,
  Pointer<Utf16> lpAccessName,
  Pointer<Uint32> lpBufferSize,
  Pointer<Uint32> lpResult,
),
    int Function(
  int hwndOwner,
  Pointer<NETRESOURCE> lpNetResource,
  Pointer<Utf16> lpPassword,
  Pointer<Utf16> lpUserId,
  int dwFlags,
  Pointer<Utf16> lpAccessName,
  Pointer<Uint32> lpBufferSize,
  Pointer<Uint32> lpResult,
)>('WNetUseConnectionW');

// -----------------------------------------------------------------------
// davclnt.dll
// -----------------------------------------------------------------------
final _davclnt = DynamicLibrary.open('davclnt.dll');

int NPAddConnection(
  Pointer<NETRESOURCE> lpNetResource,
  Pointer<Utf16> lpPassword,
  Pointer<Utf16> lpUserName,
) =>
    _NPAddConnection(
      lpNetResource,
      lpPassword,
      lpUserName,
    );

late final _NPAddConnection = _davclnt.lookupFunction<
    Uint32 Function(
  Pointer<NETRESOURCE> lpNetResource,
  Pointer<Utf16> lpPassword,
  Pointer<Utf16> lpUserName,
),
    int Function(
  Pointer<NETRESOURCE> lpNetResource,
  Pointer<Utf16> lpPassword,
  Pointer<Utf16> lpUserName,
)>('NPAddConnection');

int NPAddConnection3(
  int hwndOwner,
  Pointer<NETRESOURCE> lpNetResource,
  Pointer<Utf16> lpPassword,
  Pointer<Utf16> lpUserName,
  int dwFlags,
) =>
    _NPAddConnection3(
      hwndOwner,
      lpNetResource,
      lpPassword,
      lpUserName,
      dwFlags,
    );

late final _NPAddConnection3 = _davclnt.lookupFunction<
    Uint32 Function(
  IntPtr hwndOwner,
  Pointer<NETRESOURCE> lpNetResource,
  Pointer<Utf16> lpPassword,
  Pointer<Utf16> lpUserName,
  Uint32 dwFlags,
),
    int Function(
  int hwndOwner,
  Pointer<NETRESOURCE> lpNetResource,
  Pointer<Utf16> lpPassword,
  Pointer<Utf16> lpUserName,
  int dwFlags,
)>('NPAddConnection3');

int NPCancelConnection(
  Pointer<Utf16> lpName,
  int fForce,
) =>
    _NPCancelConnection(
      lpName,
      fForce,
    );

late final _NPCancelConnection = _davclnt.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpName,
  Int32 fForce,
),
    int Function(
  Pointer<Utf16> lpName,
  int fForce,
)>('NPCancelConnection');

int NPCloseEnum(
  int hEnum,
) =>
    _NPCloseEnum(
      hEnum,
    );

late final _NPCloseEnum = _davclnt.lookupFunction<
    Uint32 Function(
  IntPtr hEnum,
),
    int Function(
  int hEnum,
)>('NPCloseEnum');

int NPEnumResource(
  int hEnum,
  Pointer<Uint32> lpcCount,
  Pointer lpBuffer,
  Pointer<Uint32> lpBufferSize,
) =>
    _NPEnumResource(
      hEnum,
      lpcCount,
      lpBuffer,
      lpBufferSize,
    );

late final _NPEnumResource = _davclnt.lookupFunction<
    Uint32 Function(
  IntPtr hEnum,
  Pointer<Uint32> lpcCount,
  Pointer lpBuffer,
  Pointer<Uint32> lpBufferSize,
),
    int Function(
  int hEnum,
  Pointer<Uint32> lpcCount,
  Pointer lpBuffer,
  Pointer<Uint32> lpBufferSize,
)>('NPEnumResource');

int NPFormatNetworkName(
  Pointer<Utf16> lpRemoteName,
  Pointer<Utf16> lpFormattedName,
  Pointer<Uint32> lpnLength,
  int dwFlags,
  int dwAveCharPerLine,
) =>
    _NPFormatNetworkName(
      lpRemoteName,
      lpFormattedName,
      lpnLength,
      dwFlags,
      dwAveCharPerLine,
    );

late final _NPFormatNetworkName = _davclnt.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpRemoteName,
  Pointer<Utf16> lpFormattedName,
  Pointer<Uint32> lpnLength,
  Uint32 dwFlags,
  Uint32 dwAveCharPerLine,
),
    int Function(
  Pointer<Utf16> lpRemoteName,
  Pointer<Utf16> lpFormattedName,
  Pointer<Uint32> lpnLength,
  int dwFlags,
  int dwAveCharPerLine,
)>('NPFormatNetworkName');

int NPGetCaps(
  int ndex,
) =>
    _NPGetCaps(
      ndex,
    );

late final _NPGetCaps = _davclnt.lookupFunction<
    Uint32 Function(
  Uint32 ndex,
),
    int Function(
  int ndex,
)>('NPGetCaps');

int NPGetConnection(
  Pointer<Utf16> lpLocalName,
  Pointer<Utf16> lpRemoteName,
  Pointer<Uint32> lpnBufferLen,
) =>
    _NPGetConnection(
      lpLocalName,
      lpRemoteName,
      lpnBufferLen,
    );

late final _NPGetConnection = _davclnt.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpLocalName,
  Pointer<Utf16> lpRemoteName,
  Pointer<Uint32> lpnBufferLen,
),
    int Function(
  Pointer<Utf16> lpLocalName,
  Pointer<Utf16> lpRemoteName,
  Pointer<Uint32> lpnBufferLen,
)>('NPGetConnection');

int NPGetResourceInformation(
  Pointer<NETRESOURCE> lpNetResource,
  Pointer lpBuffer,
  Pointer<Uint32> lpBufferSize,
  Pointer<Pointer<Utf16>> lplpSystem,
) =>
    _NPGetResourceInformation(
      lpNetResource,
      lpBuffer,
      lpBufferSize,
      lplpSystem,
    );

late final _NPGetResourceInformation = _davclnt.lookupFunction<
    Uint32 Function(
  Pointer<NETRESOURCE> lpNetResource,
  Pointer lpBuffer,
  Pointer<Uint32> lpBufferSize,
  Pointer<Pointer<Utf16>> lplpSystem,
),
    int Function(
  Pointer<NETRESOURCE> lpNetResource,
  Pointer lpBuffer,
  Pointer<Uint32> lpBufferSize,
  Pointer<Pointer<Utf16>> lplpSystem,
)>('NPGetResourceInformation');

int NPGetResourceParent(
  Pointer<NETRESOURCE> lpNetResource,
  Pointer lpBuffer,
  Pointer<Uint32> lpBufferSize,
) =>
    _NPGetResourceParent(
      lpNetResource,
      lpBuffer,
      lpBufferSize,
    );

late final _NPGetResourceParent = _davclnt.lookupFunction<
    Uint32 Function(
  Pointer<NETRESOURCE> lpNetResource,
  Pointer lpBuffer,
  Pointer<Uint32> lpBufferSize,
),
    int Function(
  Pointer<NETRESOURCE> lpNetResource,
  Pointer lpBuffer,
  Pointer<Uint32> lpBufferSize,
)>('NPGetResourceParent');

int NPGetUniversalName(
  Pointer<Utf16> lpLocalPath,
  int dwInfoLevel,
  Pointer lpBuffer,
  Pointer<Uint32> lpBufferSize,
) =>
    _NPGetUniversalName(
      lpLocalPath,
      dwInfoLevel,
      lpBuffer,
      lpBufferSize,
    );

late final _NPGetUniversalName = _davclnt.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpLocalPath,
  Uint32 dwInfoLevel,
  Pointer lpBuffer,
  Pointer<Uint32> lpBufferSize,
),
    int Function(
  Pointer<Utf16> lpLocalPath,
  int dwInfoLevel,
  Pointer lpBuffer,
  Pointer<Uint32> lpBufferSize,
)>('NPGetUniversalName');

int NPGetUser(
  Pointer<Utf16> lpName,
  Pointer<Utf16> lpUserName,
  Pointer<Uint32> lpnBufferLen,
) =>
    _NPGetUser(
      lpName,
      lpUserName,
      lpnBufferLen,
    );

late final _NPGetUser = _davclnt.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpName,
  Pointer<Utf16> lpUserName,
  Pointer<Uint32> lpnBufferLen,
),
    int Function(
  Pointer<Utf16> lpName,
  Pointer<Utf16> lpUserName,
  Pointer<Uint32> lpnBufferLen,
)>('NPGetUser');

int NPOpenEnum(
  int dwScope,
  int dwType,
  int dwUsage,
  Pointer<NETRESOURCE> lpNetResource,
  Pointer<IntPtr> lphEnum,
) =>
    _NPOpenEnum(
      dwScope,
      dwType,
      dwUsage,
      lpNetResource,
      lphEnum,
    );

late final _NPOpenEnum = _davclnt.lookupFunction<
    Uint32 Function(
  Uint32 dwScope,
  Uint32 dwType,
  Uint32 dwUsage,
  Pointer<NETRESOURCE> lpNetResource,
  Pointer<IntPtr> lphEnum,
),
    int Function(
  int dwScope,
  int dwType,
  int dwUsage,
  Pointer<NETRESOURCE> lpNetResource,
  Pointer<IntPtr> lphEnum,
)>('NPOpenEnum');

// -----------------------------------------------------------------------
// ntlanman.dll
// -----------------------------------------------------------------------
final _ntlanman = DynamicLibrary.open('ntlanman.dll');

int NPAddConnection4(
  int hwndOwner,
  Pointer<NETRESOURCE> lpNetResource,
  Pointer lpAuthBuffer,
  int cbAuthBuffer,
  int dwFlags,
  Pointer<Uint8> lpUseOptions,
  int cbUseOptions,
) =>
    _NPAddConnection4(
      hwndOwner,
      lpNetResource,
      lpAuthBuffer,
      cbAuthBuffer,
      dwFlags,
      lpUseOptions,
      cbUseOptions,
    );

late final _NPAddConnection4 = _ntlanman.lookupFunction<
    Uint32 Function(
  IntPtr hwndOwner,
  Pointer<NETRESOURCE> lpNetResource,
  Pointer lpAuthBuffer,
  Uint32 cbAuthBuffer,
  Uint32 dwFlags,
  Pointer<Uint8> lpUseOptions,
  Uint32 cbUseOptions,
),
    int Function(
  int hwndOwner,
  Pointer<NETRESOURCE> lpNetResource,
  Pointer lpAuthBuffer,
  int cbAuthBuffer,
  int dwFlags,
  Pointer<Uint8> lpUseOptions,
  int cbUseOptions,
)>('NPAddConnection4');

int NPCancelConnection2(
  Pointer<Utf16> lpName,
  int fForce,
  int dwFlags,
) =>
    _NPCancelConnection2(
      lpName,
      fForce,
      dwFlags,
    );

late final _NPCancelConnection2 = _ntlanman.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpName,
  Int32 fForce,
  Uint32 dwFlags,
),
    int Function(
  Pointer<Utf16> lpName,
  int fForce,
  int dwFlags,
)>('NPCancelConnection2');

int NPGetConnection3(
  Pointer<Utf16> lpLocalName,
  int dwLevel,
  Pointer lpBuffer,
  Pointer<Uint32> lpBufferSize,
) =>
    _NPGetConnection3(
      lpLocalName,
      dwLevel,
      lpBuffer,
      lpBufferSize,
    );

late final _NPGetConnection3 = _ntlanman.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpLocalName,
  Uint32 dwLevel,
  Pointer lpBuffer,
  Pointer<Uint32> lpBufferSize,
),
    int Function(
  Pointer<Utf16> lpLocalName,
  int dwLevel,
  Pointer lpBuffer,
  Pointer<Uint32> lpBufferSize,
)>('NPGetConnection3');

int NPGetConnectionPerformance(
  Pointer<Utf16> lpRemoteName,
  Pointer<NETCONNECTINFOSTRUCT> lpNetConnectInfo,
) =>
    _NPGetConnectionPerformance(
      lpRemoteName,
      lpNetConnectInfo,
    );

late final _NPGetConnectionPerformance = _ntlanman.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpRemoteName,
  Pointer<NETCONNECTINFOSTRUCT> lpNetConnectInfo,
),
    int Function(
  Pointer<Utf16> lpRemoteName,
  Pointer<NETCONNECTINFOSTRUCT> lpNetConnectInfo,
)>('NPGetConnectionPerformance');

int NPGetPersistentUseOptionsForConnection(
  Pointer<Utf16> lpRemotePath,
  Pointer<Uint8> lpReadUseOptions,
  int cbReadUseOptions,
  Pointer<Uint8> lpWriteUseOptions,
  Pointer<Uint32> lpSizeWriteUseOptions,
) =>
    _NPGetPersistentUseOptionsForConnection(
      lpRemotePath,
      lpReadUseOptions,
      cbReadUseOptions,
      lpWriteUseOptions,
      lpSizeWriteUseOptions,
    );

late final _NPGetPersistentUseOptionsForConnection = _ntlanman.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpRemotePath,
  Pointer<Uint8> lpReadUseOptions,
  Uint32 cbReadUseOptions,
  Pointer<Uint8> lpWriteUseOptions,
  Pointer<Uint32> lpSizeWriteUseOptions,
),
    int Function(
  Pointer<Utf16> lpRemotePath,
  Pointer<Uint8> lpReadUseOptions,
  int cbReadUseOptions,
  Pointer<Uint8> lpWriteUseOptions,
  Pointer<Uint32> lpSizeWriteUseOptions,
)>('NPGetPersistentUseOptionsForConnection');
