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
@Native<NativeWin32Result Function(HANDLE)>()
external NativeWin32Result EmptyWorkingSet_Wrapper(int hProcess);

@internal
@Native<NativeWin32Result Function(Pointer<Pointer>, Uint32, Pointer<Uint32>)>()
external NativeWin32Result EnumDeviceDrivers_Wrapper(
  Pointer<Pointer> lpImageBase,
  int cb,
  Pointer<Uint32> lpcbNeeded,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer<NativeFunction<PENUM_PAGE_FILE_CALLBACK>>,
    Pointer,
  )
>()
external NativeWin32Result EnumPageFilesW_Wrapper(
  Pointer<NativeFunction<PENUM_PAGE_FILE_CALLBACK>> pCallBackRoutine,
  Pointer pContext,
);

@internal
@Native<NativeWin32Result Function(Pointer<Uint32>, Uint32, Pointer<Uint32>)>()
external NativeWin32Result EnumProcesses_Wrapper(
  Pointer<Uint32> lpidProcess,
  int cb,
  Pointer<Uint32> lpcbNeeded,
);

@internal
@Native<
  NativeWin32Result Function(HANDLE, Pointer<HMODULE>, Uint32, Pointer<Uint32>)
>()
external NativeWin32Result EnumProcessModules_Wrapper(
  int hProcess,
  Pointer<HMODULE> lphModule,
  int cb,
  Pointer<Uint32> lpcbNeeded,
);

@internal
@Native<
  NativeWin32Result Function(
    HANDLE,
    Pointer<HMODULE>,
    Uint32,
    Pointer<Uint32>,
    Uint32,
  )
>()
external NativeWin32Result EnumProcessModulesEx_Wrapper(
  int hProcess,
  Pointer<HMODULE> lphModule,
  int cb,
  Pointer<Uint32> lpcbNeeded,
  int dwFilterFlag,
);

@internal
@Native<NativeWin32Result Function(Pointer, PWSTR, Uint32)>()
external NativeWin32Result GetDeviceDriverBaseNameW_Wrapper(
  Pointer imageBase,
  PWSTR lpBaseName,
  int nSize,
);

@internal
@Native<NativeWin32Result Function(Pointer, PWSTR, Uint32)>()
external NativeWin32Result GetDeviceDriverFileNameW_Wrapper(
  Pointer imageBase,
  PWSTR lpFilename,
  int nSize,
);

@internal
@Native<NativeWin32Result Function(HANDLE, Pointer, PWSTR, Uint32)>()
external NativeWin32Result GetMappedFileNameW_Wrapper(
  int hProcess,
  Pointer lpv,
  PWSTR lpFilename,
  int nSize,
);

@internal
@Native<NativeWin32Result Function(HANDLE, HMODULE, PWSTR, Uint32)>()
external NativeWin32Result GetModuleBaseNameW_Wrapper(
  int hProcess,
  int hModule,
  PWSTR lpBaseName,
  int nSize,
);

@internal
@Native<NativeWin32Result Function(HANDLE, HMODULE, PWSTR, Uint32)>()
external NativeWin32Result GetModuleFileNameExW_Wrapper(
  int hProcess,
  int hModule,
  PWSTR lpFilename,
  int nSize,
);

@internal
@Native<
  NativeWin32Result Function(HANDLE, HMODULE, Pointer<MODULEINFO>, Uint32)
>()
external NativeWin32Result GetModuleInformation_Wrapper(
  int hProcess,
  int hModule,
  Pointer<MODULEINFO> lpmodinfo,
  int cb,
);

@internal
@Native<NativeWin32Result Function(Pointer<PERFORMANCE_INFORMATION>, Uint32)>()
external NativeWin32Result GetPerformanceInfo_Wrapper(
  Pointer<PERFORMANCE_INFORMATION> pPerformanceInformation,
  int cb,
);

@internal
@Native<NativeWin32Result Function(HANDLE, PWSTR, Uint32)>()
external NativeWin32Result GetProcessImageFileNameW_Wrapper(
  int hProcess,
  PWSTR lpImageFileName,
  int nSize,
);
