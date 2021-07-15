// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering, unused_element

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';
import 'structs.g.dart';

import '../../foundation/structs.g.dart';
import '../../system/systeminformation/structs.g.dart';

// -----------------------------------------------------------------------
// KERNEL32.dll
// -----------------------------------------------------------------------
final _kernel32 = DynamicLibrary.open('KERNEL32.dll');

int DnsHostnameToComputerNameEx(Pointer<Utf16> Hostname,
        Pointer<Utf16> ComputerName, Pointer<Uint32> nSize) =>
    _DnsHostnameToComputerNameEx(Hostname, ComputerName, nSize);

late final _DnsHostnameToComputerNameEx = _kernel32.lookupFunction<
    Int32 Function(Pointer<Utf16> Hostname, Pointer<Utf16> ComputerName,
        Pointer<Uint32> nSize),
    int Function(Pointer<Utf16> Hostname, Pointer<Utf16> ComputerName,
        Pointer<Uint32> nSize)>('DnsHostnameToComputerNameExW');

int EnumSystemFirmwareTables(int FirmwareTableProviderSignature,
        Pointer pFirmwareTableEnumBuffer, int BufferSize) =>
    _EnumSystemFirmwareTables(
        FirmwareTableProviderSignature, pFirmwareTableEnumBuffer, BufferSize);

late final _EnumSystemFirmwareTables = _kernel32.lookupFunction<
    Uint32 Function(Uint32 FirmwareTableProviderSignature,
        Pointer pFirmwareTableEnumBuffer, Uint32 BufferSize),
    int Function(
        int FirmwareTableProviderSignature,
        Pointer pFirmwareTableEnumBuffer,
        int BufferSize)>('EnumSystemFirmwareTables');

int GetComputerNameEx(
        int NameType, Pointer<Utf16> lpBuffer, Pointer<Uint32> nSize) =>
    _GetComputerNameEx(NameType, lpBuffer, nSize);

late final _GetComputerNameEx = _kernel32.lookupFunction<
    Int32 Function(
        Uint32 NameType, Pointer<Utf16> lpBuffer, Pointer<Uint32> nSize),
    int Function(int NameType, Pointer<Utf16> lpBuffer,
        Pointer<Uint32> nSize)>('GetComputerNameExW');

int GetFirmwareType(Pointer<Uint32> FirmwareType) =>
    _GetFirmwareType(FirmwareType);

late final _GetFirmwareType = _kernel32.lookupFunction<
    Int32 Function(Pointer<Uint32> FirmwareType),
    int Function(Pointer<Uint32> FirmwareType)>('GetFirmwareType');

void GetLocalTime(Pointer<SYSTEMTIME> lpSystemTime) =>
    _GetLocalTime(lpSystemTime);

late final _GetLocalTime = _kernel32.lookupFunction<
    Void Function(Pointer<SYSTEMTIME> lpSystemTime),
    void Function(Pointer<SYSTEMTIME> lpSystemTime)>('GetLocalTime');

int GetLogicalProcessorInformation(
        Pointer<SYSTEM_LOGICAL_PROCESSOR_INFORMATION> Buffer,
        Pointer<Uint32> ReturnedLength) =>
    _GetLogicalProcessorInformation(Buffer, ReturnedLength);

late final _GetLogicalProcessorInformation = _kernel32.lookupFunction<
    Int32 Function(Pointer<SYSTEM_LOGICAL_PROCESSOR_INFORMATION> Buffer,
        Pointer<Uint32> ReturnedLength),
    int Function(Pointer<SYSTEM_LOGICAL_PROCESSOR_INFORMATION> Buffer,
        Pointer<Uint32> ReturnedLength)>('GetLogicalProcessorInformation');

void GetNativeSystemInfo(Pointer<SYSTEM_INFO> lpSystemInfo) =>
    _GetNativeSystemInfo(lpSystemInfo);

late final _GetNativeSystemInfo = _kernel32.lookupFunction<
    Void Function(Pointer<SYSTEM_INFO> lpSystemInfo),
    void Function(Pointer<SYSTEM_INFO> lpSystemInfo)>('GetNativeSystemInfo');

int GetPhysicallyInstalledSystemMemory(
        Pointer<Uint64> TotalMemoryInKilobytes) =>
    _GetPhysicallyInstalledSystemMemory(TotalMemoryInKilobytes);

late final _GetPhysicallyInstalledSystemMemory = _kernel32.lookupFunction<
        Int32 Function(Pointer<Uint64> TotalMemoryInKilobytes),
        int Function(Pointer<Uint64> TotalMemoryInKilobytes)>(
    'GetPhysicallyInstalledSystemMemory');

int GetProcessorSystemCycleTime(
        int Group,
        Pointer<SYSTEM_PROCESSOR_CYCLE_TIME_INFORMATION> Buffer,
        Pointer<Uint32> ReturnedLength) =>
    _GetProcessorSystemCycleTime(Group, Buffer, ReturnedLength);

late final _GetProcessorSystemCycleTime = _kernel32.lookupFunction<
    Int32 Function(
        Uint16 Group,
        Pointer<SYSTEM_PROCESSOR_CYCLE_TIME_INFORMATION> Buffer,
        Pointer<Uint32> ReturnedLength),
    int Function(
        int Group,
        Pointer<SYSTEM_PROCESSOR_CYCLE_TIME_INFORMATION> Buffer,
        Pointer<Uint32> ReturnedLength)>('GetProcessorSystemCycleTime');

int GetProductInfo(
        int dwOSMajorVersion,
        int dwOSMinorVersion,
        int dwSpMajorVersion,
        int dwSpMinorVersion,
        Pointer<Uint32> pdwReturnedProductType) =>
    _GetProductInfo(dwOSMajorVersion, dwOSMinorVersion, dwSpMajorVersion,
        dwSpMinorVersion, pdwReturnedProductType);

late final _GetProductInfo = _kernel32.lookupFunction<
    Int32 Function(
        Uint32 dwOSMajorVersion,
        Uint32 dwOSMinorVersion,
        Uint32 dwSpMajorVersion,
        Uint32 dwSpMinorVersion,
        Pointer<Uint32> pdwReturnedProductType),
    int Function(
        int dwOSMajorVersion,
        int dwOSMinorVersion,
        int dwSpMajorVersion,
        int dwSpMinorVersion,
        Pointer<Uint32> pdwReturnedProductType)>('GetProductInfo');

int GetSystemDEPPolicy() => _GetSystemDEPPolicy();

late final _GetSystemDEPPolicy = _kernel32
    .lookupFunction<Uint32 Function(), int Function()>('GetSystemDEPPolicy');

int GetSystemDirectory(Pointer<Utf16> lpBuffer, int uSize) =>
    _GetSystemDirectory(lpBuffer, uSize);

late final _GetSystemDirectory = _kernel32.lookupFunction<
    Uint32 Function(Pointer<Utf16> lpBuffer, Uint32 uSize),
    int Function(Pointer<Utf16> lpBuffer, int uSize)>('GetSystemDirectoryW');

int GetSystemFirmwareTable(int FirmwareTableProviderSignature,
        int FirmwareTableID, Pointer pFirmwareTableBuffer, int BufferSize) =>
    _GetSystemFirmwareTable(FirmwareTableProviderSignature, FirmwareTableID,
        pFirmwareTableBuffer, BufferSize);

late final _GetSystemFirmwareTable = _kernel32.lookupFunction<
    Uint32 Function(
        Uint32 FirmwareTableProviderSignature,
        Uint32 FirmwareTableID,
        Pointer pFirmwareTableBuffer,
        Uint32 BufferSize),
    int Function(
        int FirmwareTableProviderSignature,
        int FirmwareTableID,
        Pointer pFirmwareTableBuffer,
        int BufferSize)>('GetSystemFirmwareTable');

void GetSystemInfo(Pointer<SYSTEM_INFO> lpSystemInfo) =>
    _GetSystemInfo(lpSystemInfo);

late final _GetSystemInfo = _kernel32.lookupFunction<
    Void Function(Pointer<SYSTEM_INFO> lpSystemInfo),
    void Function(Pointer<SYSTEM_INFO> lpSystemInfo)>('GetSystemInfo');

int GetSystemLeapSecondInformation(
        Pointer<Int32> Enabled, Pointer<Uint32> Flags) =>
    _GetSystemLeapSecondInformation(Enabled, Flags);

late final _GetSystemLeapSecondInformation = _kernel32.lookupFunction<
    Int32 Function(Pointer<Int32> Enabled, Pointer<Uint32> Flags),
    int Function(Pointer<Int32> Enabled,
        Pointer<Uint32> Flags)>('GetSystemLeapSecondInformation');

void GetSystemTime(Pointer<SYSTEMTIME> lpSystemTime) =>
    _GetSystemTime(lpSystemTime);

late final _GetSystemTime = _kernel32.lookupFunction<
    Void Function(Pointer<SYSTEMTIME> lpSystemTime),
    void Function(Pointer<SYSTEMTIME> lpSystemTime)>('GetSystemTime');

int GetSystemTimeAdjustment(
        Pointer<Uint32> lpTimeAdjustment,
        Pointer<Uint32> lpTimeIncrement,
        Pointer<Int32> lpTimeAdjustmentDisabled) =>
    _GetSystemTimeAdjustment(
        lpTimeAdjustment, lpTimeIncrement, lpTimeAdjustmentDisabled);

late final _GetSystemTimeAdjustment = _kernel32.lookupFunction<
    Int32 Function(
        Pointer<Uint32> lpTimeAdjustment,
        Pointer<Uint32> lpTimeIncrement,
        Pointer<Int32> lpTimeAdjustmentDisabled),
    int Function(
        Pointer<Uint32> lpTimeAdjustment,
        Pointer<Uint32> lpTimeIncrement,
        Pointer<Int32> lpTimeAdjustmentDisabled)>('GetSystemTimeAdjustment');

void GetSystemTimeAsFileTime(Pointer<FILETIME> lpSystemTimeAsFileTime) =>
    _GetSystemTimeAsFileTime(lpSystemTimeAsFileTime);

late final _GetSystemTimeAsFileTime = _kernel32.lookupFunction<
    Void Function(Pointer<FILETIME> lpSystemTimeAsFileTime),
    void Function(
        Pointer<FILETIME> lpSystemTimeAsFileTime)>('GetSystemTimeAsFileTime');

void GetSystemTimePreciseAsFileTime(Pointer<FILETIME> lpSystemTimeAsFileTime) =>
    _GetSystemTimePreciseAsFileTime(lpSystemTimeAsFileTime);

late final _GetSystemTimePreciseAsFileTime = _kernel32.lookupFunction<
        Void Function(Pointer<FILETIME> lpSystemTimeAsFileTime),
        void Function(Pointer<FILETIME> lpSystemTimeAsFileTime)>(
    'GetSystemTimePreciseAsFileTime');

int GetSystemWindowsDirectory(Pointer<Utf16> lpBuffer, int uSize) =>
    _GetSystemWindowsDirectory(lpBuffer, uSize);

late final _GetSystemWindowsDirectory = _kernel32.lookupFunction<
    Uint32 Function(Pointer<Utf16> lpBuffer, Uint32 uSize),
    int Function(
        Pointer<Utf16> lpBuffer, int uSize)>('GetSystemWindowsDirectoryW');

int GetSystemWow64Directory(Pointer<Utf16> lpBuffer, int uSize) =>
    _GetSystemWow64Directory(lpBuffer, uSize);

late final _GetSystemWow64Directory = _kernel32.lookupFunction<
    Uint32 Function(Pointer<Utf16> lpBuffer, Uint32 uSize),
    int Function(
        Pointer<Utf16> lpBuffer, int uSize)>('GetSystemWow64DirectoryW');

int GetTickCount() => _GetTickCount();

late final _GetTickCount =
    _kernel32.lookupFunction<Uint32 Function(), int Function()>('GetTickCount');

int GetTickCount64() => _GetTickCount64();

late final _GetTickCount64 = _kernel32
    .lookupFunction<Uint64 Function(), int Function()>('GetTickCount64');

int GetVersion() => _GetVersion();

late final _GetVersion =
    _kernel32.lookupFunction<Uint32 Function(), int Function()>('GetVersion');

int GetVersionEx(Pointer<OSVERSIONINFO> lpVersionInformation) =>
    _GetVersionEx(lpVersionInformation);

late final _GetVersionEx = _kernel32.lookupFunction<
    Int32 Function(Pointer<OSVERSIONINFO> lpVersionInformation),
    int Function(Pointer<OSVERSIONINFO> lpVersionInformation)>('GetVersionExW');

int GetWindowsDirectory(Pointer<Utf16> lpBuffer, int uSize) =>
    _GetWindowsDirectory(lpBuffer, uSize);

late final _GetWindowsDirectory = _kernel32.lookupFunction<
    Uint32 Function(Pointer<Utf16> lpBuffer, Uint32 uSize),
    int Function(Pointer<Utf16> lpBuffer, int uSize)>('GetWindowsDirectoryW');

void GlobalMemoryStatus(Pointer<MEMORYSTATUS> lpBuffer) =>
    _GlobalMemoryStatus(lpBuffer);

late final _GlobalMemoryStatus = _kernel32.lookupFunction<
    Void Function(Pointer<MEMORYSTATUS> lpBuffer),
    void Function(Pointer<MEMORYSTATUS> lpBuffer)>('GlobalMemoryStatus');

int GlobalMemoryStatusEx(Pointer<MEMORYSTATUSEX> lpBuffer) =>
    _GlobalMemoryStatusEx(lpBuffer);

late final _GlobalMemoryStatusEx = _kernel32.lookupFunction<
    Int32 Function(Pointer<MEMORYSTATUSEX> lpBuffer),
    int Function(Pointer<MEMORYSTATUSEX> lpBuffer)>('GlobalMemoryStatusEx');

int IsUserCetAvailableInEnvironment(int UserCetEnvironment) =>
    _IsUserCetAvailableInEnvironment(UserCetEnvironment);

late final _IsUserCetAvailableInEnvironment = _kernel32.lookupFunction<
    Int32 Function(Uint32 UserCetEnvironment),
    int Function(int UserCetEnvironment)>('IsUserCetAvailableInEnvironment');

int IsWow64GuestMachineSupported(
        int WowGuestMachine, Pointer<Int32> MachineIsSupported) =>
    _IsWow64GuestMachineSupported(WowGuestMachine, MachineIsSupported);

late final _IsWow64GuestMachineSupported = _kernel32.lookupFunction<
    Int32 Function(Uint16 WowGuestMachine, Pointer<Int32> MachineIsSupported),
    int Function(int WowGuestMachine,
        Pointer<Int32> MachineIsSupported)>('IsWow64GuestMachineSupported');

int SetComputerNameEx2(int NameType, int Flags, Pointer<Utf16> lpBuffer) =>
    _SetComputerNameEx2(NameType, Flags, lpBuffer);

late final _SetComputerNameEx2 = _kernel32.lookupFunction<
    Int32 Function(Uint32 NameType, Uint32 Flags, Pointer<Utf16> lpBuffer),
    int Function(int NameType, int Flags,
        Pointer<Utf16> lpBuffer)>('SetComputerNameEx2W');

int SetComputerNameEx(int NameType, Pointer<Utf16> lpBuffer) =>
    _SetComputerNameEx(NameType, lpBuffer);

late final _SetComputerNameEx = _kernel32.lookupFunction<
    Int32 Function(Uint32 NameType, Pointer<Utf16> lpBuffer),
    int Function(int NameType, Pointer<Utf16> lpBuffer)>('SetComputerNameExW');

int SetComputerName(Pointer<Utf16> lpComputerName) =>
    _SetComputerName(lpComputerName);

late final _SetComputerName = _kernel32.lookupFunction<
    Int32 Function(Pointer<Utf16> lpComputerName),
    int Function(Pointer<Utf16> lpComputerName)>('SetComputerNameW');

int SetLocalTime(Pointer<SYSTEMTIME> lpSystemTime) =>
    _SetLocalTime(lpSystemTime);

late final _SetLocalTime = _kernel32.lookupFunction<
    Int32 Function(Pointer<SYSTEMTIME> lpSystemTime),
    int Function(Pointer<SYSTEMTIME> lpSystemTime)>('SetLocalTime');

int SetSystemTime(Pointer<SYSTEMTIME> lpSystemTime) =>
    _SetSystemTime(lpSystemTime);

late final _SetSystemTime = _kernel32.lookupFunction<
    Int32 Function(Pointer<SYSTEMTIME> lpSystemTime),
    int Function(Pointer<SYSTEMTIME> lpSystemTime)>('SetSystemTime');

int SetSystemTimeAdjustment(
        int dwTimeAdjustment, int bTimeAdjustmentDisabled) =>
    _SetSystemTimeAdjustment(dwTimeAdjustment, bTimeAdjustmentDisabled);

late final _SetSystemTimeAdjustment = _kernel32.lookupFunction<
    Int32 Function(Uint32 dwTimeAdjustment, Int32 bTimeAdjustmentDisabled),
    int Function(int dwTimeAdjustment,
        int bTimeAdjustmentDisabled)>('SetSystemTimeAdjustment');

int VerSetConditionMask(int ConditionMask, int TypeMask, int Condition) =>
    _VerSetConditionMask(ConditionMask, TypeMask, Condition);

late final _VerSetConditionMask = _kernel32.lookupFunction<
    Uint64 Function(Uint64 ConditionMask, Uint32 TypeMask, Uint8 Condition),
    int Function(
        int ConditionMask, int TypeMask, int Condition)>('VerSetConditionMask');

int VerifyVersionInfo(Pointer<OSVERSIONINFOEX> lpVersionInformation,
        int dwTypeMask, int dwlConditionMask) =>
    _VerifyVersionInfo(lpVersionInformation, dwTypeMask, dwlConditionMask);

late final _VerifyVersionInfo = _kernel32.lookupFunction<
    Int32 Function(Pointer<OSVERSIONINFOEX> lpVersionInformation,
        Uint32 dwTypeMask, Uint64 dwlConditionMask),
    int Function(Pointer<OSVERSIONINFOEX> lpVersionInformation, int dwTypeMask,
        int dwlConditionMask)>('VerifyVersionInfoW');

// -----------------------------------------------------------------------
// api-ms-win-core-sysinfo-l1-2-4.dll
// -----------------------------------------------------------------------
final _api_ms_win_core_sysinfo_l1_2_4 =
    DynamicLibrary.open('api-ms-win-core-sysinfo-l1-2-4.dll');

int GetSystemTimeAdjustmentPrecise(
        Pointer<Uint64> lpTimeAdjustment,
        Pointer<Uint64> lpTimeIncrement,
        Pointer<Int32> lpTimeAdjustmentDisabled) =>
    _GetSystemTimeAdjustmentPrecise(
        lpTimeAdjustment, lpTimeIncrement, lpTimeAdjustmentDisabled);

late final _GetSystemTimeAdjustmentPrecise =
    _api_ms_win_core_sysinfo_l1_2_4.lookupFunction<
            Int32 Function(
                Pointer<Uint64> lpTimeAdjustment,
                Pointer<Uint64> lpTimeIncrement,
                Pointer<Int32> lpTimeAdjustmentDisabled),
            int Function(
                Pointer<Uint64> lpTimeAdjustment,
                Pointer<Uint64> lpTimeIncrement,
                Pointer<Int32> lpTimeAdjustmentDisabled)>(
        'GetSystemTimeAdjustmentPrecise');

int SetSystemTimeAdjustmentPrecise(
        int dwTimeAdjustment, int bTimeAdjustmentDisabled) =>
    _SetSystemTimeAdjustmentPrecise(dwTimeAdjustment, bTimeAdjustmentDisabled);

late final _SetSystemTimeAdjustmentPrecise =
    _api_ms_win_core_sysinfo_l1_2_4.lookupFunction<
        Int32 Function(Uint64 dwTimeAdjustment, Int32 bTimeAdjustmentDisabled),
        int Function(int dwTimeAdjustment,
            int bTimeAdjustmentDisabled)>('SetSystemTimeAdjustmentPrecise');

// -----------------------------------------------------------------------
// api-ms-win-core-sysinfo-l1-2-0.dll
// -----------------------------------------------------------------------
final _api_ms_win_core_sysinfo_l1_2_0 =
    DynamicLibrary.open('api-ms-win-core-sysinfo-l1-2-0.dll');

int GetOsSafeBootMode(Pointer<Uint32> Flags) => _GetOsSafeBootMode(Flags);

late final _GetOsSafeBootMode = _api_ms_win_core_sysinfo_l1_2_0.lookupFunction<
    Int32 Function(Pointer<Uint32> Flags),
    int Function(Pointer<Uint32> Flags)>('GetOsSafeBootMode');

// -----------------------------------------------------------------------
// api-ms-win-core-sysinfo-l1-2-3.dll
// -----------------------------------------------------------------------
final _api_ms_win_core_sysinfo_l1_2_3 =
    DynamicLibrary.open('api-ms-win-core-sysinfo-l1-2-3.dll');

int GetIntegratedDisplaySize(Pointer<Double> sizeInInches) =>
    _GetIntegratedDisplaySize(sizeInInches);

late final _GetIntegratedDisplaySize =
    _api_ms_win_core_sysinfo_l1_2_3.lookupFunction<
        Int32 Function(Pointer<Double> sizeInInches),
        int Function(Pointer<Double> sizeInInches)>('GetIntegratedDisplaySize');

int GetOsManufacturingMode(Pointer<Int32> pbEnabled) =>
    _GetOsManufacturingMode(pbEnabled);

late final _GetOsManufacturingMode =
    _api_ms_win_core_sysinfo_l1_2_3.lookupFunction<
        Int32 Function(Pointer<Int32> pbEnabled),
        int Function(Pointer<Int32> pbEnabled)>('GetOsManufacturingMode');

// -----------------------------------------------------------------------
// api-ms-win-core-wow64-l1-1-1.dll
// -----------------------------------------------------------------------
final _api_ms_win_core_wow64_l1_1_1 =
    DynamicLibrary.open('api-ms-win-core-wow64-l1-1-1.dll');

int GetSystemWow64Directory2(
        Pointer<Utf16> lpBuffer, int uSize, int ImageFileMachineType) =>
    _GetSystemWow64Directory2(lpBuffer, uSize, ImageFileMachineType);

late final _GetSystemWow64Directory2 =
    _api_ms_win_core_wow64_l1_1_1.lookupFunction<
        Uint32 Function(
            Pointer<Utf16> lpBuffer, Uint32 uSize, Uint16 ImageFileMachineType),
        int Function(Pointer<Utf16> lpBuffer, int uSize,
            int ImageFileMachineType)>('GetSystemWow64Directory2W');
