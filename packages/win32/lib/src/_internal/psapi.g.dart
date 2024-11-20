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
external NativeWin32Result EmptyWorkingSet_Wrapper(Pointer hProcess);

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
  NativeWin32Result Function(Pointer, Pointer<Pointer>, Uint32, Pointer<Uint32>)
>()
external NativeWin32Result EnumProcessModules_Wrapper(
  Pointer hProcess,
  Pointer<Pointer> lphModule,
  int cb,
  Pointer<Uint32> lpcbNeeded,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Pointer<Pointer>,
    Uint32,
    Pointer<Uint32>,
    Uint32,
  )
>()
external NativeWin32Result EnumProcessModulesEx_Wrapper(
  Pointer hProcess,
  Pointer<Pointer> lphModule,
  int cb,
  Pointer<Uint32> lpcbNeeded,
  int dwFilterFlag,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<Utf16>, Uint32)>()
external NativeWin32Result GetDeviceDriverBaseNameW_Wrapper(
  Pointer imageBase,
  Pointer<Utf16> lpBaseName,
  int nSize,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<Utf16>, Uint32)>()
external NativeWin32Result GetDeviceDriverFileNameW_Wrapper(
  Pointer imageBase,
  Pointer<Utf16> lpFilename,
  int nSize,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer, Pointer<Utf16>, Uint32)>()
external NativeWin32Result GetMappedFileNameW_Wrapper(
  Pointer hProcess,
  Pointer lpv,
  Pointer<Utf16> lpFilename,
  int nSize,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer, Pointer<Utf16>, Uint32)>()
external NativeWin32Result GetModuleBaseNameW_Wrapper(
  Pointer hProcess,
  Pointer hModule,
  Pointer<Utf16> lpBaseName,
  int nSize,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer, Pointer<Utf16>, Uint32)>()
external NativeWin32Result GetModuleFileNameExW_Wrapper(
  Pointer hProcess,
  Pointer hModule,
  Pointer<Utf16> lpFilename,
  int nSize,
);

@internal
@Native<
  NativeWin32Result Function(Pointer, Pointer, Pointer<MODULEINFO>, Uint32)
>()
external NativeWin32Result GetModuleInformation_Wrapper(
  Pointer hProcess,
  Pointer hModule,
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
@Native<NativeWin32Result Function(Pointer, Pointer<Utf16>, Uint32)>()
external NativeWin32Result GetProcessImageFileNameW_Wrapper(
  Pointer hProcess,
  Pointer<Utf16> lpImageFileName,
  int nSize,
);

@internal
@Native<
  NativeWin32Result Function(Pointer, Pointer<PROCESS_MEMORY_COUNTERS>, Uint32)
>()
external NativeWin32Result GetProcessMemoryInfo_Wrapper(
  Pointer process,
  Pointer<PROCESS_MEMORY_COUNTERS> ppsmemCounters,
  int cb,
);
