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
import '../../foundation/structs.g.dart';
import '../../security/winwlx/structs.g.dart';
import '../../ui/windowsandmessaging/callbacks.g.dart';
import '../../ui/windowsandmessaging/structs.g.dart';

typedef PFNMSGECALLBACK = Uint32 Function(
  Int32 bVerbose,
  Pointer<Utf16> lpMessage,
);
typedef PWLX_ASSIGN_SHELL_PROTECTION = Int32 Function(
  IntPtr hWlx,
  IntPtr hToken,
  IntPtr hProcess,
  IntPtr hThread,
);
typedef PWLX_CHANGE_PASSWORD_NOTIFY = Int32 Function(
  IntPtr hWlx,
  Pointer<WLX_MPR_NOTIFY_INFO> pMprInfo,
  Uint32 dwChangeInfo,
);
typedef PWLX_CHANGE_PASSWORD_NOTIFY_EX = Int32 Function(
  IntPtr hWlx,
  Pointer<WLX_MPR_NOTIFY_INFO> pMprInfo,
  Uint32 dwChangeInfo,
  Pointer<Utf16> ProviderName,
  Pointer Reserved,
);
typedef PWLX_CLOSE_USER_DESKTOP = Int32 Function(
  IntPtr hWlx,
  Pointer<WLX_DESKTOP> pDesktop,
  IntPtr hToken,
);
typedef PWLX_CREATE_USER_DESKTOP = Int32 Function(
  IntPtr hWlx,
  IntPtr hToken,
  Uint32 Flags,
  Pointer<Utf16> pszDesktopName,
  Pointer<Pointer<WLX_DESKTOP>> ppDesktop,
);
typedef PWLX_DIALOG_BOX = Int32 Function(
  IntPtr hWlx,
  IntPtr hInst,
  Pointer<Utf16> lpszTemplate,
  IntPtr hwndOwner,
  Pointer<NativeFunction<DLGPROC>> dlgprc,
);
typedef PWLX_DIALOG_BOX_INDIRECT = Int32 Function(
  IntPtr hWlx,
  IntPtr hInst,
  Pointer<DLGTEMPLATE> hDialogTemplate,
  IntPtr hwndOwner,
  Pointer<NativeFunction<DLGPROC>> dlgprc,
);
typedef PWLX_DIALOG_BOX_INDIRECT_PARAM = Int32 Function(
  IntPtr hWlx,
  IntPtr hInst,
  Pointer<DLGTEMPLATE> hDialogTemplate,
  IntPtr hwndOwner,
  Pointer<NativeFunction<DLGPROC>> dlgprc,
  IntPtr dwInitParam,
);
typedef PWLX_DIALOG_BOX_PARAM = Int32 Function(
  IntPtr hWlx,
  IntPtr hInst,
  Pointer<Utf16> lpszTemplate,
  IntPtr hwndOwner,
  Pointer<NativeFunction<DLGPROC>> dlgprc,
  IntPtr dwInitParam,
);
typedef PWLX_DISCONNECT = Int32 Function();
typedef PWLX_GET_OPTION = Int32 Function(
  IntPtr hWlx,
  Uint32 Option,
  Pointer<IntPtr> Value,
);
typedef PWLX_GET_SOURCE_DESKTOP = Int32 Function(
  IntPtr hWlx,
  Pointer<Pointer<WLX_DESKTOP>> ppDesktop,
);
typedef PWLX_MESSAGE_BOX = Int32 Function(
  IntPtr hWlx,
  IntPtr hwndOwner,
  Pointer<Utf16> lpszText,
  Pointer<Utf16> lpszTitle,
  Uint32 fuStyle,
);
typedef PWLX_QUERY_CLIENT_CREDENTIALS = Int32 Function(
  Pointer<WLX_CLIENT_CREDENTIALS_INFO_V1_0> pCred,
);
typedef PWLX_QUERY_CONSOLESWITCH_CREDENTIALS = Uint32 Function(
  Pointer<WLX_CONSOLESWITCH_CREDENTIALS_INFO_V1_0> pCred,
);
typedef PWLX_QUERY_IC_CREDENTIALS = Int32 Function(
  Pointer<WLX_CLIENT_CREDENTIALS_INFO_V1_0> pCred,
);
typedef PWLX_QUERY_TERMINAL_SERVICES_DATA = Uint32 Function(
  IntPtr hWlx,
  Pointer<WLX_TERMINAL_SERVICES_DATA> pTSData,
  Pointer<Utf16> UserName,
  Pointer<Utf16> Domain,
);
typedef PWLX_QUERY_TS_LOGON_CREDENTIALS = Int32 Function(
  Pointer<WLX_CLIENT_CREDENTIALS_INFO_V2_0> pCred,
);
typedef PWLX_SAS_NOTIFY = Void Function(
  IntPtr hWlx,
  Uint32 dwSasType,
);
typedef PWLX_SET_CONTEXT_POINTER = Void Function(
  IntPtr hWlx,
  Pointer pWlxContext,
);
typedef PWLX_SET_OPTION = Int32 Function(
  IntPtr hWlx,
  Uint32 Option,
  IntPtr Value,
  Pointer<IntPtr> OldValue,
);
typedef PWLX_SET_RETURN_DESKTOP = Int32 Function(
  IntPtr hWlx,
  Pointer<WLX_DESKTOP> pDesktop,
);
typedef PWLX_SET_TIMEOUT = Int32 Function(
  IntPtr hWlx,
  Uint32 Timeout,
);
typedef PWLX_SWITCH_DESKTOP_TO_USER = Int32 Function(
  IntPtr hWlx,
);
typedef PWLX_SWITCH_DESKTOP_TO_WINLOGON = Int32 Function(
  IntPtr hWlx,
);
typedef PWLX_USE_CTRL_ALT_DEL = Void Function(
  IntPtr hWlx,
);
typedef PWLX_WIN31_MIGRATE = Void Function(
  IntPtr hWlx,
);
