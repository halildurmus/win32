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
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result CommitTransaction_Wrapper(Pointer transactionHandle);

@internal
@Native<
  NativeWin32Result Function(
    Pointer<SECURITY_ATTRIBUTES>,
    Pointer<GUID>,
    Uint32,
    Uint32,
    Uint32,
    Uint32,
    Pointer<Utf16>,
  )
>()
external NativeWin32Result CreateTransaction_Wrapper(
  Pointer<SECURITY_ATTRIBUTES> lpTransactionAttributes,
  Pointer<GUID> uOW,
  int createOptions,
  int isolationLevel,
  int isolationFlags,
  int timeout,
  Pointer<Utf16> description,
);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result RollbackTransaction_Wrapper(
  Pointer transactionHandle,
);
