// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../_internal/kernel32.g.dart';
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

/// Activates the specified activation context.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-activateactctx>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool ActivateActCtx(int? hActCtx, Pointer<IntPtr> lpCookie) =>
    ActivateActCtx_Wrapper(hActCtx ?? NULL, lpCookie) != FALSE;

/// Adds a directory to the process DLL search path.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-adddlldirectory>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
Pointer AddDllDirectory(PCWSTR newDirectory) =>
    AddDllDirectory_Wrapper(newDirectory);

/// Increments the reference count of the specified activation context.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-addrefactctx>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
void AddRefActCtx(int hActCtx) => _AddRefActCtx(hActCtx);

@Native<Void Function(HANDLE)>(symbol: 'AddRefActCtx')
external void _AddRefActCtx(int hActCtx);

/// Allocates a new console for the calling process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/allocconsole>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool AllocConsole() => AllocConsole_Wrapper() != FALSE;

/// Determines whether the file I/O functions are using the ANSI or OEM
/// character set code page.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-arefileapisansi>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool AreFileApisANSI() => _AreFileApisANSI() != FALSE;

@Native<BOOL Function()>(symbol: 'AreFileApisANSI')
external int _AreFileApisANSI();

/// Assigns a process to an existing job object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/jobapi2/nf-jobapi2-assignprocesstojobobject>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool AssignProcessToJobObject(int hJob, int hProcess) =>
    AssignProcessToJobObject_Wrapper(hJob, hProcess) != FALSE;

/// Attaches the calling process to the console of the specified process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/attachconsole>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool AttachConsole(int dwProcessId) =>
    AttachConsole_Wrapper(dwProcessId) != FALSE;

/// Generates simple tones on the speaker.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/utilapiset/nf-utilapiset-beep>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool Beep(int dwFreq, int dwDuration) =>
    Beep_Wrapper(dwFreq, dwDuration) != FALSE;

/// Retrieves a handle that can be used by the UpdateResource function to add,
/// delete, or replace resources in a binary module.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-beginupdateresourcew>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int BeginUpdateResource(PCWSTR pFileName, bool bDeleteExistingResources) =>
    BeginUpdateResourceW_Wrapper(
      pFileName,
      bDeleteExistingResources ? TRUE : FALSE,
    );

/// Fills a specified DCB structure with values specified in a device-control
/// string.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-buildcommdcbw>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool BuildCommDCB(PCWSTR lpDef, Pointer<DCB> lpDCB) =>
    BuildCommDCBW_Wrapper(lpDef, lpDCB) != FALSE;

/// Translates a device-definition string into appropriate device-control block
/// codes and places them into a device control block.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-buildcommdcbandtimeoutsw>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool BuildCommDCBAndTimeouts(
  PCWSTR lpDef,
  Pointer<DCB> lpDCB,
  Pointer<COMMTIMEOUTS> lpCommTimeouts,
) => BuildCommDCBAndTimeoutsW_Wrapper(lpDef, lpDCB, lpCommTimeouts) != FALSE;

/// Connects to a message-type pipe (and waits if an instance of the pipe is not
/// available), writes to and reads from the pipe, and then closes the pipe.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/namedpipeapi/nf-namedpipeapi-callnamedpipew>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool CallNamedPipe(
  PCWSTR lpNamedPipeName,
  Pointer? lpInBuffer,
  int nInBufferSize,
  Pointer? lpOutBuffer,
  int nOutBufferSize,
  Pointer<Uint32> lpBytesRead,
  int nTimeOut,
) =>
    _CallNamedPipe(
      lpNamedPipeName,
      lpInBuffer ?? nullptr,
      nInBufferSize,
      lpOutBuffer ?? nullptr,
      nOutBufferSize,
      lpBytesRead,
      nTimeOut,
    ) !=
    FALSE;

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

/// Cancels all pending input and output (I/O) operations that are issued by the
/// calling thread for the specified file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/ioapiset/nf-ioapiset-cancelio>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool CancelIo(int hFile) => CancelIo_Wrapper(hFile) != FALSE;

/// Marks any outstanding I/O operations for the specified file handle.
///
/// The function only cancels I/O operations in the current process, regardless
/// of which thread created the I/O operation.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/ioapiset/nf-ioapiset-cancelioex>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool CancelIoEx(int hFile, Pointer<OVERLAPPED>? lpOverlapped) =>
    CancelIoEx_Wrapper(hFile, lpOverlapped ?? nullptr) != FALSE;

/// Marks pending synchronous I/O operations that are issued by the specified
/// thread as canceled.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/ioapiset/nf-ioapiset-cancelsynchronousio>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool CancelSynchronousIo(int hThread) =>
    CancelSynchronousIo_Wrapper(hThread) != FALSE;

/// Determines whether the specified process is being debugged.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/debugapi/nf-debugapi-checkremotedebuggerpresent>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool CheckRemoteDebuggerPresent(
  int hProcess,
  Pointer<BOOL> pbDebuggerPresent,
) => CheckRemoteDebuggerPresent_Wrapper(hProcess, pbDebuggerPresent) != FALSE;

/// Restores character transmission for a specified communications device and
/// places the transmission line in a nonbreak state.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-clearcommbreak>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool ClearCommBreak(int hFile) => ClearCommBreak_Wrapper(hFile) != FALSE;

/// Retrieves information about a communications error and reports the current
/// status of a communications device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-clearcommerror>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool ClearCommError(
  int hFile,
  Pointer<Uint32>? lpErrors,
  Pointer<COMSTAT>? lpStat,
) =>
    ClearCommError_Wrapper(hFile, lpErrors ?? nullptr, lpStat ?? nullptr) !=
    FALSE;

/// Closes an open object handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/handleapi/nf-handleapi-closehandle>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool CloseHandle(int hObject) => CloseHandle_Wrapper(hObject) != FALSE;

/// Closes a pseudoconsole from the given handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/closepseudoconsole>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
void ClosePseudoConsole(int hPC) => _ClosePseudoConsole(hPC);

@Native<Void Function(HPCON)>(symbol: 'ClosePseudoConsole')
external void _ClosePseudoConsole(int hPC);

/// Displays a driver-supplied configuration dialog box.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-commconfigdialogw>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool CommConfigDialog(PCWSTR lpszName, int? hWnd, Pointer<COMMCONFIG> lpCC) =>
    CommConfigDialogW_Wrapper(lpszName, hWnd ?? NULL, lpCC) != FALSE;

/// Enables a named pipe server process to wait for a client process to connect
/// to an instance of a named pipe.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/namedpipeapi/nf-namedpipeapi-connectnamedpipe>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool ConnectNamedPipe(int hNamedPipe, Pointer<OVERLAPPED>? lpOverlapped) =>
    ConnectNamedPipe_Wrapper(hNamedPipe, lpOverlapped ?? nullptr) != FALSE;

/// Enables a debugger to continue a thread that previously reported a debugging
/// event.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/debugapi/nf-debugapi-continuedebugevent>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool ContinueDebugEvent(
  int dwProcessId,
  int dwThreadId,
  NTSTATUS dwContinueStatus,
) =>
    ContinueDebugEvent_Wrapper(dwProcessId, dwThreadId, dwContinueStatus) !=
    FALSE;

/// Copies an existing file to a new file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-copyfilew>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool CopyFile(
  PCWSTR lpExistingFileName,
  PCWSTR lpNewFileName,
  bool bFailIfExists,
) =>
    CopyFileW_Wrapper(
      lpExistingFileName,
      lpNewFileName,
      bFailIfExists ? TRUE : FALSE,
    ) !=
    FALSE;

/// Copies an existing file to a new file, notifying the application of its
/// progress through a callback function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-copyfileexw>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool CopyFileEx(
  PCWSTR lpExistingFileName,
  PCWSTR lpNewFileName,
  Pointer<NativeFunction<LPPROGRESS_ROUTINE>>? lpProgressRoutine,
  Pointer? lpData,
  Pointer<BOOL>? pbCancel,
  COPYFILE_FLAGS dwCopyFlags,
) =>
    CopyFileExW_Wrapper(
      lpExistingFileName,
      lpNewFileName,
      lpProgressRoutine ?? nullptr,
      lpData ?? nullptr,
      pbCancel ?? nullptr,
      dwCopyFlags,
    ) !=
    FALSE;

/// Creates an activation context.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-createactctxw>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int CreateActCtx(Pointer<ACTCTX> pActCtx) => CreateActCtxW_Wrapper(pActCtx);

/// Creates a screen buffer for the Windows Console.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/createconsolescreenbuffer>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int CreateConsoleScreenBuffer(
  int dwDesiredAccess,
  int dwShareMode,
  Pointer<SECURITY_ATTRIBUTES>? lpSecurityAttributes,
  int dwFlags,
) => CreateConsoleScreenBuffer_Wrapper(
  dwDesiredAccess,
  dwShareMode,
  lpSecurityAttributes ?? nullptr,
  dwFlags,
  nullptr,
);

/// Creates a new directory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-createdirectoryw>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool CreateDirectory(
  PCWSTR lpPathName,
  Pointer<SECURITY_ATTRIBUTES>? lpSecurityAttributes,
) =>
    CreateDirectoryW_Wrapper(lpPathName, lpSecurityAttributes ?? nullptr) !=
    FALSE;

/// Creates or opens a named or unnamed event object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/synchapi/nf-synchapi-createeventw>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int CreateEvent(
  Pointer<SECURITY_ATTRIBUTES>? lpEventAttributes,
  bool bManualReset,
  bool bInitialState,
  PCWSTR? lpName,
) => CreateEventW_Wrapper(
  lpEventAttributes ?? nullptr,
  bManualReset ? TRUE : FALSE,
  bInitialState ? TRUE : FALSE,
  lpName ?? nullptr,
);

/// Creates or opens a named or unnamed event object and returns a handle to the
/// object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/synchapi/nf-synchapi-createeventexw>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int CreateEventEx(
  Pointer<SECURITY_ATTRIBUTES>? lpEventAttributes,
  PCWSTR? lpName,
  CREATE_EVENT dwFlags,
  int dwDesiredAccess,
) => CreateEventExW_Wrapper(
  lpEventAttributes ?? nullptr,
  lpName ?? nullptr,
  dwFlags,
  dwDesiredAccess,
);

/// Creates or opens a file or I/O device.
///
/// The most commonly used I/O devices are as follows: file, file stream,
/// directory, physical disk, volume, console buffer, tape drive, communications
/// resource, mailslot, and pipe.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-createfilew>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int CreateFile(
  PCWSTR lpFileName,
  int dwDesiredAccess,
  FILE_SHARE_MODE dwShareMode,
  Pointer<SECURITY_ATTRIBUTES>? lpSecurityAttributes,
  FILE_CREATION_DISPOSITION dwCreationDisposition,
  FILE_FLAGS_AND_ATTRIBUTES dwFlagsAndAttributes,
  int? hTemplateFile,
) => CreateFileW_Wrapper(
  lpFileName,
  dwDesiredAccess,
  dwShareMode,
  lpSecurityAttributes ?? nullptr,
  dwCreationDisposition,
  dwFlagsAndAttributes,
  hTemplateFile ?? NULL,
);

/// Creates or opens a file or I/O device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-createfile2>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int CreateFile2(
  PCWSTR lpFileName,
  int dwDesiredAccess,
  FILE_SHARE_MODE dwShareMode,
  FILE_CREATION_DISPOSITION dwCreationDisposition,
  Pointer<CREATEFILE2_EXTENDED_PARAMETERS>? pCreateExParams,
) => CreateFile2_Wrapper(
  lpFileName,
  dwDesiredAccess,
  dwShareMode,
  dwCreationDisposition,
  pCreateExParams ?? nullptr,
);

/// Creates an input/output (I/O) completion port and associates it with a
/// specified file handle, or creates an I/O completion port that is not yet
/// associated with a file handle, allowing association at a later time.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/ioapiset/nf-ioapiset-createiocompletionport>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int CreateIoCompletionPort(
  int fileHandle,
  int? existingCompletionPort,
  int completionKey,
  int numberOfConcurrentThreads,
) => CreateIoCompletionPort_Wrapper(
  fileHandle,
  existingCompletionPort ?? NULL,
  completionKey,
  numberOfConcurrentThreads,
);

/// Creates or opens a job object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/jobapi2/nf-jobapi2-createjobobjectw>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int CreateJobObject(
  Pointer<SECURITY_ATTRIBUTES>? lpJobAttributes,
  PCWSTR? lpName,
) => CreateJobObjectW_Wrapper(lpJobAttributes ?? nullptr, lpName ?? nullptr);

/// Creates an instance of a named pipe and returns a handle for subsequent pipe
/// operations.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/namedpipeapi/nf-namedpipeapi-createnamedpipew>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int CreateNamedPipe(
  PCWSTR lpName,
  FILE_FLAGS_AND_ATTRIBUTES dwOpenMode,
  NAMED_PIPE_MODE dwPipeMode,
  int nMaxInstances,
  int nOutBufferSize,
  int nInBufferSize,
  int nDefaultTimeOut,
  Pointer<SECURITY_ATTRIBUTES>? lpSecurityAttributes,
) => _CreateNamedPipe(
  lpName,
  dwOpenMode,
  dwPipeMode,
  nMaxInstances,
  nOutBufferSize,
  nInBufferSize,
  nDefaultTimeOut,
  lpSecurityAttributes ?? nullptr,
);

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

/// Creates an anonymous pipe, and returns handles to the read and write ends of
/// the pipe.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/namedpipeapi/nf-namedpipeapi-createpipe>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool CreatePipe(
  Pointer<HANDLE> hReadPipe,
  Pointer<HANDLE> hWritePipe,
  Pointer<SECURITY_ATTRIBUTES>? lpPipeAttributes,
  int nSize,
) =>
    CreatePipe_Wrapper(
      hReadPipe,
      hWritePipe,
      lpPipeAttributes ?? nullptr,
      nSize,
    ) !=
    FALSE;

/// Creates a new process and its primary thread.
///
/// The new process runs in the security context of the calling process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-createprocessw>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool CreateProcess(
  PCWSTR? lpApplicationName,
  PWSTR? lpCommandLine,
  Pointer<SECURITY_ATTRIBUTES>? lpProcessAttributes,
  Pointer<SECURITY_ATTRIBUTES>? lpThreadAttributes,
  bool bInheritHandles,
  PROCESS_CREATION_FLAGS dwCreationFlags,
  Pointer? lpEnvironment,
  PCWSTR? lpCurrentDirectory,
  Pointer<STARTUPINFO> lpStartupInfo,
  Pointer<PROCESS_INFORMATION> lpProcessInformation,
) =>
    CreateProcessW_Wrapper(
      lpApplicationName ?? nullptr,
      lpCommandLine ?? nullptr,
      lpProcessAttributes ?? nullptr,
      lpThreadAttributes ?? nullptr,
      bInheritHandles ? TRUE : FALSE,
      dwCreationFlags,
      lpEnvironment ?? nullptr,
      lpCurrentDirectory ?? nullptr,
      lpStartupInfo,
      lpProcessInformation,
    ) !=
    FALSE;

/// Allocates a new pseudoconsole for the calling process.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/createpseudoconsole>.
///
/// {@category kernel32}
int CreatePseudoConsole(COORD size, int hInput, int hOutput, int dwFlags) {
  final phPC = loggingCalloc<HPCON>();
  final hr$ = HRESULT(
    _CreatePseudoConsole(size, hInput, hOutput, dwFlags, phPC),
  );
  if (hr$.isError) {
    free(phPC);
    throw WindowsException(hr$);
  }
  final result$ = phPC.value;
  free(phPC);
  return result$;
}

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

/// Creates a thread that runs in the virtual address space of another process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-createremotethread>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int CreateRemoteThread(
  int hProcess,
  Pointer<SECURITY_ATTRIBUTES>? lpThreadAttributes,
  int dwStackSize,
  Pointer<NativeFunction<LPTHREAD_START_ROUTINE>> lpStartAddress,
  Pointer? lpParameter,
  int dwCreationFlags,
  Pointer<Uint32>? lpThreadId,
) => CreateRemoteThread_Wrapper(
  hProcess,
  lpThreadAttributes ?? nullptr,
  dwStackSize,
  lpStartAddress,
  lpParameter ?? nullptr,
  dwCreationFlags,
  lpThreadId ?? nullptr,
);

/// Creates a thread that runs in the virtual address space of another process
/// and optionally specifies extended attributes such as processor group
/// affinity.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-createremotethreadex>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int CreateRemoteThreadEx(
  int hProcess,
  Pointer<SECURITY_ATTRIBUTES>? lpThreadAttributes,
  int dwStackSize,
  Pointer<NativeFunction<LPTHREAD_START_ROUTINE>> lpStartAddress,
  Pointer? lpParameter,
  int dwCreationFlags,
  int? lpAttributeList,
  Pointer<Uint32>? lpThreadId,
) => CreateRemoteThreadEx_Wrapper(
  hProcess,
  lpThreadAttributes ?? nullptr,
  dwStackSize,
  lpStartAddress,
  lpParameter ?? nullptr,
  dwCreationFlags,
  lpAttributeList ?? NULL,
  lpThreadId ?? nullptr,
);

/// Creates a symbolic link.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-createsymboliclinkw>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool CreateSymbolicLink(
  PCWSTR lpSymlinkFileName,
  PCWSTR lpTargetFileName,
  SYMBOLIC_LINK_FLAGS dwFlags,
) =>
    CreateSymbolicLinkW_Wrapper(lpSymlinkFileName, lpTargetFileName, dwFlags) !=
    FALSE;

/// Creates a thread to execute within the virtual address space of the calling
/// process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-createthread>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int CreateThread(
  Pointer<SECURITY_ATTRIBUTES>? lpThreadAttributes,
  int dwStackSize,
  Pointer<NativeFunction<LPTHREAD_START_ROUTINE>> lpStartAddress,
  Pointer? lpParameter,
  THREAD_CREATION_FLAGS dwCreationFlags,
  Pointer<Uint32>? lpThreadId,
) => CreateThread_Wrapper(
  lpThreadAttributes ?? nullptr,
  dwStackSize,
  lpStartAddress,
  lpParameter ?? nullptr,
  dwCreationFlags,
  lpThreadId ?? nullptr,
);

/// Deactivates the activation context corresponding to the specified cookie.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-deactivateactctx>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool DeactivateActCtx(int dwFlags, int ulCookie) =>
    DeactivateActCtx_Wrapper(dwFlags, ulCookie) != FALSE;

/// Causes a breakpoint exception to occur in the current process.
///
/// This allows the calling thread to signal the debugger to handle the
/// exception.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/debugapi/nf-debugapi-debugbreak>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
void DebugBreak() => _DebugBreak();

@Native<Void Function()>(symbol: 'DebugBreak')
external void _DebugBreak();

/// Causes a breakpoint exception to occur in the specified process.
///
/// This allows the calling thread to signal the debugger to handle the
/// exception.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-debugbreakprocess>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool DebugBreakProcess(int process) =>
    DebugBreakProcess_Wrapper(process) != FALSE;

/// Sets the action to be performed when the calling thread exits.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-debugsetprocesskillonexit>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool DebugSetProcessKillOnExit(bool killOnExit) =>
    DebugSetProcessKillOnExit_Wrapper(killOnExit ? TRUE : FALSE) != FALSE;

/// Defines, redefines, or deletes MS-DOS device names.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-definedosdevicew>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool DefineDosDevice(
  DEFINE_DOS_DEVICE_FLAGS dwFlags,
  PCWSTR lpDeviceName,
  PCWSTR? lpTargetPath,
) =>
    DefineDosDeviceW_Wrapper(dwFlags, lpDeviceName, lpTargetPath ?? nullptr) !=
    FALSE;

/// Deletes an existing file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-deletefilew>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool DeleteFile(PCWSTR lpFileName) => DeleteFileW_Wrapper(lpFileName) != FALSE;

/// Deletes a drive letter or mounted folder.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-deletevolumemountpointw>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool DeleteVolumeMountPoint(PCWSTR lpszVolumeMountPoint) =>
    DeleteVolumeMountPointW_Wrapper(lpszVolumeMountPoint) != FALSE;

/// Sends a control code directly to a specified device driver, causing the
/// corresponding device to perform the corresponding operation.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/ioapiset/nf-ioapiset-deviceiocontrol>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool DeviceIoControl(
  int hDevice,
  int dwIoControlCode,
  Pointer? lpInBuffer,
  int nInBufferSize,
  Pointer? lpOutBuffer,
  int nOutBufferSize,
  Pointer<Uint32>? lpBytesReturned,
  Pointer<OVERLAPPED>? lpOverlapped,
) =>
    DeviceIoControl_Wrapper(
      hDevice,
      dwIoControlCode,
      lpInBuffer ?? nullptr,
      nInBufferSize,
      lpOutBuffer ?? nullptr,
      nOutBufferSize,
      lpBytesReturned ?? nullptr,
      lpOverlapped ?? nullptr,
    ) !=
    FALSE;

/// Disables the DLL_THREAD_ATTACH and DLL_THREAD_DETACH notifications for the
/// specified dynamic-link library (DLL).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-disablethreadlibrarycalls>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool DisableThreadLibraryCalls(int hLibModule) =>
    DisableThreadLibraryCalls_Wrapper(hLibModule) != FALSE;

/// Disconnects the server end of a named pipe instance from a client process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/namedpipeapi/nf-namedpipeapi-disconnectnamedpipe>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool DisconnectNamedPipe(int hNamedPipe) =>
    DisconnectNamedPipe_Wrapper(hNamedPipe) != FALSE;

/// Converts a DNS-style host name to a NetBIOS-style computer name.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-dnshostnametocomputernamew>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool DnsHostnameToComputerName(
  PCWSTR hostname,
  PWSTR? computerName,
  Pointer<Uint32> nSize,
) =>
    DnsHostnameToComputerNameW_Wrapper(
      hostname,
      computerName ?? nullptr,
      nSize,
    ) !=
    FALSE;

/// Converts MS-DOS date and time values to a file time.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-dosdatetimetofiletime>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool DosDateTimeToFileTime(
  int wFatDate,
  int wFatTime,
  Pointer<FILETIME> lpFileTime,
) => DosDateTimeToFileTime_Wrapper(wFatDate, wFatTime, lpFileTime) != FALSE;

/// Duplicates an object handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/handleapi/nf-handleapi-duplicatehandle>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool DuplicateHandle(
  int hSourceProcessHandle,
  int hSourceHandle,
  int hTargetProcessHandle,
  Pointer<HANDLE> lpTargetHandle,
  int dwDesiredAccess,
  bool bInheritHandle,
  DUPLICATE_HANDLE_OPTIONS dwOptions,
) =>
    DuplicateHandle_Wrapper(
      hSourceProcessHandle,
      hSourceHandle,
      hTargetProcessHandle,
      lpTargetHandle,
      dwDesiredAccess,
      bInheritHandle ? TRUE : FALSE,
      dwOptions,
    ) !=
    FALSE;

/// Commits or discards changes made prior to a call to UpdateResource.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-endupdateresourcew>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool EndUpdateResource(int hUpdate, bool fDiscard) =>
    EndUpdateResourceW_Wrapper(hUpdate, fDiscard ? TRUE : FALSE) != FALSE;

/// Enumerates resources of a specified type within a binary module.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-enumresourcenamesw>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool EnumResourceNames(
  int? hModule,
  PCWSTR lpType,
  Pointer<NativeFunction<ENUMRESNAMEPROC>> lpEnumFunc,
  int lParam,
) => _EnumResourceNames(hModule ?? NULL, lpType, lpEnumFunc, lParam) != FALSE;

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

/// Enumerates resource types within a binary module.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-enumresourcetypesw>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool EnumResourceTypes(
  int? hModule,
  Pointer<NativeFunction<ENUMRESTYPEPROC>> lpEnumFunc,
  int lParam,
) => EnumResourceTypesW_Wrapper(hModule ?? NULL, lpEnumFunc, lParam) != FALSE;

/// Enumerates all system firmware tables of the specified type.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/sysinfoapi/nf-sysinfoapi-enumsystemfirmwaretables>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int EnumSystemFirmwareTables(
  FIRMWARE_TABLE_PROVIDER firmwareTableProviderSignature,
  Pointer<Uint8>? pFirmwareTableEnumBuffer,
  int bufferSize,
) => EnumSystemFirmwareTables_Wrapper(
  firmwareTableProviderSignature,
  pFirmwareTableEnumBuffer ?? nullptr,
  bufferSize,
);

/// Directs the specified communications device to perform an extended function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-escapecommfunction>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool EscapeCommFunction(int hFile, ESCAPE_COMM_FUNCTION dwFunc) =>
    EscapeCommFunction_Wrapper(hFile, dwFunc) != FALSE;

/// Ends the calling process and all its threads.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-exitprocess>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
void ExitProcess(int uExitCode) => _ExitProcess(uExitCode);

@Native<Void Function(Uint32)>(symbol: 'ExitProcess')
external void _ExitProcess(int uExitCode);

/// Ends the calling thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-exitthread>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
void ExitThread(int dwExitCode) => _ExitThread(dwExitCode);

@Native<Void Function(Uint32)>(symbol: 'ExitThread')
external void _ExitThread(int dwExitCode);

/// Converts a file time to MS-DOS date and time values.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-filetimetodosdatetime>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool FileTimeToDosDateTime(
  Pointer<FILETIME> lpFileTime,
  Pointer<Uint16> lpFatDate,
  Pointer<Uint16> lpFatTime,
) => FileTimeToDosDateTime_Wrapper(lpFileTime, lpFatDate, lpFatTime) != FALSE;

/// Converts a file time to system time format.
///
/// System time is based on Coordinated Universal Time (UTC).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/timezoneapi/nf-timezoneapi-filetimetosystemtime>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool FileTimeToSystemTime(
  Pointer<FILETIME> lpFileTime,
  Pointer<SYSTEMTIME> lpSystemTime,
) => FileTimeToSystemTime_Wrapper(lpFileTime, lpSystemTime) != FALSE;

/// Sets the character attributes for a specified number of character cells,
/// beginning at the specified coordinates in a screen buffer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/fillconsoleoutputattribute>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool FillConsoleOutputAttribute(
  int hConsoleOutput,
  int wAttribute,
  int nLength,
  COORD dwWriteCoord,
  Pointer<Uint32> lpNumberOfAttrsWritten,
) =>
    FillConsoleOutputAttribute_Wrapper(
      hConsoleOutput,
      wAttribute,
      nLength,
      dwWriteCoord,
      lpNumberOfAttrsWritten,
    ) !=
    FALSE;

/// Writes a character to the console screen buffer a specified number of times,
/// beginning at the specified coordinates.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/fillconsoleoutputcharacter>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool FillConsoleOutputCharacter(
  int hConsoleOutput,
  int cCharacter,
  int nLength,
  COORD dwWriteCoord,
  Pointer<Uint32> lpNumberOfCharsWritten,
) =>
    FillConsoleOutputCharacterW_Wrapper(
      hConsoleOutput,
      cCharacter,
      nLength,
      dwWriteCoord,
      lpNumberOfCharsWritten,
    ) !=
    FALSE;

/// Closes a file search handle opened by the FindFirstFile, FindFirstFileEx,
/// FindFirstFileNameW, FindFirstFileNameTransactedW, FindFirstFileTransacted,
/// FindFirstStreamTransactedW, or FindFirstStreamW functions.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-findclose>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool FindClose(int hFindFile) => FindClose_Wrapper(hFindFile) != FALSE;

/// Stops change notification handle monitoring.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-findclosechangenotification>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool FindCloseChangeNotification(int hChangeHandle) =>
    FindCloseChangeNotification_Wrapper(hChangeHandle) != FALSE;

/// Creates a change notification handle and sets up initial change notification
/// filter conditions.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-findfirstchangenotificationw>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int FindFirstChangeNotification(
  PCWSTR lpPathName,
  bool bWatchSubtree,
  FILE_NOTIFY_CHANGE dwNotifyFilter,
) => FindFirstChangeNotificationW_Wrapper(
  lpPathName,
  bWatchSubtree ? TRUE : FALSE,
  dwNotifyFilter,
);

/// Searches a directory for a file or subdirectory with a name that matches a
/// specific name (or partial name if wildcards are used).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-findfirstfilew>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int FindFirstFile(PCWSTR lpFileName, Pointer<WIN32_FIND_DATA> lpFindFileData) =>
    FindFirstFileW_Wrapper(lpFileName, lpFindFileData);

/// Searches a directory for a file or subdirectory with a name and attributes
/// that match those specified.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-findfirstfileexw>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int FindFirstFileEx(
  PCWSTR lpFileName,
  FINDEX_INFO_LEVELS fInfoLevelId,
  Pointer lpFindFileData,
  FINDEX_SEARCH_OPS fSearchOp,
  FIND_FIRST_EX_FLAGS dwAdditionalFlags,
) => FindFirstFileExW_Wrapper(
  lpFileName,
  fInfoLevelId,
  lpFindFileData,
  fSearchOp,
  nullptr,
  dwAdditionalFlags,
);

/// Creates an enumeration of all the hard links to the specified file.
///
/// The FindFirstFileNameW function returns a handle to the enumeration that can
/// be used on subsequent calls to the FindNextFileNameW function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-findfirstfilenamew>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int FindFirstFileName(
  PCWSTR lpFileName,
  int dwFlags,
  Pointer<Uint32> stringLength,
  PWSTR linkName,
) => FindFirstFileNameW_Wrapper(lpFileName, dwFlags, stringLength, linkName);

/// Enumerates the first stream with a ::$DATA stream type in the specified file
/// or directory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-findfirststreamw>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int FindFirstStream(
  PCWSTR lpFileName,
  STREAM_INFO_LEVELS infoLevel,
  Pointer lpFindStreamData,
) => FindFirstStreamW_Wrapper(lpFileName, infoLevel, lpFindStreamData, NULL);

/// Retrieves the name of a volume on a computer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-findfirstvolumew>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int FindFirstVolume(PWSTR lpszVolumeName, int cchBufferLength) =>
    FindFirstVolumeW_Wrapper(lpszVolumeName, cchBufferLength);

/// Requests that the operating system signal a change notification handle the
/// next time it detects an appropriate change.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-findnextchangenotification>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool FindNextChangeNotification(int hChangeHandle) =>
    FindNextChangeNotification_Wrapper(hChangeHandle) != FALSE;

/// Continues a file search from a previous call to the FindFirstFile,
/// FindFirstFileEx, or FindFirstFileTransacted functions.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-findnextfilew>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool FindNextFile(int hFindFile, Pointer<WIN32_FIND_DATA> lpFindFileData) =>
    FindNextFileW_Wrapper(hFindFile, lpFindFileData) != FALSE;

/// Continues enumerating the hard links to a file using the handle returned by
/// a successful call to the FindFirstFileNameW function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-findnextfilenamew>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool FindNextFileName(
  int hFindStream,
  Pointer<Uint32> stringLength,
  PWSTR linkName,
) => FindNextFileNameW_Wrapper(hFindStream, stringLength, linkName) != FALSE;

/// Continues a stream search started by a previous call to the FindFirstStreamW
/// function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-findnextstreamw>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool FindNextStream(int hFindStream, Pointer lpFindStreamData) =>
    FindNextStreamW_Wrapper(hFindStream, lpFindStreamData) != FALSE;

/// Continues a volume search started by a call to the FindFirstVolume function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-findnextvolumew>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool FindNextVolume(
  int hFindVolume,
  PWSTR lpszVolumeName,
  int cchBufferLength,
) =>
    FindNextVolumeW_Wrapper(hFindVolume, lpszVolumeName, cchBufferLength) !=
    FALSE;

/// Finds the packages with the specified family name for the current user.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/appmodel/nf-appmodel-findpackagesbypackagefamily>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
WIN32_ERROR FindPackagesByPackageFamily(
  PCWSTR packageFamilyName,
  int packageFilters,
  Pointer<Uint32> count,
  Pointer<PWSTR>? packageFullNames,
  Pointer<Uint32> bufferLength,
  PWSTR? buffer,
  Pointer<Uint32>? packageProperties,
) => WIN32_ERROR(
  _FindPackagesByPackageFamily(
    packageFamilyName,
    packageFilters,
    count,
    packageFullNames ?? nullptr,
    bufferLength,
    buffer ?? nullptr,
    packageProperties ?? nullptr,
  ),
);

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

/// Determines the location of a resource with the specified type and name in
/// the specified module.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-findresourcew>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int FindResource(int? hModule, PCWSTR lpName, PCWSTR lpType) =>
    _FindResource(hModule ?? NULL, lpName, lpType);

@Native<HRSRC Function(HMODULE, PCWSTR, PCWSTR)>(symbol: 'FindResourceW')
external int _FindResource(int hModule, PCWSTR lpName, PCWSTR lpType);

/// Determines the location of the resource with the specified type, name, and
/// language in the specified module.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-findresourceexw>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int FindResourceEx(int? hModule, PCWSTR lpType, PCWSTR lpName, int wLanguage) =>
    _FindResourceEx(hModule ?? NULL, lpType, lpName, wLanguage);

@Native<HRSRC Function(HMODULE, PCWSTR, PCWSTR, Uint16)>(
  symbol: 'FindResourceExW',
)
external int _FindResourceEx(
  int hModule,
  PCWSTR lpType,
  PCWSTR lpName,
  int wLanguage,
);

/// Locates a Unicode string (wide characters) in another Unicode string for a
/// non-linguistic comparison.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-findstringordinal>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int FindStringOrdinal(
  int dwFindStringOrdinalFlags,
  PCWSTR lpStringSource,
  int cchSource,
  PCWSTR lpStringValue,
  int cchValue,
  bool bIgnoreCase,
) => FindStringOrdinal_Wrapper(
  dwFindStringOrdinalFlags,
  lpStringSource,
  cchSource,
  lpStringValue,
  cchValue,
  bIgnoreCase ? TRUE : FALSE,
);

/// Closes the specified volume search handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-findvolumeclose>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool FindVolumeClose(int hFindVolume) =>
    FindVolumeClose_Wrapper(hFindVolume) != FALSE;

/// Flushes the console input buffer.
///
/// All input records currently in the input buffer are discarded.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/flushconsoleinputbuffer>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool FlushConsoleInputBuffer(int hConsoleInput) =>
    FlushConsoleInputBuffer_Wrapper(hConsoleInput) != FALSE;

/// Flushes the buffers of a specified file and causes all buffered data to be
/// written to a file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-flushfilebuffers>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool FlushFileBuffers(int hFile) => FlushFileBuffers_Wrapper(hFile) != FALSE;

/// Formats a message string.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-formatmessagew>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int FormatMessage(
  FORMAT_MESSAGE_OPTIONS dwFlags,
  Pointer? lpSource,
  int dwMessageId,
  int dwLanguageId,
  PWSTR lpBuffer,
  int nSize,
  Pointer<Pointer<Int8>>? arguments,
) => FormatMessageW_Wrapper(
  dwFlags,
  lpSource ?? nullptr,
  dwMessageId,
  dwLanguageId,
  lpBuffer,
  nSize,
  arguments ?? nullptr,
);

/// Detaches the calling process from its console.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/freeconsole>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool FreeConsole() => FreeConsole_Wrapper() != FALSE;

/// Frees the loaded dynamic-link library (DLL) module and, if necessary,
/// decrements its reference count.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-freelibrary>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool FreeLibrary(int hLibModule) => FreeLibrary_Wrapper(hLibModule) != FALSE;

/// Decrements the reference count of a loaded dynamic-link library (DLL) by
/// one, then calls ExitThread to terminate the calling thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-freelibraryandexitthread>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
void FreeLibraryAndExitThread(int hLibModule, int dwExitCode) =>
    _FreeLibraryAndExitThread(hLibModule, dwExitCode);

@Native<Void Function(HMODULE, Uint32)>(symbol: 'FreeLibraryAndExitThread')
external void _FreeLibraryAndExitThread(int hLibModule, int dwExitCode);

/// Frees memory that a function related to job objects allocated.
///
/// Functions related to job objects that allocate memory include
/// QueryIoRateControlInformationJobObject.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/jobapi2/nf-jobapi2-freememoryjobobject>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
void FreeMemoryJobObject(Pointer buffer) => _FreeMemoryJobObject(buffer);

@Native<Void Function(Pointer)>(symbol: 'FreeMemoryJobObject')
external void _FreeMemoryJobObject(Pointer buffer);

/// Returns the number of active processors in a processor group or in the
/// system.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getactiveprocessorcount>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GetActiveProcessorCount(int groupNumber) =>
    GetActiveProcessorCount_Wrapper(groupNumber);

/// Returns the number of active processor groups in the system.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getactiveprocessorgroupcount>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GetActiveProcessorGroupCount() => _GetActiveProcessorGroupCount();

@Native<Uint16 Function()>(symbol: 'GetActiveProcessorGroupCount')
external int _GetActiveProcessorGroupCount();

/// Determines whether a file is an executable (.exe) file, and if so, which
/// subsystem runs the executable file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getbinarytypew>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool GetBinaryType(PCWSTR lpApplicationName, Pointer<Uint32> lpBinaryType) =>
    GetBinaryTypeW_Wrapper(lpApplicationName, lpBinaryType) != FALSE;

/// Retrieves the command-line string for the current process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processenv/nf-processenv-getcommandlinew>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
PCWSTR GetCommandLine() => _GetCommandLine();

@Native<PCWSTR Function()>(symbol: 'GetCommandLineW')
external PCWSTR _GetCommandLine();

/// Retrieves the current configuration of a communications device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getcommconfig>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool GetCommConfig(
  int hCommDev,
  Pointer<COMMCONFIG>? lpCC,
  Pointer<Uint32> lpdwSize,
) => GetCommConfig_Wrapper(hCommDev, lpCC ?? nullptr, lpdwSize) != FALSE;

/// Retrieves the value of the event mask for a specified communications device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getcommmask>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool GetCommMask(int hFile, Pointer<Uint32> lpEvtMask) =>
    GetCommMask_Wrapper(hFile, lpEvtMask) != FALSE;

/// Retrieves the modem control-register values.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getcommmodemstatus>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool GetCommModemStatus(int hFile, Pointer<Uint32> lpModemStat) =>
    GetCommModemStatus_Wrapper(hFile, lpModemStat) != FALSE;

/// Retrieves information about the communications properties for a specified
/// communications device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getcommproperties>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool GetCommProperties(int hFile, Pointer<COMMPROP> lpCommProp) =>
    GetCommProperties_Wrapper(hFile, lpCommProp) != FALSE;

/// Retrieves the current control settings for a specified communications
/// device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getcommstate>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool GetCommState(int hFile, Pointer<DCB> lpDCB) =>
    GetCommState_Wrapper(hFile, lpDCB) != FALSE;

/// Retrieves the time-out parameters for all read and write operations on a
/// specified communications device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getcommtimeouts>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool GetCommTimeouts(int hFile, Pointer<COMMTIMEOUTS> lpCommTimeouts) =>
    GetCommTimeouts_Wrapper(hFile, lpCommTimeouts) != FALSE;

/// Retrieves the actual number of bytes of disk storage used to store a
/// specified file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getcompressedfilesizew>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GetCompressedFileSize(PCWSTR lpFileName, Pointer<Uint32>? lpFileSizeHigh) =>
    GetCompressedFileSizeW_Wrapper(lpFileName, lpFileSizeHigh ?? nullptr);

/// Retrieves the NetBIOS name of the local computer.
///
/// This name is established at system startup, when the system reads it from
/// the registry.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getcomputernamew>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool GetComputerName(PWSTR? lpBuffer, Pointer<Uint32> nSize) =>
    GetComputerNameW_Wrapper(lpBuffer ?? nullptr, nSize) != FALSE;

/// Retrieves a NetBIOS or DNS name associated with the local computer.
///
/// The names are established at system startup, when the system reads them from
/// the registry.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/sysinfoapi/nf-sysinfoapi-getcomputernameexw>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool GetComputerNameEx(
  COMPUTER_NAME_FORMAT nameType,
  PWSTR? lpBuffer,
  Pointer<Uint32> nSize,
) => GetComputerNameExW_Wrapper(nameType, lpBuffer ?? nullptr, nSize) != FALSE;

/// Retrieves the input code page used by the console associated with the
/// calling process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/getconsolecp>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GetConsoleCP() => GetConsoleCP_Wrapper();

/// Retrieves information about the size and visibility of the cursor for the
/// specified console screen buffer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/getconsolecursorinfo>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool GetConsoleCursorInfo(
  int hConsoleOutput,
  Pointer<CONSOLE_CURSOR_INFO> lpConsoleCursorInfo,
) => GetConsoleCursorInfo_Wrapper(hConsoleOutput, lpConsoleCursorInfo) != FALSE;

/// Retrieves the current input mode of a console's input buffer or the current
/// output mode of a console screen buffer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/getconsolemode>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool GetConsoleMode(int hConsoleHandle, Pointer<Uint32> lpMode) =>
    GetConsoleMode_Wrapper(hConsoleHandle, lpMode) != FALSE;

/// Retrieves the output code page used by the console associated with the
/// calling process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/getconsoleoutputcp>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GetConsoleOutputCP() => GetConsoleOutputCP_Wrapper();

/// Retrieves information about the specified console screen buffer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/getconsolescreenbufferinfo>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool GetConsoleScreenBufferInfo(
  int hConsoleOutput,
  Pointer<CONSOLE_SCREEN_BUFFER_INFO> lpConsoleScreenBufferInfo,
) =>
    GetConsoleScreenBufferInfo_Wrapper(
      hConsoleOutput,
      lpConsoleScreenBufferInfo,
    ) !=
    FALSE;

/// Retrieves information about the current console selection.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/getconsoleselectioninfo>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool GetConsoleSelectionInfo(
  Pointer<CONSOLE_SELECTION_INFO> lpConsoleSelectionInfo,
) => GetConsoleSelectionInfo_Wrapper(lpConsoleSelectionInfo) != FALSE;

/// Retrieves the title and size of the title for the current console window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/getconsoletitle>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GetConsoleTitle(PWSTR lpConsoleTitle, int nSize) =>
    GetConsoleTitleW_Wrapper(lpConsoleTitle, nSize);

/// Retrieves the window handle used by the console associated with the calling
/// process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/getconsolewindow>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GetConsoleWindow() => _GetConsoleWindow();

@Native<HWND Function()>(symbol: 'GetConsoleWindow')
external int _GetConsoleWindow();

/// Returns the handle to the active activation context of the calling thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getcurrentactctx>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool GetCurrentActCtx(Pointer<HANDLE> lphActCtx) =>
    GetCurrentActCtx_Wrapper(lphActCtx) != FALSE;

/// Retrieves the current directory for the current process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getcurrentdirectory>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GetCurrentDirectory(int nBufferLength, PWSTR? lpBuffer) =>
    _GetCurrentDirectory(nBufferLength, lpBuffer ?? nullptr);

@Native<Uint32 Function(Uint32, PWSTR)>(symbol: 'GetCurrentDirectoryW')
external int _GetCurrentDirectory(int nBufferLength, PWSTR lpBuffer);

/// Gets the package full name for the calling process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/appmodel/nf-appmodel-getcurrentpackagefullname>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
WIN32_ERROR GetCurrentPackageFullName(
  Pointer<Uint32> packageFullNameLength,
  PWSTR? packageFullName,
) => WIN32_ERROR(
  _GetCurrentPackageFullName(packageFullNameLength, packageFullName ?? nullptr),
);

@Native<Uint32 Function(Pointer<Uint32>, PWSTR)>(
  symbol: 'GetCurrentPackageFullName',
)
external int _GetCurrentPackageFullName(
  Pointer<Uint32> packageFullNameLength,
  PWSTR packageFullName,
);

/// Retrieves a pseudo handle for the current process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-getcurrentprocess>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GetCurrentProcess() => _GetCurrentProcess();

@Native<HANDLE Function()>(symbol: 'GetCurrentProcess')
external int _GetCurrentProcess();

/// Retrieves the process identifier of the calling process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-getcurrentprocessid>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GetCurrentProcessId() => _GetCurrentProcessId();

@Native<Uint32 Function()>(symbol: 'GetCurrentProcessId')
external int _GetCurrentProcessId();

/// Retrieves the number of the processor the current thread was running on
/// during the call to this function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-getcurrentprocessornumber>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GetCurrentProcessorNumber() => _GetCurrentProcessorNumber();

@Native<Uint32 Function()>(symbol: 'GetCurrentProcessorNumber')
external int _GetCurrentProcessorNumber();

/// Retrieves a pseudo handle for the calling thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-getcurrentthread>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GetCurrentThread() => _GetCurrentThread();

@Native<HANDLE Function()>(symbol: 'GetCurrentThread')
external int _GetCurrentThread();

/// Retrieves the thread identifier of the calling thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-getcurrentthreadid>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GetCurrentThreadId() => _GetCurrentThreadId();

@Native<Uint32 Function()>(symbol: 'GetCurrentThreadId')
external int _GetCurrentThreadId();

/// Retrieves the default configuration for the specified communications device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getdefaultcommconfigw>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool GetDefaultCommConfig(
  PCWSTR lpszName,
  Pointer<COMMCONFIG> lpCC,
  Pointer<Uint32> lpdwSize,
) => GetDefaultCommConfigW_Wrapper(lpszName, lpCC, lpdwSize) != FALSE;

/// Retrieves information about the specified disk, including the amount of free
/// space on the disk.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getdiskfreespacew>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool GetDiskFreeSpace(
  PCWSTR? lpRootPathName,
  Pointer<Uint32>? lpSectorsPerCluster,
  Pointer<Uint32>? lpBytesPerSector,
  Pointer<Uint32>? lpNumberOfFreeClusters,
  Pointer<Uint32>? lpTotalNumberOfClusters,
) =>
    GetDiskFreeSpaceW_Wrapper(
      lpRootPathName ?? nullptr,
      lpSectorsPerCluster ?? nullptr,
      lpBytesPerSector ?? nullptr,
      lpNumberOfFreeClusters ?? nullptr,
      lpTotalNumberOfClusters ?? nullptr,
    ) !=
    FALSE;

/// Retrieves information about the amount of space that is available on a disk
/// volume, which is the total amount of space, the total amount of free space,
/// and the total amount of free space available to the user that is associated
/// with the calling thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getdiskfreespaceexw>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool GetDiskFreeSpaceEx(
  PCWSTR? lpDirectoryName,
  Pointer<Uint64>? lpFreeBytesAvailableToCaller,
  Pointer<Uint64>? lpTotalNumberOfBytes,
  Pointer<Uint64>? lpTotalNumberOfFreeBytes,
) =>
    GetDiskFreeSpaceExW_Wrapper(
      lpDirectoryName ?? nullptr,
      lpFreeBytesAvailableToCaller ?? nullptr,
      lpTotalNumberOfBytes ?? nullptr,
      lpTotalNumberOfFreeBytes ?? nullptr,
    ) !=
    FALSE;

/// Retrieves the application-specific portion of the search path used to locate
/// DLLs for the application.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getdlldirectoryw>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GetDllDirectory(int nBufferLength, PWSTR? lpBuffer) =>
    GetDllDirectoryW_Wrapper(nBufferLength, lpBuffer ?? nullptr);

/// Determines whether a disk drive is a removable, fixed, CD-ROM, RAM disk, or
/// network drive.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getdrivetypew>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GetDriveType(PCWSTR? lpRootPathName) =>
    _GetDriveType(lpRootPathName ?? nullptr);

@Native<Uint32 Function(PCWSTR)>(symbol: 'GetDriveTypeW')
external int _GetDriveType(PCWSTR lpRootPathName);

/// Retrieves the contents of the specified variable from the environment block
/// of the calling process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processenv/nf-processenv-getenvironmentvariablew>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GetEnvironmentVariable(PCWSTR? lpName, PWSTR? lpBuffer, int nSize) =>
    GetEnvironmentVariableW_Wrapper(
      lpName ?? nullptr,
      lpBuffer ?? nullptr,
      nSize,
    );

/// Retrieves the termination status of the specified process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-getexitcodeprocess>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool GetExitCodeProcess(int hProcess, Pointer<Uint32> lpExitCode) =>
    GetExitCodeProcess_Wrapper(hProcess, lpExitCode) != FALSE;

/// Retrieves file system attributes for a specified file or directory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getfileattributesw>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GetFileAttributes(PCWSTR lpFileName) =>
    GetFileAttributesW_Wrapper(lpFileName);

/// Retrieves attributes for a specified file or directory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getfileattributesexw>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool GetFileAttributesEx(
  PCWSTR lpFileName,
  GET_FILEEX_INFO_LEVELS fInfoLevelId,
  Pointer lpFileInformation,
) =>
    GetFileAttributesExW_Wrapper(lpFileName, fInfoLevelId, lpFileInformation) !=
    FALSE;

/// Retrieves file information for the specified file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getfileinformationbyhandle>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool GetFileInformationByHandle(
  int hFile,
  Pointer<BY_HANDLE_FILE_INFORMATION> lpFileInformation,
) => GetFileInformationByHandle_Wrapper(hFile, lpFileInformation) != FALSE;

/// Retrieves the size of the specified file, in bytes.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getfilesize>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GetFileSize(int hFile, Pointer<Uint32>? lpFileSizeHigh) =>
    GetFileSize_Wrapper(hFile, lpFileSizeHigh ?? nullptr);

/// Retrieves the size of the specified file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getfilesizeex>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool GetFileSizeEx(int hFile, Pointer<Int64> lpFileSize) =>
    GetFileSizeEx_Wrapper(hFile, lpFileSize) != FALSE;

/// Retrieves the file type of the specified file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getfiletype>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
FILE_TYPE GetFileType(int hFile) => FILE_TYPE(GetFileType_Wrapper(hFile));

/// Retrieves the final path for the specified file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getfinalpathnamebyhandlew>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GetFinalPathNameByHandle(
  int hFile,
  PWSTR lpszFilePath,
  int cchFilePath,
  GETFINALPATHNAMEBYHANDLE_FLAGS dwFlags,
) => GetFinalPathNameByHandleW_Wrapper(
  hFile,
  lpszFilePath,
  cchFilePath,
  dwFlags,
);

/// Retrieves the full path and file name of the specified file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getfullpathnamew>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GetFullPathName(
  PCWSTR lpFileName,
  int nBufferLength,
  PWSTR? lpBuffer,
  Pointer<PWSTR>? lpFilePart,
) => GetFullPathNameW_Wrapper(
  lpFileName,
  nBufferLength,
  lpBuffer ?? nullptr,
  lpFilePart ?? nullptr,
);

/// Retrieves certain properties of an object handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/handleapi/nf-handleapi-gethandleinformation>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool GetHandleInformation(int hObject, Pointer<Uint32> lpdwFlags) =>
    GetHandleInformation_Wrapper(hObject, lpdwFlags) != FALSE;

/// Retrieves the size of the largest possible console window, based on the
/// current font and the size of the display.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/getlargestconsolewindowsize>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
COORD GetLargestConsoleWindowSize(int hConsoleOutput) =>
    GetLargestConsoleWindowSize_Wrapper(hConsoleOutput);

/// Retrieves information about a locale specified by name.
///
/// **Note:** The application should call this function in preference to
/// GetLocaleInfo if designed to run only on Windows Vista and later. **Note:**
/// This function can retrieve data that changes between releases, for example,
/// due to a custom locale. If your application must persist or transmit data,
/// see Using Persistent Locale Data.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winnls/nf-winnls-getlocaleinfoex>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GetLocaleInfoEx(
  PCWSTR? lpLocaleName,
  int lCType,
  PWSTR? lpLCData,
  int cchData,
) => GetLocaleInfoEx_Wrapper(
  lpLocaleName ?? nullptr,
  lCType,
  lpLCData ?? nullptr,
  cchData,
);

/// Retrieves the current local date and time.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/sysinfoapi/nf-sysinfoapi-getlocaltime>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
void GetLocalTime(Pointer<SYSTEMTIME> lpSystemTime) =>
    _GetLocalTime(lpSystemTime);

@Native<Void Function(Pointer<SYSTEMTIME>)>(symbol: 'GetLocalTime')
external void _GetLocalTime(Pointer<SYSTEMTIME> lpSystemTime);

/// Retrieves a bitmask representing the currently available disk drives.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getlogicaldrives>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GetLogicalDrives() => GetLogicalDrives_Wrapper();

/// Fills a buffer with strings that specify valid drives in the system.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getlogicaldrivestringsw>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GetLogicalDriveStrings(int nBufferLength, PWSTR? lpBuffer) =>
    GetLogicalDriveStringsW_Wrapper(nBufferLength, lpBuffer ?? nullptr);

/// Retrieves information about logical processors and related hardware.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/sysinfoapi/nf-sysinfoapi-getlogicalprocessorinformation>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool GetLogicalProcessorInformation(
  Pointer<SYSTEM_LOGICAL_PROCESSOR_INFORMATION>? buffer,
  Pointer<Uint32> returnedLength,
) =>
    GetLogicalProcessorInformation_Wrapper(buffer ?? nullptr, returnedLength) !=
    FALSE;

/// Converts the specified path to its long form.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getlongpathnamew>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GetLongPathName(PCWSTR lpszShortPath, PWSTR? lpszLongPath, int cchBuffer) =>
    GetLongPathNameW_Wrapper(lpszShortPath, lpszLongPath ?? nullptr, cchBuffer);

/// Queries if the specified architecture is supported on the current system,
/// either natively or by any form of compatibility or emulation layer.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-getmachinetypeattributes>.
///
/// {@category kernel32}
MACHINE_ATTRIBUTES GetMachineTypeAttributes(int machine) {
  final machineTypeAttributes = loggingCalloc<Int32>();
  final hr$ = HRESULT(
    _GetMachineTypeAttributes(machine, machineTypeAttributes),
  );
  if (hr$.isError) {
    free(machineTypeAttributes);
    throw WindowsException(hr$);
  }
  final result$ = machineTypeAttributes.value;
  free(machineTypeAttributes);
  return MACHINE_ATTRIBUTES(result$);
}

@Native<Int32 Function(Uint16, Pointer<Int32>)>(
  symbol: 'GetMachineTypeAttributes',
)
external int _GetMachineTypeAttributes(
  int machine,
  Pointer<Int32> machineTypeAttributes,
);

/// Returns the maximum number of logical processors that a processor group or
/// the system can have.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getmaximumprocessorcount>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GetMaximumProcessorCount(int groupNumber) =>
    GetMaximumProcessorCount_Wrapper(groupNumber);

/// Returns the maximum number of processor groups that the system can have.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getmaximumprocessorgroupcount>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GetMaximumProcessorGroupCount() => _GetMaximumProcessorGroupCount();

@Native<Uint16 Function()>(symbol: 'GetMaximumProcessorGroupCount')
external int _GetMaximumProcessorGroupCount();

/// Retrieves the fully qualified path for the file that contains the specified
/// module.
///
/// The module must have been loaded by the current process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-getmodulefilenamew>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GetModuleFileName(int? hModule, PWSTR lpFilename, int nSize) =>
    GetModuleFileNameW_Wrapper(hModule ?? NULL, lpFilename, nSize);

/// Retrieves a module handle for the specified module.
///
/// The module must have been loaded by the calling process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-getmodulehandlew>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GetModuleHandle(PCWSTR? lpModuleName) =>
    GetModuleHandleW_Wrapper(lpModuleName ?? nullptr);

/// Retrieves a module handle for the specified module and increments the
/// module's reference count unless GET_MODULE_HANDLE_EX_FLAG_UNCHANGED_REFCOUNT
/// is specified.
///
/// The module must have been loaded by the calling process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-getmodulehandleexw>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool GetModuleHandleEx(
  int dwFlags,
  PCWSTR? lpModuleName,
  Pointer<HMODULE> phModule,
) =>
    GetModuleHandleExW_Wrapper(dwFlags, lpModuleName ?? nullptr, phModule) !=
    FALSE;

/// Retrieves the client computer name for the specified named pipe.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/namedpipeapi/nf-namedpipeapi-getnamedpipeclientcomputernamew>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool GetNamedPipeClientComputerName(
  int pipe,
  PWSTR clientComputerName,
  int clientComputerNameLength,
) =>
    _GetNamedPipeClientComputerName(
      pipe,
      clientComputerName,
      clientComputerNameLength,
    ) !=
    FALSE;

@Native<BOOL Function(HANDLE, PWSTR, Uint32)>(
  symbol: 'GetNamedPipeClientComputerNameW',
)
external int _GetNamedPipeClientComputerName(
  int pipe,
  PWSTR clientComputerName,
  int clientComputerNameLength,
);

/// Retrieves the client process identifier for the specified named pipe.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getnamedpipeclientprocessid>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool GetNamedPipeClientProcessId(int pipe, Pointer<Uint32> clientProcessId) =>
    GetNamedPipeClientProcessId_Wrapper(pipe, clientProcessId) != FALSE;

/// Retrieves the client session identifier for the specified named pipe.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getnamedpipeclientsessionid>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool GetNamedPipeClientSessionId(int pipe, Pointer<Uint32> clientSessionId) =>
    GetNamedPipeClientSessionId_Wrapper(pipe, clientSessionId) != FALSE;

/// Retrieves information about a specified named pipe.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/namedpipeapi/nf-namedpipeapi-getnamedpipehandlestatew>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool GetNamedPipeHandleState(
  int hNamedPipe,
  Pointer<Uint32>? lpState,
  Pointer<Uint32>? lpCurInstances,
  Pointer<Uint32>? lpMaxCollectionCount,
  Pointer<Uint32>? lpCollectDataTimeout,
  PWSTR? lpUserName,
  int nMaxUserNameSize,
) =>
    _GetNamedPipeHandleState(
      hNamedPipe,
      lpState ?? nullptr,
      lpCurInstances ?? nullptr,
      lpMaxCollectionCount ?? nullptr,
      lpCollectDataTimeout ?? nullptr,
      lpUserName ?? nullptr,
      nMaxUserNameSize,
    ) !=
    FALSE;

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

/// Retrieves information about the specified named pipe.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/namedpipeapi/nf-namedpipeapi-getnamedpipeinfo>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool GetNamedPipeInfo(
  int hNamedPipe,
  Pointer<Uint32>? lpFlags,
  Pointer<Uint32>? lpOutBufferSize,
  Pointer<Uint32>? lpInBufferSize,
  Pointer<Uint32>? lpMaxInstances,
) =>
    GetNamedPipeInfo_Wrapper(
      hNamedPipe,
      lpFlags ?? nullptr,
      lpOutBufferSize ?? nullptr,
      lpInBufferSize ?? nullptr,
      lpMaxInstances ?? nullptr,
    ) !=
    FALSE;

/// Retrieves information about the current system to an application running
/// under WOW64.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/sysinfoapi/nf-sysinfoapi-getnativesysteminfo>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
void GetNativeSystemInfo(Pointer<SYSTEM_INFO> lpSystemInfo) =>
    _GetNativeSystemInfo(lpSystemInfo);

@Native<Void Function(Pointer<SYSTEM_INFO>)>(symbol: 'GetNativeSystemInfo')
external void _GetNativeSystemInfo(Pointer<SYSTEM_INFO> lpSystemInfo);

/// Retrieves the number of unread input records in the console's input buffer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/getnumberofconsoleinputevents>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool GetNumberOfConsoleInputEvents(
  int hConsoleInput,
  Pointer<Uint32> lpNumberOfEvents,
) =>
    GetNumberOfConsoleInputEvents_Wrapper(hConsoleInput, lpNumberOfEvents) !=
    FALSE;

/// Retrieves the results of an overlapped operation on the specified file,
/// named pipe, or communications device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/ioapiset/nf-ioapiset-getoverlappedresult>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool GetOverlappedResult(
  int hFile,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<Uint32> lpNumberOfBytesTransferred,
  bool bWait,
) =>
    GetOverlappedResult_Wrapper(
      hFile,
      lpOverlapped,
      lpNumberOfBytesTransferred,
      bWait ? TRUE : FALSE,
    ) !=
    FALSE;

/// Retrieves the results of an overlapped operation on the specified file,
/// named pipe, or communications device within the specified time-out interval.
///
/// The calling thread can perform an alertable wait.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/ioapiset/nf-ioapiset-getoverlappedresultex>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool GetOverlappedResultEx(
  int hFile,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<Uint32> lpNumberOfBytesTransferred,
  int dwMilliseconds,
  bool bAlertable,
) =>
    GetOverlappedResultEx_Wrapper(
      hFile,
      lpOverlapped,
      lpNumberOfBytesTransferred,
      dwMilliseconds,
      bAlertable ? TRUE : FALSE,
    ) !=
    FALSE;

/// Retrieves the amount of RAM that is physically installed on the computer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/sysinfoapi/nf-sysinfoapi-getphysicallyinstalledsystemmemory>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool GetPhysicallyInstalledSystemMemory(
  Pointer<Uint64> totalMemoryInKilobytes,
) =>
    GetPhysicallyInstalledSystemMemory_Wrapper(totalMemoryInKilobytes) != FALSE;

/// Retrieves the address of an exported function or variable from the specified
/// dynamic-link library (DLL).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-getprocaddress>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
FARPROC GetProcAddress(int hModule, PCSTR lpProcName) =>
    GetProcAddress_Wrapper(hModule, lpProcName);

/// Retrieves a handle to the default heap of the calling process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/heapapi/nf-heapapi-getprocessheap>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GetProcessHeap() => GetProcessHeap_Wrapper();

/// Returns the number of active heaps and retrieves handles to all of the
/// active heaps for the calling process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/heapapi/nf-heapapi-getprocessheaps>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GetProcessHeaps(int numberOfHeaps, Pointer<HANDLE> processHeaps) =>
    GetProcessHeaps_Wrapper(numberOfHeaps, processHeaps);

/// Retrieves the process identifier of the specified process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-getprocessid>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GetProcessId(int process) => GetProcessId_Wrapper(process);

/// Retrieves the shutdown parameters for the currently calling process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-getprocessshutdownparameters>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool GetProcessShutdownParameters(
  Pointer<Uint32> lpdwLevel,
  Pointer<Uint32> lpdwFlags,
) => GetProcessShutdownParameters_Wrapper(lpdwLevel, lpdwFlags) != FALSE;

/// Retrieves timing information for the specified process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-getprocesstimes>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool GetProcessTimes(
  int hProcess,
  Pointer<FILETIME> lpCreationTime,
  Pointer<FILETIME> lpExitTime,
  Pointer<FILETIME> lpKernelTime,
  Pointer<FILETIME> lpUserTime,
) =>
    GetProcessTimes_Wrapper(
      hProcess,
      lpCreationTime,
      lpExitTime,
      lpKernelTime,
      lpUserTime,
    ) !=
    FALSE;

/// Retrieves the major and minor version numbers of the system on which the
/// specified process expects to run.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-getprocessversion>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GetProcessVersion(int processId) => GetProcessVersion_Wrapper(processId);

/// Retrieves the minimum and maximum working set sizes of the specified
/// process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/memoryapi/nf-memoryapi-getprocessworkingsetsize>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool GetProcessWorkingSetSize(
  int hProcess,
  Pointer<IntPtr> lpMinimumWorkingSetSize,
  Pointer<IntPtr> lpMaximumWorkingSetSize,
) =>
    GetProcessWorkingSetSize_Wrapper(
      hProcess,
      lpMinimumWorkingSetSize,
      lpMaximumWorkingSetSize,
    ) !=
    FALSE;

/// Retrieves the product type for the operating system on the local computer,
/// and maps the type to the product types supported by the specified operating
/// system.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/sysinfoapi/nf-sysinfoapi-getproductinfo>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool GetProductInfo(
  int dwOSMajorVersion,
  int dwOSMinorVersion,
  int dwSpMajorVersion,
  int dwSpMinorVersion,
  Pointer<Uint32> pdwReturnedProductType,
) =>
    _GetProductInfo(
      dwOSMajorVersion,
      dwOSMinorVersion,
      dwSpMajorVersion,
      dwSpMinorVersion,
      pdwReturnedProductType,
    ) !=
    FALSE;

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

/// Attempts to dequeue an I/O completion packet from the specified I/O
/// completion port.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/ioapiset/nf-ioapiset-getqueuedcompletionstatus>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool GetQueuedCompletionStatus(
  int completionPort,
  Pointer<Uint32> lpNumberOfBytesTransferred,
  Pointer<IntPtr> lpCompletionKey,
  Pointer<Pointer<OVERLAPPED>> lpOverlapped,
  int dwMilliseconds,
) =>
    GetQueuedCompletionStatus_Wrapper(
      completionPort,
      lpNumberOfBytesTransferred,
      lpCompletionKey,
      lpOverlapped,
      dwMilliseconds,
    ) !=
    FALSE;

/// Retrieves multiple completion port entries simultaneously.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/ioapiset/nf-ioapiset-getqueuedcompletionstatusex>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool GetQueuedCompletionStatusEx(
  int completionPort,
  Pointer<OVERLAPPED_ENTRY> lpCompletionPortEntries,
  int ulCount,
  Pointer<Uint32> ulNumEntriesRemoved,
  int dwMilliseconds,
  bool fAlertable,
) =>
    GetQueuedCompletionStatusEx_Wrapper(
      completionPort,
      lpCompletionPortEntries,
      ulCount,
      ulNumEntriesRemoved,
      dwMilliseconds,
      fAlertable ? TRUE : FALSE,
    ) !=
    FALSE;

/// Retrieves the short path form of the specified path.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getshortpathnamew>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GetShortPathName(
  PCWSTR lpszLongPath,
  PWSTR? lpszShortPath,
  int cchBuffer,
) => GetShortPathNameW_Wrapper(
  lpszLongPath,
  lpszShortPath ?? nullptr,
  cchBuffer,
);

/// Retrieves the contents of the STARTUPINFO structure that was specified when
/// the calling process was created.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-getstartupinfow>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
void GetStartupInfo(Pointer<STARTUPINFO> lpStartupInfo) =>
    _GetStartupInfo(lpStartupInfo);

@Native<Void Function(Pointer<STARTUPINFO>)>(symbol: 'GetStartupInfoW')
external void _GetStartupInfo(Pointer<STARTUPINFO> lpStartupInfo);

/// Retrieves a handle to the specified standard device (standard input,
/// standard output, or standard error).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/getstdhandle>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GetStdHandle(STD_HANDLE nStdHandle) => GetStdHandle_Wrapper(nStdHandle);

/// Returns the language identifier for the system locale.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winnls/nf-winnls-getsystemdefaultlangid>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GetSystemDefaultLangID() => _GetSystemDefaultLangID();

@Native<Uint16 Function()>(symbol: 'GetSystemDefaultLangID')
external int _GetSystemDefaultLangID();

/// Retrieves the system default locale name.
///
/// **Note:** It is recommended that applications call GetUserDefaultLocaleName
/// in preference over this function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winnls/nf-winnls-getsystemdefaultlocalename>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GetSystemDefaultLocaleName(PWSTR lpLocaleName, int cchLocaleName) =>
    GetSystemDefaultLocaleName_Wrapper(lpLocaleName, cchLocaleName);

/// Retrieves the path of the system directory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/sysinfoapi/nf-sysinfoapi-getsystemdirectoryw>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GetSystemDirectory(PWSTR? lpBuffer, int uSize) =>
    GetSystemDirectoryW_Wrapper(lpBuffer ?? nullptr, uSize);

/// Retrieves information about the current system.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/sysinfoapi/nf-sysinfoapi-getsysteminfo>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
void GetSystemInfo(Pointer<SYSTEM_INFO> lpSystemInfo) =>
    _GetSystemInfo(lpSystemInfo);

@Native<Void Function(Pointer<SYSTEM_INFO>)>(symbol: 'GetSystemInfo')
external void _GetSystemInfo(Pointer<SYSTEM_INFO> lpSystemInfo);

/// Retrieves the power status of the system.
///
/// The status indicates whether the system is running on AC or DC power,
/// whether the battery is currently charging, how much battery life remains,
/// and if battery saver is on or off.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getsystempowerstatus>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool GetSystemPowerStatus(Pointer<SYSTEM_POWER_STATUS> lpSystemPowerStatus) =>
    GetSystemPowerStatus_Wrapper(lpSystemPowerStatus) != FALSE;

/// Retrieves the current system date and time in Coordinated Universal Time
/// (UTC) format.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/sysinfoapi/nf-sysinfoapi-getsystemtime>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
void GetSystemTime(Pointer<SYSTEMTIME> lpSystemTime) =>
    _GetSystemTime(lpSystemTime);

@Native<Void Function(Pointer<SYSTEMTIME>)>(symbol: 'GetSystemTime')
external void _GetSystemTime(Pointer<SYSTEMTIME> lpSystemTime);

/// Determines whether the system is applying periodic time adjustments to its
/// time-of-day clock, and obtains the value and period of any such adjustments.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/sysinfoapi/nf-sysinfoapi-getsystemtimeadjustment>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool GetSystemTimeAdjustment(
  Pointer<Uint32> lpTimeAdjustment,
  Pointer<Uint32> lpTimeIncrement,
  Pointer<BOOL> lpTimeAdjustmentDisabled,
) =>
    GetSystemTimeAdjustment_Wrapper(
      lpTimeAdjustment,
      lpTimeIncrement,
      lpTimeAdjustmentDisabled,
    ) !=
    FALSE;

/// Retrieves system timing information.
///
/// On a multiprocessor system, the values returned are the sum of the
/// designated times across all processors.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-getsystemtimes>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool GetSystemTimes(
  Pointer<FILETIME>? lpIdleTime,
  Pointer<FILETIME>? lpKernelTime,
  Pointer<FILETIME>? lpUserTime,
) =>
    GetSystemTimes_Wrapper(
      lpIdleTime ?? nullptr,
      lpKernelTime ?? nullptr,
      lpUserTime ?? nullptr,
    ) !=
    FALSE;

/// Creates a name for a temporary file.
///
/// If a unique file name is generated, an empty file is created and the handle
/// to it is released; otherwise, only a file name is generated.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-gettempfilenamew>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GetTempFileName(
  PCWSTR lpPathName,
  PCWSTR lpPrefixString,
  int uUnique,
  PWSTR lpTempFileName,
) => GetTempFileNameW_Wrapper(
  lpPathName,
  lpPrefixString,
  uUnique,
  lpTempFileName,
);

/// Retrieves the path of the directory designated for temporary files.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-gettemppathw>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GetTempPath(int nBufferLength, PWSTR? lpBuffer) =>
    GetTempPathW_Wrapper(nBufferLength, lpBuffer ?? nullptr);

/// Retrieves the path of the directory designated for temporary files, based on
/// the privileges of the calling process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-gettemppath2w>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GetTempPath2(int bufferLength, PWSTR? buffer) =>
    _GetTempPath2(bufferLength, buffer ?? nullptr);

@Native<Uint32 Function(Uint32, PWSTR)>(symbol: 'GetTempPath2W')
external int _GetTempPath2(int bufferLength, PWSTR buffer);

/// Retrieves the thread identifier of the specified thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-getthreadid>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GetThreadId(int thread) => GetThreadId_Wrapper(thread);

/// Returns the locale identifier of the current locale for the calling thread.
///
/// **Note:** This function can retrieve data that changes between releases, for
/// example, due to a custom locale.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winnls/nf-winnls-getthreadlocale>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GetThreadLocale() => _GetThreadLocale();

@Native<Uint32 Function()>(symbol: 'GetThreadLocale')
external int _GetThreadLocale();

/// Retrieves timing information for the specified thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-getthreadtimes>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool GetThreadTimes(
  int hThread,
  Pointer<FILETIME> lpCreationTime,
  Pointer<FILETIME> lpExitTime,
  Pointer<FILETIME> lpKernelTime,
  Pointer<FILETIME> lpUserTime,
) =>
    GetThreadTimes_Wrapper(
      hThread,
      lpCreationTime,
      lpExitTime,
      lpKernelTime,
      lpUserTime,
    ) !=
    FALSE;

/// Returns the language identifier of the first user interface language for the
/// current thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winnls/nf-winnls-getthreaduilanguage>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GetThreadUILanguage() => _GetThreadUILanguage();

@Native<Uint16 Function()>(symbol: 'GetThreadUILanguage')
external int _GetThreadUILanguage();

/// Retrieves the number of milliseconds that have elapsed since the system was
/// started, up to 49.7 days.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/sysinfoapi/nf-sysinfoapi-gettickcount>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GetTickCount() => _GetTickCount();

@Native<Uint32 Function()>(symbol: 'GetTickCount')
external int _GetTickCount();

/// Returns the language identifier of the Region Format setting for the current
/// user.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winnls/nf-winnls-getuserdefaultlangid>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GetUserDefaultLangID() => _GetUserDefaultLangID();

@Native<Uint16 Function()>(symbol: 'GetUserDefaultLangID')
external int _GetUserDefaultLangID();

/// Returns the locale identifier for the user default locale.
///
/// Caution If the user default locale is a custom locale, an application cannot
/// accurately tag data with the value or exchange it.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winnls/nf-winnls-getuserdefaultlcid>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GetUserDefaultLCID() => _GetUserDefaultLCID();

@Native<Uint32 Function()>(symbol: 'GetUserDefaultLCID')
external int _GetUserDefaultLCID();

/// Retrieves the user default locale name.
///
/// **Note:** The application should call this function in preference to
/// GetUserDefaultLCID if designed to run only on Windows Vista and later.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winnls/nf-winnls-getuserdefaultlocalename>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GetUserDefaultLocaleName(PWSTR lpLocaleName, int cchLocaleName) =>
    GetUserDefaultLocaleName_Wrapper(lpLocaleName, cchLocaleName);

/// Retrieves information about the file system and volume associated with the
/// specified root directory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getvolumeinformationw>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool GetVolumeInformation(
  PCWSTR? lpRootPathName,
  PWSTR? lpVolumeNameBuffer,
  int nVolumeNameSize,
  Pointer<Uint32>? lpVolumeSerialNumber,
  Pointer<Uint32>? lpMaximumComponentLength,
  Pointer<Uint32>? lpFileSystemFlags,
  PWSTR? lpFileSystemNameBuffer,
  int nFileSystemNameSize,
) =>
    GetVolumeInformationW_Wrapper(
      lpRootPathName ?? nullptr,
      lpVolumeNameBuffer ?? nullptr,
      nVolumeNameSize,
      lpVolumeSerialNumber ?? nullptr,
      lpMaximumComponentLength ?? nullptr,
      lpFileSystemFlags ?? nullptr,
      lpFileSystemNameBuffer ?? nullptr,
      nFileSystemNameSize,
    ) !=
    FALSE;

/// Retrieves information about the file system and volume associated with the
/// specified file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getvolumeinformationbyhandlew>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool GetVolumeInformationByHandle(
  int hFile,
  PWSTR? lpVolumeNameBuffer,
  int nVolumeNameSize,
  Pointer<Uint32>? lpVolumeSerialNumber,
  Pointer<Uint32>? lpMaximumComponentLength,
  Pointer<Uint32>? lpFileSystemFlags,
  PWSTR? lpFileSystemNameBuffer,
  int nFileSystemNameSize,
) =>
    GetVolumeInformationByHandleW_Wrapper(
      hFile,
      lpVolumeNameBuffer ?? nullptr,
      nVolumeNameSize,
      lpVolumeSerialNumber ?? nullptr,
      lpMaximumComponentLength ?? nullptr,
      lpFileSystemFlags ?? nullptr,
      lpFileSystemNameBuffer ?? nullptr,
      nFileSystemNameSize,
    ) !=
    FALSE;

/// Retrieves a volume GUID path for the volume that is associated with the
/// specified volume mount point ( drive letter, volume GUID path, or mounted
/// folder).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getvolumenameforvolumemountpointw>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool GetVolumeNameForVolumeMountPoint(
  PCWSTR lpszVolumeMountPoint,
  PWSTR lpszVolumeName,
  int cchBufferLength,
) =>
    GetVolumeNameForVolumeMountPointW_Wrapper(
      lpszVolumeMountPoint,
      lpszVolumeName,
      cchBufferLength,
    ) !=
    FALSE;

/// Retrieves the volume mount point where the specified path is mounted.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getvolumepathnamew>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool GetVolumePathName(
  PCWSTR lpszFileName,
  PWSTR lpszVolumePathName,
  int cchBufferLength,
) =>
    GetVolumePathNameW_Wrapper(
      lpszFileName,
      lpszVolumePathName,
      cchBufferLength,
    ) !=
    FALSE;

/// Retrieves a list of drive letters and mounted folder paths for the specified
/// volume.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getvolumepathnamesforvolumenamew>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool GetVolumePathNamesForVolumeName(
  PCWSTR lpszVolumeName,
  PWSTR? lpszVolumePathNames,
  int cchBufferLength,
  Pointer<Uint32> lpcchReturnLength,
) =>
    GetVolumePathNamesForVolumeNameW_Wrapper(
      lpszVolumeName,
      lpszVolumePathNames ?? nullptr,
      cchBufferLength,
      lpcchReturnLength,
    ) !=
    FALSE;

/// Allocates the specified number of bytes from the heap.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-globalalloc>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GlobalAlloc(GLOBAL_ALLOC_FLAGS uFlags, int dwBytes) =>
    GlobalAlloc_Wrapper(uFlags, dwBytes);

/// Frees the specified global memory object and invalidates its handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-globalfree>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GlobalFree(int? hMem) => GlobalFree_Wrapper(hMem ?? NULL);

/// Locks a global memory object and returns a pointer to the first byte of the
/// object's memory block.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-globallock>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
Pointer GlobalLock(int hMem) => GlobalLock_Wrapper(hMem);

/// Retrieves information about the system's current usage of both physical and
/// virtual memory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/sysinfoapi/nf-sysinfoapi-globalmemorystatusex>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool GlobalMemoryStatusEx(Pointer<MEMORYSTATUSEX> lpBuffer) =>
    GlobalMemoryStatusEx_Wrapper(lpBuffer) != FALSE;

/// Retrieves the current size of the specified global memory object, in bytes.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-globalsize>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GlobalSize(int hMem) => GlobalSize_Wrapper(hMem);

/// Decrements the lock count associated with a memory object that was allocated
/// with GMEM_MOVEABLE.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-globalunlock>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool GlobalUnlock(int hMem) => GlobalUnlock_Wrapper(hMem) != FALSE;

/// Allocates a block of memory from a heap.
///
/// The allocated memory is not movable.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/heapapi/nf-heapapi-heapalloc>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
Pointer HeapAlloc(int hHeap, HEAP_FLAGS dwFlags, int dwBytes) =>
    _HeapAlloc(hHeap, dwFlags, dwBytes);

@Native<Pointer Function(HANDLE, Uint32, IntPtr)>(symbol: 'HeapAlloc')
external Pointer _HeapAlloc(int hHeap, int dwFlags, int dwBytes);

/// Returns the size of the largest committed free block in the specified heap.
///
/// If the Disable heap coalesce on free global flag is set, this function also
/// coalesces adjacent free blocks of memory in the heap.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/heapapi/nf-heapapi-heapcompact>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int HeapCompact(int hHeap, HEAP_FLAGS dwFlags) =>
    HeapCompact_Wrapper(hHeap, dwFlags);

/// Creates a private heap object that can be used by the calling process.
///
/// The function reserves space in the virtual address space of the process and
/// allocates physical storage for a specified initial portion of this block.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/heapapi/nf-heapapi-heapcreate>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int HeapCreate(HEAP_FLAGS flOptions, int dwInitialSize, int dwMaximumSize) =>
    HeapCreate_Wrapper(flOptions, dwInitialSize, dwMaximumSize);

/// Destroys the specified heap object.
///
/// It decommits and releases all the pages of a private heap object, and it
/// invalidates the handle to the heap.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/heapapi/nf-heapapi-heapdestroy>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool HeapDestroy(int hHeap) => HeapDestroy_Wrapper(hHeap) != FALSE;

/// Frees a memory block allocated from a heap by the HeapAlloc or HeapReAlloc
/// function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/heapapi/nf-heapapi-heapfree>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool HeapFree(int hHeap, HEAP_FLAGS dwFlags, Pointer? lpMem) =>
    HeapFree_Wrapper(hHeap, dwFlags, lpMem ?? nullptr) != FALSE;

/// Attempts to acquire the critical section object, or lock, that is associated
/// with a specified heap.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/heapapi/nf-heapapi-heaplock>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool HeapLock(int hHeap) => HeapLock_Wrapper(hHeap) != FALSE;

/// Retrieves information about the specified heap.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/heapapi/nf-heapapi-heapqueryinformation>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool HeapQueryInformation(
  int? heapHandle,
  HEAP_INFORMATION_CLASS heapInformationClass,
  Pointer? heapInformation,
  int heapInformationLength,
  Pointer<IntPtr>? returnLength,
) =>
    HeapQueryInformation_Wrapper(
      heapHandle ?? NULL,
      heapInformationClass,
      heapInformation ?? nullptr,
      heapInformationLength,
      returnLength ?? nullptr,
    ) !=
    FALSE;

/// Reallocates a block of memory from a heap.
///
/// This function enables you to resize a memory block and change other memory
/// block properties.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/heapapi/nf-heapapi-heaprealloc>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
Pointer HeapReAlloc(
  int hHeap,
  HEAP_FLAGS dwFlags,
  Pointer? lpMem,
  int dwBytes,
) => _HeapReAlloc(hHeap, dwFlags, lpMem ?? nullptr, dwBytes);

@Native<Pointer Function(HANDLE, Uint32, Pointer, IntPtr)>(
  symbol: 'HeapReAlloc',
)
external Pointer _HeapReAlloc(
  int hHeap,
  int dwFlags,
  Pointer lpMem,
  int dwBytes,
);

/// Enables features for a specified heap.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/heapapi/nf-heapapi-heapsetinformation>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool HeapSetInformation(
  int? heapHandle,
  HEAP_INFORMATION_CLASS heapInformationClass,
  Pointer? heapInformation,
  int heapInformationLength,
) =>
    HeapSetInformation_Wrapper(
      heapHandle ?? NULL,
      heapInformationClass,
      heapInformation ?? nullptr,
      heapInformationLength,
    ) !=
    FALSE;

/// Retrieves the size of a memory block allocated from a heap by the HeapAlloc
/// or HeapReAlloc function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/heapapi/nf-heapapi-heapsize>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int HeapSize(int hHeap, HEAP_FLAGS dwFlags, Pointer lpMem) =>
    _HeapSize(hHeap, dwFlags, lpMem);

@Native<IntPtr Function(HANDLE, Uint32, Pointer)>(symbol: 'HeapSize')
external int _HeapSize(int hHeap, int dwFlags, Pointer lpMem);

/// Releases ownership of the critical section object, or lock, that is
/// associated with a specified heap.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/heapapi/nf-heapapi-heapunlock>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool HeapUnlock(int hHeap) => HeapUnlock_Wrapper(hHeap) != FALSE;

/// Validates the specified heap.
///
/// The function scans all the memory blocks in the heap and verifies that the
/// heap control structures maintained by the heap manager are in a consistent
/// state.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/heapapi/nf-heapapi-heapvalidate>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool HeapValidate(int hHeap, HEAP_FLAGS dwFlags, Pointer? lpMem) =>
    _HeapValidate(hHeap, dwFlags, lpMem ?? nullptr) != FALSE;

@Native<BOOL Function(HANDLE, Uint32, Pointer)>(symbol: 'HeapValidate')
external int _HeapValidate(int hHeap, int dwFlags, Pointer lpMem);

/// Enumerates the memory blocks in the specified heap.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/heapapi/nf-heapapi-heapwalk>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool HeapWalk(int hHeap, Pointer<PROCESS_HEAP_ENTRY> lpEntry) =>
    HeapWalk_Wrapper(hHeap, lpEntry) != FALSE;

/// Initializes the specified list of attributes for process and thread
/// creation.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-initializeprocthreadattributelist>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool InitializeProcThreadAttributeList(
  int? lpAttributeList,
  int dwAttributeCount,
  Pointer<IntPtr> lpSize,
) =>
    InitializeProcThreadAttributeList_Wrapper(
      lpAttributeList ?? NULL,
      dwAttributeCount,
      NULL,
      lpSize,
    ) !=
    FALSE;

/// Determines whether the calling process is being debugged by a user-mode
/// debugger.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/debugapi/nf-debugapi-isdebuggerpresent>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool IsDebuggerPresent() => _IsDebuggerPresent() != FALSE;

@Native<BOOL Function()>(symbol: 'IsDebuggerPresent')
external int _IsDebuggerPresent();

/// Indicates if the OS was booted from a VHD container.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-isnativevhdboot>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool IsNativeVhdBoot(Pointer<BOOL> nativeVhdBoot) =>
    IsNativeVhdBoot_Wrapper(nativeVhdBoot) != FALSE;

/// Determines whether the process is running in the specified job.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/jobapi/nf-jobapi-isprocessinjob>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool IsProcessInJob(int processHandle, int? jobHandle, Pointer<BOOL> result) =>
    IsProcessInJob_Wrapper(processHandle, jobHandle ?? NULL, result) != FALSE;

/// Determines the current state of the computer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-issystemresumeautomatic>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool IsSystemResumeAutomatic() => _IsSystemResumeAutomatic() != FALSE;

@Native<BOOL Function()>(symbol: 'IsSystemResumeAutomatic')
external int _IsSystemResumeAutomatic();

/// Determines if the specified locale name is valid for a locale that is
/// installed or supported on the operating system.
///
/// **Note:** An application running only on Windows Vista and later should call
/// this function in preference to IsValidLocale to determine the validity of a
/// supplemental locale.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winnls/nf-winnls-isvalidlocalename>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool IsValidLocaleName(PCWSTR lpLocaleName) =>
    _IsValidLocaleName(lpLocaleName) != FALSE;

@Native<BOOL Function(PCWSTR)>(symbol: 'IsValidLocaleName')
external int _IsValidLocaleName(PCWSTR lpLocaleName);

/// Determines whether the specified process is running under WOW64; also
/// returns additional machine process and architecture information.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wow64apiset/nf-wow64apiset-iswow64process2>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool IsWow64Process2(
  int hProcess,
  Pointer<Uint16> pProcessMachine,
  Pointer<Uint16>? pNativeMachine,
) =>
    IsWow64Process2_Wrapper(
      hProcess,
      pProcessMachine,
      pNativeMachine ?? nullptr,
    ) !=
    FALSE;

/// Loads the specified module into the address space of the calling process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-loadlibraryw>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int LoadLibrary(PCWSTR lpLibFileName) => LoadLibraryW_Wrapper(lpLibFileName);

/// Loads the specified module into the address space of the calling process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-loadlibraryexw>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int LoadLibraryEx(PCWSTR lpLibFileName, LOAD_LIBRARY_FLAGS dwFlags) =>
    LoadLibraryExW_Wrapper(lpLibFileName, NULL, dwFlags);

/// Retrieves a handle that can be used to obtain a pointer to the first byte of
/// the specified resource in memory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-loadresource>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int LoadResource(int? hModule, int hResInfo) =>
    LoadResource_Wrapper(hModule ?? NULL, hResInfo);

/// Allocates the specified number of bytes from the heap.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-localalloc>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int LocalAlloc(LOCAL_ALLOC_FLAGS uFlags, int uBytes) =>
    LocalAlloc_Wrapper(uFlags, uBytes);

/// Frees the specified local memory object and invalidates its handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-localfree>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int LocalFree(int? hMem) => LocalFree_Wrapper(hMem ?? NULL);

/// Locks the specified file for exclusive access by the calling process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-lockfile>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool LockFile(
  int hFile,
  int dwFileOffsetLow,
  int dwFileOffsetHigh,
  int nNumberOfBytesToLockLow,
  int nNumberOfBytesToLockHigh,
) =>
    LockFile_Wrapper(
      hFile,
      dwFileOffsetLow,
      dwFileOffsetHigh,
      nNumberOfBytesToLockLow,
      nNumberOfBytesToLockHigh,
    ) !=
    FALSE;

/// Locks the specified file for exclusive access by the calling process.
///
/// This function can operate either synchronously or asynchronously and can
/// request either an exclusive or a shared lock.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-lockfileex>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool LockFileEx(
  int hFile,
  LOCK_FILE_FLAGS dwFlags,
  int nNumberOfBytesToLockLow,
  int nNumberOfBytesToLockHigh,
  Pointer<OVERLAPPED> lpOverlapped,
) =>
    LockFileEx_Wrapper(
      hFile,
      dwFlags,
      NULL,
      nNumberOfBytesToLockLow,
      nNumberOfBytesToLockHigh,
      lpOverlapped,
    ) !=
    FALSE;

/// Retrieves a pointer to the specified resource in memory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-lockresource>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
Pointer LockResource(int hResData) => _LockResource(hResData);

@Native<Pointer Function(HGLOBAL)>(symbol: 'LockResource')
external Pointer _LockResource(int hResData);

/// Moves an existing file or a directory, including its children.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-movefilew>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool MoveFile(PCWSTR lpExistingFileName, PCWSTR lpNewFileName) =>
    MoveFileW_Wrapper(lpExistingFileName, lpNewFileName) != FALSE;

/// Moves an existing file or directory, including its children, with various
/// move options.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-movefileexw>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool MoveFileEx(
  PCWSTR lpExistingFileName,
  PCWSTR? lpNewFileName,
  MOVE_FILE_FLAGS dwFlags,
) =>
    MoveFileExW_Wrapper(
      lpExistingFileName,
      lpNewFileName ?? nullptr,
      dwFlags,
    ) !=
    FALSE;

/// Opens an existing named event object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/synchapi/nf-synchapi-openeventw>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int OpenEvent(
  SYNCHRONIZATION_ACCESS_RIGHTS dwDesiredAccess,
  bool bInheritHandle,
  PCWSTR lpName,
) => OpenEventW_Wrapper(dwDesiredAccess, bInheritHandle ? TRUE : FALSE, lpName);

/// Opens an existing job object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/jobapi2/nf-jobapi2-openjobobjectw>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int OpenJobObject(int dwDesiredAccess, bool bInheritHandle, PCWSTR lpName) =>
    OpenJobObjectW_Wrapper(
      dwDesiredAccess,
      bInheritHandle ? TRUE : FALSE,
      lpName,
    );

/// Opens an existing local process object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-openprocess>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int OpenProcess(
  PROCESS_ACCESS_RIGHTS dwDesiredAccess,
  bool bInheritHandle,
  int dwProcessId,
) => OpenProcess_Wrapper(
  dwDesiredAccess,
  bInheritHandle ? TRUE : FALSE,
  dwProcessId,
);

/// Sends a string to the debugger for display.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/debugapi/nf-debugapi-outputdebugstringw>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
void OutputDebugString(PCWSTR? lpOutputString) =>
    _OutputDebugString(lpOutputString ?? nullptr);

@Native<Void Function(PCWSTR)>(symbol: 'OutputDebugStringW')
external void _OutputDebugString(PCWSTR lpOutputString);

/// Gets the package family name for the specified package full name.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/appmodel/nf-appmodel-packagefamilynamefromfullname>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
WIN32_ERROR PackageFamilyNameFromFullName(
  PCWSTR packageFullName,
  Pointer<Uint32> packageFamilyNameLength,
  PWSTR? packageFamilyName,
) => WIN32_ERROR(
  _PackageFamilyNameFromFullName(
    packageFullName,
    packageFamilyNameLength,
    packageFamilyName ?? nullptr,
  ),
);

@Native<Uint32 Function(PCWSTR, Pointer<Uint32>, PWSTR)>(
  symbol: 'PackageFamilyNameFromFullName',
)
external int _PackageFamilyNameFromFullName(
  PCWSTR packageFullName,
  Pointer<Uint32> packageFamilyNameLength,
  PWSTR packageFamilyName,
);

/// Reads data from the specified console input buffer without removing it from
/// the buffer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/peekconsoleinput>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool PeekConsoleInput(
  int hConsoleInput,
  Pointer<INPUT_RECORD> lpBuffer,
  int nLength,
  Pointer<Uint32> lpNumberOfEventsRead,
) =>
    PeekConsoleInputW_Wrapper(
      hConsoleInput,
      lpBuffer,
      nLength,
      lpNumberOfEventsRead,
    ) !=
    FALSE;

/// Copies data from a named or anonymous pipe into a buffer without removing it
/// from the pipe.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/namedpipeapi/nf-namedpipeapi-peeknamedpipe>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool PeekNamedPipe(
  int hNamedPipe,
  Pointer? lpBuffer,
  int nBufferSize,
  Pointer<Uint32>? lpBytesRead,
  Pointer<Uint32>? lpTotalBytesAvail,
  Pointer<Uint32>? lpBytesLeftThisMessage,
) =>
    PeekNamedPipe_Wrapper(
      hNamedPipe,
      lpBuffer ?? nullptr,
      nBufferSize,
      lpBytesRead ?? nullptr,
      lpTotalBytesAvail ?? nullptr,
      lpBytesLeftThisMessage ?? nullptr,
    ) !=
    FALSE;

/// Posts an I/O completion packet to an I/O completion port.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/ioapiset/nf-ioapiset-postqueuedcompletionstatus>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool PostQueuedCompletionStatus(
  int completionPort,
  int dwNumberOfBytesTransferred,
  int dwCompletionKey,
  Pointer<OVERLAPPED>? lpOverlapped,
) =>
    PostQueuedCompletionStatus_Wrapper(
      completionPort,
      dwNumberOfBytesTransferred,
      dwCompletionKey,
      lpOverlapped ?? nullptr,
    ) !=
    FALSE;

/// Discards all characters from the output or input buffer of a specified
/// communications resource.
///
/// It can also terminate pending read or write operations on the resource.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-purgecomm>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool PurgeComm(int hFile, PURGE_COMM_FLAGS dwFlags) =>
    PurgeComm_Wrapper(hFile, dwFlags) != FALSE;

/// Retrieves information about MS-DOS device names.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-querydosdevicew>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int QueryDosDevice(PCWSTR? lpDeviceName, PWSTR? lpTargetPath, int ucchMax) =>
    QueryDosDeviceW_Wrapper(
      lpDeviceName ?? nullptr,
      lpTargetPath ?? nullptr,
      ucchMax,
    );

/// Retrieves the full name of the executable image for the specified process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-queryfullprocessimagenamew>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool QueryFullProcessImageName(
  int hProcess,
  PROCESS_NAME_FORMAT dwFlags,
  PWSTR lpExeName,
  Pointer<Uint32> lpdwSize,
) =>
    QueryFullProcessImageNameW_Wrapper(
      hProcess,
      dwFlags,
      lpExeName,
      lpdwSize,
    ) !=
    FALSE;

/// Retrieves limit and job state information from the job object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/jobapi2/nf-jobapi2-queryinformationjobobject>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool QueryInformationJobObject(
  int? hJob,
  JOBOBJECTINFOCLASS jobObjectInformationClass,
  Pointer lpJobObjectInformation,
  int cbJobObjectInformationLength,
  Pointer<Uint32>? lpReturnLength,
) =>
    QueryInformationJobObject_Wrapper(
      hJob ?? NULL,
      jobObjectInformationClass,
      lpJobObjectInformation,
      cbJobObjectInformationLength,
      lpReturnLength ?? nullptr,
    ) !=
    FALSE;

/// Gets information about the control of the I/O rate for a job object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/jobapi2/nf-jobapi2-queryioratecontrolinformationjobobject>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int QueryIoRateControlInformationJobObject(
  int? hJob,
  PCWSTR? volumeName,
  Pointer<Pointer<JOBOBJECT_IO_RATE_CONTROL_INFORMATION>> infoBlocks,
  Pointer<Uint32> infoBlockCount,
) => QueryIoRateControlInformationJobObject_Wrapper(
  hJob ?? NULL,
  volumeName ?? nullptr,
  infoBlocks,
  infoBlockCount,
);

/// Retrieves the current value of the performance counter, which is a high
/// resolution (&lt;1us) time stamp that can be used for time-interval
/// measurements.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/profileapi/nf-profileapi-queryperformancecounter>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool QueryPerformanceCounter(Pointer<Int64> lpPerformanceCount) =>
    QueryPerformanceCounter_Wrapper(lpPerformanceCount) != FALSE;

/// Retrieves the frequency of the performance counter.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/profileapi/nf-profileapi-queryperformancefrequency>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool QueryPerformanceFrequency(Pointer<Int64> lpFrequency) =>
    QueryPerformanceFrequency_Wrapper(lpFrequency) != FALSE;

/// Reads character input from the console input buffer and removes it from the
/// buffer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/readconsole>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool ReadConsole(
  int hConsoleInput,
  Pointer lpBuffer,
  int nNumberOfCharsToRead,
  Pointer<Uint32> lpNumberOfCharsRead,
  Pointer<CONSOLE_READCONSOLE_CONTROL>? pInputControl,
) =>
    ReadConsoleW_Wrapper(
      hConsoleInput,
      lpBuffer,
      nNumberOfCharsToRead,
      lpNumberOfCharsRead,
      pInputControl ?? nullptr,
    ) !=
    FALSE;

/// Reads data from a console input buffer and removes it from the buffer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/readconsoleinput>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool ReadConsoleInput(
  int hConsoleInput,
  Pointer<INPUT_RECORD> lpBuffer,
  int nLength,
  Pointer<Uint32> lpNumberOfEventsRead,
) =>
    ReadConsoleInputW_Wrapper(
      hConsoleInput,
      lpBuffer,
      nLength,
      lpNumberOfEventsRead,
    ) !=
    FALSE;

/// Reads data from the specified file or input/output (I/O) device.
///
/// Reads occur at the position specified by the file pointer if supported by
/// the device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-readfile>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool ReadFile(
  int hFile,
  Pointer<Uint8>? lpBuffer,
  int nNumberOfBytesToRead,
  Pointer<Uint32>? lpNumberOfBytesRead,
  Pointer<OVERLAPPED>? lpOverlapped,
) =>
    ReadFile_Wrapper(
      hFile,
      lpBuffer ?? nullptr,
      nNumberOfBytesToRead,
      lpNumberOfBytesRead ?? nullptr,
      lpOverlapped ?? nullptr,
    ) !=
    FALSE;

/// Reads data from the specified file or input/output (I/O) device.
///
/// It reports its completion status asynchronously, calling the specified
/// completion routine when reading is completed or canceled and the calling
/// thread is in an alertable wait state.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-readfileex>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool ReadFileEx(
  int hFile,
  Pointer<Uint8>? lpBuffer,
  int nNumberOfBytesToRead,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<NativeFunction<LPOVERLAPPED_COMPLETION_ROUTINE>> lpCompletionRoutine,
) =>
    ReadFileEx_Wrapper(
      hFile,
      lpBuffer ?? nullptr,
      nNumberOfBytesToRead,
      lpOverlapped,
      lpCompletionRoutine,
    ) !=
    FALSE;

/// Reads data from a file and stores it in an array of buffers.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-readfilescatter>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool ReadFileScatter(
  int hFile,
  Pointer<FILE_SEGMENT_ELEMENT> aSegmentArray,
  int nNumberOfBytesToRead,
  Pointer<OVERLAPPED> lpOverlapped,
) =>
    ReadFileScatter_Wrapper(
      hFile,
      aSegmentArray,
      nNumberOfBytesToRead,
      nullptr,
      lpOverlapped,
    ) !=
    FALSE;

/// Reads data from an area of memory in a specified process.
///
/// The entire area to be read must be accessible or the operation fails.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/memoryapi/nf-memoryapi-readprocessmemory>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool ReadProcessMemory(
  int hProcess,
  Pointer lpBaseAddress,
  Pointer lpBuffer,
  int nSize,
  Pointer<IntPtr>? lpNumberOfBytesRead,
) =>
    ReadProcessMemory_Wrapper(
      hProcess,
      lpBaseAddress,
      lpBuffer,
      nSize,
      lpNumberOfBytesRead ?? nullptr,
    ) !=
    FALSE;

/// Decrements the reference count of the specified activation context.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-releaseactctx>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
void ReleaseActCtx(int hActCtx) => _ReleaseActCtx(hActCtx);

@Native<Void Function(HANDLE)>(symbol: 'ReleaseActCtx')
external void _ReleaseActCtx(int hActCtx);

/// Deletes an existing empty directory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-removedirectoryw>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool RemoveDirectory(PCWSTR lpPathName) =>
    RemoveDirectoryW_Wrapper(lpPathName) != FALSE;

/// Removes a directory that was added to the process DLL search path by using
/// AddDllDirectory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-removedlldirectory>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool RemoveDllDirectory(Pointer cookie) =>
    RemoveDllDirectory_Wrapper(cookie) != FALSE;

/// Reopens the specified file system object with different access rights,
/// sharing mode, and flags.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-reopenfile>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int ReOpenFile(
  int hOriginalFile,
  int dwDesiredAccess,
  FILE_SHARE_MODE dwShareMode,
  FILE_FLAGS_AND_ATTRIBUTES dwFlagsAndAttributes,
) => ReOpenFile_Wrapper(
  hOriginalFile,
  dwDesiredAccess,
  dwShareMode,
  dwFlagsAndAttributes,
);

/// Sets the specified event object to the nonsignaled state.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/synchapi/nf-synchapi-resetevent>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool ResetEvent(int hEvent) => ResetEvent_Wrapper(hEvent) != FALSE;

/// Resizes the internal buffers for a pseudoconsole to the given size.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/resizepseudoconsole>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
void ResizePseudoConsole(int hPC, COORD size) {
  final hr$ = HRESULT(_ResizePseudoConsole(hPC, size));
  if (hr$.isError) throw WindowsException(hr$);
}

@Native<Int32 Function(HPCON, COORD)>(symbol: 'ResizePseudoConsole')
external int _ResizePseudoConsole(int hPC, COORD size);

/// Moves a block of data in a screen buffer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/scrollconsolescreenbuffer>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool ScrollConsoleScreenBuffer(
  int hConsoleOutput,
  Pointer<SMALL_RECT> lpScrollRectangle,
  Pointer<SMALL_RECT>? lpClipRectangle,
  COORD dwDestinationOrigin,
  Pointer<CHAR_INFO> lpFill,
) =>
    ScrollConsoleScreenBufferW_Wrapper(
      hConsoleOutput,
      lpScrollRectangle,
      lpClipRectangle ?? nullptr,
      dwDestinationOrigin,
      lpFill,
    ) !=
    FALSE;

/// Suspends character transmission for a specified communications device and
/// places the transmission line in a break state until the ClearCommBreak
/// function is called.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-setcommbreak>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool SetCommBreak(int hFile) => SetCommBreak_Wrapper(hFile) != FALSE;

/// Sets the current configuration of a communications device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-setcommconfig>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool SetCommConfig(int hCommDev, Pointer<COMMCONFIG> lpCC, int dwSize) =>
    SetCommConfig_Wrapper(hCommDev, lpCC, dwSize) != FALSE;

/// Specifies a set of events to be monitored for a communications device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-setcommmask>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool SetCommMask(int hFile, COMM_EVENT_MASK dwEvtMask) =>
    SetCommMask_Wrapper(hFile, dwEvtMask) != FALSE;

/// Configures a communications device according to the specifications in a
/// device-control block (a DCB structure).
///
/// The function reinitializes all hardware and control settings, but it does
/// not empty output or input queues.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-setcommstate>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool SetCommState(int hFile, Pointer<DCB> lpDCB) =>
    SetCommState_Wrapper(hFile, lpDCB) != FALSE;

/// Sets the time-out parameters for all read and write operations on a
/// specified communications device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-setcommtimeouts>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool SetCommTimeouts(int hFile, Pointer<COMMTIMEOUTS> lpCommTimeouts) =>
    SetCommTimeouts_Wrapper(hFile, lpCommTimeouts) != FALSE;

/// Adds or removes an application-defined HandlerRoutine function from the list
/// of handler functions for the calling process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/setconsolectrlhandler>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool SetConsoleCtrlHandler(
  Pointer<NativeFunction<PHANDLER_ROUTINE>>? handlerRoutine,
  bool add,
) =>
    SetConsoleCtrlHandler_Wrapper(
      handlerRoutine ?? nullptr,
      add ? TRUE : FALSE,
    ) !=
    FALSE;

/// Sets the size and visibility of the cursor for the specified console screen
/// buffer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/setconsolecursorinfo>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool SetConsoleCursorInfo(
  int hConsoleOutput,
  Pointer<CONSOLE_CURSOR_INFO> lpConsoleCursorInfo,
) => SetConsoleCursorInfo_Wrapper(hConsoleOutput, lpConsoleCursorInfo) != FALSE;

/// Sets the cursor position in the specified console screen buffer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/setconsolecursorposition>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool SetConsoleCursorPosition(int hConsoleOutput, COORD dwCursorPosition) =>
    SetConsoleCursorPosition_Wrapper(hConsoleOutput, dwCursorPosition) != FALSE;

/// Sets the display mode of the specified console screen buffer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/setconsoledisplaymode>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool SetConsoleDisplayMode(
  int hConsoleOutput,
  int dwFlags,
  Pointer<COORD>? lpNewScreenBufferDimensions,
) =>
    SetConsoleDisplayMode_Wrapper(
      hConsoleOutput,
      dwFlags,
      lpNewScreenBufferDimensions ?? nullptr,
    ) !=
    FALSE;

/// Sets the input mode of a console's input buffer or the output mode of a
/// console screen buffer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/setconsolemode>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool SetConsoleMode(int hConsoleHandle, CONSOLE_MODE dwMode) =>
    SetConsoleMode_Wrapper(hConsoleHandle, dwMode) != FALSE;

/// Sets the attributes of characters written to the console screen buffer by
/// the WriteFile or WriteConsole function, or echoed by the ReadFile or
/// ReadConsole function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/setconsoletextattribute>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool SetConsoleTextAttribute(
  int hConsoleOutput,
  CONSOLE_CHARACTER_ATTRIBUTES wAttributes,
) => SetConsoleTextAttribute_Wrapper(hConsoleOutput, wAttributes) != FALSE;

/// Sets the current size and position of a console screen buffer's window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/setconsolewindowinfo>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool SetConsoleWindowInfo(
  int hConsoleOutput,
  bool bAbsolute,
  Pointer<SMALL_RECT> lpConsoleWindow,
) =>
    SetConsoleWindowInfo_Wrapper(
      hConsoleOutput,
      bAbsolute ? TRUE : FALSE,
      lpConsoleWindow,
    ) !=
    FALSE;

/// Changes the current directory for the current process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-setcurrentdirectory>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool SetCurrentDirectory(PCWSTR lpPathName) =>
    _SetCurrentDirectory(lpPathName) != FALSE;

@Native<BOOL Function(PCWSTR)>(symbol: 'SetCurrentDirectoryW')
external int _SetCurrentDirectory(PCWSTR lpPathName);

/// Sets the default configuration for a communications device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-setdefaultcommconfigw>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool SetDefaultCommConfig(
  PCWSTR lpszName,
  Pointer<COMMCONFIG> lpCC,
  int dwSize,
) => SetDefaultCommConfigW_Wrapper(lpszName, lpCC, dwSize) != FALSE;

/// Specifies a default set of directories to search when the calling process
/// loads a DLL.
///
/// This search path is used when LoadLibraryEx is called with no
/// LOAD_LIBRARY_SEARCH flags.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-setdefaultdlldirectories>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool SetDefaultDllDirectories(LOAD_LIBRARY_FLAGS directoryFlags) =>
    SetDefaultDllDirectories_Wrapper(directoryFlags) != FALSE;

/// Sets the physical file size for the specified file to the current position
/// of the file pointer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-setendoffile>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool SetEndOfFile(int hFile) => SetEndOfFile_Wrapper(hFile) != FALSE;

/// Sets the contents of the specified environment variable for the current
/// process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processenv/nf-processenv-setenvironmentvariablew>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool SetEnvironmentVariable(PCWSTR lpName, PCWSTR? lpValue) =>
    SetEnvironmentVariableW_Wrapper(lpName, lpValue ?? nullptr) != FALSE;

/// Controls whether the system will handle the specified types of serious
/// errors or whether the process will handle them.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/errhandlingapi/nf-errhandlingapi-seterrormode>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
THREAD_ERROR_MODE SetErrorMode(THREAD_ERROR_MODE uMode) =>
    THREAD_ERROR_MODE(_SetErrorMode(uMode));

@Native<Uint32 Function(Uint32)>(symbol: 'SetErrorMode')
external int _SetErrorMode(int uMode);

/// Sets the specified event object to the signaled state.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/synchapi/nf-synchapi-setevent>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool SetEvent(int hEvent) => SetEvent_Wrapper(hEvent) != FALSE;

/// Causes the file I/O functions to use the ANSI character set code page for
/// the current process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-setfileapistoansi>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
void SetFileApisToANSI() => _SetFileApisToANSI();

@Native<Void Function()>(symbol: 'SetFileApisToANSI')
external void _SetFileApisToANSI();

/// Causes the file I/O functions for the process to use the OEM character set
/// code page.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-setfileapistooem>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
void SetFileApisToOEM() => _SetFileApisToOEM();

@Native<Void Function()>(symbol: 'SetFileApisToOEM')
external void _SetFileApisToOEM();

/// Sets the attributes for a file or directory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-setfileattributesw>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool SetFileAttributes(
  PCWSTR lpFileName,
  FILE_FLAGS_AND_ATTRIBUTES dwFileAttributes,
) => SetFileAttributesW_Wrapper(lpFileName, dwFileAttributes) != FALSE;

/// Sets the file information for the specified file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-setfileinformationbyhandle>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool SetFileInformationByHandle(
  int hFile,
  FILE_INFO_BY_HANDLE_CLASS fileInformationClass,
  Pointer lpFileInformation,
  int dwBufferSize,
) =>
    SetFileInformationByHandle_Wrapper(
      hFile,
      fileInformationClass,
      lpFileInformation,
      dwBufferSize,
    ) !=
    FALSE;

/// Associates a virtual address range with the specified file handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-setfileiooverlappedrange>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool SetFileIoOverlappedRange(
  int fileHandle,
  Pointer<Uint8> overlappedRangeStart,
  int length,
) =>
    SetFileIoOverlappedRange_Wrapper(
      fileHandle,
      overlappedRangeStart,
      length,
    ) !=
    FALSE;

/// Moves the file pointer of the specified file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-setfilepointer>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int SetFilePointer(
  int hFile,
  int lDistanceToMove,
  Pointer<Int32>? lpDistanceToMoveHigh,
  SET_FILE_POINTER_MOVE_METHOD dwMoveMethod,
) => SetFilePointer_Wrapper(
  hFile,
  lDistanceToMove,
  lpDistanceToMoveHigh ?? nullptr,
  dwMoveMethod,
);

/// Moves the file pointer of the specified file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-setfilepointerex>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool SetFilePointerEx(
  int hFile,
  int liDistanceToMove,
  Pointer<Int64>? lpNewFilePointer,
  SET_FILE_POINTER_MOVE_METHOD dwMoveMethod,
) =>
    SetFilePointerEx_Wrapper(
      hFile,
      liDistanceToMove,
      lpNewFilePointer ?? nullptr,
      dwMoveMethod,
    ) !=
    FALSE;

/// Sets the short name for the specified file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-setfileshortnamew>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool SetFileShortName(int hFile, PCWSTR lpShortName) =>
    SetFileShortNameW_Wrapper(hFile, lpShortName) != FALSE;

/// Sets the date and time that the specified file or directory was created,
/// last accessed, or last modified.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-setfiletime>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool SetFileTime(
  int hFile,
  Pointer<FILETIME>? lpCreationTime,
  Pointer<FILETIME>? lpLastAccessTime,
  Pointer<FILETIME>? lpLastWriteTime,
) =>
    SetFileTime_Wrapper(
      hFile,
      lpCreationTime ?? nullptr,
      lpLastAccessTime ?? nullptr,
      lpLastWriteTime ?? nullptr,
    ) !=
    FALSE;

/// Sets the valid data length of the specified file.
///
/// This function is useful in very limited scenarios.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-setfilevaliddata>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool SetFileValidData(int hFile, int validDataLength) =>
    SetFileValidData_Wrapper(hFile, validDataLength) != FALSE;

/// Sets the value of the specified firmware environment variable.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-setfirmwareenvironmentvariablew>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool SetFirmwareEnvironmentVariable(
  PCWSTR lpName,
  PCWSTR lpGuid,
  Pointer? pValue,
  int nSize,
) =>
    SetFirmwareEnvironmentVariableW_Wrapper(
      lpName,
      lpGuid,
      pValue ?? nullptr,
      nSize,
    ) !=
    FALSE;

/// Sets the value of the specified firmware environment variable and the
/// attributes that indicate how this variable is stored and maintained.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-setfirmwareenvironmentvariableexw>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool SetFirmwareEnvironmentVariableEx(
  PCWSTR lpName,
  PCWSTR lpGuid,
  Pointer? pValue,
  int nSize,
  int dwAttributes,
) =>
    SetFirmwareEnvironmentVariableExW_Wrapper(
      lpName,
      lpGuid,
      pValue ?? nullptr,
      nSize,
      dwAttributes,
    ) !=
    FALSE;

/// Sets certain properties of an object handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/handleapi/nf-handleapi-sethandleinformation>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool SetHandleInformation(int hObject, int dwMask, HANDLE_FLAGS dwFlags) =>
    SetHandleInformation_Wrapper(hObject, dwMask, dwFlags) != FALSE;

/// Sets limits for a job object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/jobapi2/nf-jobapi2-setinformationjobobject>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool SetInformationJobObject(
  int hJob,
  JOBOBJECTINFOCLASS jobObjectInformationClass,
  Pointer lpJobObjectInformation,
  int cbJobObjectInformationLength,
) =>
    SetInformationJobObject_Wrapper(
      hJob,
      jobObjectInformationClass,
      lpJobObjectInformation,
      cbJobObjectInformationLength,
    ) !=
    FALSE;

/// Sets I/O limits on a job object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/jobapi2/nf-jobapi2-setioratecontrolinformationjobobject>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int SetIoRateControlInformationJobObject(
  int hJob,
  Pointer<JOBOBJECT_IO_RATE_CONTROL_INFORMATION> ioRateControlInfo,
) => SetIoRateControlInformationJobObject_Wrapper(hJob, ioRateControlInfo);

/// Sets the read mode and the blocking mode of the specified named pipe.
///
/// If the specified handle is to the client end of a named pipe and if the
/// named pipe server process is on a remote computer, the function can also be
/// used to control local buffering.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/namedpipeapi/nf-namedpipeapi-setnamedpipehandlestate>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool SetNamedPipeHandleState(
  int hNamedPipe,
  Pointer<Uint32>? lpMode,
  Pointer<Uint32>? lpMaxCollectionCount,
  Pointer<Uint32>? lpCollectDataTimeout,
) =>
    SetNamedPipeHandleState_Wrapper(
      hNamedPipe,
      lpMode ?? nullptr,
      lpMaxCollectionCount ?? nullptr,
      lpCollectDataTimeout ?? nullptr,
    ) !=
    FALSE;

/// Sets a processor affinity mask for the threads of the specified process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-setprocessaffinitymask>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool SetProcessAffinityMask(int hProcess, int dwProcessAffinityMask) =>
    SetProcessAffinityMask_Wrapper(hProcess, dwProcessAffinityMask) != FALSE;

/// Disables or enables the ability of the system to temporarily boost the
/// priority of the threads of the specified process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-setprocesspriorityboost>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool SetProcessPriorityBoost(int hProcess, bool bDisablePriorityBoost) =>
    SetProcessPriorityBoost_Wrapper(
      hProcess,
      bDisablePriorityBoost ? TRUE : FALSE,
    ) !=
    FALSE;

/// Sets the minimum and maximum working set sizes for the specified process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/memoryapi/nf-memoryapi-setprocessworkingsetsize>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool SetProcessWorkingSetSize(
  int hProcess,
  int dwMinimumWorkingSetSize,
  int dwMaximumWorkingSetSize,
) =>
    SetProcessWorkingSetSize_Wrapper(
      hProcess,
      dwMinimumWorkingSetSize,
      dwMaximumWorkingSetSize,
    ) !=
    FALSE;

/// Sets the handle for the specified standard device (standard input, standard
/// output, or standard error).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/setstdhandle>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool SetStdHandle(STD_HANDLE nStdHandle, int hHandle) =>
    SetStdHandle_Wrapper(nStdHandle, hHandle) != FALSE;

/// Sets a processor affinity mask for the specified thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-setthreadaffinitymask>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int SetThreadAffinityMask(int hThread, int dwThreadAffinityMask) =>
    SetThreadAffinityMask_Wrapper(hThread, dwThreadAffinityMask);

/// Controls whether the system will handle the specified types of serious
/// errors or whether the calling thread will handle them.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/errhandlingapi/nf-errhandlingapi-setthreaderrormode>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool SetThreadErrorMode(
  THREAD_ERROR_MODE dwNewMode,
  Pointer<Uint32>? lpOldMode,
) => SetThreadErrorMode_Wrapper(dwNewMode, lpOldMode ?? nullptr) != FALSE;

/// Enables an application to inform the system that it is in use, thereby
/// preventing the system from entering sleep or turning off the display while
/// the application is running.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-setthreadexecutionstate>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
EXECUTION_STATE SetThreadExecutionState(EXECUTION_STATE esFlags) =>
    EXECUTION_STATE(_SetThreadExecutionState(esFlags));

@Native<Uint32 Function(Uint32)>(symbol: 'SetThreadExecutionState')
external int _SetThreadExecutionState(int esFlags);

/// Sets the user interface language for the current thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winnls/nf-winnls-setthreaduilanguage>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int SetThreadUILanguage(int langId) => SetThreadUILanguage_Wrapper(langId);

/// Initializes the communications parameters for a specified communications
/// device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-setupcomm>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool SetupComm(int hFile, int dwInQueue, int dwOutQueue) =>
    SetupComm_Wrapper(hFile, dwInQueue, dwOutQueue) != FALSE;

/// Sets the label of a file system volume.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-setvolumelabelw>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool SetVolumeLabel(PCWSTR? lpRootPathName, PCWSTR? lpVolumeName) =>
    SetVolumeLabelW_Wrapper(
      lpRootPathName ?? nullptr,
      lpVolumeName ?? nullptr,
    ) !=
    FALSE;

/// Retrieves the size, in bytes, of the specified resource.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-sizeofresource>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int SizeofResource(int? hModule, int hResInfo) =>
    SizeofResource_Wrapper(hModule ?? NULL, hResInfo);

/// Suspends the execution of the current thread until the time-out interval
/// elapses.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/synchapi/nf-synchapi-sleep>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
void Sleep(int dwMilliseconds) => _Sleep(dwMilliseconds);

@Native<Void Function(Uint32)>(symbol: 'Sleep')
external void _Sleep(int dwMilliseconds);

/// Suspends the current thread until the specified condition is met.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/synchapi/nf-synchapi-sleepex>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int SleepEx(int dwMilliseconds, bool bAlertable) =>
    _SleepEx(dwMilliseconds, bAlertable ? TRUE : FALSE);

@Native<Uint32 Function(Uint32, BOOL)>(symbol: 'SleepEx')
external int _SleepEx(int dwMilliseconds, int bAlertable);

/// Converts a system time to file time format.
///
/// System time is based on Coordinated Universal Time (UTC).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/timezoneapi/nf-timezoneapi-systemtimetofiletime>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool SystemTimeToFileTime(
  Pointer<SYSTEMTIME> lpSystemTime,
  Pointer<FILETIME> lpFileTime,
) => SystemTimeToFileTime_Wrapper(lpSystemTime, lpFileTime) != FALSE;

/// Terminates all processes currently associated with the job.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/jobapi2/nf-jobapi2-terminatejobobject>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool TerminateJobObject(int hJob, int uExitCode) =>
    TerminateJobObject_Wrapper(hJob, uExitCode) != FALSE;

/// Terminates the specified process and all of its threads.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-terminateprocess>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool TerminateProcess(int hProcess, int uExitCode) =>
    TerminateProcess_Wrapper(hProcess, uExitCode) != FALSE;

/// Terminates a thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-terminatethread>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool TerminateThread(int hThread, int dwExitCode) =>
    TerminateThread_Wrapper(hThread, dwExitCode) != FALSE;

/// Combines the functions that write a message to and read a message from the
/// specified named pipe into a single operation.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/namedpipeapi/nf-namedpipeapi-transactnamedpipe>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool TransactNamedPipe(
  int hNamedPipe,
  Pointer? lpInBuffer,
  int nInBufferSize,
  Pointer? lpOutBuffer,
  int nOutBufferSize,
  Pointer<Uint32> lpBytesRead,
  Pointer<OVERLAPPED>? lpOverlapped,
) =>
    TransactNamedPipe_Wrapper(
      hNamedPipe,
      lpInBuffer ?? nullptr,
      nInBufferSize,
      lpOutBuffer ?? nullptr,
      nOutBufferSize,
      lpBytesRead,
      lpOverlapped ?? nullptr,
    ) !=
    FALSE;

/// Transmits a specified character ahead of any pending data in the output
/// buffer of the specified communications device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-transmitcommchar>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool TransmitCommChar(int hFile, int cChar) =>
    TransmitCommChar_Wrapper(hFile, cChar) != FALSE;

/// Unlocks a region in an open file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-unlockfile>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool UnlockFile(
  int hFile,
  int dwFileOffsetLow,
  int dwFileOffsetHigh,
  int nNumberOfBytesToUnlockLow,
  int nNumberOfBytesToUnlockHigh,
) =>
    UnlockFile_Wrapper(
      hFile,
      dwFileOffsetLow,
      dwFileOffsetHigh,
      nNumberOfBytesToUnlockLow,
      nNumberOfBytesToUnlockHigh,
    ) !=
    FALSE;

/// Unlocks a region in the specified file.
///
/// This function can operate either synchronously or asynchronously.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-unlockfileex>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool UnlockFileEx(
  int hFile,
  int nNumberOfBytesToUnlockLow,
  int nNumberOfBytesToUnlockHigh,
  Pointer<OVERLAPPED> lpOverlapped,
) =>
    UnlockFileEx_Wrapper(
      hFile,
      NULL,
      nNumberOfBytesToUnlockLow,
      nNumberOfBytesToUnlockHigh,
      lpOverlapped,
    ) !=
    FALSE;

/// Updates the specified attribute in a list of attributes for process and
/// thread creation.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-updateprocthreadattribute>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool UpdateProcThreadAttribute(
  int lpAttributeList,
  int dwFlags,
  int attribute,
  Pointer? lpValue,
  int cbSize,
  Pointer? lpPreviousValue,
  Pointer<IntPtr>? lpReturnSize,
) =>
    UpdateProcThreadAttribute_Wrapper(
      lpAttributeList,
      dwFlags,
      attribute,
      lpValue ?? nullptr,
      cbSize,
      lpPreviousValue ?? nullptr,
      lpReturnSize ?? nullptr,
    ) !=
    FALSE;

/// Adds, deletes, or replaces a resource in a portable executable (PE) file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-updateresourcew>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool UpdateResource(
  int hUpdate,
  PCWSTR lpType,
  PCWSTR lpName,
  int wLanguage,
  Pointer? lpData,
  int cb,
) =>
    UpdateResourceW_Wrapper(
      hUpdate,
      lpType,
      lpName,
      wLanguage,
      lpData ?? nullptr,
      cb,
    ) !=
    FALSE;

/// Compares a set of operating system version requirements to the corresponding
/// values for the currently running version of the system.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-verifyversioninfow>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool VerifyVersionInfo(
  Pointer<OSVERSIONINFOEX> lpVersionInformation,
  VER_FLAGS dwTypeMask,
  int dwlConditionMask,
) =>
    VerifyVersionInfoW_Wrapper(
      lpVersionInformation,
      dwTypeMask,
      dwlConditionMask,
    ) !=
    FALSE;

/// Retrieves a description string for the language associated with a specified
/// binary Microsoft language identifier.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winver/nf-winver-verlanguagenamew>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int VerLanguageName(int wLang, PWSTR szLang, int cchLang) =>
    _VerLanguageName(wLang, szLang, cchLang);

@Native<Uint32 Function(Uint32, PWSTR, Uint32)>(symbol: 'VerLanguageNameW')
external int _VerLanguageName(int wLang, PWSTR szLang, int cchLang);

/// Sets the bits of a 64-bit value to indicate the comparison operator to use
/// for a specified operating system version attribute.
///
/// This function is used to build the dwlConditionMask parameter of the
/// VerifyVersionInfo function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winnt/nf-winnt-versetconditionmask>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int VerSetConditionMask(int conditionMask, VER_FLAGS typeMask, int condition) =>
    _VerSetConditionMask(conditionMask, typeMask, condition);

@Native<Uint64 Function(Uint64, Uint32, Uint8)>(symbol: 'VerSetConditionMask')
external int _VerSetConditionMask(
  int conditionMask,
  int typeMask,
  int condition,
);

/// Reserves, commits, or changes the state of a region of pages in the virtual
/// address space of the calling process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/memoryapi/nf-memoryapi-virtualalloc>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
Pointer VirtualAlloc(
  Pointer? lpAddress,
  int dwSize,
  VIRTUAL_ALLOCATION_TYPE flAllocationType,
  PAGE_PROTECTION_FLAGS flProtect,
) => VirtualAlloc_Wrapper(
  lpAddress ?? nullptr,
  dwSize,
  flAllocationType,
  flProtect,
);

/// Reserves, commits, or changes the state of a region of memory within the
/// virtual address space of a specified process.
///
/// The function initializes the memory it allocates to zero.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/memoryapi/nf-memoryapi-virtualallocex>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
Pointer VirtualAllocEx(
  int hProcess,
  Pointer? lpAddress,
  int dwSize,
  VIRTUAL_ALLOCATION_TYPE flAllocationType,
  PAGE_PROTECTION_FLAGS flProtect,
) => VirtualAllocEx_Wrapper(
  hProcess,
  lpAddress ?? nullptr,
  dwSize,
  flAllocationType,
  flProtect,
);

/// Releases, decommits, or releases and decommits a region of pages within the
/// virtual address space of the calling process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/memoryapi/nf-memoryapi-virtualfree>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool VirtualFree(Pointer lpAddress, int dwSize, VIRTUAL_FREE_TYPE dwFreeType) =>
    VirtualFree_Wrapper(lpAddress, dwSize, dwFreeType) != FALSE;

/// Releases, decommits, or releases and decommits a region of memory within the
/// virtual address space of a specified process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/memoryapi/nf-memoryapi-virtualfreeex>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool VirtualFreeEx(
  int hProcess,
  Pointer lpAddress,
  int dwSize,
  VIRTUAL_FREE_TYPE dwFreeType,
) => VirtualFreeEx_Wrapper(hProcess, lpAddress, dwSize, dwFreeType) != FALSE;

/// Locks the specified region of the process's virtual address space into
/// physical memory, ensuring that subsequent access to the region will not
/// incur a page fault.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/memoryapi/nf-memoryapi-virtuallock>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool VirtualLock(Pointer lpAddress, int dwSize) =>
    VirtualLock_Wrapper(lpAddress, dwSize) != FALSE;

/// Changes the protection on a region of committed pages in the virtual address
/// space of the calling process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/memoryapi/nf-memoryapi-virtualprotect>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool VirtualProtect(
  Pointer lpAddress,
  int dwSize,
  PAGE_PROTECTION_FLAGS flNewProtect,
  Pointer<Uint32> lpflOldProtect,
) =>
    VirtualProtect_Wrapper(lpAddress, dwSize, flNewProtect, lpflOldProtect) !=
    FALSE;

/// Changes the protection on a region of committed pages in the virtual address
/// space of a specified process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/memoryapi/nf-memoryapi-virtualprotectex>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool VirtualProtectEx(
  int hProcess,
  Pointer lpAddress,
  int dwSize,
  PAGE_PROTECTION_FLAGS flNewProtect,
  Pointer<Uint32> lpflOldProtect,
) =>
    VirtualProtectEx_Wrapper(
      hProcess,
      lpAddress,
      dwSize,
      flNewProtect,
      lpflOldProtect,
    ) !=
    FALSE;

/// Retrieves information about a range of pages in the virtual address space of
/// the calling process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/memoryapi/nf-memoryapi-virtualquery>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int VirtualQuery(
  Pointer? lpAddress,
  Pointer<MEMORY_BASIC_INFORMATION> lpBuffer,
  int dwLength,
) => VirtualQuery_Wrapper(lpAddress ?? nullptr, lpBuffer, dwLength);

/// Retrieves information about a range of pages within the virtual address
/// space of a specified process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/memoryapi/nf-memoryapi-virtualqueryex>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int VirtualQueryEx(
  int hProcess,
  Pointer? lpAddress,
  Pointer<MEMORY_BASIC_INFORMATION> lpBuffer,
  int dwLength,
) => VirtualQueryEx_Wrapper(hProcess, lpAddress ?? nullptr, lpBuffer, dwLength);

/// Unlocks a specified range of pages in the virtual address space of a
/// process, enabling the system to swap the pages out to the paging file if
/// necessary.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/memoryapi/nf-memoryapi-virtualunlock>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool VirtualUnlock(Pointer lpAddress, int dwSize) =>
    VirtualUnlock_Wrapper(lpAddress, dwSize) != FALSE;

/// Waits for an event to occur for a specified communications device.
///
/// The set of events that are monitored by this function is contained in the
/// event mask associated with the device handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-waitcommevent>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool WaitCommEvent(
  int hFile,
  Pointer<Uint32> lpEvtMask,
  Pointer<OVERLAPPED>? lpOverlapped,
) => WaitCommEvent_Wrapper(hFile, lpEvtMask, lpOverlapped ?? nullptr) != FALSE;

/// Waits until the specified object is in the signaled state or the time-out
/// interval elapses.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/synchapi/nf-synchapi-waitforsingleobject>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
WAIT_EVENT WaitForSingleObject(int hHandle, int dwMilliseconds) =>
    WAIT_EVENT(WaitForSingleObject_Wrapper(hHandle, dwMilliseconds));

/// Maps a UTF-16 (wide character) string to a new character string.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/stringapiset/nf-stringapiset-widechartomultibyte>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int WideCharToMultiByte(
  int codePage,
  int dwFlags,
  PCWSTR lpWideCharStr,
  int cchWideChar,
  PSTR? lpMultiByteStr,
  int cbMultiByte,
  PCSTR? lpDefaultChar,
  Pointer<BOOL>? lpUsedDefaultChar,
) => WideCharToMultiByte_Wrapper(
  codePage,
  dwFlags,
  lpWideCharStr,
  cchWideChar,
  lpMultiByteStr ?? nullptr,
  cbMultiByte,
  lpDefaultChar ?? nullptr,
  lpUsedDefaultChar ?? nullptr,
);

/// Suspends the specified WOW64 thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-wow64suspendthread>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int Wow64SuspendThread(int hThread) => Wow64SuspendThread_Wrapper(hThread);

/// Writes a character string to a console screen buffer beginning at the
/// current cursor location.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/writeconsole>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool WriteConsole(
  int hConsoleOutput,
  PCWSTR lpBuffer,
  int nNumberOfCharsToWrite,
  Pointer<Uint32>? lpNumberOfCharsWritten,
) =>
    WriteConsoleW_Wrapper(
      hConsoleOutput,
      lpBuffer,
      nNumberOfCharsToWrite,
      lpNumberOfCharsWritten ?? nullptr,
      nullptr,
    ) !=
    FALSE;

/// Writes data to the specified file or input/output (I/O) device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-writefile>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool WriteFile(
  int hFile,
  Pointer<Uint8>? lpBuffer,
  int nNumberOfBytesToWrite,
  Pointer<Uint32>? lpNumberOfBytesWritten,
  Pointer<OVERLAPPED>? lpOverlapped,
) =>
    WriteFile_Wrapper(
      hFile,
      lpBuffer ?? nullptr,
      nNumberOfBytesToWrite,
      lpNumberOfBytesWritten ?? nullptr,
      lpOverlapped ?? nullptr,
    ) !=
    FALSE;

/// Writes data to the specified file or input/output (I/O) device.
///
/// It reports its completion status asynchronously, calling the specified
/// completion routine when writing is completed or canceled and the calling
/// thread is in an alertable wait state.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-writefileex>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool WriteFileEx(
  int hFile,
  Pointer<Uint8>? lpBuffer,
  int nNumberOfBytesToWrite,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<NativeFunction<LPOVERLAPPED_COMPLETION_ROUTINE>> lpCompletionRoutine,
) =>
    WriteFileEx_Wrapper(
      hFile,
      lpBuffer ?? nullptr,
      nNumberOfBytesToWrite,
      lpOverlapped,
      lpCompletionRoutine,
    ) !=
    FALSE;

/// Retrieves data from an array of buffers and writes the data to a file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-writefilegather>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool WriteFileGather(
  int hFile,
  Pointer<FILE_SEGMENT_ELEMENT> aSegmentArray,
  int nNumberOfBytesToWrite,
  Pointer<OVERLAPPED> lpOverlapped,
) =>
    WriteFileGather_Wrapper(
      hFile,
      aSegmentArray,
      nNumberOfBytesToWrite,
      nullptr,
      lpOverlapped,
    ) !=
    FALSE;

/// Writes data to an area of memory in a specified process.
///
/// The entire area to be written to must be accessible or the operation fails.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/memoryapi/nf-memoryapi-writeprocessmemory>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool WriteProcessMemory(
  int hProcess,
  Pointer lpBaseAddress,
  Pointer lpBuffer,
  int nSize,
  Pointer<IntPtr>? lpNumberOfBytesWritten,
) =>
    WriteProcessMemory_Wrapper(
      hProcess,
      lpBaseAddress,
      lpBuffer,
      nSize,
      lpNumberOfBytesWritten ?? nullptr,
    ) !=
    FALSE;
