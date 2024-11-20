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
@Native<NativeWin32Result Function(Pointer<Utf16>, Uint32, Uint32, Pointer)>()
external NativeWin32Result GetFileVersionInfoW_Wrapper(
  Pointer<Utf16> lptstrFilename,
  int dwHandle,
  int dwLen,
  Pointer lpData,
);

@internal
@Native<
  NativeWin32Result Function(Uint32, Pointer<Utf16>, Uint32, Uint32, Pointer)
>()
external NativeWin32Result GetFileVersionInfoExW_Wrapper(
  int dwFlags,
  Pointer<Utf16> lpwstrFilename,
  int dwHandle,
  int dwLen,
  Pointer lpData,
);

@internal
@Native<NativeWin32Result Function(Pointer<Utf16>, Pointer<Uint32>)>()
external NativeWin32Result GetFileVersionInfoSizeW_Wrapper(
  Pointer<Utf16> lptstrFilename,
  Pointer<Uint32> lpdwHandle,
);

@internal
@Native<NativeWin32Result Function(Uint32, Pointer<Utf16>, Pointer<Uint32>)>()
external NativeWin32Result GetFileVersionInfoSizeExW_Wrapper(
  int dwFlags,
  Pointer<Utf16> lpwstrFilename,
  Pointer<Uint32> lpdwHandle,
);
