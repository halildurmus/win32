// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';

import '../_internal/psapi.g.dart';
import '../_internal/win32.dart';
import '../bstr.dart';
import '../callbacks.g.dart';
import '../com/interface.g.dart';
import '../com/iunknown.g.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../enums.g.dart';
import '../exception.dart';
import '../extensions/pointer.dart';
import '../hresult.dart';
import '../hstring.dart';
import '../macros.dart';
import '../ntstatus.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../rpc_status.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import '../win32_error.dart';
import '../win32_result.dart';

/// Removes as many pages as possible from the working set of the specified
/// process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/psapi/nf-psapi-emptyworkingset>.
///
/// {@category psapi}
Win32Result<bool> EmptyWorkingSet(HANDLE hProcess) {
  final result_ = EmptyWorkingSet_Wrapper(hProcess);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves the load address for each device driver in the system.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/psapi/nf-psapi-enumdevicedrivers>.
///
/// {@category psapi}
Win32Result<bool> EnumDeviceDrivers(
  Pointer<Pointer> lpImageBase,
  int cb,
  Pointer<Uint32> lpcbNeeded,
) {
  final result_ = EnumDeviceDrivers_Wrapper(lpImageBase, cb, lpcbNeeded);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Calls the callback routine for each installed pagefile in the system.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/psapi/nf-psapi-enumpagefilesw>.
///
/// {@category psapi}
Win32Result<bool> EnumPageFiles(
  Pointer<NativeFunction<PENUM_PAGE_FILE_CALLBACK>> pCallBackRoutine,
  Pointer pContext,
) {
  final result_ = EnumPageFilesW_Wrapper(pCallBackRoutine, pContext);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves the process identifier for each process object in the system.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/psapi/nf-psapi-enumprocesses>.
///
/// {@category psapi}
Win32Result<bool> EnumProcesses(
  Pointer<Uint32> lpidProcess,
  int cb,
  Pointer<Uint32> lpcbNeeded,
) {
  final result_ = EnumProcesses_Wrapper(lpidProcess, cb, lpcbNeeded);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves a handle for each module in the specified process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/psapi/nf-psapi-enumprocessmodules>.
///
/// {@category psapi}
Win32Result<bool> EnumProcessModules(
  HANDLE hProcess,
  Pointer<Pointer> lphModule,
  int cb,
  Pointer<Uint32> lpcbNeeded,
) {
  final result_ = EnumProcessModules_Wrapper(
    hProcess,
    lphModule,
    cb,
    lpcbNeeded,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves a handle for each module in the specified process that meets the
/// specified filter criteria.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/psapi/nf-psapi-enumprocessmodulesex>.
///
/// {@category psapi}
Win32Result<bool> EnumProcessModulesEx(
  HANDLE hProcess,
  Pointer<Pointer> lphModule,
  int cb,
  Pointer<Uint32> lpcbNeeded,
  ENUM_PROCESS_MODULES_EX_FLAGS dwFilterFlag,
) {
  final result_ = EnumProcessModulesEx_Wrapper(
    hProcess,
    lphModule,
    cb,
    lpcbNeeded,
    dwFilterFlag,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves the base name of the specified device driver.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/psapi/nf-psapi-getdevicedriverbasenamew>.
///
/// {@category psapi}
Win32Result<int> GetDeviceDriverBaseName(
  Pointer imageBase,
  PWSTR lpBaseName,
  int nSize,
) {
  final result_ = GetDeviceDriverBaseNameW_Wrapper(
    imageBase,
    lpBaseName,
    nSize,
  );
  return Win32Result(value: result_.value.u32, error: result_.error);
}

/// Retrieves the path available for the specified device driver.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/psapi/nf-psapi-getdevicedriverfilenamew>.
///
/// {@category psapi}
Win32Result<int> GetDeviceDriverFileName(
  Pointer imageBase,
  PWSTR lpFilename,
  int nSize,
) {
  final result_ = GetDeviceDriverFileNameW_Wrapper(
    imageBase,
    lpFilename,
    nSize,
  );
  return Win32Result(value: result_.value.u32, error: result_.error);
}

/// Checks whether the specified address is within a memory-mapped file in the
/// address space of the specified process.
///
/// If so, the function returns the name of the memory-mapped file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/psapi/nf-psapi-getmappedfilenamew>.
///
/// {@category psapi}
Win32Result<int> GetMappedFileName(
  HANDLE hProcess,
  Pointer lpv,
  PWSTR lpFilename,
  int nSize,
) {
  final result_ = GetMappedFileNameW_Wrapper(hProcess, lpv, lpFilename, nSize);
  return Win32Result(value: result_.value.u32, error: result_.error);
}

/// Retrieves the base name of the specified module.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/psapi/nf-psapi-getmodulebasenamew>.
///
/// {@category psapi}
Win32Result<int> GetModuleBaseName(
  HANDLE hProcess,
  HMODULE? hModule,
  PWSTR lpBaseName,
  int nSize,
) {
  final result_ = GetModuleBaseNameW_Wrapper(
    hProcess,
    hModule ?? nullptr,
    lpBaseName,
    nSize,
  );
  return Win32Result(value: result_.value.u32, error: result_.error);
}

/// Retrieves the fully qualified path for the file containing the specified
/// module.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/psapi/nf-psapi-getmodulefilenameexw>.
///
/// {@category psapi}
Win32Result<int> GetModuleFileNameEx(
  HANDLE? hProcess,
  HMODULE? hModule,
  PWSTR lpFilename,
  int nSize,
) {
  final result_ = GetModuleFileNameExW_Wrapper(
    hProcess ?? nullptr,
    hModule ?? nullptr,
    lpFilename,
    nSize,
  );
  return Win32Result(value: result_.value.u32, error: result_.error);
}

/// Retrieves information about the specified module in the MODULEINFO
/// structure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/psapi/nf-psapi-getmoduleinformation>.
///
/// {@category psapi}
Win32Result<bool> GetModuleInformation(
  HANDLE hProcess,
  HMODULE hModule,
  Pointer<MODULEINFO> lpmodinfo,
  int cb,
) {
  final result_ = GetModuleInformation_Wrapper(
    hProcess,
    hModule,
    lpmodinfo,
    cb,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves the performance values contained in the PERFORMANCE_INFORMATION
/// structure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/psapi/nf-psapi-getperformanceinfo>.
///
/// {@category psapi}
Win32Result<bool> GetPerformanceInfo(
  Pointer<PERFORMANCE_INFORMATION> pPerformanceInformation,
  int cb,
) {
  final result_ = GetPerformanceInfo_Wrapper(pPerformanceInformation, cb);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves the name of the executable file for the specified process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/psapi/nf-psapi-getprocessimagefilenamew>.
///
/// {@category psapi}
Win32Result<int> GetProcessImageFileName(
  HANDLE hProcess,
  PWSTR lpImageFileName,
  int nSize,
) {
  final result_ = GetProcessImageFileNameW_Wrapper(
    hProcess,
    lpImageFileName,
    nSize,
  );
  return Win32Result(value: result_.value.u32, error: result_.error);
}

/// Retrieves information about the memory usage of the specified process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/psapi/nf-psapi-getprocessmemoryinfo>.
///
/// {@category psapi}
Win32Result<bool> GetProcessMemoryInfo(
  HANDLE process,
  Pointer<PROCESS_MEMORY_COUNTERS> ppsmemCounters,
  int cb,
) {
  final result_ = GetProcessMemoryInfo_Wrapper(process, ppsmemCounters, cb);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}
