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
@Native<NativeWin32Result Function(HANDLE, Pointer<IntPtr>)>()
external NativeWin32Result ActivateActCtx_Wrapper(
  int hActCtx,
  Pointer<IntPtr> lpCookie,
);

@internal
@Native<NativeWin32Result Function(PCWSTR)>()
external NativeWin32Result AddDllDirectory_Wrapper(PCWSTR newDirectory);

@internal
@Native<NativeWin32Result Function()>()
external NativeWin32Result AllocConsole_Wrapper();

@internal
@Native<NativeWin32Result Function(HANDLE, HANDLE)>()
external NativeWin32Result AssignProcessToJobObject_Wrapper(
  int hJob,
  int hProcess,
);

@internal
@Native<NativeWin32Result Function(Uint32)>()
external NativeWin32Result AttachConsole_Wrapper(int dwProcessId);

@internal
@Native<NativeWin32Result Function(Uint32, Uint32)>()
external NativeWin32Result Beep_Wrapper(int dwFreq, int dwDuration);

@internal
@Native<NativeWin32Result Function(PCWSTR, BOOL)>()
external NativeWin32Result BeginUpdateResourceW_Wrapper(
  PCWSTR pFileName,
  int bDeleteExistingResources,
);

@internal
@Native<NativeWin32Result Function(PCWSTR, Pointer<DCB>)>()
external NativeWin32Result BuildCommDCBW_Wrapper(
  PCWSTR lpDef,
  Pointer<DCB> lpDCB,
);

@internal
@Native<
  NativeWin32Result Function(PCWSTR, Pointer<DCB>, Pointer<COMMTIMEOUTS>)
>()
external NativeWin32Result BuildCommDCBAndTimeoutsW_Wrapper(
  PCWSTR lpDef,
  Pointer<DCB> lpDCB,
  Pointer<COMMTIMEOUTS> lpCommTimeouts,
);

@internal
@Native<NativeWin32Result Function(HANDLE)>()
external NativeWin32Result CancelIo_Wrapper(int hFile);

@internal
@Native<NativeWin32Result Function(HANDLE, Pointer<OVERLAPPED>)>()
external NativeWin32Result CancelIoEx_Wrapper(
  int hFile,
  Pointer<OVERLAPPED> lpOverlapped,
);

@internal
@Native<NativeWin32Result Function(HANDLE)>()
external NativeWin32Result CancelSynchronousIo_Wrapper(int hThread);

@internal
@Native<NativeWin32Result Function(HANDLE, Pointer<BOOL>)>()
external NativeWin32Result CheckRemoteDebuggerPresent_Wrapper(
  int hProcess,
  Pointer<BOOL> pbDebuggerPresent,
);

@internal
@Native<NativeWin32Result Function(HANDLE)>()
external NativeWin32Result ClearCommBreak_Wrapper(int hFile);

@internal
@Native<NativeWin32Result Function(HANDLE, Pointer<Uint32>, Pointer<COMSTAT>)>()
external NativeWin32Result ClearCommError_Wrapper(
  int hFile,
  Pointer<Uint32> lpErrors,
  Pointer<COMSTAT> lpStat,
);

@internal
@Native<NativeWin32Result Function(HANDLE)>()
external NativeWin32Result CloseHandle_Wrapper(int hObject);

@internal
@Native<NativeWin32Result Function(PCWSTR, HWND, Pointer<COMMCONFIG>)>()
external NativeWin32Result CommConfigDialogW_Wrapper(
  PCWSTR lpszName,
  int hWnd,
  Pointer<COMMCONFIG> lpCC,
);

@internal
@Native<NativeWin32Result Function(HANDLE, Pointer<OVERLAPPED>)>()
external NativeWin32Result ConnectNamedPipe_Wrapper(
  int hNamedPipe,
  Pointer<OVERLAPPED> lpOverlapped,
);

@internal
@Native<NativeWin32Result Function(Uint32, Uint32, Int32)>()
external NativeWin32Result ContinueDebugEvent_Wrapper(
  int dwProcessId,
  int dwThreadId,
  int dwContinueStatus,
);

@internal
@Native<NativeWin32Result Function(PCWSTR, PCWSTR, BOOL)>()
external NativeWin32Result CopyFileW_Wrapper(
  PCWSTR lpExistingFileName,
  PCWSTR lpNewFileName,
  int bFailIfExists,
);

@internal
@Native<
  NativeWin32Result Function(
    PCWSTR,
    PCWSTR,
    Pointer<NativeFunction<LPPROGRESS_ROUTINE>>,
    Pointer,
    Pointer<BOOL>,
    Uint32,
  )
>()
external NativeWin32Result CopyFileExW_Wrapper(
  PCWSTR lpExistingFileName,
  PCWSTR lpNewFileName,
  Pointer<NativeFunction<LPPROGRESS_ROUTINE>> lpProgressRoutine,
  Pointer lpData,
  Pointer<BOOL> pbCancel,
  int dwCopyFlags,
);

@internal
@Native<NativeWin32Result Function(Pointer<ACTCTX>)>()
external NativeWin32Result CreateActCtxW_Wrapper(Pointer<ACTCTX> pActCtx);

@internal
@Native<
  NativeWin32Result Function(
    Uint32,
    Uint32,
    Pointer<SECURITY_ATTRIBUTES>,
    Uint32,
    Pointer,
  )
>()
external NativeWin32Result CreateConsoleScreenBuffer_Wrapper(
  int dwDesiredAccess,
  int dwShareMode,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
  int dwFlags,
  Pointer lpScreenBufferData,
);

@internal
@Native<NativeWin32Result Function(PCWSTR, Pointer<SECURITY_ATTRIBUTES>)>()
external NativeWin32Result CreateDirectoryW_Wrapper(
  PCWSTR lpPathName,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
);

@internal
@Native<
  NativeWin32Result Function(Pointer<SECURITY_ATTRIBUTES>, BOOL, BOOL, PCWSTR)
>()
external NativeWin32Result CreateEventW_Wrapper(
  Pointer<SECURITY_ATTRIBUTES> lpEventAttributes,
  int bManualReset,
  int bInitialState,
  PCWSTR lpName,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer<SECURITY_ATTRIBUTES>,
    PCWSTR,
    Uint32,
    Uint32,
  )
>()
external NativeWin32Result CreateEventExW_Wrapper(
  Pointer<SECURITY_ATTRIBUTES> lpEventAttributes,
  PCWSTR lpName,
  int dwFlags,
  int dwDesiredAccess,
);

@internal
@Native<
  NativeWin32Result Function(
    PCWSTR,
    Uint32,
    Uint32,
    Pointer<SECURITY_ATTRIBUTES>,
    Uint32,
    Uint32,
    HANDLE,
  )
>()
external NativeWin32Result CreateFileW_Wrapper(
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
  NativeWin32Result Function(
    PCWSTR,
    Uint32,
    Uint32,
    Uint32,
    Pointer<CREATEFILE2_EXTENDED_PARAMETERS>,
  )
>()
external NativeWin32Result CreateFile2_Wrapper(
  PCWSTR lpFileName,
  int dwDesiredAccess,
  int dwShareMode,
  int dwCreationDisposition,
  Pointer<CREATEFILE2_EXTENDED_PARAMETERS> pCreateExParams,
);

@internal
@Native<NativeWin32Result Function(HANDLE, HANDLE, IntPtr, Uint32)>()
external NativeWin32Result CreateIoCompletionPort_Wrapper(
  int fileHandle,
  int existingCompletionPort,
  int completionKey,
  int numberOfConcurrentThreads,
);

@internal
@Native<NativeWin32Result Function(Pointer<SECURITY_ATTRIBUTES>, PCWSTR)>()
external NativeWin32Result CreateJobObjectW_Wrapper(
  Pointer<SECURITY_ATTRIBUTES> lpJobAttributes,
  PCWSTR lpName,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer<HANDLE>,
    Pointer<HANDLE>,
    Pointer<SECURITY_ATTRIBUTES>,
    Uint32,
  )
>()
external NativeWin32Result CreatePipe_Wrapper(
  Pointer<HANDLE> hReadPipe,
  Pointer<HANDLE> hWritePipe,
  Pointer<SECURITY_ATTRIBUTES> lpPipeAttributes,
  int nSize,
);

@internal
@Native<
  NativeWin32Result Function(
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
external NativeWin32Result CreateProcessW_Wrapper(
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
  NativeWin32Result Function(
    HANDLE,
    Pointer<SECURITY_ATTRIBUTES>,
    IntPtr,
    Pointer<NativeFunction<LPTHREAD_START_ROUTINE>>,
    Pointer,
    Uint32,
    Pointer<Uint32>,
  )
>()
external NativeWin32Result CreateRemoteThread_Wrapper(
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
  NativeWin32Result Function(
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
external NativeWin32Result CreateRemoteThreadEx_Wrapper(
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
@Native<NativeWin32Result Function(PCWSTR, PCWSTR, Uint32)>()
external NativeWin32Result CreateSymbolicLinkW_Wrapper(
  PCWSTR lpSymlinkFileName,
  PCWSTR lpTargetFileName,
  int dwFlags,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer<SECURITY_ATTRIBUTES>,
    IntPtr,
    Pointer<NativeFunction<LPTHREAD_START_ROUTINE>>,
    Pointer,
    Uint32,
    Pointer<Uint32>,
  )
>()
external NativeWin32Result CreateThread_Wrapper(
  Pointer<SECURITY_ATTRIBUTES> lpThreadAttributes,
  int dwStackSize,
  Pointer<NativeFunction<LPTHREAD_START_ROUTINE>> lpStartAddress,
  Pointer lpParameter,
  int dwCreationFlags,
  Pointer<Uint32> lpThreadId,
);

@internal
@Native<NativeWin32Result Function(Uint32, IntPtr)>()
external NativeWin32Result DeactivateActCtx_Wrapper(int dwFlags, int ulCookie);

@internal
@Native<NativeWin32Result Function(HANDLE)>()
external NativeWin32Result DebugBreakProcess_Wrapper(int process);

@internal
@Native<NativeWin32Result Function(BOOL)>()
external NativeWin32Result DebugSetProcessKillOnExit_Wrapper(int killOnExit);

@internal
@Native<NativeWin32Result Function(Uint32, PCWSTR, PCWSTR)>()
external NativeWin32Result DefineDosDeviceW_Wrapper(
  int dwFlags,
  PCWSTR lpDeviceName,
  PCWSTR lpTargetPath,
);

@internal
@Native<NativeWin32Result Function(PCWSTR)>()
external NativeWin32Result DeleteFileW_Wrapper(PCWSTR lpFileName);

@internal
@Native<NativeWin32Result Function(PCWSTR)>()
external NativeWin32Result DeleteVolumeMountPointW_Wrapper(
  PCWSTR lpszVolumeMountPoint,
);

@internal
@Native<
  NativeWin32Result Function(
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
external NativeWin32Result DeviceIoControl_Wrapper(
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
@Native<NativeWin32Result Function(HMODULE)>()
external NativeWin32Result DisableThreadLibraryCalls_Wrapper(int hLibModule);

@internal
@Native<NativeWin32Result Function(HANDLE)>()
external NativeWin32Result DisconnectNamedPipe_Wrapper(int hNamedPipe);

@internal
@Native<NativeWin32Result Function(PCWSTR, PWSTR, Pointer<Uint32>)>()
external NativeWin32Result DnsHostnameToComputerNameW_Wrapper(
  PCWSTR hostname,
  PWSTR computerName,
  Pointer<Uint32> nSize,
);

@internal
@Native<NativeWin32Result Function(Uint16, Uint16, Pointer<FILETIME>)>()
external NativeWin32Result DosDateTimeToFileTime_Wrapper(
  int wFatDate,
  int wFatTime,
  Pointer<FILETIME> lpFileTime,
);

@internal
@Native<
  NativeWin32Result Function(
    HANDLE,
    HANDLE,
    HANDLE,
    Pointer<HANDLE>,
    Uint32,
    BOOL,
    Uint32,
  )
>()
external NativeWin32Result DuplicateHandle_Wrapper(
  int hSourceProcessHandle,
  int hSourceHandle,
  int hTargetProcessHandle,
  Pointer<HANDLE> lpTargetHandle,
  int dwDesiredAccess,
  int bInheritHandle,
  int dwOptions,
);

@internal
@Native<NativeWin32Result Function(HANDLE, BOOL)>()
external NativeWin32Result EndUpdateResourceW_Wrapper(
  int hUpdate,
  int fDiscard,
);

@internal
@Native<
  NativeWin32Result Function(
    HMODULE,
    Pointer<NativeFunction<ENUMRESTYPEPROC>>,
    IntPtr,
  )
>()
external NativeWin32Result EnumResourceTypesW_Wrapper(
  int hModule,
  Pointer<NativeFunction<ENUMRESTYPEPROC>> lpEnumFunc,
  int lParam,
);

@internal
@Native<NativeWin32Result Function(Uint32, Pointer<Uint8>, Uint32)>()
external NativeWin32Result EnumSystemFirmwareTables_Wrapper(
  int firmwareTableProviderSignature,
  Pointer<Uint8> pFirmwareTableEnumBuffer,
  int bufferSize,
);

@internal
@Native<NativeWin32Result Function(HANDLE, Uint32)>()
external NativeWin32Result EscapeCommFunction_Wrapper(int hFile, int dwFunc);

@internal
@Native<
  NativeWin32Result Function(
    Pointer<FILETIME>,
    Pointer<Uint16>,
    Pointer<Uint16>,
  )
>()
external NativeWin32Result FileTimeToDosDateTime_Wrapper(
  Pointer<FILETIME> lpFileTime,
  Pointer<Uint16> lpFatDate,
  Pointer<Uint16> lpFatTime,
);

@internal
@Native<NativeWin32Result Function(Pointer<FILETIME>, Pointer<SYSTEMTIME>)>()
external NativeWin32Result FileTimeToSystemTime_Wrapper(
  Pointer<FILETIME> lpFileTime,
  Pointer<SYSTEMTIME> lpSystemTime,
);

@internal
@Native<
  NativeWin32Result Function(HANDLE, Uint16, Uint32, COORD, Pointer<Uint32>)
>()
external NativeWin32Result FillConsoleOutputAttribute_Wrapper(
  int hConsoleOutput,
  int wAttribute,
  int nLength,
  COORD dwWriteCoord,
  Pointer<Uint32> lpNumberOfAttrsWritten,
);

@internal
@Native<
  NativeWin32Result Function(HANDLE, Uint16, Uint32, COORD, Pointer<Uint32>)
>()
external NativeWin32Result FillConsoleOutputCharacterW_Wrapper(
  int hConsoleOutput,
  int cCharacter,
  int nLength,
  COORD dwWriteCoord,
  Pointer<Uint32> lpNumberOfCharsWritten,
);

@internal
@Native<NativeWin32Result Function(HANDLE)>()
external NativeWin32Result FindClose_Wrapper(int hFindFile);

@internal
@Native<NativeWin32Result Function(HANDLE)>()
external NativeWin32Result FindCloseChangeNotification_Wrapper(
  int hChangeHandle,
);

@internal
@Native<NativeWin32Result Function(PCWSTR, BOOL, Uint32)>()
external NativeWin32Result FindFirstChangeNotificationW_Wrapper(
  PCWSTR lpPathName,
  int bWatchSubtree,
  int dwNotifyFilter,
);

@internal
@Native<NativeWin32Result Function(PCWSTR, Pointer<WIN32_FIND_DATA>)>()
external NativeWin32Result FindFirstFileW_Wrapper(
  PCWSTR lpFileName,
  Pointer<WIN32_FIND_DATA> lpFindFileData,
);

@internal
@Native<
  NativeWin32Result Function(PCWSTR, Int32, Pointer, Int32, Pointer, Uint32)
>()
external NativeWin32Result FindFirstFileExW_Wrapper(
  PCWSTR lpFileName,
  int fInfoLevelId,
  Pointer lpFindFileData,
  int fSearchOp,
  Pointer lpSearchFilter,
  int dwAdditionalFlags,
);

@internal
@Native<NativeWin32Result Function(PCWSTR, Uint32, Pointer<Uint32>, PWSTR)>()
external NativeWin32Result FindFirstFileNameW_Wrapper(
  PCWSTR lpFileName,
  int dwFlags,
  Pointer<Uint32> stringLength,
  PWSTR linkName,
);

@internal
@Native<NativeWin32Result Function(PCWSTR, Int32, Pointer, Uint32)>()
external NativeWin32Result FindFirstStreamW_Wrapper(
  PCWSTR lpFileName,
  int infoLevel,
  Pointer lpFindStreamData,
  int dwFlags,
);

@internal
@Native<NativeWin32Result Function(PWSTR, Uint32)>()
external NativeWin32Result FindFirstVolumeW_Wrapper(
  PWSTR lpszVolumeName,
  int cchBufferLength,
);

@internal
@Native<NativeWin32Result Function(HANDLE)>()
external NativeWin32Result FindNextChangeNotification_Wrapper(
  int hChangeHandle,
);

@internal
@Native<NativeWin32Result Function(HANDLE, Pointer<WIN32_FIND_DATA>)>()
external NativeWin32Result FindNextFileW_Wrapper(
  int hFindFile,
  Pointer<WIN32_FIND_DATA> lpFindFileData,
);

@internal
@Native<NativeWin32Result Function(HANDLE, Pointer<Uint32>, PWSTR)>()
external NativeWin32Result FindNextFileNameW_Wrapper(
  int hFindStream,
  Pointer<Uint32> stringLength,
  PWSTR linkName,
);

@internal
@Native<NativeWin32Result Function(HANDLE, Pointer)>()
external NativeWin32Result FindNextStreamW_Wrapper(
  int hFindStream,
  Pointer lpFindStreamData,
);

@internal
@Native<NativeWin32Result Function(HANDLE, PWSTR, Uint32)>()
external NativeWin32Result FindNextVolumeW_Wrapper(
  int hFindVolume,
  PWSTR lpszVolumeName,
  int cchBufferLength,
);

@internal
@Native<
  NativeWin32Result Function(Uint32, PCWSTR, Int32, PCWSTR, Int32, BOOL)
>()
external NativeWin32Result FindStringOrdinal_Wrapper(
  int dwFindStringOrdinalFlags,
  PCWSTR lpStringSource,
  int cchSource,
  PCWSTR lpStringValue,
  int cchValue,
  int bIgnoreCase,
);

@internal
@Native<NativeWin32Result Function(HANDLE)>()
external NativeWin32Result FindVolumeClose_Wrapper(int hFindVolume);

@internal
@Native<NativeWin32Result Function(HANDLE)>()
external NativeWin32Result FlushConsoleInputBuffer_Wrapper(int hConsoleInput);

@internal
@Native<NativeWin32Result Function(HANDLE)>()
external NativeWin32Result FlushFileBuffers_Wrapper(int hFile);

@internal
@Native<
  NativeWin32Result Function(
    Uint32,
    Pointer,
    Uint32,
    Uint32,
    PWSTR,
    Uint32,
    Pointer<Pointer<Int8>>,
  )
>()
external NativeWin32Result FormatMessageW_Wrapper(
  int dwFlags,
  Pointer lpSource,
  int dwMessageId,
  int dwLanguageId,
  PWSTR lpBuffer,
  int nSize,
  Pointer<Pointer<Int8>> arguments,
);

@internal
@Native<NativeWin32Result Function()>()
external NativeWin32Result FreeConsole_Wrapper();

@internal
@Native<NativeWin32Result Function(HMODULE)>()
external NativeWin32Result FreeLibrary_Wrapper(int hLibModule);

@internal
@Native<NativeWin32Result Function(Uint16)>()
external NativeWin32Result GetActiveProcessorCount_Wrapper(int groupNumber);

@internal
@Native<NativeWin32Result Function(PCWSTR, Pointer<Uint32>)>()
external NativeWin32Result GetBinaryTypeW_Wrapper(
  PCWSTR lpApplicationName,
  Pointer<Uint32> lpBinaryType,
);

@internal
@Native<
  NativeWin32Result Function(HANDLE, Pointer<COMMCONFIG>, Pointer<Uint32>)
>()
external NativeWin32Result GetCommConfig_Wrapper(
  int hCommDev,
  Pointer<COMMCONFIG> lpCC,
  Pointer<Uint32> lpdwSize,
);

@internal
@Native<NativeWin32Result Function(HANDLE, Pointer<Uint32>)>()
external NativeWin32Result GetCommMask_Wrapper(
  int hFile,
  Pointer<Uint32> lpEvtMask,
);

@internal
@Native<NativeWin32Result Function(HANDLE, Pointer<Uint32>)>()
external NativeWin32Result GetCommModemStatus_Wrapper(
  int hFile,
  Pointer<Uint32> lpModemStat,
);

@internal
@Native<NativeWin32Result Function(HANDLE, Pointer<COMMPROP>)>()
external NativeWin32Result GetCommProperties_Wrapper(
  int hFile,
  Pointer<COMMPROP> lpCommProp,
);

@internal
@Native<NativeWin32Result Function(HANDLE, Pointer<DCB>)>()
external NativeWin32Result GetCommState_Wrapper(int hFile, Pointer<DCB> lpDCB);

@internal
@Native<NativeWin32Result Function(HANDLE, Pointer<COMMTIMEOUTS>)>()
external NativeWin32Result GetCommTimeouts_Wrapper(
  int hFile,
  Pointer<COMMTIMEOUTS> lpCommTimeouts,
);

@internal
@Native<NativeWin32Result Function(PCWSTR, Pointer<Uint32>)>()
external NativeWin32Result GetCompressedFileSizeW_Wrapper(
  PCWSTR lpFileName,
  Pointer<Uint32> lpFileSizeHigh,
);

@internal
@Native<NativeWin32Result Function(PWSTR, Pointer<Uint32>)>()
external NativeWin32Result GetComputerNameW_Wrapper(
  PWSTR lpBuffer,
  Pointer<Uint32> nSize,
);

@internal
@Native<NativeWin32Result Function(Int32, PWSTR, Pointer<Uint32>)>()
external NativeWin32Result GetComputerNameExW_Wrapper(
  int nameType,
  PWSTR lpBuffer,
  Pointer<Uint32> nSize,
);

@internal
@Native<NativeWin32Result Function()>()
external NativeWin32Result GetConsoleCP_Wrapper();

@internal
@Native<NativeWin32Result Function(HANDLE, Pointer<CONSOLE_CURSOR_INFO>)>()
external NativeWin32Result GetConsoleCursorInfo_Wrapper(
  int hConsoleOutput,
  Pointer<CONSOLE_CURSOR_INFO> lpConsoleCursorInfo,
);

@internal
@Native<NativeWin32Result Function(HANDLE, Pointer<Uint32>)>()
external NativeWin32Result GetConsoleMode_Wrapper(
  int hConsoleHandle,
  Pointer<Uint32> lpMode,
);

@internal
@Native<NativeWin32Result Function()>()
external NativeWin32Result GetConsoleOutputCP_Wrapper();

@internal
@Native<
  NativeWin32Result Function(HANDLE, Pointer<CONSOLE_SCREEN_BUFFER_INFO>)
>()
external NativeWin32Result GetConsoleScreenBufferInfo_Wrapper(
  int hConsoleOutput,
  Pointer<CONSOLE_SCREEN_BUFFER_INFO> lpConsoleScreenBufferInfo,
);

@internal
@Native<NativeWin32Result Function(Pointer<CONSOLE_SELECTION_INFO>)>()
external NativeWin32Result GetConsoleSelectionInfo_Wrapper(
  Pointer<CONSOLE_SELECTION_INFO> lpConsoleSelectionInfo,
);

@internal
@Native<NativeWin32Result Function(PWSTR, Uint32)>()
external NativeWin32Result GetConsoleTitleW_Wrapper(
  PWSTR lpConsoleTitle,
  int nSize,
);

@internal
@Native<NativeWin32Result Function(Pointer<HANDLE>)>()
external NativeWin32Result GetCurrentActCtx_Wrapper(Pointer<HANDLE> lphActCtx);

@internal
@Native<
  NativeWin32Result Function(PCWSTR, Pointer<COMMCONFIG>, Pointer<Uint32>)
>()
external NativeWin32Result GetDefaultCommConfigW_Wrapper(
  PCWSTR lpszName,
  Pointer<COMMCONFIG> lpCC,
  Pointer<Uint32> lpdwSize,
);

@internal
@Native<
  NativeWin32Result Function(
    PCWSTR,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint32>,
  )
>()
external NativeWin32Result GetDiskFreeSpaceW_Wrapper(
  PCWSTR lpRootPathName,
  Pointer<Uint32> lpSectorsPerCluster,
  Pointer<Uint32> lpBytesPerSector,
  Pointer<Uint32> lpNumberOfFreeClusters,
  Pointer<Uint32> lpTotalNumberOfClusters,
);

@internal
@Native<
  NativeWin32Result Function(
    PCWSTR,
    Pointer<Uint64>,
    Pointer<Uint64>,
    Pointer<Uint64>,
  )
>()
external NativeWin32Result GetDiskFreeSpaceExW_Wrapper(
  PCWSTR lpDirectoryName,
  Pointer<Uint64> lpFreeBytesAvailableToCaller,
  Pointer<Uint64> lpTotalNumberOfBytes,
  Pointer<Uint64> lpTotalNumberOfFreeBytes,
);

@internal
@Native<NativeWin32Result Function(Uint32, PWSTR)>()
external NativeWin32Result GetDllDirectoryW_Wrapper(
  int nBufferLength,
  PWSTR lpBuffer,
);

@internal
@Native<NativeWin32Result Function(PCWSTR, PWSTR, Uint32)>()
external NativeWin32Result GetEnvironmentVariableW_Wrapper(
  PCWSTR lpName,
  PWSTR lpBuffer,
  int nSize,
);

@internal
@Native<NativeWin32Result Function(HANDLE, Pointer<Uint32>)>()
external NativeWin32Result GetExitCodeProcess_Wrapper(
  int hProcess,
  Pointer<Uint32> lpExitCode,
);

@internal
@Native<NativeWin32Result Function(PCWSTR)>()
external NativeWin32Result GetFileAttributesW_Wrapper(PCWSTR lpFileName);

@internal
@Native<NativeWin32Result Function(PCWSTR, Int32, Pointer)>()
external NativeWin32Result GetFileAttributesExW_Wrapper(
  PCWSTR lpFileName,
  int fInfoLevelId,
  Pointer lpFileInformation,
);

@internal
@Native<
  NativeWin32Result Function(HANDLE, Pointer<BY_HANDLE_FILE_INFORMATION>)
>()
external NativeWin32Result GetFileInformationByHandle_Wrapper(
  int hFile,
  Pointer<BY_HANDLE_FILE_INFORMATION> lpFileInformation,
);

@internal
@Native<NativeWin32Result Function(HANDLE, Pointer<Uint32>)>()
external NativeWin32Result GetFileSize_Wrapper(
  int hFile,
  Pointer<Uint32> lpFileSizeHigh,
);

@internal
@Native<NativeWin32Result Function(HANDLE, Pointer<Int64>)>()
external NativeWin32Result GetFileSizeEx_Wrapper(
  int hFile,
  Pointer<Int64> lpFileSize,
);

@internal
@Native<NativeWin32Result Function(HANDLE)>()
external NativeWin32Result GetFileType_Wrapper(int hFile);

@internal
@Native<NativeWin32Result Function(HANDLE, PWSTR, Uint32, Uint32)>()
external NativeWin32Result GetFinalPathNameByHandleW_Wrapper(
  int hFile,
  PWSTR lpszFilePath,
  int cchFilePath,
  int dwFlags,
);

@internal
@Native<NativeWin32Result Function(PCWSTR, Uint32, PWSTR, Pointer<PWSTR>)>()
external NativeWin32Result GetFullPathNameW_Wrapper(
  PCWSTR lpFileName,
  int nBufferLength,
  PWSTR lpBuffer,
  Pointer<PWSTR> lpFilePart,
);

@internal
@Native<NativeWin32Result Function(HANDLE, Pointer<Uint32>)>()
external NativeWin32Result GetHandleInformation_Wrapper(
  int hObject,
  Pointer<Uint32> lpdwFlags,
);

@internal
@Native<NativeWin32Result Function(HANDLE)>()
external NativeWin32Result GetLargestConsoleWindowSize_Wrapper(
  int hConsoleOutput,
);

@internal
@Native<NativeWin32Result Function(PCWSTR, Uint32, PWSTR, Int32)>()
external NativeWin32Result GetLocaleInfoEx_Wrapper(
  PCWSTR lpLocaleName,
  int lCType,
  PWSTR lpLCData,
  int cchData,
);

@internal
@Native<NativeWin32Result Function()>()
external NativeWin32Result GetLogicalDrives_Wrapper();

@internal
@Native<NativeWin32Result Function(Uint32, PWSTR)>()
external NativeWin32Result GetLogicalDriveStringsW_Wrapper(
  int nBufferLength,
  PWSTR lpBuffer,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer<SYSTEM_LOGICAL_PROCESSOR_INFORMATION>,
    Pointer<Uint32>,
  )
>()
external NativeWin32Result GetLogicalProcessorInformation_Wrapper(
  Pointer<SYSTEM_LOGICAL_PROCESSOR_INFORMATION> buffer,
  Pointer<Uint32> returnedLength,
);

@internal
@Native<NativeWin32Result Function(PCWSTR, PWSTR, Uint32)>()
external NativeWin32Result GetLongPathNameW_Wrapper(
  PCWSTR lpszShortPath,
  PWSTR lpszLongPath,
  int cchBuffer,
);

@internal
@Native<NativeWin32Result Function(Uint16)>()
external NativeWin32Result GetMaximumProcessorCount_Wrapper(int groupNumber);

@internal
@Native<NativeWin32Result Function(HMODULE, PWSTR, Uint32)>()
external NativeWin32Result GetModuleFileNameW_Wrapper(
  int hModule,
  PWSTR lpFilename,
  int nSize,
);

@internal
@Native<NativeWin32Result Function(PCWSTR)>()
external NativeWin32Result GetModuleHandleW_Wrapper(PCWSTR lpModuleName);

@internal
@Native<NativeWin32Result Function(Uint32, PCWSTR, Pointer<HMODULE>)>()
external NativeWin32Result GetModuleHandleExW_Wrapper(
  int dwFlags,
  PCWSTR lpModuleName,
  Pointer<HMODULE> phModule,
);

@internal
@Native<NativeWin32Result Function(HANDLE, Pointer<Uint32>)>()
external NativeWin32Result GetNamedPipeClientProcessId_Wrapper(
  int pipe,
  Pointer<Uint32> clientProcessId,
);

@internal
@Native<NativeWin32Result Function(HANDLE, Pointer<Uint32>)>()
external NativeWin32Result GetNamedPipeClientSessionId_Wrapper(
  int pipe,
  Pointer<Uint32> clientSessionId,
);

@internal
@Native<
  NativeWin32Result Function(
    HANDLE,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint32>,
  )
>()
external NativeWin32Result GetNamedPipeInfo_Wrapper(
  int hNamedPipe,
  Pointer<Uint32> lpFlags,
  Pointer<Uint32> lpOutBufferSize,
  Pointer<Uint32> lpInBufferSize,
  Pointer<Uint32> lpMaxInstances,
);

@internal
@Native<NativeWin32Result Function(HANDLE, Pointer<Uint32>)>()
external NativeWin32Result GetNumberOfConsoleInputEvents_Wrapper(
  int hConsoleInput,
  Pointer<Uint32> lpNumberOfEvents,
);

@internal
@Native<
  NativeWin32Result Function(HANDLE, Pointer<OVERLAPPED>, Pointer<Uint32>, BOOL)
>()
external NativeWin32Result GetOverlappedResult_Wrapper(
  int hFile,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<Uint32> lpNumberOfBytesTransferred,
  int bWait,
);

@internal
@Native<
  NativeWin32Result Function(
    HANDLE,
    Pointer<OVERLAPPED>,
    Pointer<Uint32>,
    Uint32,
    BOOL,
  )
>()
external NativeWin32Result GetOverlappedResultEx_Wrapper(
  int hFile,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<Uint32> lpNumberOfBytesTransferred,
  int dwMilliseconds,
  int bAlertable,
);

@internal
@Native<NativeWin32Result Function(Pointer<Uint64>)>()
external NativeWin32Result GetPhysicallyInstalledSystemMemory_Wrapper(
  Pointer<Uint64> totalMemoryInKilobytes,
);

@internal
@Native<NativeWin32Result Function(HMODULE, PCSTR)>()
external NativeWin32Result GetProcAddress_Wrapper(
  int hModule,
  PCSTR lpProcName,
);

@internal
@Native<NativeWin32Result Function()>()
external NativeWin32Result GetProcessHeap_Wrapper();

@internal
@Native<NativeWin32Result Function(Uint32, Pointer<HANDLE>)>()
external NativeWin32Result GetProcessHeaps_Wrapper(
  int numberOfHeaps,
  Pointer<HANDLE> processHeaps,
);

@internal
@Native<NativeWin32Result Function(HANDLE)>()
external NativeWin32Result GetProcessId_Wrapper(int process);

@internal
@Native<NativeWin32Result Function(Pointer<Uint32>, Pointer<Uint32>)>()
external NativeWin32Result GetProcessShutdownParameters_Wrapper(
  Pointer<Uint32> lpdwLevel,
  Pointer<Uint32> lpdwFlags,
);

@internal
@Native<
  NativeWin32Result Function(
    HANDLE,
    Pointer<FILETIME>,
    Pointer<FILETIME>,
    Pointer<FILETIME>,
    Pointer<FILETIME>,
  )
>()
external NativeWin32Result GetProcessTimes_Wrapper(
  int hProcess,
  Pointer<FILETIME> lpCreationTime,
  Pointer<FILETIME> lpExitTime,
  Pointer<FILETIME> lpKernelTime,
  Pointer<FILETIME> lpUserTime,
);

@internal
@Native<NativeWin32Result Function(Uint32)>()
external NativeWin32Result GetProcessVersion_Wrapper(int processId);

@internal
@Native<NativeWin32Result Function(HANDLE, Pointer<IntPtr>, Pointer<IntPtr>)>()
external NativeWin32Result GetProcessWorkingSetSize_Wrapper(
  int hProcess,
  Pointer<IntPtr> lpMinimumWorkingSetSize,
  Pointer<IntPtr> lpMaximumWorkingSetSize,
);

@internal
@Native<
  NativeWin32Result Function(
    HANDLE,
    Pointer<Uint32>,
    Pointer<IntPtr>,
    Pointer<Pointer<OVERLAPPED>>,
    Uint32,
  )
>()
external NativeWin32Result GetQueuedCompletionStatus_Wrapper(
  int completionPort,
  Pointer<Uint32> lpNumberOfBytesTransferred,
  Pointer<IntPtr> lpCompletionKey,
  Pointer<Pointer<OVERLAPPED>> lpOverlapped,
  int dwMilliseconds,
);

@internal
@Native<
  NativeWin32Result Function(
    HANDLE,
    Pointer<OVERLAPPED_ENTRY>,
    Uint32,
    Pointer<Uint32>,
    Uint32,
    BOOL,
  )
>()
external NativeWin32Result GetQueuedCompletionStatusEx_Wrapper(
  int completionPort,
  Pointer<OVERLAPPED_ENTRY> lpCompletionPortEntries,
  int ulCount,
  Pointer<Uint32> ulNumEntriesRemoved,
  int dwMilliseconds,
  int fAlertable,
);

@internal
@Native<NativeWin32Result Function(PCWSTR, PWSTR, Uint32)>()
external NativeWin32Result GetShortPathNameW_Wrapper(
  PCWSTR lpszLongPath,
  PWSTR lpszShortPath,
  int cchBuffer,
);

@internal
@Native<NativeWin32Result Function(Uint32)>()
external NativeWin32Result GetStdHandle_Wrapper(int nStdHandle);

@internal
@Native<NativeWin32Result Function(PWSTR, Int32)>()
external NativeWin32Result GetSystemDefaultLocaleName_Wrapper(
  PWSTR lpLocaleName,
  int cchLocaleName,
);

@internal
@Native<NativeWin32Result Function(PWSTR, Uint32)>()
external NativeWin32Result GetSystemDirectoryW_Wrapper(
  PWSTR lpBuffer,
  int uSize,
);

@internal
@Native<NativeWin32Result Function(Pointer<SYSTEM_POWER_STATUS>)>()
external NativeWin32Result GetSystemPowerStatus_Wrapper(
  Pointer<SYSTEM_POWER_STATUS> lpSystemPowerStatus,
);

@internal
@Native<
  NativeWin32Result Function(Pointer<Uint32>, Pointer<Uint32>, Pointer<BOOL>)
>()
external NativeWin32Result GetSystemTimeAdjustment_Wrapper(
  Pointer<Uint32> lpTimeAdjustment,
  Pointer<Uint32> lpTimeIncrement,
  Pointer<BOOL> lpTimeAdjustmentDisabled,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer<FILETIME>,
    Pointer<FILETIME>,
    Pointer<FILETIME>,
  )
>()
external NativeWin32Result GetSystemTimes_Wrapper(
  Pointer<FILETIME> lpIdleTime,
  Pointer<FILETIME> lpKernelTime,
  Pointer<FILETIME> lpUserTime,
);

@internal
@Native<NativeWin32Result Function(PCWSTR, PCWSTR, Uint32, PWSTR)>()
external NativeWin32Result GetTempFileNameW_Wrapper(
  PCWSTR lpPathName,
  PCWSTR lpPrefixString,
  int uUnique,
  PWSTR lpTempFileName,
);

@internal
@Native<NativeWin32Result Function(Uint32, PWSTR)>()
external NativeWin32Result GetTempPathW_Wrapper(
  int nBufferLength,
  PWSTR lpBuffer,
);

@internal
@Native<NativeWin32Result Function(HANDLE)>()
external NativeWin32Result GetThreadId_Wrapper(int thread);

@internal
@Native<
  NativeWin32Result Function(
    HANDLE,
    Pointer<FILETIME>,
    Pointer<FILETIME>,
    Pointer<FILETIME>,
    Pointer<FILETIME>,
  )
>()
external NativeWin32Result GetThreadTimes_Wrapper(
  int hThread,
  Pointer<FILETIME> lpCreationTime,
  Pointer<FILETIME> lpExitTime,
  Pointer<FILETIME> lpKernelTime,
  Pointer<FILETIME> lpUserTime,
);

@internal
@Native<NativeWin32Result Function(PWSTR, Int32)>()
external NativeWin32Result GetUserDefaultLocaleName_Wrapper(
  PWSTR lpLocaleName,
  int cchLocaleName,
);

@internal
@Native<
  NativeWin32Result Function(
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
external NativeWin32Result GetVolumeInformationW_Wrapper(
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
  NativeWin32Result Function(
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
external NativeWin32Result GetVolumeInformationByHandleW_Wrapper(
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
@Native<NativeWin32Result Function(PCWSTR, PWSTR, Uint32)>()
external NativeWin32Result GetVolumeNameForVolumeMountPointW_Wrapper(
  PCWSTR lpszVolumeMountPoint,
  PWSTR lpszVolumeName,
  int cchBufferLength,
);

@internal
@Native<NativeWin32Result Function(PCWSTR, PWSTR, Uint32)>()
external NativeWin32Result GetVolumePathNameW_Wrapper(
  PCWSTR lpszFileName,
  PWSTR lpszVolumePathName,
  int cchBufferLength,
);

@internal
@Native<NativeWin32Result Function(PCWSTR, PWSTR, Uint32, Pointer<Uint32>)>()
external NativeWin32Result GetVolumePathNamesForVolumeNameW_Wrapper(
  PCWSTR lpszVolumeName,
  PWSTR lpszVolumePathNames,
  int cchBufferLength,
  Pointer<Uint32> lpcchReturnLength,
);

@internal
@Native<NativeWin32Result Function(Uint32, IntPtr)>()
external NativeWin32Result GlobalAlloc_Wrapper(int uFlags, int dwBytes);

@internal
@Native<NativeWin32Result Function(HGLOBAL)>()
external NativeWin32Result GlobalFree_Wrapper(int hMem);

@internal
@Native<NativeWin32Result Function(HGLOBAL)>()
external NativeWin32Result GlobalLock_Wrapper(int hMem);

@internal
@Native<NativeWin32Result Function(Pointer<MEMORYSTATUSEX>)>()
external NativeWin32Result GlobalMemoryStatusEx_Wrapper(
  Pointer<MEMORYSTATUSEX> lpBuffer,
);

@internal
@Native<NativeWin32Result Function(HGLOBAL)>()
external NativeWin32Result GlobalSize_Wrapper(int hMem);

@internal
@Native<NativeWin32Result Function(HGLOBAL)>()
external NativeWin32Result GlobalUnlock_Wrapper(int hMem);

@internal
@Native<NativeWin32Result Function(HANDLE, Uint32)>()
external NativeWin32Result HeapCompact_Wrapper(int hHeap, int dwFlags);

@internal
@Native<NativeWin32Result Function(Uint32, IntPtr, IntPtr)>()
external NativeWin32Result HeapCreate_Wrapper(
  int flOptions,
  int dwInitialSize,
  int dwMaximumSize,
);

@internal
@Native<NativeWin32Result Function(HANDLE)>()
external NativeWin32Result HeapDestroy_Wrapper(int hHeap);

@internal
@Native<NativeWin32Result Function(HANDLE, Uint32, Pointer)>()
external NativeWin32Result HeapFree_Wrapper(
  int hHeap,
  int dwFlags,
  Pointer lpMem,
);

@internal
@Native<NativeWin32Result Function(HANDLE)>()
external NativeWin32Result HeapLock_Wrapper(int hHeap);

@internal
@Native<
  NativeWin32Result Function(HANDLE, Int32, Pointer, IntPtr, Pointer<IntPtr>)
>()
external NativeWin32Result HeapQueryInformation_Wrapper(
  int heapHandle,
  int heapInformationClass,
  Pointer heapInformation,
  int heapInformationLength,
  Pointer<IntPtr> returnLength,
);

@internal
@Native<NativeWin32Result Function(HANDLE, Int32, Pointer, IntPtr)>()
external NativeWin32Result HeapSetInformation_Wrapper(
  int heapHandle,
  int heapInformationClass,
  Pointer heapInformation,
  int heapInformationLength,
);

@internal
@Native<NativeWin32Result Function(HANDLE)>()
external NativeWin32Result HeapUnlock_Wrapper(int hHeap);

@internal
@Native<NativeWin32Result Function(HANDLE, Pointer<PROCESS_HEAP_ENTRY>)>()
external NativeWin32Result HeapWalk_Wrapper(
  int hHeap,
  Pointer<PROCESS_HEAP_ENTRY> lpEntry,
);

@internal
@Native<
  NativeWin32Result Function(
    LPPROC_THREAD_ATTRIBUTE_LIST,
    Uint32,
    Uint32,
    Pointer<IntPtr>,
  )
>()
external NativeWin32Result InitializeProcThreadAttributeList_Wrapper(
  int lpAttributeList,
  int dwAttributeCount,
  int dwFlags,
  Pointer<IntPtr> lpSize,
);

@internal
@Native<NativeWin32Result Function(Pointer<BOOL>)>()
external NativeWin32Result IsNativeVhdBoot_Wrapper(Pointer<BOOL> nativeVhdBoot);

@internal
@Native<NativeWin32Result Function(HANDLE, HANDLE, Pointer<BOOL>)>()
external NativeWin32Result IsProcessInJob_Wrapper(
  int processHandle,
  int jobHandle,
  Pointer<BOOL> result,
);

@internal
@Native<NativeWin32Result Function(HANDLE, Pointer<Uint16>, Pointer<Uint16>)>()
external NativeWin32Result IsWow64Process2_Wrapper(
  int hProcess,
  Pointer<Uint16> pProcessMachine,
  Pointer<Uint16> pNativeMachine,
);

@internal
@Native<NativeWin32Result Function(PCWSTR)>()
external NativeWin32Result LoadLibraryW_Wrapper(PCWSTR lpLibFileName);

@internal
@Native<NativeWin32Result Function(PCWSTR, HANDLE, Uint32)>()
external NativeWin32Result LoadLibraryExW_Wrapper(
  PCWSTR lpLibFileName,
  int hFile,
  int dwFlags,
);

@internal
@Native<NativeWin32Result Function(HMODULE, HRSRC)>()
external NativeWin32Result LoadResource_Wrapper(int hModule, int hResInfo);

@internal
@Native<NativeWin32Result Function(Uint32, IntPtr)>()
external NativeWin32Result LocalAlloc_Wrapper(int uFlags, int uBytes);

@internal
@Native<NativeWin32Result Function(HLOCAL)>()
external NativeWin32Result LocalFree_Wrapper(int hMem);

@internal
@Native<NativeWin32Result Function(HANDLE, Uint32, Uint32, Uint32, Uint32)>()
external NativeWin32Result LockFile_Wrapper(
  int hFile,
  int dwFileOffsetLow,
  int dwFileOffsetHigh,
  int nNumberOfBytesToLockLow,
  int nNumberOfBytesToLockHigh,
);

@internal
@Native<
  NativeWin32Result Function(
    HANDLE,
    Uint32,
    Uint32,
    Uint32,
    Uint32,
    Pointer<OVERLAPPED>,
  )
>()
external NativeWin32Result LockFileEx_Wrapper(
  int hFile,
  int dwFlags,
  int dwReserved,
  int nNumberOfBytesToLockLow,
  int nNumberOfBytesToLockHigh,
  Pointer<OVERLAPPED> lpOverlapped,
);

@internal
@Native<NativeWin32Result Function(PCWSTR, PCWSTR)>()
external NativeWin32Result MoveFileW_Wrapper(
  PCWSTR lpExistingFileName,
  PCWSTR lpNewFileName,
);

@internal
@Native<NativeWin32Result Function(PCWSTR, PCWSTR, Uint32)>()
external NativeWin32Result MoveFileExW_Wrapper(
  PCWSTR lpExistingFileName,
  PCWSTR lpNewFileName,
  int dwFlags,
);

@internal
@Native<NativeWin32Result Function(Uint32, BOOL, PCWSTR)>()
external NativeWin32Result OpenEventW_Wrapper(
  int dwDesiredAccess,
  int bInheritHandle,
  PCWSTR lpName,
);

@internal
@Native<NativeWin32Result Function(Uint32, BOOL, PCWSTR)>()
external NativeWin32Result OpenJobObjectW_Wrapper(
  int dwDesiredAccess,
  int bInheritHandle,
  PCWSTR lpName,
);

@internal
@Native<NativeWin32Result Function(Uint32, BOOL, Uint32)>()
external NativeWin32Result OpenProcess_Wrapper(
  int dwDesiredAccess,
  int bInheritHandle,
  int dwProcessId,
);

@internal
@Native<
  NativeWin32Result Function(
    HANDLE,
    Pointer<INPUT_RECORD>,
    Uint32,
    Pointer<Uint32>,
  )
>()
external NativeWin32Result PeekConsoleInputW_Wrapper(
  int hConsoleInput,
  Pointer<INPUT_RECORD> lpBuffer,
  int nLength,
  Pointer<Uint32> lpNumberOfEventsRead,
);

@internal
@Native<
  NativeWin32Result Function(
    HANDLE,
    Pointer,
    Uint32,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint32>,
  )
>()
external NativeWin32Result PeekNamedPipe_Wrapper(
  int hNamedPipe,
  Pointer lpBuffer,
  int nBufferSize,
  Pointer<Uint32> lpBytesRead,
  Pointer<Uint32> lpTotalBytesAvail,
  Pointer<Uint32> lpBytesLeftThisMessage,
);

@internal
@Native<
  NativeWin32Result Function(HANDLE, Uint32, IntPtr, Pointer<OVERLAPPED>)
>()
external NativeWin32Result PostQueuedCompletionStatus_Wrapper(
  int completionPort,
  int dwNumberOfBytesTransferred,
  int dwCompletionKey,
  Pointer<OVERLAPPED> lpOverlapped,
);

@internal
@Native<NativeWin32Result Function(Uint32, Pointer<Uint32>)>()
external NativeWin32Result ProcessIdToSessionId_Wrapper(
  int dwProcessId,
  Pointer<Uint32> pSessionId,
);

@internal
@Native<NativeWin32Result Function(HANDLE, Uint32)>()
external NativeWin32Result PurgeComm_Wrapper(int hFile, int dwFlags);

@internal
@Native<NativeWin32Result Function(PCWSTR, PWSTR, Uint32)>()
external NativeWin32Result QueryDosDeviceW_Wrapper(
  PCWSTR lpDeviceName,
  PWSTR lpTargetPath,
  int ucchMax,
);

@internal
@Native<NativeWin32Result Function(HANDLE, Uint32, PWSTR, Pointer<Uint32>)>()
external NativeWin32Result QueryFullProcessImageNameW_Wrapper(
  int hProcess,
  int dwFlags,
  PWSTR lpExeName,
  Pointer<Uint32> lpdwSize,
);

@internal
@Native<
  NativeWin32Result Function(HANDLE, Int32, Pointer, Uint32, Pointer<Uint32>)
>()
external NativeWin32Result QueryInformationJobObject_Wrapper(
  int hJob,
  int jobObjectInformationClass,
  Pointer lpJobObjectInformation,
  int cbJobObjectInformationLength,
  Pointer<Uint32> lpReturnLength,
);

@internal
@Native<
  NativeWin32Result Function(
    HANDLE,
    PCWSTR,
    Pointer<Pointer<JOBOBJECT_IO_RATE_CONTROL_INFORMATION>>,
    Pointer<Uint32>,
  )
>()
external NativeWin32Result QueryIoRateControlInformationJobObject_Wrapper(
  int hJob,
  PCWSTR volumeName,
  Pointer<Pointer<JOBOBJECT_IO_RATE_CONTROL_INFORMATION>> infoBlocks,
  Pointer<Uint32> infoBlockCount,
);

@internal
@Native<NativeWin32Result Function(Pointer<Int64>)>()
external NativeWin32Result QueryPerformanceCounter_Wrapper(
  Pointer<Int64> lpPerformanceCount,
);

@internal
@Native<NativeWin32Result Function(Pointer<Int64>)>()
external NativeWin32Result QueryPerformanceFrequency_Wrapper(
  Pointer<Int64> lpFrequency,
);

@internal
@Native<
  NativeWin32Result Function(
    HANDLE,
    Pointer,
    Uint32,
    Pointer<Uint32>,
    Pointer<CONSOLE_READCONSOLE_CONTROL>,
  )
>()
external NativeWin32Result ReadConsoleW_Wrapper(
  int hConsoleInput,
  Pointer lpBuffer,
  int nNumberOfCharsToRead,
  Pointer<Uint32> lpNumberOfCharsRead,
  Pointer<CONSOLE_READCONSOLE_CONTROL> pInputControl,
);

@internal
@Native<
  NativeWin32Result Function(
    HANDLE,
    Pointer<INPUT_RECORD>,
    Uint32,
    Pointer<Uint32>,
  )
>()
external NativeWin32Result ReadConsoleInputW_Wrapper(
  int hConsoleInput,
  Pointer<INPUT_RECORD> lpBuffer,
  int nLength,
  Pointer<Uint32> lpNumberOfEventsRead,
);

@internal
@Native<
  NativeWin32Result Function(
    HANDLE,
    Pointer<Uint8>,
    Uint32,
    Pointer<Uint32>,
    Pointer<OVERLAPPED>,
  )
>()
external NativeWin32Result ReadFile_Wrapper(
  int hFile,
  Pointer<Uint8> lpBuffer,
  int nNumberOfBytesToRead,
  Pointer<Uint32> lpNumberOfBytesRead,
  Pointer<OVERLAPPED> lpOverlapped,
);

@internal
@Native<
  NativeWin32Result Function(
    HANDLE,
    Pointer<Uint8>,
    Uint32,
    Pointer<OVERLAPPED>,
    Pointer<NativeFunction<LPOVERLAPPED_COMPLETION_ROUTINE>>,
  )
>()
external NativeWin32Result ReadFileEx_Wrapper(
  int hFile,
  Pointer<Uint8> lpBuffer,
  int nNumberOfBytesToRead,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<NativeFunction<LPOVERLAPPED_COMPLETION_ROUTINE>> lpCompletionRoutine,
);

@internal
@Native<
  NativeWin32Result Function(
    HANDLE,
    Pointer<FILE_SEGMENT_ELEMENT>,
    Uint32,
    Pointer<Uint32>,
    Pointer<OVERLAPPED>,
  )
>()
external NativeWin32Result ReadFileScatter_Wrapper(
  int hFile,
  Pointer<FILE_SEGMENT_ELEMENT> aSegmentArray,
  int nNumberOfBytesToRead,
  Pointer<Uint32> lpReserved,
  Pointer<OVERLAPPED> lpOverlapped,
);

@internal
@Native<
  NativeWin32Result Function(HANDLE, Pointer, Pointer, IntPtr, Pointer<IntPtr>)
>()
external NativeWin32Result ReadProcessMemory_Wrapper(
  int hProcess,
  Pointer lpBaseAddress,
  Pointer lpBuffer,
  int nSize,
  Pointer<IntPtr> lpNumberOfBytesRead,
);

@internal
@Native<NativeWin32Result Function(PCWSTR)>()
external NativeWin32Result RemoveDirectoryW_Wrapper(PCWSTR lpPathName);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result RemoveDllDirectory_Wrapper(Pointer cookie);

@internal
@Native<NativeWin32Result Function(HANDLE, Uint32, Uint32, Uint32)>()
external NativeWin32Result ReOpenFile_Wrapper(
  int hOriginalFile,
  int dwDesiredAccess,
  int dwShareMode,
  int dwFlagsAndAttributes,
);

@internal
@Native<NativeWin32Result Function(HANDLE)>()
external NativeWin32Result ResetEvent_Wrapper(int hEvent);

@internal
@Native<
  NativeWin32Result Function(
    HANDLE,
    Pointer<SMALL_RECT>,
    Pointer<SMALL_RECT>,
    COORD,
    Pointer<CHAR_INFO>,
  )
>()
external NativeWin32Result ScrollConsoleScreenBufferW_Wrapper(
  int hConsoleOutput,
  Pointer<SMALL_RECT> lpScrollRectangle,
  Pointer<SMALL_RECT> lpClipRectangle,
  COORD dwDestinationOrigin,
  Pointer<CHAR_INFO> lpFill,
);

@internal
@Native<NativeWin32Result Function(HANDLE)>()
external NativeWin32Result SetCommBreak_Wrapper(int hFile);

@internal
@Native<NativeWin32Result Function(HANDLE, Pointer<COMMCONFIG>, Uint32)>()
external NativeWin32Result SetCommConfig_Wrapper(
  int hCommDev,
  Pointer<COMMCONFIG> lpCC,
  int dwSize,
);

@internal
@Native<NativeWin32Result Function(HANDLE, Uint32)>()
external NativeWin32Result SetCommMask_Wrapper(int hFile, int dwEvtMask);

@internal
@Native<NativeWin32Result Function(HANDLE, Pointer<DCB>)>()
external NativeWin32Result SetCommState_Wrapper(int hFile, Pointer<DCB> lpDCB);

@internal
@Native<NativeWin32Result Function(HANDLE, Pointer<COMMTIMEOUTS>)>()
external NativeWin32Result SetCommTimeouts_Wrapper(
  int hFile,
  Pointer<COMMTIMEOUTS> lpCommTimeouts,
);

@internal
@Native<
  NativeWin32Result Function(Pointer<NativeFunction<PHANDLER_ROUTINE>>, BOOL)
>()
external NativeWin32Result SetConsoleCtrlHandler_Wrapper(
  Pointer<NativeFunction<PHANDLER_ROUTINE>> handlerRoutine,
  int add,
);

@internal
@Native<NativeWin32Result Function(HANDLE, Pointer<CONSOLE_CURSOR_INFO>)>()
external NativeWin32Result SetConsoleCursorInfo_Wrapper(
  int hConsoleOutput,
  Pointer<CONSOLE_CURSOR_INFO> lpConsoleCursorInfo,
);

@internal
@Native<NativeWin32Result Function(HANDLE, COORD)>()
external NativeWin32Result SetConsoleCursorPosition_Wrapper(
  int hConsoleOutput,
  COORD dwCursorPosition,
);

@internal
@Native<NativeWin32Result Function(HANDLE, Uint32, Pointer<COORD>)>()
external NativeWin32Result SetConsoleDisplayMode_Wrapper(
  int hConsoleOutput,
  int dwFlags,
  Pointer<COORD> lpNewScreenBufferDimensions,
);

@internal
@Native<NativeWin32Result Function(HANDLE, Uint32)>()
external NativeWin32Result SetConsoleMode_Wrapper(
  int hConsoleHandle,
  int dwMode,
);

@internal
@Native<NativeWin32Result Function(HANDLE, Uint16)>()
external NativeWin32Result SetConsoleTextAttribute_Wrapper(
  int hConsoleOutput,
  int wAttributes,
);

@internal
@Native<NativeWin32Result Function(HANDLE, BOOL, Pointer<SMALL_RECT>)>()
external NativeWin32Result SetConsoleWindowInfo_Wrapper(
  int hConsoleOutput,
  int bAbsolute,
  Pointer<SMALL_RECT> lpConsoleWindow,
);

@internal
@Native<NativeWin32Result Function(PCWSTR, Pointer<COMMCONFIG>, Uint32)>()
external NativeWin32Result SetDefaultCommConfigW_Wrapper(
  PCWSTR lpszName,
  Pointer<COMMCONFIG> lpCC,
  int dwSize,
);

@internal
@Native<NativeWin32Result Function(Uint32)>()
external NativeWin32Result SetDefaultDllDirectories_Wrapper(int directoryFlags);

@internal
@Native<NativeWin32Result Function(HANDLE)>()
external NativeWin32Result SetEndOfFile_Wrapper(int hFile);

@internal
@Native<NativeWin32Result Function(PCWSTR, PCWSTR)>()
external NativeWin32Result SetEnvironmentVariableW_Wrapper(
  PCWSTR lpName,
  PCWSTR lpValue,
);

@internal
@Native<NativeWin32Result Function(HANDLE)>()
external NativeWin32Result SetEvent_Wrapper(int hEvent);

@internal
@Native<NativeWin32Result Function(PCWSTR, Uint32)>()
external NativeWin32Result SetFileAttributesW_Wrapper(
  PCWSTR lpFileName,
  int dwFileAttributes,
);

@internal
@Native<NativeWin32Result Function(HANDLE, Int32, Pointer, Uint32)>()
external NativeWin32Result SetFileInformationByHandle_Wrapper(
  int hFile,
  int fileInformationClass,
  Pointer lpFileInformation,
  int dwBufferSize,
);

@internal
@Native<NativeWin32Result Function(HANDLE, Pointer<Uint8>, Uint32)>()
external NativeWin32Result SetFileIoOverlappedRange_Wrapper(
  int fileHandle,
  Pointer<Uint8> overlappedRangeStart,
  int length,
);

@internal
@Native<NativeWin32Result Function(HANDLE, Int32, Pointer<Int32>, Uint32)>()
external NativeWin32Result SetFilePointer_Wrapper(
  int hFile,
  int lDistanceToMove,
  Pointer<Int32> lpDistanceToMoveHigh,
  int dwMoveMethod,
);

@internal
@Native<NativeWin32Result Function(HANDLE, Int64, Pointer<Int64>, Uint32)>()
external NativeWin32Result SetFilePointerEx_Wrapper(
  int hFile,
  int liDistanceToMove,
  Pointer<Int64> lpNewFilePointer,
  int dwMoveMethod,
);

@internal
@Native<NativeWin32Result Function(HANDLE, PCWSTR)>()
external NativeWin32Result SetFileShortNameW_Wrapper(
  int hFile,
  PCWSTR lpShortName,
);

@internal
@Native<
  NativeWin32Result Function(
    HANDLE,
    Pointer<FILETIME>,
    Pointer<FILETIME>,
    Pointer<FILETIME>,
  )
>()
external NativeWin32Result SetFileTime_Wrapper(
  int hFile,
  Pointer<FILETIME> lpCreationTime,
  Pointer<FILETIME> lpLastAccessTime,
  Pointer<FILETIME> lpLastWriteTime,
);

@internal
@Native<NativeWin32Result Function(HANDLE, Int64)>()
external NativeWin32Result SetFileValidData_Wrapper(
  int hFile,
  int validDataLength,
);

@internal
@Native<NativeWin32Result Function(PCWSTR, PCWSTR, Pointer, Uint32)>()
external NativeWin32Result SetFirmwareEnvironmentVariableW_Wrapper(
  PCWSTR lpName,
  PCWSTR lpGuid,
  Pointer pValue,
  int nSize,
);

@internal
@Native<NativeWin32Result Function(PCWSTR, PCWSTR, Pointer, Uint32, Uint32)>()
external NativeWin32Result SetFirmwareEnvironmentVariableExW_Wrapper(
  PCWSTR lpName,
  PCWSTR lpGuid,
  Pointer pValue,
  int nSize,
  int dwAttributes,
);

@internal
@Native<NativeWin32Result Function(HANDLE, Uint32, Uint32)>()
external NativeWin32Result SetHandleInformation_Wrapper(
  int hObject,
  int dwMask,
  int dwFlags,
);

@internal
@Native<NativeWin32Result Function(HANDLE, Int32, Pointer, Uint32)>()
external NativeWin32Result SetInformationJobObject_Wrapper(
  int hJob,
  int jobObjectInformationClass,
  Pointer lpJobObjectInformation,
  int cbJobObjectInformationLength,
);

@internal
@Native<
  NativeWin32Result Function(
    HANDLE,
    Pointer<JOBOBJECT_IO_RATE_CONTROL_INFORMATION>,
  )
>()
external NativeWin32Result SetIoRateControlInformationJobObject_Wrapper(
  int hJob,
  Pointer<JOBOBJECT_IO_RATE_CONTROL_INFORMATION> ioRateControlInfo,
);

@internal
@Native<
  NativeWin32Result Function(
    HANDLE,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint32>,
  )
>()
external NativeWin32Result SetNamedPipeHandleState_Wrapper(
  int hNamedPipe,
  Pointer<Uint32> lpMode,
  Pointer<Uint32> lpMaxCollectionCount,
  Pointer<Uint32> lpCollectDataTimeout,
);

@internal
@Native<NativeWin32Result Function(HANDLE, IntPtr)>()
external NativeWin32Result SetProcessAffinityMask_Wrapper(
  int hProcess,
  int dwProcessAffinityMask,
);

@internal
@Native<NativeWin32Result Function(HANDLE, BOOL)>()
external NativeWin32Result SetProcessPriorityBoost_Wrapper(
  int hProcess,
  int bDisablePriorityBoost,
);

@internal
@Native<NativeWin32Result Function(HANDLE, IntPtr, IntPtr)>()
external NativeWin32Result SetProcessWorkingSetSize_Wrapper(
  int hProcess,
  int dwMinimumWorkingSetSize,
  int dwMaximumWorkingSetSize,
);

@internal
@Native<NativeWin32Result Function(Uint32, HANDLE)>()
external NativeWin32Result SetStdHandle_Wrapper(int nStdHandle, int hHandle);

@internal
@Native<NativeWin32Result Function(HANDLE, IntPtr)>()
external NativeWin32Result SetThreadAffinityMask_Wrapper(
  int hThread,
  int dwThreadAffinityMask,
);

@internal
@Native<NativeWin32Result Function(Uint32, Pointer<Uint32>)>()
external NativeWin32Result SetThreadErrorMode_Wrapper(
  int dwNewMode,
  Pointer<Uint32> lpOldMode,
);

@internal
@Native<NativeWin32Result Function(Uint16)>()
external NativeWin32Result SetThreadUILanguage_Wrapper(int langId);

@internal
@Native<NativeWin32Result Function(HANDLE, Uint32, Uint32)>()
external NativeWin32Result SetupComm_Wrapper(
  int hFile,
  int dwInQueue,
  int dwOutQueue,
);

@internal
@Native<NativeWin32Result Function(PCWSTR, PCWSTR)>()
external NativeWin32Result SetVolumeLabelW_Wrapper(
  PCWSTR lpRootPathName,
  PCWSTR lpVolumeName,
);

@internal
@Native<NativeWin32Result Function(HMODULE, HRSRC)>()
external NativeWin32Result SizeofResource_Wrapper(int hModule, int hResInfo);

@internal
@Native<NativeWin32Result Function(Pointer<SYSTEMTIME>, Pointer<FILETIME>)>()
external NativeWin32Result SystemTimeToFileTime_Wrapper(
  Pointer<SYSTEMTIME> lpSystemTime,
  Pointer<FILETIME> lpFileTime,
);

@internal
@Native<NativeWin32Result Function(HANDLE, Uint32)>()
external NativeWin32Result TerminateJobObject_Wrapper(int hJob, int uExitCode);

@internal
@Native<NativeWin32Result Function(HANDLE, Uint32)>()
external NativeWin32Result TerminateProcess_Wrapper(
  int hProcess,
  int uExitCode,
);

@internal
@Native<NativeWin32Result Function(HANDLE, Uint32)>()
external NativeWin32Result TerminateThread_Wrapper(int hThread, int dwExitCode);

@internal
@Native<
  NativeWin32Result Function(
    HANDLE,
    Pointer,
    Uint32,
    Pointer,
    Uint32,
    Pointer<Uint32>,
    Pointer<OVERLAPPED>,
  )
>()
external NativeWin32Result TransactNamedPipe_Wrapper(
  int hNamedPipe,
  Pointer lpInBuffer,
  int nInBufferSize,
  Pointer lpOutBuffer,
  int nOutBufferSize,
  Pointer<Uint32> lpBytesRead,
  Pointer<OVERLAPPED> lpOverlapped,
);

@internal
@Native<NativeWin32Result Function(HANDLE, CHAR)>()
external NativeWin32Result TransmitCommChar_Wrapper(int hFile, int cChar);

@internal
@Native<NativeWin32Result Function(HANDLE, Uint32, Uint32, Uint32, Uint32)>()
external NativeWin32Result UnlockFile_Wrapper(
  int hFile,
  int dwFileOffsetLow,
  int dwFileOffsetHigh,
  int nNumberOfBytesToUnlockLow,
  int nNumberOfBytesToUnlockHigh,
);

@internal
@Native<
  NativeWin32Result Function(
    HANDLE,
    Uint32,
    Uint32,
    Uint32,
    Pointer<OVERLAPPED>,
  )
>()
external NativeWin32Result UnlockFileEx_Wrapper(
  int hFile,
  int dwReserved,
  int nNumberOfBytesToUnlockLow,
  int nNumberOfBytesToUnlockHigh,
  Pointer<OVERLAPPED> lpOverlapped,
);

@internal
@Native<
  NativeWin32Result Function(
    LPPROC_THREAD_ATTRIBUTE_LIST,
    Uint32,
    IntPtr,
    Pointer,
    IntPtr,
    Pointer,
    Pointer<IntPtr>,
  )
>()
external NativeWin32Result UpdateProcThreadAttribute_Wrapper(
  int lpAttributeList,
  int dwFlags,
  int attribute,
  Pointer lpValue,
  int cbSize,
  Pointer lpPreviousValue,
  Pointer<IntPtr> lpReturnSize,
);

@internal
@Native<
  NativeWin32Result Function(HANDLE, PCWSTR, PCWSTR, Uint16, Pointer, Uint32)
>()
external NativeWin32Result UpdateResourceW_Wrapper(
  int hUpdate,
  PCWSTR lpType,
  PCWSTR lpName,
  int wLanguage,
  Pointer lpData,
  int cb,
);

@internal
@Native<NativeWin32Result Function(Pointer<OSVERSIONINFOEX>, Uint32, Uint64)>()
external NativeWin32Result VerifyVersionInfoW_Wrapper(
  Pointer<OSVERSIONINFOEX> lpVersionInformation,
  int dwTypeMask,
  int dwlConditionMask,
);

@internal
@Native<NativeWin32Result Function(Pointer, IntPtr, Uint32, Uint32)>()
external NativeWin32Result VirtualAlloc_Wrapper(
  Pointer lpAddress,
  int dwSize,
  int flAllocationType,
  int flProtect,
);

@internal
@Native<NativeWin32Result Function(HANDLE, Pointer, IntPtr, Uint32, Uint32)>()
external NativeWin32Result VirtualAllocEx_Wrapper(
  int hProcess,
  Pointer lpAddress,
  int dwSize,
  int flAllocationType,
  int flProtect,
);

@internal
@Native<NativeWin32Result Function(Pointer, IntPtr, Uint32)>()
external NativeWin32Result VirtualFree_Wrapper(
  Pointer lpAddress,
  int dwSize,
  int dwFreeType,
);

@internal
@Native<NativeWin32Result Function(HANDLE, Pointer, IntPtr, Uint32)>()
external NativeWin32Result VirtualFreeEx_Wrapper(
  int hProcess,
  Pointer lpAddress,
  int dwSize,
  int dwFreeType,
);

@internal
@Native<NativeWin32Result Function(Pointer, IntPtr)>()
external NativeWin32Result VirtualLock_Wrapper(Pointer lpAddress, int dwSize);

@internal
@Native<NativeWin32Result Function(Pointer, IntPtr, Uint32, Pointer<Uint32>)>()
external NativeWin32Result VirtualProtect_Wrapper(
  Pointer lpAddress,
  int dwSize,
  int flNewProtect,
  Pointer<Uint32> lpflOldProtect,
);

@internal
@Native<
  NativeWin32Result Function(HANDLE, Pointer, IntPtr, Uint32, Pointer<Uint32>)
>()
external NativeWin32Result VirtualProtectEx_Wrapper(
  int hProcess,
  Pointer lpAddress,
  int dwSize,
  int flNewProtect,
  Pointer<Uint32> lpflOldProtect,
);

@internal
@Native<
  NativeWin32Result Function(Pointer, Pointer<MEMORY_BASIC_INFORMATION>, IntPtr)
>()
external NativeWin32Result VirtualQuery_Wrapper(
  Pointer lpAddress,
  Pointer<MEMORY_BASIC_INFORMATION> lpBuffer,
  int dwLength,
);

@internal
@Native<
  NativeWin32Result Function(
    HANDLE,
    Pointer,
    Pointer<MEMORY_BASIC_INFORMATION>,
    IntPtr,
  )
>()
external NativeWin32Result VirtualQueryEx_Wrapper(
  int hProcess,
  Pointer lpAddress,
  Pointer<MEMORY_BASIC_INFORMATION> lpBuffer,
  int dwLength,
);

@internal
@Native<NativeWin32Result Function(Pointer, IntPtr)>()
external NativeWin32Result VirtualUnlock_Wrapper(Pointer lpAddress, int dwSize);

@internal
@Native<
  NativeWin32Result Function(HANDLE, Pointer<Uint32>, Pointer<OVERLAPPED>)
>()
external NativeWin32Result WaitCommEvent_Wrapper(
  int hFile,
  Pointer<Uint32> lpEvtMask,
  Pointer<OVERLAPPED> lpOverlapped,
);

@internal
@Native<NativeWin32Result Function(HANDLE, Uint32)>()
external NativeWin32Result WaitForSingleObject_Wrapper(
  int hHandle,
  int dwMilliseconds,
);

@internal
@Native<
  NativeWin32Result Function(
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
external NativeWin32Result WideCharToMultiByte_Wrapper(
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
@Native<NativeWin32Result Function(HANDLE)>()
external NativeWin32Result Wow64SuspendThread_Wrapper(int hThread);

@internal
@Native<
  NativeWin32Result Function(HANDLE, PCWSTR, Uint32, Pointer<Uint32>, Pointer)
>()
external NativeWin32Result WriteConsoleW_Wrapper(
  int hConsoleOutput,
  PCWSTR lpBuffer,
  int nNumberOfCharsToWrite,
  Pointer<Uint32> lpNumberOfCharsWritten,
  Pointer lpReserved,
);

@internal
@Native<
  NativeWin32Result Function(
    HANDLE,
    Pointer<Uint8>,
    Uint32,
    Pointer<Uint32>,
    Pointer<OVERLAPPED>,
  )
>()
external NativeWin32Result WriteFile_Wrapper(
  int hFile,
  Pointer<Uint8> lpBuffer,
  int nNumberOfBytesToWrite,
  Pointer<Uint32> lpNumberOfBytesWritten,
  Pointer<OVERLAPPED> lpOverlapped,
);

@internal
@Native<
  NativeWin32Result Function(
    HANDLE,
    Pointer<Uint8>,
    Uint32,
    Pointer<OVERLAPPED>,
    Pointer<NativeFunction<LPOVERLAPPED_COMPLETION_ROUTINE>>,
  )
>()
external NativeWin32Result WriteFileEx_Wrapper(
  int hFile,
  Pointer<Uint8> lpBuffer,
  int nNumberOfBytesToWrite,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<NativeFunction<LPOVERLAPPED_COMPLETION_ROUTINE>> lpCompletionRoutine,
);

@internal
@Native<
  NativeWin32Result Function(
    HANDLE,
    Pointer<FILE_SEGMENT_ELEMENT>,
    Uint32,
    Pointer<Uint32>,
    Pointer<OVERLAPPED>,
  )
>()
external NativeWin32Result WriteFileGather_Wrapper(
  int hFile,
  Pointer<FILE_SEGMENT_ELEMENT> aSegmentArray,
  int nNumberOfBytesToWrite,
  Pointer<Uint32> lpReserved,
  Pointer<OVERLAPPED> lpOverlapped,
);

@internal
@Native<
  NativeWin32Result Function(HANDLE, Pointer, Pointer, IntPtr, Pointer<IntPtr>)
>()
external NativeWin32Result WriteProcessMemory_Wrapper(
  int hProcess,
  Pointer lpBaseAddress,
  Pointer lpBuffer,
  int nSize,
  Pointer<IntPtr> lpNumberOfBytesWritten,
);
