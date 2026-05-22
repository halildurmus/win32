// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated).
//
// ignore_for_file: non_constant_identifier_names, unnecessary_ignore
// ignore_for_file: specify_nonobvious_property_types, unused_import

@TestOn('windows')
library;

import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:ffi/ffi.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

import '../../helpers.dart';

void main() {
  group('kernel32.dll', () {
    test('ActivateActCtx can be instantiated', () {
      check(_ActivateActCtx).isA<Function>();
    });
    test('AddDllDirectory can be instantiated', () {
      check(_AddDllDirectory).isA<Function>();
    });
    test('AddRefActCtx can be instantiated', () {
      check(_AddRefActCtx).isA<Function>();
    });
    test('AllocConsole can be instantiated', () {
      check(_AllocConsole).isA<Function>();
    });
    test('AreFileApisANSI can be instantiated', () {
      check(_AreFileApisANSI).isA<Function>();
    });
    test('AssignProcessToJobObject can be instantiated', () {
      check(_AssignProcessToJobObject).isA<Function>();
    });
    test('AttachConsole can be instantiated', () {
      check(_AttachConsole).isA<Function>();
    });
    test('Beep can be instantiated', () {
      check(_Beep).isA<Function>();
    });
    test('BeginUpdateResource can be instantiated', () {
      check(_BeginUpdateResource).isA<Function>();
    });
    test('BuildCommDCB can be instantiated', () {
      check(_BuildCommDCB).isA<Function>();
    });
    test('BuildCommDCBAndTimeouts can be instantiated', () {
      check(_BuildCommDCBAndTimeouts).isA<Function>();
    });
    test('CallNamedPipe can be instantiated', () {
      check(_CallNamedPipe).isA<Function>();
    });
    test('CancelIo can be instantiated', () {
      check(_CancelIo).isA<Function>();
    });
    test('CancelIoEx can be instantiated', () {
      check(_CancelIoEx).isA<Function>();
    });
    test('CancelSynchronousIo can be instantiated', () {
      check(_CancelSynchronousIo).isA<Function>();
    });
    test('CheckRemoteDebuggerPresent can be instantiated', () {
      check(_CheckRemoteDebuggerPresent).isA<Function>();
    });
    test('ClearCommBreak can be instantiated', () {
      check(_ClearCommBreak).isA<Function>();
    });
    test('ClearCommError can be instantiated', () {
      check(_ClearCommError).isA<Function>();
    });
    test('CloseHandle can be instantiated', () {
      check(_CloseHandle).isA<Function>();
    });
    test(
      'ClosePseudoConsole can be instantiated',
      skip: 17763 > windowsBuildNumber,
      () {
        check(_ClosePseudoConsole).isA<Function>();
      },
    );
    test('CommConfigDialog can be instantiated', () {
      check(_CommConfigDialog).isA<Function>();
    });
    test('ConnectNamedPipe can be instantiated', () {
      check(_ConnectNamedPipe).isA<Function>();
    });
    test('ContinueDebugEvent can be instantiated', () {
      check(_ContinueDebugEvent).isA<Function>();
    });
    test('CopyFile can be instantiated', () {
      check(_CopyFile).isA<Function>();
    });
    test('CopyFileEx can be instantiated', () {
      check(_CopyFileEx).isA<Function>();
    });
    test('CreateActCtx can be instantiated', () {
      check(_CreateActCtx).isA<Function>();
    });
    test('CreateConsoleScreenBuffer can be instantiated', () {
      check(_CreateConsoleScreenBuffer).isA<Function>();
    });
    test('CreateDirectory can be instantiated', () {
      check(_CreateDirectory).isA<Function>();
    });
    test('CreateEvent can be instantiated', () {
      check(_CreateEvent).isA<Function>();
    });
    test('CreateEventEx can be instantiated', () {
      check(_CreateEventEx).isA<Function>();
    });
    test('CreateFile can be instantiated', () {
      check(_CreateFile).isA<Function>();
    });
    test('CreateFile2 can be instantiated', () {
      check(_CreateFile2).isA<Function>();
    });
    test('CreateIoCompletionPort can be instantiated', () {
      check(_CreateIoCompletionPort).isA<Function>();
    });
    test('CreateJobObject can be instantiated', () {
      check(_CreateJobObject).isA<Function>();
    });
    test('CreateNamedPipe can be instantiated', () {
      check(_CreateNamedPipe).isA<Function>();
    });
    test('CreatePipe can be instantiated', () {
      check(_CreatePipe).isA<Function>();
    });
    test('CreateProcess can be instantiated', () {
      check(_CreateProcess).isA<Function>();
    });
    test(
      'CreatePseudoConsole can be instantiated',
      skip: 17763 > windowsBuildNumber,
      () {
        check(_CreatePseudoConsole).isA<Function>();
      },
    );
    test('CreateRemoteThread can be instantiated', () {
      check(_CreateRemoteThread).isA<Function>();
    });
    test('CreateRemoteThreadEx can be instantiated', () {
      check(_CreateRemoteThreadEx).isA<Function>();
    });
    test('CreateSymbolicLink can be instantiated', () {
      check(_CreateSymbolicLink).isA<Function>();
    });
    test('CreateThread can be instantiated', () {
      check(_CreateThread).isA<Function>();
    });
    test('DeactivateActCtx can be instantiated', () {
      check(_DeactivateActCtx).isA<Function>();
    });
    test('DebugBreak can be instantiated', () {
      check(_DebugBreak).isA<Function>();
    });
    test('DebugBreakProcess can be instantiated', () {
      check(_DebugBreakProcess).isA<Function>();
    });
    test('DebugSetProcessKillOnExit can be instantiated', () {
      check(_DebugSetProcessKillOnExit).isA<Function>();
    });
    test('DefineDosDevice can be instantiated', () {
      check(_DefineDosDevice).isA<Function>();
    });
    test('DeleteFile can be instantiated', () {
      check(_DeleteFile).isA<Function>();
    });
    test('DeleteProcThreadAttributeList can be instantiated', () {
      check(_DeleteProcThreadAttributeList).isA<Function>();
    });
    test('DeleteVolumeMountPoint can be instantiated', () {
      check(_DeleteVolumeMountPoint).isA<Function>();
    });
    test('DeviceIoControl can be instantiated', () {
      check(_DeviceIoControl).isA<Function>();
    });
    test('DisableThreadLibraryCalls can be instantiated', () {
      check(_DisableThreadLibraryCalls).isA<Function>();
    });
    test('DisconnectNamedPipe can be instantiated', () {
      check(_DisconnectNamedPipe).isA<Function>();
    });
    test('DnsHostnameToComputerName can be instantiated', () {
      check(_DnsHostnameToComputerName).isA<Function>();
    });
    test('DosDateTimeToFileTime can be instantiated', () {
      check(_DosDateTimeToFileTime).isA<Function>();
    });
    test('DuplicateHandle can be instantiated', () {
      check(_DuplicateHandle).isA<Function>();
    });
    test('EndUpdateResource can be instantiated', () {
      check(_EndUpdateResource).isA<Function>();
    });
    test('EnumResourceNames can be instantiated', () {
      check(_EnumResourceNames).isA<Function>();
    });
    test('EnumResourceTypes can be instantiated', () {
      check(_EnumResourceTypes).isA<Function>();
    });
    test('EnumSystemFirmwareTables can be instantiated', () {
      check(_EnumSystemFirmwareTables).isA<Function>();
    });
    test('EscapeCommFunction can be instantiated', () {
      check(_EscapeCommFunction).isA<Function>();
    });
    test('ExitProcess can be instantiated', () {
      check(_ExitProcess).isA<Function>();
    });
    test('ExitThread can be instantiated', () {
      check(_ExitThread).isA<Function>();
    });
    test('FileTimeToDosDateTime can be instantiated', () {
      check(_FileTimeToDosDateTime).isA<Function>();
    });
    test('FileTimeToSystemTime can be instantiated', () {
      check(_FileTimeToSystemTime).isA<Function>();
    });
    test('FillConsoleOutputAttribute can be instantiated', () {
      check(_FillConsoleOutputAttribute).isA<Function>();
    });
    test('FillConsoleOutputCharacter can be instantiated', () {
      check(_FillConsoleOutputCharacter).isA<Function>();
    });
    test('FindClose can be instantiated', () {
      check(_FindClose).isA<Function>();
    });
    test('FindCloseChangeNotification can be instantiated', () {
      check(_FindCloseChangeNotification).isA<Function>();
    });
    test('FindFirstChangeNotification can be instantiated', () {
      check(_FindFirstChangeNotification).isA<Function>();
    });
    test('FindFirstFile can be instantiated', () {
      check(_FindFirstFile).isA<Function>();
    });
    test('FindFirstFileEx can be instantiated', () {
      check(_FindFirstFileEx).isA<Function>();
    });
    test('FindFirstFileName can be instantiated', () {
      check(_FindFirstFileName).isA<Function>();
    });
    test('FindFirstStream can be instantiated', () {
      check(_FindFirstStream).isA<Function>();
    });
    test('FindFirstVolume can be instantiated', () {
      check(_FindFirstVolume).isA<Function>();
    });
    test('FindNextChangeNotification can be instantiated', () {
      check(_FindNextChangeNotification).isA<Function>();
    });
    test('FindNextFile can be instantiated', () {
      check(_FindNextFile).isA<Function>();
    });
    test('FindNextFileName can be instantiated', () {
      check(_FindNextFileName).isA<Function>();
    });
    test('FindNextStream can be instantiated', () {
      check(_FindNextStream).isA<Function>();
    });
    test('FindNextVolume can be instantiated', () {
      check(_FindNextVolume).isA<Function>();
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
      check(_FindStringOrdinal).isA<Function>();
    });
    test('FindVolumeClose can be instantiated', () {
      check(_FindVolumeClose).isA<Function>();
    });
    test('FlushConsoleInputBuffer can be instantiated', () {
      check(_FlushConsoleInputBuffer).isA<Function>();
    });
    test('FlushFileBuffers can be instantiated', () {
      check(_FlushFileBuffers).isA<Function>();
    });
    test('FormatMessage can be instantiated', () {
      check(_FormatMessage).isA<Function>();
    });
    test('FreeConsole can be instantiated', () {
      check(_FreeConsole).isA<Function>();
    });
    test('FreeLibrary can be instantiated', () {
      check(_FreeLibrary).isA<Function>();
    });
    test('FreeLibraryAndExitThread can be instantiated', () {
      check(_FreeLibraryAndExitThread).isA<Function>();
    });
    test('FreeMemoryJobObject can be instantiated', () {
      check(_FreeMemoryJobObject).isA<Function>();
    });
    test('GetActiveProcessorCount can be instantiated', () {
      check(_GetActiveProcessorCount).isA<Function>();
    });
    test('GetActiveProcessorGroupCount can be instantiated', () {
      check(_GetActiveProcessorGroupCount).isA<Function>();
    });
    test('GetBinaryType can be instantiated', () {
      check(_GetBinaryType).isA<Function>();
    });
    test('GetCommandLine can be instantiated', () {
      check(_GetCommandLine).isA<Function>();
    });
    test('GetCommConfig can be instantiated', () {
      check(_GetCommConfig).isA<Function>();
    });
    test('GetCommMask can be instantiated', () {
      check(_GetCommMask).isA<Function>();
    });
    test('GetCommModemStatus can be instantiated', () {
      check(_GetCommModemStatus).isA<Function>();
    });
    test('GetCommProperties can be instantiated', () {
      check(_GetCommProperties).isA<Function>();
    });
    test('GetCommState can be instantiated', () {
      check(_GetCommState).isA<Function>();
    });
    test('GetCommTimeouts can be instantiated', () {
      check(_GetCommTimeouts).isA<Function>();
    });
    test('GetCompressedFileSize can be instantiated', () {
      check(_GetCompressedFileSize).isA<Function>();
    });
    test('GetComputerName can be instantiated', () {
      check(_GetComputerName).isA<Function>();
    });
    test('GetComputerNameEx can be instantiated', () {
      check(_GetComputerNameEx).isA<Function>();
    });
    test('GetConsoleCP can be instantiated', () {
      check(_GetConsoleCP).isA<Function>();
    });
    test('GetConsoleCursorInfo can be instantiated', () {
      check(_GetConsoleCursorInfo).isA<Function>();
    });
    test('GetConsoleMode can be instantiated', () {
      check(_GetConsoleMode).isA<Function>();
    });
    test('GetConsoleOutputCP can be instantiated', () {
      check(_GetConsoleOutputCP).isA<Function>();
    });
    test('GetConsoleScreenBufferInfo can be instantiated', () {
      check(_GetConsoleScreenBufferInfo).isA<Function>();
    });
    test('GetConsoleSelectionInfo can be instantiated', () {
      check(_GetConsoleSelectionInfo).isA<Function>();
    });
    test('GetConsoleTitle can be instantiated', () {
      check(_GetConsoleTitle).isA<Function>();
    });
    test('GetConsoleWindow can be instantiated', () {
      check(_GetConsoleWindow).isA<Function>();
    });
    test('GetCurrentActCtx can be instantiated', () {
      check(_GetCurrentActCtx).isA<Function>();
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
      check(_GetDefaultCommConfig).isA<Function>();
    });
    test('GetDiskFreeSpace can be instantiated', () {
      check(_GetDiskFreeSpace).isA<Function>();
    });
    test('GetDiskFreeSpaceEx can be instantiated', () {
      check(_GetDiskFreeSpaceEx).isA<Function>();
    });
    test('GetDllDirectory can be instantiated', () {
      check(_GetDllDirectory).isA<Function>();
    });
    test('GetDriveType can be instantiated', () {
      check(_GetDriveType).isA<Function>();
    });
    test('GetEnvironmentVariable can be instantiated', () {
      check(_GetEnvironmentVariable).isA<Function>();
    });
    test('GetExitCodeProcess can be instantiated', () {
      check(_GetExitCodeProcess).isA<Function>();
    });
    test('GetFileAttributes can be instantiated', () {
      check(_GetFileAttributes).isA<Function>();
    });
    test('GetFileAttributesEx can be instantiated', () {
      check(_GetFileAttributesEx).isA<Function>();
    });
    test('GetFileInformationByHandle can be instantiated', () {
      check(_GetFileInformationByHandle).isA<Function>();
    });
    test('GetFileSize can be instantiated', () {
      check(_GetFileSize).isA<Function>();
    });
    test('GetFileSizeEx can be instantiated', () {
      check(_GetFileSizeEx).isA<Function>();
    });
    test('GetFileType can be instantiated', () {
      check(_GetFileType).isA<Function>();
    });
    test('GetFinalPathNameByHandle can be instantiated', () {
      check(_GetFinalPathNameByHandle).isA<Function>();
    });
    test('GetFullPathName can be instantiated', () {
      check(_GetFullPathName).isA<Function>();
    });
    test('GetHandleInformation can be instantiated', () {
      check(_GetHandleInformation).isA<Function>();
    });
    test('GetLargestConsoleWindowSize can be instantiated', () {
      check(_GetLargestConsoleWindowSize).isA<Function>();
    });
    test('GetLocaleInfoEx can be instantiated', () {
      check(_GetLocaleInfoEx).isA<Function>();
    });
    test('GetLocalTime can be instantiated', () {
      check(_GetLocalTime).isA<Function>();
    });
    test('GetLogicalDrives can be instantiated', () {
      check(_GetLogicalDrives).isA<Function>();
    });
    test('GetLogicalDriveStrings can be instantiated', () {
      check(_GetLogicalDriveStrings).isA<Function>();
    });
    test('GetLogicalProcessorInformation can be instantiated', () {
      check(_GetLogicalProcessorInformation).isA<Function>();
    });
    test('GetLongPathName can be instantiated', () {
      check(_GetLongPathName).isA<Function>();
    });
    test(
      'GetMachineTypeAttributes can be instantiated',
      skip: 22000 > windowsBuildNumber,
      () {
        check(_GetMachineTypeAttributes).isA<Function>();
      },
    );
    test('GetMaximumProcessorCount can be instantiated', () {
      check(_GetMaximumProcessorCount).isA<Function>();
    });
    test('GetMaximumProcessorGroupCount can be instantiated', () {
      check(_GetMaximumProcessorGroupCount).isA<Function>();
    });
    test('GetModuleFileName can be instantiated', () {
      check(_GetModuleFileName).isA<Function>();
    });
    test('GetModuleHandle can be instantiated', () {
      check(_GetModuleHandle).isA<Function>();
    });
    test('GetModuleHandleEx can be instantiated', () {
      check(_GetModuleHandleEx).isA<Function>();
    });
    test('GetNamedPipeClientComputerName can be instantiated', () {
      check(_GetNamedPipeClientComputerName).isA<Function>();
    });
    test('GetNamedPipeClientProcessId can be instantiated', () {
      check(_GetNamedPipeClientProcessId).isA<Function>();
    });
    test('GetNamedPipeClientSessionId can be instantiated', () {
      check(_GetNamedPipeClientSessionId).isA<Function>();
    });
    test('GetNamedPipeHandleState can be instantiated', () {
      check(_GetNamedPipeHandleState).isA<Function>();
    });
    test('GetNamedPipeInfo can be instantiated', () {
      check(_GetNamedPipeInfo).isA<Function>();
    });
    test('GetNativeSystemInfo can be instantiated', () {
      check(_GetNativeSystemInfo).isA<Function>();
    });
    test('GetNumberOfConsoleInputEvents can be instantiated', () {
      check(_GetNumberOfConsoleInputEvents).isA<Function>();
    });
    test('GetOverlappedResult can be instantiated', () {
      check(_GetOverlappedResult).isA<Function>();
    });
    test('GetOverlappedResultEx can be instantiated', () {
      check(_GetOverlappedResultEx).isA<Function>();
    });
    test('GetPhysicallyInstalledSystemMemory can be instantiated', () {
      check(_GetPhysicallyInstalledSystemMemory).isA<Function>();
    });
    test('GetProcAddress can be instantiated', () {
      check(_GetProcAddress).isA<Function>();
    });
    test('GetProcessHeap can be instantiated', () {
      check(_GetProcessHeap).isA<Function>();
    });
    test('GetProcessHeaps can be instantiated', () {
      check(_GetProcessHeaps).isA<Function>();
    });
    test('GetProcessId can be instantiated', () {
      check(_GetProcessId).isA<Function>();
    });
    test('GetProcessShutdownParameters can be instantiated', () {
      check(_GetProcessShutdownParameters).isA<Function>();
    });
    test('GetProcessTimes can be instantiated', () {
      check(_GetProcessTimes).isA<Function>();
    });
    test('GetProcessVersion can be instantiated', () {
      check(_GetProcessVersion).isA<Function>();
    });
    test('GetProcessWorkingSetSize can be instantiated', () {
      check(_GetProcessWorkingSetSize).isA<Function>();
    });
    test('GetProductInfo can be instantiated', () {
      check(_GetProductInfo).isA<Function>();
    });
    test('GetQueuedCompletionStatus can be instantiated', () {
      check(_GetQueuedCompletionStatus).isA<Function>();
    });
    test('GetQueuedCompletionStatusEx can be instantiated', () {
      check(_GetQueuedCompletionStatusEx).isA<Function>();
    });
    test('GetShortPathName can be instantiated', () {
      check(_GetShortPathName).isA<Function>();
    });
    test('GetStartupInfo can be instantiated', () {
      check(_GetStartupInfo).isA<Function>();
    });
    test('GetStdHandle can be instantiated', () {
      check(_GetStdHandle).isA<Function>();
    });
    test('GetSystemDefaultLangID can be instantiated', () {
      check(_GetSystemDefaultLangID).isA<Function>();
    });
    test('GetSystemDefaultLocaleName can be instantiated', () {
      check(_GetSystemDefaultLocaleName).isA<Function>();
    });
    test('GetSystemDirectory can be instantiated', () {
      check(_GetSystemDirectory).isA<Function>();
    });
    test('GetSystemInfo can be instantiated', () {
      check(_GetSystemInfo).isA<Function>();
    });
    test('GetSystemPowerStatus can be instantiated', () {
      check(_GetSystemPowerStatus).isA<Function>();
    });
    test('GetSystemTime can be instantiated', () {
      check(_GetSystemTime).isA<Function>();
    });
    test('GetSystemTimeAdjustment can be instantiated', () {
      check(_GetSystemTimeAdjustment).isA<Function>();
    });
    test('GetSystemTimes can be instantiated', () {
      check(_GetSystemTimes).isA<Function>();
    });
    test('GetTempFileName can be instantiated', () {
      check(_GetTempFileName).isA<Function>();
    });
    test('GetTempPath can be instantiated', () {
      check(_GetTempPath).isA<Function>();
    });
    test(
      'GetTempPath2 can be instantiated',
      skip: 20348 > windowsBuildNumber,
      () {
        check(_GetTempPath2).isA<Function>();
      },
    );
    test('GetThreadId can be instantiated', () {
      check(_GetThreadId).isA<Function>();
    });
    test('GetThreadLocale can be instantiated', () {
      check(_GetThreadLocale).isA<Function>();
    });
    test('GetThreadTimes can be instantiated', () {
      check(_GetThreadTimes).isA<Function>();
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
      check(_GetUserDefaultLocaleName).isA<Function>();
    });
    test('GetVolumeInformation can be instantiated', () {
      check(_GetVolumeInformation).isA<Function>();
    });
    test('GetVolumeInformationByHandle can be instantiated', () {
      check(_GetVolumeInformationByHandle).isA<Function>();
    });
    test('GetVolumeNameForVolumeMountPoint can be instantiated', () {
      check(_GetVolumeNameForVolumeMountPoint).isA<Function>();
    });
    test('GetVolumePathName can be instantiated', () {
      check(_GetVolumePathName).isA<Function>();
    });
    test('GetVolumePathNamesForVolumeName can be instantiated', () {
      check(_GetVolumePathNamesForVolumeName).isA<Function>();
    });
    test('GlobalAlloc can be instantiated', () {
      check(_GlobalAlloc).isA<Function>();
    });
    test('GlobalFree can be instantiated', () {
      check(_GlobalFree).isA<Function>();
    });
    test('GlobalLock can be instantiated', () {
      check(_GlobalLock).isA<Function>();
    });
    test('GlobalMemoryStatusEx can be instantiated', () {
      check(_GlobalMemoryStatusEx).isA<Function>();
    });
    test('GlobalSize can be instantiated', () {
      check(_GlobalSize).isA<Function>();
    });
    test('GlobalUnlock can be instantiated', () {
      check(_GlobalUnlock).isA<Function>();
    });
    test('HeapAlloc can be instantiated', () {
      check(_HeapAlloc).isA<Function>();
    });
    test('HeapCompact can be instantiated', () {
      check(_HeapCompact).isA<Function>();
    });
    test('HeapCreate can be instantiated', () {
      check(_HeapCreate).isA<Function>();
    });
    test('HeapDestroy can be instantiated', () {
      check(_HeapDestroy).isA<Function>();
    });
    test('HeapFree can be instantiated', () {
      check(_HeapFree).isA<Function>();
    });
    test('HeapLock can be instantiated', () {
      check(_HeapLock).isA<Function>();
    });
    test('HeapQueryInformation can be instantiated', () {
      check(_HeapQueryInformation).isA<Function>();
    });
    test('HeapReAlloc can be instantiated', () {
      check(_HeapReAlloc).isA<Function>();
    });
    test('HeapSetInformation can be instantiated', () {
      check(_HeapSetInformation).isA<Function>();
    });
    test('HeapSize can be instantiated', () {
      check(_HeapSize).isA<Function>();
    });
    test('HeapUnlock can be instantiated', () {
      check(_HeapUnlock).isA<Function>();
    });
    test('HeapValidate can be instantiated', () {
      check(_HeapValidate).isA<Function>();
    });
    test('HeapWalk can be instantiated', () {
      check(_HeapWalk).isA<Function>();
    });
    test('InitializeProcThreadAttributeList can be instantiated', () {
      check(_InitializeProcThreadAttributeList).isA<Function>();
    });
    test('IsDebuggerPresent can be instantiated', () {
      check(_IsDebuggerPresent).isA<Function>();
    });
    test('IsNativeVhdBoot can be instantiated', () {
      check(_IsNativeVhdBoot).isA<Function>();
    });
    test('IsProcessInJob can be instantiated', () {
      check(_IsProcessInJob).isA<Function>();
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
        check(_IsWow64Process2).isA<Function>();
      },
    );
    test('LoadLibrary can be instantiated', () {
      check(_LoadLibrary).isA<Function>();
    });
    test('LoadLibraryEx can be instantiated', () {
      check(_LoadLibraryEx).isA<Function>();
    });
    test('LoadResource can be instantiated', () {
      check(_LoadResource).isA<Function>();
    });
    test('LocalAlloc can be instantiated', () {
      check(_LocalAlloc).isA<Function>();
    });
    test('LocalFree can be instantiated', () {
      check(_LocalFree).isA<Function>();
    });
    test('LockFile can be instantiated', () {
      check(_LockFile).isA<Function>();
    });
    test('LockFileEx can be instantiated', () {
      check(_LockFileEx).isA<Function>();
    });
    test('LockResource can be instantiated', () {
      check(_LockResource).isA<Function>();
    });
    test('MoveFile can be instantiated', () {
      check(_MoveFile).isA<Function>();
    });
    test('MoveFileEx can be instantiated', () {
      check(_MoveFileEx).isA<Function>();
    });
    test('OpenEvent can be instantiated', () {
      check(_OpenEvent).isA<Function>();
    });
    test('OpenJobObject can be instantiated', () {
      check(_OpenJobObject).isA<Function>();
    });
    test('OpenProcess can be instantiated', () {
      check(_OpenProcess).isA<Function>();
    });
    test('OutputDebugString can be instantiated', () {
      check(_OutputDebugString).isA<Function>();
    });
    test('PackageFamilyNameFromFullName can be instantiated', () {
      check(_PackageFamilyNameFromFullName).isA<Function>();
    });
    test('PeekConsoleInput can be instantiated', () {
      check(_PeekConsoleInput).isA<Function>();
    });
    test('PeekNamedPipe can be instantiated', () {
      check(_PeekNamedPipe).isA<Function>();
    });
    test('PostQueuedCompletionStatus can be instantiated', () {
      check(_PostQueuedCompletionStatus).isA<Function>();
    });
    test('ProcessIdToSessionId can be instantiated', () {
      check(_ProcessIdToSessionId).isA<Function>();
    });
    test('PurgeComm can be instantiated', () {
      check(_PurgeComm).isA<Function>();
    });
    test('QueryDosDevice can be instantiated', () {
      check(_QueryDosDevice).isA<Function>();
    });
    test('QueryFullProcessImageName can be instantiated', () {
      check(_QueryFullProcessImageName).isA<Function>();
    });
    test('QueryInformationJobObject can be instantiated', () {
      check(_QueryInformationJobObject).isA<Function>();
    });
    test('QueryIoRateControlInformationJobObject can be instantiated', () {
      check(_QueryIoRateControlInformationJobObject).isA<Function>();
    });
    test('QueryPerformanceCounter can be instantiated', () {
      check(_QueryPerformanceCounter).isA<Function>();
    });
    test('QueryPerformanceFrequency can be instantiated', () {
      check(_QueryPerformanceFrequency).isA<Function>();
    });
    test('ReadConsole can be instantiated', () {
      check(_ReadConsole).isA<Function>();
    });
    test('ReadConsoleInput can be instantiated', () {
      check(_ReadConsoleInput).isA<Function>();
    });
    test('ReadFile can be instantiated', () {
      check(_ReadFile).isA<Function>();
    });
    test('ReadFileEx can be instantiated', () {
      check(_ReadFileEx).isA<Function>();
    });
    test('ReadFileScatter can be instantiated', () {
      check(_ReadFileScatter).isA<Function>();
    });
    test('ReadProcessMemory can be instantiated', () {
      check(_ReadProcessMemory).isA<Function>();
    });
    test('ReleaseActCtx can be instantiated', () {
      check(_ReleaseActCtx).isA<Function>();
    });
    test('RemoveDirectory can be instantiated', () {
      check(_RemoveDirectory).isA<Function>();
    });
    test('RemoveDllDirectory can be instantiated', () {
      check(_RemoveDllDirectory).isA<Function>();
    });
    test('ReOpenFile can be instantiated', () {
      check(_ReOpenFile).isA<Function>();
    });
    test('ResetEvent can be instantiated', () {
      check(_ResetEvent).isA<Function>();
    });
    test(
      'ResizePseudoConsole can be instantiated',
      skip: 17763 > windowsBuildNumber,
      () {
        check(_ResizePseudoConsole).isA<Function>();
      },
    );
    test('ScrollConsoleScreenBuffer can be instantiated', () {
      check(_ScrollConsoleScreenBuffer).isA<Function>();
    });
    test('SetCommBreak can be instantiated', () {
      check(_SetCommBreak).isA<Function>();
    });
    test('SetCommConfig can be instantiated', () {
      check(_SetCommConfig).isA<Function>();
    });
    test('SetCommMask can be instantiated', () {
      check(_SetCommMask).isA<Function>();
    });
    test('SetCommState can be instantiated', () {
      check(_SetCommState).isA<Function>();
    });
    test('SetCommTimeouts can be instantiated', () {
      check(_SetCommTimeouts).isA<Function>();
    });
    test('SetConsoleCtrlHandler can be instantiated', () {
      check(_SetConsoleCtrlHandler).isA<Function>();
    });
    test('SetConsoleCursorInfo can be instantiated', () {
      check(_SetConsoleCursorInfo).isA<Function>();
    });
    test('SetConsoleCursorPosition can be instantiated', () {
      check(_SetConsoleCursorPosition).isA<Function>();
    });
    test('SetConsoleDisplayMode can be instantiated', () {
      check(_SetConsoleDisplayMode).isA<Function>();
    });
    test('SetConsoleMode can be instantiated', () {
      check(_SetConsoleMode).isA<Function>();
    });
    test('SetConsoleTextAttribute can be instantiated', () {
      check(_SetConsoleTextAttribute).isA<Function>();
    });
    test('SetConsoleWindowInfo can be instantiated', () {
      check(_SetConsoleWindowInfo).isA<Function>();
    });
    test('SetCurrentDirectory can be instantiated', () {
      check(_SetCurrentDirectory).isA<Function>();
    });
    test('SetDefaultCommConfig can be instantiated', () {
      check(_SetDefaultCommConfig).isA<Function>();
    });
    test('SetDefaultDllDirectories can be instantiated', () {
      check(_SetDefaultDllDirectories).isA<Function>();
    });
    test('SetEndOfFile can be instantiated', () {
      check(_SetEndOfFile).isA<Function>();
    });
    test('SetEnvironmentVariable can be instantiated', () {
      check(_SetEnvironmentVariable).isA<Function>();
    });
    test('SetErrorMode can be instantiated', () {
      check(_SetErrorMode).isA<Function>();
    });
    test('SetEvent can be instantiated', () {
      check(_SetEvent).isA<Function>();
    });
    test('SetFileApisToANSI can be instantiated', () {
      check(_SetFileApisToANSI).isA<Function>();
    });
    test('SetFileApisToOEM can be instantiated', () {
      check(_SetFileApisToOEM).isA<Function>();
    });
    test('SetFileAttributes can be instantiated', () {
      check(_SetFileAttributes).isA<Function>();
    });
    test('SetFileInformationByHandle can be instantiated', () {
      check(_SetFileInformationByHandle).isA<Function>();
    });
    test('SetFileIoOverlappedRange can be instantiated', () {
      check(_SetFileIoOverlappedRange).isA<Function>();
    });
    test('SetFilePointer can be instantiated', () {
      check(_SetFilePointer).isA<Function>();
    });
    test('SetFilePointerEx can be instantiated', () {
      check(_SetFilePointerEx).isA<Function>();
    });
    test('SetFileShortName can be instantiated', () {
      check(_SetFileShortName).isA<Function>();
    });
    test('SetFileTime can be instantiated', () {
      check(_SetFileTime).isA<Function>();
    });
    test('SetFileValidData can be instantiated', () {
      check(_SetFileValidData).isA<Function>();
    });
    test('SetFirmwareEnvironmentVariable can be instantiated', () {
      check(_SetFirmwareEnvironmentVariable).isA<Function>();
    });
    test('SetFirmwareEnvironmentVariableEx can be instantiated', () {
      check(_SetFirmwareEnvironmentVariableEx).isA<Function>();
    });
    test('SetHandleInformation can be instantiated', () {
      check(_SetHandleInformation).isA<Function>();
    });
    test('SetInformationJobObject can be instantiated', () {
      check(_SetInformationJobObject).isA<Function>();
    });
    test('SetIoRateControlInformationJobObject can be instantiated', () {
      check(_SetIoRateControlInformationJobObject).isA<Function>();
    });
    test('SetLastError can be instantiated', () {
      check(_SetLastError).isA<Function>();
    });
    test('SetNamedPipeHandleState can be instantiated', () {
      check(_SetNamedPipeHandleState).isA<Function>();
    });
    test('SetProcessAffinityMask can be instantiated', () {
      check(_SetProcessAffinityMask).isA<Function>();
    });
    test('SetProcessPriorityBoost can be instantiated', () {
      check(_SetProcessPriorityBoost).isA<Function>();
    });
    test('SetProcessWorkingSetSize can be instantiated', () {
      check(_SetProcessWorkingSetSize).isA<Function>();
    });
    test('SetStdHandle can be instantiated', () {
      check(_SetStdHandle).isA<Function>();
    });
    test('SetThreadAffinityMask can be instantiated', () {
      check(_SetThreadAffinityMask).isA<Function>();
    });
    test('SetThreadErrorMode can be instantiated', () {
      check(_SetThreadErrorMode).isA<Function>();
    });
    test('SetThreadExecutionState can be instantiated', () {
      check(_SetThreadExecutionState).isA<Function>();
    });
    test('SetThreadUILanguage can be instantiated', () {
      check(_SetThreadUILanguage).isA<Function>();
    });
    test('SetupComm can be instantiated', () {
      check(_SetupComm).isA<Function>();
    });
    test('SetVolumeLabel can be instantiated', () {
      check(_SetVolumeLabel).isA<Function>();
    });
    test('SizeofResource can be instantiated', () {
      check(_SizeofResource).isA<Function>();
    });
    test('Sleep can be instantiated', () {
      check(_Sleep).isA<Function>();
    });
    test('SleepEx can be instantiated', () {
      check(_SleepEx).isA<Function>();
    });
    test('SystemTimeToFileTime can be instantiated', () {
      check(_SystemTimeToFileTime).isA<Function>();
    });
    test('TerminateJobObject can be instantiated', () {
      check(_TerminateJobObject).isA<Function>();
    });
    test('TerminateProcess can be instantiated', () {
      check(_TerminateProcess).isA<Function>();
    });
    test('TerminateThread can be instantiated', () {
      check(_TerminateThread).isA<Function>();
    });
    test('TransactNamedPipe can be instantiated', () {
      check(_TransactNamedPipe).isA<Function>();
    });
    test('TransmitCommChar can be instantiated', () {
      check(_TransmitCommChar).isA<Function>();
    });
    test('UnlockFile can be instantiated', () {
      check(_UnlockFile).isA<Function>();
    });
    test('UnlockFileEx can be instantiated', () {
      check(_UnlockFileEx).isA<Function>();
    });
    test('UpdateProcThreadAttribute can be instantiated', () {
      check(_UpdateProcThreadAttribute).isA<Function>();
    });
    test('UpdateResource can be instantiated', () {
      check(_UpdateResource).isA<Function>();
    });
    test('VerifyVersionInfo can be instantiated', () {
      check(_VerifyVersionInfo).isA<Function>();
    });
    test('VerLanguageName can be instantiated', () {
      check(_VerLanguageName).isA<Function>();
    });
    test('VerSetConditionMask can be instantiated', () {
      check(_VerSetConditionMask).isA<Function>();
    });
    test('VirtualAlloc can be instantiated', () {
      check(_VirtualAlloc).isA<Function>();
    });
    test('VirtualAllocEx can be instantiated', () {
      check(_VirtualAllocEx).isA<Function>();
    });
    test('VirtualFree can be instantiated', () {
      check(_VirtualFree).isA<Function>();
    });
    test('VirtualFreeEx can be instantiated', () {
      check(_VirtualFreeEx).isA<Function>();
    });
    test('VirtualLock can be instantiated', () {
      check(_VirtualLock).isA<Function>();
    });
    test('VirtualProtect can be instantiated', () {
      check(_VirtualProtect).isA<Function>();
    });
    test('VirtualProtectEx can be instantiated', () {
      check(_VirtualProtectEx).isA<Function>();
    });
    test('VirtualQuery can be instantiated', () {
      check(_VirtualQuery).isA<Function>();
    });
    test('VirtualQueryEx can be instantiated', () {
      check(_VirtualQueryEx).isA<Function>();
    });
    test('VirtualUnlock can be instantiated', () {
      check(_VirtualUnlock).isA<Function>();
    });
    test('WaitCommEvent can be instantiated', () {
      check(_WaitCommEvent).isA<Function>();
    });
    test('WaitForMultipleObjects can be instantiated', () {
      check(_WaitForMultipleObjects).isA<Function>();
    });
    test('WaitForSingleObject can be instantiated', () {
      check(_WaitForSingleObject).isA<Function>();
    });
    test('WideCharToMultiByte can be instantiated', () {
      check(_WideCharToMultiByte).isA<Function>();
    });
    test('Wow64SuspendThread can be instantiated', () {
      check(_Wow64SuspendThread).isA<Function>();
    });
    test('WriteConsole can be instantiated', () {
      check(_WriteConsole).isA<Function>();
    });
    test('WriteFile can be instantiated', () {
      check(_WriteFile).isA<Function>();
    });
    test('WriteFileEx can be instantiated', () {
      check(_WriteFileEx).isA<Function>();
    });
    test('WriteFileGather can be instantiated', () {
      check(_WriteFileGather).isA<Function>();
    });
    test('WriteProcessMemory can be instantiated', () {
      check(_WriteProcessMemory).isA<Function>();
    });
  });
}

final _kernel32 = DynamicLibrary.open('kernel32.dll');

final _ActivateActCtx = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<IntPtr>),
      int Function(Pointer, Pointer<IntPtr>)
    >('ActivateActCtx');

final _AddDllDirectory = _kernel32
    .lookupFunction<
      Pointer Function(Pointer<Utf16>),
      Pointer Function(Pointer<Utf16>)
    >('AddDllDirectory');

final _AddRefActCtx = _kernel32
    .lookupFunction<Void Function(Pointer), void Function(Pointer)>(
      'AddRefActCtx',
    );

final _AllocConsole = _kernel32
    .lookupFunction<Int32 Function(), int Function()>('AllocConsole');

final _AreFileApisANSI = _kernel32
    .lookupFunction<Int32 Function(), int Function()>('AreFileApisANSI');

final _AssignProcessToJobObject = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer),
      int Function(Pointer, Pointer)
    >('AssignProcessToJobObject');

final _AttachConsole = _kernel32
    .lookupFunction<Int32 Function(Uint32), int Function(int)>('AttachConsole');

final _Beep = _kernel32
    .lookupFunction<Int32 Function(Uint32, Uint32), int Function(int, int)>(
      'Beep',
    );

final _BeginUpdateResource = _kernel32
    .lookupFunction<
      Pointer Function(Pointer<Utf16>, Int32),
      Pointer Function(Pointer<Utf16>, int)
    >('BeginUpdateResourceW');

final _BuildCommDCB = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<DCB>),
      int Function(Pointer<Utf16>, Pointer<DCB>)
    >('BuildCommDCBW');

final _BuildCommDCBAndTimeouts = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<DCB>, Pointer<COMMTIMEOUTS>),
      int Function(Pointer<Utf16>, Pointer<DCB>, Pointer<COMMTIMEOUTS>)
    >('BuildCommDCBAndTimeoutsW');

final _CallNamedPipe = _kernel32
    .lookupFunction<
      Int32 Function(
        Pointer<Utf16>,
        Pointer,
        Uint32,
        Pointer,
        Uint32,
        Pointer<Uint32>,
        Uint32,
      ),
      int Function(
        Pointer<Utf16>,
        Pointer,
        int,
        Pointer,
        int,
        Pointer<Uint32>,
        int,
      )
    >('CallNamedPipeW');

final _CancelIo = _kernel32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>('CancelIo');

final _CancelIoEx = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<OVERLAPPED>),
      int Function(Pointer, Pointer<OVERLAPPED>)
    >('CancelIoEx');

final _CancelSynchronousIo = _kernel32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'CancelSynchronousIo',
    );

final _CheckRemoteDebuggerPresent = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Int32>),
      int Function(Pointer, Pointer<Int32>)
    >('CheckRemoteDebuggerPresent');

final _ClearCommBreak = _kernel32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'ClearCommBreak',
    );

final _ClearCommError = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Uint32>, Pointer<COMSTAT>),
      int Function(Pointer, Pointer<Uint32>, Pointer<COMSTAT>)
    >('ClearCommError');

final _CloseHandle = _kernel32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'CloseHandle',
    );

final _ClosePseudoConsole = _kernel32
    .lookupFunction<Void Function(IntPtr), void Function(int)>(
      'ClosePseudoConsole',
    );

final _CommConfigDialog = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer, Pointer<COMMCONFIG>),
      int Function(Pointer<Utf16>, Pointer, Pointer<COMMCONFIG>)
    >('CommConfigDialogW');

final _ConnectNamedPipe = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<OVERLAPPED>),
      int Function(Pointer, Pointer<OVERLAPPED>)
    >('ConnectNamedPipe');

final _ContinueDebugEvent = _kernel32
    .lookupFunction<
      Int32 Function(Uint32, Uint32, Int32),
      int Function(int, int, int)
    >('ContinueDebugEvent');

final _CopyFile = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<Utf16>, Int32),
      int Function(Pointer<Utf16>, Pointer<Utf16>, int)
    >('CopyFileW');

final _CopyFileEx = _kernel32
    .lookupFunction<
      Int32 Function(
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer<NativeFunction<LPPROGRESS_ROUTINE>>,
        Pointer,
        Pointer<Int32>,
        Uint32,
      ),
      int Function(
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer<NativeFunction<LPPROGRESS_ROUTINE>>,
        Pointer,
        Pointer<Int32>,
        int,
      )
    >('CopyFileExW');

final _CreateActCtx = _kernel32
    .lookupFunction<
      Pointer Function(Pointer<ACTCTX>),
      Pointer Function(Pointer<ACTCTX>)
    >('CreateActCtxW');

final _CreateConsoleScreenBuffer = _kernel32
    .lookupFunction<
      Pointer Function(
        Uint32,
        Uint32,
        Pointer<SECURITY_ATTRIBUTES>,
        Uint32,
        Pointer,
      ),
      Pointer Function(int, int, Pointer<SECURITY_ATTRIBUTES>, int, Pointer)
    >('CreateConsoleScreenBuffer');

final _CreateDirectory = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<SECURITY_ATTRIBUTES>),
      int Function(Pointer<Utf16>, Pointer<SECURITY_ATTRIBUTES>)
    >('CreateDirectoryW');

final _CreateEvent = _kernel32
    .lookupFunction<
      Pointer Function(
        Pointer<SECURITY_ATTRIBUTES>,
        Int32,
        Int32,
        Pointer<Utf16>,
      ),
      Pointer Function(Pointer<SECURITY_ATTRIBUTES>, int, int, Pointer<Utf16>)
    >('CreateEventW');

final _CreateEventEx = _kernel32
    .lookupFunction<
      Pointer Function(
        Pointer<SECURITY_ATTRIBUTES>,
        Pointer<Utf16>,
        Uint32,
        Uint32,
      ),
      Pointer Function(Pointer<SECURITY_ATTRIBUTES>, Pointer<Utf16>, int, int)
    >('CreateEventExW');

final _CreateFile = _kernel32
    .lookupFunction<
      Pointer Function(
        Pointer<Utf16>,
        Uint32,
        Uint32,
        Pointer<SECURITY_ATTRIBUTES>,
        Uint32,
        Uint32,
        Pointer,
      ),
      Pointer Function(
        Pointer<Utf16>,
        int,
        int,
        Pointer<SECURITY_ATTRIBUTES>,
        int,
        int,
        Pointer,
      )
    >('CreateFileW');

final _CreateFile2 = _kernel32
    .lookupFunction<
      Pointer Function(
        Pointer<Utf16>,
        Uint32,
        Uint32,
        Uint32,
        Pointer<CREATEFILE2_EXTENDED_PARAMETERS>,
      ),
      Pointer Function(
        Pointer<Utf16>,
        int,
        int,
        int,
        Pointer<CREATEFILE2_EXTENDED_PARAMETERS>,
      )
    >('CreateFile2');

final _CreateIoCompletionPort = _kernel32
    .lookupFunction<
      Pointer Function(Pointer, Pointer, IntPtr, Uint32),
      Pointer Function(Pointer, Pointer, int, int)
    >('CreateIoCompletionPort');

final _CreateJobObject = _kernel32
    .lookupFunction<
      Pointer Function(Pointer<SECURITY_ATTRIBUTES>, Pointer<Utf16>),
      Pointer Function(Pointer<SECURITY_ATTRIBUTES>, Pointer<Utf16>)
    >('CreateJobObjectW');

final _CreateNamedPipe = _kernel32
    .lookupFunction<
      Pointer Function(
        Pointer<Utf16>,
        Uint32,
        Uint32,
        Uint32,
        Uint32,
        Uint32,
        Uint32,
        Pointer<SECURITY_ATTRIBUTES>,
      ),
      Pointer Function(
        Pointer<Utf16>,
        int,
        int,
        int,
        int,
        int,
        int,
        Pointer<SECURITY_ATTRIBUTES>,
      )
    >('CreateNamedPipeW');

final _CreatePipe = _kernel32
    .lookupFunction<
      Int32 Function(
        Pointer<Pointer>,
        Pointer<Pointer>,
        Pointer<SECURITY_ATTRIBUTES>,
        Uint32,
      ),
      int Function(
        Pointer<Pointer>,
        Pointer<Pointer>,
        Pointer<SECURITY_ATTRIBUTES>,
        int,
      )
    >('CreatePipe');

final _CreateProcess = _kernel32
    .lookupFunction<
      Int32 Function(
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer<SECURITY_ATTRIBUTES>,
        Pointer<SECURITY_ATTRIBUTES>,
        Int32,
        Uint32,
        Pointer,
        Pointer<Utf16>,
        Pointer<STARTUPINFO>,
        Pointer<PROCESS_INFORMATION>,
      ),
      int Function(
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer<SECURITY_ATTRIBUTES>,
        Pointer<SECURITY_ATTRIBUTES>,
        int,
        int,
        Pointer,
        Pointer<Utf16>,
        Pointer<STARTUPINFO>,
        Pointer<PROCESS_INFORMATION>,
      )
    >('CreateProcessW');

final _CreatePseudoConsole = _kernel32
    .lookupFunction<
      Int32 Function(COORD, Pointer, Pointer, Uint32, Pointer<IntPtr>),
      int Function(COORD, Pointer, Pointer, int, Pointer<IntPtr>)
    >('CreatePseudoConsole');

final _CreateRemoteThread = _kernel32
    .lookupFunction<
      Pointer Function(
        Pointer,
        Pointer<SECURITY_ATTRIBUTES>,
        IntPtr,
        Pointer<NativeFunction<LPTHREAD_START_ROUTINE>>,
        Pointer,
        Uint32,
        Pointer<Uint32>,
      ),
      Pointer Function(
        Pointer,
        Pointer<SECURITY_ATTRIBUTES>,
        int,
        Pointer<NativeFunction<LPTHREAD_START_ROUTINE>>,
        Pointer,
        int,
        Pointer<Uint32>,
      )
    >('CreateRemoteThread');

final _CreateRemoteThreadEx = _kernel32
    .lookupFunction<
      Pointer Function(
        Pointer,
        Pointer<SECURITY_ATTRIBUTES>,
        IntPtr,
        Pointer<NativeFunction<LPTHREAD_START_ROUTINE>>,
        Pointer,
        Uint32,
        Pointer,
        Pointer<Uint32>,
      ),
      Pointer Function(
        Pointer,
        Pointer<SECURITY_ATTRIBUTES>,
        int,
        Pointer<NativeFunction<LPTHREAD_START_ROUTINE>>,
        Pointer,
        int,
        Pointer,
        Pointer<Uint32>,
      )
    >('CreateRemoteThreadEx');

final _CreateSymbolicLink = _kernel32
    .lookupFunction<
      Uint8 Function(Pointer<Utf16>, Pointer<Utf16>, Uint32),
      int Function(Pointer<Utf16>, Pointer<Utf16>, int)
    >('CreateSymbolicLinkW');

final _CreateThread = _kernel32
    .lookupFunction<
      Pointer Function(
        Pointer<SECURITY_ATTRIBUTES>,
        IntPtr,
        Pointer<NativeFunction<LPTHREAD_START_ROUTINE>>,
        Pointer,
        Uint32,
        Pointer<Uint32>,
      ),
      Pointer Function(
        Pointer<SECURITY_ATTRIBUTES>,
        int,
        Pointer<NativeFunction<LPTHREAD_START_ROUTINE>>,
        Pointer,
        int,
        Pointer<Uint32>,
      )
    >('CreateThread');

final _DeactivateActCtx = _kernel32
    .lookupFunction<Int32 Function(Uint32, IntPtr), int Function(int, int)>(
      'DeactivateActCtx',
    );

final _DebugBreak = _kernel32.lookupFunction<Void Function(), void Function()>(
  'DebugBreak',
);

final _DebugBreakProcess = _kernel32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'DebugBreakProcess',
    );

final _DebugSetProcessKillOnExit = _kernel32
    .lookupFunction<Int32 Function(Int32), int Function(int)>(
      'DebugSetProcessKillOnExit',
    );

final _DefineDosDevice = _kernel32
    .lookupFunction<
      Int32 Function(Uint32, Pointer<Utf16>, Pointer<Utf16>),
      int Function(int, Pointer<Utf16>, Pointer<Utf16>)
    >('DefineDosDeviceW');

final _DeleteFile = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>),
      int Function(Pointer<Utf16>)
    >('DeleteFileW');

final _DeleteProcThreadAttributeList = _kernel32
    .lookupFunction<Void Function(Pointer), void Function(Pointer)>(
      'DeleteProcThreadAttributeList',
    );

final _DeleteVolumeMountPoint = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>),
      int Function(Pointer<Utf16>)
    >('DeleteVolumeMountPointW');

final _DeviceIoControl = _kernel32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Uint32,
        Pointer,
        Uint32,
        Pointer,
        Uint32,
        Pointer<Uint32>,
        Pointer<OVERLAPPED>,
      ),
      int Function(
        Pointer,
        int,
        Pointer,
        int,
        Pointer,
        int,
        Pointer<Uint32>,
        Pointer<OVERLAPPED>,
      )
    >('DeviceIoControl');

final _DisableThreadLibraryCalls = _kernel32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'DisableThreadLibraryCalls',
    );

final _DisconnectNamedPipe = _kernel32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'DisconnectNamedPipe',
    );

final _DnsHostnameToComputerName = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<Utf16>, Pointer<Uint32>),
      int Function(Pointer<Utf16>, Pointer<Utf16>, Pointer<Uint32>)
    >('DnsHostnameToComputerNameW');

final _DosDateTimeToFileTime = _kernel32
    .lookupFunction<
      Int32 Function(Uint16, Uint16, Pointer<FILETIME>),
      int Function(int, int, Pointer<FILETIME>)
    >('DosDateTimeToFileTime');

final _DuplicateHandle = _kernel32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Pointer,
        Pointer,
        Pointer<Pointer>,
        Uint32,
        Int32,
        Uint32,
      ),
      int Function(Pointer, Pointer, Pointer, Pointer<Pointer>, int, int, int)
    >('DuplicateHandle');

final _EndUpdateResource = _kernel32
    .lookupFunction<Int32 Function(Pointer, Int32), int Function(Pointer, int)>(
      'EndUpdateResourceW',
    );

final _EnumResourceNames = _kernel32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Pointer<Utf16>,
        Pointer<NativeFunction<ENUMRESNAMEPROC>>,
        IntPtr,
      ),
      int Function(
        Pointer,
        Pointer<Utf16>,
        Pointer<NativeFunction<ENUMRESNAMEPROC>>,
        int,
      )
    >('EnumResourceNamesW');

final _EnumResourceTypes = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<NativeFunction<ENUMRESTYPEPROC>>, IntPtr),
      int Function(Pointer, Pointer<NativeFunction<ENUMRESTYPEPROC>>, int)
    >('EnumResourceTypesW');

final _EnumSystemFirmwareTables = _kernel32
    .lookupFunction<
      Uint32 Function(Uint32, Pointer<Uint8>, Uint32),
      int Function(int, Pointer<Uint8>, int)
    >('EnumSystemFirmwareTables');

final _EscapeCommFunction = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Uint32),
      int Function(Pointer, int)
    >('EscapeCommFunction');

final _ExitProcess = _kernel32
    .lookupFunction<Void Function(Uint32), void Function(int)>('ExitProcess');

final _ExitThread = _kernel32
    .lookupFunction<Void Function(Uint32), void Function(int)>('ExitThread');

final _FileTimeToDosDateTime = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<FILETIME>, Pointer<Uint16>, Pointer<Uint16>),
      int Function(Pointer<FILETIME>, Pointer<Uint16>, Pointer<Uint16>)
    >('FileTimeToDosDateTime');

final _FileTimeToSystemTime = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<FILETIME>, Pointer<SYSTEMTIME>),
      int Function(Pointer<FILETIME>, Pointer<SYSTEMTIME>)
    >('FileTimeToSystemTime');

final _FillConsoleOutputAttribute = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Uint16, Uint32, COORD, Pointer<Uint32>),
      int Function(Pointer, int, int, COORD, Pointer<Uint32>)
    >('FillConsoleOutputAttribute');

final _FillConsoleOutputCharacter = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Uint16, Uint32, COORD, Pointer<Uint32>),
      int Function(Pointer, int, int, COORD, Pointer<Uint32>)
    >('FillConsoleOutputCharacterW');

final _FindClose = _kernel32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'FindClose',
    );

final _FindCloseChangeNotification = _kernel32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'FindCloseChangeNotification',
    );

final _FindFirstChangeNotification = _kernel32
    .lookupFunction<
      Pointer Function(Pointer<Utf16>, Int32, Uint32),
      Pointer Function(Pointer<Utf16>, int, int)
    >('FindFirstChangeNotificationW');

final _FindFirstFile = _kernel32
    .lookupFunction<
      Pointer Function(Pointer<Utf16>, Pointer<WIN32_FIND_DATA>),
      Pointer Function(Pointer<Utf16>, Pointer<WIN32_FIND_DATA>)
    >('FindFirstFileW');

final _FindFirstFileEx = _kernel32
    .lookupFunction<
      Pointer Function(Pointer<Utf16>, Int32, Pointer, Int32, Pointer, Uint32),
      Pointer Function(Pointer<Utf16>, int, Pointer, int, Pointer, int)
    >('FindFirstFileExW');

final _FindFirstFileName = _kernel32
    .lookupFunction<
      Pointer Function(Pointer<Utf16>, Uint32, Pointer<Uint32>, Pointer<Utf16>),
      Pointer Function(Pointer<Utf16>, int, Pointer<Uint32>, Pointer<Utf16>)
    >('FindFirstFileNameW');

final _FindFirstStream = _kernel32
    .lookupFunction<
      Pointer Function(Pointer<Utf16>, Int32, Pointer, Uint32),
      Pointer Function(Pointer<Utf16>, int, Pointer, int)
    >('FindFirstStreamW');

final _FindFirstVolume = _kernel32
    .lookupFunction<
      Pointer Function(Pointer<Utf16>, Uint32),
      Pointer Function(Pointer<Utf16>, int)
    >('FindFirstVolumeW');

final _FindNextChangeNotification = _kernel32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'FindNextChangeNotification',
    );

final _FindNextFile = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<WIN32_FIND_DATA>),
      int Function(Pointer, Pointer<WIN32_FIND_DATA>)
    >('FindNextFileW');

final _FindNextFileName = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Uint32>, Pointer<Utf16>),
      int Function(Pointer, Pointer<Uint32>, Pointer<Utf16>)
    >('FindNextFileNameW');

final _FindNextStream = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer),
      int Function(Pointer, Pointer)
    >('FindNextStreamW');

final _FindNextVolume = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Utf16>, Uint32),
      int Function(Pointer, Pointer<Utf16>, int)
    >('FindNextVolumeW');

final _FindPackagesByPackageFamily = _kernel32
    .lookupFunction<
      Uint32 Function(
        Pointer<Utf16>,
        Uint32,
        Pointer<Uint32>,
        Pointer<Pointer<Utf16>>,
        Pointer<Uint32>,
        Pointer<Utf16>,
        Pointer<Uint32>,
      ),
      int Function(
        Pointer<Utf16>,
        int,
        Pointer<Uint32>,
        Pointer<Pointer<Utf16>>,
        Pointer<Uint32>,
        Pointer<Utf16>,
        Pointer<Uint32>,
      )
    >('FindPackagesByPackageFamily');

final _FindResource = _kernel32
    .lookupFunction<
      Pointer Function(Pointer, Pointer<Utf16>, Pointer<Utf16>),
      Pointer Function(Pointer, Pointer<Utf16>, Pointer<Utf16>)
    >('FindResourceW');

final _FindResourceEx = _kernel32
    .lookupFunction<
      Pointer Function(Pointer, Pointer<Utf16>, Pointer<Utf16>, Uint16),
      Pointer Function(Pointer, Pointer<Utf16>, Pointer<Utf16>, int)
    >('FindResourceExW');

final _FindStringOrdinal = _kernel32
    .lookupFunction<
      Int32 Function(
        Uint32,
        Pointer<Utf16>,
        Int32,
        Pointer<Utf16>,
        Int32,
        Int32,
      ),
      int Function(int, Pointer<Utf16>, int, Pointer<Utf16>, int, int)
    >('FindStringOrdinal');

final _FindVolumeClose = _kernel32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'FindVolumeClose',
    );

final _FlushConsoleInputBuffer = _kernel32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'FlushConsoleInputBuffer',
    );

final _FlushFileBuffers = _kernel32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'FlushFileBuffers',
    );

final _FormatMessage = _kernel32
    .lookupFunction<
      Uint32 Function(
        Uint32,
        Pointer,
        Uint32,
        Uint32,
        Pointer<Utf16>,
        Uint32,
        Pointer<Pointer<Int8>>,
      ),
      int Function(
        int,
        Pointer,
        int,
        int,
        Pointer<Utf16>,
        int,
        Pointer<Pointer<Int8>>,
      )
    >('FormatMessageW');

final _FreeConsole = _kernel32.lookupFunction<Int32 Function(), int Function()>(
  'FreeConsole',
);

final _FreeLibrary = _kernel32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'FreeLibrary',
    );

final _FreeLibraryAndExitThread = _kernel32
    .lookupFunction<
      Void Function(Pointer, Uint32),
      void Function(Pointer, int)
    >('FreeLibraryAndExitThread');

final _FreeMemoryJobObject = _kernel32
    .lookupFunction<Void Function(Pointer), void Function(Pointer)>(
      'FreeMemoryJobObject',
    );

final _GetActiveProcessorCount = _kernel32
    .lookupFunction<Uint32 Function(Uint16), int Function(int)>(
      'GetActiveProcessorCount',
    );

final _GetActiveProcessorGroupCount = _kernel32
    .lookupFunction<Uint16 Function(), int Function()>(
      'GetActiveProcessorGroupCount',
    );

final _GetBinaryType = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<Uint32>),
      int Function(Pointer<Utf16>, Pointer<Uint32>)
    >('GetBinaryTypeW');

final _GetCommandLine = _kernel32
    .lookupFunction<Pointer<Utf16> Function(), Pointer<Utf16> Function()>(
      'GetCommandLineW',
    );

final _GetCommConfig = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<COMMCONFIG>, Pointer<Uint32>),
      int Function(Pointer, Pointer<COMMCONFIG>, Pointer<Uint32>)
    >('GetCommConfig');

final _GetCommMask = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Uint32>),
      int Function(Pointer, Pointer<Uint32>)
    >('GetCommMask');

final _GetCommModemStatus = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Uint32>),
      int Function(Pointer, Pointer<Uint32>)
    >('GetCommModemStatus');

final _GetCommProperties = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<COMMPROP>),
      int Function(Pointer, Pointer<COMMPROP>)
    >('GetCommProperties');

final _GetCommState = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<DCB>),
      int Function(Pointer, Pointer<DCB>)
    >('GetCommState');

final _GetCommTimeouts = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<COMMTIMEOUTS>),
      int Function(Pointer, Pointer<COMMTIMEOUTS>)
    >('GetCommTimeouts');

final _GetCompressedFileSize = _kernel32
    .lookupFunction<
      Uint32 Function(Pointer<Utf16>, Pointer<Uint32>),
      int Function(Pointer<Utf16>, Pointer<Uint32>)
    >('GetCompressedFileSizeW');

final _GetComputerName = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<Uint32>),
      int Function(Pointer<Utf16>, Pointer<Uint32>)
    >('GetComputerNameW');

final _GetComputerNameEx = _kernel32
    .lookupFunction<
      Int32 Function(Int32, Pointer<Utf16>, Pointer<Uint32>),
      int Function(int, Pointer<Utf16>, Pointer<Uint32>)
    >('GetComputerNameExW');

final _GetConsoleCP = _kernel32
    .lookupFunction<Uint32 Function(), int Function()>('GetConsoleCP');

final _GetConsoleCursorInfo = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<CONSOLE_CURSOR_INFO>),
      int Function(Pointer, Pointer<CONSOLE_CURSOR_INFO>)
    >('GetConsoleCursorInfo');

final _GetConsoleMode = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Uint32>),
      int Function(Pointer, Pointer<Uint32>)
    >('GetConsoleMode');

final _GetConsoleOutputCP = _kernel32
    .lookupFunction<Uint32 Function(), int Function()>('GetConsoleOutputCP');

final _GetConsoleScreenBufferInfo = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<CONSOLE_SCREEN_BUFFER_INFO>),
      int Function(Pointer, Pointer<CONSOLE_SCREEN_BUFFER_INFO>)
    >('GetConsoleScreenBufferInfo');

final _GetConsoleSelectionInfo = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<CONSOLE_SELECTION_INFO>),
      int Function(Pointer<CONSOLE_SELECTION_INFO>)
    >('GetConsoleSelectionInfo');

final _GetConsoleTitle = _kernel32
    .lookupFunction<
      Uint32 Function(Pointer<Utf16>, Uint32),
      int Function(Pointer<Utf16>, int)
    >('GetConsoleTitleW');

final _GetConsoleWindow = _kernel32
    .lookupFunction<Pointer Function(), Pointer Function()>('GetConsoleWindow');

final _GetCurrentActCtx = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Pointer>),
      int Function(Pointer<Pointer>)
    >('GetCurrentActCtx');

final _GetCurrentDirectory = _kernel32
    .lookupFunction<
      Uint32 Function(Uint32, Pointer<Utf16>),
      int Function(int, Pointer<Utf16>)
    >('GetCurrentDirectoryW');

final _GetCurrentPackageFullName = _kernel32
    .lookupFunction<
      Uint32 Function(Pointer<Uint32>, Pointer<Utf16>),
      int Function(Pointer<Uint32>, Pointer<Utf16>)
    >('GetCurrentPackageFullName');

final _GetCurrentProcess = _kernel32
    .lookupFunction<Pointer Function(), Pointer Function()>(
      'GetCurrentProcess',
    );

final _GetCurrentProcessId = _kernel32
    .lookupFunction<Uint32 Function(), int Function()>('GetCurrentProcessId');

final _GetCurrentProcessorNumber = _kernel32
    .lookupFunction<Uint32 Function(), int Function()>(
      'GetCurrentProcessorNumber',
    );

final _GetCurrentThread = _kernel32
    .lookupFunction<Pointer Function(), Pointer Function()>('GetCurrentThread');

final _GetCurrentThreadId = _kernel32
    .lookupFunction<Uint32 Function(), int Function()>('GetCurrentThreadId');

final _GetDefaultCommConfig = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<COMMCONFIG>, Pointer<Uint32>),
      int Function(Pointer<Utf16>, Pointer<COMMCONFIG>, Pointer<Uint32>)
    >('GetDefaultCommConfigW');

final _GetDiskFreeSpace = _kernel32
    .lookupFunction<
      Int32 Function(
        Pointer<Utf16>,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Uint32>,
      ),
      int Function(
        Pointer<Utf16>,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Uint32>,
      )
    >('GetDiskFreeSpaceW');

final _GetDiskFreeSpaceEx = _kernel32
    .lookupFunction<
      Int32 Function(
        Pointer<Utf16>,
        Pointer<Uint64>,
        Pointer<Uint64>,
        Pointer<Uint64>,
      ),
      int Function(
        Pointer<Utf16>,
        Pointer<Uint64>,
        Pointer<Uint64>,
        Pointer<Uint64>,
      )
    >('GetDiskFreeSpaceExW');

final _GetDllDirectory = _kernel32
    .lookupFunction<
      Uint32 Function(Uint32, Pointer<Utf16>),
      int Function(int, Pointer<Utf16>)
    >('GetDllDirectoryW');

final _GetDriveType = _kernel32
    .lookupFunction<
      Uint32 Function(Pointer<Utf16>),
      int Function(Pointer<Utf16>)
    >('GetDriveTypeW');

final _GetEnvironmentVariable = _kernel32
    .lookupFunction<
      Uint32 Function(Pointer<Utf16>, Pointer<Utf16>, Uint32),
      int Function(Pointer<Utf16>, Pointer<Utf16>, int)
    >('GetEnvironmentVariableW');

final _GetExitCodeProcess = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Uint32>),
      int Function(Pointer, Pointer<Uint32>)
    >('GetExitCodeProcess');

final _GetFileAttributes = _kernel32
    .lookupFunction<
      Uint32 Function(Pointer<Utf16>),
      int Function(Pointer<Utf16>)
    >('GetFileAttributesW');

final _GetFileAttributesEx = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Int32, Pointer),
      int Function(Pointer<Utf16>, int, Pointer)
    >('GetFileAttributesExW');

final _GetFileInformationByHandle = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<BY_HANDLE_FILE_INFORMATION>),
      int Function(Pointer, Pointer<BY_HANDLE_FILE_INFORMATION>)
    >('GetFileInformationByHandle');

final _GetFileSize = _kernel32
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Uint32>),
      int Function(Pointer, Pointer<Uint32>)
    >('GetFileSize');

final _GetFileSizeEx = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Int64>),
      int Function(Pointer, Pointer<Int64>)
    >('GetFileSizeEx');

final _GetFileType = _kernel32
    .lookupFunction<Uint32 Function(Pointer), int Function(Pointer)>(
      'GetFileType',
    );

final _GetFinalPathNameByHandle = _kernel32
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Utf16>, Uint32, Uint32),
      int Function(Pointer, Pointer<Utf16>, int, int)
    >('GetFinalPathNameByHandleW');

final _GetFullPathName = _kernel32
    .lookupFunction<
      Uint32 Function(
        Pointer<Utf16>,
        Uint32,
        Pointer<Utf16>,
        Pointer<Pointer<Utf16>>,
      ),
      int Function(Pointer<Utf16>, int, Pointer<Utf16>, Pointer<Pointer<Utf16>>)
    >('GetFullPathNameW');

final _GetHandleInformation = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Uint32>),
      int Function(Pointer, Pointer<Uint32>)
    >('GetHandleInformation');

final _GetLargestConsoleWindowSize = _kernel32
    .lookupFunction<COORD Function(Pointer), COORD Function(Pointer)>(
      'GetLargestConsoleWindowSize',
    );

final _GetLocaleInfoEx = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Uint32, Pointer<Utf16>, Int32),
      int Function(Pointer<Utf16>, int, Pointer<Utf16>, int)
    >('GetLocaleInfoEx');

final _GetLocalTime = _kernel32
    .lookupFunction<
      Void Function(Pointer<SYSTEMTIME>),
      void Function(Pointer<SYSTEMTIME>)
    >('GetLocalTime');

final _GetLogicalDrives = _kernel32
    .lookupFunction<Uint32 Function(), int Function()>('GetLogicalDrives');

final _GetLogicalDriveStrings = _kernel32
    .lookupFunction<
      Uint32 Function(Uint32, Pointer<Utf16>),
      int Function(int, Pointer<Utf16>)
    >('GetLogicalDriveStringsW');

final _GetLogicalProcessorInformation = _kernel32
    .lookupFunction<
      Int32 Function(
        Pointer<SYSTEM_LOGICAL_PROCESSOR_INFORMATION>,
        Pointer<Uint32>,
      ),
      int Function(
        Pointer<SYSTEM_LOGICAL_PROCESSOR_INFORMATION>,
        Pointer<Uint32>,
      )
    >('GetLogicalProcessorInformation');

final _GetLongPathName = _kernel32
    .lookupFunction<
      Uint32 Function(Pointer<Utf16>, Pointer<Utf16>, Uint32),
      int Function(Pointer<Utf16>, Pointer<Utf16>, int)
    >('GetLongPathNameW');

final _GetMachineTypeAttributes = _kernel32
    .lookupFunction<
      Int32 Function(Uint16, Pointer<Int32>),
      int Function(int, Pointer<Int32>)
    >('GetMachineTypeAttributes');

final _GetMaximumProcessorCount = _kernel32
    .lookupFunction<Uint32 Function(Uint16), int Function(int)>(
      'GetMaximumProcessorCount',
    );

final _GetMaximumProcessorGroupCount = _kernel32
    .lookupFunction<Uint16 Function(), int Function()>(
      'GetMaximumProcessorGroupCount',
    );

final _GetModuleFileName = _kernel32
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Utf16>, Uint32),
      int Function(Pointer, Pointer<Utf16>, int)
    >('GetModuleFileNameW');

final _GetModuleHandle = _kernel32
    .lookupFunction<
      Pointer Function(Pointer<Utf16>),
      Pointer Function(Pointer<Utf16>)
    >('GetModuleHandleW');

final _GetModuleHandleEx = _kernel32
    .lookupFunction<
      Int32 Function(Uint32, Pointer<Utf16>, Pointer<Pointer>),
      int Function(int, Pointer<Utf16>, Pointer<Pointer>)
    >('GetModuleHandleExW');

final _GetNamedPipeClientComputerName = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Utf16>, Uint32),
      int Function(Pointer, Pointer<Utf16>, int)
    >('GetNamedPipeClientComputerNameW');

final _GetNamedPipeClientProcessId = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Uint32>),
      int Function(Pointer, Pointer<Uint32>)
    >('GetNamedPipeClientProcessId');

final _GetNamedPipeClientSessionId = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Uint32>),
      int Function(Pointer, Pointer<Uint32>)
    >('GetNamedPipeClientSessionId');

final _GetNamedPipeHandleState = _kernel32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Utf16>,
        Uint32,
      ),
      int Function(
        Pointer,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Utf16>,
        int,
      )
    >('GetNamedPipeHandleStateW');

final _GetNamedPipeInfo = _kernel32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Uint32>,
      ),
      int Function(
        Pointer,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Uint32>,
      )
    >('GetNamedPipeInfo');

final _GetNativeSystemInfo = _kernel32
    .lookupFunction<
      Void Function(Pointer<SYSTEM_INFO>),
      void Function(Pointer<SYSTEM_INFO>)
    >('GetNativeSystemInfo');

final _GetNumberOfConsoleInputEvents = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Uint32>),
      int Function(Pointer, Pointer<Uint32>)
    >('GetNumberOfConsoleInputEvents');

final _GetOverlappedResult = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<OVERLAPPED>, Pointer<Uint32>, Int32),
      int Function(Pointer, Pointer<OVERLAPPED>, Pointer<Uint32>, int)
    >('GetOverlappedResult');

final _GetOverlappedResultEx = _kernel32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Pointer<OVERLAPPED>,
        Pointer<Uint32>,
        Uint32,
        Int32,
      ),
      int Function(Pointer, Pointer<OVERLAPPED>, Pointer<Uint32>, int, int)
    >('GetOverlappedResultEx');

final _GetPhysicallyInstalledSystemMemory = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Uint64>),
      int Function(Pointer<Uint64>)
    >('GetPhysicallyInstalledSystemMemory');

final _GetProcAddress = _kernel32
    .lookupFunction<
      FARPROC Function(Pointer, Pointer<Utf8>),
      FARPROC Function(Pointer, Pointer<Utf8>)
    >('GetProcAddress');

final _GetProcessHeap = _kernel32
    .lookupFunction<Pointer Function(), Pointer Function()>('GetProcessHeap');

final _GetProcessHeaps = _kernel32
    .lookupFunction<
      Uint32 Function(Uint32, Pointer<Pointer>),
      int Function(int, Pointer<Pointer>)
    >('GetProcessHeaps');

final _GetProcessId = _kernel32
    .lookupFunction<Uint32 Function(Pointer), int Function(Pointer)>(
      'GetProcessId',
    );

final _GetProcessShutdownParameters = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Uint32>, Pointer<Uint32>),
      int Function(Pointer<Uint32>, Pointer<Uint32>)
    >('GetProcessShutdownParameters');

final _GetProcessTimes = _kernel32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Pointer<FILETIME>,
        Pointer<FILETIME>,
        Pointer<FILETIME>,
        Pointer<FILETIME>,
      ),
      int Function(
        Pointer,
        Pointer<FILETIME>,
        Pointer<FILETIME>,
        Pointer<FILETIME>,
        Pointer<FILETIME>,
      )
    >('GetProcessTimes');

final _GetProcessVersion = _kernel32
    .lookupFunction<Uint32 Function(Uint32), int Function(int)>(
      'GetProcessVersion',
    );

final _GetProcessWorkingSetSize = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<IntPtr>, Pointer<IntPtr>),
      int Function(Pointer, Pointer<IntPtr>, Pointer<IntPtr>)
    >('GetProcessWorkingSetSize');

final _GetProductInfo = _kernel32
    .lookupFunction<
      Int32 Function(Uint32, Uint32, Uint32, Uint32, Pointer<Uint32>),
      int Function(int, int, int, int, Pointer<Uint32>)
    >('GetProductInfo');

final _GetQueuedCompletionStatus = _kernel32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Pointer<Uint32>,
        Pointer<IntPtr>,
        Pointer<Pointer<OVERLAPPED>>,
        Uint32,
      ),
      int Function(
        Pointer,
        Pointer<Uint32>,
        Pointer<IntPtr>,
        Pointer<Pointer<OVERLAPPED>>,
        int,
      )
    >('GetQueuedCompletionStatus');

final _GetQueuedCompletionStatusEx = _kernel32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Pointer<OVERLAPPED_ENTRY>,
        Uint32,
        Pointer<Uint32>,
        Uint32,
        Int32,
      ),
      int Function(
        Pointer,
        Pointer<OVERLAPPED_ENTRY>,
        int,
        Pointer<Uint32>,
        int,
        int,
      )
    >('GetQueuedCompletionStatusEx');

final _GetShortPathName = _kernel32
    .lookupFunction<
      Uint32 Function(Pointer<Utf16>, Pointer<Utf16>, Uint32),
      int Function(Pointer<Utf16>, Pointer<Utf16>, int)
    >('GetShortPathNameW');

final _GetStartupInfo = _kernel32
    .lookupFunction<
      Void Function(Pointer<STARTUPINFO>),
      void Function(Pointer<STARTUPINFO>)
    >('GetStartupInfoW');

final _GetStdHandle = _kernel32
    .lookupFunction<Pointer Function(Uint32), Pointer Function(int)>(
      'GetStdHandle',
    );

final _GetSystemDefaultLangID = _kernel32
    .lookupFunction<Uint16 Function(), int Function()>(
      'GetSystemDefaultLangID',
    );

final _GetSystemDefaultLocaleName = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Int32),
      int Function(Pointer<Utf16>, int)
    >('GetSystemDefaultLocaleName');

final _GetSystemDirectory = _kernel32
    .lookupFunction<
      Uint32 Function(Pointer<Utf16>, Uint32),
      int Function(Pointer<Utf16>, int)
    >('GetSystemDirectoryW');

final _GetSystemInfo = _kernel32
    .lookupFunction<
      Void Function(Pointer<SYSTEM_INFO>),
      void Function(Pointer<SYSTEM_INFO>)
    >('GetSystemInfo');

final _GetSystemPowerStatus = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<SYSTEM_POWER_STATUS>),
      int Function(Pointer<SYSTEM_POWER_STATUS>)
    >('GetSystemPowerStatus');

final _GetSystemTime = _kernel32
    .lookupFunction<
      Void Function(Pointer<SYSTEMTIME>),
      void Function(Pointer<SYSTEMTIME>)
    >('GetSystemTime');

final _GetSystemTimeAdjustment = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Uint32>, Pointer<Uint32>, Pointer<Int32>),
      int Function(Pointer<Uint32>, Pointer<Uint32>, Pointer<Int32>)
    >('GetSystemTimeAdjustment');

final _GetSystemTimes = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<FILETIME>, Pointer<FILETIME>, Pointer<FILETIME>),
      int Function(Pointer<FILETIME>, Pointer<FILETIME>, Pointer<FILETIME>)
    >('GetSystemTimes');

final _GetTempFileName = _kernel32
    .lookupFunction<
      Uint32 Function(Pointer<Utf16>, Pointer<Utf16>, Uint32, Pointer<Utf16>),
      int Function(Pointer<Utf16>, Pointer<Utf16>, int, Pointer<Utf16>)
    >('GetTempFileNameW');

final _GetTempPath = _kernel32
    .lookupFunction<
      Uint32 Function(Uint32, Pointer<Utf16>),
      int Function(int, Pointer<Utf16>)
    >('GetTempPathW');

final _GetTempPath2 = _kernel32
    .lookupFunction<
      Uint32 Function(Uint32, Pointer<Utf16>),
      int Function(int, Pointer<Utf16>)
    >('GetTempPath2W');

final _GetThreadId = _kernel32
    .lookupFunction<Uint32 Function(Pointer), int Function(Pointer)>(
      'GetThreadId',
    );

final _GetThreadLocale = _kernel32
    .lookupFunction<Uint32 Function(), int Function()>('GetThreadLocale');

final _GetThreadTimes = _kernel32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Pointer<FILETIME>,
        Pointer<FILETIME>,
        Pointer<FILETIME>,
        Pointer<FILETIME>,
      ),
      int Function(
        Pointer,
        Pointer<FILETIME>,
        Pointer<FILETIME>,
        Pointer<FILETIME>,
        Pointer<FILETIME>,
      )
    >('GetThreadTimes');

final _GetThreadUILanguage = _kernel32
    .lookupFunction<Uint16 Function(), int Function()>('GetThreadUILanguage');

final _GetTickCount = _kernel32
    .lookupFunction<Uint32 Function(), int Function()>('GetTickCount');

final _GetUserDefaultLangID = _kernel32
    .lookupFunction<Uint16 Function(), int Function()>('GetUserDefaultLangID');

final _GetUserDefaultLCID = _kernel32
    .lookupFunction<Uint32 Function(), int Function()>('GetUserDefaultLCID');

final _GetUserDefaultLocaleName = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Int32),
      int Function(Pointer<Utf16>, int)
    >('GetUserDefaultLocaleName');

final _GetVolumeInformation = _kernel32
    .lookupFunction<
      Int32 Function(
        Pointer<Utf16>,
        Pointer<Utf16>,
        Uint32,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Utf16>,
        Uint32,
      ),
      int Function(
        Pointer<Utf16>,
        Pointer<Utf16>,
        int,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Utf16>,
        int,
      )
    >('GetVolumeInformationW');

final _GetVolumeInformationByHandle = _kernel32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Pointer<Utf16>,
        Uint32,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Utf16>,
        Uint32,
      ),
      int Function(
        Pointer,
        Pointer<Utf16>,
        int,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Utf16>,
        int,
      )
    >('GetVolumeInformationByHandleW');

final _GetVolumeNameForVolumeMountPoint = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<Utf16>, Uint32),
      int Function(Pointer<Utf16>, Pointer<Utf16>, int)
    >('GetVolumeNameForVolumeMountPointW');

final _GetVolumePathName = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<Utf16>, Uint32),
      int Function(Pointer<Utf16>, Pointer<Utf16>, int)
    >('GetVolumePathNameW');

final _GetVolumePathNamesForVolumeName = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<Utf16>, Uint32, Pointer<Uint32>),
      int Function(Pointer<Utf16>, Pointer<Utf16>, int, Pointer<Uint32>)
    >('GetVolumePathNamesForVolumeNameW');

final _GlobalAlloc = _kernel32
    .lookupFunction<
      Pointer Function(Uint32, IntPtr),
      Pointer Function(int, int)
    >('GlobalAlloc');

final _GlobalFree = _kernel32
    .lookupFunction<Pointer Function(Pointer), Pointer Function(Pointer)>(
      'GlobalFree',
    );

final _GlobalLock = _kernel32
    .lookupFunction<Pointer Function(Pointer), Pointer Function(Pointer)>(
      'GlobalLock',
    );

final _GlobalMemoryStatusEx = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<MEMORYSTATUSEX>),
      int Function(Pointer<MEMORYSTATUSEX>)
    >('GlobalMemoryStatusEx');

final _GlobalSize = _kernel32
    .lookupFunction<IntPtr Function(Pointer), int Function(Pointer)>(
      'GlobalSize',
    );

final _GlobalUnlock = _kernel32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'GlobalUnlock',
    );

final _HeapAlloc = _kernel32
    .lookupFunction<
      Pointer Function(Pointer, Uint32, IntPtr),
      Pointer Function(Pointer, int, int)
    >('HeapAlloc');

final _HeapCompact = _kernel32
    .lookupFunction<
      IntPtr Function(Pointer, Uint32),
      int Function(Pointer, int)
    >('HeapCompact');

final _HeapCreate = _kernel32
    .lookupFunction<
      Pointer Function(Uint32, IntPtr, IntPtr),
      Pointer Function(int, int, int)
    >('HeapCreate');

final _HeapDestroy = _kernel32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'HeapDestroy',
    );

final _HeapFree = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Pointer),
      int Function(Pointer, int, Pointer)
    >('HeapFree');

final _HeapLock = _kernel32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>('HeapLock');

final _HeapQueryInformation = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Pointer, IntPtr, Pointer<IntPtr>),
      int Function(Pointer, int, Pointer, int, Pointer<IntPtr>)
    >('HeapQueryInformation');

final _HeapReAlloc = _kernel32
    .lookupFunction<
      Pointer Function(Pointer, Uint32, Pointer, IntPtr),
      Pointer Function(Pointer, int, Pointer, int)
    >('HeapReAlloc');

final _HeapSetInformation = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Pointer, IntPtr),
      int Function(Pointer, int, Pointer, int)
    >('HeapSetInformation');

final _HeapSize = _kernel32
    .lookupFunction<
      IntPtr Function(Pointer, Uint32, Pointer),
      int Function(Pointer, int, Pointer)
    >('HeapSize');

final _HeapUnlock = _kernel32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'HeapUnlock',
    );

final _HeapValidate = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Pointer),
      int Function(Pointer, int, Pointer)
    >('HeapValidate');

final _HeapWalk = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<PROCESS_HEAP_ENTRY>),
      int Function(Pointer, Pointer<PROCESS_HEAP_ENTRY>)
    >('HeapWalk');

final _InitializeProcThreadAttributeList = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Uint32, Pointer<IntPtr>),
      int Function(Pointer, int, int, Pointer<IntPtr>)
    >('InitializeProcThreadAttributeList');

final _IsDebuggerPresent = _kernel32
    .lookupFunction<Int32 Function(), int Function()>('IsDebuggerPresent');

final _IsNativeVhdBoot = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Int32>),
      int Function(Pointer<Int32>)
    >('IsNativeVhdBoot');

final _IsProcessInJob = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer, Pointer<Int32>),
      int Function(Pointer, Pointer, Pointer<Int32>)
    >('IsProcessInJob');

final _IsSystemResumeAutomatic = _kernel32
    .lookupFunction<Int32 Function(), int Function()>(
      'IsSystemResumeAutomatic',
    );

final _IsValidLocaleName = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>),
      int Function(Pointer<Utf16>)
    >('IsValidLocaleName');

final _IsWow64Process2 = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Uint16>, Pointer<Uint16>),
      int Function(Pointer, Pointer<Uint16>, Pointer<Uint16>)
    >('IsWow64Process2');

final _LoadLibrary = _kernel32
    .lookupFunction<
      Pointer Function(Pointer<Utf16>),
      Pointer Function(Pointer<Utf16>)
    >('LoadLibraryW');

final _LoadLibraryEx = _kernel32
    .lookupFunction<
      Pointer Function(Pointer<Utf16>, Pointer, Uint32),
      Pointer Function(Pointer<Utf16>, Pointer, int)
    >('LoadLibraryExW');

final _LoadResource = _kernel32
    .lookupFunction<
      Pointer Function(Pointer, Pointer),
      Pointer Function(Pointer, Pointer)
    >('LoadResource');

final _LocalAlloc = _kernel32
    .lookupFunction<
      Pointer Function(Uint32, IntPtr),
      Pointer Function(int, int)
    >('LocalAlloc');

final _LocalFree = _kernel32
    .lookupFunction<Pointer Function(Pointer), Pointer Function(Pointer)>(
      'LocalFree',
    );

final _LockFile = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Uint32, Uint32, Uint32),
      int Function(Pointer, int, int, int, int)
    >('LockFile');

final _LockFileEx = _kernel32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Uint32,
        Uint32,
        Uint32,
        Uint32,
        Pointer<OVERLAPPED>,
      ),
      int Function(Pointer, int, int, int, int, Pointer<OVERLAPPED>)
    >('LockFileEx');

final _LockResource = _kernel32
    .lookupFunction<Pointer Function(Pointer), Pointer Function(Pointer)>(
      'LockResource',
    );

final _MoveFile = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<Utf16>),
      int Function(Pointer<Utf16>, Pointer<Utf16>)
    >('MoveFileW');

final _MoveFileEx = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<Utf16>, Uint32),
      int Function(Pointer<Utf16>, Pointer<Utf16>, int)
    >('MoveFileExW');

final _OpenEvent = _kernel32
    .lookupFunction<
      Pointer Function(Uint32, Int32, Pointer<Utf16>),
      Pointer Function(int, int, Pointer<Utf16>)
    >('OpenEventW');

final _OpenJobObject = _kernel32
    .lookupFunction<
      Pointer Function(Uint32, Int32, Pointer<Utf16>),
      Pointer Function(int, int, Pointer<Utf16>)
    >('OpenJobObjectW');

final _OpenProcess = _kernel32
    .lookupFunction<
      Pointer Function(Uint32, Int32, Uint32),
      Pointer Function(int, int, int)
    >('OpenProcess');

final _OutputDebugString = _kernel32
    .lookupFunction<
      Void Function(Pointer<Utf16>),
      void Function(Pointer<Utf16>)
    >('OutputDebugStringW');

final _PackageFamilyNameFromFullName = _kernel32
    .lookupFunction<
      Uint32 Function(Pointer<Utf16>, Pointer<Uint32>, Pointer<Utf16>),
      int Function(Pointer<Utf16>, Pointer<Uint32>, Pointer<Utf16>)
    >('PackageFamilyNameFromFullName');

final _PeekConsoleInput = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<INPUT_RECORD>, Uint32, Pointer<Uint32>),
      int Function(Pointer, Pointer<INPUT_RECORD>, int, Pointer<Uint32>)
    >('PeekConsoleInputW');

final _PeekNamedPipe = _kernel32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Pointer,
        Uint32,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Uint32>,
      ),
      int Function(
        Pointer,
        Pointer,
        int,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Uint32>,
      )
    >('PeekNamedPipe');

final _PostQueuedCompletionStatus = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, IntPtr, Pointer<OVERLAPPED>),
      int Function(Pointer, int, int, Pointer<OVERLAPPED>)
    >('PostQueuedCompletionStatus');

final _ProcessIdToSessionId = _kernel32
    .lookupFunction<
      Int32 Function(Uint32, Pointer<Uint32>),
      int Function(int, Pointer<Uint32>)
    >('ProcessIdToSessionId');

final _PurgeComm = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Uint32),
      int Function(Pointer, int)
    >('PurgeComm');

final _QueryDosDevice = _kernel32
    .lookupFunction<
      Uint32 Function(Pointer<Utf16>, Pointer<Utf16>, Uint32),
      int Function(Pointer<Utf16>, Pointer<Utf16>, int)
    >('QueryDosDeviceW');

final _QueryFullProcessImageName = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Pointer<Utf16>, Pointer<Uint32>),
      int Function(Pointer, int, Pointer<Utf16>, Pointer<Uint32>)
    >('QueryFullProcessImageNameW');

final _QueryInformationJobObject = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Pointer, Uint32, Pointer<Uint32>),
      int Function(Pointer, int, Pointer, int, Pointer<Uint32>)
    >('QueryInformationJobObject');

final _QueryIoRateControlInformationJobObject = _kernel32
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Pointer<Utf16>,
        Pointer<Pointer<JOBOBJECT_IO_RATE_CONTROL_INFORMATION>>,
        Pointer<Uint32>,
      ),
      int Function(
        Pointer,
        Pointer<Utf16>,
        Pointer<Pointer<JOBOBJECT_IO_RATE_CONTROL_INFORMATION>>,
        Pointer<Uint32>,
      )
    >('QueryIoRateControlInformationJobObject');

final _QueryPerformanceCounter = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Int64>),
      int Function(Pointer<Int64>)
    >('QueryPerformanceCounter');

final _QueryPerformanceFrequency = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Int64>),
      int Function(Pointer<Int64>)
    >('QueryPerformanceFrequency');

final _ReadConsole = _kernel32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Pointer,
        Uint32,
        Pointer<Uint32>,
        Pointer<CONSOLE_READCONSOLE_CONTROL>,
      ),
      int Function(
        Pointer,
        Pointer,
        int,
        Pointer<Uint32>,
        Pointer<CONSOLE_READCONSOLE_CONTROL>,
      )
    >('ReadConsoleW');

final _ReadConsoleInput = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<INPUT_RECORD>, Uint32, Pointer<Uint32>),
      int Function(Pointer, Pointer<INPUT_RECORD>, int, Pointer<Uint32>)
    >('ReadConsoleInputW');

final _ReadFile = _kernel32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Pointer<Uint8>,
        Uint32,
        Pointer<Uint32>,
        Pointer<OVERLAPPED>,
      ),
      int Function(
        Pointer,
        Pointer<Uint8>,
        int,
        Pointer<Uint32>,
        Pointer<OVERLAPPED>,
      )
    >('ReadFile');

final _ReadFileEx = _kernel32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Pointer<Uint8>,
        Uint32,
        Pointer<OVERLAPPED>,
        Pointer<NativeFunction<LPOVERLAPPED_COMPLETION_ROUTINE>>,
      ),
      int Function(
        Pointer,
        Pointer<Uint8>,
        int,
        Pointer<OVERLAPPED>,
        Pointer<NativeFunction<LPOVERLAPPED_COMPLETION_ROUTINE>>,
      )
    >('ReadFileEx');

final _ReadFileScatter = _kernel32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Pointer<FILE_SEGMENT_ELEMENT>,
        Uint32,
        Pointer<Uint32>,
        Pointer<OVERLAPPED>,
      ),
      int Function(
        Pointer,
        Pointer<FILE_SEGMENT_ELEMENT>,
        int,
        Pointer<Uint32>,
        Pointer<OVERLAPPED>,
      )
    >('ReadFileScatter');

final _ReadProcessMemory = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer, Pointer, IntPtr, Pointer<IntPtr>),
      int Function(Pointer, Pointer, Pointer, int, Pointer<IntPtr>)
    >('ReadProcessMemory');

final _ReleaseActCtx = _kernel32
    .lookupFunction<Void Function(Pointer), void Function(Pointer)>(
      'ReleaseActCtx',
    );

final _RemoveDirectory = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>),
      int Function(Pointer<Utf16>)
    >('RemoveDirectoryW');

final _RemoveDllDirectory = _kernel32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'RemoveDllDirectory',
    );

final _ReOpenFile = _kernel32
    .lookupFunction<
      Pointer Function(Pointer, Uint32, Uint32, Uint32),
      Pointer Function(Pointer, int, int, int)
    >('ReOpenFile');

final _ResetEvent = _kernel32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'ResetEvent',
    );

final _ResizePseudoConsole = _kernel32
    .lookupFunction<Int32 Function(IntPtr, COORD), int Function(int, COORD)>(
      'ResizePseudoConsole',
    );

final _ScrollConsoleScreenBuffer = _kernel32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Pointer<SMALL_RECT>,
        Pointer<SMALL_RECT>,
        COORD,
        Pointer<CHAR_INFO>,
      ),
      int Function(
        Pointer,
        Pointer<SMALL_RECT>,
        Pointer<SMALL_RECT>,
        COORD,
        Pointer<CHAR_INFO>,
      )
    >('ScrollConsoleScreenBufferW');

final _SetCommBreak = _kernel32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'SetCommBreak',
    );

final _SetCommConfig = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<COMMCONFIG>, Uint32),
      int Function(Pointer, Pointer<COMMCONFIG>, int)
    >('SetCommConfig');

final _SetCommMask = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Uint32),
      int Function(Pointer, int)
    >('SetCommMask');

final _SetCommState = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<DCB>),
      int Function(Pointer, Pointer<DCB>)
    >('SetCommState');

final _SetCommTimeouts = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<COMMTIMEOUTS>),
      int Function(Pointer, Pointer<COMMTIMEOUTS>)
    >('SetCommTimeouts');

final _SetConsoleCtrlHandler = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<NativeFunction<PHANDLER_ROUTINE>>, Int32),
      int Function(Pointer<NativeFunction<PHANDLER_ROUTINE>>, int)
    >('SetConsoleCtrlHandler');

final _SetConsoleCursorInfo = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<CONSOLE_CURSOR_INFO>),
      int Function(Pointer, Pointer<CONSOLE_CURSOR_INFO>)
    >('SetConsoleCursorInfo');

final _SetConsoleCursorPosition = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, COORD),
      int Function(Pointer, COORD)
    >('SetConsoleCursorPosition');

final _SetConsoleDisplayMode = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Pointer<COORD>),
      int Function(Pointer, int, Pointer<COORD>)
    >('SetConsoleDisplayMode');

final _SetConsoleMode = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Uint32),
      int Function(Pointer, int)
    >('SetConsoleMode');

final _SetConsoleTextAttribute = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Uint16),
      int Function(Pointer, int)
    >('SetConsoleTextAttribute');

final _SetConsoleWindowInfo = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Pointer<SMALL_RECT>),
      int Function(Pointer, int, Pointer<SMALL_RECT>)
    >('SetConsoleWindowInfo');

final _SetCurrentDirectory = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>),
      int Function(Pointer<Utf16>)
    >('SetCurrentDirectoryW');

final _SetDefaultCommConfig = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<COMMCONFIG>, Uint32),
      int Function(Pointer<Utf16>, Pointer<COMMCONFIG>, int)
    >('SetDefaultCommConfigW');

final _SetDefaultDllDirectories = _kernel32
    .lookupFunction<Int32 Function(Uint32), int Function(int)>(
      'SetDefaultDllDirectories',
    );

final _SetEndOfFile = _kernel32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'SetEndOfFile',
    );

final _SetEnvironmentVariable = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<Utf16>),
      int Function(Pointer<Utf16>, Pointer<Utf16>)
    >('SetEnvironmentVariableW');

final _SetErrorMode = _kernel32
    .lookupFunction<Uint32 Function(Uint32), int Function(int)>('SetErrorMode');

final _SetEvent = _kernel32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>('SetEvent');

final _SetFileApisToANSI = _kernel32
    .lookupFunction<Void Function(), void Function()>('SetFileApisToANSI');

final _SetFileApisToOEM = _kernel32
    .lookupFunction<Void Function(), void Function()>('SetFileApisToOEM');

final _SetFileAttributes = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Uint32),
      int Function(Pointer<Utf16>, int)
    >('SetFileAttributesW');

final _SetFileInformationByHandle = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Pointer, Uint32),
      int Function(Pointer, int, Pointer, int)
    >('SetFileInformationByHandle');

final _SetFileIoOverlappedRange = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Uint8>, Uint32),
      int Function(Pointer, Pointer<Uint8>, int)
    >('SetFileIoOverlappedRange');

final _SetFilePointer = _kernel32
    .lookupFunction<
      Uint32 Function(Pointer, Int32, Pointer<Int32>, Uint32),
      int Function(Pointer, int, Pointer<Int32>, int)
    >('SetFilePointer');

final _SetFilePointerEx = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Int64, Pointer<Int64>, Uint32),
      int Function(Pointer, int, Pointer<Int64>, int)
    >('SetFilePointerEx');

final _SetFileShortName = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Utf16>),
      int Function(Pointer, Pointer<Utf16>)
    >('SetFileShortNameW');

final _SetFileTime = _kernel32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Pointer<FILETIME>,
        Pointer<FILETIME>,
        Pointer<FILETIME>,
      ),
      int Function(
        Pointer,
        Pointer<FILETIME>,
        Pointer<FILETIME>,
        Pointer<FILETIME>,
      )
    >('SetFileTime');

final _SetFileValidData = _kernel32
    .lookupFunction<Int32 Function(Pointer, Int64), int Function(Pointer, int)>(
      'SetFileValidData',
    );

final _SetFirmwareEnvironmentVariable = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<Utf16>, Pointer, Uint32),
      int Function(Pointer<Utf16>, Pointer<Utf16>, Pointer, int)
    >('SetFirmwareEnvironmentVariableW');

final _SetFirmwareEnvironmentVariableEx = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<Utf16>, Pointer, Uint32, Uint32),
      int Function(Pointer<Utf16>, Pointer<Utf16>, Pointer, int, int)
    >('SetFirmwareEnvironmentVariableExW');

final _SetHandleInformation = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Uint32),
      int Function(Pointer, int, int)
    >('SetHandleInformation');

final _SetInformationJobObject = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Pointer, Uint32),
      int Function(Pointer, int, Pointer, int)
    >('SetInformationJobObject');

final _SetIoRateControlInformationJobObject = _kernel32
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<JOBOBJECT_IO_RATE_CONTROL_INFORMATION>),
      int Function(Pointer, Pointer<JOBOBJECT_IO_RATE_CONTROL_INFORMATION>)
    >('SetIoRateControlInformationJobObject');

final _SetLastError = _kernel32
    .lookupFunction<Void Function(Uint32), void Function(int)>('SetLastError');

final _SetNamedPipeHandleState = _kernel32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Uint32>,
      ),
      int Function(Pointer, Pointer<Uint32>, Pointer<Uint32>, Pointer<Uint32>)
    >('SetNamedPipeHandleState');

final _SetProcessAffinityMask = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, IntPtr),
      int Function(Pointer, int)
    >('SetProcessAffinityMask');

final _SetProcessPriorityBoost = _kernel32
    .lookupFunction<Int32 Function(Pointer, Int32), int Function(Pointer, int)>(
      'SetProcessPriorityBoost',
    );

final _SetProcessWorkingSetSize = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, IntPtr, IntPtr),
      int Function(Pointer, int, int)
    >('SetProcessWorkingSetSize');

final _SetStdHandle = _kernel32
    .lookupFunction<
      Int32 Function(Uint32, Pointer),
      int Function(int, Pointer)
    >('SetStdHandle');

final _SetThreadAffinityMask = _kernel32
    .lookupFunction<
      IntPtr Function(Pointer, IntPtr),
      int Function(Pointer, int)
    >('SetThreadAffinityMask');

final _SetThreadErrorMode = _kernel32
    .lookupFunction<
      Int32 Function(Uint32, Pointer<Uint32>),
      int Function(int, Pointer<Uint32>)
    >('SetThreadErrorMode');

final _SetThreadExecutionState = _kernel32
    .lookupFunction<Uint32 Function(Uint32), int Function(int)>(
      'SetThreadExecutionState',
    );

final _SetThreadUILanguage = _kernel32
    .lookupFunction<Uint16 Function(Uint16), int Function(int)>(
      'SetThreadUILanguage',
    );

final _SetupComm = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Uint32),
      int Function(Pointer, int, int)
    >('SetupComm');

final _SetVolumeLabel = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<Utf16>),
      int Function(Pointer<Utf16>, Pointer<Utf16>)
    >('SetVolumeLabelW');

final _SizeofResource = _kernel32
    .lookupFunction<
      Uint32 Function(Pointer, Pointer),
      int Function(Pointer, Pointer)
    >('SizeofResource');

final _Sleep = _kernel32
    .lookupFunction<Void Function(Uint32), void Function(int)>('Sleep');

final _SleepEx = _kernel32
    .lookupFunction<Uint32 Function(Uint32, Int32), int Function(int, int)>(
      'SleepEx',
    );

final _SystemTimeToFileTime = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<SYSTEMTIME>, Pointer<FILETIME>),
      int Function(Pointer<SYSTEMTIME>, Pointer<FILETIME>)
    >('SystemTimeToFileTime');

final _TerminateJobObject = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Uint32),
      int Function(Pointer, int)
    >('TerminateJobObject');

final _TerminateProcess = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Uint32),
      int Function(Pointer, int)
    >('TerminateProcess');

final _TerminateThread = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Uint32),
      int Function(Pointer, int)
    >('TerminateThread');

final _TransactNamedPipe = _kernel32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Pointer,
        Uint32,
        Pointer,
        Uint32,
        Pointer<Uint32>,
        Pointer<OVERLAPPED>,
      ),
      int Function(
        Pointer,
        Pointer,
        int,
        Pointer,
        int,
        Pointer<Uint32>,
        Pointer<OVERLAPPED>,
      )
    >('TransactNamedPipe');

final _TransmitCommChar = _kernel32
    .lookupFunction<Int32 Function(Pointer, Int8), int Function(Pointer, int)>(
      'TransmitCommChar',
    );

final _UnlockFile = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Uint32, Uint32, Uint32),
      int Function(Pointer, int, int, int, int)
    >('UnlockFile');

final _UnlockFileEx = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Uint32, Uint32, Pointer<OVERLAPPED>),
      int Function(Pointer, int, int, int, Pointer<OVERLAPPED>)
    >('UnlockFileEx');

final _UpdateProcThreadAttribute = _kernel32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Uint32,
        IntPtr,
        Pointer,
        IntPtr,
        Pointer,
        Pointer<IntPtr>,
      ),
      int Function(Pointer, int, int, Pointer, int, Pointer, Pointer<IntPtr>)
    >('UpdateProcThreadAttribute');

final _UpdateResource = _kernel32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Uint16,
        Pointer,
        Uint32,
      ),
      int Function(Pointer, Pointer<Utf16>, Pointer<Utf16>, int, Pointer, int)
    >('UpdateResourceW');

final _VerifyVersionInfo = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<OSVERSIONINFOEX>, Uint32, Uint64),
      int Function(Pointer<OSVERSIONINFOEX>, int, int)
    >('VerifyVersionInfoW');

final _VerLanguageName = _kernel32
    .lookupFunction<
      Uint32 Function(Uint32, Pointer<Utf16>, Uint32),
      int Function(int, Pointer<Utf16>, int)
    >('VerLanguageNameW');

final _VerSetConditionMask = _kernel32
    .lookupFunction<
      Uint64 Function(Uint64, Uint32, Uint8),
      int Function(int, int, int)
    >('VerSetConditionMask');

final _VirtualAlloc = _kernel32
    .lookupFunction<
      Pointer Function(Pointer, IntPtr, Uint32, Uint32),
      Pointer Function(Pointer, int, int, int)
    >('VirtualAlloc');

final _VirtualAllocEx = _kernel32
    .lookupFunction<
      Pointer Function(Pointer, Pointer, IntPtr, Uint32, Uint32),
      Pointer Function(Pointer, Pointer, int, int, int)
    >('VirtualAllocEx');

final _VirtualFree = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, IntPtr, Uint32),
      int Function(Pointer, int, int)
    >('VirtualFree');

final _VirtualFreeEx = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer, IntPtr, Uint32),
      int Function(Pointer, Pointer, int, int)
    >('VirtualFreeEx');

final _VirtualLock = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, IntPtr),
      int Function(Pointer, int)
    >('VirtualLock');

final _VirtualProtect = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, IntPtr, Uint32, Pointer<Uint32>),
      int Function(Pointer, int, int, Pointer<Uint32>)
    >('VirtualProtect');

final _VirtualProtectEx = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer, IntPtr, Uint32, Pointer<Uint32>),
      int Function(Pointer, Pointer, int, int, Pointer<Uint32>)
    >('VirtualProtectEx');

final _VirtualQuery = _kernel32
    .lookupFunction<
      IntPtr Function(Pointer, Pointer<MEMORY_BASIC_INFORMATION>, IntPtr),
      int Function(Pointer, Pointer<MEMORY_BASIC_INFORMATION>, int)
    >('VirtualQuery');

final _VirtualQueryEx = _kernel32
    .lookupFunction<
      IntPtr Function(
        Pointer,
        Pointer,
        Pointer<MEMORY_BASIC_INFORMATION>,
        IntPtr,
      ),
      int Function(Pointer, Pointer, Pointer<MEMORY_BASIC_INFORMATION>, int)
    >('VirtualQueryEx');

final _VirtualUnlock = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, IntPtr),
      int Function(Pointer, int)
    >('VirtualUnlock');

final _WaitCommEvent = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Uint32>, Pointer<OVERLAPPED>),
      int Function(Pointer, Pointer<Uint32>, Pointer<OVERLAPPED>)
    >('WaitCommEvent');

final _WaitForMultipleObjects = _kernel32
    .lookupFunction<
      Uint32 Function(Uint32, Pointer<Pointer>, Int32, Uint32),
      int Function(int, Pointer<Pointer>, int, int)
    >('WaitForMultipleObjects');

final _WaitForSingleObject = _kernel32
    .lookupFunction<
      Uint32 Function(Pointer, Uint32),
      int Function(Pointer, int)
    >('WaitForSingleObject');

final _WideCharToMultiByte = _kernel32
    .lookupFunction<
      Int32 Function(
        Uint32,
        Uint32,
        Pointer<Utf16>,
        Int32,
        Pointer<Utf8>,
        Int32,
        Pointer<Utf8>,
        Pointer<Int32>,
      ),
      int Function(
        int,
        int,
        Pointer<Utf16>,
        int,
        Pointer<Utf8>,
        int,
        Pointer<Utf8>,
        Pointer<Int32>,
      )
    >('WideCharToMultiByte');

final _Wow64SuspendThread = _kernel32
    .lookupFunction<Uint32 Function(Pointer), int Function(Pointer)>(
      'Wow64SuspendThread',
    );

final _WriteConsole = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Utf16>, Uint32, Pointer<Uint32>, Pointer),
      int Function(Pointer, Pointer<Utf16>, int, Pointer<Uint32>, Pointer)
    >('WriteConsoleW');

final _WriteFile = _kernel32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Pointer<Uint8>,
        Uint32,
        Pointer<Uint32>,
        Pointer<OVERLAPPED>,
      ),
      int Function(
        Pointer,
        Pointer<Uint8>,
        int,
        Pointer<Uint32>,
        Pointer<OVERLAPPED>,
      )
    >('WriteFile');

final _WriteFileEx = _kernel32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Pointer<Uint8>,
        Uint32,
        Pointer<OVERLAPPED>,
        Pointer<NativeFunction<LPOVERLAPPED_COMPLETION_ROUTINE>>,
      ),
      int Function(
        Pointer,
        Pointer<Uint8>,
        int,
        Pointer<OVERLAPPED>,
        Pointer<NativeFunction<LPOVERLAPPED_COMPLETION_ROUTINE>>,
      )
    >('WriteFileEx');

final _WriteFileGather = _kernel32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Pointer<FILE_SEGMENT_ELEMENT>,
        Uint32,
        Pointer<Uint32>,
        Pointer<OVERLAPPED>,
      ),
      int Function(
        Pointer,
        Pointer<FILE_SEGMENT_ELEMENT>,
        int,
        Pointer<Uint32>,
        Pointer<OVERLAPPED>,
      )
    >('WriteFileGather');

final _WriteProcessMemory = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer, Pointer, IntPtr, Pointer<IntPtr>),
      int Function(Pointer, Pointer, Pointer, int, Pointer<IntPtr>)
    >('WriteProcessMemory');
