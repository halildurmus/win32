// Wrappers for Win32 API functions.
//
// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
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

@internal
@Native<
  BOOL Function(HDC, Int32, Int32, Int32, Int32, HDC, Int32, Int32, Uint32)
>()
external int BitBlt_Wrapper(
  int hdc,
  int x,
  int y,
  int cx,
  int cy,
  int hdcSrc,
  int x1,
  int y1,
  int rop,
);

@internal
@Native<
  HBITMAP Function(
    HDC,
    Pointer<BITMAPINFO>,
    Uint32,
    Pointer<Pointer>,
    HANDLE,
    Uint32,
  )
>()
external int CreateDIBSection_Wrapper(
  int hdc,
  Pointer<BITMAPINFO> pbmi,
  int usage,
  Pointer<Pointer> ppvBits,
  int hSection,
  int offset,
);
