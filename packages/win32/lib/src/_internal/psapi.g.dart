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
@Native<BOOL Function(HANDLE)>()
external int EmptyWorkingSet_Wrapper(int hProcess);

@internal
@Native<BOOL Function(Pointer<Pointer>, Uint32, Pointer<Uint32>)>()
external int EnumDeviceDrivers_Wrapper(
  Pointer<Pointer> lpImageBase,
  int cb,
  Pointer<Uint32> lpcbNeeded,
);

@internal
@Native<
  BOOL Function(Pointer<NativeFunction<PENUM_PAGE_FILE_CALLBACK>>, Pointer)
>()
external int EnumPageFilesW_Wrapper(
  Pointer<NativeFunction<PENUM_PAGE_FILE_CALLBACK>> pCallBackRoutine,
  Pointer pContext,
);

@internal
@Native<BOOL Function(Pointer<Uint32>, Uint32, Pointer<Uint32>)>()
external int EnumProcesses_Wrapper(
  Pointer<Uint32> lpidProcess,
  int cb,
  Pointer<Uint32> lpcbNeeded,
);

@internal
@Native<BOOL Function(HANDLE, Pointer<HMODULE>, Uint32, Pointer<Uint32>)>()
external int EnumProcessModules_Wrapper(
  int hProcess,
  Pointer<HMODULE> lphModule,
  int cb,
  Pointer<Uint32> lpcbNeeded,
);

@internal
@Native<
  BOOL Function(HANDLE, Pointer<HMODULE>, Uint32, Pointer<Uint32>, Uint32)
>()
external int EnumProcessModulesEx_Wrapper(
  int hProcess,
  Pointer<HMODULE> lphModule,
  int cb,
  Pointer<Uint32> lpcbNeeded,
  int dwFilterFlag,
);

@internal
@Native<Uint32 Function(Pointer, PWSTR, Uint32)>()
external int GetDeviceDriverBaseNameW_Wrapper(
  Pointer imageBase,
  PWSTR lpBaseName,
  int nSize,
);

@internal
@Native<Uint32 Function(Pointer, PWSTR, Uint32)>()
external int GetDeviceDriverFileNameW_Wrapper(
  Pointer imageBase,
  PWSTR lpFilename,
  int nSize,
);

@internal
@Native<Uint32 Function(HANDLE, Pointer, PWSTR, Uint32)>()
external int GetMappedFileNameW_Wrapper(
  int hProcess,
  Pointer lpv,
  PWSTR lpFilename,
  int nSize,
);

@internal
@Native<Uint32 Function(HANDLE, HMODULE, PWSTR, Uint32)>()
external int GetModuleBaseNameW_Wrapper(
  int hProcess,
  int hModule,
  PWSTR lpBaseName,
  int nSize,
);

@internal
@Native<Uint32 Function(HANDLE, HMODULE, PWSTR, Uint32)>()
external int GetModuleFileNameExW_Wrapper(
  int hProcess,
  int hModule,
  PWSTR lpFilename,
  int nSize,
);

@internal
@Native<BOOL Function(HANDLE, HMODULE, Pointer<MODULEINFO>, Uint32)>()
external int GetModuleInformation_Wrapper(
  int hProcess,
  int hModule,
  Pointer<MODULEINFO> lpmodinfo,
  int cb,
);

@internal
@Native<BOOL Function(Pointer<PERFORMANCE_INFORMATION>, Uint32)>()
external int GetPerformanceInfo_Wrapper(
  Pointer<PERFORMANCE_INFORMATION> pPerformanceInformation,
  int cb,
);

@internal
@Native<Uint32 Function(HANDLE, PWSTR, Uint32)>()
external int GetProcessImageFileNameW_Wrapper(
  int hProcess,
  PWSTR lpImageFileName,
  int nSize,
);
