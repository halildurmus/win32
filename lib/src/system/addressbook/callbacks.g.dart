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
import '../../system/addressbook/ITableData.dart';
import '../../system/addressbook/IMAPITable.dart';
import '../../foundation/structs.g.dart';
import '../../system/addressbook/IAddrBook.dart';
import '../../system/addressbook/structs.g.dart';
import '../../system/addressbook/IMailUser.dart';
import '../../system/addressbook/callbacks.g.dart';
import '../../system/com/IStream.dart';
import '../../system/addressbook/IWABObject.dart';

typedef CALLERRELEASE = Void Function(
  Uint32 ulCallerData,
  Pointer<COMObject> lpTblData,
  Pointer<COMObject> lpVue,
);
typedef FNIDLE = Int32 Function(
  Pointer param0,
);
typedef IWABOBJECT_AddRef_METHOD = Uint32 Function();
typedef IWABOBJECT_AllocateBuffer_METHOD = Int32 Function(
  Uint32 cbSize,
  Pointer<Pointer> lppBuffer,
);
typedef IWABOBJECT_AllocateMore_METHOD = Int32 Function(
  Uint32 cbSize,
  Pointer lpObject,
  Pointer<Pointer> lppBuffer,
);
typedef IWABOBJECT_Backup_METHOD = Int32 Function(
  Pointer<Utf8> lpFileName,
);
typedef IWABOBJECT_Find_METHOD = Int32 Function(
  Pointer<COMObject> lpIAB,
  IntPtr hWnd,
);
typedef IWABOBJECT_FreeBuffer_METHOD = Int32 Function(
  Pointer lpBuffer,
);
typedef IWABOBJECT_GetLastError_METHOD = Int32 Function(
  Int32 hResult,
  Uint32 ulFlags,
  Pointer<Pointer<MAPIERROR>> lppMAPIError,
);
typedef IWABOBJECT_GetMe_METHOD = Int32 Function(
  Pointer<COMObject> lpIAB,
  Uint32 ulFlags,
  Pointer<Uint32> lpdwAction,
  Pointer<SBinary> lpsbEID,
  IntPtr hwnd,
);
typedef IWABOBJECT_Import_METHOD = Int32 Function(
  Pointer<Utf8> lpWIP,
);
typedef IWABOBJECT_LDAPUrl_METHOD = Int32 Function(
  Pointer<COMObject> lpIAB,
  IntPtr hWnd,
  Uint32 ulFlags,
  Pointer<Utf8> lpszURL,
  Pointer<Pointer<COMObject>> lppMailUser,
);
typedef IWABOBJECT_QueryInterface_METHOD = Int32 Function(
  Pointer<GUID> riid,
  Pointer<Pointer> ppvObj,
);
typedef IWABOBJECT_Release_METHOD = Uint32 Function();
typedef IWABOBJECT_SetMe_METHOD = Int32 Function(
  Pointer<COMObject> lpIAB,
  Uint32 ulFlags,
  SBinary sbEID,
  IntPtr hwnd,
);
typedef IWABOBJECT_VCardCreate_METHOD = Int32 Function(
  Pointer<COMObject> lpIAB,
  Uint32 ulFlags,
  Pointer<Utf8> lpszVCard,
  Pointer<COMObject> lpMailUser,
);
typedef IWABOBJECT_VCardDisplay_METHOD = Int32 Function(
  Pointer<COMObject> lpIAB,
  IntPtr hWnd,
  Pointer<Utf8> lpszFileName,
);
typedef IWABOBJECT_VCardRetrieve_METHOD = Int32 Function(
  Pointer<COMObject> lpIAB,
  Uint32 ulFlags,
  Pointer<Utf8> lpszVCard,
  Pointer<Pointer<COMObject>> lppMailUser,
);
typedef LPALLOCATEBUFFER = Int32 Function(
  Uint32 cbSize,
  Pointer<Pointer> lppBuffer,
);
typedef LPALLOCATEMORE = Int32 Function(
  Uint32 cbSize,
  Pointer lpObject,
  Pointer<Pointer> lppBuffer,
);
typedef LPCREATECONVERSATIONINDEX = Int32 Function(
  Uint32 cbParent,
  Pointer<Uint8> lpbParent,
  Pointer<Uint32> lpcbConvIndex,
  Pointer<Pointer<Uint8>> lppbConvIndex,
);
typedef LPDISPATCHNOTIFICATIONS = Int32 Function(
  Uint32 ulFlags,
);
typedef LPFNABSDI = Int32 Function(
  IntPtr ulUIParam,
  Pointer lpvmsg,
);
typedef LPFNBUTTON = Int32 Function(
  IntPtr ulUIParam,
  Pointer lpvContext,
  Uint32 cbEntryID,
  Pointer<ENTRYID> lpSelection,
  Uint32 ulFlags,
);
typedef LPFNDISMISS = Void Function(
  IntPtr ulUIParam,
  Pointer lpvContext,
);
typedef LPFREEBUFFER = Uint32 Function(
  Pointer lpBuffer,
);
typedef LPNOTIFCALLBACK = Int32 Function(
  Pointer lpvContext,
  Uint32 cNotification,
  Pointer<NOTIFICATION> lpNotifications,
);
typedef LPOPENSTREAMONFILE = Int32 Function(
  Pointer<NativeFunction<LPALLOCATEBUFFER>> lpAllocateBuffer,
  Pointer<NativeFunction<LPFREEBUFFER>> lpFreeBuffer,
  Uint32 ulFlags,
  Pointer<Int8> lpszFileName,
  Pointer<Int8> lpszPrefix,
  Pointer<Pointer<COMObject>> lppStream,
);
typedef LPWABALLOCATEBUFFER = Int32 Function(
  Pointer<COMObject> lpWABObject,
  Uint32 cbSize,
  Pointer<Pointer> lppBuffer,
);
typedef LPWABALLOCATEMORE = Int32 Function(
  Pointer<COMObject> lpWABObject,
  Uint32 cbSize,
  Pointer lpObject,
  Pointer<Pointer> lppBuffer,
);
typedef LPWABFREEBUFFER = Uint32 Function(
  Pointer<COMObject> lpWABObject,
  Pointer lpBuffer,
);
typedef LPWABOPEN = Int32 Function(
  Pointer<Pointer<COMObject>> lppAdrBook,
  Pointer<Pointer<COMObject>> lppWABObject,
  Pointer<WAB_PARAM> lpWP,
  Uint32 Reserved2,
);
typedef LPWABOPENEX = Int32 Function(
  Pointer<Pointer<COMObject>> lppAdrBook,
  Pointer<Pointer<COMObject>> lppWABObject,
  Pointer<WAB_PARAM> lpWP,
  Uint32 Reserved,
  Pointer<NativeFunction<LPALLOCATEBUFFER>> fnAllocateBuffer,
  Pointer<NativeFunction<LPALLOCATEMORE>> fnAllocateMore,
  Pointer<NativeFunction<LPFREEBUFFER>> fnFreeBuffer,
);
typedef PFNIDLE = Int32 Function();
