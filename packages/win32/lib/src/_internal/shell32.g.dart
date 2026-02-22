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
@Native<NativeWin32Result Function(Pointer<Utf16>, Pointer<Int32>)>()
external NativeWin32Result CommandLineToArgvW_Wrapper(
  Pointer<Utf16> lpCmdLine,
  Pointer<Int32> pNumArgs,
);

@internal
@Native<NativeWin32Result Function(Pointer<SHELLEXECUTEINFO>)>()
external NativeWin32Result ShellExecuteExW_Wrapper(
  Pointer<SHELLEXECUTEINFO> pExecInfo,
);

@internal
@Native<NativeWin32Result Function(Pointer<SHFILEOPSTRUCT>)>()
external NativeWin32Result SHFileOperationW_Wrapper(
  Pointer<SHFILEOPSTRUCT> lpFileOp,
);
