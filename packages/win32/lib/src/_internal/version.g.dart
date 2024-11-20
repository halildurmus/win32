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
@Native<BOOL Function(PCWSTR, Uint32, Uint32, Pointer)>()
external int GetFileVersionInfoW_Wrapper(
  PCWSTR lptstrFilename,
  int dwHandle,
  int dwLen,
  Pointer lpData,
);

@internal
@Native<BOOL Function(Uint32, PCWSTR, Uint32, Uint32, Pointer)>()
external int GetFileVersionInfoExW_Wrapper(
  int dwFlags,
  PCWSTR lpwstrFilename,
  int dwHandle,
  int dwLen,
  Pointer lpData,
);

@internal
@Native<Uint32 Function(PCWSTR, Pointer<Uint32>)>()
external int GetFileVersionInfoSizeW_Wrapper(
  PCWSTR lptstrFilename,
  Pointer<Uint32> lpdwHandle,
);

@internal
@Native<Uint32 Function(Uint32, PCWSTR, Pointer<Uint32>)>()
external int GetFileVersionInfoSizeExW_Wrapper(
  int dwFlags,
  PCWSTR lpwstrFilename,
  Pointer<Uint32> lpdwHandle,
);
