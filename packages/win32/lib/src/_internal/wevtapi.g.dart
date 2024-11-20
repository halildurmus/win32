// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Wrappers for Win32 API functions that wrap the native APIs and preserve the
// result of GetLastError(), making it easier to debug issues and handle errors
// reliably.
//
// ignore_for_file: non_constant_identifier_names, unused_import

@DefaultAsset('package:win32/win32.dart')
library;

import 'dart:ffi';

import 'package:meta/meta.dart';

import '../callbacks.g.dart';
import '../functions.dart';
import '../guid.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../structs.g.dart';
import '../types.dart';
import 'win32.dart' show NativeWin32Result;

@internal
@Native<NativeWin32Result Function(EVT_HANDLE)>()
external NativeWin32Result EvtClose_Wrapper(int object);

@internal
@Native<NativeWin32Result Function(PCWSTR)>()
external NativeWin32Result EvtCreateBookmark_Wrapper(PCWSTR bookmarkXml);

@internal
@Native<NativeWin32Result Function(Uint32, Pointer<PCWSTR>, Uint32)>()
external NativeWin32Result EvtCreateRenderContext_Wrapper(
  int valuePathsCount,
  Pointer<PCWSTR> valuePaths,
  int flags,
);

@internal
@Native<
  NativeWin32Result Function(
    EVT_HANDLE,
    Int32,
    Uint32,
    Pointer<EVT_VARIANT>,
    Pointer<Uint32>,
  )
>()
external NativeWin32Result EvtGetQueryInfo_Wrapper(
  int queryOrSubscription,
  int propertyId,
  int propertyValueBufferSize,
  Pointer<EVT_VARIANT> propertyValueBuffer,
  Pointer<Uint32> propertyValueBufferUsed,
);

@internal
@Native<
  NativeWin32Result Function(
    EVT_HANDLE,
    Uint32,
    Pointer<IntPtr>,
    Uint32,
    Uint32,
    Pointer<Uint32>,
  )
>()
external NativeWin32Result EvtNext_Wrapper(
  int resultSet,
  int eventsSize,
  Pointer<IntPtr> events,
  int timeout,
  int flags,
  Pointer<Uint32> returned,
);

@internal
@Native<NativeWin32Result Function(Int32, Pointer, Uint32, Uint32)>()
external NativeWin32Result EvtOpenSession_Wrapper(
  int loginClass,
  Pointer login,
  int timeout,
  int flags,
);

@internal
@Native<NativeWin32Result Function(EVT_HANDLE, PCWSTR, PCWSTR, Uint32)>()
external NativeWin32Result EvtQuery_Wrapper(
  int session,
  PCWSTR path,
  PCWSTR query,
  int flags,
);

@internal
@Native<
  NativeWin32Result Function(
    EVT_HANDLE,
    EVT_HANDLE,
    Uint32,
    Uint32,
    Pointer,
    Pointer<Uint32>,
    Pointer<Uint32>,
  )
>()
external NativeWin32Result EvtRender_Wrapper(
  int context,
  int fragment,
  int flags,
  int bufferSize,
  Pointer buffer,
  Pointer<Uint32> bufferUsed,
  Pointer<Uint32> propertyCount,
);

@internal
@Native<
  NativeWin32Result Function(EVT_HANDLE, Int64, EVT_HANDLE, Uint32, Uint32)
>()
external NativeWin32Result EvtSeek_Wrapper(
  int resultSet,
  int position,
  int bookmark,
  int timeout,
  int flags,
);

@internal
@Native<NativeWin32Result Function(EVT_HANDLE, EVT_HANDLE)>()
external NativeWin32Result EvtUpdateBookmark_Wrapper(int bookmark, int event);
