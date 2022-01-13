// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import '../../combase.dart';
import '../../guid.dart';
import '../../foundation/structs.g.dart';
import '../../security/structs.g.dart';
import '../../system/stationsanddesktops/structs.g.dart';
import '../../security/winwlx/callbacks.g.dart';

/// {@category Struct}
class WLX_CLIENT_CREDENTIALS_INFO_V1_0 extends Struct {
  @Uint32()
  external int dwType;

  external Pointer<Utf16> pszUserName;

  external Pointer<Utf16> pszDomain;

  external Pointer<Utf16> pszPassword;

  @Int32()
  external int fPromptForPassword;
}

/// {@category Struct}
class WLX_CLIENT_CREDENTIALS_INFO_V2_0 extends Struct {
  @Uint32()
  external int dwType;

  external Pointer<Utf16> pszUserName;

  external Pointer<Utf16> pszDomain;

  external Pointer<Utf16> pszPassword;

  @Int32()
  external int fPromptForPassword;

  @Int32()
  external int fDisconnectOnLogonFailure;
}

/// {@category Struct}
class WLX_CONSOLESWITCH_CREDENTIALS_INFO_V1_0 extends Struct {
  @Uint32()
  external int dwType;

  @IntPtr()
  external int UserToken;

  external LUID LogonId;

  external QUOTA_LIMITS Quotas;

  external Pointer<Utf16> UserName;

  external Pointer<Utf16> Domain;

  @Int64()
  external int LogonTime;

  @Int32()
  external int SmartCardLogon;

  @Uint32()
  external int ProfileLength;

  @Uint32()
  external int MessageType;

  @Uint16()
  external int LogonCount;

  @Uint16()
  external int BadPasswordCount;

  @Int64()
  external int ProfileLogonTime;

  @Int64()
  external int LogoffTime;

  @Int64()
  external int KickOffTime;

  @Int64()
  external int PasswordLastSet;

  @Int64()
  external int PasswordCanChange;

  @Int64()
  external int PasswordMustChange;

  external Pointer<Utf16> LogonScript;

  external Pointer<Utf16> HomeDirectory;

  external Pointer<Utf16> FullName;

  external Pointer<Utf16> ProfilePath;

  external Pointer<Utf16> HomeDirectoryDrive;

  external Pointer<Utf16> LogonServer;

  @Uint32()
  external int UserFlags;

  @Uint32()
  external int PrivateDataLen;

  external Pointer<Uint8> PrivateData;
}

/// {@category Struct}
class WLX_DESKTOP extends Struct {
  @Uint32()
  external int Size;

  @Uint32()
  external int Flags;

  @IntPtr()
  external int hDesktop;

  external Pointer<Utf16> pszDesktopName;
}

/// {@category Struct}
class WLX_DISPATCH_VERSION_1_0 extends Struct {
  external Pointer<NativeFunction<PWLX_USE_CTRL_ALT_DEL>> WlxUseCtrlAltDel;

  external Pointer<NativeFunction<PWLX_SET_CONTEXT_POINTER>>
      WlxSetContextPointer;

  external Pointer<NativeFunction<PWLX_SAS_NOTIFY>> WlxSasNotify;

  external Pointer<NativeFunction<PWLX_SET_TIMEOUT>> WlxSetTimeout;

  external Pointer<NativeFunction<PWLX_ASSIGN_SHELL_PROTECTION>>
      WlxAssignShellProtection;

  external Pointer<NativeFunction<PWLX_MESSAGE_BOX>> WlxMessageBox;

  external Pointer<NativeFunction<PWLX_DIALOG_BOX>> WlxDialogBox;

  external Pointer<NativeFunction<PWLX_DIALOG_BOX_PARAM>> WlxDialogBoxParam;

  external Pointer<NativeFunction<PWLX_DIALOG_BOX_INDIRECT>>
      WlxDialogBoxIndirect;

  external Pointer<NativeFunction<PWLX_DIALOG_BOX_INDIRECT_PARAM>>
      WlxDialogBoxIndirectParam;

  external Pointer<NativeFunction<PWLX_SWITCH_DESKTOP_TO_USER>>
      WlxSwitchDesktopToUser;

  external Pointer<NativeFunction<PWLX_SWITCH_DESKTOP_TO_WINLOGON>>
      WlxSwitchDesktopToWinlogon;

  external Pointer<NativeFunction<PWLX_CHANGE_PASSWORD_NOTIFY>>
      WlxChangePasswordNotify;
}

/// {@category Struct}
class WLX_DISPATCH_VERSION_1_1 extends Struct {
  external Pointer<NativeFunction<PWLX_USE_CTRL_ALT_DEL>> WlxUseCtrlAltDel;

  external Pointer<NativeFunction<PWLX_SET_CONTEXT_POINTER>>
      WlxSetContextPointer;

  external Pointer<NativeFunction<PWLX_SAS_NOTIFY>> WlxSasNotify;

  external Pointer<NativeFunction<PWLX_SET_TIMEOUT>> WlxSetTimeout;

  external Pointer<NativeFunction<PWLX_ASSIGN_SHELL_PROTECTION>>
      WlxAssignShellProtection;

  external Pointer<NativeFunction<PWLX_MESSAGE_BOX>> WlxMessageBox;

  external Pointer<NativeFunction<PWLX_DIALOG_BOX>> WlxDialogBox;

  external Pointer<NativeFunction<PWLX_DIALOG_BOX_PARAM>> WlxDialogBoxParam;

  external Pointer<NativeFunction<PWLX_DIALOG_BOX_INDIRECT>>
      WlxDialogBoxIndirect;

  external Pointer<NativeFunction<PWLX_DIALOG_BOX_INDIRECT_PARAM>>
      WlxDialogBoxIndirectParam;

  external Pointer<NativeFunction<PWLX_SWITCH_DESKTOP_TO_USER>>
      WlxSwitchDesktopToUser;

  external Pointer<NativeFunction<PWLX_SWITCH_DESKTOP_TO_WINLOGON>>
      WlxSwitchDesktopToWinlogon;

  external Pointer<NativeFunction<PWLX_CHANGE_PASSWORD_NOTIFY>>
      WlxChangePasswordNotify;

  external Pointer<NativeFunction<PWLX_GET_SOURCE_DESKTOP>> WlxGetSourceDesktop;

  external Pointer<NativeFunction<PWLX_SET_RETURN_DESKTOP>> WlxSetReturnDesktop;

  external Pointer<NativeFunction<PWLX_CREATE_USER_DESKTOP>>
      WlxCreateUserDesktop;

  external Pointer<NativeFunction<PWLX_CHANGE_PASSWORD_NOTIFY_EX>>
      WlxChangePasswordNotifyEx;
}

/// {@category Struct}
class WLX_DISPATCH_VERSION_1_2 extends Struct {
  external Pointer<NativeFunction<PWLX_USE_CTRL_ALT_DEL>> WlxUseCtrlAltDel;

  external Pointer<NativeFunction<PWLX_SET_CONTEXT_POINTER>>
      WlxSetContextPointer;

  external Pointer<NativeFunction<PWLX_SAS_NOTIFY>> WlxSasNotify;

  external Pointer<NativeFunction<PWLX_SET_TIMEOUT>> WlxSetTimeout;

  external Pointer<NativeFunction<PWLX_ASSIGN_SHELL_PROTECTION>>
      WlxAssignShellProtection;

  external Pointer<NativeFunction<PWLX_MESSAGE_BOX>> WlxMessageBox;

  external Pointer<NativeFunction<PWLX_DIALOG_BOX>> WlxDialogBox;

  external Pointer<NativeFunction<PWLX_DIALOG_BOX_PARAM>> WlxDialogBoxParam;

  external Pointer<NativeFunction<PWLX_DIALOG_BOX_INDIRECT>>
      WlxDialogBoxIndirect;

  external Pointer<NativeFunction<PWLX_DIALOG_BOX_INDIRECT_PARAM>>
      WlxDialogBoxIndirectParam;

  external Pointer<NativeFunction<PWLX_SWITCH_DESKTOP_TO_USER>>
      WlxSwitchDesktopToUser;

  external Pointer<NativeFunction<PWLX_SWITCH_DESKTOP_TO_WINLOGON>>
      WlxSwitchDesktopToWinlogon;

  external Pointer<NativeFunction<PWLX_CHANGE_PASSWORD_NOTIFY>>
      WlxChangePasswordNotify;

  external Pointer<NativeFunction<PWLX_GET_SOURCE_DESKTOP>> WlxGetSourceDesktop;

  external Pointer<NativeFunction<PWLX_SET_RETURN_DESKTOP>> WlxSetReturnDesktop;

  external Pointer<NativeFunction<PWLX_CREATE_USER_DESKTOP>>
      WlxCreateUserDesktop;

  external Pointer<NativeFunction<PWLX_CHANGE_PASSWORD_NOTIFY_EX>>
      WlxChangePasswordNotifyEx;

  external Pointer<NativeFunction<PWLX_CLOSE_USER_DESKTOP>> WlxCloseUserDesktop;
}

/// {@category Struct}
class WLX_DISPATCH_VERSION_1_3 extends Struct {
  external Pointer<NativeFunction<PWLX_USE_CTRL_ALT_DEL>> WlxUseCtrlAltDel;

  external Pointer<NativeFunction<PWLX_SET_CONTEXT_POINTER>>
      WlxSetContextPointer;

  external Pointer<NativeFunction<PWLX_SAS_NOTIFY>> WlxSasNotify;

  external Pointer<NativeFunction<PWLX_SET_TIMEOUT>> WlxSetTimeout;

  external Pointer<NativeFunction<PWLX_ASSIGN_SHELL_PROTECTION>>
      WlxAssignShellProtection;

  external Pointer<NativeFunction<PWLX_MESSAGE_BOX>> WlxMessageBox;

  external Pointer<NativeFunction<PWLX_DIALOG_BOX>> WlxDialogBox;

  external Pointer<NativeFunction<PWLX_DIALOG_BOX_PARAM>> WlxDialogBoxParam;

  external Pointer<NativeFunction<PWLX_DIALOG_BOX_INDIRECT>>
      WlxDialogBoxIndirect;

  external Pointer<NativeFunction<PWLX_DIALOG_BOX_INDIRECT_PARAM>>
      WlxDialogBoxIndirectParam;

  external Pointer<NativeFunction<PWLX_SWITCH_DESKTOP_TO_USER>>
      WlxSwitchDesktopToUser;

  external Pointer<NativeFunction<PWLX_SWITCH_DESKTOP_TO_WINLOGON>>
      WlxSwitchDesktopToWinlogon;

  external Pointer<NativeFunction<PWLX_CHANGE_PASSWORD_NOTIFY>>
      WlxChangePasswordNotify;

  external Pointer<NativeFunction<PWLX_GET_SOURCE_DESKTOP>> WlxGetSourceDesktop;

  external Pointer<NativeFunction<PWLX_SET_RETURN_DESKTOP>> WlxSetReturnDesktop;

  external Pointer<NativeFunction<PWLX_CREATE_USER_DESKTOP>>
      WlxCreateUserDesktop;

  external Pointer<NativeFunction<PWLX_CHANGE_PASSWORD_NOTIFY_EX>>
      WlxChangePasswordNotifyEx;

  external Pointer<NativeFunction<PWLX_CLOSE_USER_DESKTOP>> WlxCloseUserDesktop;

  external Pointer<NativeFunction<PWLX_SET_OPTION>> WlxSetOption;

  external Pointer<NativeFunction<PWLX_GET_OPTION>> WlxGetOption;

  external Pointer<NativeFunction<PWLX_WIN31_MIGRATE>> WlxWin31Migrate;

  external Pointer<NativeFunction<PWLX_QUERY_CLIENT_CREDENTIALS>>
      WlxQueryClientCredentials;

  external Pointer<NativeFunction<PWLX_QUERY_IC_CREDENTIALS>>
      WlxQueryInetConnectorCredentials;

  external Pointer<NativeFunction<PWLX_DISCONNECT>> WlxDisconnect;

  external Pointer<NativeFunction<PWLX_QUERY_TERMINAL_SERVICES_DATA>>
      WlxQueryTerminalServicesData;
}

/// {@category Struct}
class WLX_DISPATCH_VERSION_1_4 extends Struct {
  external Pointer<NativeFunction<PWLX_USE_CTRL_ALT_DEL>> WlxUseCtrlAltDel;

  external Pointer<NativeFunction<PWLX_SET_CONTEXT_POINTER>>
      WlxSetContextPointer;

  external Pointer<NativeFunction<PWLX_SAS_NOTIFY>> WlxSasNotify;

  external Pointer<NativeFunction<PWLX_SET_TIMEOUT>> WlxSetTimeout;

  external Pointer<NativeFunction<PWLX_ASSIGN_SHELL_PROTECTION>>
      WlxAssignShellProtection;

  external Pointer<NativeFunction<PWLX_MESSAGE_BOX>> WlxMessageBox;

  external Pointer<NativeFunction<PWLX_DIALOG_BOX>> WlxDialogBox;

  external Pointer<NativeFunction<PWLX_DIALOG_BOX_PARAM>> WlxDialogBoxParam;

  external Pointer<NativeFunction<PWLX_DIALOG_BOX_INDIRECT>>
      WlxDialogBoxIndirect;

  external Pointer<NativeFunction<PWLX_DIALOG_BOX_INDIRECT_PARAM>>
      WlxDialogBoxIndirectParam;

  external Pointer<NativeFunction<PWLX_SWITCH_DESKTOP_TO_USER>>
      WlxSwitchDesktopToUser;

  external Pointer<NativeFunction<PWLX_SWITCH_DESKTOP_TO_WINLOGON>>
      WlxSwitchDesktopToWinlogon;

  external Pointer<NativeFunction<PWLX_CHANGE_PASSWORD_NOTIFY>>
      WlxChangePasswordNotify;

  external Pointer<NativeFunction<PWLX_GET_SOURCE_DESKTOP>> WlxGetSourceDesktop;

  external Pointer<NativeFunction<PWLX_SET_RETURN_DESKTOP>> WlxSetReturnDesktop;

  external Pointer<NativeFunction<PWLX_CREATE_USER_DESKTOP>>
      WlxCreateUserDesktop;

  external Pointer<NativeFunction<PWLX_CHANGE_PASSWORD_NOTIFY_EX>>
      WlxChangePasswordNotifyEx;

  external Pointer<NativeFunction<PWLX_CLOSE_USER_DESKTOP>> WlxCloseUserDesktop;

  external Pointer<NativeFunction<PWLX_SET_OPTION>> WlxSetOption;

  external Pointer<NativeFunction<PWLX_GET_OPTION>> WlxGetOption;

  external Pointer<NativeFunction<PWLX_WIN31_MIGRATE>> WlxWin31Migrate;

  external Pointer<NativeFunction<PWLX_QUERY_CLIENT_CREDENTIALS>>
      WlxQueryClientCredentials;

  external Pointer<NativeFunction<PWLX_QUERY_IC_CREDENTIALS>>
      WlxQueryInetConnectorCredentials;

  external Pointer<NativeFunction<PWLX_DISCONNECT>> WlxDisconnect;

  external Pointer<NativeFunction<PWLX_QUERY_TERMINAL_SERVICES_DATA>>
      WlxQueryTerminalServicesData;

  external Pointer<NativeFunction<PWLX_QUERY_CONSOLESWITCH_CREDENTIALS>>
      WlxQueryConsoleSwitchCredentials;

  external Pointer<NativeFunction<PWLX_QUERY_TS_LOGON_CREDENTIALS>>
      WlxQueryTsLogonCredentials;
}

/// {@category Struct}
class WLX_MPR_NOTIFY_INFO extends Struct {
  external Pointer<Utf16> pszUserName;

  external Pointer<Utf16> pszDomain;

  external Pointer<Utf16> pszPassword;

  external Pointer<Utf16> pszOldPassword;
}

/// {@category Struct}
class WLX_NOTIFICATION_INFO extends Struct {
  @Uint32()
  external int Size;

  @Uint32()
  external int Flags;

  external Pointer<Utf16> UserName;

  external Pointer<Utf16> Domain;

  external Pointer<Utf16> WindowStation;

  @IntPtr()
  external int hToken;

  @IntPtr()
  external int hDesktop;

  external Pointer<NativeFunction<PFNMSGECALLBACK>> pStatusCallback;
}

/// {@category Struct}
class WLX_PROFILE_V1_0 extends Struct {
  @Uint32()
  external int dwType;

  external Pointer<Utf16> pszProfile;
}

/// {@category Struct}
class WLX_PROFILE_V2_0 extends Struct {
  @Uint32()
  external int dwType;

  external Pointer<Utf16> pszProfile;

  external Pointer<Utf16> pszPolicy;

  external Pointer<Utf16> pszNetworkDefaultUserProfile;

  external Pointer<Utf16> pszServerName;

  external Pointer<Utf16> pszEnvironment;
}

/// {@category Struct}
class WLX_SC_NOTIFICATION_INFO extends Struct {
  external Pointer<Utf16> pszCard;

  external Pointer<Utf16> pszReader;

  external Pointer<Utf16> pszContainer;

  external Pointer<Utf16> pszCryptoProvider;
}

/// {@category Struct}
class WLX_TERMINAL_SERVICES_DATA extends Struct {
  @Array(257)
  external Array<Uint16> _ProfilePath;

  String get ProfilePath {
    final charCodes = <int>[];
    for (var i = 0; i < 257; i++) {
      charCodes.add(_ProfilePath[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set ProfilePath(String value) {
    final stringToStore = value.padRight(257, '\x00');
    for (var i = 0; i < 257; i++) {
      _ProfilePath[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(257)
  external Array<Uint16> _HomeDir;

  String get HomeDir {
    final charCodes = <int>[];
    for (var i = 0; i < 257; i++) {
      charCodes.add(_HomeDir[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set HomeDir(String value) {
    final stringToStore = value.padRight(257, '\x00');
    for (var i = 0; i < 257; i++) {
      _HomeDir[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(4)
  external Array<Uint16> _HomeDirDrive;

  String get HomeDirDrive {
    final charCodes = <int>[];
    for (var i = 0; i < 4; i++) {
      charCodes.add(_HomeDirDrive[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set HomeDirDrive(String value) {
    final stringToStore = value.padRight(4, '\x00');
    for (var i = 0; i < 4; i++) {
      _HomeDirDrive[i] = stringToStore.codeUnitAt(i);
    }
  }
}
