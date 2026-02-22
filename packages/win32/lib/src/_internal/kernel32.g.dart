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
@Native<NativeWin32Result Function(Pointer, Pointer<IntPtr>)>()
external NativeWin32Result ActivateActCtx_Wrapper(
  Pointer hActCtx,
  Pointer<IntPtr> lpCookie,
);

@internal
@Native<NativeWin32Result Function(Pointer<Utf16>)>()
external NativeWin32Result AddDllDirectory_Wrapper(Pointer<Utf16> newDirectory);

@internal
@Native<NativeWin32Result Function()>()
external NativeWin32Result AllocConsole_Wrapper();

@internal
@Native<NativeWin32Result Function(Pointer, Pointer)>()
external NativeWin32Result AssignProcessToJobObject_Wrapper(
  Pointer hJob,
  Pointer hProcess,
);

@internal
@Native<NativeWin32Result Function(Uint32)>()
external NativeWin32Result AttachConsole_Wrapper(int dwProcessId);

@internal
@Native<NativeWin32Result Function(Uint32, Uint32)>()
external NativeWin32Result Beep_Wrapper(int dwFreq, int dwDuration);

@internal
@Native<NativeWin32Result Function(Pointer<Utf16>, Int32)>()
external NativeWin32Result BeginUpdateResourceW_Wrapper(
  Pointer<Utf16> pFileName,
  int bDeleteExistingResources,
);

@internal
@Native<NativeWin32Result Function(Pointer<Utf16>, Pointer<DCB>)>()
external NativeWin32Result BuildCommDCBW_Wrapper(
  Pointer<Utf16> lpDef,
  Pointer<DCB> lpDCB,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer<Utf16>,
    Pointer<DCB>,
    Pointer<COMMTIMEOUTS>,
  )
>()
external NativeWin32Result BuildCommDCBAndTimeoutsW_Wrapper(
  Pointer<Utf16> lpDef,
  Pointer<DCB> lpDCB,
  Pointer<COMMTIMEOUTS> lpCommTimeouts,
);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result CancelIo_Wrapper(Pointer hFile);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<OVERLAPPED>)>()
external NativeWin32Result CancelIoEx_Wrapper(
  Pointer hFile,
  Pointer<OVERLAPPED> lpOverlapped,
);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result CancelSynchronousIo_Wrapper(Pointer hThread);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<Int32>)>()
external NativeWin32Result CheckRemoteDebuggerPresent_Wrapper(
  Pointer hProcess,
  Pointer<Int32> pbDebuggerPresent,
);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result ClearCommBreak_Wrapper(Pointer hFile);

@internal
@Native<
  NativeWin32Result Function(Pointer, Pointer<Uint32>, Pointer<COMSTAT>)
>()
external NativeWin32Result ClearCommError_Wrapper(
  Pointer hFile,
  Pointer<Uint32> lpErrors,
  Pointer<COMSTAT> lpStat,
);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result CloseHandle_Wrapper(Pointer hObject);

@internal
@Native<
  NativeWin32Result Function(Pointer<Utf16>, Pointer, Pointer<COMMCONFIG>)
>()
external NativeWin32Result CommConfigDialogW_Wrapper(
  Pointer<Utf16> lpszName,
  Pointer hWnd,
  Pointer<COMMCONFIG> lpCC,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<OVERLAPPED>)>()
external NativeWin32Result ConnectNamedPipe_Wrapper(
  Pointer hNamedPipe,
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
@Native<NativeWin32Result Function(Pointer<Utf16>, Pointer<Utf16>, Int32)>()
external NativeWin32Result CopyFileW_Wrapper(
  Pointer<Utf16> lpExistingFileName,
  Pointer<Utf16> lpNewFileName,
  int bFailIfExists,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer<Utf16>,
    Pointer<Utf16>,
    Pointer<NativeFunction<LPPROGRESS_ROUTINE>>,
    Pointer,
    Pointer<Int32>,
    Uint32,
  )
>()
external NativeWin32Result CopyFileExW_Wrapper(
  Pointer<Utf16> lpExistingFileName,
  Pointer<Utf16> lpNewFileName,
  Pointer<NativeFunction<LPPROGRESS_ROUTINE>> lpProgressRoutine,
  Pointer lpData,
  Pointer<Int32> pbCancel,
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
@Native<
  NativeWin32Result Function(Pointer<Utf16>, Pointer<SECURITY_ATTRIBUTES>)
>()
external NativeWin32Result CreateDirectoryW_Wrapper(
  Pointer<Utf16> lpPathName,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer<SECURITY_ATTRIBUTES>,
    Int32,
    Int32,
    Pointer<Utf16>,
  )
>()
external NativeWin32Result CreateEventW_Wrapper(
  Pointer<SECURITY_ATTRIBUTES> lpEventAttributes,
  int bManualReset,
  int bInitialState,
  Pointer<Utf16> lpName,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer<SECURITY_ATTRIBUTES>,
    Pointer<Utf16>,
    Uint32,
    Uint32,
  )
>()
external NativeWin32Result CreateEventExW_Wrapper(
  Pointer<SECURITY_ATTRIBUTES> lpEventAttributes,
  Pointer<Utf16> lpName,
  int dwFlags,
  int dwDesiredAccess,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer<Utf16>,
    Uint32,
    Uint32,
    Pointer<SECURITY_ATTRIBUTES>,
    Uint32,
    Uint32,
    Pointer,
  )
>()
external NativeWin32Result CreateFileW_Wrapper(
  Pointer<Utf16> lpFileName,
  int dwDesiredAccess,
  int dwShareMode,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
  int dwCreationDisposition,
  int dwFlagsAndAttributes,
  Pointer hTemplateFile,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer<Utf16>,
    Uint32,
    Uint32,
    Uint32,
    Pointer<CREATEFILE2_EXTENDED_PARAMETERS>,
  )
>()
external NativeWin32Result CreateFile2_Wrapper(
  Pointer<Utf16> lpFileName,
  int dwDesiredAccess,
  int dwShareMode,
  int dwCreationDisposition,
  Pointer<CREATEFILE2_EXTENDED_PARAMETERS> pCreateExParams,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer, IntPtr, Uint32)>()
external NativeWin32Result CreateIoCompletionPort_Wrapper(
  Pointer fileHandle,
  Pointer existingCompletionPort,
  int completionKey,
  int numberOfConcurrentThreads,
);

@internal
@Native<
  NativeWin32Result Function(Pointer<SECURITY_ATTRIBUTES>, Pointer<Utf16>)
>()
external NativeWin32Result CreateJobObjectW_Wrapper(
  Pointer<SECURITY_ATTRIBUTES> lpJobAttributes,
  Pointer<Utf16> lpName,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer<Pointer>,
    Pointer<Pointer>,
    Pointer<SECURITY_ATTRIBUTES>,
    Uint32,
  )
>()
external NativeWin32Result CreatePipe_Wrapper(
  Pointer<Pointer> hReadPipe,
  Pointer<Pointer> hWritePipe,
  Pointer<SECURITY_ATTRIBUTES> lpPipeAttributes,
  int nSize,
);

@internal
@Native<
  NativeWin32Result Function(
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
  )
>()
external NativeWin32Result CreateProcessW_Wrapper(
  Pointer<Utf16> lpApplicationName,
  Pointer<Utf16> lpCommandLine,
  Pointer<SECURITY_ATTRIBUTES> lpProcessAttributes,
  Pointer<SECURITY_ATTRIBUTES> lpThreadAttributes,
  int bInheritHandles,
  int dwCreationFlags,
  Pointer lpEnvironment,
  Pointer<Utf16> lpCurrentDirectory,
  Pointer<STARTUPINFO> lpStartupInfo,
  Pointer<PROCESS_INFORMATION> lpProcessInformation,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Pointer<SECURITY_ATTRIBUTES>,
    IntPtr,
    Pointer<NativeFunction<LPTHREAD_START_ROUTINE>>,
    Pointer,
    Uint32,
    Pointer<Uint32>,
  )
>()
external NativeWin32Result CreateRemoteThread_Wrapper(
  Pointer hProcess,
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
    Pointer,
    Pointer<SECURITY_ATTRIBUTES>,
    IntPtr,
    Pointer<NativeFunction<LPTHREAD_START_ROUTINE>>,
    Pointer,
    Uint32,
    Pointer,
    Pointer<Uint32>,
  )
>()
external NativeWin32Result CreateRemoteThreadEx_Wrapper(
  Pointer hProcess,
  Pointer<SECURITY_ATTRIBUTES> lpThreadAttributes,
  int dwStackSize,
  Pointer<NativeFunction<LPTHREAD_START_ROUTINE>> lpStartAddress,
  Pointer lpParameter,
  int dwCreationFlags,
  Pointer lpAttributeList,
  Pointer<Uint32> lpThreadId,
);

@internal
@Native<NativeWin32Result Function(Pointer<Utf16>, Pointer<Utf16>, Uint32)>()
external NativeWin32Result CreateSymbolicLinkW_Wrapper(
  Pointer<Utf16> lpSymlinkFileName,
  Pointer<Utf16> lpTargetFileName,
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
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result DebugBreakProcess_Wrapper(Pointer process);

@internal
@Native<NativeWin32Result Function(Int32)>()
external NativeWin32Result DebugSetProcessKillOnExit_Wrapper(int killOnExit);

@internal
@Native<NativeWin32Result Function(Uint32, Pointer<Utf16>, Pointer<Utf16>)>()
external NativeWin32Result DefineDosDeviceW_Wrapper(
  int dwFlags,
  Pointer<Utf16> lpDeviceName,
  Pointer<Utf16> lpTargetPath,
);

@internal
@Native<NativeWin32Result Function(Pointer<Utf16>)>()
external NativeWin32Result DeleteFileW_Wrapper(Pointer<Utf16> lpFileName);

@internal
@Native<NativeWin32Result Function(Pointer<Utf16>)>()
external NativeWin32Result DeleteVolumeMountPointW_Wrapper(
  Pointer<Utf16> lpszVolumeMountPoint,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
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
  Pointer hDevice,
  int dwIoControlCode,
  Pointer lpInBuffer,
  int nInBufferSize,
  Pointer lpOutBuffer,
  int nOutBufferSize,
  Pointer<Uint32> lpBytesReturned,
  Pointer<OVERLAPPED> lpOverlapped,
);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result DisableThreadLibraryCalls_Wrapper(
  Pointer hLibModule,
);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result DisconnectNamedPipe_Wrapper(Pointer hNamedPipe);

@internal
@Native<
  NativeWin32Result Function(Pointer<Utf16>, Pointer<Utf16>, Pointer<Uint32>)
>()
external NativeWin32Result DnsHostnameToComputerNameW_Wrapper(
  Pointer<Utf16> hostname,
  Pointer<Utf16> computerName,
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
    Pointer,
    Pointer,
    Pointer,
    Pointer<Pointer>,
    Uint32,
    Int32,
    Uint32,
  )
>()
external NativeWin32Result DuplicateHandle_Wrapper(
  Pointer hSourceProcessHandle,
  Pointer hSourceHandle,
  Pointer hTargetProcessHandle,
  Pointer<Pointer> lpTargetHandle,
  int dwDesiredAccess,
  int bInheritHandle,
  int dwOptions,
);

@internal
@Native<NativeWin32Result Function(Pointer, Int32)>()
external NativeWin32Result EndUpdateResourceW_Wrapper(
  Pointer hUpdate,
  int fDiscard,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Pointer<NativeFunction<ENUMRESTYPEPROC>>,
    IntPtr,
  )
>()
external NativeWin32Result EnumResourceTypesW_Wrapper(
  Pointer hModule,
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
@Native<NativeWin32Result Function(Pointer, Uint32)>()
external NativeWin32Result EscapeCommFunction_Wrapper(
  Pointer hFile,
  int dwFunc,
);

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
  NativeWin32Result Function(Pointer, Uint16, Uint32, COORD, Pointer<Uint32>)
>()
external NativeWin32Result FillConsoleOutputAttribute_Wrapper(
  Pointer hConsoleOutput,
  int wAttribute,
  int nLength,
  COORD dwWriteCoord,
  Pointer<Uint32> lpNumberOfAttrsWritten,
);

@internal
@Native<
  NativeWin32Result Function(Pointer, Uint16, Uint32, COORD, Pointer<Uint32>)
>()
external NativeWin32Result FillConsoleOutputCharacterW_Wrapper(
  Pointer hConsoleOutput,
  int cCharacter,
  int nLength,
  COORD dwWriteCoord,
  Pointer<Uint32> lpNumberOfCharsWritten,
);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result FindClose_Wrapper(Pointer hFindFile);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result FindCloseChangeNotification_Wrapper(
  Pointer hChangeHandle,
);

@internal
@Native<NativeWin32Result Function(Pointer<Utf16>, Int32, Uint32)>()
external NativeWin32Result FindFirstChangeNotificationW_Wrapper(
  Pointer<Utf16> lpPathName,
  int bWatchSubtree,
  int dwNotifyFilter,
);

@internal
@Native<NativeWin32Result Function(Pointer<Utf16>, Pointer<WIN32_FIND_DATA>)>()
external NativeWin32Result FindFirstFileW_Wrapper(
  Pointer<Utf16> lpFileName,
  Pointer<WIN32_FIND_DATA> lpFindFileData,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer<Utf16>,
    Int32,
    Pointer,
    Int32,
    Pointer,
    Uint32,
  )
>()
external NativeWin32Result FindFirstFileExW_Wrapper(
  Pointer<Utf16> lpFileName,
  int fInfoLevelId,
  Pointer lpFindFileData,
  int fSearchOp,
  Pointer lpSearchFilter,
  int dwAdditionalFlags,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer<Utf16>,
    Uint32,
    Pointer<Uint32>,
    Pointer<Utf16>,
  )
>()
external NativeWin32Result FindFirstFileNameW_Wrapper(
  Pointer<Utf16> lpFileName,
  int dwFlags,
  Pointer<Uint32> stringLength,
  Pointer<Utf16> linkName,
);

@internal
@Native<NativeWin32Result Function(Pointer<Utf16>, Int32, Pointer, Uint32)>()
external NativeWin32Result FindFirstStreamW_Wrapper(
  Pointer<Utf16> lpFileName,
  int infoLevel,
  Pointer lpFindStreamData,
  int dwFlags,
);

@internal
@Native<NativeWin32Result Function(Pointer<Utf16>, Uint32)>()
external NativeWin32Result FindFirstVolumeW_Wrapper(
  Pointer<Utf16> lpszVolumeName,
  int cchBufferLength,
);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result FindNextChangeNotification_Wrapper(
  Pointer hChangeHandle,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<WIN32_FIND_DATA>)>()
external NativeWin32Result FindNextFileW_Wrapper(
  Pointer hFindFile,
  Pointer<WIN32_FIND_DATA> lpFindFileData,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<Uint32>, Pointer<Utf16>)>()
external NativeWin32Result FindNextFileNameW_Wrapper(
  Pointer hFindStream,
  Pointer<Uint32> stringLength,
  Pointer<Utf16> linkName,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer)>()
external NativeWin32Result FindNextStreamW_Wrapper(
  Pointer hFindStream,
  Pointer lpFindStreamData,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<Utf16>, Uint32)>()
external NativeWin32Result FindNextVolumeW_Wrapper(
  Pointer hFindVolume,
  Pointer<Utf16> lpszVolumeName,
  int cchBufferLength,
);

@internal
@Native<
  NativeWin32Result Function(
    Uint32,
    Pointer<Utf16>,
    Int32,
    Pointer<Utf16>,
    Int32,
    Int32,
  )
>()
external NativeWin32Result FindStringOrdinal_Wrapper(
  int dwFindStringOrdinalFlags,
  Pointer<Utf16> lpStringSource,
  int cchSource,
  Pointer<Utf16> lpStringValue,
  int cchValue,
  int bIgnoreCase,
);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result FindVolumeClose_Wrapper(Pointer hFindVolume);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result FlushConsoleInputBuffer_Wrapper(
  Pointer hConsoleInput,
);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result FlushFileBuffers_Wrapper(Pointer hFile);

@internal
@Native<
  NativeWin32Result Function(
    Uint32,
    Pointer,
    Uint32,
    Uint32,
    Pointer<Utf16>,
    Uint32,
    Pointer<Pointer<Int8>>,
  )
>()
external NativeWin32Result FormatMessageW_Wrapper(
  int dwFlags,
  Pointer lpSource,
  int dwMessageId,
  int dwLanguageId,
  Pointer<Utf16> lpBuffer,
  int nSize,
  Pointer<Pointer<Int8>> arguments,
);

@internal
@Native<NativeWin32Result Function()>()
external NativeWin32Result FreeConsole_Wrapper();

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result FreeLibrary_Wrapper(Pointer hLibModule);

@internal
@Native<NativeWin32Result Function(Uint16)>()
external NativeWin32Result GetActiveProcessorCount_Wrapper(int groupNumber);

@internal
@Native<NativeWin32Result Function(Pointer<Utf16>, Pointer<Uint32>)>()
external NativeWin32Result GetBinaryTypeW_Wrapper(
  Pointer<Utf16> lpApplicationName,
  Pointer<Uint32> lpBinaryType,
);

@internal
@Native<
  NativeWin32Result Function(Pointer, Pointer<COMMCONFIG>, Pointer<Uint32>)
>()
external NativeWin32Result GetCommConfig_Wrapper(
  Pointer hCommDev,
  Pointer<COMMCONFIG> lpCC,
  Pointer<Uint32> lpdwSize,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<Uint32>)>()
external NativeWin32Result GetCommMask_Wrapper(
  Pointer hFile,
  Pointer<Uint32> lpEvtMask,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<Uint32>)>()
external NativeWin32Result GetCommModemStatus_Wrapper(
  Pointer hFile,
  Pointer<Uint32> lpModemStat,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<COMMPROP>)>()
external NativeWin32Result GetCommProperties_Wrapper(
  Pointer hFile,
  Pointer<COMMPROP> lpCommProp,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<DCB>)>()
external NativeWin32Result GetCommState_Wrapper(
  Pointer hFile,
  Pointer<DCB> lpDCB,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<COMMTIMEOUTS>)>()
external NativeWin32Result GetCommTimeouts_Wrapper(
  Pointer hFile,
  Pointer<COMMTIMEOUTS> lpCommTimeouts,
);

@internal
@Native<NativeWin32Result Function(Pointer<Utf16>, Pointer<Uint32>)>()
external NativeWin32Result GetCompressedFileSizeW_Wrapper(
  Pointer<Utf16> lpFileName,
  Pointer<Uint32> lpFileSizeHigh,
);

@internal
@Native<NativeWin32Result Function(Pointer<Utf16>, Pointer<Uint32>)>()
external NativeWin32Result GetComputerNameW_Wrapper(
  Pointer<Utf16> lpBuffer,
  Pointer<Uint32> nSize,
);

@internal
@Native<NativeWin32Result Function(Int32, Pointer<Utf16>, Pointer<Uint32>)>()
external NativeWin32Result GetComputerNameExW_Wrapper(
  int nameType,
  Pointer<Utf16> lpBuffer,
  Pointer<Uint32> nSize,
);

@internal
@Native<NativeWin32Result Function()>()
external NativeWin32Result GetConsoleCP_Wrapper();

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<CONSOLE_CURSOR_INFO>)>()
external NativeWin32Result GetConsoleCursorInfo_Wrapper(
  Pointer hConsoleOutput,
  Pointer<CONSOLE_CURSOR_INFO> lpConsoleCursorInfo,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<Uint32>)>()
external NativeWin32Result GetConsoleMode_Wrapper(
  Pointer hConsoleHandle,
  Pointer<Uint32> lpMode,
);

@internal
@Native<NativeWin32Result Function()>()
external NativeWin32Result GetConsoleOutputCP_Wrapper();

@internal
@Native<
  NativeWin32Result Function(Pointer, Pointer<CONSOLE_SCREEN_BUFFER_INFO>)
>()
external NativeWin32Result GetConsoleScreenBufferInfo_Wrapper(
  Pointer hConsoleOutput,
  Pointer<CONSOLE_SCREEN_BUFFER_INFO> lpConsoleScreenBufferInfo,
);

@internal
@Native<NativeWin32Result Function(Pointer<CONSOLE_SELECTION_INFO>)>()
external NativeWin32Result GetConsoleSelectionInfo_Wrapper(
  Pointer<CONSOLE_SELECTION_INFO> lpConsoleSelectionInfo,
);

@internal
@Native<NativeWin32Result Function(Pointer<Utf16>, Uint32)>()
external NativeWin32Result GetConsoleTitleW_Wrapper(
  Pointer<Utf16> lpConsoleTitle,
  int nSize,
);

@internal
@Native<NativeWin32Result Function(Pointer<Pointer>)>()
external NativeWin32Result GetCurrentActCtx_Wrapper(Pointer<Pointer> lphActCtx);

@internal
@Native<
  NativeWin32Result Function(
    Pointer<Utf16>,
    Pointer<COMMCONFIG>,
    Pointer<Uint32>,
  )
>()
external NativeWin32Result GetDefaultCommConfigW_Wrapper(
  Pointer<Utf16> lpszName,
  Pointer<COMMCONFIG> lpCC,
  Pointer<Uint32> lpdwSize,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer<Utf16>,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint32>,
  )
>()
external NativeWin32Result GetDiskFreeSpaceW_Wrapper(
  Pointer<Utf16> lpRootPathName,
  Pointer<Uint32> lpSectorsPerCluster,
  Pointer<Uint32> lpBytesPerSector,
  Pointer<Uint32> lpNumberOfFreeClusters,
  Pointer<Uint32> lpTotalNumberOfClusters,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer<Utf16>,
    Pointer<Uint64>,
    Pointer<Uint64>,
    Pointer<Uint64>,
  )
>()
external NativeWin32Result GetDiskFreeSpaceExW_Wrapper(
  Pointer<Utf16> lpDirectoryName,
  Pointer<Uint64> lpFreeBytesAvailableToCaller,
  Pointer<Uint64> lpTotalNumberOfBytes,
  Pointer<Uint64> lpTotalNumberOfFreeBytes,
);

@internal
@Native<NativeWin32Result Function(Uint32, Pointer<Utf16>)>()
external NativeWin32Result GetDllDirectoryW_Wrapper(
  int nBufferLength,
  Pointer<Utf16> lpBuffer,
);

@internal
@Native<NativeWin32Result Function(Pointer<Utf16>, Pointer<Utf16>, Uint32)>()
external NativeWin32Result GetEnvironmentVariableW_Wrapper(
  Pointer<Utf16> lpName,
  Pointer<Utf16> lpBuffer,
  int nSize,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<Uint32>)>()
external NativeWin32Result GetExitCodeProcess_Wrapper(
  Pointer hProcess,
  Pointer<Uint32> lpExitCode,
);

@internal
@Native<NativeWin32Result Function(Pointer<Utf16>)>()
external NativeWin32Result GetFileAttributesW_Wrapper(
  Pointer<Utf16> lpFileName,
);

@internal
@Native<NativeWin32Result Function(Pointer<Utf16>, Int32, Pointer)>()
external NativeWin32Result GetFileAttributesExW_Wrapper(
  Pointer<Utf16> lpFileName,
  int fInfoLevelId,
  Pointer lpFileInformation,
);

@internal
@Native<
  NativeWin32Result Function(Pointer, Pointer<BY_HANDLE_FILE_INFORMATION>)
>()
external NativeWin32Result GetFileInformationByHandle_Wrapper(
  Pointer hFile,
  Pointer<BY_HANDLE_FILE_INFORMATION> lpFileInformation,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<Uint32>)>()
external NativeWin32Result GetFileSize_Wrapper(
  Pointer hFile,
  Pointer<Uint32> lpFileSizeHigh,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<Int64>)>()
external NativeWin32Result GetFileSizeEx_Wrapper(
  Pointer hFile,
  Pointer<Int64> lpFileSize,
);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result GetFileType_Wrapper(Pointer hFile);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<Utf16>, Uint32, Uint32)>()
external NativeWin32Result GetFinalPathNameByHandleW_Wrapper(
  Pointer hFile,
  Pointer<Utf16> lpszFilePath,
  int cchFilePath,
  int dwFlags,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer<Utf16>,
    Uint32,
    Pointer<Utf16>,
    Pointer<Pointer<Utf16>>,
  )
>()
external NativeWin32Result GetFullPathNameW_Wrapper(
  Pointer<Utf16> lpFileName,
  int nBufferLength,
  Pointer<Utf16> lpBuffer,
  Pointer<Pointer<Utf16>> lpFilePart,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<Uint32>)>()
external NativeWin32Result GetHandleInformation_Wrapper(
  Pointer hObject,
  Pointer<Uint32> lpdwFlags,
);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result GetLargestConsoleWindowSize_Wrapper(
  Pointer hConsoleOutput,
);

@internal
@Native<
  NativeWin32Result Function(Pointer<Utf16>, Uint32, Pointer<Utf16>, Int32)
>()
external NativeWin32Result GetLocaleInfoEx_Wrapper(
  Pointer<Utf16> lpLocaleName,
  int lCType,
  Pointer<Utf16> lpLCData,
  int cchData,
);

@internal
@Native<NativeWin32Result Function()>()
external NativeWin32Result GetLogicalDrives_Wrapper();

@internal
@Native<NativeWin32Result Function(Uint32, Pointer<Utf16>)>()
external NativeWin32Result GetLogicalDriveStringsW_Wrapper(
  int nBufferLength,
  Pointer<Utf16> lpBuffer,
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
@Native<NativeWin32Result Function(Pointer<Utf16>, Pointer<Utf16>, Uint32)>()
external NativeWin32Result GetLongPathNameW_Wrapper(
  Pointer<Utf16> lpszShortPath,
  Pointer<Utf16> lpszLongPath,
  int cchBuffer,
);

@internal
@Native<NativeWin32Result Function(Uint16)>()
external NativeWin32Result GetMaximumProcessorCount_Wrapper(int groupNumber);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<Utf16>, Uint32)>()
external NativeWin32Result GetModuleFileNameW_Wrapper(
  Pointer hModule,
  Pointer<Utf16> lpFilename,
  int nSize,
);

@internal
@Native<NativeWin32Result Function(Pointer<Utf16>)>()
external NativeWin32Result GetModuleHandleW_Wrapper(
  Pointer<Utf16> lpModuleName,
);

@internal
@Native<NativeWin32Result Function(Uint32, Pointer<Utf16>, Pointer<Pointer>)>()
external NativeWin32Result GetModuleHandleExW_Wrapper(
  int dwFlags,
  Pointer<Utf16> lpModuleName,
  Pointer<Pointer> phModule,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<Uint32>)>()
external NativeWin32Result GetNamedPipeClientProcessId_Wrapper(
  Pointer pipe,
  Pointer<Uint32> clientProcessId,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<Uint32>)>()
external NativeWin32Result GetNamedPipeClientSessionId_Wrapper(
  Pointer pipe,
  Pointer<Uint32> clientSessionId,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint32>,
  )
>()
external NativeWin32Result GetNamedPipeInfo_Wrapper(
  Pointer hNamedPipe,
  Pointer<Uint32> lpFlags,
  Pointer<Uint32> lpOutBufferSize,
  Pointer<Uint32> lpInBufferSize,
  Pointer<Uint32> lpMaxInstances,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<Uint32>)>()
external NativeWin32Result GetNumberOfConsoleInputEvents_Wrapper(
  Pointer hConsoleInput,
  Pointer<Uint32> lpNumberOfEvents,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Pointer<OVERLAPPED>,
    Pointer<Uint32>,
    Int32,
  )
>()
external NativeWin32Result GetOverlappedResult_Wrapper(
  Pointer hFile,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<Uint32> lpNumberOfBytesTransferred,
  int bWait,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Pointer<OVERLAPPED>,
    Pointer<Uint32>,
    Uint32,
    Int32,
  )
>()
external NativeWin32Result GetOverlappedResultEx_Wrapper(
  Pointer hFile,
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
@Native<NativeWin32Result Function(Pointer, Pointer<Utf8>)>()
external NativeWin32Result GetProcAddress_Wrapper(
  Pointer hModule,
  Pointer<Utf8> lpProcName,
);

@internal
@Native<NativeWin32Result Function()>()
external NativeWin32Result GetProcessHeap_Wrapper();

@internal
@Native<NativeWin32Result Function(Uint32, Pointer<Pointer>)>()
external NativeWin32Result GetProcessHeaps_Wrapper(
  int numberOfHeaps,
  Pointer<Pointer> processHeaps,
);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result GetProcessId_Wrapper(Pointer process);

@internal
@Native<NativeWin32Result Function(Pointer<Uint32>, Pointer<Uint32>)>()
external NativeWin32Result GetProcessShutdownParameters_Wrapper(
  Pointer<Uint32> lpdwLevel,
  Pointer<Uint32> lpdwFlags,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Pointer<FILETIME>,
    Pointer<FILETIME>,
    Pointer<FILETIME>,
    Pointer<FILETIME>,
  )
>()
external NativeWin32Result GetProcessTimes_Wrapper(
  Pointer hProcess,
  Pointer<FILETIME> lpCreationTime,
  Pointer<FILETIME> lpExitTime,
  Pointer<FILETIME> lpKernelTime,
  Pointer<FILETIME> lpUserTime,
);

@internal
@Native<NativeWin32Result Function(Uint32)>()
external NativeWin32Result GetProcessVersion_Wrapper(int processId);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<IntPtr>, Pointer<IntPtr>)>()
external NativeWin32Result GetProcessWorkingSetSize_Wrapper(
  Pointer hProcess,
  Pointer<IntPtr> lpMinimumWorkingSetSize,
  Pointer<IntPtr> lpMaximumWorkingSetSize,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Pointer<Uint32>,
    Pointer<IntPtr>,
    Pointer<Pointer<OVERLAPPED>>,
    Uint32,
  )
>()
external NativeWin32Result GetQueuedCompletionStatus_Wrapper(
  Pointer completionPort,
  Pointer<Uint32> lpNumberOfBytesTransferred,
  Pointer<IntPtr> lpCompletionKey,
  Pointer<Pointer<OVERLAPPED>> lpOverlapped,
  int dwMilliseconds,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Pointer<OVERLAPPED_ENTRY>,
    Uint32,
    Pointer<Uint32>,
    Uint32,
    Int32,
  )
>()
external NativeWin32Result GetQueuedCompletionStatusEx_Wrapper(
  Pointer completionPort,
  Pointer<OVERLAPPED_ENTRY> lpCompletionPortEntries,
  int ulCount,
  Pointer<Uint32> ulNumEntriesRemoved,
  int dwMilliseconds,
  int fAlertable,
);

@internal
@Native<NativeWin32Result Function(Pointer<Utf16>, Pointer<Utf16>, Uint32)>()
external NativeWin32Result GetShortPathNameW_Wrapper(
  Pointer<Utf16> lpszLongPath,
  Pointer<Utf16> lpszShortPath,
  int cchBuffer,
);

@internal
@Native<NativeWin32Result Function(Uint32)>()
external NativeWin32Result GetStdHandle_Wrapper(int nStdHandle);

@internal
@Native<NativeWin32Result Function(Pointer<Utf16>, Int32)>()
external NativeWin32Result GetSystemDefaultLocaleName_Wrapper(
  Pointer<Utf16> lpLocaleName,
  int cchLocaleName,
);

@internal
@Native<NativeWin32Result Function(Pointer<Utf16>, Uint32)>()
external NativeWin32Result GetSystemDirectoryW_Wrapper(
  Pointer<Utf16> lpBuffer,
  int uSize,
);

@internal
@Native<NativeWin32Result Function(Pointer<SYSTEM_POWER_STATUS>)>()
external NativeWin32Result GetSystemPowerStatus_Wrapper(
  Pointer<SYSTEM_POWER_STATUS> lpSystemPowerStatus,
);

@internal
@Native<
  NativeWin32Result Function(Pointer<Uint32>, Pointer<Uint32>, Pointer<Int32>)
>()
external NativeWin32Result GetSystemTimeAdjustment_Wrapper(
  Pointer<Uint32> lpTimeAdjustment,
  Pointer<Uint32> lpTimeIncrement,
  Pointer<Int32> lpTimeAdjustmentDisabled,
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
@Native<
  NativeWin32Result Function(
    Pointer<Utf16>,
    Pointer<Utf16>,
    Uint32,
    Pointer<Utf16>,
  )
>()
external NativeWin32Result GetTempFileNameW_Wrapper(
  Pointer<Utf16> lpPathName,
  Pointer<Utf16> lpPrefixString,
  int uUnique,
  Pointer<Utf16> lpTempFileName,
);

@internal
@Native<NativeWin32Result Function(Uint32, Pointer<Utf16>)>()
external NativeWin32Result GetTempPathW_Wrapper(
  int nBufferLength,
  Pointer<Utf16> lpBuffer,
);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result GetThreadId_Wrapper(Pointer thread);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Pointer<FILETIME>,
    Pointer<FILETIME>,
    Pointer<FILETIME>,
    Pointer<FILETIME>,
  )
>()
external NativeWin32Result GetThreadTimes_Wrapper(
  Pointer hThread,
  Pointer<FILETIME> lpCreationTime,
  Pointer<FILETIME> lpExitTime,
  Pointer<FILETIME> lpKernelTime,
  Pointer<FILETIME> lpUserTime,
);

@internal
@Native<NativeWin32Result Function(Pointer<Utf16>, Int32)>()
external NativeWin32Result GetUserDefaultLocaleName_Wrapper(
  Pointer<Utf16> lpLocaleName,
  int cchLocaleName,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer<Utf16>,
    Pointer<Utf16>,
    Uint32,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Utf16>,
    Uint32,
  )
>()
external NativeWin32Result GetVolumeInformationW_Wrapper(
  Pointer<Utf16> lpRootPathName,
  Pointer<Utf16> lpVolumeNameBuffer,
  int nVolumeNameSize,
  Pointer<Uint32> lpVolumeSerialNumber,
  Pointer<Uint32> lpMaximumComponentLength,
  Pointer<Uint32> lpFileSystemFlags,
  Pointer<Utf16> lpFileSystemNameBuffer,
  int nFileSystemNameSize,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Pointer<Utf16>,
    Uint32,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Utf16>,
    Uint32,
  )
>()
external NativeWin32Result GetVolumeInformationByHandleW_Wrapper(
  Pointer hFile,
  Pointer<Utf16> lpVolumeNameBuffer,
  int nVolumeNameSize,
  Pointer<Uint32> lpVolumeSerialNumber,
  Pointer<Uint32> lpMaximumComponentLength,
  Pointer<Uint32> lpFileSystemFlags,
  Pointer<Utf16> lpFileSystemNameBuffer,
  int nFileSystemNameSize,
);

@internal
@Native<NativeWin32Result Function(Pointer<Utf16>, Pointer<Utf16>, Uint32)>()
external NativeWin32Result GetVolumeNameForVolumeMountPointW_Wrapper(
  Pointer<Utf16> lpszVolumeMountPoint,
  Pointer<Utf16> lpszVolumeName,
  int cchBufferLength,
);

@internal
@Native<NativeWin32Result Function(Pointer<Utf16>, Pointer<Utf16>, Uint32)>()
external NativeWin32Result GetVolumePathNameW_Wrapper(
  Pointer<Utf16> lpszFileName,
  Pointer<Utf16> lpszVolumePathName,
  int cchBufferLength,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer<Utf16>,
    Pointer<Utf16>,
    Uint32,
    Pointer<Uint32>,
  )
>()
external NativeWin32Result GetVolumePathNamesForVolumeNameW_Wrapper(
  Pointer<Utf16> lpszVolumeName,
  Pointer<Utf16> lpszVolumePathNames,
  int cchBufferLength,
  Pointer<Uint32> lpcchReturnLength,
);

@internal
@Native<NativeWin32Result Function(Uint32, IntPtr)>()
external NativeWin32Result GlobalAlloc_Wrapper(int uFlags, int dwBytes);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result GlobalFree_Wrapper(Pointer hMem);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result GlobalLock_Wrapper(Pointer hMem);

@internal
@Native<NativeWin32Result Function(Pointer<MEMORYSTATUSEX>)>()
external NativeWin32Result GlobalMemoryStatusEx_Wrapper(
  Pointer<MEMORYSTATUSEX> lpBuffer,
);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result GlobalSize_Wrapper(Pointer hMem);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result GlobalUnlock_Wrapper(Pointer hMem);

@internal
@Native<NativeWin32Result Function(Pointer, Uint32)>()
external NativeWin32Result HeapCompact_Wrapper(Pointer hHeap, int dwFlags);

@internal
@Native<NativeWin32Result Function(Uint32, IntPtr, IntPtr)>()
external NativeWin32Result HeapCreate_Wrapper(
  int flOptions,
  int dwInitialSize,
  int dwMaximumSize,
);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result HeapDestroy_Wrapper(Pointer hHeap);

@internal
@Native<NativeWin32Result Function(Pointer, Uint32, Pointer)>()
external NativeWin32Result HeapFree_Wrapper(
  Pointer hHeap,
  int dwFlags,
  Pointer lpMem,
);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result HeapLock_Wrapper(Pointer hHeap);

@internal
@Native<
  NativeWin32Result Function(Pointer, Int32, Pointer, IntPtr, Pointer<IntPtr>)
>()
external NativeWin32Result HeapQueryInformation_Wrapper(
  Pointer heapHandle,
  int heapInformationClass,
  Pointer heapInformation,
  int heapInformationLength,
  Pointer<IntPtr> returnLength,
);

@internal
@Native<NativeWin32Result Function(Pointer, Int32, Pointer, IntPtr)>()
external NativeWin32Result HeapSetInformation_Wrapper(
  Pointer heapHandle,
  int heapInformationClass,
  Pointer heapInformation,
  int heapInformationLength,
);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result HeapUnlock_Wrapper(Pointer hHeap);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<PROCESS_HEAP_ENTRY>)>()
external NativeWin32Result HeapWalk_Wrapper(
  Pointer hHeap,
  Pointer<PROCESS_HEAP_ENTRY> lpEntry,
);

@internal
@Native<NativeWin32Result Function(Pointer, Uint32, Uint32, Pointer<IntPtr>)>()
external NativeWin32Result InitializeProcThreadAttributeList_Wrapper(
  Pointer lpAttributeList,
  int dwAttributeCount,
  int dwFlags,
  Pointer<IntPtr> lpSize,
);

@internal
@Native<NativeWin32Result Function(Pointer<Int32>)>()
external NativeWin32Result IsNativeVhdBoot_Wrapper(
  Pointer<Int32> nativeVhdBoot,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer, Pointer<Int32>)>()
external NativeWin32Result IsProcessInJob_Wrapper(
  Pointer processHandle,
  Pointer jobHandle,
  Pointer<Int32> result,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<Uint16>, Pointer<Uint16>)>()
external NativeWin32Result IsWow64Process2_Wrapper(
  Pointer hProcess,
  Pointer<Uint16> pProcessMachine,
  Pointer<Uint16> pNativeMachine,
);

@internal
@Native<NativeWin32Result Function(Pointer<Utf16>)>()
external NativeWin32Result LoadLibraryW_Wrapper(Pointer<Utf16> lpLibFileName);

@internal
@Native<NativeWin32Result Function(Pointer<Utf16>, Pointer, Uint32)>()
external NativeWin32Result LoadLibraryExW_Wrapper(
  Pointer<Utf16> lpLibFileName,
  Pointer hFile,
  int dwFlags,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer)>()
external NativeWin32Result LoadResource_Wrapper(
  Pointer hModule,
  Pointer hResInfo,
);

@internal
@Native<NativeWin32Result Function(Uint32, IntPtr)>()
external NativeWin32Result LocalAlloc_Wrapper(int uFlags, int uBytes);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result LocalFree_Wrapper(Pointer hMem);

@internal
@Native<NativeWin32Result Function(Pointer, Uint32, Uint32, Uint32, Uint32)>()
external NativeWin32Result LockFile_Wrapper(
  Pointer hFile,
  int dwFileOffsetLow,
  int dwFileOffsetHigh,
  int nNumberOfBytesToLockLow,
  int nNumberOfBytesToLockHigh,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Uint32,
    Uint32,
    Uint32,
    Uint32,
    Pointer<OVERLAPPED>,
  )
>()
external NativeWin32Result LockFileEx_Wrapper(
  Pointer hFile,
  int dwFlags,
  int dwReserved,
  int nNumberOfBytesToLockLow,
  int nNumberOfBytesToLockHigh,
  Pointer<OVERLAPPED> lpOverlapped,
);

@internal
@Native<NativeWin32Result Function(Pointer<Utf16>, Pointer<Utf16>)>()
external NativeWin32Result MoveFileW_Wrapper(
  Pointer<Utf16> lpExistingFileName,
  Pointer<Utf16> lpNewFileName,
);

@internal
@Native<NativeWin32Result Function(Pointer<Utf16>, Pointer<Utf16>, Uint32)>()
external NativeWin32Result MoveFileExW_Wrapper(
  Pointer<Utf16> lpExistingFileName,
  Pointer<Utf16> lpNewFileName,
  int dwFlags,
);

@internal
@Native<NativeWin32Result Function(Uint32, Int32, Pointer<Utf16>)>()
external NativeWin32Result OpenEventW_Wrapper(
  int dwDesiredAccess,
  int bInheritHandle,
  Pointer<Utf16> lpName,
);

@internal
@Native<NativeWin32Result Function(Uint32, Int32, Pointer<Utf16>)>()
external NativeWin32Result OpenJobObjectW_Wrapper(
  int dwDesiredAccess,
  int bInheritHandle,
  Pointer<Utf16> lpName,
);

@internal
@Native<NativeWin32Result Function(Uint32, Int32, Uint32)>()
external NativeWin32Result OpenProcess_Wrapper(
  int dwDesiredAccess,
  int bInheritHandle,
  int dwProcessId,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Pointer<INPUT_RECORD>,
    Uint32,
    Pointer<Uint32>,
  )
>()
external NativeWin32Result PeekConsoleInputW_Wrapper(
  Pointer hConsoleInput,
  Pointer<INPUT_RECORD> lpBuffer,
  int nLength,
  Pointer<Uint32> lpNumberOfEventsRead,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Pointer,
    Uint32,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint32>,
  )
>()
external NativeWin32Result PeekNamedPipe_Wrapper(
  Pointer hNamedPipe,
  Pointer lpBuffer,
  int nBufferSize,
  Pointer<Uint32> lpBytesRead,
  Pointer<Uint32> lpTotalBytesAvail,
  Pointer<Uint32> lpBytesLeftThisMessage,
);

@internal
@Native<
  NativeWin32Result Function(Pointer, Uint32, IntPtr, Pointer<OVERLAPPED>)
>()
external NativeWin32Result PostQueuedCompletionStatus_Wrapper(
  Pointer completionPort,
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
@Native<NativeWin32Result Function(Pointer, Uint32)>()
external NativeWin32Result PurgeComm_Wrapper(Pointer hFile, int dwFlags);

@internal
@Native<NativeWin32Result Function(Pointer<Utf16>, Pointer<Utf16>, Uint32)>()
external NativeWin32Result QueryDosDeviceW_Wrapper(
  Pointer<Utf16> lpDeviceName,
  Pointer<Utf16> lpTargetPath,
  int ucchMax,
);

@internal
@Native<
  NativeWin32Result Function(Pointer, Uint32, Pointer<Utf16>, Pointer<Uint32>)
>()
external NativeWin32Result QueryFullProcessImageNameW_Wrapper(
  Pointer hProcess,
  int dwFlags,
  Pointer<Utf16> lpExeName,
  Pointer<Uint32> lpdwSize,
);

@internal
@Native<
  NativeWin32Result Function(Pointer, Int32, Pointer, Uint32, Pointer<Uint32>)
>()
external NativeWin32Result QueryInformationJobObject_Wrapper(
  Pointer hJob,
  int jobObjectInformationClass,
  Pointer lpJobObjectInformation,
  int cbJobObjectInformationLength,
  Pointer<Uint32> lpReturnLength,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Pointer<Utf16>,
    Pointer<Pointer<JOBOBJECT_IO_RATE_CONTROL_INFORMATION>>,
    Pointer<Uint32>,
  )
>()
external NativeWin32Result QueryIoRateControlInformationJobObject_Wrapper(
  Pointer hJob,
  Pointer<Utf16> volumeName,
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
    Pointer,
    Pointer,
    Uint32,
    Pointer<Uint32>,
    Pointer<CONSOLE_READCONSOLE_CONTROL>,
  )
>()
external NativeWin32Result ReadConsoleW_Wrapper(
  Pointer hConsoleInput,
  Pointer lpBuffer,
  int nNumberOfCharsToRead,
  Pointer<Uint32> lpNumberOfCharsRead,
  Pointer<CONSOLE_READCONSOLE_CONTROL> pInputControl,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Pointer<INPUT_RECORD>,
    Uint32,
    Pointer<Uint32>,
  )
>()
external NativeWin32Result ReadConsoleInputW_Wrapper(
  Pointer hConsoleInput,
  Pointer<INPUT_RECORD> lpBuffer,
  int nLength,
  Pointer<Uint32> lpNumberOfEventsRead,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Pointer<Uint8>,
    Uint32,
    Pointer<Uint32>,
    Pointer<OVERLAPPED>,
  )
>()
external NativeWin32Result ReadFile_Wrapper(
  Pointer hFile,
  Pointer<Uint8> lpBuffer,
  int nNumberOfBytesToRead,
  Pointer<Uint32> lpNumberOfBytesRead,
  Pointer<OVERLAPPED> lpOverlapped,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Pointer<Uint8>,
    Uint32,
    Pointer<OVERLAPPED>,
    Pointer<NativeFunction<LPOVERLAPPED_COMPLETION_ROUTINE>>,
  )
>()
external NativeWin32Result ReadFileEx_Wrapper(
  Pointer hFile,
  Pointer<Uint8> lpBuffer,
  int nNumberOfBytesToRead,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<NativeFunction<LPOVERLAPPED_COMPLETION_ROUTINE>> lpCompletionRoutine,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Pointer<FILE_SEGMENT_ELEMENT>,
    Uint32,
    Pointer<Uint32>,
    Pointer<OVERLAPPED>,
  )
>()
external NativeWin32Result ReadFileScatter_Wrapper(
  Pointer hFile,
  Pointer<FILE_SEGMENT_ELEMENT> aSegmentArray,
  int nNumberOfBytesToRead,
  Pointer<Uint32> lpReserved,
  Pointer<OVERLAPPED> lpOverlapped,
);

@internal
@Native<
  NativeWin32Result Function(Pointer, Pointer, Pointer, IntPtr, Pointer<IntPtr>)
>()
external NativeWin32Result ReadProcessMemory_Wrapper(
  Pointer hProcess,
  Pointer lpBaseAddress,
  Pointer lpBuffer,
  int nSize,
  Pointer<IntPtr> lpNumberOfBytesRead,
);

@internal
@Native<NativeWin32Result Function(Pointer<Utf16>)>()
external NativeWin32Result RemoveDirectoryW_Wrapper(Pointer<Utf16> lpPathName);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result RemoveDllDirectory_Wrapper(Pointer cookie);

@internal
@Native<NativeWin32Result Function(Pointer, Uint32, Uint32, Uint32)>()
external NativeWin32Result ReOpenFile_Wrapper(
  Pointer hOriginalFile,
  int dwDesiredAccess,
  int dwShareMode,
  int dwFlagsAndAttributes,
);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result ResetEvent_Wrapper(Pointer hEvent);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Pointer<SMALL_RECT>,
    Pointer<SMALL_RECT>,
    COORD,
    Pointer<CHAR_INFO>,
  )
>()
external NativeWin32Result ScrollConsoleScreenBufferW_Wrapper(
  Pointer hConsoleOutput,
  Pointer<SMALL_RECT> lpScrollRectangle,
  Pointer<SMALL_RECT> lpClipRectangle,
  COORD dwDestinationOrigin,
  Pointer<CHAR_INFO> lpFill,
);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result SetCommBreak_Wrapper(Pointer hFile);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<COMMCONFIG>, Uint32)>()
external NativeWin32Result SetCommConfig_Wrapper(
  Pointer hCommDev,
  Pointer<COMMCONFIG> lpCC,
  int dwSize,
);

@internal
@Native<NativeWin32Result Function(Pointer, Uint32)>()
external NativeWin32Result SetCommMask_Wrapper(Pointer hFile, int dwEvtMask);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<DCB>)>()
external NativeWin32Result SetCommState_Wrapper(
  Pointer hFile,
  Pointer<DCB> lpDCB,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<COMMTIMEOUTS>)>()
external NativeWin32Result SetCommTimeouts_Wrapper(
  Pointer hFile,
  Pointer<COMMTIMEOUTS> lpCommTimeouts,
);

@internal
@Native<
  NativeWin32Result Function(Pointer<NativeFunction<PHANDLER_ROUTINE>>, Int32)
>()
external NativeWin32Result SetConsoleCtrlHandler_Wrapper(
  Pointer<NativeFunction<PHANDLER_ROUTINE>> handlerRoutine,
  int add,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<CONSOLE_CURSOR_INFO>)>()
external NativeWin32Result SetConsoleCursorInfo_Wrapper(
  Pointer hConsoleOutput,
  Pointer<CONSOLE_CURSOR_INFO> lpConsoleCursorInfo,
);

@internal
@Native<NativeWin32Result Function(Pointer, COORD)>()
external NativeWin32Result SetConsoleCursorPosition_Wrapper(
  Pointer hConsoleOutput,
  COORD dwCursorPosition,
);

@internal
@Native<NativeWin32Result Function(Pointer, Uint32, Pointer<COORD>)>()
external NativeWin32Result SetConsoleDisplayMode_Wrapper(
  Pointer hConsoleOutput,
  int dwFlags,
  Pointer<COORD> lpNewScreenBufferDimensions,
);

@internal
@Native<NativeWin32Result Function(Pointer, Uint32)>()
external NativeWin32Result SetConsoleMode_Wrapper(
  Pointer hConsoleHandle,
  int dwMode,
);

@internal
@Native<NativeWin32Result Function(Pointer, Uint16)>()
external NativeWin32Result SetConsoleTextAttribute_Wrapper(
  Pointer hConsoleOutput,
  int wAttributes,
);

@internal
@Native<NativeWin32Result Function(Pointer, Int32, Pointer<SMALL_RECT>)>()
external NativeWin32Result SetConsoleWindowInfo_Wrapper(
  Pointer hConsoleOutput,
  int bAbsolute,
  Pointer<SMALL_RECT> lpConsoleWindow,
);

@internal
@Native<
  NativeWin32Result Function(Pointer<Utf16>, Pointer<COMMCONFIG>, Uint32)
>()
external NativeWin32Result SetDefaultCommConfigW_Wrapper(
  Pointer<Utf16> lpszName,
  Pointer<COMMCONFIG> lpCC,
  int dwSize,
);

@internal
@Native<NativeWin32Result Function(Uint32)>()
external NativeWin32Result SetDefaultDllDirectories_Wrapper(int directoryFlags);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result SetEndOfFile_Wrapper(Pointer hFile);

@internal
@Native<NativeWin32Result Function(Pointer<Utf16>, Pointer<Utf16>)>()
external NativeWin32Result SetEnvironmentVariableW_Wrapper(
  Pointer<Utf16> lpName,
  Pointer<Utf16> lpValue,
);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result SetEvent_Wrapper(Pointer hEvent);

@internal
@Native<NativeWin32Result Function(Pointer<Utf16>, Uint32)>()
external NativeWin32Result SetFileAttributesW_Wrapper(
  Pointer<Utf16> lpFileName,
  int dwFileAttributes,
);

@internal
@Native<NativeWin32Result Function(Pointer, Int32, Pointer, Uint32)>()
external NativeWin32Result SetFileInformationByHandle_Wrapper(
  Pointer hFile,
  int fileInformationClass,
  Pointer lpFileInformation,
  int dwBufferSize,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<Uint8>, Uint32)>()
external NativeWin32Result SetFileIoOverlappedRange_Wrapper(
  Pointer fileHandle,
  Pointer<Uint8> overlappedRangeStart,
  int length,
);

@internal
@Native<NativeWin32Result Function(Pointer, Int32, Pointer<Int32>, Uint32)>()
external NativeWin32Result SetFilePointer_Wrapper(
  Pointer hFile,
  int lDistanceToMove,
  Pointer<Int32> lpDistanceToMoveHigh,
  int dwMoveMethod,
);

@internal
@Native<NativeWin32Result Function(Pointer, Int64, Pointer<Int64>, Uint32)>()
external NativeWin32Result SetFilePointerEx_Wrapper(
  Pointer hFile,
  int liDistanceToMove,
  Pointer<Int64> lpNewFilePointer,
  int dwMoveMethod,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<Utf16>)>()
external NativeWin32Result SetFileShortNameW_Wrapper(
  Pointer hFile,
  Pointer<Utf16> lpShortName,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Pointer<FILETIME>,
    Pointer<FILETIME>,
    Pointer<FILETIME>,
  )
>()
external NativeWin32Result SetFileTime_Wrapper(
  Pointer hFile,
  Pointer<FILETIME> lpCreationTime,
  Pointer<FILETIME> lpLastAccessTime,
  Pointer<FILETIME> lpLastWriteTime,
);

@internal
@Native<NativeWin32Result Function(Pointer, Int64)>()
external NativeWin32Result SetFileValidData_Wrapper(
  Pointer hFile,
  int validDataLength,
);

@internal
@Native<
  NativeWin32Result Function(Pointer<Utf16>, Pointer<Utf16>, Pointer, Uint32)
>()
external NativeWin32Result SetFirmwareEnvironmentVariableW_Wrapper(
  Pointer<Utf16> lpName,
  Pointer<Utf16> lpGuid,
  Pointer pValue,
  int nSize,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer<Utf16>,
    Pointer<Utf16>,
    Pointer,
    Uint32,
    Uint32,
  )
>()
external NativeWin32Result SetFirmwareEnvironmentVariableExW_Wrapper(
  Pointer<Utf16> lpName,
  Pointer<Utf16> lpGuid,
  Pointer pValue,
  int nSize,
  int dwAttributes,
);

@internal
@Native<NativeWin32Result Function(Pointer, Uint32, Uint32)>()
external NativeWin32Result SetHandleInformation_Wrapper(
  Pointer hObject,
  int dwMask,
  int dwFlags,
);

@internal
@Native<NativeWin32Result Function(Pointer, Int32, Pointer, Uint32)>()
external NativeWin32Result SetInformationJobObject_Wrapper(
  Pointer hJob,
  int jobObjectInformationClass,
  Pointer lpJobObjectInformation,
  int cbJobObjectInformationLength,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Pointer<JOBOBJECT_IO_RATE_CONTROL_INFORMATION>,
  )
>()
external NativeWin32Result SetIoRateControlInformationJobObject_Wrapper(
  Pointer hJob,
  Pointer<JOBOBJECT_IO_RATE_CONTROL_INFORMATION> ioRateControlInfo,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint32>,
  )
>()
external NativeWin32Result SetNamedPipeHandleState_Wrapper(
  Pointer hNamedPipe,
  Pointer<Uint32> lpMode,
  Pointer<Uint32> lpMaxCollectionCount,
  Pointer<Uint32> lpCollectDataTimeout,
);

@internal
@Native<NativeWin32Result Function(Pointer, IntPtr)>()
external NativeWin32Result SetProcessAffinityMask_Wrapper(
  Pointer hProcess,
  int dwProcessAffinityMask,
);

@internal
@Native<NativeWin32Result Function(Pointer, Int32)>()
external NativeWin32Result SetProcessPriorityBoost_Wrapper(
  Pointer hProcess,
  int bDisablePriorityBoost,
);

@internal
@Native<NativeWin32Result Function(Pointer, IntPtr, IntPtr)>()
external NativeWin32Result SetProcessWorkingSetSize_Wrapper(
  Pointer hProcess,
  int dwMinimumWorkingSetSize,
  int dwMaximumWorkingSetSize,
);

@internal
@Native<NativeWin32Result Function(Uint32, Pointer)>()
external NativeWin32Result SetStdHandle_Wrapper(
  int nStdHandle,
  Pointer hHandle,
);

@internal
@Native<NativeWin32Result Function(Pointer, IntPtr)>()
external NativeWin32Result SetThreadAffinityMask_Wrapper(
  Pointer hThread,
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
@Native<NativeWin32Result Function(Pointer, Uint32, Uint32)>()
external NativeWin32Result SetupComm_Wrapper(
  Pointer hFile,
  int dwInQueue,
  int dwOutQueue,
);

@internal
@Native<NativeWin32Result Function(Pointer<Utf16>, Pointer<Utf16>)>()
external NativeWin32Result SetVolumeLabelW_Wrapper(
  Pointer<Utf16> lpRootPathName,
  Pointer<Utf16> lpVolumeName,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer)>()
external NativeWin32Result SizeofResource_Wrapper(
  Pointer hModule,
  Pointer hResInfo,
);

@internal
@Native<NativeWin32Result Function(Pointer<SYSTEMTIME>, Pointer<FILETIME>)>()
external NativeWin32Result SystemTimeToFileTime_Wrapper(
  Pointer<SYSTEMTIME> lpSystemTime,
  Pointer<FILETIME> lpFileTime,
);

@internal
@Native<NativeWin32Result Function(Pointer, Uint32)>()
external NativeWin32Result TerminateJobObject_Wrapper(
  Pointer hJob,
  int uExitCode,
);

@internal
@Native<NativeWin32Result Function(Pointer, Uint32)>()
external NativeWin32Result TerminateProcess_Wrapper(
  Pointer hProcess,
  int uExitCode,
);

@internal
@Native<NativeWin32Result Function(Pointer, Uint32)>()
external NativeWin32Result TerminateThread_Wrapper(
  Pointer hThread,
  int dwExitCode,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Pointer,
    Uint32,
    Pointer,
    Uint32,
    Pointer<Uint32>,
    Pointer<OVERLAPPED>,
  )
>()
external NativeWin32Result TransactNamedPipe_Wrapper(
  Pointer hNamedPipe,
  Pointer lpInBuffer,
  int nInBufferSize,
  Pointer lpOutBuffer,
  int nOutBufferSize,
  Pointer<Uint32> lpBytesRead,
  Pointer<OVERLAPPED> lpOverlapped,
);

@internal
@Native<NativeWin32Result Function(Pointer, Int8)>()
external NativeWin32Result TransmitCommChar_Wrapper(Pointer hFile, int cChar);

@internal
@Native<NativeWin32Result Function(Pointer, Uint32, Uint32, Uint32, Uint32)>()
external NativeWin32Result UnlockFile_Wrapper(
  Pointer hFile,
  int dwFileOffsetLow,
  int dwFileOffsetHigh,
  int nNumberOfBytesToUnlockLow,
  int nNumberOfBytesToUnlockHigh,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Uint32,
    Uint32,
    Uint32,
    Pointer<OVERLAPPED>,
  )
>()
external NativeWin32Result UnlockFileEx_Wrapper(
  Pointer hFile,
  int dwReserved,
  int nNumberOfBytesToUnlockLow,
  int nNumberOfBytesToUnlockHigh,
  Pointer<OVERLAPPED> lpOverlapped,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Uint32,
    IntPtr,
    Pointer,
    IntPtr,
    Pointer,
    Pointer<IntPtr>,
  )
>()
external NativeWin32Result UpdateProcThreadAttribute_Wrapper(
  Pointer lpAttributeList,
  int dwFlags,
  int attribute,
  Pointer lpValue,
  int cbSize,
  Pointer lpPreviousValue,
  Pointer<IntPtr> lpReturnSize,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Pointer<Utf16>,
    Pointer<Utf16>,
    Uint16,
    Pointer,
    Uint32,
  )
>()
external NativeWin32Result UpdateResourceW_Wrapper(
  Pointer hUpdate,
  Pointer<Utf16> lpType,
  Pointer<Utf16> lpName,
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
@Native<NativeWin32Result Function(Pointer, Pointer, IntPtr, Uint32, Uint32)>()
external NativeWin32Result VirtualAllocEx_Wrapper(
  Pointer hProcess,
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
@Native<NativeWin32Result Function(Pointer, Pointer, IntPtr, Uint32)>()
external NativeWin32Result VirtualFreeEx_Wrapper(
  Pointer hProcess,
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
  NativeWin32Result Function(Pointer, Pointer, IntPtr, Uint32, Pointer<Uint32>)
>()
external NativeWin32Result VirtualProtectEx_Wrapper(
  Pointer hProcess,
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
    Pointer,
    Pointer,
    Pointer<MEMORY_BASIC_INFORMATION>,
    IntPtr,
  )
>()
external NativeWin32Result VirtualQueryEx_Wrapper(
  Pointer hProcess,
  Pointer lpAddress,
  Pointer<MEMORY_BASIC_INFORMATION> lpBuffer,
  int dwLength,
);

@internal
@Native<NativeWin32Result Function(Pointer, IntPtr)>()
external NativeWin32Result VirtualUnlock_Wrapper(Pointer lpAddress, int dwSize);

@internal
@Native<
  NativeWin32Result Function(Pointer, Pointer<Uint32>, Pointer<OVERLAPPED>)
>()
external NativeWin32Result WaitCommEvent_Wrapper(
  Pointer hFile,
  Pointer<Uint32> lpEvtMask,
  Pointer<OVERLAPPED> lpOverlapped,
);

@internal
@Native<NativeWin32Result Function(Uint32, Pointer<Pointer>, Int32, Uint32)>()
external NativeWin32Result WaitForMultipleObjects_Wrapper(
  int nCount,
  Pointer<Pointer> lpHandles,
  int bWaitAll,
  int dwMilliseconds,
);

@internal
@Native<NativeWin32Result Function(Pointer, Uint32)>()
external NativeWin32Result WaitForSingleObject_Wrapper(
  Pointer hHandle,
  int dwMilliseconds,
);

@internal
@Native<
  NativeWin32Result Function(
    Uint32,
    Uint32,
    Pointer<Utf16>,
    Int32,
    Pointer<Utf8>,
    Int32,
    Pointer<Utf8>,
    Pointer<Int32>,
  )
>()
external NativeWin32Result WideCharToMultiByte_Wrapper(
  int codePage,
  int dwFlags,
  Pointer<Utf16> lpWideCharStr,
  int cchWideChar,
  Pointer<Utf8> lpMultiByteStr,
  int cbMultiByte,
  Pointer<Utf8> lpDefaultChar,
  Pointer<Int32> lpUsedDefaultChar,
);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result Wow64SuspendThread_Wrapper(Pointer hThread);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Pointer<Utf16>,
    Uint32,
    Pointer<Uint32>,
    Pointer,
  )
>()
external NativeWin32Result WriteConsoleW_Wrapper(
  Pointer hConsoleOutput,
  Pointer<Utf16> lpBuffer,
  int nNumberOfCharsToWrite,
  Pointer<Uint32> lpNumberOfCharsWritten,
  Pointer lpReserved,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Pointer<Uint8>,
    Uint32,
    Pointer<Uint32>,
    Pointer<OVERLAPPED>,
  )
>()
external NativeWin32Result WriteFile_Wrapper(
  Pointer hFile,
  Pointer<Uint8> lpBuffer,
  int nNumberOfBytesToWrite,
  Pointer<Uint32> lpNumberOfBytesWritten,
  Pointer<OVERLAPPED> lpOverlapped,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Pointer<Uint8>,
    Uint32,
    Pointer<OVERLAPPED>,
    Pointer<NativeFunction<LPOVERLAPPED_COMPLETION_ROUTINE>>,
  )
>()
external NativeWin32Result WriteFileEx_Wrapper(
  Pointer hFile,
  Pointer<Uint8> lpBuffer,
  int nNumberOfBytesToWrite,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<NativeFunction<LPOVERLAPPED_COMPLETION_ROUTINE>> lpCompletionRoutine,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Pointer<FILE_SEGMENT_ELEMENT>,
    Uint32,
    Pointer<Uint32>,
    Pointer<OVERLAPPED>,
  )
>()
external NativeWin32Result WriteFileGather_Wrapper(
  Pointer hFile,
  Pointer<FILE_SEGMENT_ELEMENT> aSegmentArray,
  int nNumberOfBytesToWrite,
  Pointer<Uint32> lpReserved,
  Pointer<OVERLAPPED> lpOverlapped,
);

@internal
@Native<
  NativeWin32Result Function(Pointer, Pointer, Pointer, IntPtr, Pointer<IntPtr>)
>()
external NativeWin32Result WriteProcessMemory_Wrapper(
  Pointer hProcess,
  Pointer lpBaseAddress,
  Pointer lpBuffer,
  int nSize,
  Pointer<IntPtr> lpNumberOfBytesWritten,
);
