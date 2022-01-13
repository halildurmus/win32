// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// Native callback functions that can get called by the Win32 API

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'structs.g.dart';
import '../../combase.dart';
import '../../guid.dart';
import '../../networkmanagement/wnet/structs.g.dart';
import '../../foundation/structs.g.dart';

typedef PF_AddConnectNotify = Uint32 Function(
  Pointer<NOTIFYINFO> lpNotifyInfo,
  Pointer<NOTIFYADD> lpAddInfo,
);
typedef PF_CancelConnectNotify = Uint32 Function(
  Pointer<NOTIFYINFO> lpNotifyInfo,
  Pointer<NOTIFYCANCEL> lpCancelInfo,
);
typedef PF_NPAddConnection = Uint32 Function(
  Pointer<NETRESOURCE> lpNetResource,
  Pointer<Utf16> lpPassword,
  Pointer<Utf16> lpUserName,
);
typedef PF_NPAddConnection3 = Uint32 Function(
  IntPtr hwndOwner,
  Pointer<NETRESOURCE> lpNetResource,
  Pointer<Utf16> lpPassword,
  Pointer<Utf16> lpUserName,
  Uint32 dwFlags,
);
typedef PF_NPAddConnection4 = Uint32 Function(
  IntPtr hwndOwner,
  Pointer<NETRESOURCE> lpNetResource,
  Pointer lpAuthBuffer,
  Uint32 cbAuthBuffer,
  Uint32 dwFlags,
  Pointer<Uint8> lpUseOptions,
  Uint32 cbUseOptions,
);
typedef PF_NPCancelConnection = Uint32 Function(
  Pointer<Utf16> lpName,
  Int32 fForce,
);
typedef PF_NPCancelConnection2 = Uint32 Function(
  Pointer<Utf16> lpName,
  Int32 fForce,
  Uint32 dwFlags,
);
typedef PF_NPCloseEnum = Uint32 Function(
  IntPtr hEnum,
);
typedef PF_NPDeviceMode = Uint32 Function(
  IntPtr hParent,
);
typedef PF_NPDirectoryNotify = Uint32 Function(
  IntPtr hwnd,
  Pointer<Utf16> lpDir,
  Uint32 dwOper,
);
typedef PF_NPEnumResource = Uint32 Function(
  IntPtr hEnum,
  Pointer<Uint32> lpcCount,
  Pointer lpBuffer,
  Pointer<Uint32> lpBufferSize,
);
typedef PF_NPFMXEditPerm = Uint32 Function(
  Pointer<Utf16> lpDriveName,
  IntPtr hwndFMX,
  Uint32 nDialogType,
);
typedef PF_NPFMXGetPermCaps = Uint32 Function(
  Pointer<Utf16> lpDriveName,
);
typedef PF_NPFMXGetPermHelp = Uint32 Function(
  Pointer<Utf16> lpDriveName,
  Uint32 nDialogType,
  Int32 fDirectory,
  Pointer lpFileNameBuffer,
  Pointer<Uint32> lpBufferSize,
  Pointer<Uint32> lpnHelpContext,
);
typedef PF_NPFormatNetworkName = Uint32 Function(
  Pointer<Utf16> lpRemoteName,
  Pointer<Utf16> lpFormattedName,
  Pointer<Uint32> lpnLength,
  Uint32 dwFlags,
  Uint32 dwAveCharPerLine,
);
typedef PF_NPGetCaps = Uint32 Function(
  Uint32 ndex,
);
typedef PF_NPGetConnection = Uint32 Function(
  Pointer<Utf16> lpLocalName,
  Pointer<Utf16> lpRemoteName,
  Pointer<Uint32> lpnBufferLen,
);
typedef PF_NPGetConnection3 = Uint32 Function(
  Pointer<Utf16> lpLocalName,
  Uint32 dwLevel,
  Pointer lpBuffer,
  Pointer<Uint32> lpBufferSize,
);
typedef PF_NPGetConnectionPerformance = Uint32 Function(
  Pointer<Utf16> lpRemoteName,
  Pointer<NETCONNECTINFOSTRUCT> lpNetConnectInfo,
);
typedef PF_NPGetDirectoryType = Uint32 Function(
  Pointer<Utf16> lpName,
  Pointer<Int32> lpType,
  Int32 bFlushCache,
);
typedef PF_NPGetPersistentUseOptionsForConnection = Uint32 Function(
  Pointer<Utf16> lpRemotePath,
  Pointer<Uint8> lpReadUseOptions,
  Uint32 cbReadUseOptions,
  Pointer<Uint8> lpWriteUseOptions,
  Pointer<Uint32> lpSizeWriteUseOptions,
);
typedef PF_NPGetPropertyText = Uint32 Function(
  Uint32 iButton,
  Uint32 nPropSel,
  Pointer<Utf16> lpName,
  Pointer<Utf16> lpButtonName,
  Uint32 nButtonNameLen,
  Uint32 nType,
);
typedef PF_NPGetResourceInformation = Uint32 Function(
  Pointer<NETRESOURCE> lpNetResource,
  Pointer lpBuffer,
  Pointer<Uint32> lpBufferSize,
  Pointer<Pointer<Utf16>> lplpSystem,
);
typedef PF_NPGetResourceParent = Uint32 Function(
  Pointer<NETRESOURCE> lpNetResource,
  Pointer lpBuffer,
  Pointer<Uint32> lpBufferSize,
);
typedef PF_NPGetUniversalName = Uint32 Function(
  Pointer<Utf16> lpLocalPath,
  Uint32 dwInfoLevel,
  Pointer lpBuffer,
  Pointer<Uint32> lpnBufferSize,
);
typedef PF_NPGetUser = Uint32 Function(
  Pointer<Utf16> lpName,
  Pointer<Utf16> lpUserName,
  Pointer<Uint32> lpnBufferLen,
);
typedef PF_NPLogonNotify = Uint32 Function(
  Pointer<LUID> lpLogonId,
  Pointer<Utf16> lpAuthentInfoType,
  Pointer lpAuthentInfo,
  Pointer<Utf16> lpPreviousAuthentInfoType,
  Pointer lpPreviousAuthentInfo,
  Pointer<Utf16> lpStationName,
  Pointer StationHandle,
  Pointer<Pointer<Utf16>> lpLogonScript,
);
typedef PF_NPOpenEnum = Uint32 Function(
  Uint32 dwScope,
  Uint32 dwType,
  Uint32 dwUsage,
  Pointer<NETRESOURCE> lpNetResource,
  Pointer<IntPtr> lphEnum,
);
typedef PF_NPPasswordChangeNotify = Uint32 Function(
  Pointer<Utf16> lpAuthentInfoType,
  Pointer lpAuthentInfo,
  Pointer<Utf16> lpPreviousAuthentInfoType,
  Pointer lpPreviousAuthentInfo,
  Pointer<Utf16> lpStationName,
  Pointer StationHandle,
  Uint32 dwChangeInfo,
);
typedef PF_NPPropertyDialog = Uint32 Function(
  IntPtr hwndParent,
  Uint32 iButtonDlg,
  Uint32 nPropSel,
  Pointer<Utf16> lpFileName,
  Uint32 nType,
);
typedef PF_NPSearchDialog = Uint32 Function(
  IntPtr hwndParent,
  Pointer<NETRESOURCE> lpNetResource,
  Pointer lpBuffer,
  Uint32 cbBuffer,
  Pointer<Uint32> lpnFlags,
);
