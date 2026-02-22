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

import 'package:ffi/ffi.dart';
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
@Native<NativeWin32Result Function(IntPtr)>()
external NativeWin32Result EvtClose_Wrapper(int object);

@internal
@Native<NativeWin32Result Function(Pointer<Utf16>)>()
external NativeWin32Result EvtCreateBookmark_Wrapper(
  Pointer<Utf16> bookmarkXml,
);

@internal
@Native<NativeWin32Result Function(Uint32, Pointer<Pointer<Utf16>>, Uint32)>()
external NativeWin32Result EvtCreateRenderContext_Wrapper(
  int valuePathsCount,
  Pointer<Pointer<Utf16>> valuePaths,
  int flags,
);

@internal
@Native<
  NativeWin32Result Function(
    IntPtr,
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
    IntPtr,
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
@Native<
  NativeWin32Result Function(IntPtr, Pointer<Utf16>, Pointer<Utf16>, Uint32)
>()
external NativeWin32Result EvtQuery_Wrapper(
  int session,
  Pointer<Utf16> path,
  Pointer<Utf16> query,
  int flags,
);

@internal
@Native<
  NativeWin32Result Function(
    IntPtr,
    IntPtr,
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
@Native<NativeWin32Result Function(IntPtr, Int64, IntPtr, Uint32, Uint32)>()
external NativeWin32Result EvtSeek_Wrapper(
  int resultSet,
  int position,
  int bookmark,
  int timeout,
  int flags,
);

@internal
@Native<NativeWin32Result Function(IntPtr, IntPtr)>()
external NativeWin32Result EvtUpdateBookmark_Wrapper(int bookmark, int event);
