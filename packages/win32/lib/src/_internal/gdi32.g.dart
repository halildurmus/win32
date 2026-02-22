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
@Native<
  NativeWin32Result Function(
    Pointer,
    Int32,
    Int32,
    Int32,
    Int32,
    Pointer,
    Int32,
    Int32,
    Uint32,
  )
>()
external NativeWin32Result BitBlt_Wrapper(
  Pointer hdc,
  int x,
  int y,
  int cx,
  int cy,
  Pointer hdcSrc,
  int x1,
  int y1,
  int rop,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Pointer<BITMAPINFO>,
    Uint32,
    Pointer<Pointer>,
    Pointer,
    Uint32,
  )
>()
external NativeWin32Result CreateDIBSection_Wrapper(
  Pointer hdc,
  Pointer<BITMAPINFO> pbmi,
  int usage,
  Pointer<Pointer> ppvBits,
  Pointer hSection,
  int offset,
);
