// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';

import '../bstr.dart';
import '../callbacks.g.dart';
import '../com/interface.g.dart';
import '../com/iunknown.g.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../enums.g.dart';
import '../exception.dart';
import '../extensions/pointer.dart';
import '../functions.dart';
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

final _psapi = DynamicLibrary.open('psapi.dll');

/// Removes as many pages as possible from the working set of the specified
/// process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/psapi/nf-psapi-emptyworkingset>.
///
/// {@category psapi}
Win32Result<bool> EmptyWorkingSet(HANDLE hProcess) {
  resolveGetLastError();
  final result_ = _EmptyWorkingSet(hProcess);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _EmptyWorkingSet = _psapi
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'EmptyWorkingSet',
    );

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
  resolveGetLastError();
  final result_ = _EnumDeviceDrivers(lpImageBase, cb, lpcbNeeded);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _EnumDeviceDrivers = _psapi
    .lookupFunction<
      Int32 Function(Pointer<Pointer>, Uint32, Pointer<Uint32>),
      int Function(Pointer<Pointer>, int, Pointer<Uint32>)
    >('EnumDeviceDrivers');

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
  resolveGetLastError();
  final result_ = _EnumPageFiles(pCallBackRoutine, pContext);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _EnumPageFiles = _psapi
    .lookupFunction<
      Int32 Function(
        Pointer<NativeFunction<PENUM_PAGE_FILE_CALLBACK>>,
        Pointer,
      ),
      int Function(Pointer<NativeFunction<PENUM_PAGE_FILE_CALLBACK>>, Pointer)
    >('EnumPageFilesW');

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
  resolveGetLastError();
  final result_ = _EnumProcesses(lpidProcess, cb, lpcbNeeded);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _EnumProcesses = _psapi
    .lookupFunction<
      Int32 Function(Pointer<Uint32>, Uint32, Pointer<Uint32>),
      int Function(Pointer<Uint32>, int, Pointer<Uint32>)
    >('EnumProcesses');

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
  resolveGetLastError();
  final result_ = _EnumProcessModules(hProcess, lphModule, cb, lpcbNeeded);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _EnumProcessModules = _psapi
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Pointer>, Uint32, Pointer<Uint32>),
      int Function(Pointer, Pointer<Pointer>, int, Pointer<Uint32>)
    >('EnumProcessModules');

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
  resolveGetLastError();
  final result_ = _EnumProcessModulesEx(
    hProcess,
    lphModule,
    cb,
    lpcbNeeded,
    dwFilterFlag,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _EnumProcessModulesEx = _psapi
    .lookupFunction<
      Int32 Function(
        Pointer,
        Pointer<Pointer>,
        Uint32,
        Pointer<Uint32>,
        Uint32,
      ),
      int Function(Pointer, Pointer<Pointer>, int, Pointer<Uint32>, int)
    >('EnumProcessModulesEx');

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
  resolveGetLastError();
  final result_ = _GetDeviceDriverBaseName(imageBase, lpBaseName, nSize);
  return .new(value: result_, error: GetLastError());
}

final _GetDeviceDriverBaseName = _psapi
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Utf16>, Uint32),
      int Function(Pointer, Pointer<Utf16>, int)
    >('GetDeviceDriverBaseNameW');

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
  resolveGetLastError();
  final result_ = _GetDeviceDriverFileName(imageBase, lpFilename, nSize);
  return .new(value: result_, error: GetLastError());
}

final _GetDeviceDriverFileName = _psapi
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Utf16>, Uint32),
      int Function(Pointer, Pointer<Utf16>, int)
    >('GetDeviceDriverFileNameW');

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
  resolveGetLastError();
  final result_ = _GetMappedFileName(hProcess, lpv, lpFilename, nSize);
  return .new(value: result_, error: GetLastError());
}

final _GetMappedFileName = _psapi
    .lookupFunction<
      Uint32 Function(Pointer, Pointer, Pointer<Utf16>, Uint32),
      int Function(Pointer, Pointer, Pointer<Utf16>, int)
    >('GetMappedFileNameW');

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
  resolveGetLastError();
  final result_ = _GetModuleBaseName(
    hProcess,
    hModule ?? nullptr,
    lpBaseName,
    nSize,
  );
  return .new(value: result_, error: GetLastError());
}

final _GetModuleBaseName = _psapi
    .lookupFunction<
      Uint32 Function(Pointer, Pointer, Pointer<Utf16>, Uint32),
      int Function(Pointer, Pointer, Pointer<Utf16>, int)
    >('GetModuleBaseNameW');

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
  resolveGetLastError();
  final result_ = _GetModuleFileNameEx(
    hProcess ?? nullptr,
    hModule ?? nullptr,
    lpFilename,
    nSize,
  );
  return .new(value: result_, error: GetLastError());
}

final _GetModuleFileNameEx = _psapi
    .lookupFunction<
      Uint32 Function(Pointer, Pointer, Pointer<Utf16>, Uint32),
      int Function(Pointer, Pointer, Pointer<Utf16>, int)
    >('GetModuleFileNameExW');

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
  resolveGetLastError();
  final result_ = _GetModuleInformation(hProcess, hModule, lpmodinfo, cb);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetModuleInformation = _psapi
    .lookupFunction<
      Int32 Function(Pointer, Pointer, Pointer<MODULEINFO>, Uint32),
      int Function(Pointer, Pointer, Pointer<MODULEINFO>, int)
    >('GetModuleInformation');

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
  resolveGetLastError();
  final result_ = _GetPerformanceInfo(pPerformanceInformation, cb);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetPerformanceInfo = _psapi
    .lookupFunction<
      Int32 Function(Pointer<PERFORMANCE_INFORMATION>, Uint32),
      int Function(Pointer<PERFORMANCE_INFORMATION>, int)
    >('GetPerformanceInfo');

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
  resolveGetLastError();
  final result_ = _GetProcessImageFileName(hProcess, lpImageFileName, nSize);
  return .new(value: result_, error: GetLastError());
}

final _GetProcessImageFileName = _psapi
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Utf16>, Uint32),
      int Function(Pointer, Pointer<Utf16>, int)
    >('GetProcessImageFileNameW');

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
  resolveGetLastError();
  final result_ = _GetProcessMemoryInfo(process, ppsmemCounters, cb);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetProcessMemoryInfo = _psapi
    .lookupFunction<
      Int32 Function(Pointer, Pointer<PROCESS_MEMORY_COUNTERS>, Uint32),
      int Function(Pointer, Pointer<PROCESS_MEMORY_COUNTERS>, int)
    >('GetProcessMemoryInfo');
