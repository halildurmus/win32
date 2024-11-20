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
@Native<NativeWin32Result Function(PCWSTR, Uint32, Uint32, Pointer)>()
external NativeWin32Result GetFileVersionInfoW_Wrapper(
  PCWSTR lptstrFilename,
  int dwHandle,
  int dwLen,
  Pointer lpData,
);

@internal
@Native<NativeWin32Result Function(Uint32, PCWSTR, Uint32, Uint32, Pointer)>()
external NativeWin32Result GetFileVersionInfoExW_Wrapper(
  int dwFlags,
  PCWSTR lpwstrFilename,
  int dwHandle,
  int dwLen,
  Pointer lpData,
);

@internal
@Native<NativeWin32Result Function(PCWSTR, Pointer<Uint32>)>()
external NativeWin32Result GetFileVersionInfoSizeW_Wrapper(
  PCWSTR lptstrFilename,
  Pointer<Uint32> lpdwHandle,
);

@internal
@Native<NativeWin32Result Function(Uint32, PCWSTR, Pointer<Uint32>)>()
external NativeWin32Result GetFileVersionInfoSizeExW_Wrapper(
  int dwFlags,
  PCWSTR lpwstrFilename,
  Pointer<Uint32> lpdwHandle,
);
