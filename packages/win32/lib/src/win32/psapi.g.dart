// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../_internal/psapi.g.dart';
import '../allocator.dart';
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
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';

/// Removes as many pages as possible from the working set of the specified
/// process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/psapi/nf-psapi-emptyworkingset>.
///
/// {@category psapi}
@pragma('vm:prefer-inline')
bool EmptyWorkingSet(int hProcess) =>
    EmptyWorkingSet_Wrapper(hProcess) != FALSE;

/// Retrieves the load address for each device driver in the system.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/psapi/nf-psapi-enumdevicedrivers>.
///
/// {@category psapi}
@pragma('vm:prefer-inline')
bool EnumDeviceDrivers(
  Pointer<Pointer> lpImageBase,
  int cb,
  Pointer<Uint32> lpcbNeeded,
) => EnumDeviceDrivers_Wrapper(lpImageBase, cb, lpcbNeeded) != FALSE;

/// Calls the callback routine for each installed pagefile in the system.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/psapi/nf-psapi-enumpagefilesw>.
///
/// {@category psapi}
@pragma('vm:prefer-inline')
bool EnumPageFiles(
  Pointer<NativeFunction<PENUM_PAGE_FILE_CALLBACK>> pCallBackRoutine,
  Pointer pContext,
) => EnumPageFilesW_Wrapper(pCallBackRoutine, pContext) != FALSE;

/// Retrieves the process identifier for each process object in the system.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/psapi/nf-psapi-enumprocesses>.
///
/// {@category psapi}
@pragma('vm:prefer-inline')
bool EnumProcesses(
  Pointer<Uint32> lpidProcess,
  int cb,
  Pointer<Uint32> lpcbNeeded,
) => EnumProcesses_Wrapper(lpidProcess, cb, lpcbNeeded) != FALSE;

/// Retrieves a handle for each module in the specified process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/psapi/nf-psapi-enumprocessmodules>.
///
/// {@category psapi}
@pragma('vm:prefer-inline')
bool EnumProcessModules(
  int hProcess,
  Pointer<HMODULE> lphModule,
  int cb,
  Pointer<Uint32> lpcbNeeded,
) => EnumProcessModules_Wrapper(hProcess, lphModule, cb, lpcbNeeded) != FALSE;

/// Retrieves a handle for each module in the specified process that meets the
/// specified filter criteria.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/psapi/nf-psapi-enumprocessmodulesex>.
///
/// {@category psapi}
@pragma('vm:prefer-inline')
bool EnumProcessModulesEx(
  int hProcess,
  Pointer<HMODULE> lphModule,
  int cb,
  Pointer<Uint32> lpcbNeeded,
  ENUM_PROCESS_MODULES_EX_FLAGS dwFilterFlag,
) =>
    EnumProcessModulesEx_Wrapper(
      hProcess,
      lphModule,
      cb,
      lpcbNeeded,
      dwFilterFlag,
    ) !=
    FALSE;

/// Retrieves the base name of the specified device driver.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/psapi/nf-psapi-getdevicedriverbasenamew>.
///
/// {@category psapi}
@pragma('vm:prefer-inline')
int GetDeviceDriverBaseName(Pointer imageBase, PWSTR lpBaseName, int nSize) =>
    GetDeviceDriverBaseNameW_Wrapper(imageBase, lpBaseName, nSize);

/// Retrieves the path available for the specified device driver.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/psapi/nf-psapi-getdevicedriverfilenamew>.
///
/// {@category psapi}
@pragma('vm:prefer-inline')
int GetDeviceDriverFileName(Pointer imageBase, PWSTR lpFilename, int nSize) =>
    GetDeviceDriverFileNameW_Wrapper(imageBase, lpFilename, nSize);

/// Checks whether the specified address is within a memory-mapped file in the
/// address space of the specified process.
///
/// If so, the function returns the name of the memory-mapped file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/psapi/nf-psapi-getmappedfilenamew>.
///
/// {@category psapi}
@pragma('vm:prefer-inline')
int GetMappedFileName(int hProcess, Pointer lpv, PWSTR lpFilename, int nSize) =>
    GetMappedFileNameW_Wrapper(hProcess, lpv, lpFilename, nSize);

/// Retrieves the base name of the specified module.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/psapi/nf-psapi-getmodulebasenamew>.
///
/// {@category psapi}
@pragma('vm:prefer-inline')
int GetModuleBaseName(
  int hProcess,
  int? hModule,
  PWSTR lpBaseName,
  int nSize,
) => GetModuleBaseNameW_Wrapper(hProcess, hModule ?? NULL, lpBaseName, nSize);

/// Retrieves the fully qualified path for the file containing the specified
/// module.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/psapi/nf-psapi-getmodulefilenameexw>.
///
/// {@category psapi}
@pragma('vm:prefer-inline')
int GetModuleFileNameEx(
  int? hProcess,
  int? hModule,
  PWSTR lpFilename,
  int nSize,
) => GetModuleFileNameExW_Wrapper(
  hProcess ?? NULL,
  hModule ?? NULL,
  lpFilename,
  nSize,
);

/// Retrieves information about the specified module in the MODULEINFO
/// structure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/psapi/nf-psapi-getmoduleinformation>.
///
/// {@category psapi}
@pragma('vm:prefer-inline')
bool GetModuleInformation(
  int hProcess,
  int hModule,
  Pointer<MODULEINFO> lpmodinfo,
  int cb,
) => GetModuleInformation_Wrapper(hProcess, hModule, lpmodinfo, cb) != FALSE;

/// Retrieves the performance values contained in the PERFORMANCE_INFORMATION
/// structure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/psapi/nf-psapi-getperformanceinfo>.
///
/// {@category psapi}
@pragma('vm:prefer-inline')
bool GetPerformanceInfo(
  Pointer<PERFORMANCE_INFORMATION> pPerformanceInformation,
  int cb,
) => GetPerformanceInfo_Wrapper(pPerformanceInformation, cb) != FALSE;

/// Retrieves the name of the executable file for the specified process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/psapi/nf-psapi-getprocessimagefilenamew>.
///
/// {@category psapi}
@pragma('vm:prefer-inline')
int GetProcessImageFileName(int hProcess, PWSTR lpImageFileName, int nSize) =>
    GetProcessImageFileNameW_Wrapper(hProcess, lpImageFileName, nSize);
