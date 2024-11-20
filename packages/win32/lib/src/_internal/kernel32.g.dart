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
@Native<BOOL Function(HANDLE, Pointer<IntPtr>)>()
external int ActivateActCtx_Wrapper(int hActCtx, Pointer<IntPtr> lpCookie);

@internal
@Native<Pointer Function(PCWSTR)>()
external Pointer AddDllDirectory_Wrapper(PCWSTR newDirectory);

@internal
@Native<BOOL Function()>()
external int AllocConsole_Wrapper();

@internal
@Native<BOOL Function(HANDLE, HANDLE)>()
external int AssignProcessToJobObject_Wrapper(int hJob, int hProcess);

@internal
@Native<BOOL Function(Uint32)>()
external int AttachConsole_Wrapper(int dwProcessId);

@internal
@Native<BOOL Function(Uint32, Uint32)>()
external int Beep_Wrapper(int dwFreq, int dwDuration);

@internal
@Native<HANDLE Function(PCWSTR, BOOL)>()
external int BeginUpdateResourceW_Wrapper(
  PCWSTR pFileName,
  int bDeleteExistingResources,
);

@internal
@Native<BOOL Function(PCWSTR, Pointer<DCB>)>()
external int BuildCommDCBW_Wrapper(PCWSTR lpDef, Pointer<DCB> lpDCB);

@internal
@Native<BOOL Function(PCWSTR, Pointer<DCB>, Pointer<COMMTIMEOUTS>)>()
external int BuildCommDCBAndTimeoutsW_Wrapper(
  PCWSTR lpDef,
  Pointer<DCB> lpDCB,
  Pointer<COMMTIMEOUTS> lpCommTimeouts,
);

@internal
@Native<BOOL Function(HANDLE)>()
external int CancelIo_Wrapper(int hFile);

@internal
@Native<BOOL Function(HANDLE, Pointer<OVERLAPPED>)>()
external int CancelIoEx_Wrapper(int hFile, Pointer<OVERLAPPED> lpOverlapped);

@internal
@Native<BOOL Function(HANDLE)>()
external int CancelSynchronousIo_Wrapper(int hThread);

@internal
@Native<BOOL Function(HANDLE, Pointer<BOOL>)>()
external int CheckRemoteDebuggerPresent_Wrapper(
  int hProcess,
  Pointer<BOOL> pbDebuggerPresent,
);

@internal
@Native<BOOL Function(HANDLE)>()
external int ClearCommBreak_Wrapper(int hFile);

@internal
@Native<BOOL Function(HANDLE, Pointer<Uint32>, Pointer<COMSTAT>)>()
external int ClearCommError_Wrapper(
  int hFile,
  Pointer<Uint32> lpErrors,
  Pointer<COMSTAT> lpStat,
);

@internal
@Native<BOOL Function(HANDLE)>()
external int CloseHandle_Wrapper(int hObject);

@internal
@Native<BOOL Function(PCWSTR, HWND, Pointer<COMMCONFIG>)>()
external int CommConfigDialogW_Wrapper(
  PCWSTR lpszName,
  int hWnd,
  Pointer<COMMCONFIG> lpCC,
);

@internal
@Native<BOOL Function(HANDLE, Pointer<OVERLAPPED>)>()
external int ConnectNamedPipe_Wrapper(
  int hNamedPipe,
  Pointer<OVERLAPPED> lpOverlapped,
);

@internal
@Native<BOOL Function(Uint32, Uint32, Int32)>()
external int ContinueDebugEvent_Wrapper(
  int dwProcessId,
  int dwThreadId,
  int dwContinueStatus,
);

@internal
@Native<BOOL Function(PCWSTR, PCWSTR, BOOL)>()
external int CopyFileW_Wrapper(
  PCWSTR lpExistingFileName,
  PCWSTR lpNewFileName,
  int bFailIfExists,
);

@internal
@Native<
  BOOL Function(
    PCWSTR,
    PCWSTR,
    Pointer<NativeFunction<LPPROGRESS_ROUTINE>>,
    Pointer,
    Pointer<BOOL>,
    Uint32,
  )
>()
external int CopyFileExW_Wrapper(
  PCWSTR lpExistingFileName,
  PCWSTR lpNewFileName,
  Pointer<NativeFunction<LPPROGRESS_ROUTINE>> lpProgressRoutine,
  Pointer lpData,
  Pointer<BOOL> pbCancel,
  int dwCopyFlags,
);

@internal
@Native<HANDLE Function(Pointer<ACTCTX>)>()
external int CreateActCtxW_Wrapper(Pointer<ACTCTX> pActCtx);

@internal
@Native<
  HANDLE Function(Uint32, Uint32, Pointer<SECURITY_ATTRIBUTES>, Uint32, Pointer)
>()
external int CreateConsoleScreenBuffer_Wrapper(
  int dwDesiredAccess,
  int dwShareMode,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
  int dwFlags,
  Pointer lpScreenBufferData,
);

@internal
@Native<BOOL Function(PCWSTR, Pointer<SECURITY_ATTRIBUTES>)>()
external int CreateDirectoryW_Wrapper(
  PCWSTR lpPathName,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
);

@internal
@Native<HANDLE Function(Pointer<SECURITY_ATTRIBUTES>, BOOL, BOOL, PCWSTR)>()
external int CreateEventW_Wrapper(
  Pointer<SECURITY_ATTRIBUTES> lpEventAttributes,
  int bManualReset,
  int bInitialState,
  PCWSTR lpName,
);

@internal
@Native<HANDLE Function(Pointer<SECURITY_ATTRIBUTES>, PCWSTR, Uint32, Uint32)>()
external int CreateEventExW_Wrapper(
  Pointer<SECURITY_ATTRIBUTES> lpEventAttributes,
  PCWSTR lpName,
  int dwFlags,
  int dwDesiredAccess,
);

@internal
@Native<
  HANDLE Function(
    PCWSTR,
    Uint32,
    Uint32,
    Pointer<SECURITY_ATTRIBUTES>,
    Uint32,
    Uint32,
    HANDLE,
  )
>()
external int CreateFileW_Wrapper(
  PCWSTR lpFileName,
  int dwDesiredAccess,
  int dwShareMode,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
  int dwCreationDisposition,
  int dwFlagsAndAttributes,
  int hTemplateFile,
);

@internal
@Native<
  HANDLE Function(
    PCWSTR,
    Uint32,
    Uint32,
    Uint32,
    Pointer<CREATEFILE2_EXTENDED_PARAMETERS>,
  )
>()
external int CreateFile2_Wrapper(
  PCWSTR lpFileName,
  int dwDesiredAccess,
  int dwShareMode,
  int dwCreationDisposition,
  Pointer<CREATEFILE2_EXTENDED_PARAMETERS> pCreateExParams,
);

@internal
@Native<HANDLE Function(HANDLE, HANDLE, IntPtr, Uint32)>()
external int CreateIoCompletionPort_Wrapper(
  int fileHandle,
  int existingCompletionPort,
  int completionKey,
  int numberOfConcurrentThreads,
);

@internal
@Native<HANDLE Function(Pointer<SECURITY_ATTRIBUTES>, PCWSTR)>()
external int CreateJobObjectW_Wrapper(
  Pointer<SECURITY_ATTRIBUTES> lpJobAttributes,
  PCWSTR lpName,
);

@internal
@Native<
  BOOL Function(
    Pointer<HANDLE>,
    Pointer<HANDLE>,
    Pointer<SECURITY_ATTRIBUTES>,
    Uint32,
  )
>()
external int CreatePipe_Wrapper(
  Pointer<HANDLE> hReadPipe,
  Pointer<HANDLE> hWritePipe,
  Pointer<SECURITY_ATTRIBUTES> lpPipeAttributes,
  int nSize,
);

@internal
@Native<
  BOOL Function(
    PCWSTR,
    PWSTR,
    Pointer<SECURITY_ATTRIBUTES>,
    Pointer<SECURITY_ATTRIBUTES>,
    BOOL,
    Uint32,
    Pointer,
    PCWSTR,
    Pointer<STARTUPINFO>,
    Pointer<PROCESS_INFORMATION>,
  )
>()
external int CreateProcessW_Wrapper(
  PCWSTR lpApplicationName,
  PWSTR lpCommandLine,
  Pointer<SECURITY_ATTRIBUTES> lpProcessAttributes,
  Pointer<SECURITY_ATTRIBUTES> lpThreadAttributes,
  int bInheritHandles,
  int dwCreationFlags,
  Pointer lpEnvironment,
  PCWSTR lpCurrentDirectory,
  Pointer<STARTUPINFO> lpStartupInfo,
  Pointer<PROCESS_INFORMATION> lpProcessInformation,
);

@internal
@Native<
  HANDLE Function(
    HANDLE,
    Pointer<SECURITY_ATTRIBUTES>,
    IntPtr,
    Pointer<NativeFunction<LPTHREAD_START_ROUTINE>>,
    Pointer,
    Uint32,
    Pointer<Uint32>,
  )
>()
external int CreateRemoteThread_Wrapper(
  int hProcess,
  Pointer<SECURITY_ATTRIBUTES> lpThreadAttributes,
  int dwStackSize,
  Pointer<NativeFunction<LPTHREAD_START_ROUTINE>> lpStartAddress,
  Pointer lpParameter,
  int dwCreationFlags,
  Pointer<Uint32> lpThreadId,
);

@internal
@Native<
  HANDLE Function(
    HANDLE,
    Pointer<SECURITY_ATTRIBUTES>,
    IntPtr,
    Pointer<NativeFunction<LPTHREAD_START_ROUTINE>>,
    Pointer,
    Uint32,
    LPPROC_THREAD_ATTRIBUTE_LIST,
    Pointer<Uint32>,
  )
>()
external int CreateRemoteThreadEx_Wrapper(
  int hProcess,
  Pointer<SECURITY_ATTRIBUTES> lpThreadAttributes,
  int dwStackSize,
  Pointer<NativeFunction<LPTHREAD_START_ROUTINE>> lpStartAddress,
  Pointer lpParameter,
  int dwCreationFlags,
  int lpAttributeList,
  Pointer<Uint32> lpThreadId,
);

@internal
@Native<BOOLEAN Function(PCWSTR, PCWSTR, Uint32)>()
external int CreateSymbolicLinkW_Wrapper(
  PCWSTR lpSymlinkFileName,
  PCWSTR lpTargetFileName,
  int dwFlags,
);

@internal
@Native<
  HANDLE Function(
    Pointer<SECURITY_ATTRIBUTES>,
    IntPtr,
    Pointer<NativeFunction<LPTHREAD_START_ROUTINE>>,
    Pointer,
    Uint32,
    Pointer<Uint32>,
  )
>()
external int CreateThread_Wrapper(
  Pointer<SECURITY_ATTRIBUTES> lpThreadAttributes,
  int dwStackSize,
  Pointer<NativeFunction<LPTHREAD_START_ROUTINE>> lpStartAddress,
  Pointer lpParameter,
  int dwCreationFlags,
  Pointer<Uint32> lpThreadId,
);

@internal
@Native<BOOL Function(Uint32, IntPtr)>()
external int DeactivateActCtx_Wrapper(int dwFlags, int ulCookie);

@internal
@Native<BOOL Function(HANDLE)>()
external int DebugBreakProcess_Wrapper(int process);

@internal
@Native<BOOL Function(BOOL)>()
external int DebugSetProcessKillOnExit_Wrapper(int killOnExit);

@internal
@Native<BOOL Function(Uint32, PCWSTR, PCWSTR)>()
external int DefineDosDeviceW_Wrapper(
  int dwFlags,
  PCWSTR lpDeviceName,
  PCWSTR lpTargetPath,
);

@internal
@Native<BOOL Function(PCWSTR)>()
external int DeleteFileW_Wrapper(PCWSTR lpFileName);

@internal
@Native<BOOL Function(PCWSTR)>()
external int DeleteVolumeMountPointW_Wrapper(PCWSTR lpszVolumeMountPoint);

@internal
@Native<
  BOOL Function(
    HANDLE,
    Uint32,
    Pointer,
    Uint32,
    Pointer,
    Uint32,
    Pointer<Uint32>,
    Pointer<OVERLAPPED>,
  )
>()
external int DeviceIoControl_Wrapper(
  int hDevice,
  int dwIoControlCode,
  Pointer lpInBuffer,
  int nInBufferSize,
  Pointer lpOutBuffer,
  int nOutBufferSize,
  Pointer<Uint32> lpBytesReturned,
  Pointer<OVERLAPPED> lpOverlapped,
);

@internal
@Native<BOOL Function(HMODULE)>()
external int DisableThreadLibraryCalls_Wrapper(int hLibModule);

@internal
@Native<BOOL Function(HANDLE)>()
external int DisconnectNamedPipe_Wrapper(int hNamedPipe);

@internal
@Native<BOOL Function(PCWSTR, PWSTR, Pointer<Uint32>)>()
external int DnsHostnameToComputerNameW_Wrapper(
  PCWSTR hostname,
  PWSTR computerName,
  Pointer<Uint32> nSize,
);

@internal
@Native<BOOL Function(Uint16, Uint16, Pointer<FILETIME>)>()
external int DosDateTimeToFileTime_Wrapper(
  int wFatDate,
  int wFatTime,
  Pointer<FILETIME> lpFileTime,
);

@internal
@Native<
  BOOL Function(HANDLE, HANDLE, HANDLE, Pointer<HANDLE>, Uint32, BOOL, Uint32)
>()
external int DuplicateHandle_Wrapper(
  int hSourceProcessHandle,
  int hSourceHandle,
  int hTargetProcessHandle,
  Pointer<HANDLE> lpTargetHandle,
  int dwDesiredAccess,
  int bInheritHandle,
  int dwOptions,
);

@internal
@Native<BOOL Function(HANDLE, BOOL)>()
external int EndUpdateResourceW_Wrapper(int hUpdate, int fDiscard);

@internal
@Native<
  BOOL Function(HMODULE, Pointer<NativeFunction<ENUMRESTYPEPROC>>, IntPtr)
>()
external int EnumResourceTypesW_Wrapper(
  int hModule,
  Pointer<NativeFunction<ENUMRESTYPEPROC>> lpEnumFunc,
  int lParam,
);

@internal
@Native<Uint32 Function(Uint32, Pointer<Uint8>, Uint32)>()
external int EnumSystemFirmwareTables_Wrapper(
  int firmwareTableProviderSignature,
  Pointer<Uint8> pFirmwareTableEnumBuffer,
  int bufferSize,
);

@internal
@Native<BOOL Function(HANDLE, Uint32)>()
external int EscapeCommFunction_Wrapper(int hFile, int dwFunc);

@internal
@Native<BOOL Function(Pointer<FILETIME>, Pointer<Uint16>, Pointer<Uint16>)>()
external int FileTimeToDosDateTime_Wrapper(
  Pointer<FILETIME> lpFileTime,
  Pointer<Uint16> lpFatDate,
  Pointer<Uint16> lpFatTime,
);

@internal
@Native<BOOL Function(Pointer<FILETIME>, Pointer<SYSTEMTIME>)>()
external int FileTimeToSystemTime_Wrapper(
  Pointer<FILETIME> lpFileTime,
  Pointer<SYSTEMTIME> lpSystemTime,
);

@internal
@Native<BOOL Function(HANDLE, Uint16, Uint32, COORD, Pointer<Uint32>)>()
external int FillConsoleOutputAttribute_Wrapper(
  int hConsoleOutput,
  int wAttribute,
  int nLength,
  COORD dwWriteCoord,
  Pointer<Uint32> lpNumberOfAttrsWritten,
);

@internal
@Native<BOOL Function(HANDLE, Uint16, Uint32, COORD, Pointer<Uint32>)>()
external int FillConsoleOutputCharacterW_Wrapper(
  int hConsoleOutput,
  int cCharacter,
  int nLength,
  COORD dwWriteCoord,
  Pointer<Uint32> lpNumberOfCharsWritten,
);

@internal
@Native<BOOL Function(HANDLE)>()
external int FindClose_Wrapper(int hFindFile);

@internal
@Native<BOOL Function(HANDLE)>()
external int FindCloseChangeNotification_Wrapper(int hChangeHandle);

@internal
@Native<HANDLE Function(PCWSTR, BOOL, Uint32)>()
external int FindFirstChangeNotificationW_Wrapper(
  PCWSTR lpPathName,
  int bWatchSubtree,
  int dwNotifyFilter,
);

@internal
@Native<HANDLE Function(PCWSTR, Pointer<WIN32_FIND_DATA>)>()
external int FindFirstFileW_Wrapper(
  PCWSTR lpFileName,
  Pointer<WIN32_FIND_DATA> lpFindFileData,
);

@internal
@Native<HANDLE Function(PCWSTR, Int32, Pointer, Int32, Pointer, Uint32)>()
external int FindFirstFileExW_Wrapper(
  PCWSTR lpFileName,
  int fInfoLevelId,
  Pointer lpFindFileData,
  int fSearchOp,
  Pointer lpSearchFilter,
  int dwAdditionalFlags,
);

@internal
@Native<HANDLE Function(PCWSTR, Uint32, Pointer<Uint32>, PWSTR)>()
external int FindFirstFileNameW_Wrapper(
  PCWSTR lpFileName,
  int dwFlags,
  Pointer<Uint32> stringLength,
  PWSTR linkName,
);

@internal
@Native<HANDLE Function(PCWSTR, Int32, Pointer, Uint32)>()
external int FindFirstStreamW_Wrapper(
  PCWSTR lpFileName,
  int infoLevel,
  Pointer lpFindStreamData,
  int dwFlags,
);

@internal
@Native<HANDLE Function(PWSTR, Uint32)>()
external int FindFirstVolumeW_Wrapper(
  PWSTR lpszVolumeName,
  int cchBufferLength,
);

@internal
@Native<BOOL Function(HANDLE)>()
external int FindNextChangeNotification_Wrapper(int hChangeHandle);

@internal
@Native<BOOL Function(HANDLE, Pointer<WIN32_FIND_DATA>)>()
external int FindNextFileW_Wrapper(
  int hFindFile,
  Pointer<WIN32_FIND_DATA> lpFindFileData,
);

@internal
@Native<BOOL Function(HANDLE, Pointer<Uint32>, PWSTR)>()
external int FindNextFileNameW_Wrapper(
  int hFindStream,
  Pointer<Uint32> stringLength,
  PWSTR linkName,
);

@internal
@Native<BOOL Function(HANDLE, Pointer)>()
external int FindNextStreamW_Wrapper(int hFindStream, Pointer lpFindStreamData);

@internal
@Native<BOOL Function(HANDLE, PWSTR, Uint32)>()
external int FindNextVolumeW_Wrapper(
  int hFindVolume,
  PWSTR lpszVolumeName,
  int cchBufferLength,
);

@internal
@Native<Int32 Function(Uint32, PCWSTR, Int32, PCWSTR, Int32, BOOL)>()
external int FindStringOrdinal_Wrapper(
  int dwFindStringOrdinalFlags,
  PCWSTR lpStringSource,
  int cchSource,
  PCWSTR lpStringValue,
  int cchValue,
  int bIgnoreCase,
);

@internal
@Native<BOOL Function(HANDLE)>()
external int FindVolumeClose_Wrapper(int hFindVolume);

@internal
@Native<BOOL Function(HANDLE)>()
external int FlushConsoleInputBuffer_Wrapper(int hConsoleInput);

@internal
@Native<BOOL Function(HANDLE)>()
external int FlushFileBuffers_Wrapper(int hFile);

@internal
@Native<
  Uint32 Function(
    Uint32,
    Pointer,
    Uint32,
    Uint32,
    PWSTR,
    Uint32,
    Pointer<Pointer<Int8>>,
  )
>()
external int FormatMessageW_Wrapper(
  int dwFlags,
  Pointer lpSource,
  int dwMessageId,
  int dwLanguageId,
  PWSTR lpBuffer,
  int nSize,
  Pointer<Pointer<Int8>> arguments,
);

@internal
@Native<BOOL Function()>()
external int FreeConsole_Wrapper();

@internal
@Native<BOOL Function(HMODULE)>()
external int FreeLibrary_Wrapper(int hLibModule);

@internal
@Native<Uint32 Function(Uint16)>()
external int GetActiveProcessorCount_Wrapper(int groupNumber);

@internal
@Native<BOOL Function(PCWSTR, Pointer<Uint32>)>()
external int GetBinaryTypeW_Wrapper(
  PCWSTR lpApplicationName,
  Pointer<Uint32> lpBinaryType,
);

@internal
@Native<BOOL Function(HANDLE, Pointer<COMMCONFIG>, Pointer<Uint32>)>()
external int GetCommConfig_Wrapper(
  int hCommDev,
  Pointer<COMMCONFIG> lpCC,
  Pointer<Uint32> lpdwSize,
);

@internal
@Native<BOOL Function(HANDLE, Pointer<Uint32>)>()
external int GetCommMask_Wrapper(int hFile, Pointer<Uint32> lpEvtMask);

@internal
@Native<BOOL Function(HANDLE, Pointer<Uint32>)>()
external int GetCommModemStatus_Wrapper(int hFile, Pointer<Uint32> lpModemStat);

@internal
@Native<BOOL Function(HANDLE, Pointer<COMMPROP>)>()
external int GetCommProperties_Wrapper(int hFile, Pointer<COMMPROP> lpCommProp);

@internal
@Native<BOOL Function(HANDLE, Pointer<DCB>)>()
external int GetCommState_Wrapper(int hFile, Pointer<DCB> lpDCB);

@internal
@Native<BOOL Function(HANDLE, Pointer<COMMTIMEOUTS>)>()
external int GetCommTimeouts_Wrapper(
  int hFile,
  Pointer<COMMTIMEOUTS> lpCommTimeouts,
);

@internal
@Native<Uint32 Function(PCWSTR, Pointer<Uint32>)>()
external int GetCompressedFileSizeW_Wrapper(
  PCWSTR lpFileName,
  Pointer<Uint32> lpFileSizeHigh,
);

@internal
@Native<BOOL Function(PWSTR, Pointer<Uint32>)>()
external int GetComputerNameW_Wrapper(PWSTR lpBuffer, Pointer<Uint32> nSize);

@internal
@Native<BOOL Function(Int32, PWSTR, Pointer<Uint32>)>()
external int GetComputerNameExW_Wrapper(
  int nameType,
  PWSTR lpBuffer,
  Pointer<Uint32> nSize,
);

@internal
@Native<Uint32 Function()>()
external int GetConsoleCP_Wrapper();

@internal
@Native<BOOL Function(HANDLE, Pointer<CONSOLE_CURSOR_INFO>)>()
external int GetConsoleCursorInfo_Wrapper(
  int hConsoleOutput,
  Pointer<CONSOLE_CURSOR_INFO> lpConsoleCursorInfo,
);

@internal
@Native<BOOL Function(HANDLE, Pointer<Uint32>)>()
external int GetConsoleMode_Wrapper(int hConsoleHandle, Pointer<Uint32> lpMode);

@internal
@Native<Uint32 Function()>()
external int GetConsoleOutputCP_Wrapper();

@internal
@Native<BOOL Function(HANDLE, Pointer<CONSOLE_SCREEN_BUFFER_INFO>)>()
external int GetConsoleScreenBufferInfo_Wrapper(
  int hConsoleOutput,
  Pointer<CONSOLE_SCREEN_BUFFER_INFO> lpConsoleScreenBufferInfo,
);

@internal
@Native<BOOL Function(Pointer<CONSOLE_SELECTION_INFO>)>()
external int GetConsoleSelectionInfo_Wrapper(
  Pointer<CONSOLE_SELECTION_INFO> lpConsoleSelectionInfo,
);

@internal
@Native<Uint32 Function(PWSTR, Uint32)>()
external int GetConsoleTitleW_Wrapper(PWSTR lpConsoleTitle, int nSize);

@internal
@Native<BOOL Function(Pointer<HANDLE>)>()
external int GetCurrentActCtx_Wrapper(Pointer<HANDLE> lphActCtx);

@internal
@Native<BOOL Function(PCWSTR, Pointer<COMMCONFIG>, Pointer<Uint32>)>()
external int GetDefaultCommConfigW_Wrapper(
  PCWSTR lpszName,
  Pointer<COMMCONFIG> lpCC,
  Pointer<Uint32> lpdwSize,
);

@internal
@Native<
  BOOL Function(
    PCWSTR,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint32>,
  )
>()
external int GetDiskFreeSpaceW_Wrapper(
  PCWSTR lpRootPathName,
  Pointer<Uint32> lpSectorsPerCluster,
  Pointer<Uint32> lpBytesPerSector,
  Pointer<Uint32> lpNumberOfFreeClusters,
  Pointer<Uint32> lpTotalNumberOfClusters,
);

@internal
@Native<
  BOOL Function(PCWSTR, Pointer<Uint64>, Pointer<Uint64>, Pointer<Uint64>)
>()
external int GetDiskFreeSpaceExW_Wrapper(
  PCWSTR lpDirectoryName,
  Pointer<Uint64> lpFreeBytesAvailableToCaller,
  Pointer<Uint64> lpTotalNumberOfBytes,
  Pointer<Uint64> lpTotalNumberOfFreeBytes,
);

@internal
@Native<Uint32 Function(Uint32, PWSTR)>()
external int GetDllDirectoryW_Wrapper(int nBufferLength, PWSTR lpBuffer);

@internal
@Native<Uint32 Function(PCWSTR, PWSTR, Uint32)>()
external int GetEnvironmentVariableW_Wrapper(
  PCWSTR lpName,
  PWSTR lpBuffer,
  int nSize,
);

@internal
@Native<BOOL Function(HANDLE, Pointer<Uint32>)>()
external int GetExitCodeProcess_Wrapper(
  int hProcess,
  Pointer<Uint32> lpExitCode,
);

@internal
@Native<Uint32 Function(PCWSTR)>()
external int GetFileAttributesW_Wrapper(PCWSTR lpFileName);

@internal
@Native<BOOL Function(PCWSTR, Int32, Pointer)>()
external int GetFileAttributesExW_Wrapper(
  PCWSTR lpFileName,
  int fInfoLevelId,
  Pointer lpFileInformation,
);

@internal
@Native<BOOL Function(HANDLE, Pointer<BY_HANDLE_FILE_INFORMATION>)>()
external int GetFileInformationByHandle_Wrapper(
  int hFile,
  Pointer<BY_HANDLE_FILE_INFORMATION> lpFileInformation,
);

@internal
@Native<Uint32 Function(HANDLE, Pointer<Uint32>)>()
external int GetFileSize_Wrapper(int hFile, Pointer<Uint32> lpFileSizeHigh);

@internal
@Native<BOOL Function(HANDLE, Pointer<Int64>)>()
external int GetFileSizeEx_Wrapper(int hFile, Pointer<Int64> lpFileSize);

@internal
@Native<Uint32 Function(HANDLE)>()
external int GetFileType_Wrapper(int hFile);

@internal
@Native<Uint32 Function(HANDLE, PWSTR, Uint32, Uint32)>()
external int GetFinalPathNameByHandleW_Wrapper(
  int hFile,
  PWSTR lpszFilePath,
  int cchFilePath,
  int dwFlags,
);

@internal
@Native<Uint32 Function(PCWSTR, Uint32, PWSTR, Pointer<PWSTR>)>()
external int GetFullPathNameW_Wrapper(
  PCWSTR lpFileName,
  int nBufferLength,
  PWSTR lpBuffer,
  Pointer<PWSTR> lpFilePart,
);

@internal
@Native<BOOL Function(HANDLE, Pointer<Uint32>)>()
external int GetHandleInformation_Wrapper(
  int hObject,
  Pointer<Uint32> lpdwFlags,
);

@internal
@Native<COORD Function(HANDLE)>()
external COORD GetLargestConsoleWindowSize_Wrapper(int hConsoleOutput);

@internal
@Native<Int32 Function(PCWSTR, Uint32, PWSTR, Int32)>()
external int GetLocaleInfoEx_Wrapper(
  PCWSTR lpLocaleName,
  int lCType,
  PWSTR lpLCData,
  int cchData,
);

@internal
@Native<Uint32 Function()>()
external int GetLogicalDrives_Wrapper();

@internal
@Native<Uint32 Function(Uint32, PWSTR)>()
external int GetLogicalDriveStringsW_Wrapper(int nBufferLength, PWSTR lpBuffer);

@internal
@Native<
  BOOL Function(Pointer<SYSTEM_LOGICAL_PROCESSOR_INFORMATION>, Pointer<Uint32>)
>()
external int GetLogicalProcessorInformation_Wrapper(
  Pointer<SYSTEM_LOGICAL_PROCESSOR_INFORMATION> buffer,
  Pointer<Uint32> returnedLength,
);

@internal
@Native<Uint32 Function(PCWSTR, PWSTR, Uint32)>()
external int GetLongPathNameW_Wrapper(
  PCWSTR lpszShortPath,
  PWSTR lpszLongPath,
  int cchBuffer,
);

@internal
@Native<Uint32 Function(Uint16)>()
external int GetMaximumProcessorCount_Wrapper(int groupNumber);

@internal
@Native<Uint32 Function(HMODULE, PWSTR, Uint32)>()
external int GetModuleFileNameW_Wrapper(
  int hModule,
  PWSTR lpFilename,
  int nSize,
);

@internal
@Native<HMODULE Function(PCWSTR)>()
external int GetModuleHandleW_Wrapper(PCWSTR lpModuleName);

@internal
@Native<BOOL Function(Uint32, PCWSTR, Pointer<HMODULE>)>()
external int GetModuleHandleExW_Wrapper(
  int dwFlags,
  PCWSTR lpModuleName,
  Pointer<HMODULE> phModule,
);

@internal
@Native<BOOL Function(HANDLE, Pointer<Uint32>)>()
external int GetNamedPipeClientProcessId_Wrapper(
  int pipe,
  Pointer<Uint32> clientProcessId,
);

@internal
@Native<BOOL Function(HANDLE, Pointer<Uint32>)>()
external int GetNamedPipeClientSessionId_Wrapper(
  int pipe,
  Pointer<Uint32> clientSessionId,
);

@internal
@Native<
  BOOL Function(
    HANDLE,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint32>,
  )
>()
external int GetNamedPipeInfo_Wrapper(
  int hNamedPipe,
  Pointer<Uint32> lpFlags,
  Pointer<Uint32> lpOutBufferSize,
  Pointer<Uint32> lpInBufferSize,
  Pointer<Uint32> lpMaxInstances,
);

@internal
@Native<BOOL Function(HANDLE, Pointer<Uint32>)>()
external int GetNumberOfConsoleInputEvents_Wrapper(
  int hConsoleInput,
  Pointer<Uint32> lpNumberOfEvents,
);

@internal
@Native<BOOL Function(HANDLE, Pointer<OVERLAPPED>, Pointer<Uint32>, BOOL)>()
external int GetOverlappedResult_Wrapper(
  int hFile,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<Uint32> lpNumberOfBytesTransferred,
  int bWait,
);

@internal
@Native<
  BOOL Function(HANDLE, Pointer<OVERLAPPED>, Pointer<Uint32>, Uint32, BOOL)
>()
external int GetOverlappedResultEx_Wrapper(
  int hFile,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<Uint32> lpNumberOfBytesTransferred,
  int dwMilliseconds,
  int bAlertable,
);

@internal
@Native<BOOL Function(Pointer<Uint64>)>()
external int GetPhysicallyInstalledSystemMemory_Wrapper(
  Pointer<Uint64> totalMemoryInKilobytes,
);

@internal
@Native<FARPROC Function(HMODULE, PCSTR)>()
external FARPROC GetProcAddress_Wrapper(int hModule, PCSTR lpProcName);

@internal
@Native<HANDLE Function()>()
external int GetProcessHeap_Wrapper();

@internal
@Native<Uint32 Function(Uint32, Pointer<HANDLE>)>()
external int GetProcessHeaps_Wrapper(
  int numberOfHeaps,
  Pointer<HANDLE> processHeaps,
);

@internal
@Native<Uint32 Function(HANDLE)>()
external int GetProcessId_Wrapper(int process);

@internal
@Native<BOOL Function(Pointer<Uint32>, Pointer<Uint32>)>()
external int GetProcessShutdownParameters_Wrapper(
  Pointer<Uint32> lpdwLevel,
  Pointer<Uint32> lpdwFlags,
);

@internal
@Native<
  BOOL Function(
    HANDLE,
    Pointer<FILETIME>,
    Pointer<FILETIME>,
    Pointer<FILETIME>,
    Pointer<FILETIME>,
  )
>()
external int GetProcessTimes_Wrapper(
  int hProcess,
  Pointer<FILETIME> lpCreationTime,
  Pointer<FILETIME> lpExitTime,
  Pointer<FILETIME> lpKernelTime,
  Pointer<FILETIME> lpUserTime,
);

@internal
@Native<Uint32 Function(Uint32)>()
external int GetProcessVersion_Wrapper(int processId);

@internal
@Native<BOOL Function(HANDLE, Pointer<IntPtr>, Pointer<IntPtr>)>()
external int GetProcessWorkingSetSize_Wrapper(
  int hProcess,
  Pointer<IntPtr> lpMinimumWorkingSetSize,
  Pointer<IntPtr> lpMaximumWorkingSetSize,
);

@internal
@Native<
  BOOL Function(
    HANDLE,
    Pointer<Uint32>,
    Pointer<IntPtr>,
    Pointer<Pointer<OVERLAPPED>>,
    Uint32,
  )
>()
external int GetQueuedCompletionStatus_Wrapper(
  int completionPort,
  Pointer<Uint32> lpNumberOfBytesTransferred,
  Pointer<IntPtr> lpCompletionKey,
  Pointer<Pointer<OVERLAPPED>> lpOverlapped,
  int dwMilliseconds,
);

@internal
@Native<
  BOOL Function(
    HANDLE,
    Pointer<OVERLAPPED_ENTRY>,
    Uint32,
    Pointer<Uint32>,
    Uint32,
    BOOL,
  )
>()
external int GetQueuedCompletionStatusEx_Wrapper(
  int completionPort,
  Pointer<OVERLAPPED_ENTRY> lpCompletionPortEntries,
  int ulCount,
  Pointer<Uint32> ulNumEntriesRemoved,
  int dwMilliseconds,
  int fAlertable,
);

@internal
@Native<Uint32 Function(PCWSTR, PWSTR, Uint32)>()
external int GetShortPathNameW_Wrapper(
  PCWSTR lpszLongPath,
  PWSTR lpszShortPath,
  int cchBuffer,
);

@internal
@Native<HANDLE Function(Uint32)>()
external int GetStdHandle_Wrapper(int nStdHandle);

@internal
@Native<Int32 Function(PWSTR, Int32)>()
external int GetSystemDefaultLocaleName_Wrapper(
  PWSTR lpLocaleName,
  int cchLocaleName,
);

@internal
@Native<Uint32 Function(PWSTR, Uint32)>()
external int GetSystemDirectoryW_Wrapper(PWSTR lpBuffer, int uSize);

@internal
@Native<BOOL Function(Pointer<SYSTEM_POWER_STATUS>)>()
external int GetSystemPowerStatus_Wrapper(
  Pointer<SYSTEM_POWER_STATUS> lpSystemPowerStatus,
);

@internal
@Native<BOOL Function(Pointer<Uint32>, Pointer<Uint32>, Pointer<BOOL>)>()
external int GetSystemTimeAdjustment_Wrapper(
  Pointer<Uint32> lpTimeAdjustment,
  Pointer<Uint32> lpTimeIncrement,
  Pointer<BOOL> lpTimeAdjustmentDisabled,
);

@internal
@Native<
  BOOL Function(Pointer<FILETIME>, Pointer<FILETIME>, Pointer<FILETIME>)
>()
external int GetSystemTimes_Wrapper(
  Pointer<FILETIME> lpIdleTime,
  Pointer<FILETIME> lpKernelTime,
  Pointer<FILETIME> lpUserTime,
);

@internal
@Native<Uint32 Function(PCWSTR, PCWSTR, Uint32, PWSTR)>()
external int GetTempFileNameW_Wrapper(
  PCWSTR lpPathName,
  PCWSTR lpPrefixString,
  int uUnique,
  PWSTR lpTempFileName,
);

@internal
@Native<Uint32 Function(Uint32, PWSTR)>()
external int GetTempPathW_Wrapper(int nBufferLength, PWSTR lpBuffer);

@internal
@Native<Uint32 Function(HANDLE)>()
external int GetThreadId_Wrapper(int thread);

@internal
@Native<
  BOOL Function(
    HANDLE,
    Pointer<FILETIME>,
    Pointer<FILETIME>,
    Pointer<FILETIME>,
    Pointer<FILETIME>,
  )
>()
external int GetThreadTimes_Wrapper(
  int hThread,
  Pointer<FILETIME> lpCreationTime,
  Pointer<FILETIME> lpExitTime,
  Pointer<FILETIME> lpKernelTime,
  Pointer<FILETIME> lpUserTime,
);

@internal
@Native<Int32 Function(PWSTR, Int32)>()
external int GetUserDefaultLocaleName_Wrapper(
  PWSTR lpLocaleName,
  int cchLocaleName,
);

@internal
@Native<
  BOOL Function(
    PCWSTR,
    PWSTR,
    Uint32,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint32>,
    PWSTR,
    Uint32,
  )
>()
external int GetVolumeInformationW_Wrapper(
  PCWSTR lpRootPathName,
  PWSTR lpVolumeNameBuffer,
  int nVolumeNameSize,
  Pointer<Uint32> lpVolumeSerialNumber,
  Pointer<Uint32> lpMaximumComponentLength,
  Pointer<Uint32> lpFileSystemFlags,
  PWSTR lpFileSystemNameBuffer,
  int nFileSystemNameSize,
);

@internal
@Native<
  BOOL Function(
    HANDLE,
    PWSTR,
    Uint32,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint32>,
    PWSTR,
    Uint32,
  )
>()
external int GetVolumeInformationByHandleW_Wrapper(
  int hFile,
  PWSTR lpVolumeNameBuffer,
  int nVolumeNameSize,
  Pointer<Uint32> lpVolumeSerialNumber,
  Pointer<Uint32> lpMaximumComponentLength,
  Pointer<Uint32> lpFileSystemFlags,
  PWSTR lpFileSystemNameBuffer,
  int nFileSystemNameSize,
);

@internal
@Native<BOOL Function(PCWSTR, PWSTR, Uint32)>()
external int GetVolumeNameForVolumeMountPointW_Wrapper(
  PCWSTR lpszVolumeMountPoint,
  PWSTR lpszVolumeName,
  int cchBufferLength,
);

@internal
@Native<BOOL Function(PCWSTR, PWSTR, Uint32)>()
external int GetVolumePathNameW_Wrapper(
  PCWSTR lpszFileName,
  PWSTR lpszVolumePathName,
  int cchBufferLength,
);

@internal
@Native<BOOL Function(PCWSTR, PWSTR, Uint32, Pointer<Uint32>)>()
external int GetVolumePathNamesForVolumeNameW_Wrapper(
  PCWSTR lpszVolumeName,
  PWSTR lpszVolumePathNames,
  int cchBufferLength,
  Pointer<Uint32> lpcchReturnLength,
);

@internal
@Native<HGLOBAL Function(Uint32, IntPtr)>()
external int GlobalAlloc_Wrapper(int uFlags, int dwBytes);

@internal
@Native<HGLOBAL Function(HGLOBAL)>()
external int GlobalFree_Wrapper(int hMem);

@internal
@Native<Pointer Function(HGLOBAL)>()
external Pointer GlobalLock_Wrapper(int hMem);

@internal
@Native<BOOL Function(Pointer<MEMORYSTATUSEX>)>()
external int GlobalMemoryStatusEx_Wrapper(Pointer<MEMORYSTATUSEX> lpBuffer);

@internal
@Native<IntPtr Function(HGLOBAL)>()
external int GlobalSize_Wrapper(int hMem);

@internal
@Native<BOOL Function(HGLOBAL)>()
external int GlobalUnlock_Wrapper(int hMem);

@internal
@Native<IntPtr Function(HANDLE, Uint32)>()
external int HeapCompact_Wrapper(int hHeap, int dwFlags);

@internal
@Native<HANDLE Function(Uint32, IntPtr, IntPtr)>()
external int HeapCreate_Wrapper(
  int flOptions,
  int dwInitialSize,
  int dwMaximumSize,
);

@internal
@Native<BOOL Function(HANDLE)>()
external int HeapDestroy_Wrapper(int hHeap);

@internal
@Native<BOOL Function(HANDLE, Uint32, Pointer)>()
external int HeapFree_Wrapper(int hHeap, int dwFlags, Pointer lpMem);

@internal
@Native<BOOL Function(HANDLE)>()
external int HeapLock_Wrapper(int hHeap);

@internal
@Native<BOOL Function(HANDLE, Int32, Pointer, IntPtr, Pointer<IntPtr>)>()
external int HeapQueryInformation_Wrapper(
  int heapHandle,
  int heapInformationClass,
  Pointer heapInformation,
  int heapInformationLength,
  Pointer<IntPtr> returnLength,
);

@internal
@Native<BOOL Function(HANDLE, Int32, Pointer, IntPtr)>()
external int HeapSetInformation_Wrapper(
  int heapHandle,
  int heapInformationClass,
  Pointer heapInformation,
  int heapInformationLength,
);

@internal
@Native<BOOL Function(HANDLE)>()
external int HeapUnlock_Wrapper(int hHeap);

@internal
@Native<BOOL Function(HANDLE, Pointer<PROCESS_HEAP_ENTRY>)>()
external int HeapWalk_Wrapper(int hHeap, Pointer<PROCESS_HEAP_ENTRY> lpEntry);

@internal
@Native<
  BOOL Function(LPPROC_THREAD_ATTRIBUTE_LIST, Uint32, Uint32, Pointer<IntPtr>)
>()
external int InitializeProcThreadAttributeList_Wrapper(
  int lpAttributeList,
  int dwAttributeCount,
  int dwFlags,
  Pointer<IntPtr> lpSize,
);

@internal
@Native<BOOL Function(Pointer<BOOL>)>()
external int IsNativeVhdBoot_Wrapper(Pointer<BOOL> nativeVhdBoot);

@internal
@Native<BOOL Function(HANDLE, HANDLE, Pointer<BOOL>)>()
external int IsProcessInJob_Wrapper(
  int processHandle,
  int jobHandle,
  Pointer<BOOL> result,
);

@internal
@Native<BOOL Function(HANDLE, Pointer<Uint16>, Pointer<Uint16>)>()
external int IsWow64Process2_Wrapper(
  int hProcess,
  Pointer<Uint16> pProcessMachine,
  Pointer<Uint16> pNativeMachine,
);

@internal
@Native<HMODULE Function(PCWSTR)>()
external int LoadLibraryW_Wrapper(PCWSTR lpLibFileName);

@internal
@Native<HMODULE Function(PCWSTR, HANDLE, Uint32)>()
external int LoadLibraryExW_Wrapper(
  PCWSTR lpLibFileName,
  int hFile,
  int dwFlags,
);

@internal
@Native<HGLOBAL Function(HMODULE, HRSRC)>()
external int LoadResource_Wrapper(int hModule, int hResInfo);

@internal
@Native<HLOCAL Function(Uint32, IntPtr)>()
external int LocalAlloc_Wrapper(int uFlags, int uBytes);

@internal
@Native<HLOCAL Function(HLOCAL)>()
external int LocalFree_Wrapper(int hMem);

@internal
@Native<BOOL Function(HANDLE, Uint32, Uint32, Uint32, Uint32)>()
external int LockFile_Wrapper(
  int hFile,
  int dwFileOffsetLow,
  int dwFileOffsetHigh,
  int nNumberOfBytesToLockLow,
  int nNumberOfBytesToLockHigh,
);

@internal
@Native<
  BOOL Function(HANDLE, Uint32, Uint32, Uint32, Uint32, Pointer<OVERLAPPED>)
>()
external int LockFileEx_Wrapper(
  int hFile,
  int dwFlags,
  int dwReserved,
  int nNumberOfBytesToLockLow,
  int nNumberOfBytesToLockHigh,
  Pointer<OVERLAPPED> lpOverlapped,
);

@internal
@Native<BOOL Function(PCWSTR, PCWSTR)>()
external int MoveFileW_Wrapper(PCWSTR lpExistingFileName, PCWSTR lpNewFileName);

@internal
@Native<BOOL Function(PCWSTR, PCWSTR, Uint32)>()
external int MoveFileExW_Wrapper(
  PCWSTR lpExistingFileName,
  PCWSTR lpNewFileName,
  int dwFlags,
);

@internal
@Native<HANDLE Function(Uint32, BOOL, PCWSTR)>()
external int OpenEventW_Wrapper(
  int dwDesiredAccess,
  int bInheritHandle,
  PCWSTR lpName,
);

@internal
@Native<HANDLE Function(Uint32, BOOL, PCWSTR)>()
external int OpenJobObjectW_Wrapper(
  int dwDesiredAccess,
  int bInheritHandle,
  PCWSTR lpName,
);

@internal
@Native<HANDLE Function(Uint32, BOOL, Uint32)>()
external int OpenProcess_Wrapper(
  int dwDesiredAccess,
  int bInheritHandle,
  int dwProcessId,
);

@internal
@Native<BOOL Function(HANDLE, Pointer<INPUT_RECORD>, Uint32, Pointer<Uint32>)>()
external int PeekConsoleInputW_Wrapper(
  int hConsoleInput,
  Pointer<INPUT_RECORD> lpBuffer,
  int nLength,
  Pointer<Uint32> lpNumberOfEventsRead,
);

@internal
@Native<
  BOOL Function(
    HANDLE,
    Pointer,
    Uint32,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint32>,
  )
>()
external int PeekNamedPipe_Wrapper(
  int hNamedPipe,
  Pointer lpBuffer,
  int nBufferSize,
  Pointer<Uint32> lpBytesRead,
  Pointer<Uint32> lpTotalBytesAvail,
  Pointer<Uint32> lpBytesLeftThisMessage,
);

@internal
@Native<BOOL Function(HANDLE, Uint32, IntPtr, Pointer<OVERLAPPED>)>()
external int PostQueuedCompletionStatus_Wrapper(
  int completionPort,
  int dwNumberOfBytesTransferred,
  int dwCompletionKey,
  Pointer<OVERLAPPED> lpOverlapped,
);

@internal
@Native<BOOL Function(HANDLE, Uint32)>()
external int PurgeComm_Wrapper(int hFile, int dwFlags);

@internal
@Native<Uint32 Function(PCWSTR, PWSTR, Uint32)>()
external int QueryDosDeviceW_Wrapper(
  PCWSTR lpDeviceName,
  PWSTR lpTargetPath,
  int ucchMax,
);

@internal
@Native<BOOL Function(HANDLE, Uint32, PWSTR, Pointer<Uint32>)>()
external int QueryFullProcessImageNameW_Wrapper(
  int hProcess,
  int dwFlags,
  PWSTR lpExeName,
  Pointer<Uint32> lpdwSize,
);

@internal
@Native<BOOL Function(HANDLE, Int32, Pointer, Uint32, Pointer<Uint32>)>()
external int QueryInformationJobObject_Wrapper(
  int hJob,
  int jobObjectInformationClass,
  Pointer lpJobObjectInformation,
  int cbJobObjectInformationLength,
  Pointer<Uint32> lpReturnLength,
);

@internal
@Native<
  Uint32 Function(
    HANDLE,
    PCWSTR,
    Pointer<Pointer<JOBOBJECT_IO_RATE_CONTROL_INFORMATION>>,
    Pointer<Uint32>,
  )
>()
external int QueryIoRateControlInformationJobObject_Wrapper(
  int hJob,
  PCWSTR volumeName,
  Pointer<Pointer<JOBOBJECT_IO_RATE_CONTROL_INFORMATION>> infoBlocks,
  Pointer<Uint32> infoBlockCount,
);

@internal
@Native<BOOL Function(Pointer<Int64>)>()
external int QueryPerformanceCounter_Wrapper(Pointer<Int64> lpPerformanceCount);

@internal
@Native<BOOL Function(Pointer<Int64>)>()
external int QueryPerformanceFrequency_Wrapper(Pointer<Int64> lpFrequency);

@internal
@Native<
  BOOL Function(
    HANDLE,
    Pointer,
    Uint32,
    Pointer<Uint32>,
    Pointer<CONSOLE_READCONSOLE_CONTROL>,
  )
>()
external int ReadConsoleW_Wrapper(
  int hConsoleInput,
  Pointer lpBuffer,
  int nNumberOfCharsToRead,
  Pointer<Uint32> lpNumberOfCharsRead,
  Pointer<CONSOLE_READCONSOLE_CONTROL> pInputControl,
);

@internal
@Native<BOOL Function(HANDLE, Pointer<INPUT_RECORD>, Uint32, Pointer<Uint32>)>()
external int ReadConsoleInputW_Wrapper(
  int hConsoleInput,
  Pointer<INPUT_RECORD> lpBuffer,
  int nLength,
  Pointer<Uint32> lpNumberOfEventsRead,
);

@internal
@Native<
  BOOL Function(
    HANDLE,
    Pointer<Uint8>,
    Uint32,
    Pointer<Uint32>,
    Pointer<OVERLAPPED>,
  )
>()
external int ReadFile_Wrapper(
  int hFile,
  Pointer<Uint8> lpBuffer,
  int nNumberOfBytesToRead,
  Pointer<Uint32> lpNumberOfBytesRead,
  Pointer<OVERLAPPED> lpOverlapped,
);

@internal
@Native<
  BOOL Function(
    HANDLE,
    Pointer<Uint8>,
    Uint32,
    Pointer<OVERLAPPED>,
    Pointer<NativeFunction<LPOVERLAPPED_COMPLETION_ROUTINE>>,
  )
>()
external int ReadFileEx_Wrapper(
  int hFile,
  Pointer<Uint8> lpBuffer,
  int nNumberOfBytesToRead,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<NativeFunction<LPOVERLAPPED_COMPLETION_ROUTINE>> lpCompletionRoutine,
);

@internal
@Native<
  BOOL Function(
    HANDLE,
    Pointer<FILE_SEGMENT_ELEMENT>,
    Uint32,
    Pointer<Uint32>,
    Pointer<OVERLAPPED>,
  )
>()
external int ReadFileScatter_Wrapper(
  int hFile,
  Pointer<FILE_SEGMENT_ELEMENT> aSegmentArray,
  int nNumberOfBytesToRead,
  Pointer<Uint32> lpReserved,
  Pointer<OVERLAPPED> lpOverlapped,
);

@internal
@Native<BOOL Function(HANDLE, Pointer, Pointer, IntPtr, Pointer<IntPtr>)>()
external int ReadProcessMemory_Wrapper(
  int hProcess,
  Pointer lpBaseAddress,
  Pointer lpBuffer,
  int nSize,
  Pointer<IntPtr> lpNumberOfBytesRead,
);

@internal
@Native<BOOL Function(PCWSTR)>()
external int RemoveDirectoryW_Wrapper(PCWSTR lpPathName);

@internal
@Native<BOOL Function(Pointer)>()
external int RemoveDllDirectory_Wrapper(Pointer cookie);

@internal
@Native<HANDLE Function(HANDLE, Uint32, Uint32, Uint32)>()
external int ReOpenFile_Wrapper(
  int hOriginalFile,
  int dwDesiredAccess,
  int dwShareMode,
  int dwFlagsAndAttributes,
);

@internal
@Native<BOOL Function(HANDLE)>()
external int ResetEvent_Wrapper(int hEvent);

@internal
@Native<
  BOOL Function(
    HANDLE,
    Pointer<SMALL_RECT>,
    Pointer<SMALL_RECT>,
    COORD,
    Pointer<CHAR_INFO>,
  )
>()
external int ScrollConsoleScreenBufferW_Wrapper(
  int hConsoleOutput,
  Pointer<SMALL_RECT> lpScrollRectangle,
  Pointer<SMALL_RECT> lpClipRectangle,
  COORD dwDestinationOrigin,
  Pointer<CHAR_INFO> lpFill,
);

@internal
@Native<BOOL Function(HANDLE)>()
external int SetCommBreak_Wrapper(int hFile);

@internal
@Native<BOOL Function(HANDLE, Pointer<COMMCONFIG>, Uint32)>()
external int SetCommConfig_Wrapper(
  int hCommDev,
  Pointer<COMMCONFIG> lpCC,
  int dwSize,
);

@internal
@Native<BOOL Function(HANDLE, Uint32)>()
external int SetCommMask_Wrapper(int hFile, int dwEvtMask);

@internal
@Native<BOOL Function(HANDLE, Pointer<DCB>)>()
external int SetCommState_Wrapper(int hFile, Pointer<DCB> lpDCB);

@internal
@Native<BOOL Function(HANDLE, Pointer<COMMTIMEOUTS>)>()
external int SetCommTimeouts_Wrapper(
  int hFile,
  Pointer<COMMTIMEOUTS> lpCommTimeouts,
);

@internal
@Native<BOOL Function(Pointer<NativeFunction<PHANDLER_ROUTINE>>, BOOL)>()
external int SetConsoleCtrlHandler_Wrapper(
  Pointer<NativeFunction<PHANDLER_ROUTINE>> handlerRoutine,
  int add,
);

@internal
@Native<BOOL Function(HANDLE, Pointer<CONSOLE_CURSOR_INFO>)>()
external int SetConsoleCursorInfo_Wrapper(
  int hConsoleOutput,
  Pointer<CONSOLE_CURSOR_INFO> lpConsoleCursorInfo,
);

@internal
@Native<BOOL Function(HANDLE, COORD)>()
external int SetConsoleCursorPosition_Wrapper(
  int hConsoleOutput,
  COORD dwCursorPosition,
);

@internal
@Native<BOOL Function(HANDLE, Uint32, Pointer<COORD>)>()
external int SetConsoleDisplayMode_Wrapper(
  int hConsoleOutput,
  int dwFlags,
  Pointer<COORD> lpNewScreenBufferDimensions,
);

@internal
@Native<BOOL Function(HANDLE, Uint32)>()
external int SetConsoleMode_Wrapper(int hConsoleHandle, int dwMode);

@internal
@Native<BOOL Function(HANDLE, Uint16)>()
external int SetConsoleTextAttribute_Wrapper(
  int hConsoleOutput,
  int wAttributes,
);

@internal
@Native<BOOL Function(HANDLE, BOOL, Pointer<SMALL_RECT>)>()
external int SetConsoleWindowInfo_Wrapper(
  int hConsoleOutput,
  int bAbsolute,
  Pointer<SMALL_RECT> lpConsoleWindow,
);

@internal
@Native<BOOL Function(PCWSTR, Pointer<COMMCONFIG>, Uint32)>()
external int SetDefaultCommConfigW_Wrapper(
  PCWSTR lpszName,
  Pointer<COMMCONFIG> lpCC,
  int dwSize,
);

@internal
@Native<BOOL Function(Uint32)>()
external int SetDefaultDllDirectories_Wrapper(int directoryFlags);

@internal
@Native<BOOL Function(HANDLE)>()
external int SetEndOfFile_Wrapper(int hFile);

@internal
@Native<BOOL Function(PCWSTR, PCWSTR)>()
external int SetEnvironmentVariableW_Wrapper(PCWSTR lpName, PCWSTR lpValue);

@internal
@Native<BOOL Function(HANDLE)>()
external int SetEvent_Wrapper(int hEvent);

@internal
@Native<BOOL Function(PCWSTR, Uint32)>()
external int SetFileAttributesW_Wrapper(
  PCWSTR lpFileName,
  int dwFileAttributes,
);

@internal
@Native<BOOL Function(HANDLE, Int32, Pointer, Uint32)>()
external int SetFileInformationByHandle_Wrapper(
  int hFile,
  int fileInformationClass,
  Pointer lpFileInformation,
  int dwBufferSize,
);

@internal
@Native<BOOL Function(HANDLE, Pointer<Uint8>, Uint32)>()
external int SetFileIoOverlappedRange_Wrapper(
  int fileHandle,
  Pointer<Uint8> overlappedRangeStart,
  int length,
);

@internal
@Native<Uint32 Function(HANDLE, Int32, Pointer<Int32>, Uint32)>()
external int SetFilePointer_Wrapper(
  int hFile,
  int lDistanceToMove,
  Pointer<Int32> lpDistanceToMoveHigh,
  int dwMoveMethod,
);

@internal
@Native<BOOL Function(HANDLE, Int64, Pointer<Int64>, Uint32)>()
external int SetFilePointerEx_Wrapper(
  int hFile,
  int liDistanceToMove,
  Pointer<Int64> lpNewFilePointer,
  int dwMoveMethod,
);

@internal
@Native<BOOL Function(HANDLE, PCWSTR)>()
external int SetFileShortNameW_Wrapper(int hFile, PCWSTR lpShortName);

@internal
@Native<
  BOOL Function(HANDLE, Pointer<FILETIME>, Pointer<FILETIME>, Pointer<FILETIME>)
>()
external int SetFileTime_Wrapper(
  int hFile,
  Pointer<FILETIME> lpCreationTime,
  Pointer<FILETIME> lpLastAccessTime,
  Pointer<FILETIME> lpLastWriteTime,
);

@internal
@Native<BOOL Function(HANDLE, Int64)>()
external int SetFileValidData_Wrapper(int hFile, int validDataLength);

@internal
@Native<BOOL Function(PCWSTR, PCWSTR, Pointer, Uint32)>()
external int SetFirmwareEnvironmentVariableW_Wrapper(
  PCWSTR lpName,
  PCWSTR lpGuid,
  Pointer pValue,
  int nSize,
);

@internal
@Native<BOOL Function(PCWSTR, PCWSTR, Pointer, Uint32, Uint32)>()
external int SetFirmwareEnvironmentVariableExW_Wrapper(
  PCWSTR lpName,
  PCWSTR lpGuid,
  Pointer pValue,
  int nSize,
  int dwAttributes,
);

@internal
@Native<BOOL Function(HANDLE, Uint32, Uint32)>()
external int SetHandleInformation_Wrapper(int hObject, int dwMask, int dwFlags);

@internal
@Native<BOOL Function(HANDLE, Int32, Pointer, Uint32)>()
external int SetInformationJobObject_Wrapper(
  int hJob,
  int jobObjectInformationClass,
  Pointer lpJobObjectInformation,
  int cbJobObjectInformationLength,
);

@internal
@Native<
  Uint32 Function(HANDLE, Pointer<JOBOBJECT_IO_RATE_CONTROL_INFORMATION>)
>()
external int SetIoRateControlInformationJobObject_Wrapper(
  int hJob,
  Pointer<JOBOBJECT_IO_RATE_CONTROL_INFORMATION> ioRateControlInfo,
);

@internal
@Native<
  BOOL Function(HANDLE, Pointer<Uint32>, Pointer<Uint32>, Pointer<Uint32>)
>()
external int SetNamedPipeHandleState_Wrapper(
  int hNamedPipe,
  Pointer<Uint32> lpMode,
  Pointer<Uint32> lpMaxCollectionCount,
  Pointer<Uint32> lpCollectDataTimeout,
);

@internal
@Native<BOOL Function(HANDLE, IntPtr)>()
external int SetProcessAffinityMask_Wrapper(
  int hProcess,
  int dwProcessAffinityMask,
);

@internal
@Native<BOOL Function(HANDLE, BOOL)>()
external int SetProcessPriorityBoost_Wrapper(
  int hProcess,
  int bDisablePriorityBoost,
);

@internal
@Native<BOOL Function(HANDLE, IntPtr, IntPtr)>()
external int SetProcessWorkingSetSize_Wrapper(
  int hProcess,
  int dwMinimumWorkingSetSize,
  int dwMaximumWorkingSetSize,
);

@internal
@Native<BOOL Function(Uint32, HANDLE)>()
external int SetStdHandle_Wrapper(int nStdHandle, int hHandle);

@internal
@Native<IntPtr Function(HANDLE, IntPtr)>()
external int SetThreadAffinityMask_Wrapper(
  int hThread,
  int dwThreadAffinityMask,
);

@internal
@Native<BOOL Function(Uint32, Pointer<Uint32>)>()
external int SetThreadErrorMode_Wrapper(
  int dwNewMode,
  Pointer<Uint32> lpOldMode,
);

@internal
@Native<Uint16 Function(Uint16)>()
external int SetThreadUILanguage_Wrapper(int langId);

@internal
@Native<BOOL Function(HANDLE, Uint32, Uint32)>()
external int SetupComm_Wrapper(int hFile, int dwInQueue, int dwOutQueue);

@internal
@Native<BOOL Function(PCWSTR, PCWSTR)>()
external int SetVolumeLabelW_Wrapper(
  PCWSTR lpRootPathName,
  PCWSTR lpVolumeName,
);

@internal
@Native<Uint32 Function(HMODULE, HRSRC)>()
external int SizeofResource_Wrapper(int hModule, int hResInfo);

@internal
@Native<BOOL Function(Pointer<SYSTEMTIME>, Pointer<FILETIME>)>()
external int SystemTimeToFileTime_Wrapper(
  Pointer<SYSTEMTIME> lpSystemTime,
  Pointer<FILETIME> lpFileTime,
);

@internal
@Native<BOOL Function(HANDLE, Uint32)>()
external int TerminateJobObject_Wrapper(int hJob, int uExitCode);

@internal
@Native<BOOL Function(HANDLE, Uint32)>()
external int TerminateProcess_Wrapper(int hProcess, int uExitCode);

@internal
@Native<BOOL Function(HANDLE, Uint32)>()
external int TerminateThread_Wrapper(int hThread, int dwExitCode);

@internal
@Native<
  BOOL Function(
    HANDLE,
    Pointer,
    Uint32,
    Pointer,
    Uint32,
    Pointer<Uint32>,
    Pointer<OVERLAPPED>,
  )
>()
external int TransactNamedPipe_Wrapper(
  int hNamedPipe,
  Pointer lpInBuffer,
  int nInBufferSize,
  Pointer lpOutBuffer,
  int nOutBufferSize,
  Pointer<Uint32> lpBytesRead,
  Pointer<OVERLAPPED> lpOverlapped,
);

@internal
@Native<BOOL Function(HANDLE, CHAR)>()
external int TransmitCommChar_Wrapper(int hFile, int cChar);

@internal
@Native<BOOL Function(HANDLE, Uint32, Uint32, Uint32, Uint32)>()
external int UnlockFile_Wrapper(
  int hFile,
  int dwFileOffsetLow,
  int dwFileOffsetHigh,
  int nNumberOfBytesToUnlockLow,
  int nNumberOfBytesToUnlockHigh,
);

@internal
@Native<BOOL Function(HANDLE, Uint32, Uint32, Uint32, Pointer<OVERLAPPED>)>()
external int UnlockFileEx_Wrapper(
  int hFile,
  int dwReserved,
  int nNumberOfBytesToUnlockLow,
  int nNumberOfBytesToUnlockHigh,
  Pointer<OVERLAPPED> lpOverlapped,
);

@internal
@Native<
  BOOL Function(
    LPPROC_THREAD_ATTRIBUTE_LIST,
    Uint32,
    IntPtr,
    Pointer,
    IntPtr,
    Pointer,
    Pointer<IntPtr>,
  )
>()
external int UpdateProcThreadAttribute_Wrapper(
  int lpAttributeList,
  int dwFlags,
  int attribute,
  Pointer lpValue,
  int cbSize,
  Pointer lpPreviousValue,
  Pointer<IntPtr> lpReturnSize,
);

@internal
@Native<BOOL Function(HANDLE, PCWSTR, PCWSTR, Uint16, Pointer, Uint32)>()
external int UpdateResourceW_Wrapper(
  int hUpdate,
  PCWSTR lpType,
  PCWSTR lpName,
  int wLanguage,
  Pointer lpData,
  int cb,
);

@internal
@Native<BOOL Function(Pointer<OSVERSIONINFOEX>, Uint32, Uint64)>()
external int VerifyVersionInfoW_Wrapper(
  Pointer<OSVERSIONINFOEX> lpVersionInformation,
  int dwTypeMask,
  int dwlConditionMask,
);

@internal
@Native<Pointer Function(Pointer, IntPtr, Uint32, Uint32)>()
external Pointer VirtualAlloc_Wrapper(
  Pointer lpAddress,
  int dwSize,
  int flAllocationType,
  int flProtect,
);

@internal
@Native<Pointer Function(HANDLE, Pointer, IntPtr, Uint32, Uint32)>()
external Pointer VirtualAllocEx_Wrapper(
  int hProcess,
  Pointer lpAddress,
  int dwSize,
  int flAllocationType,
  int flProtect,
);

@internal
@Native<BOOL Function(Pointer, IntPtr, Uint32)>()
external int VirtualFree_Wrapper(Pointer lpAddress, int dwSize, int dwFreeType);

@internal
@Native<BOOL Function(HANDLE, Pointer, IntPtr, Uint32)>()
external int VirtualFreeEx_Wrapper(
  int hProcess,
  Pointer lpAddress,
  int dwSize,
  int dwFreeType,
);

@internal
@Native<BOOL Function(Pointer, IntPtr)>()
external int VirtualLock_Wrapper(Pointer lpAddress, int dwSize);

@internal
@Native<BOOL Function(Pointer, IntPtr, Uint32, Pointer<Uint32>)>()
external int VirtualProtect_Wrapper(
  Pointer lpAddress,
  int dwSize,
  int flNewProtect,
  Pointer<Uint32> lpflOldProtect,
);

@internal
@Native<BOOL Function(HANDLE, Pointer, IntPtr, Uint32, Pointer<Uint32>)>()
external int VirtualProtectEx_Wrapper(
  int hProcess,
  Pointer lpAddress,
  int dwSize,
  int flNewProtect,
  Pointer<Uint32> lpflOldProtect,
);

@internal
@Native<IntPtr Function(Pointer, Pointer<MEMORY_BASIC_INFORMATION>, IntPtr)>()
external int VirtualQuery_Wrapper(
  Pointer lpAddress,
  Pointer<MEMORY_BASIC_INFORMATION> lpBuffer,
  int dwLength,
);

@internal
@Native<
  IntPtr Function(HANDLE, Pointer, Pointer<MEMORY_BASIC_INFORMATION>, IntPtr)
>()
external int VirtualQueryEx_Wrapper(
  int hProcess,
  Pointer lpAddress,
  Pointer<MEMORY_BASIC_INFORMATION> lpBuffer,
  int dwLength,
);

@internal
@Native<BOOL Function(Pointer, IntPtr)>()
external int VirtualUnlock_Wrapper(Pointer lpAddress, int dwSize);

@internal
@Native<BOOL Function(HANDLE, Pointer<Uint32>, Pointer<OVERLAPPED>)>()
external int WaitCommEvent_Wrapper(
  int hFile,
  Pointer<Uint32> lpEvtMask,
  Pointer<OVERLAPPED> lpOverlapped,
);

@internal
@Native<Uint32 Function(HANDLE, Uint32)>()
external int WaitForSingleObject_Wrapper(int hHandle, int dwMilliseconds);

@internal
@Native<
  Int32 Function(
    Uint32,
    Uint32,
    PCWSTR,
    Int32,
    PSTR,
    Int32,
    PCSTR,
    Pointer<BOOL>,
  )
>()
external int WideCharToMultiByte_Wrapper(
  int codePage,
  int dwFlags,
  PCWSTR lpWideCharStr,
  int cchWideChar,
  PSTR lpMultiByteStr,
  int cbMultiByte,
  PCSTR lpDefaultChar,
  Pointer<BOOL> lpUsedDefaultChar,
);

@internal
@Native<Uint32 Function(HANDLE)>()
external int Wow64SuspendThread_Wrapper(int hThread);

@internal
@Native<BOOL Function(HANDLE, PCWSTR, Uint32, Pointer<Uint32>, Pointer)>()
external int WriteConsoleW_Wrapper(
  int hConsoleOutput,
  PCWSTR lpBuffer,
  int nNumberOfCharsToWrite,
  Pointer<Uint32> lpNumberOfCharsWritten,
  Pointer lpReserved,
);

@internal
@Native<
  BOOL Function(
    HANDLE,
    Pointer<Uint8>,
    Uint32,
    Pointer<Uint32>,
    Pointer<OVERLAPPED>,
  )
>()
external int WriteFile_Wrapper(
  int hFile,
  Pointer<Uint8> lpBuffer,
  int nNumberOfBytesToWrite,
  Pointer<Uint32> lpNumberOfBytesWritten,
  Pointer<OVERLAPPED> lpOverlapped,
);

@internal
@Native<
  BOOL Function(
    HANDLE,
    Pointer<Uint8>,
    Uint32,
    Pointer<OVERLAPPED>,
    Pointer<NativeFunction<LPOVERLAPPED_COMPLETION_ROUTINE>>,
  )
>()
external int WriteFileEx_Wrapper(
  int hFile,
  Pointer<Uint8> lpBuffer,
  int nNumberOfBytesToWrite,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<NativeFunction<LPOVERLAPPED_COMPLETION_ROUTINE>> lpCompletionRoutine,
);

@internal
@Native<
  BOOL Function(
    HANDLE,
    Pointer<FILE_SEGMENT_ELEMENT>,
    Uint32,
    Pointer<Uint32>,
    Pointer<OVERLAPPED>,
  )
>()
external int WriteFileGather_Wrapper(
  int hFile,
  Pointer<FILE_SEGMENT_ELEMENT> aSegmentArray,
  int nNumberOfBytesToWrite,
  Pointer<Uint32> lpReserved,
  Pointer<OVERLAPPED> lpOverlapped,
);

@internal
@Native<BOOL Function(HANDLE, Pointer, Pointer, IntPtr, Pointer<IntPtr>)>()
external int WriteProcessMemory_Wrapper(
  int hProcess,
  Pointer lpBaseAddress,
  Pointer lpBuffer,
  int nSize,
  Pointer<IntPtr> lpNumberOfBytesWritten,
);
