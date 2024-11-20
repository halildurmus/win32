// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated).
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: non_constant_identifier_names, unused_import,
// ignore_for_file: unused_local_variable

@TestOn('windows')
library;

import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:ffi/ffi.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/src/_internal/kernel32.g.dart';
import 'package:win32/win32.dart';

import '../../helpers.dart';

void main() {
  group('kernel32.dll', () {
    test('ActivateActCtx can be instantiated', () {
      check(ActivateActCtx_Wrapper).isA<Function>();
    });
    test('AddDllDirectory can be instantiated', () {
      check(AddDllDirectory_Wrapper).isA<Function>();
    });
    test('AddRefActCtx can be instantiated', () {
      check(_AddRefActCtx).isA<Function>();
    });
    test('AllocConsole can be instantiated', () {
      check(AllocConsole_Wrapper).isA<Function>();
    });
    test('AreFileApisANSI can be instantiated', () {
      check(_AreFileApisANSI).isA<Function>();
    });
    test('AssignProcessToJobObject can be instantiated', () {
      check(AssignProcessToJobObject_Wrapper).isA<Function>();
    });
    test('AttachConsole can be instantiated', () {
      check(AttachConsole_Wrapper).isA<Function>();
    });
    test('Beep can be instantiated', () {
      check(Beep_Wrapper).isA<Function>();
    });
    test('BeginUpdateResource can be instantiated', () {
      check(BeginUpdateResourceW_Wrapper).isA<Function>();
    });
    test('BuildCommDCB can be instantiated', () {
      check(BuildCommDCBW_Wrapper).isA<Function>();
    });
    test('BuildCommDCBAndTimeouts can be instantiated', () {
      check(BuildCommDCBAndTimeoutsW_Wrapper).isA<Function>();
    });
    test('CallNamedPipe can be instantiated', () {
      check(_CallNamedPipe).isA<Function>();
    });
    test('CancelIo can be instantiated', () {
      check(CancelIo_Wrapper).isA<Function>();
    });
    test('CancelIoEx can be instantiated', () {
      check(CancelIoEx_Wrapper).isA<Function>();
    });
    test('CancelSynchronousIo can be instantiated', () {
      check(CancelSynchronousIo_Wrapper).isA<Function>();
    });
    test('CheckRemoteDebuggerPresent can be instantiated', () {
      check(CheckRemoteDebuggerPresent_Wrapper).isA<Function>();
    });
    test('ClearCommBreak can be instantiated', () {
      check(ClearCommBreak_Wrapper).isA<Function>();
    });
    test('ClearCommError can be instantiated', () {
      check(ClearCommError_Wrapper).isA<Function>();
    });
    test('CloseHandle can be instantiated', () {
      check(CloseHandle_Wrapper).isA<Function>();
    });
    test(
      'ClosePseudoConsole can be instantiated',
      skip: 17763 > windowsBuildNumber,
      () {
        check(_ClosePseudoConsole).isA<Function>();
      },
    );
    test('CommConfigDialog can be instantiated', () {
      check(CommConfigDialogW_Wrapper).isA<Function>();
    });
    test('ConnectNamedPipe can be instantiated', () {
      check(ConnectNamedPipe_Wrapper).isA<Function>();
    });
    test('ContinueDebugEvent can be instantiated', () {
      check(ContinueDebugEvent_Wrapper).isA<Function>();
    });
    test('CopyFile can be instantiated', () {
      check(CopyFileW_Wrapper).isA<Function>();
    });
    test('CopyFileEx can be instantiated', () {
      check(CopyFileExW_Wrapper).isA<Function>();
    });
    test('CreateActCtx can be instantiated', () {
      check(CreateActCtxW_Wrapper).isA<Function>();
    });
    test('CreateConsoleScreenBuffer can be instantiated', () {
      check(CreateConsoleScreenBuffer_Wrapper).isA<Function>();
    });
    test('CreateDirectory can be instantiated', () {
      check(CreateDirectoryW_Wrapper).isA<Function>();
    });
    test('CreateEvent can be instantiated', () {
      check(CreateEventW_Wrapper).isA<Function>();
    });
    test('CreateEventEx can be instantiated', () {
      check(CreateEventExW_Wrapper).isA<Function>();
    });
    test('CreateFile can be instantiated', () {
      check(CreateFileW_Wrapper).isA<Function>();
    });
    test('CreateFile2 can be instantiated', () {
      check(CreateFile2_Wrapper).isA<Function>();
    });
    test('CreateIoCompletionPort can be instantiated', () {
      check(CreateIoCompletionPort_Wrapper).isA<Function>();
    });
    test('CreateJobObject can be instantiated', () {
      check(CreateJobObjectW_Wrapper).isA<Function>();
    });
    test('CreateNamedPipe can be instantiated', () {
      check(_CreateNamedPipe).isA<Function>();
    });
    test('CreatePipe can be instantiated', () {
      check(CreatePipe_Wrapper).isA<Function>();
    });
    test('CreateProcess can be instantiated', () {
      check(CreateProcessW_Wrapper).isA<Function>();
    });
    test(
      'CreatePseudoConsole can be instantiated',
      skip: 17763 > windowsBuildNumber,
      () {
        check(_CreatePseudoConsole).isA<Function>();
      },
    );
    test('CreateRemoteThread can be instantiated', () {
      check(CreateRemoteThread_Wrapper).isA<Function>();
    });
    test('CreateRemoteThreadEx can be instantiated', () {
      check(CreateRemoteThreadEx_Wrapper).isA<Function>();
    });
    test('CreateSymbolicLink can be instantiated', () {
      check(CreateSymbolicLinkW_Wrapper).isA<Function>();
    });
    test('CreateThread can be instantiated', () {
      check(CreateThread_Wrapper).isA<Function>();
    });
    test('DeactivateActCtx can be instantiated', () {
      check(DeactivateActCtx_Wrapper).isA<Function>();
    });
    test('DebugBreak can be instantiated', () {
      check(_DebugBreak).isA<Function>();
    });
    test('DebugBreakProcess can be instantiated', () {
      check(DebugBreakProcess_Wrapper).isA<Function>();
    });
    test('DebugSetProcessKillOnExit can be instantiated', () {
      check(DebugSetProcessKillOnExit_Wrapper).isA<Function>();
    });
    test('DefineDosDevice can be instantiated', () {
      check(DefineDosDeviceW_Wrapper).isA<Function>();
    });
    test('DeleteFile can be instantiated', () {
      check(DeleteFileW_Wrapper).isA<Function>();
    });
    test('DeleteVolumeMountPoint can be instantiated', () {
      check(DeleteVolumeMountPointW_Wrapper).isA<Function>();
    });
    test('DeviceIoControl can be instantiated', () {
      check(DeviceIoControl_Wrapper).isA<Function>();
    });
    test('DisableThreadLibraryCalls can be instantiated', () {
      check(DisableThreadLibraryCalls_Wrapper).isA<Function>();
    });
    test('DisconnectNamedPipe can be instantiated', () {
      check(DisconnectNamedPipe_Wrapper).isA<Function>();
    });
    test('DnsHostnameToComputerName can be instantiated', () {
      check(DnsHostnameToComputerNameW_Wrapper).isA<Function>();
    });
    test('DosDateTimeToFileTime can be instantiated', () {
      check(DosDateTimeToFileTime_Wrapper).isA<Function>();
    });
    test('DuplicateHandle can be instantiated', () {
      check(DuplicateHandle_Wrapper).isA<Function>();
    });
    test('EndUpdateResource can be instantiated', () {
      check(EndUpdateResourceW_Wrapper).isA<Function>();
    });
    test('EnumResourceNames can be instantiated', () {
      check(_EnumResourceNames).isA<Function>();
    });
    test('EnumResourceTypes can be instantiated', () {
      check(EnumResourceTypesW_Wrapper).isA<Function>();
    });
    test('EnumSystemFirmwareTables can be instantiated', () {
      check(EnumSystemFirmwareTables_Wrapper).isA<Function>();
    });
    test('EscapeCommFunction can be instantiated', () {
      check(EscapeCommFunction_Wrapper).isA<Function>();
    });
    test('ExitProcess can be instantiated', () {
      check(_ExitProcess).isA<Function>();
    });
    test('ExitThread can be instantiated', () {
      check(_ExitThread).isA<Function>();
    });
    test('FileTimeToDosDateTime can be instantiated', () {
      check(FileTimeToDosDateTime_Wrapper).isA<Function>();
    });
    test('FileTimeToSystemTime can be instantiated', () {
      check(FileTimeToSystemTime_Wrapper).isA<Function>();
    });
    test('FillConsoleOutputAttribute can be instantiated', () {
      check(FillConsoleOutputAttribute_Wrapper).isA<Function>();
    });
    test('FillConsoleOutputCharacter can be instantiated', () {
      check(FillConsoleOutputCharacterW_Wrapper).isA<Function>();
    });
    test('FindClose can be instantiated', () {
      check(FindClose_Wrapper).isA<Function>();
    });
    test('FindCloseChangeNotification can be instantiated', () {
      check(FindCloseChangeNotification_Wrapper).isA<Function>();
    });
    test('FindFirstChangeNotification can be instantiated', () {
      check(FindFirstChangeNotificationW_Wrapper).isA<Function>();
    });
    test('FindFirstFile can be instantiated', () {
      check(FindFirstFileW_Wrapper).isA<Function>();
    });
    test('FindFirstFileEx can be instantiated', () {
      check(FindFirstFileExW_Wrapper).isA<Function>();
    });
    test('FindFirstFileName can be instantiated', () {
      check(FindFirstFileNameW_Wrapper).isA<Function>();
    });
    test('FindFirstStream can be instantiated', () {
      check(FindFirstStreamW_Wrapper).isA<Function>();
    });
    test('FindFirstVolume can be instantiated', () {
      check(FindFirstVolumeW_Wrapper).isA<Function>();
    });
    test('FindNextChangeNotification can be instantiated', () {
      check(FindNextChangeNotification_Wrapper).isA<Function>();
    });
    test('FindNextFile can be instantiated', () {
      check(FindNextFileW_Wrapper).isA<Function>();
    });
    test('FindNextFileName can be instantiated', () {
      check(FindNextFileNameW_Wrapper).isA<Function>();
    });
    test('FindNextStream can be instantiated', () {
      check(FindNextStreamW_Wrapper).isA<Function>();
    });
    test('FindNextVolume can be instantiated', () {
      check(FindNextVolumeW_Wrapper).isA<Function>();
    });
    test('FindPackagesByPackageFamily can be instantiated', () {
      check(_FindPackagesByPackageFamily).isA<Function>();
    });
    test('FindResource can be instantiated', () {
      check(_FindResource).isA<Function>();
    });
    test('FindResourceEx can be instantiated', () {
      check(_FindResourceEx).isA<Function>();
    });
    test('FindStringOrdinal can be instantiated', () {
      check(FindStringOrdinal_Wrapper).isA<Function>();
    });
    test('FindVolumeClose can be instantiated', () {
      check(FindVolumeClose_Wrapper).isA<Function>();
    });
    test('FlushConsoleInputBuffer can be instantiated', () {
      check(FlushConsoleInputBuffer_Wrapper).isA<Function>();
    });
    test('FlushFileBuffers can be instantiated', () {
      check(FlushFileBuffers_Wrapper).isA<Function>();
    });
    test('FormatMessage can be instantiated', () {
      check(FormatMessageW_Wrapper).isA<Function>();
    });
    test('FreeConsole can be instantiated', () {
      check(FreeConsole_Wrapper).isA<Function>();
    });
    test('FreeLibrary can be instantiated', () {
      check(FreeLibrary_Wrapper).isA<Function>();
    });
    test('FreeLibraryAndExitThread can be instantiated', () {
      check(_FreeLibraryAndExitThread).isA<Function>();
    });
    test('FreeMemoryJobObject can be instantiated', () {
      check(_FreeMemoryJobObject).isA<Function>();
    });
    test('GetActiveProcessorCount can be instantiated', () {
      check(GetActiveProcessorCount_Wrapper).isA<Function>();
    });
    test('GetActiveProcessorGroupCount can be instantiated', () {
      check(_GetActiveProcessorGroupCount).isA<Function>();
    });
    test('GetBinaryType can be instantiated', () {
      check(GetBinaryTypeW_Wrapper).isA<Function>();
    });
    test('GetCommandLine can be instantiated', () {
      check(_GetCommandLine).isA<Function>();
    });
    test('GetCommConfig can be instantiated', () {
      check(GetCommConfig_Wrapper).isA<Function>();
    });
    test('GetCommMask can be instantiated', () {
      check(GetCommMask_Wrapper).isA<Function>();
    });
    test('GetCommModemStatus can be instantiated', () {
      check(GetCommModemStatus_Wrapper).isA<Function>();
    });
    test('GetCommProperties can be instantiated', () {
      check(GetCommProperties_Wrapper).isA<Function>();
    });
    test('GetCommState can be instantiated', () {
      check(GetCommState_Wrapper).isA<Function>();
    });
    test('GetCommTimeouts can be instantiated', () {
      check(GetCommTimeouts_Wrapper).isA<Function>();
    });
    test('GetCompressedFileSize can be instantiated', () {
      check(GetCompressedFileSizeW_Wrapper).isA<Function>();
    });
    test('GetComputerName can be instantiated', () {
      check(GetComputerNameW_Wrapper).isA<Function>();
    });
    test('GetComputerNameEx can be instantiated', () {
      check(GetComputerNameExW_Wrapper).isA<Function>();
    });
    test('GetConsoleCP can be instantiated', () {
      check(GetConsoleCP_Wrapper).isA<Function>();
    });
    test('GetConsoleCursorInfo can be instantiated', () {
      check(GetConsoleCursorInfo_Wrapper).isA<Function>();
    });
    test('GetConsoleMode can be instantiated', () {
      check(GetConsoleMode_Wrapper).isA<Function>();
    });
    test('GetConsoleOutputCP can be instantiated', () {
      check(GetConsoleOutputCP_Wrapper).isA<Function>();
    });
    test('GetConsoleScreenBufferInfo can be instantiated', () {
      check(GetConsoleScreenBufferInfo_Wrapper).isA<Function>();
    });
    test('GetConsoleSelectionInfo can be instantiated', () {
      check(GetConsoleSelectionInfo_Wrapper).isA<Function>();
    });
    test('GetConsoleTitle can be instantiated', () {
      check(GetConsoleTitleW_Wrapper).isA<Function>();
    });
    test('GetConsoleWindow can be instantiated', () {
      check(_GetConsoleWindow).isA<Function>();
    });
    test('GetCurrentActCtx can be instantiated', () {
      check(GetCurrentActCtx_Wrapper).isA<Function>();
    });
    test('GetCurrentDirectory can be instantiated', () {
      check(_GetCurrentDirectory).isA<Function>();
    });
    test('GetCurrentPackageFullName can be instantiated', () {
      check(_GetCurrentPackageFullName).isA<Function>();
    });
    test('GetCurrentProcess can be instantiated', () {
      check(_GetCurrentProcess).isA<Function>();
    });
    test('GetCurrentProcessId can be instantiated', () {
      check(_GetCurrentProcessId).isA<Function>();
    });
    test('GetCurrentProcessorNumber can be instantiated', () {
      check(_GetCurrentProcessorNumber).isA<Function>();
    });
    test('GetCurrentThread can be instantiated', () {
      check(_GetCurrentThread).isA<Function>();
    });
    test('GetCurrentThreadId can be instantiated', () {
      check(_GetCurrentThreadId).isA<Function>();
    });
    test('GetDefaultCommConfig can be instantiated', () {
      check(GetDefaultCommConfigW_Wrapper).isA<Function>();
    });
    test('GetDiskFreeSpace can be instantiated', () {
      check(GetDiskFreeSpaceW_Wrapper).isA<Function>();
    });
    test('GetDiskFreeSpaceEx can be instantiated', () {
      check(GetDiskFreeSpaceExW_Wrapper).isA<Function>();
    });
    test('GetDllDirectory can be instantiated', () {
      check(GetDllDirectoryW_Wrapper).isA<Function>();
    });
    test('GetDriveType can be instantiated', () {
      check(_GetDriveType).isA<Function>();
    });
    test('GetEnvironmentVariable can be instantiated', () {
      check(GetEnvironmentVariableW_Wrapper).isA<Function>();
    });
    test('GetExitCodeProcess can be instantiated', () {
      check(GetExitCodeProcess_Wrapper).isA<Function>();
    });
    test('GetFileAttributes can be instantiated', () {
      check(GetFileAttributesW_Wrapper).isA<Function>();
    });
    test('GetFileAttributesEx can be instantiated', () {
      check(GetFileAttributesExW_Wrapper).isA<Function>();
    });
    test('GetFileInformationByHandle can be instantiated', () {
      check(GetFileInformationByHandle_Wrapper).isA<Function>();
    });
    test('GetFileSize can be instantiated', () {
      check(GetFileSize_Wrapper).isA<Function>();
    });
    test('GetFileSizeEx can be instantiated', () {
      check(GetFileSizeEx_Wrapper).isA<Function>();
    });
    test('GetFileType can be instantiated', () {
      check(GetFileType_Wrapper).isA<Function>();
    });
    test('GetFinalPathNameByHandle can be instantiated', () {
      check(GetFinalPathNameByHandleW_Wrapper).isA<Function>();
    });
    test('GetFullPathName can be instantiated', () {
      check(GetFullPathNameW_Wrapper).isA<Function>();
    });
    test('GetHandleInformation can be instantiated', () {
      check(GetHandleInformation_Wrapper).isA<Function>();
    });
    test('GetLargestConsoleWindowSize can be instantiated', () {
      check(GetLargestConsoleWindowSize_Wrapper).isA<Function>();
    });
    test('GetLocaleInfoEx can be instantiated', () {
      check(GetLocaleInfoEx_Wrapper).isA<Function>();
    });
    test('GetLocalTime can be instantiated', () {
      check(_GetLocalTime).isA<Function>();
    });
    test('GetLogicalDrives can be instantiated', () {
      check(GetLogicalDrives_Wrapper).isA<Function>();
    });
    test('GetLogicalDriveStrings can be instantiated', () {
      check(GetLogicalDriveStringsW_Wrapper).isA<Function>();
    });
    test('GetLogicalProcessorInformation can be instantiated', () {
      check(GetLogicalProcessorInformation_Wrapper).isA<Function>();
    });
    test('GetLongPathName can be instantiated', () {
      check(GetLongPathNameW_Wrapper).isA<Function>();
    });
    test(
      'GetMachineTypeAttributes can be instantiated',
      skip: 22000 > windowsBuildNumber,
      () {
        check(_GetMachineTypeAttributes).isA<Function>();
      },
    );
    test('GetMaximumProcessorCount can be instantiated', () {
      check(GetMaximumProcessorCount_Wrapper).isA<Function>();
    });
    test('GetMaximumProcessorGroupCount can be instantiated', () {
      check(_GetMaximumProcessorGroupCount).isA<Function>();
    });
    test('GetModuleFileName can be instantiated', () {
      check(GetModuleFileNameW_Wrapper).isA<Function>();
    });
    test('GetModuleHandle can be instantiated', () {
      check(GetModuleHandleW_Wrapper).isA<Function>();
    });
    test('GetModuleHandleEx can be instantiated', () {
      check(GetModuleHandleExW_Wrapper).isA<Function>();
    });
    test('GetNamedPipeClientComputerName can be instantiated', () {
      check(_GetNamedPipeClientComputerName).isA<Function>();
    });
    test('GetNamedPipeClientProcessId can be instantiated', () {
      check(GetNamedPipeClientProcessId_Wrapper).isA<Function>();
    });
    test('GetNamedPipeClientSessionId can be instantiated', () {
      check(GetNamedPipeClientSessionId_Wrapper).isA<Function>();
    });
    test('GetNamedPipeHandleState can be instantiated', () {
      check(_GetNamedPipeHandleState).isA<Function>();
    });
    test('GetNamedPipeInfo can be instantiated', () {
      check(GetNamedPipeInfo_Wrapper).isA<Function>();
    });
    test('GetNativeSystemInfo can be instantiated', () {
      check(_GetNativeSystemInfo).isA<Function>();
    });
    test('GetNumberOfConsoleInputEvents can be instantiated', () {
      check(GetNumberOfConsoleInputEvents_Wrapper).isA<Function>();
    });
    test('GetOverlappedResult can be instantiated', () {
      check(GetOverlappedResult_Wrapper).isA<Function>();
    });
    test('GetOverlappedResultEx can be instantiated', () {
      check(GetOverlappedResultEx_Wrapper).isA<Function>();
    });
    test('GetPhysicallyInstalledSystemMemory can be instantiated', () {
      check(GetPhysicallyInstalledSystemMemory_Wrapper).isA<Function>();
    });
    test('GetProcAddress can be instantiated', () {
      check(GetProcAddress_Wrapper).isA<Function>();
    });
    test('GetProcessHeap can be instantiated', () {
      check(GetProcessHeap_Wrapper).isA<Function>();
    });
    test('GetProcessHeaps can be instantiated', () {
      check(GetProcessHeaps_Wrapper).isA<Function>();
    });
    test('GetProcessId can be instantiated', () {
      check(GetProcessId_Wrapper).isA<Function>();
    });
    test('GetProcessShutdownParameters can be instantiated', () {
      check(GetProcessShutdownParameters_Wrapper).isA<Function>();
    });
    test('GetProcessTimes can be instantiated', () {
      check(GetProcessTimes_Wrapper).isA<Function>();
    });
    test('GetProcessVersion can be instantiated', () {
      check(GetProcessVersion_Wrapper).isA<Function>();
    });
    test('GetProcessWorkingSetSize can be instantiated', () {
      check(GetProcessWorkingSetSize_Wrapper).isA<Function>();
    });
    test('GetProductInfo can be instantiated', () {
      check(_GetProductInfo).isA<Function>();
    });
    test('GetQueuedCompletionStatus can be instantiated', () {
      check(GetQueuedCompletionStatus_Wrapper).isA<Function>();
    });
    test('GetQueuedCompletionStatusEx can be instantiated', () {
      check(GetQueuedCompletionStatusEx_Wrapper).isA<Function>();
    });
    test('GetShortPathName can be instantiated', () {
      check(GetShortPathNameW_Wrapper).isA<Function>();
    });
    test('GetStartupInfo can be instantiated', () {
      check(_GetStartupInfo).isA<Function>();
    });
    test('GetStdHandle can be instantiated', () {
      check(GetStdHandle_Wrapper).isA<Function>();
    });
    test('GetSystemDefaultLangID can be instantiated', () {
      check(_GetSystemDefaultLangID).isA<Function>();
    });
    test('GetSystemDefaultLocaleName can be instantiated', () {
      check(GetSystemDefaultLocaleName_Wrapper).isA<Function>();
    });
    test('GetSystemDirectory can be instantiated', () {
      check(GetSystemDirectoryW_Wrapper).isA<Function>();
    });
    test('GetSystemInfo can be instantiated', () {
      check(_GetSystemInfo).isA<Function>();
    });
    test('GetSystemPowerStatus can be instantiated', () {
      check(GetSystemPowerStatus_Wrapper).isA<Function>();
    });
    test('GetSystemTime can be instantiated', () {
      check(_GetSystemTime).isA<Function>();
    });
    test('GetSystemTimeAdjustment can be instantiated', () {
      check(GetSystemTimeAdjustment_Wrapper).isA<Function>();
    });
    test('GetSystemTimes can be instantiated', () {
      check(GetSystemTimes_Wrapper).isA<Function>();
    });
    test('GetTempFileName can be instantiated', () {
      check(GetTempFileNameW_Wrapper).isA<Function>();
    });
    test('GetTempPath can be instantiated', () {
      check(GetTempPathW_Wrapper).isA<Function>();
    });
    test(
      'GetTempPath2 can be instantiated',
      skip: 20348 > windowsBuildNumber,
      () {
        check(_GetTempPath2).isA<Function>();
      },
    );
    test('GetThreadId can be instantiated', () {
      check(GetThreadId_Wrapper).isA<Function>();
    });
    test('GetThreadLocale can be instantiated', () {
      check(_GetThreadLocale).isA<Function>();
    });
    test('GetThreadTimes can be instantiated', () {
      check(GetThreadTimes_Wrapper).isA<Function>();
    });
    test('GetThreadUILanguage can be instantiated', () {
      check(_GetThreadUILanguage).isA<Function>();
    });
    test('GetTickCount can be instantiated', () {
      check(_GetTickCount).isA<Function>();
    });
    test('GetUserDefaultLangID can be instantiated', () {
      check(_GetUserDefaultLangID).isA<Function>();
    });
    test('GetUserDefaultLCID can be instantiated', () {
      check(_GetUserDefaultLCID).isA<Function>();
    });
    test('GetUserDefaultLocaleName can be instantiated', () {
      check(GetUserDefaultLocaleName_Wrapper).isA<Function>();
    });
    test('GetVolumeInformation can be instantiated', () {
      check(GetVolumeInformationW_Wrapper).isA<Function>();
    });
    test('GetVolumeInformationByHandle can be instantiated', () {
      check(GetVolumeInformationByHandleW_Wrapper).isA<Function>();
    });
    test('GetVolumeNameForVolumeMountPoint can be instantiated', () {
      check(GetVolumeNameForVolumeMountPointW_Wrapper).isA<Function>();
    });
    test('GetVolumePathName can be instantiated', () {
      check(GetVolumePathNameW_Wrapper).isA<Function>();
    });
    test('GetVolumePathNamesForVolumeName can be instantiated', () {
      check(GetVolumePathNamesForVolumeNameW_Wrapper).isA<Function>();
    });
    test('GlobalAlloc can be instantiated', () {
      check(GlobalAlloc_Wrapper).isA<Function>();
    });
    test('GlobalFree can be instantiated', () {
      check(GlobalFree_Wrapper).isA<Function>();
    });
    test('GlobalLock can be instantiated', () {
      check(GlobalLock_Wrapper).isA<Function>();
    });
    test('GlobalMemoryStatusEx can be instantiated', () {
      check(GlobalMemoryStatusEx_Wrapper).isA<Function>();
    });
    test('GlobalSize can be instantiated', () {
      check(GlobalSize_Wrapper).isA<Function>();
    });
    test('GlobalUnlock can be instantiated', () {
      check(GlobalUnlock_Wrapper).isA<Function>();
    });
    test('HeapAlloc can be instantiated', () {
      check(_HeapAlloc).isA<Function>();
    });
    test('HeapCompact can be instantiated', () {
      check(HeapCompact_Wrapper).isA<Function>();
    });
    test('HeapCreate can be instantiated', () {
      check(HeapCreate_Wrapper).isA<Function>();
    });
    test('HeapDestroy can be instantiated', () {
      check(HeapDestroy_Wrapper).isA<Function>();
    });
    test('HeapFree can be instantiated', () {
      check(HeapFree_Wrapper).isA<Function>();
    });
    test('HeapLock can be instantiated', () {
      check(HeapLock_Wrapper).isA<Function>();
    });
    test('HeapQueryInformation can be instantiated', () {
      check(HeapQueryInformation_Wrapper).isA<Function>();
    });
    test('HeapReAlloc can be instantiated', () {
      check(_HeapReAlloc).isA<Function>();
    });
    test('HeapSetInformation can be instantiated', () {
      check(HeapSetInformation_Wrapper).isA<Function>();
    });
    test('HeapSize can be instantiated', () {
      check(_HeapSize).isA<Function>();
    });
    test('HeapUnlock can be instantiated', () {
      check(HeapUnlock_Wrapper).isA<Function>();
    });
    test('HeapValidate can be instantiated', () {
      check(_HeapValidate).isA<Function>();
    });
    test('HeapWalk can be instantiated', () {
      check(HeapWalk_Wrapper).isA<Function>();
    });
    test('InitializeProcThreadAttributeList can be instantiated', () {
      check(InitializeProcThreadAttributeList_Wrapper).isA<Function>();
    });
    test('IsDebuggerPresent can be instantiated', () {
      check(_IsDebuggerPresent).isA<Function>();
    });
    test('IsNativeVhdBoot can be instantiated', () {
      check(IsNativeVhdBoot_Wrapper).isA<Function>();
    });
    test('IsProcessInJob can be instantiated', () {
      check(IsProcessInJob_Wrapper).isA<Function>();
    });
    test('IsSystemResumeAutomatic can be instantiated', () {
      check(_IsSystemResumeAutomatic).isA<Function>();
    });
    test('IsValidLocaleName can be instantiated', () {
      check(_IsValidLocaleName).isA<Function>();
    });
    test(
      'IsWow64Process2 can be instantiated',
      skip: 16299 > windowsBuildNumber,
      () {
        check(IsWow64Process2_Wrapper).isA<Function>();
      },
    );
    test('LoadLibrary can be instantiated', () {
      check(LoadLibraryW_Wrapper).isA<Function>();
    });
    test('LoadLibraryEx can be instantiated', () {
      check(LoadLibraryExW_Wrapper).isA<Function>();
    });
    test('LoadResource can be instantiated', () {
      check(LoadResource_Wrapper).isA<Function>();
    });
    test('LocalAlloc can be instantiated', () {
      check(LocalAlloc_Wrapper).isA<Function>();
    });
    test('LocalFree can be instantiated', () {
      check(LocalFree_Wrapper).isA<Function>();
    });
    test('LockFile can be instantiated', () {
      check(LockFile_Wrapper).isA<Function>();
    });
    test('LockFileEx can be instantiated', () {
      check(LockFileEx_Wrapper).isA<Function>();
    });
    test('LockResource can be instantiated', () {
      check(_LockResource).isA<Function>();
    });
    test('MoveFile can be instantiated', () {
      check(MoveFileW_Wrapper).isA<Function>();
    });
    test('MoveFileEx can be instantiated', () {
      check(MoveFileExW_Wrapper).isA<Function>();
    });
    test('OpenEvent can be instantiated', () {
      check(OpenEventW_Wrapper).isA<Function>();
    });
    test('OpenJobObject can be instantiated', () {
      check(OpenJobObjectW_Wrapper).isA<Function>();
    });
    test('OpenProcess can be instantiated', () {
      check(OpenProcess_Wrapper).isA<Function>();
    });
    test('OutputDebugString can be instantiated', () {
      check(_OutputDebugString).isA<Function>();
    });
    test('PackageFamilyNameFromFullName can be instantiated', () {
      check(_PackageFamilyNameFromFullName).isA<Function>();
    });
    test('PeekConsoleInput can be instantiated', () {
      check(PeekConsoleInputW_Wrapper).isA<Function>();
    });
    test('PeekNamedPipe can be instantiated', () {
      check(PeekNamedPipe_Wrapper).isA<Function>();
    });
    test('PostQueuedCompletionStatus can be instantiated', () {
      check(PostQueuedCompletionStatus_Wrapper).isA<Function>();
    });
    test('PurgeComm can be instantiated', () {
      check(PurgeComm_Wrapper).isA<Function>();
    });
    test('QueryDosDevice can be instantiated', () {
      check(QueryDosDeviceW_Wrapper).isA<Function>();
    });
    test('QueryFullProcessImageName can be instantiated', () {
      check(QueryFullProcessImageNameW_Wrapper).isA<Function>();
    });
    test('QueryInformationJobObject can be instantiated', () {
      check(QueryInformationJobObject_Wrapper).isA<Function>();
    });
    test('QueryIoRateControlInformationJobObject can be instantiated', () {
      check(QueryIoRateControlInformationJobObject_Wrapper).isA<Function>();
    });
    test('QueryPerformanceCounter can be instantiated', () {
      check(QueryPerformanceCounter_Wrapper).isA<Function>();
    });
    test('QueryPerformanceFrequency can be instantiated', () {
      check(QueryPerformanceFrequency_Wrapper).isA<Function>();
    });
    test('ReadConsole can be instantiated', () {
      check(ReadConsoleW_Wrapper).isA<Function>();
    });
    test('ReadConsoleInput can be instantiated', () {
      check(ReadConsoleInputW_Wrapper).isA<Function>();
    });
    test('ReadFile can be instantiated', () {
      check(ReadFile_Wrapper).isA<Function>();
    });
    test('ReadFileEx can be instantiated', () {
      check(ReadFileEx_Wrapper).isA<Function>();
    });
    test('ReadFileScatter can be instantiated', () {
      check(ReadFileScatter_Wrapper).isA<Function>();
    });
    test('ReadProcessMemory can be instantiated', () {
      check(ReadProcessMemory_Wrapper).isA<Function>();
    });
    test('ReleaseActCtx can be instantiated', () {
      check(_ReleaseActCtx).isA<Function>();
    });
    test('RemoveDirectory can be instantiated', () {
      check(RemoveDirectoryW_Wrapper).isA<Function>();
    });
    test('RemoveDllDirectory can be instantiated', () {
      check(RemoveDllDirectory_Wrapper).isA<Function>();
    });
    test('ReOpenFile can be instantiated', () {
      check(ReOpenFile_Wrapper).isA<Function>();
    });
    test('ResetEvent can be instantiated', () {
      check(ResetEvent_Wrapper).isA<Function>();
    });
    test(
      'ResizePseudoConsole can be instantiated',
      skip: 17763 > windowsBuildNumber,
      () {
        check(_ResizePseudoConsole).isA<Function>();
      },
    );
    test('ScrollConsoleScreenBuffer can be instantiated', () {
      check(ScrollConsoleScreenBufferW_Wrapper).isA<Function>();
    });
    test('SetCommBreak can be instantiated', () {
      check(SetCommBreak_Wrapper).isA<Function>();
    });
    test('SetCommConfig can be instantiated', () {
      check(SetCommConfig_Wrapper).isA<Function>();
    });
    test('SetCommMask can be instantiated', () {
      check(SetCommMask_Wrapper).isA<Function>();
    });
    test('SetCommState can be instantiated', () {
      check(SetCommState_Wrapper).isA<Function>();
    });
    test('SetCommTimeouts can be instantiated', () {
      check(SetCommTimeouts_Wrapper).isA<Function>();
    });
    test('SetConsoleCtrlHandler can be instantiated', () {
      check(SetConsoleCtrlHandler_Wrapper).isA<Function>();
    });
    test('SetConsoleCursorInfo can be instantiated', () {
      check(SetConsoleCursorInfo_Wrapper).isA<Function>();
    });
    test('SetConsoleCursorPosition can be instantiated', () {
      check(SetConsoleCursorPosition_Wrapper).isA<Function>();
    });
    test('SetConsoleDisplayMode can be instantiated', () {
      check(SetConsoleDisplayMode_Wrapper).isA<Function>();
    });
    test('SetConsoleMode can be instantiated', () {
      check(SetConsoleMode_Wrapper).isA<Function>();
    });
    test('SetConsoleTextAttribute can be instantiated', () {
      check(SetConsoleTextAttribute_Wrapper).isA<Function>();
    });
    test('SetConsoleWindowInfo can be instantiated', () {
      check(SetConsoleWindowInfo_Wrapper).isA<Function>();
    });
    test('SetCurrentDirectory can be instantiated', () {
      check(_SetCurrentDirectory).isA<Function>();
    });
    test('SetDefaultCommConfig can be instantiated', () {
      check(SetDefaultCommConfigW_Wrapper).isA<Function>();
    });
    test('SetDefaultDllDirectories can be instantiated', () {
      check(SetDefaultDllDirectories_Wrapper).isA<Function>();
    });
    test('SetEndOfFile can be instantiated', () {
      check(SetEndOfFile_Wrapper).isA<Function>();
    });
    test('SetEnvironmentVariable can be instantiated', () {
      check(SetEnvironmentVariableW_Wrapper).isA<Function>();
    });
    test('SetErrorMode can be instantiated', () {
      check(_SetErrorMode).isA<Function>();
    });
    test('SetEvent can be instantiated', () {
      check(SetEvent_Wrapper).isA<Function>();
    });
    test('SetFileApisToANSI can be instantiated', () {
      check(_SetFileApisToANSI).isA<Function>();
    });
    test('SetFileApisToOEM can be instantiated', () {
      check(_SetFileApisToOEM).isA<Function>();
    });
    test('SetFileAttributes can be instantiated', () {
      check(SetFileAttributesW_Wrapper).isA<Function>();
    });
    test('SetFileInformationByHandle can be instantiated', () {
      check(SetFileInformationByHandle_Wrapper).isA<Function>();
    });
    test('SetFileIoOverlappedRange can be instantiated', () {
      check(SetFileIoOverlappedRange_Wrapper).isA<Function>();
    });
    test('SetFilePointer can be instantiated', () {
      check(SetFilePointer_Wrapper).isA<Function>();
    });
    test('SetFilePointerEx can be instantiated', () {
      check(SetFilePointerEx_Wrapper).isA<Function>();
    });
    test('SetFileShortName can be instantiated', () {
      check(SetFileShortNameW_Wrapper).isA<Function>();
    });
    test('SetFileTime can be instantiated', () {
      check(SetFileTime_Wrapper).isA<Function>();
    });
    test('SetFileValidData can be instantiated', () {
      check(SetFileValidData_Wrapper).isA<Function>();
    });
    test('SetFirmwareEnvironmentVariable can be instantiated', () {
      check(SetFirmwareEnvironmentVariableW_Wrapper).isA<Function>();
    });
    test('SetFirmwareEnvironmentVariableEx can be instantiated', () {
      check(SetFirmwareEnvironmentVariableExW_Wrapper).isA<Function>();
    });
    test('SetHandleInformation can be instantiated', () {
      check(SetHandleInformation_Wrapper).isA<Function>();
    });
    test('SetInformationJobObject can be instantiated', () {
      check(SetInformationJobObject_Wrapper).isA<Function>();
    });
    test('SetIoRateControlInformationJobObject can be instantiated', () {
      check(SetIoRateControlInformationJobObject_Wrapper).isA<Function>();
    });
    test('SetNamedPipeHandleState can be instantiated', () {
      check(SetNamedPipeHandleState_Wrapper).isA<Function>();
    });
    test('SetProcessAffinityMask can be instantiated', () {
      check(SetProcessAffinityMask_Wrapper).isA<Function>();
    });
    test('SetProcessPriorityBoost can be instantiated', () {
      check(SetProcessPriorityBoost_Wrapper).isA<Function>();
    });
    test('SetProcessWorkingSetSize can be instantiated', () {
      check(SetProcessWorkingSetSize_Wrapper).isA<Function>();
    });
    test('SetStdHandle can be instantiated', () {
      check(SetStdHandle_Wrapper).isA<Function>();
    });
    test('SetThreadAffinityMask can be instantiated', () {
      check(SetThreadAffinityMask_Wrapper).isA<Function>();
    });
    test('SetThreadErrorMode can be instantiated', () {
      check(SetThreadErrorMode_Wrapper).isA<Function>();
    });
    test('SetThreadExecutionState can be instantiated', () {
      check(_SetThreadExecutionState).isA<Function>();
    });
    test('SetThreadUILanguage can be instantiated', () {
      check(SetThreadUILanguage_Wrapper).isA<Function>();
    });
    test('SetupComm can be instantiated', () {
      check(SetupComm_Wrapper).isA<Function>();
    });
    test('SetVolumeLabel can be instantiated', () {
      check(SetVolumeLabelW_Wrapper).isA<Function>();
    });
    test('SizeofResource can be instantiated', () {
      check(SizeofResource_Wrapper).isA<Function>();
    });
    test('Sleep can be instantiated', () {
      check(_Sleep).isA<Function>();
    });
    test('SleepEx can be instantiated', () {
      check(_SleepEx).isA<Function>();
    });
    test('SystemTimeToFileTime can be instantiated', () {
      check(SystemTimeToFileTime_Wrapper).isA<Function>();
    });
    test('TerminateJobObject can be instantiated', () {
      check(TerminateJobObject_Wrapper).isA<Function>();
    });
    test('TerminateProcess can be instantiated', () {
      check(TerminateProcess_Wrapper).isA<Function>();
    });
    test('TerminateThread can be instantiated', () {
      check(TerminateThread_Wrapper).isA<Function>();
    });
    test('TransactNamedPipe can be instantiated', () {
      check(TransactNamedPipe_Wrapper).isA<Function>();
    });
    test('TransmitCommChar can be instantiated', () {
      check(TransmitCommChar_Wrapper).isA<Function>();
    });
    test('UnlockFile can be instantiated', () {
      check(UnlockFile_Wrapper).isA<Function>();
    });
    test('UnlockFileEx can be instantiated', () {
      check(UnlockFileEx_Wrapper).isA<Function>();
    });
    test('UpdateProcThreadAttribute can be instantiated', () {
      check(UpdateProcThreadAttribute_Wrapper).isA<Function>();
    });
    test('UpdateResource can be instantiated', () {
      check(UpdateResourceW_Wrapper).isA<Function>();
    });
    test('VerifyVersionInfo can be instantiated', () {
      check(VerifyVersionInfoW_Wrapper).isA<Function>();
    });
    test('VerLanguageName can be instantiated', () {
      check(_VerLanguageName).isA<Function>();
    });
    test('VerSetConditionMask can be instantiated', () {
      check(_VerSetConditionMask).isA<Function>();
    });
    test('VirtualAlloc can be instantiated', () {
      check(VirtualAlloc_Wrapper).isA<Function>();
    });
    test('VirtualAllocEx can be instantiated', () {
      check(VirtualAllocEx_Wrapper).isA<Function>();
    });
    test('VirtualFree can be instantiated', () {
      check(VirtualFree_Wrapper).isA<Function>();
    });
    test('VirtualFreeEx can be instantiated', () {
      check(VirtualFreeEx_Wrapper).isA<Function>();
    });
    test('VirtualLock can be instantiated', () {
      check(VirtualLock_Wrapper).isA<Function>();
    });
    test('VirtualProtect can be instantiated', () {
      check(VirtualProtect_Wrapper).isA<Function>();
    });
    test('VirtualProtectEx can be instantiated', () {
      check(VirtualProtectEx_Wrapper).isA<Function>();
    });
    test('VirtualQuery can be instantiated', () {
      check(VirtualQuery_Wrapper).isA<Function>();
    });
    test('VirtualQueryEx can be instantiated', () {
      check(VirtualQueryEx_Wrapper).isA<Function>();
    });
    test('VirtualUnlock can be instantiated', () {
      check(VirtualUnlock_Wrapper).isA<Function>();
    });
    test('WaitCommEvent can be instantiated', () {
      check(WaitCommEvent_Wrapper).isA<Function>();
    });
    test('WaitForSingleObject can be instantiated', () {
      check(WaitForSingleObject_Wrapper).isA<Function>();
    });
    test('WideCharToMultiByte can be instantiated', () {
      check(WideCharToMultiByte_Wrapper).isA<Function>();
    });
    test('Wow64SuspendThread can be instantiated', () {
      check(Wow64SuspendThread_Wrapper).isA<Function>();
    });
    test('WriteConsole can be instantiated', () {
      check(WriteConsoleW_Wrapper).isA<Function>();
    });
    test('WriteFile can be instantiated', () {
      check(WriteFile_Wrapper).isA<Function>();
    });
    test('WriteFileEx can be instantiated', () {
      check(WriteFileEx_Wrapper).isA<Function>();
    });
    test('WriteFileGather can be instantiated', () {
      check(WriteFileGather_Wrapper).isA<Function>();
    });
    test('WriteProcessMemory can be instantiated', () {
      check(WriteProcessMemory_Wrapper).isA<Function>();
    });
  });
}

@Native<Void Function(HANDLE)>(symbol: 'AddRefActCtx')
external void _AddRefActCtx(int hActCtx);

@Native<BOOL Function()>(symbol: 'AreFileApisANSI')
external int _AreFileApisANSI();

@Native<
  BOOL Function(
    PCWSTR,
    Pointer,
    Uint32,
    Pointer,
    Uint32,
    Pointer<Uint32>,
    Uint32,
  )
>(symbol: 'CallNamedPipeW')
external int _CallNamedPipe(
  PCWSTR lpNamedPipeName,
  Pointer lpInBuffer,
  int nInBufferSize,
  Pointer lpOutBuffer,
  int nOutBufferSize,
  Pointer<Uint32> lpBytesRead,
  int nTimeOut,
);

@Native<Void Function(HPCON)>(symbol: 'ClosePseudoConsole')
external void _ClosePseudoConsole(int hPC);

@Native<
  HANDLE Function(
    PCWSTR,
    Uint32,
    Uint32,
    Uint32,
    Uint32,
    Uint32,
    Uint32,
    Pointer<SECURITY_ATTRIBUTES>,
  )
>(symbol: 'CreateNamedPipeW')
external int _CreateNamedPipe(
  PCWSTR lpName,
  int dwOpenMode,
  int dwPipeMode,
  int nMaxInstances,
  int nOutBufferSize,
  int nInBufferSize,
  int nDefaultTimeOut,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
);

@Native<Int32 Function(COORD, HANDLE, HANDLE, Uint32, Pointer<HPCON>)>(
  symbol: 'CreatePseudoConsole',
)
external int _CreatePseudoConsole(
  COORD size,
  int hInput,
  int hOutput,
  int dwFlags,
  Pointer<HPCON> phPC,
);

@Native<Void Function()>(symbol: 'DebugBreak')
external void _DebugBreak();

@Native<
  BOOL Function(
    HMODULE,
    PCWSTR,
    Pointer<NativeFunction<ENUMRESNAMEPROC>>,
    IntPtr,
  )
>(symbol: 'EnumResourceNamesW')
external int _EnumResourceNames(
  int hModule,
  PCWSTR lpType,
  Pointer<NativeFunction<ENUMRESNAMEPROC>> lpEnumFunc,
  int lParam,
);

@Native<Void Function(Uint32)>(symbol: 'ExitProcess')
external void _ExitProcess(int uExitCode);

@Native<Void Function(Uint32)>(symbol: 'ExitThread')
external void _ExitThread(int dwExitCode);

@Native<
  Uint32 Function(
    PCWSTR,
    Uint32,
    Pointer<Uint32>,
    Pointer<PWSTR>,
    Pointer<Uint32>,
    PWSTR,
    Pointer<Uint32>,
  )
>(symbol: 'FindPackagesByPackageFamily')
external int _FindPackagesByPackageFamily(
  PCWSTR packageFamilyName,
  int packageFilters,
  Pointer<Uint32> count,
  Pointer<PWSTR> packageFullNames,
  Pointer<Uint32> bufferLength,
  PWSTR buffer,
  Pointer<Uint32> packageProperties,
);

@Native<HRSRC Function(HMODULE, PCWSTR, PCWSTR)>(symbol: 'FindResourceW')
external int _FindResource(int hModule, PCWSTR lpName, PCWSTR lpType);

@Native<HRSRC Function(HMODULE, PCWSTR, PCWSTR, Uint16)>(
  symbol: 'FindResourceExW',
)
external int _FindResourceEx(
  int hModule,
  PCWSTR lpType,
  PCWSTR lpName,
  int wLanguage,
);

@Native<Void Function(HMODULE, Uint32)>(symbol: 'FreeLibraryAndExitThread')
external void _FreeLibraryAndExitThread(int hLibModule, int dwExitCode);

@Native<Void Function(Pointer)>(symbol: 'FreeMemoryJobObject')
external void _FreeMemoryJobObject(Pointer buffer);

@Native<Uint16 Function()>(symbol: 'GetActiveProcessorGroupCount')
external int _GetActiveProcessorGroupCount();

@Native<PCWSTR Function()>(symbol: 'GetCommandLineW')
external PCWSTR _GetCommandLine();

@Native<HWND Function()>(symbol: 'GetConsoleWindow')
external int _GetConsoleWindow();

@Native<Uint32 Function(Uint32, PWSTR)>(symbol: 'GetCurrentDirectoryW')
external int _GetCurrentDirectory(int nBufferLength, PWSTR lpBuffer);

@Native<Uint32 Function(Pointer<Uint32>, PWSTR)>(
  symbol: 'GetCurrentPackageFullName',
)
external int _GetCurrentPackageFullName(
  Pointer<Uint32> packageFullNameLength,
  PWSTR packageFullName,
);

@Native<HANDLE Function()>(symbol: 'GetCurrentProcess')
external int _GetCurrentProcess();

@Native<Uint32 Function()>(symbol: 'GetCurrentProcessId')
external int _GetCurrentProcessId();

@Native<Uint32 Function()>(symbol: 'GetCurrentProcessorNumber')
external int _GetCurrentProcessorNumber();

@Native<HANDLE Function()>(symbol: 'GetCurrentThread')
external int _GetCurrentThread();

@Native<Uint32 Function()>(symbol: 'GetCurrentThreadId')
external int _GetCurrentThreadId();

@Native<Uint32 Function(PCWSTR)>(symbol: 'GetDriveTypeW')
external int _GetDriveType(PCWSTR lpRootPathName);

@Native<Void Function(Pointer<SYSTEMTIME>)>(symbol: 'GetLocalTime')
external void _GetLocalTime(Pointer<SYSTEMTIME> lpSystemTime);

@Native<Int32 Function(Uint16, Pointer<Int32>)>(
  symbol: 'GetMachineTypeAttributes',
)
external int _GetMachineTypeAttributes(
  int machine,
  Pointer<Int32> machineTypeAttributes,
);

@Native<Uint16 Function()>(symbol: 'GetMaximumProcessorGroupCount')
external int _GetMaximumProcessorGroupCount();

@Native<BOOL Function(HANDLE, PWSTR, Uint32)>(
  symbol: 'GetNamedPipeClientComputerNameW',
)
external int _GetNamedPipeClientComputerName(
  int pipe,
  PWSTR clientComputerName,
  int clientComputerNameLength,
);

@Native<
  BOOL Function(
    HANDLE,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint32>,
    PWSTR,
    Uint32,
  )
>(symbol: 'GetNamedPipeHandleStateW')
external int _GetNamedPipeHandleState(
  int hNamedPipe,
  Pointer<Uint32> lpState,
  Pointer<Uint32> lpCurInstances,
  Pointer<Uint32> lpMaxCollectionCount,
  Pointer<Uint32> lpCollectDataTimeout,
  PWSTR lpUserName,
  int nMaxUserNameSize,
);

@Native<Void Function(Pointer<SYSTEM_INFO>)>(symbol: 'GetNativeSystemInfo')
external void _GetNativeSystemInfo(Pointer<SYSTEM_INFO> lpSystemInfo);

@Native<BOOL Function(Uint32, Uint32, Uint32, Uint32, Pointer<Uint32>)>(
  symbol: 'GetProductInfo',
)
external int _GetProductInfo(
  int dwOSMajorVersion,
  int dwOSMinorVersion,
  int dwSpMajorVersion,
  int dwSpMinorVersion,
  Pointer<Uint32> pdwReturnedProductType,
);

@Native<Void Function(Pointer<STARTUPINFO>)>(symbol: 'GetStartupInfoW')
external void _GetStartupInfo(Pointer<STARTUPINFO> lpStartupInfo);

@Native<Uint16 Function()>(symbol: 'GetSystemDefaultLangID')
external int _GetSystemDefaultLangID();

@Native<Void Function(Pointer<SYSTEM_INFO>)>(symbol: 'GetSystemInfo')
external void _GetSystemInfo(Pointer<SYSTEM_INFO> lpSystemInfo);

@Native<Void Function(Pointer<SYSTEMTIME>)>(symbol: 'GetSystemTime')
external void _GetSystemTime(Pointer<SYSTEMTIME> lpSystemTime);

@Native<Uint32 Function(Uint32, PWSTR)>(symbol: 'GetTempPath2W')
external int _GetTempPath2(int bufferLength, PWSTR buffer);

@Native<Uint32 Function()>(symbol: 'GetThreadLocale')
external int _GetThreadLocale();

@Native<Uint16 Function()>(symbol: 'GetThreadUILanguage')
external int _GetThreadUILanguage();

@Native<Uint32 Function()>(symbol: 'GetTickCount')
external int _GetTickCount();

@Native<Uint16 Function()>(symbol: 'GetUserDefaultLangID')
external int _GetUserDefaultLangID();

@Native<Uint32 Function()>(symbol: 'GetUserDefaultLCID')
external int _GetUserDefaultLCID();

@Native<Pointer Function(HANDLE, Uint32, IntPtr)>(symbol: 'HeapAlloc')
external Pointer _HeapAlloc(int hHeap, int dwFlags, int dwBytes);

@Native<Pointer Function(HANDLE, Uint32, Pointer, IntPtr)>(
  symbol: 'HeapReAlloc',
)
external Pointer _HeapReAlloc(
  int hHeap,
  int dwFlags,
  Pointer lpMem,
  int dwBytes,
);

@Native<IntPtr Function(HANDLE, Uint32, Pointer)>(symbol: 'HeapSize')
external int _HeapSize(int hHeap, int dwFlags, Pointer lpMem);

@Native<BOOL Function(HANDLE, Uint32, Pointer)>(symbol: 'HeapValidate')
external int _HeapValidate(int hHeap, int dwFlags, Pointer lpMem);

@Native<BOOL Function()>(symbol: 'IsDebuggerPresent')
external int _IsDebuggerPresent();

@Native<BOOL Function()>(symbol: 'IsSystemResumeAutomatic')
external int _IsSystemResumeAutomatic();

@Native<BOOL Function(PCWSTR)>(symbol: 'IsValidLocaleName')
external int _IsValidLocaleName(PCWSTR lpLocaleName);

@Native<Pointer Function(HGLOBAL)>(symbol: 'LockResource')
external Pointer _LockResource(int hResData);

@Native<Void Function(PCWSTR)>(symbol: 'OutputDebugStringW')
external void _OutputDebugString(PCWSTR lpOutputString);

@Native<Uint32 Function(PCWSTR, Pointer<Uint32>, PWSTR)>(
  symbol: 'PackageFamilyNameFromFullName',
)
external int _PackageFamilyNameFromFullName(
  PCWSTR packageFullName,
  Pointer<Uint32> packageFamilyNameLength,
  PWSTR packageFamilyName,
);

@Native<Void Function(HANDLE)>(symbol: 'ReleaseActCtx')
external void _ReleaseActCtx(int hActCtx);

@Native<Int32 Function(HPCON, COORD)>(symbol: 'ResizePseudoConsole')
external int _ResizePseudoConsole(int hPC, COORD size);

@Native<BOOL Function(PCWSTR)>(symbol: 'SetCurrentDirectoryW')
external int _SetCurrentDirectory(PCWSTR lpPathName);

@Native<Uint32 Function(Uint32)>(symbol: 'SetErrorMode')
external int _SetErrorMode(int uMode);

@Native<Void Function()>(symbol: 'SetFileApisToANSI')
external void _SetFileApisToANSI();

@Native<Void Function()>(symbol: 'SetFileApisToOEM')
external void _SetFileApisToOEM();

@Native<Uint32 Function(Uint32)>(symbol: 'SetThreadExecutionState')
external int _SetThreadExecutionState(int esFlags);

@Native<Void Function(Uint32)>(symbol: 'Sleep')
external void _Sleep(int dwMilliseconds);

@Native<Uint32 Function(Uint32, BOOL)>(symbol: 'SleepEx')
external int _SleepEx(int dwMilliseconds, int bAlertable);

@Native<Uint32 Function(Uint32, PWSTR, Uint32)>(symbol: 'VerLanguageNameW')
external int _VerLanguageName(int wLang, PWSTR szLang, int cchLang);

@Native<Uint64 Function(Uint64, Uint32, Uint8)>(symbol: 'VerSetConditionMask')
external int _VerSetConditionMask(
  int conditionMask,
  int typeMask,
  int condition,
);
