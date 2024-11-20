// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';

import '../_internal/kernel32.g.dart';
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

/// Activates the specified activation context.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-activateactctx>.
///
/// {@category kernel32}
Win32Result<bool> ActivateActCtx(HANDLE? hActCtx, Pointer<IntPtr> lpCookie) {
  final result_ = ActivateActCtx_Wrapper(hActCtx ?? nullptr, lpCookie);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Adds a directory to the process DLL search path.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-adddlldirectory>.
///
/// {@category kernel32}
Win32Result<Pointer> AddDllDirectory(PCWSTR newDirectory) {
  final result_ = AddDllDirectory_Wrapper(newDirectory);
  return Win32Result(value: result_.value.ptr, error: result_.error);
}

/// Increments the reference count of the specified activation context.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-addrefactctx>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
void AddRefActCtx(HANDLE hActCtx) => _AddRefActCtx(hActCtx);

@Native<Void Function(Pointer)>(symbol: 'AddRefActCtx')
external void _AddRefActCtx(Pointer hActCtx);

/// Allocates a new console for the calling process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/allocconsole>.
///
/// {@category kernel32}
Win32Result<bool> AllocConsole() {
  final result_ = AllocConsole_Wrapper();
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Determines whether the file I/O functions are using the ANSI or OEM
/// character set code page.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-arefileapisansi>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool AreFileApisANSI() => _AreFileApisANSI() != FALSE;

@Native<Int32 Function()>(symbol: 'AreFileApisANSI')
external int _AreFileApisANSI();

/// Assigns a process to an existing job object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/jobapi2/nf-jobapi2-assignprocesstojobobject>.
///
/// {@category kernel32}
Win32Result<bool> AssignProcessToJobObject(HANDLE hJob, HANDLE hProcess) {
  final result_ = AssignProcessToJobObject_Wrapper(hJob, hProcess);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Attaches the calling process to the console of the specified process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/attachconsole>.
///
/// {@category kernel32}
Win32Result<bool> AttachConsole(int dwProcessId) {
  final result_ = AttachConsole_Wrapper(dwProcessId);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Generates simple tones on the speaker.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/utilapiset/nf-utilapiset-beep>.
///
/// {@category kernel32}
Win32Result<bool> Beep(int dwFreq, int dwDuration) {
  final result_ = Beep_Wrapper(dwFreq, dwDuration);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves a handle that can be used by the UpdateResource function to add,
/// delete, or replace resources in a binary module.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-beginupdateresourcew>.
///
/// {@category kernel32}
Win32Result<HANDLE> BeginUpdateResource(
  PCWSTR pFileName,
  bool bDeleteExistingResources,
) {
  final result_ = BeginUpdateResourceW_Wrapper(
    pFileName,
    bDeleteExistingResources ? TRUE : FALSE,
  );
  return Win32Result(value: HANDLE(result_.value.ptr), error: result_.error);
}

/// Fills a specified DCB structure with values specified in a device-control
/// string.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-buildcommdcbw>.
///
/// {@category kernel32}
Win32Result<bool> BuildCommDCB(PCWSTR lpDef, Pointer<DCB> lpDCB) {
  final result_ = BuildCommDCBW_Wrapper(lpDef, lpDCB);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Translates a device-definition string into appropriate device-control block
/// codes and places them into a device control block.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-buildcommdcbandtimeoutsw>.
///
/// {@category kernel32}
Win32Result<bool> BuildCommDCBAndTimeouts(
  PCWSTR lpDef,
  Pointer<DCB> lpDCB,
  Pointer<COMMTIMEOUTS> lpCommTimeouts,
) {
  final result_ = BuildCommDCBAndTimeoutsW_Wrapper(
    lpDef,
    lpDCB,
    lpCommTimeouts,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

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
  Int32 Function(
    Pointer<Utf16>,
    Pointer,
    Uint32,
    Pointer,
    Uint32,
    Pointer<Uint32>,
    Uint32,
  )
>(symbol: 'CallNamedPipeW')
external int _CallNamedPipe(
  Pointer<Utf16> lpNamedPipeName,
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
Win32Result<bool> CancelIo(HANDLE hFile) {
  final result_ = CancelIo_Wrapper(hFile);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Marks any outstanding I/O operations for the specified file handle.
///
/// The function only cancels I/O operations in the current process, regardless
/// of which thread created the I/O operation.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/ioapiset/nf-ioapiset-cancelioex>.
///
/// {@category kernel32}
Win32Result<bool> CancelIoEx(HANDLE hFile, Pointer<OVERLAPPED>? lpOverlapped) {
  final result_ = CancelIoEx_Wrapper(hFile, lpOverlapped ?? nullptr);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Marks pending synchronous I/O operations that are issued by the specified
/// thread as canceled.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/ioapiset/nf-ioapiset-cancelsynchronousio>.
///
/// {@category kernel32}
Win32Result<bool> CancelSynchronousIo(HANDLE hThread) {
  final result_ = CancelSynchronousIo_Wrapper(hThread);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Determines whether the specified process is being debugged.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/debugapi/nf-debugapi-checkremotedebuggerpresent>.
///
/// {@category kernel32}
Win32Result<bool> CheckRemoteDebuggerPresent(
  HANDLE hProcess,
  Pointer<Int32> pbDebuggerPresent,
) {
  final result_ = CheckRemoteDebuggerPresent_Wrapper(
    hProcess,
    pbDebuggerPresent,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Restores character transmission for a specified communications device and
/// places the transmission line in a nonbreak state.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-clearcommbreak>.
///
/// {@category kernel32}
Win32Result<bool> ClearCommBreak(HANDLE hFile) {
  final result_ = ClearCommBreak_Wrapper(hFile);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves information about a communications error and reports the current
/// status of a communications device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-clearcommerror>.
///
/// {@category kernel32}
Win32Result<bool> ClearCommError(
  HANDLE hFile,
  Pointer<Uint32>? lpErrors,
  Pointer<COMSTAT>? lpStat,
) {
  final result_ = ClearCommError_Wrapper(
    hFile,
    lpErrors ?? nullptr,
    lpStat ?? nullptr,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Closes an open object handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/handleapi/nf-handleapi-closehandle>.
///
/// {@category kernel32}
Win32Result<bool> CloseHandle(HANDLE hObject) {
  final result_ = CloseHandle_Wrapper(hObject);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Closes a pseudoconsole from the given handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/closepseudoconsole>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
void ClosePseudoConsole(HPCON hPC) => _ClosePseudoConsole(hPC);

@Native<Void Function(IntPtr)>(symbol: 'ClosePseudoConsole')
external void _ClosePseudoConsole(int hPC);

/// Displays a driver-supplied configuration dialog box.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-commconfigdialogw>.
///
/// {@category kernel32}
Win32Result<bool> CommConfigDialog(
  PCWSTR lpszName,
  HWND? hWnd,
  Pointer<COMMCONFIG> lpCC,
) {
  final result_ = CommConfigDialogW_Wrapper(lpszName, hWnd ?? nullptr, lpCC);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Enables a named pipe server process to wait for a client process to connect
/// to an instance of a named pipe.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/namedpipeapi/nf-namedpipeapi-connectnamedpipe>.
///
/// {@category kernel32}
Win32Result<bool> ConnectNamedPipe(
  HANDLE hNamedPipe,
  Pointer<OVERLAPPED>? lpOverlapped,
) {
  final result_ = ConnectNamedPipe_Wrapper(hNamedPipe, lpOverlapped ?? nullptr);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Enables a debugger to continue a thread that previously reported a debugging
/// event.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/debugapi/nf-debugapi-continuedebugevent>.
///
/// {@category kernel32}
Win32Result<bool> ContinueDebugEvent(
  int dwProcessId,
  int dwThreadId,
  NTSTATUS dwContinueStatus,
) {
  final result_ = ContinueDebugEvent_Wrapper(
    dwProcessId,
    dwThreadId,
    dwContinueStatus,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Copies an existing file to a new file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-copyfilew>.
///
/// {@category kernel32}
Win32Result<bool> CopyFile(
  PCWSTR lpExistingFileName,
  PCWSTR lpNewFileName,
  bool bFailIfExists,
) {
  final result_ = CopyFileW_Wrapper(
    lpExistingFileName,
    lpNewFileName,
    bFailIfExists ? TRUE : FALSE,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Copies an existing file to a new file, notifying the application of its
/// progress through a callback function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-copyfileexw>.
///
/// {@category kernel32}
Win32Result<bool> CopyFileEx(
  PCWSTR lpExistingFileName,
  PCWSTR lpNewFileName,
  Pointer<NativeFunction<LPPROGRESS_ROUTINE>>? lpProgressRoutine,
  Pointer? lpData,
  Pointer<Int32>? pbCancel,
  COPYFILE_FLAGS dwCopyFlags,
) {
  final result_ = CopyFileExW_Wrapper(
    lpExistingFileName,
    lpNewFileName,
    lpProgressRoutine ?? nullptr,
    lpData ?? nullptr,
    pbCancel ?? nullptr,
    dwCopyFlags,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Creates an activation context.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-createactctxw>.
///
/// {@category kernel32}
Win32Result<HANDLE> CreateActCtx(Pointer<ACTCTX> pActCtx) {
  final result_ = CreateActCtxW_Wrapper(pActCtx);
  return Win32Result(value: HANDLE(result_.value.ptr), error: result_.error);
}

/// Creates a screen buffer for the Windows Console.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/createconsolescreenbuffer>.
///
/// {@category kernel32}
Win32Result<HANDLE> CreateConsoleScreenBuffer(
  int dwDesiredAccess,
  int dwShareMode,
  Pointer<SECURITY_ATTRIBUTES>? lpSecurityAttributes,
  int dwFlags,
) {
  final result_ = CreateConsoleScreenBuffer_Wrapper(
    dwDesiredAccess,
    dwShareMode,
    lpSecurityAttributes ?? nullptr,
    dwFlags,
    nullptr,
  );
  return Win32Result(value: HANDLE(result_.value.ptr), error: result_.error);
}

/// Creates a new directory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-createdirectoryw>.
///
/// {@category kernel32}
Win32Result<bool> CreateDirectory(
  PCWSTR lpPathName,
  Pointer<SECURITY_ATTRIBUTES>? lpSecurityAttributes,
) {
  final result_ = CreateDirectoryW_Wrapper(
    lpPathName,
    lpSecurityAttributes ?? nullptr,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Creates or opens a named or unnamed event object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/synchapi/nf-synchapi-createeventw>.
///
/// {@category kernel32}
Win32Result<HANDLE> CreateEvent(
  Pointer<SECURITY_ATTRIBUTES>? lpEventAttributes,
  bool bManualReset,
  bool bInitialState,
  PCWSTR? lpName,
) {
  final result_ = CreateEventW_Wrapper(
    lpEventAttributes ?? nullptr,
    bManualReset ? TRUE : FALSE,
    bInitialState ? TRUE : FALSE,
    lpName ?? nullptr,
  );
  return Win32Result(value: HANDLE(result_.value.ptr), error: result_.error);
}

/// Creates or opens a named or unnamed event object and returns a handle to the
/// object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/synchapi/nf-synchapi-createeventexw>.
///
/// {@category kernel32}
Win32Result<HANDLE> CreateEventEx(
  Pointer<SECURITY_ATTRIBUTES>? lpEventAttributes,
  PCWSTR? lpName,
  CREATE_EVENT dwFlags,
  int dwDesiredAccess,
) {
  final result_ = CreateEventExW_Wrapper(
    lpEventAttributes ?? nullptr,
    lpName ?? nullptr,
    dwFlags,
    dwDesiredAccess,
  );
  return Win32Result(value: HANDLE(result_.value.ptr), error: result_.error);
}

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
Win32Result<HANDLE> CreateFile(
  PCWSTR lpFileName,
  int dwDesiredAccess,
  FILE_SHARE_MODE dwShareMode,
  Pointer<SECURITY_ATTRIBUTES>? lpSecurityAttributes,
  FILE_CREATION_DISPOSITION dwCreationDisposition,
  FILE_FLAGS_AND_ATTRIBUTES dwFlagsAndAttributes,
  HANDLE? hTemplateFile,
) {
  final result_ = CreateFileW_Wrapper(
    lpFileName,
    dwDesiredAccess,
    dwShareMode,
    lpSecurityAttributes ?? nullptr,
    dwCreationDisposition,
    dwFlagsAndAttributes,
    hTemplateFile ?? nullptr,
  );
  return Win32Result(value: HANDLE(result_.value.ptr), error: result_.error);
}

/// Creates or opens a file or I/O device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-createfile2>.
///
/// {@category kernel32}
Win32Result<HANDLE> CreateFile2(
  PCWSTR lpFileName,
  int dwDesiredAccess,
  FILE_SHARE_MODE dwShareMode,
  FILE_CREATION_DISPOSITION dwCreationDisposition,
  Pointer<CREATEFILE2_EXTENDED_PARAMETERS>? pCreateExParams,
) {
  final result_ = CreateFile2_Wrapper(
    lpFileName,
    dwDesiredAccess,
    dwShareMode,
    dwCreationDisposition,
    pCreateExParams ?? nullptr,
  );
  return Win32Result(value: HANDLE(result_.value.ptr), error: result_.error);
}

/// Creates an input/output (I/O) completion port and associates it with a
/// specified file handle, or creates an I/O completion port that is not yet
/// associated with a file handle, allowing association at a later time.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/ioapiset/nf-ioapiset-createiocompletionport>.
///
/// {@category kernel32}
Win32Result<HANDLE> CreateIoCompletionPort(
  HANDLE fileHandle,
  HANDLE? existingCompletionPort,
  int completionKey,
  int numberOfConcurrentThreads,
) {
  final result_ = CreateIoCompletionPort_Wrapper(
    fileHandle,
    existingCompletionPort ?? nullptr,
    completionKey,
    numberOfConcurrentThreads,
  );
  return Win32Result(value: HANDLE(result_.value.ptr), error: result_.error);
}

/// Creates or opens a job object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/jobapi2/nf-jobapi2-createjobobjectw>.
///
/// {@category kernel32}
Win32Result<HANDLE> CreateJobObject(
  Pointer<SECURITY_ATTRIBUTES>? lpJobAttributes,
  PCWSTR? lpName,
) {
  final result_ = CreateJobObjectW_Wrapper(
    lpJobAttributes ?? nullptr,
    lpName ?? nullptr,
  );
  return Win32Result(value: HANDLE(result_.value.ptr), error: result_.error);
}

/// Creates an instance of a named pipe and returns a handle for subsequent pipe
/// operations.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/namedpipeapi/nf-namedpipeapi-createnamedpipew>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
HANDLE CreateNamedPipe(
  PCWSTR lpName,
  FILE_FLAGS_AND_ATTRIBUTES dwOpenMode,
  NAMED_PIPE_MODE dwPipeMode,
  int nMaxInstances,
  int nOutBufferSize,
  int nInBufferSize,
  int nDefaultTimeOut,
  Pointer<SECURITY_ATTRIBUTES>? lpSecurityAttributes,
) => HANDLE(
  _CreateNamedPipe(
    lpName,
    dwOpenMode,
    dwPipeMode,
    nMaxInstances,
    nOutBufferSize,
    nInBufferSize,
    nDefaultTimeOut,
    lpSecurityAttributes ?? nullptr,
  ),
);

@Native<
  Pointer Function(
    Pointer<Utf16>,
    Uint32,
    Uint32,
    Uint32,
    Uint32,
    Uint32,
    Uint32,
    Pointer<SECURITY_ATTRIBUTES>,
  )
>(symbol: 'CreateNamedPipeW')
external Pointer _CreateNamedPipe(
  Pointer<Utf16> lpName,
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
Win32Result<bool> CreatePipe(
  Pointer<Pointer> hReadPipe,
  Pointer<Pointer> hWritePipe,
  Pointer<SECURITY_ATTRIBUTES>? lpPipeAttributes,
  int nSize,
) {
  final result_ = CreatePipe_Wrapper(
    hReadPipe,
    hWritePipe,
    lpPipeAttributes ?? nullptr,
    nSize,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Creates a new process and its primary thread.
///
/// The new process runs in the security context of the calling process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-createprocessw>.
///
/// {@category kernel32}
Win32Result<bool> CreateProcess(
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
) {
  final result_ = CreateProcessW_Wrapper(
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
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Allocates a new pseudoconsole for the calling process.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/createpseudoconsole>.
///
/// {@category kernel32}
HPCON CreatePseudoConsole(
  COORD size,
  HANDLE hInput,
  HANDLE hOutput,
  int dwFlags,
) {
  final phPC = adaptiveCalloc<IntPtr>();
  final hr$ = HRESULT(
    _CreatePseudoConsole(size, hInput, hOutput, dwFlags, phPC),
  );
  if (hr$.isError) {
    free(phPC);
    throw WindowsException(hr$);
  }
  final result$ = phPC.value;
  free(phPC);
  return HPCON(result$);
}

@Native<Int32 Function(COORD, Pointer, Pointer, Uint32, Pointer<IntPtr>)>(
  symbol: 'CreatePseudoConsole',
)
external int _CreatePseudoConsole(
  COORD size,
  Pointer hInput,
  Pointer hOutput,
  int dwFlags,
  Pointer<IntPtr> phPC,
);

/// Creates a thread that runs in the virtual address space of another process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-createremotethread>.
///
/// {@category kernel32}
Win32Result<HANDLE> CreateRemoteThread(
  HANDLE hProcess,
  Pointer<SECURITY_ATTRIBUTES>? lpThreadAttributes,
  int dwStackSize,
  Pointer<NativeFunction<LPTHREAD_START_ROUTINE>> lpStartAddress,
  Pointer? lpParameter,
  int dwCreationFlags,
  Pointer<Uint32>? lpThreadId,
) {
  final result_ = CreateRemoteThread_Wrapper(
    hProcess,
    lpThreadAttributes ?? nullptr,
    dwStackSize,
    lpStartAddress,
    lpParameter ?? nullptr,
    dwCreationFlags,
    lpThreadId ?? nullptr,
  );
  return Win32Result(value: HANDLE(result_.value.ptr), error: result_.error);
}

/// Creates a thread that runs in the virtual address space of another process
/// and optionally specifies extended attributes such as processor group
/// affinity.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-createremotethreadex>.
///
/// {@category kernel32}
Win32Result<HANDLE> CreateRemoteThreadEx(
  HANDLE hProcess,
  Pointer<SECURITY_ATTRIBUTES>? lpThreadAttributes,
  int dwStackSize,
  Pointer<NativeFunction<LPTHREAD_START_ROUTINE>> lpStartAddress,
  Pointer? lpParameter,
  int dwCreationFlags,
  LPPROC_THREAD_ATTRIBUTE_LIST? lpAttributeList,
  Pointer<Uint32>? lpThreadId,
) {
  final result_ = CreateRemoteThreadEx_Wrapper(
    hProcess,
    lpThreadAttributes ?? nullptr,
    dwStackSize,
    lpStartAddress,
    lpParameter ?? nullptr,
    dwCreationFlags,
    lpAttributeList ?? nullptr,
    lpThreadId ?? nullptr,
  );
  return Win32Result(value: HANDLE(result_.value.ptr), error: result_.error);
}

/// Creates a symbolic link.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-createsymboliclinkw>.
///
/// {@category kernel32}
Win32Result<bool> CreateSymbolicLink(
  PCWSTR lpSymlinkFileName,
  PCWSTR lpTargetFileName,
  SYMBOLIC_LINK_FLAGS dwFlags,
) {
  final result_ = CreateSymbolicLinkW_Wrapper(
    lpSymlinkFileName,
    lpTargetFileName,
    dwFlags,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Creates a thread to execute within the virtual address space of the calling
/// process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-createthread>.
///
/// {@category kernel32}
Win32Result<HANDLE> CreateThread(
  Pointer<SECURITY_ATTRIBUTES>? lpThreadAttributes,
  int dwStackSize,
  Pointer<NativeFunction<LPTHREAD_START_ROUTINE>> lpStartAddress,
  Pointer? lpParameter,
  THREAD_CREATION_FLAGS dwCreationFlags,
  Pointer<Uint32>? lpThreadId,
) {
  final result_ = CreateThread_Wrapper(
    lpThreadAttributes ?? nullptr,
    dwStackSize,
    lpStartAddress,
    lpParameter ?? nullptr,
    dwCreationFlags,
    lpThreadId ?? nullptr,
  );
  return Win32Result(value: HANDLE(result_.value.ptr), error: result_.error);
}

/// Deactivates the activation context corresponding to the specified cookie.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-deactivateactctx>.
///
/// {@category kernel32}
Win32Result<bool> DeactivateActCtx(int dwFlags, int ulCookie) {
  final result_ = DeactivateActCtx_Wrapper(dwFlags, ulCookie);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

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
Win32Result<bool> DebugBreakProcess(HANDLE process) {
  final result_ = DebugBreakProcess_Wrapper(process);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Sets the action to be performed when the calling thread exits.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-debugsetprocesskillonexit>.
///
/// {@category kernel32}
Win32Result<bool> DebugSetProcessKillOnExit(bool killOnExit) {
  final result_ = DebugSetProcessKillOnExit_Wrapper(killOnExit ? TRUE : FALSE);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Defines, redefines, or deletes MS-DOS device names.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-definedosdevicew>.
///
/// {@category kernel32}
Win32Result<bool> DefineDosDevice(
  DEFINE_DOS_DEVICE_FLAGS dwFlags,
  PCWSTR lpDeviceName,
  PCWSTR? lpTargetPath,
) {
  final result_ = DefineDosDeviceW_Wrapper(
    dwFlags,
    lpDeviceName,
    lpTargetPath ?? nullptr,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Deletes an existing file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-deletefilew>.
///
/// {@category kernel32}
Win32Result<bool> DeleteFile(PCWSTR lpFileName) {
  final result_ = DeleteFileW_Wrapper(lpFileName);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Deletes the specified list of attributes for process and thread creation.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-deleteprocthreadattributelist>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
void DeleteProcThreadAttributeList(
  LPPROC_THREAD_ATTRIBUTE_LIST lpAttributeList,
) => _DeleteProcThreadAttributeList(lpAttributeList);

@Native<Void Function(Pointer)>(symbol: 'DeleteProcThreadAttributeList')
external void _DeleteProcThreadAttributeList(Pointer lpAttributeList);

/// Deletes a drive letter or mounted folder.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-deletevolumemountpointw>.
///
/// {@category kernel32}
Win32Result<bool> DeleteVolumeMountPoint(PCWSTR lpszVolumeMountPoint) {
  final result_ = DeleteVolumeMountPointW_Wrapper(lpszVolumeMountPoint);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Sends a control code directly to a specified device driver, causing the
/// corresponding device to perform the corresponding operation.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/ioapiset/nf-ioapiset-deviceiocontrol>.
///
/// {@category kernel32}
Win32Result<bool> DeviceIoControl(
  HANDLE hDevice,
  int dwIoControlCode,
  Pointer? lpInBuffer,
  int nInBufferSize,
  Pointer? lpOutBuffer,
  int nOutBufferSize,
  Pointer<Uint32>? lpBytesReturned,
  Pointer<OVERLAPPED>? lpOverlapped,
) {
  final result_ = DeviceIoControl_Wrapper(
    hDevice,
    dwIoControlCode,
    lpInBuffer ?? nullptr,
    nInBufferSize,
    lpOutBuffer ?? nullptr,
    nOutBufferSize,
    lpBytesReturned ?? nullptr,
    lpOverlapped ?? nullptr,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Disables the DLL_THREAD_ATTACH and DLL_THREAD_DETACH notifications for the
/// specified dynamic-link library (DLL).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-disablethreadlibrarycalls>.
///
/// {@category kernel32}
Win32Result<bool> DisableThreadLibraryCalls(HMODULE hLibModule) {
  final result_ = DisableThreadLibraryCalls_Wrapper(hLibModule);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Disconnects the server end of a named pipe instance from a client process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/namedpipeapi/nf-namedpipeapi-disconnectnamedpipe>.
///
/// {@category kernel32}
Win32Result<bool> DisconnectNamedPipe(HANDLE hNamedPipe) {
  final result_ = DisconnectNamedPipe_Wrapper(hNamedPipe);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Converts a DNS-style host name to a NetBIOS-style computer name.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-dnshostnametocomputernamew>.
///
/// {@category kernel32}
Win32Result<bool> DnsHostnameToComputerName(
  PCWSTR hostname,
  PWSTR? computerName,
  Pointer<Uint32> nSize,
) {
  final result_ = DnsHostnameToComputerNameW_Wrapper(
    hostname,
    computerName ?? nullptr,
    nSize,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Converts MS-DOS date and time values to a file time.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-dosdatetimetofiletime>.
///
/// {@category kernel32}
Win32Result<bool> DosDateTimeToFileTime(
  int wFatDate,
  int wFatTime,
  Pointer<FILETIME> lpFileTime,
) {
  final result_ = DosDateTimeToFileTime_Wrapper(wFatDate, wFatTime, lpFileTime);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Duplicates an object handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/handleapi/nf-handleapi-duplicatehandle>.
///
/// {@category kernel32}
Win32Result<bool> DuplicateHandle(
  HANDLE hSourceProcessHandle,
  HANDLE hSourceHandle,
  HANDLE hTargetProcessHandle,
  Pointer<Pointer> lpTargetHandle,
  int dwDesiredAccess,
  bool bInheritHandle,
  DUPLICATE_HANDLE_OPTIONS dwOptions,
) {
  final result_ = DuplicateHandle_Wrapper(
    hSourceProcessHandle,
    hSourceHandle,
    hTargetProcessHandle,
    lpTargetHandle,
    dwDesiredAccess,
    bInheritHandle ? TRUE : FALSE,
    dwOptions,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Commits or discards changes made prior to a call to UpdateResource.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-endupdateresourcew>.
///
/// {@category kernel32}
Win32Result<bool> EndUpdateResource(HANDLE hUpdate, bool fDiscard) {
  final result_ = EndUpdateResourceW_Wrapper(hUpdate, fDiscard ? TRUE : FALSE);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Enumerates resources of a specified type within a binary module.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-enumresourcenamesw>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool EnumResourceNames(
  HMODULE? hModule,
  PCWSTR lpType,
  Pointer<NativeFunction<ENUMRESNAMEPROC>> lpEnumFunc,
  int lParam,
) =>
    _EnumResourceNames(hModule ?? nullptr, lpType, lpEnumFunc, lParam) != FALSE;

@Native<
  Int32 Function(
    Pointer,
    Pointer<Utf16>,
    Pointer<NativeFunction<ENUMRESNAMEPROC>>,
    IntPtr,
  )
>(symbol: 'EnumResourceNamesW')
external int _EnumResourceNames(
  Pointer hModule,
  Pointer<Utf16> lpType,
  Pointer<NativeFunction<ENUMRESNAMEPROC>> lpEnumFunc,
  int lParam,
);

/// Enumerates resource types within a binary module.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-enumresourcetypesw>.
///
/// {@category kernel32}
Win32Result<bool> EnumResourceTypes(
  HMODULE? hModule,
  Pointer<NativeFunction<ENUMRESTYPEPROC>> lpEnumFunc,
  int lParam,
) {
  final result_ = EnumResourceTypesW_Wrapper(
    hModule ?? nullptr,
    lpEnumFunc,
    lParam,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Enumerates all system firmware tables of the specified type.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/sysinfoapi/nf-sysinfoapi-enumsystemfirmwaretables>.
///
/// {@category kernel32}
Win32Result<int> EnumSystemFirmwareTables(
  FIRMWARE_TABLE_PROVIDER firmwareTableProviderSignature,
  Pointer<Uint8>? pFirmwareTableEnumBuffer,
  int bufferSize,
) {
  final result_ = EnumSystemFirmwareTables_Wrapper(
    firmwareTableProviderSignature,
    pFirmwareTableEnumBuffer ?? nullptr,
    bufferSize,
  );
  return Win32Result(value: result_.value.u32, error: result_.error);
}

/// Directs the specified communications device to perform an extended function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-escapecommfunction>.
///
/// {@category kernel32}
Win32Result<bool> EscapeCommFunction(
  HANDLE hFile,
  ESCAPE_COMM_FUNCTION dwFunc,
) {
  final result_ = EscapeCommFunction_Wrapper(hFile, dwFunc);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

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
Win32Result<bool> FileTimeToDosDateTime(
  Pointer<FILETIME> lpFileTime,
  Pointer<Uint16> lpFatDate,
  Pointer<Uint16> lpFatTime,
) {
  final result_ = FileTimeToDosDateTime_Wrapper(
    lpFileTime,
    lpFatDate,
    lpFatTime,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Converts a file time to system time format.
///
/// System time is based on Coordinated Universal Time (UTC).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/timezoneapi/nf-timezoneapi-filetimetosystemtime>.
///
/// {@category kernel32}
Win32Result<bool> FileTimeToSystemTime(
  Pointer<FILETIME> lpFileTime,
  Pointer<SYSTEMTIME> lpSystemTime,
) {
  final result_ = FileTimeToSystemTime_Wrapper(lpFileTime, lpSystemTime);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Sets the character attributes for a specified number of character cells,
/// beginning at the specified coordinates in a screen buffer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/fillconsoleoutputattribute>.
///
/// {@category kernel32}
Win32Result<bool> FillConsoleOutputAttribute(
  HANDLE hConsoleOutput,
  int wAttribute,
  int nLength,
  COORD dwWriteCoord,
  Pointer<Uint32> lpNumberOfAttrsWritten,
) {
  final result_ = FillConsoleOutputAttribute_Wrapper(
    hConsoleOutput,
    wAttribute,
    nLength,
    dwWriteCoord,
    lpNumberOfAttrsWritten,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Writes a character to the console screen buffer a specified number of times,
/// beginning at the specified coordinates.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/fillconsoleoutputcharacter>.
///
/// {@category kernel32}
Win32Result<bool> FillConsoleOutputCharacter(
  HANDLE hConsoleOutput,
  int cCharacter,
  int nLength,
  COORD dwWriteCoord,
  Pointer<Uint32> lpNumberOfCharsWritten,
) {
  final result_ = FillConsoleOutputCharacterW_Wrapper(
    hConsoleOutput,
    cCharacter,
    nLength,
    dwWriteCoord,
    lpNumberOfCharsWritten,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Closes a file search handle opened by the FindFirstFile, FindFirstFileEx,
/// FindFirstFileNameW, FindFirstFileNameTransactedW, FindFirstFileTransacted,
/// FindFirstStreamTransactedW, or FindFirstStreamW functions.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-findclose>.
///
/// {@category kernel32}
Win32Result<bool> FindClose(HANDLE hFindFile) {
  final result_ = FindClose_Wrapper(hFindFile);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Stops change notification handle monitoring.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-findclosechangenotification>.
///
/// {@category kernel32}
Win32Result<bool> FindCloseChangeNotification(HANDLE hChangeHandle) {
  final result_ = FindCloseChangeNotification_Wrapper(hChangeHandle);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Creates a change notification handle and sets up initial change notification
/// filter conditions.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-findfirstchangenotificationw>.
///
/// {@category kernel32}
Win32Result<HANDLE> FindFirstChangeNotification(
  PCWSTR lpPathName,
  bool bWatchSubtree,
  FILE_NOTIFY_CHANGE dwNotifyFilter,
) {
  final result_ = FindFirstChangeNotificationW_Wrapper(
    lpPathName,
    bWatchSubtree ? TRUE : FALSE,
    dwNotifyFilter,
  );
  return Win32Result(value: HANDLE(result_.value.ptr), error: result_.error);
}

/// Searches a directory for a file or subdirectory with a name that matches a
/// specific name (or partial name if wildcards are used).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-findfirstfilew>.
///
/// {@category kernel32}
Win32Result<HANDLE> FindFirstFile(
  PCWSTR lpFileName,
  Pointer<WIN32_FIND_DATA> lpFindFileData,
) {
  final result_ = FindFirstFileW_Wrapper(lpFileName, lpFindFileData);
  return Win32Result(value: HANDLE(result_.value.ptr), error: result_.error);
}

/// Searches a directory for a file or subdirectory with a name and attributes
/// that match those specified.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-findfirstfileexw>.
///
/// {@category kernel32}
Win32Result<HANDLE> FindFirstFileEx(
  PCWSTR lpFileName,
  FINDEX_INFO_LEVELS fInfoLevelId,
  Pointer lpFindFileData,
  FINDEX_SEARCH_OPS fSearchOp,
  FIND_FIRST_EX_FLAGS dwAdditionalFlags,
) {
  final result_ = FindFirstFileExW_Wrapper(
    lpFileName,
    fInfoLevelId,
    lpFindFileData,
    fSearchOp,
    nullptr,
    dwAdditionalFlags,
  );
  return Win32Result(value: HANDLE(result_.value.ptr), error: result_.error);
}

/// Creates an enumeration of all the hard links to the specified file.
///
/// The FindFirstFileNameW function returns a handle to the enumeration that can
/// be used on subsequent calls to the FindNextFileNameW function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-findfirstfilenamew>.
///
/// {@category kernel32}
Win32Result<HANDLE> FindFirstFileName(
  PCWSTR lpFileName,
  int dwFlags,
  Pointer<Uint32> stringLength,
  PWSTR linkName,
) {
  final result_ = FindFirstFileNameW_Wrapper(
    lpFileName,
    dwFlags,
    stringLength,
    linkName,
  );
  return Win32Result(value: HANDLE(result_.value.ptr), error: result_.error);
}

/// Enumerates the first stream with a ::$DATA stream type in the specified file
/// or directory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-findfirststreamw>.
///
/// {@category kernel32}
Win32Result<HANDLE> FindFirstStream(
  PCWSTR lpFileName,
  STREAM_INFO_LEVELS infoLevel,
  Pointer lpFindStreamData,
) {
  final result_ = FindFirstStreamW_Wrapper(
    lpFileName,
    infoLevel,
    lpFindStreamData,
    NULL,
  );
  return Win32Result(value: HANDLE(result_.value.ptr), error: result_.error);
}

/// Retrieves the name of a volume on a computer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-findfirstvolumew>.
///
/// {@category kernel32}
Win32Result<HANDLE> FindFirstVolume(PWSTR lpszVolumeName, int cchBufferLength) {
  final result_ = FindFirstVolumeW_Wrapper(lpszVolumeName, cchBufferLength);
  return Win32Result(value: HANDLE(result_.value.ptr), error: result_.error);
}

/// Requests that the operating system signal a change notification handle the
/// next time it detects an appropriate change.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-findnextchangenotification>.
///
/// {@category kernel32}
Win32Result<bool> FindNextChangeNotification(HANDLE hChangeHandle) {
  final result_ = FindNextChangeNotification_Wrapper(hChangeHandle);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Continues a file search from a previous call to the FindFirstFile,
/// FindFirstFileEx, or FindFirstFileTransacted functions.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-findnextfilew>.
///
/// {@category kernel32}
Win32Result<bool> FindNextFile(
  HANDLE hFindFile,
  Pointer<WIN32_FIND_DATA> lpFindFileData,
) {
  final result_ = FindNextFileW_Wrapper(hFindFile, lpFindFileData);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Continues enumerating the hard links to a file using the handle returned by
/// a successful call to the FindFirstFileNameW function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-findnextfilenamew>.
///
/// {@category kernel32}
Win32Result<bool> FindNextFileName(
  HANDLE hFindStream,
  Pointer<Uint32> stringLength,
  PWSTR linkName,
) {
  final result_ = FindNextFileNameW_Wrapper(
    hFindStream,
    stringLength,
    linkName,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Continues a stream search started by a previous call to the FindFirstStreamW
/// function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-findnextstreamw>.
///
/// {@category kernel32}
Win32Result<bool> FindNextStream(HANDLE hFindStream, Pointer lpFindStreamData) {
  final result_ = FindNextStreamW_Wrapper(hFindStream, lpFindStreamData);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Continues a volume search started by a call to the FindFirstVolume function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-findnextvolumew>.
///
/// {@category kernel32}
Win32Result<bool> FindNextVolume(
  HANDLE hFindVolume,
  PWSTR lpszVolumeName,
  int cchBufferLength,
) {
  final result_ = FindNextVolumeW_Wrapper(
    hFindVolume,
    lpszVolumeName,
    cchBufferLength,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

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
  Pointer<Pointer<Utf16>>? packageFullNames,
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
    Pointer<Utf16>,
    Uint32,
    Pointer<Uint32>,
    Pointer<Pointer<Utf16>>,
    Pointer<Uint32>,
    Pointer<Utf16>,
    Pointer<Uint32>,
  )
>(symbol: 'FindPackagesByPackageFamily')
external int _FindPackagesByPackageFamily(
  Pointer<Utf16> packageFamilyName,
  int packageFilters,
  Pointer<Uint32> count,
  Pointer<Pointer<Utf16>> packageFullNames,
  Pointer<Uint32> bufferLength,
  Pointer<Utf16> buffer,
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
HRSRC FindResource(HMODULE? hModule, PCWSTR lpName, PCWSTR lpType) =>
    HRSRC(_FindResource(hModule ?? nullptr, lpName, lpType));

@Native<Pointer Function(Pointer, Pointer<Utf16>, Pointer<Utf16>)>(
  symbol: 'FindResourceW',
)
external Pointer _FindResource(
  Pointer hModule,
  Pointer<Utf16> lpName,
  Pointer<Utf16> lpType,
);

/// Determines the location of the resource with the specified type, name, and
/// language in the specified module.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-findresourceexw>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
HRSRC FindResourceEx(
  HMODULE? hModule,
  PCWSTR lpType,
  PCWSTR lpName,
  int wLanguage,
) => HRSRC(_FindResourceEx(hModule ?? nullptr, lpType, lpName, wLanguage));

@Native<Pointer Function(Pointer, Pointer<Utf16>, Pointer<Utf16>, Uint16)>(
  symbol: 'FindResourceExW',
)
external Pointer _FindResourceEx(
  Pointer hModule,
  Pointer<Utf16> lpType,
  Pointer<Utf16> lpName,
  int wLanguage,
);

/// Locates a Unicode string (wide characters) in another Unicode string for a
/// non-linguistic comparison.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-findstringordinal>.
///
/// {@category kernel32}
Win32Result<int> FindStringOrdinal(
  int dwFindStringOrdinalFlags,
  PCWSTR lpStringSource,
  int cchSource,
  PCWSTR lpStringValue,
  int cchValue,
  bool bIgnoreCase,
) {
  final result_ = FindStringOrdinal_Wrapper(
    dwFindStringOrdinalFlags,
    lpStringSource,
    cchSource,
    lpStringValue,
    cchValue,
    bIgnoreCase ? TRUE : FALSE,
  );
  return Win32Result(value: result_.value.i32, error: result_.error);
}

/// Closes the specified volume search handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-findvolumeclose>.
///
/// {@category kernel32}
Win32Result<bool> FindVolumeClose(HANDLE hFindVolume) {
  final result_ = FindVolumeClose_Wrapper(hFindVolume);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Flushes the console input buffer.
///
/// All input records currently in the input buffer are discarded.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/flushconsoleinputbuffer>.
///
/// {@category kernel32}
Win32Result<bool> FlushConsoleInputBuffer(HANDLE hConsoleInput) {
  final result_ = FlushConsoleInputBuffer_Wrapper(hConsoleInput);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Flushes the buffers of a specified file and causes all buffered data to be
/// written to a file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-flushfilebuffers>.
///
/// {@category kernel32}
Win32Result<bool> FlushFileBuffers(HANDLE hFile) {
  final result_ = FlushFileBuffers_Wrapper(hFile);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Formats a message string.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-formatmessagew>.
///
/// {@category kernel32}
Win32Result<int> FormatMessage(
  FORMAT_MESSAGE_OPTIONS dwFlags,
  Pointer? lpSource,
  int dwMessageId,
  int dwLanguageId,
  PWSTR lpBuffer,
  int nSize,
  Pointer<Pointer<Int8>>? arguments,
) {
  final result_ = FormatMessageW_Wrapper(
    dwFlags,
    lpSource ?? nullptr,
    dwMessageId,
    dwLanguageId,
    lpBuffer,
    nSize,
    arguments ?? nullptr,
  );
  return Win32Result(value: result_.value.u32, error: result_.error);
}

/// Detaches the calling process from its console.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/freeconsole>.
///
/// {@category kernel32}
Win32Result<bool> FreeConsole() {
  final result_ = FreeConsole_Wrapper();
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Frees the loaded dynamic-link library (DLL) module and, if necessary,
/// decrements its reference count.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-freelibrary>.
///
/// {@category kernel32}
Win32Result<bool> FreeLibrary(HMODULE hLibModule) {
  final result_ = FreeLibrary_Wrapper(hLibModule);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Decrements the reference count of a loaded dynamic-link library (DLL) by
/// one, then calls ExitThread to terminate the calling thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-freelibraryandexitthread>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
void FreeLibraryAndExitThread(HMODULE hLibModule, int dwExitCode) =>
    _FreeLibraryAndExitThread(hLibModule, dwExitCode);

@Native<Void Function(Pointer, Uint32)>(symbol: 'FreeLibraryAndExitThread')
external void _FreeLibraryAndExitThread(Pointer hLibModule, int dwExitCode);

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
Win32Result<int> GetActiveProcessorCount(int groupNumber) {
  final result_ = GetActiveProcessorCount_Wrapper(groupNumber);
  return Win32Result(value: result_.value.u32, error: result_.error);
}

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
Win32Result<bool> GetBinaryType(
  PCWSTR lpApplicationName,
  Pointer<Uint32> lpBinaryType,
) {
  final result_ = GetBinaryTypeW_Wrapper(lpApplicationName, lpBinaryType);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves the command-line string for the current process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processenv/nf-processenv-getcommandlinew>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
PCWSTR GetCommandLine() => PCWSTR(_GetCommandLine());

@Native<Pointer<Utf16> Function()>(symbol: 'GetCommandLineW')
external Pointer<Utf16> _GetCommandLine();

/// Retrieves the current configuration of a communications device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getcommconfig>.
///
/// {@category kernel32}
Win32Result<bool> GetCommConfig(
  HANDLE hCommDev,
  Pointer<COMMCONFIG>? lpCC,
  Pointer<Uint32> lpdwSize,
) {
  final result_ = GetCommConfig_Wrapper(hCommDev, lpCC ?? nullptr, lpdwSize);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves the value of the event mask for a specified communications device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getcommmask>.
///
/// {@category kernel32}
Win32Result<bool> GetCommMask(HANDLE hFile, Pointer<Uint32> lpEvtMask) {
  final result_ = GetCommMask_Wrapper(hFile, lpEvtMask);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves the modem control-register values.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getcommmodemstatus>.
///
/// {@category kernel32}
Win32Result<bool> GetCommModemStatus(
  HANDLE hFile,
  Pointer<Uint32> lpModemStat,
) {
  final result_ = GetCommModemStatus_Wrapper(hFile, lpModemStat);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves information about the communications properties for a specified
/// communications device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getcommproperties>.
///
/// {@category kernel32}
Win32Result<bool> GetCommProperties(
  HANDLE hFile,
  Pointer<COMMPROP> lpCommProp,
) {
  final result_ = GetCommProperties_Wrapper(hFile, lpCommProp);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves the current control settings for a specified communications
/// device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getcommstate>.
///
/// {@category kernel32}
Win32Result<bool> GetCommState(HANDLE hFile, Pointer<DCB> lpDCB) {
  final result_ = GetCommState_Wrapper(hFile, lpDCB);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves the time-out parameters for all read and write operations on a
/// specified communications device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getcommtimeouts>.
///
/// {@category kernel32}
Win32Result<bool> GetCommTimeouts(
  HANDLE hFile,
  Pointer<COMMTIMEOUTS> lpCommTimeouts,
) {
  final result_ = GetCommTimeouts_Wrapper(hFile, lpCommTimeouts);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves the actual number of bytes of disk storage used to store a
/// specified file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getcompressedfilesizew>.
///
/// {@category kernel32}
Win32Result<int> GetCompressedFileSize(
  PCWSTR lpFileName,
  Pointer<Uint32>? lpFileSizeHigh,
) {
  final result_ = GetCompressedFileSizeW_Wrapper(
    lpFileName,
    lpFileSizeHigh ?? nullptr,
  );
  return Win32Result(value: result_.value.u32, error: result_.error);
}

/// Retrieves the NetBIOS name of the local computer.
///
/// This name is established at system startup, when the system reads it from
/// the registry.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getcomputernamew>.
///
/// {@category kernel32}
Win32Result<bool> GetComputerName(PWSTR? lpBuffer, Pointer<Uint32> nSize) {
  final result_ = GetComputerNameW_Wrapper(lpBuffer ?? nullptr, nSize);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves a NetBIOS or DNS name associated with the local computer.
///
/// The names are established at system startup, when the system reads them from
/// the registry.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/sysinfoapi/nf-sysinfoapi-getcomputernameexw>.
///
/// {@category kernel32}
Win32Result<bool> GetComputerNameEx(
  COMPUTER_NAME_FORMAT nameType,
  PWSTR? lpBuffer,
  Pointer<Uint32> nSize,
) {
  final result_ = GetComputerNameExW_Wrapper(
    nameType,
    lpBuffer ?? nullptr,
    nSize,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves the input code page used by the console associated with the
/// calling process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/getconsolecp>.
///
/// {@category kernel32}
Win32Result<int> GetConsoleCP() {
  final result_ = GetConsoleCP_Wrapper();
  return Win32Result(value: result_.value.u32, error: result_.error);
}

/// Retrieves information about the size and visibility of the cursor for the
/// specified console screen buffer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/getconsolecursorinfo>.
///
/// {@category kernel32}
Win32Result<bool> GetConsoleCursorInfo(
  HANDLE hConsoleOutput,
  Pointer<CONSOLE_CURSOR_INFO> lpConsoleCursorInfo,
) {
  final result_ = GetConsoleCursorInfo_Wrapper(
    hConsoleOutput,
    lpConsoleCursorInfo,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves the current input mode of a console's input buffer or the current
/// output mode of a console screen buffer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/getconsolemode>.
///
/// {@category kernel32}
Win32Result<bool> GetConsoleMode(
  HANDLE hConsoleHandle,
  Pointer<Uint32> lpMode,
) {
  final result_ = GetConsoleMode_Wrapper(hConsoleHandle, lpMode);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves the output code page used by the console associated with the
/// calling process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/getconsoleoutputcp>.
///
/// {@category kernel32}
Win32Result<int> GetConsoleOutputCP() {
  final result_ = GetConsoleOutputCP_Wrapper();
  return Win32Result(value: result_.value.u32, error: result_.error);
}

/// Retrieves information about the specified console screen buffer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/getconsolescreenbufferinfo>.
///
/// {@category kernel32}
Win32Result<bool> GetConsoleScreenBufferInfo(
  HANDLE hConsoleOutput,
  Pointer<CONSOLE_SCREEN_BUFFER_INFO> lpConsoleScreenBufferInfo,
) {
  final result_ = GetConsoleScreenBufferInfo_Wrapper(
    hConsoleOutput,
    lpConsoleScreenBufferInfo,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves information about the current console selection.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/getconsoleselectioninfo>.
///
/// {@category kernel32}
Win32Result<bool> GetConsoleSelectionInfo(
  Pointer<CONSOLE_SELECTION_INFO> lpConsoleSelectionInfo,
) {
  final result_ = GetConsoleSelectionInfo_Wrapper(lpConsoleSelectionInfo);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves the title and size of the title for the current console window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/getconsoletitle>.
///
/// {@category kernel32}
Win32Result<int> GetConsoleTitle(PWSTR lpConsoleTitle, int nSize) {
  final result_ = GetConsoleTitleW_Wrapper(lpConsoleTitle, nSize);
  return Win32Result(value: result_.value.u32, error: result_.error);
}

/// Retrieves the window handle used by the console associated with the calling
/// process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/getconsolewindow>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
HWND GetConsoleWindow() => HWND(_GetConsoleWindow());

@Native<Pointer Function()>(symbol: 'GetConsoleWindow')
external Pointer _GetConsoleWindow();

/// Returns the handle to the active activation context of the calling thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getcurrentactctx>.
///
/// {@category kernel32}
Win32Result<bool> GetCurrentActCtx(Pointer<Pointer> lphActCtx) {
  final result_ = GetCurrentActCtx_Wrapper(lphActCtx);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves the current directory for the current process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getcurrentdirectory>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GetCurrentDirectory(int nBufferLength, PWSTR? lpBuffer) =>
    _GetCurrentDirectory(nBufferLength, lpBuffer ?? nullptr);

@Native<Uint32 Function(Uint32, Pointer<Utf16>)>(symbol: 'GetCurrentDirectoryW')
external int _GetCurrentDirectory(int nBufferLength, Pointer<Utf16> lpBuffer);

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

@Native<Uint32 Function(Pointer<Uint32>, Pointer<Utf16>)>(
  symbol: 'GetCurrentPackageFullName',
)
external int _GetCurrentPackageFullName(
  Pointer<Uint32> packageFullNameLength,
  Pointer<Utf16> packageFullName,
);

/// Retrieves a pseudo handle for the current process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-getcurrentprocess>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
HANDLE GetCurrentProcess() => HANDLE(_GetCurrentProcess());

@Native<Pointer Function()>(symbol: 'GetCurrentProcess')
external Pointer _GetCurrentProcess();

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
HANDLE GetCurrentThread() => HANDLE(_GetCurrentThread());

@Native<Pointer Function()>(symbol: 'GetCurrentThread')
external Pointer _GetCurrentThread();

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
Win32Result<bool> GetDefaultCommConfig(
  PCWSTR lpszName,
  Pointer<COMMCONFIG> lpCC,
  Pointer<Uint32> lpdwSize,
) {
  final result_ = GetDefaultCommConfigW_Wrapper(lpszName, lpCC, lpdwSize);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves information about the specified disk, including the amount of free
/// space on the disk.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getdiskfreespacew>.
///
/// {@category kernel32}
Win32Result<bool> GetDiskFreeSpace(
  PCWSTR? lpRootPathName,
  Pointer<Uint32>? lpSectorsPerCluster,
  Pointer<Uint32>? lpBytesPerSector,
  Pointer<Uint32>? lpNumberOfFreeClusters,
  Pointer<Uint32>? lpTotalNumberOfClusters,
) {
  final result_ = GetDiskFreeSpaceW_Wrapper(
    lpRootPathName ?? nullptr,
    lpSectorsPerCluster ?? nullptr,
    lpBytesPerSector ?? nullptr,
    lpNumberOfFreeClusters ?? nullptr,
    lpTotalNumberOfClusters ?? nullptr,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves information about the amount of space that is available on a disk
/// volume, which is the total amount of space, the total amount of free space,
/// and the total amount of free space available to the user that is associated
/// with the calling thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getdiskfreespaceexw>.
///
/// {@category kernel32}
Win32Result<bool> GetDiskFreeSpaceEx(
  PCWSTR? lpDirectoryName,
  Pointer<Uint64>? lpFreeBytesAvailableToCaller,
  Pointer<Uint64>? lpTotalNumberOfBytes,
  Pointer<Uint64>? lpTotalNumberOfFreeBytes,
) {
  final result_ = GetDiskFreeSpaceExW_Wrapper(
    lpDirectoryName ?? nullptr,
    lpFreeBytesAvailableToCaller ?? nullptr,
    lpTotalNumberOfBytes ?? nullptr,
    lpTotalNumberOfFreeBytes ?? nullptr,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves the application-specific portion of the search path used to locate
/// DLLs for the application.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getdlldirectoryw>.
///
/// {@category kernel32}
Win32Result<int> GetDllDirectory(int nBufferLength, PWSTR? lpBuffer) {
  final result_ = GetDllDirectoryW_Wrapper(nBufferLength, lpBuffer ?? nullptr);
  return Win32Result(value: result_.value.u32, error: result_.error);
}

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

@Native<Uint32 Function(Pointer<Utf16>)>(symbol: 'GetDriveTypeW')
external int _GetDriveType(Pointer<Utf16> lpRootPathName);

/// Retrieves the contents of the specified variable from the environment block
/// of the calling process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processenv/nf-processenv-getenvironmentvariablew>.
///
/// {@category kernel32}
Win32Result<int> GetEnvironmentVariable(
  PCWSTR? lpName,
  PWSTR? lpBuffer,
  int nSize,
) {
  final result_ = GetEnvironmentVariableW_Wrapper(
    lpName ?? nullptr,
    lpBuffer ?? nullptr,
    nSize,
  );
  return Win32Result(value: result_.value.u32, error: result_.error);
}

/// Retrieves the termination status of the specified process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-getexitcodeprocess>.
///
/// {@category kernel32}
Win32Result<bool> GetExitCodeProcess(
  HANDLE hProcess,
  Pointer<Uint32> lpExitCode,
) {
  final result_ = GetExitCodeProcess_Wrapper(hProcess, lpExitCode);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves file system attributes for a specified file or directory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getfileattributesw>.
///
/// {@category kernel32}
Win32Result<int> GetFileAttributes(PCWSTR lpFileName) {
  final result_ = GetFileAttributesW_Wrapper(lpFileName);
  return Win32Result(value: result_.value.u32, error: result_.error);
}

/// Retrieves attributes for a specified file or directory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getfileattributesexw>.
///
/// {@category kernel32}
Win32Result<bool> GetFileAttributesEx(
  PCWSTR lpFileName,
  GET_FILEEX_INFO_LEVELS fInfoLevelId,
  Pointer lpFileInformation,
) {
  final result_ = GetFileAttributesExW_Wrapper(
    lpFileName,
    fInfoLevelId,
    lpFileInformation,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves file information for the specified file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getfileinformationbyhandle>.
///
/// {@category kernel32}
Win32Result<bool> GetFileInformationByHandle(
  HANDLE hFile,
  Pointer<BY_HANDLE_FILE_INFORMATION> lpFileInformation,
) {
  final result_ = GetFileInformationByHandle_Wrapper(hFile, lpFileInformation);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves the size of the specified file, in bytes.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getfilesize>.
///
/// {@category kernel32}
Win32Result<int> GetFileSize(HANDLE hFile, Pointer<Uint32>? lpFileSizeHigh) {
  final result_ = GetFileSize_Wrapper(hFile, lpFileSizeHigh ?? nullptr);
  return Win32Result(value: result_.value.u32, error: result_.error);
}

/// Retrieves the size of the specified file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getfilesizeex>.
///
/// {@category kernel32}
Win32Result<bool> GetFileSizeEx(HANDLE hFile, Pointer<Int64> lpFileSize) {
  final result_ = GetFileSizeEx_Wrapper(hFile, lpFileSize);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves the file type of the specified file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getfiletype>.
///
/// {@category kernel32}
Win32Result<FILE_TYPE> GetFileType(HANDLE hFile) {
  final result_ = GetFileType_Wrapper(hFile);
  return Win32Result(value: FILE_TYPE(result_.value.u32), error: result_.error);
}

/// Retrieves the final path for the specified file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getfinalpathnamebyhandlew>.
///
/// {@category kernel32}
Win32Result<int> GetFinalPathNameByHandle(
  HANDLE hFile,
  PWSTR lpszFilePath,
  int cchFilePath,
  GETFINALPATHNAMEBYHANDLE_FLAGS dwFlags,
) {
  final result_ = GetFinalPathNameByHandleW_Wrapper(
    hFile,
    lpszFilePath,
    cchFilePath,
    dwFlags,
  );
  return Win32Result(value: result_.value.u32, error: result_.error);
}

/// Retrieves the full path and file name of the specified file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getfullpathnamew>.
///
/// {@category kernel32}
Win32Result<int> GetFullPathName(
  PCWSTR lpFileName,
  int nBufferLength,
  PWSTR? lpBuffer,
  Pointer<Pointer<Utf16>>? lpFilePart,
) {
  final result_ = GetFullPathNameW_Wrapper(
    lpFileName,
    nBufferLength,
    lpBuffer ?? nullptr,
    lpFilePart ?? nullptr,
  );
  return Win32Result(value: result_.value.u32, error: result_.error);
}

/// Retrieves certain properties of an object handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/handleapi/nf-handleapi-gethandleinformation>.
///
/// {@category kernel32}
Win32Result<bool> GetHandleInformation(
  HANDLE hObject,
  Pointer<Uint32> lpdwFlags,
) {
  final result_ = GetHandleInformation_Wrapper(hObject, lpdwFlags);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves the size of the largest possible console window, based on the
/// current font and the size of the display.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/getlargestconsolewindowsize>.
///
/// {@category kernel32}
Win32Result<COORD> GetLargestConsoleWindowSize(HANDLE hConsoleOutput) {
  final result_ = GetLargestConsoleWindowSize_Wrapper(hConsoleOutput);
  return Win32Result(value: result_.value.coord, error: result_.error);
}

/// Retrieves the calling thread's last-error code value.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/errhandlingapi/nf-errhandlingapi-getlasterror>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
WIN32_ERROR GetLastError() => WIN32_ERROR(_GetLastError());

@Native<Uint32 Function()>(symbol: 'GetLastError')
external int _GetLastError();

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
Win32Result<int> GetLocaleInfoEx(
  PCWSTR? lpLocaleName,
  int lCType,
  PWSTR? lpLCData,
  int cchData,
) {
  final result_ = GetLocaleInfoEx_Wrapper(
    lpLocaleName ?? nullptr,
    lCType,
    lpLCData ?? nullptr,
    cchData,
  );
  return Win32Result(value: result_.value.i32, error: result_.error);
}

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
Win32Result<int> GetLogicalDrives() {
  final result_ = GetLogicalDrives_Wrapper();
  return Win32Result(value: result_.value.u32, error: result_.error);
}

/// Fills a buffer with strings that specify valid drives in the system.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getlogicaldrivestringsw>.
///
/// {@category kernel32}
Win32Result<int> GetLogicalDriveStrings(int nBufferLength, PWSTR? lpBuffer) {
  final result_ = GetLogicalDriveStringsW_Wrapper(
    nBufferLength,
    lpBuffer ?? nullptr,
  );
  return Win32Result(value: result_.value.u32, error: result_.error);
}

/// Retrieves information about logical processors and related hardware.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/sysinfoapi/nf-sysinfoapi-getlogicalprocessorinformation>.
///
/// {@category kernel32}
Win32Result<bool> GetLogicalProcessorInformation(
  Pointer<SYSTEM_LOGICAL_PROCESSOR_INFORMATION>? buffer,
  Pointer<Uint32> returnedLength,
) {
  final result_ = GetLogicalProcessorInformation_Wrapper(
    buffer ?? nullptr,
    returnedLength,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Converts the specified path to its long form.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getlongpathnamew>.
///
/// {@category kernel32}
Win32Result<int> GetLongPathName(
  PCWSTR lpszShortPath,
  PWSTR? lpszLongPath,
  int cchBuffer,
) {
  final result_ = GetLongPathNameW_Wrapper(
    lpszShortPath,
    lpszLongPath ?? nullptr,
    cchBuffer,
  );
  return Win32Result(value: result_.value.u32, error: result_.error);
}

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
  final machineTypeAttributes = adaptiveCalloc<Int32>();
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
Win32Result<int> GetMaximumProcessorCount(int groupNumber) {
  final result_ = GetMaximumProcessorCount_Wrapper(groupNumber);
  return Win32Result(value: result_.value.u32, error: result_.error);
}

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
Win32Result<int> GetModuleFileName(
  HMODULE? hModule,
  PWSTR lpFilename,
  int nSize,
) {
  final result_ = GetModuleFileNameW_Wrapper(
    hModule ?? nullptr,
    lpFilename,
    nSize,
  );
  return Win32Result(value: result_.value.u32, error: result_.error);
}

/// Retrieves a module handle for the specified module.
///
/// The module must have been loaded by the calling process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-getmodulehandlew>.
///
/// {@category kernel32}
Win32Result<HMODULE> GetModuleHandle(PCWSTR? lpModuleName) {
  final result_ = GetModuleHandleW_Wrapper(lpModuleName ?? nullptr);
  return Win32Result(value: HMODULE(result_.value.ptr), error: result_.error);
}

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
Win32Result<bool> GetModuleHandleEx(
  int dwFlags,
  PCWSTR? lpModuleName,
  Pointer<Pointer> phModule,
) {
  final result_ = GetModuleHandleExW_Wrapper(
    dwFlags,
    lpModuleName ?? nullptr,
    phModule,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves the client computer name for the specified named pipe.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/namedpipeapi/nf-namedpipeapi-getnamedpipeclientcomputernamew>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool GetNamedPipeClientComputerName(
  HANDLE pipe,
  PWSTR clientComputerName,
  int clientComputerNameLength,
) =>
    _GetNamedPipeClientComputerName(
      pipe,
      clientComputerName,
      clientComputerNameLength,
    ) !=
    FALSE;

@Native<Int32 Function(Pointer, Pointer<Utf16>, Uint32)>(
  symbol: 'GetNamedPipeClientComputerNameW',
)
external int _GetNamedPipeClientComputerName(
  Pointer pipe,
  Pointer<Utf16> clientComputerName,
  int clientComputerNameLength,
);

/// Retrieves the client process identifier for the specified named pipe.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getnamedpipeclientprocessid>.
///
/// {@category kernel32}
Win32Result<bool> GetNamedPipeClientProcessId(
  HANDLE pipe,
  Pointer<Uint32> clientProcessId,
) {
  final result_ = GetNamedPipeClientProcessId_Wrapper(pipe, clientProcessId);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves the client session identifier for the specified named pipe.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getnamedpipeclientsessionid>.
///
/// {@category kernel32}
Win32Result<bool> GetNamedPipeClientSessionId(
  HANDLE pipe,
  Pointer<Uint32> clientSessionId,
) {
  final result_ = GetNamedPipeClientSessionId_Wrapper(pipe, clientSessionId);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves information about a specified named pipe.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/namedpipeapi/nf-namedpipeapi-getnamedpipehandlestatew>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool GetNamedPipeHandleState(
  HANDLE hNamedPipe,
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
  Int32 Function(
    Pointer,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Utf16>,
    Uint32,
  )
>(symbol: 'GetNamedPipeHandleStateW')
external int _GetNamedPipeHandleState(
  Pointer hNamedPipe,
  Pointer<Uint32> lpState,
  Pointer<Uint32> lpCurInstances,
  Pointer<Uint32> lpMaxCollectionCount,
  Pointer<Uint32> lpCollectDataTimeout,
  Pointer<Utf16> lpUserName,
  int nMaxUserNameSize,
);

/// Retrieves information about the specified named pipe.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/namedpipeapi/nf-namedpipeapi-getnamedpipeinfo>.
///
/// {@category kernel32}
Win32Result<bool> GetNamedPipeInfo(
  HANDLE hNamedPipe,
  Pointer<Uint32>? lpFlags,
  Pointer<Uint32>? lpOutBufferSize,
  Pointer<Uint32>? lpInBufferSize,
  Pointer<Uint32>? lpMaxInstances,
) {
  final result_ = GetNamedPipeInfo_Wrapper(
    hNamedPipe,
    lpFlags ?? nullptr,
    lpOutBufferSize ?? nullptr,
    lpInBufferSize ?? nullptr,
    lpMaxInstances ?? nullptr,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

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
Win32Result<bool> GetNumberOfConsoleInputEvents(
  HANDLE hConsoleInput,
  Pointer<Uint32> lpNumberOfEvents,
) {
  final result_ = GetNumberOfConsoleInputEvents_Wrapper(
    hConsoleInput,
    lpNumberOfEvents,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves the results of an overlapped operation on the specified file,
/// named pipe, or communications device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/ioapiset/nf-ioapiset-getoverlappedresult>.
///
/// {@category kernel32}
Win32Result<bool> GetOverlappedResult(
  HANDLE hFile,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<Uint32> lpNumberOfBytesTransferred,
  bool bWait,
) {
  final result_ = GetOverlappedResult_Wrapper(
    hFile,
    lpOverlapped,
    lpNumberOfBytesTransferred,
    bWait ? TRUE : FALSE,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves the results of an overlapped operation on the specified file,
/// named pipe, or communications device within the specified time-out interval.
///
/// The calling thread can perform an alertable wait.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/ioapiset/nf-ioapiset-getoverlappedresultex>.
///
/// {@category kernel32}
Win32Result<bool> GetOverlappedResultEx(
  HANDLE hFile,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<Uint32> lpNumberOfBytesTransferred,
  int dwMilliseconds,
  bool bAlertable,
) {
  final result_ = GetOverlappedResultEx_Wrapper(
    hFile,
    lpOverlapped,
    lpNumberOfBytesTransferred,
    dwMilliseconds,
    bAlertable ? TRUE : FALSE,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves the amount of RAM that is physically installed on the computer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/sysinfoapi/nf-sysinfoapi-getphysicallyinstalledsystemmemory>.
///
/// {@category kernel32}
Win32Result<bool> GetPhysicallyInstalledSystemMemory(
  Pointer<Uint64> totalMemoryInKilobytes,
) {
  final result_ = GetPhysicallyInstalledSystemMemory_Wrapper(
    totalMemoryInKilobytes,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves the address of an exported function or variable from the specified
/// dynamic-link library (DLL).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-getprocaddress>.
///
/// {@category kernel32}
Win32Result<FARPROC> GetProcAddress(HMODULE hModule, PCSTR lpProcName) {
  final result_ = GetProcAddress_Wrapper(hModule, lpProcName);
  return Win32Result(value: result_.value.ptr.cast(), error: result_.error);
}

/// Retrieves a handle to the default heap of the calling process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/heapapi/nf-heapapi-getprocessheap>.
///
/// {@category kernel32}
Win32Result<HANDLE> GetProcessHeap() {
  final result_ = GetProcessHeap_Wrapper();
  return Win32Result(value: HANDLE(result_.value.ptr), error: result_.error);
}

/// Returns the number of active heaps and retrieves handles to all of the
/// active heaps for the calling process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/heapapi/nf-heapapi-getprocessheaps>.
///
/// {@category kernel32}
Win32Result<int> GetProcessHeaps(
  int numberOfHeaps,
  Pointer<Pointer> processHeaps,
) {
  final result_ = GetProcessHeaps_Wrapper(numberOfHeaps, processHeaps);
  return Win32Result(value: result_.value.u32, error: result_.error);
}

/// Retrieves the process identifier of the specified process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-getprocessid>.
///
/// {@category kernel32}
Win32Result<int> GetProcessId(HANDLE process) {
  final result_ = GetProcessId_Wrapper(process);
  return Win32Result(value: result_.value.u32, error: result_.error);
}

/// Retrieves the shutdown parameters for the currently calling process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-getprocessshutdownparameters>.
///
/// {@category kernel32}
Win32Result<bool> GetProcessShutdownParameters(
  Pointer<Uint32> lpdwLevel,
  Pointer<Uint32> lpdwFlags,
) {
  final result_ = GetProcessShutdownParameters_Wrapper(lpdwLevel, lpdwFlags);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves timing information for the specified process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-getprocesstimes>.
///
/// {@category kernel32}
Win32Result<bool> GetProcessTimes(
  HANDLE hProcess,
  Pointer<FILETIME> lpCreationTime,
  Pointer<FILETIME> lpExitTime,
  Pointer<FILETIME> lpKernelTime,
  Pointer<FILETIME> lpUserTime,
) {
  final result_ = GetProcessTimes_Wrapper(
    hProcess,
    lpCreationTime,
    lpExitTime,
    lpKernelTime,
    lpUserTime,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves the major and minor version numbers of the system on which the
/// specified process expects to run.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-getprocessversion>.
///
/// {@category kernel32}
Win32Result<int> GetProcessVersion(int processId) {
  final result_ = GetProcessVersion_Wrapper(processId);
  return Win32Result(value: result_.value.u32, error: result_.error);
}

/// Retrieves the minimum and maximum working set sizes of the specified
/// process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/memoryapi/nf-memoryapi-getprocessworkingsetsize>.
///
/// {@category kernel32}
Win32Result<bool> GetProcessWorkingSetSize(
  HANDLE hProcess,
  Pointer<IntPtr> lpMinimumWorkingSetSize,
  Pointer<IntPtr> lpMaximumWorkingSetSize,
) {
  final result_ = GetProcessWorkingSetSize_Wrapper(
    hProcess,
    lpMinimumWorkingSetSize,
    lpMaximumWorkingSetSize,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

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

@Native<Int32 Function(Uint32, Uint32, Uint32, Uint32, Pointer<Uint32>)>(
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
Win32Result<bool> GetQueuedCompletionStatus(
  HANDLE completionPort,
  Pointer<Uint32> lpNumberOfBytesTransferred,
  Pointer<IntPtr> lpCompletionKey,
  Pointer<Pointer<OVERLAPPED>> lpOverlapped,
  int dwMilliseconds,
) {
  final result_ = GetQueuedCompletionStatus_Wrapper(
    completionPort,
    lpNumberOfBytesTransferred,
    lpCompletionKey,
    lpOverlapped,
    dwMilliseconds,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves multiple completion port entries simultaneously.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/ioapiset/nf-ioapiset-getqueuedcompletionstatusex>.
///
/// {@category kernel32}
Win32Result<bool> GetQueuedCompletionStatusEx(
  HANDLE completionPort,
  Pointer<OVERLAPPED_ENTRY> lpCompletionPortEntries,
  int ulCount,
  Pointer<Uint32> ulNumEntriesRemoved,
  int dwMilliseconds,
  bool fAlertable,
) {
  final result_ = GetQueuedCompletionStatusEx_Wrapper(
    completionPort,
    lpCompletionPortEntries,
    ulCount,
    ulNumEntriesRemoved,
    dwMilliseconds,
    fAlertable ? TRUE : FALSE,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves the short path form of the specified path.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getshortpathnamew>.
///
/// {@category kernel32}
Win32Result<int> GetShortPathName(
  PCWSTR lpszLongPath,
  PWSTR? lpszShortPath,
  int cchBuffer,
) {
  final result_ = GetShortPathNameW_Wrapper(
    lpszLongPath,
    lpszShortPath ?? nullptr,
    cchBuffer,
  );
  return Win32Result(value: result_.value.u32, error: result_.error);
}

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
Win32Result<HANDLE> GetStdHandle(STD_HANDLE nStdHandle) {
  final result_ = GetStdHandle_Wrapper(nStdHandle);
  return Win32Result(value: HANDLE(result_.value.ptr), error: result_.error);
}

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
Win32Result<int> GetSystemDefaultLocaleName(
  PWSTR lpLocaleName,
  int cchLocaleName,
) {
  final result_ = GetSystemDefaultLocaleName_Wrapper(
    lpLocaleName,
    cchLocaleName,
  );
  return Win32Result(value: result_.value.i32, error: result_.error);
}

/// Retrieves the path of the system directory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/sysinfoapi/nf-sysinfoapi-getsystemdirectoryw>.
///
/// {@category kernel32}
Win32Result<int> GetSystemDirectory(PWSTR? lpBuffer, int uSize) {
  final result_ = GetSystemDirectoryW_Wrapper(lpBuffer ?? nullptr, uSize);
  return Win32Result(value: result_.value.u32, error: result_.error);
}

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
Win32Result<bool> GetSystemPowerStatus(
  Pointer<SYSTEM_POWER_STATUS> lpSystemPowerStatus,
) {
  final result_ = GetSystemPowerStatus_Wrapper(lpSystemPowerStatus);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

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
Win32Result<bool> GetSystemTimeAdjustment(
  Pointer<Uint32> lpTimeAdjustment,
  Pointer<Uint32> lpTimeIncrement,
  Pointer<Int32> lpTimeAdjustmentDisabled,
) {
  final result_ = GetSystemTimeAdjustment_Wrapper(
    lpTimeAdjustment,
    lpTimeIncrement,
    lpTimeAdjustmentDisabled,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves system timing information.
///
/// On a multiprocessor system, the values returned are the sum of the
/// designated times across all processors.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-getsystemtimes>.
///
/// {@category kernel32}
Win32Result<bool> GetSystemTimes(
  Pointer<FILETIME>? lpIdleTime,
  Pointer<FILETIME>? lpKernelTime,
  Pointer<FILETIME>? lpUserTime,
) {
  final result_ = GetSystemTimes_Wrapper(
    lpIdleTime ?? nullptr,
    lpKernelTime ?? nullptr,
    lpUserTime ?? nullptr,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Creates a name for a temporary file.
///
/// If a unique file name is generated, an empty file is created and the handle
/// to it is released; otherwise, only a file name is generated.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-gettempfilenamew>.
///
/// {@category kernel32}
Win32Result<int> GetTempFileName(
  PCWSTR lpPathName,
  PCWSTR lpPrefixString,
  int uUnique,
  PWSTR lpTempFileName,
) {
  final result_ = GetTempFileNameW_Wrapper(
    lpPathName,
    lpPrefixString,
    uUnique,
    lpTempFileName,
  );
  return Win32Result(value: result_.value.u32, error: result_.error);
}

/// Retrieves the path of the directory designated for temporary files.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-gettemppathw>.
///
/// {@category kernel32}
Win32Result<int> GetTempPath(int nBufferLength, PWSTR? lpBuffer) {
  final result_ = GetTempPathW_Wrapper(nBufferLength, lpBuffer ?? nullptr);
  return Win32Result(value: result_.value.u32, error: result_.error);
}

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

@Native<Uint32 Function(Uint32, Pointer<Utf16>)>(symbol: 'GetTempPath2W')
external int _GetTempPath2(int bufferLength, Pointer<Utf16> buffer);

/// Retrieves the thread identifier of the specified thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-getthreadid>.
///
/// {@category kernel32}
Win32Result<int> GetThreadId(HANDLE thread) {
  final result_ = GetThreadId_Wrapper(thread);
  return Win32Result(value: result_.value.u32, error: result_.error);
}

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
Win32Result<bool> GetThreadTimes(
  HANDLE hThread,
  Pointer<FILETIME> lpCreationTime,
  Pointer<FILETIME> lpExitTime,
  Pointer<FILETIME> lpKernelTime,
  Pointer<FILETIME> lpUserTime,
) {
  final result_ = GetThreadTimes_Wrapper(
    hThread,
    lpCreationTime,
    lpExitTime,
    lpKernelTime,
    lpUserTime,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

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
Win32Result<int> GetUserDefaultLocaleName(
  PWSTR lpLocaleName,
  int cchLocaleName,
) {
  final result_ = GetUserDefaultLocaleName_Wrapper(lpLocaleName, cchLocaleName);
  return Win32Result(value: result_.value.i32, error: result_.error);
}

/// Retrieves information about the file system and volume associated with the
/// specified root directory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getvolumeinformationw>.
///
/// {@category kernel32}
Win32Result<bool> GetVolumeInformation(
  PCWSTR? lpRootPathName,
  PWSTR? lpVolumeNameBuffer,
  int nVolumeNameSize,
  Pointer<Uint32>? lpVolumeSerialNumber,
  Pointer<Uint32>? lpMaximumComponentLength,
  Pointer<Uint32>? lpFileSystemFlags,
  PWSTR? lpFileSystemNameBuffer,
  int nFileSystemNameSize,
) {
  final result_ = GetVolumeInformationW_Wrapper(
    lpRootPathName ?? nullptr,
    lpVolumeNameBuffer ?? nullptr,
    nVolumeNameSize,
    lpVolumeSerialNumber ?? nullptr,
    lpMaximumComponentLength ?? nullptr,
    lpFileSystemFlags ?? nullptr,
    lpFileSystemNameBuffer ?? nullptr,
    nFileSystemNameSize,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves information about the file system and volume associated with the
/// specified file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getvolumeinformationbyhandlew>.
///
/// {@category kernel32}
Win32Result<bool> GetVolumeInformationByHandle(
  HANDLE hFile,
  PWSTR? lpVolumeNameBuffer,
  int nVolumeNameSize,
  Pointer<Uint32>? lpVolumeSerialNumber,
  Pointer<Uint32>? lpMaximumComponentLength,
  Pointer<Uint32>? lpFileSystemFlags,
  PWSTR? lpFileSystemNameBuffer,
  int nFileSystemNameSize,
) {
  final result_ = GetVolumeInformationByHandleW_Wrapper(
    hFile,
    lpVolumeNameBuffer ?? nullptr,
    nVolumeNameSize,
    lpVolumeSerialNumber ?? nullptr,
    lpMaximumComponentLength ?? nullptr,
    lpFileSystemFlags ?? nullptr,
    lpFileSystemNameBuffer ?? nullptr,
    nFileSystemNameSize,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves a volume GUID path for the volume that is associated with the
/// specified volume mount point ( drive letter, volume GUID path, or mounted
/// folder).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getvolumenameforvolumemountpointw>.
///
/// {@category kernel32}
Win32Result<bool> GetVolumeNameForVolumeMountPoint(
  PCWSTR lpszVolumeMountPoint,
  PWSTR lpszVolumeName,
  int cchBufferLength,
) {
  final result_ = GetVolumeNameForVolumeMountPointW_Wrapper(
    lpszVolumeMountPoint,
    lpszVolumeName,
    cchBufferLength,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves the volume mount point where the specified path is mounted.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getvolumepathnamew>.
///
/// {@category kernel32}
Win32Result<bool> GetVolumePathName(
  PCWSTR lpszFileName,
  PWSTR lpszVolumePathName,
  int cchBufferLength,
) {
  final result_ = GetVolumePathNameW_Wrapper(
    lpszFileName,
    lpszVolumePathName,
    cchBufferLength,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves a list of drive letters and mounted folder paths for the specified
/// volume.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getvolumepathnamesforvolumenamew>.
///
/// {@category kernel32}
Win32Result<bool> GetVolumePathNamesForVolumeName(
  PCWSTR lpszVolumeName,
  PWSTR? lpszVolumePathNames,
  int cchBufferLength,
  Pointer<Uint32> lpcchReturnLength,
) {
  final result_ = GetVolumePathNamesForVolumeNameW_Wrapper(
    lpszVolumeName,
    lpszVolumePathNames ?? nullptr,
    cchBufferLength,
    lpcchReturnLength,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Allocates the specified number of bytes from the heap.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-globalalloc>.
///
/// {@category kernel32}
Win32Result<HGLOBAL> GlobalAlloc(GLOBAL_ALLOC_FLAGS uFlags, int dwBytes) {
  final result_ = GlobalAlloc_Wrapper(uFlags, dwBytes);
  return Win32Result(value: HGLOBAL(result_.value.ptr), error: result_.error);
}

/// Frees the specified global memory object and invalidates its handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-globalfree>.
///
/// {@category kernel32}
Win32Result<HGLOBAL> GlobalFree(HGLOBAL? hMem) {
  final result_ = GlobalFree_Wrapper(hMem ?? nullptr);
  return Win32Result(value: HGLOBAL(result_.value.ptr), error: result_.error);
}

/// Locks a global memory object and returns a pointer to the first byte of the
/// object's memory block.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-globallock>.
///
/// {@category kernel32}
Win32Result<Pointer> GlobalLock(HGLOBAL hMem) {
  final result_ = GlobalLock_Wrapper(hMem);
  return Win32Result(value: result_.value.ptr, error: result_.error);
}

/// Retrieves information about the system's current usage of both physical and
/// virtual memory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/sysinfoapi/nf-sysinfoapi-globalmemorystatusex>.
///
/// {@category kernel32}
Win32Result<bool> GlobalMemoryStatusEx(Pointer<MEMORYSTATUSEX> lpBuffer) {
  final result_ = GlobalMemoryStatusEx_Wrapper(lpBuffer);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves the current size of the specified global memory object, in bytes.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-globalsize>.
///
/// {@category kernel32}
Win32Result<int> GlobalSize(HGLOBAL hMem) {
  final result_ = GlobalSize_Wrapper(hMem);
  return Win32Result(value: result_.value.i64, error: result_.error);
}

/// Decrements the lock count associated with a memory object that was allocated
/// with GMEM_MOVEABLE.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-globalunlock>.
///
/// {@category kernel32}
Win32Result<bool> GlobalUnlock(HGLOBAL hMem) {
  final result_ = GlobalUnlock_Wrapper(hMem);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Allocates a block of memory from a heap.
///
/// The allocated memory is not movable.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/heapapi/nf-heapapi-heapalloc>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
Pointer HeapAlloc(HANDLE hHeap, HEAP_FLAGS dwFlags, int dwBytes) =>
    _HeapAlloc(hHeap, dwFlags, dwBytes);

@Native<Pointer Function(Pointer, Uint32, IntPtr)>(symbol: 'HeapAlloc')
external Pointer _HeapAlloc(Pointer hHeap, int dwFlags, int dwBytes);

/// Returns the size of the largest committed free block in the specified heap.
///
/// If the Disable heap coalesce on free global flag is set, this function also
/// coalesces adjacent free blocks of memory in the heap.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/heapapi/nf-heapapi-heapcompact>.
///
/// {@category kernel32}
Win32Result<int> HeapCompact(HANDLE hHeap, HEAP_FLAGS dwFlags) {
  final result_ = HeapCompact_Wrapper(hHeap, dwFlags);
  return Win32Result(value: result_.value.i64, error: result_.error);
}

/// Creates a private heap object that can be used by the calling process.
///
/// The function reserves space in the virtual address space of the process and
/// allocates physical storage for a specified initial portion of this block.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/heapapi/nf-heapapi-heapcreate>.
///
/// {@category kernel32}
Win32Result<HANDLE> HeapCreate(
  HEAP_FLAGS flOptions,
  int dwInitialSize,
  int dwMaximumSize,
) {
  final result_ = HeapCreate_Wrapper(flOptions, dwInitialSize, dwMaximumSize);
  return Win32Result(value: HANDLE(result_.value.ptr), error: result_.error);
}

/// Destroys the specified heap object.
///
/// It decommits and releases all the pages of a private heap object, and it
/// invalidates the handle to the heap.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/heapapi/nf-heapapi-heapdestroy>.
///
/// {@category kernel32}
Win32Result<bool> HeapDestroy(HANDLE hHeap) {
  final result_ = HeapDestroy_Wrapper(hHeap);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Frees a memory block allocated from a heap by the HeapAlloc or HeapReAlloc
/// function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/heapapi/nf-heapapi-heapfree>.
///
/// {@category kernel32}
Win32Result<bool> HeapFree(HANDLE hHeap, HEAP_FLAGS dwFlags, Pointer? lpMem) {
  final result_ = HeapFree_Wrapper(hHeap, dwFlags, lpMem ?? nullptr);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Attempts to acquire the critical section object, or lock, that is associated
/// with a specified heap.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/heapapi/nf-heapapi-heaplock>.
///
/// {@category kernel32}
Win32Result<bool> HeapLock(HANDLE hHeap) {
  final result_ = HeapLock_Wrapper(hHeap);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves information about the specified heap.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/heapapi/nf-heapapi-heapqueryinformation>.
///
/// {@category kernel32}
Win32Result<bool> HeapQueryInformation(
  HANDLE? heapHandle,
  HEAP_INFORMATION_CLASS heapInformationClass,
  Pointer? heapInformation,
  int heapInformationLength,
  Pointer<IntPtr>? returnLength,
) {
  final result_ = HeapQueryInformation_Wrapper(
    heapHandle ?? nullptr,
    heapInformationClass,
    heapInformation ?? nullptr,
    heapInformationLength,
    returnLength ?? nullptr,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

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
  HANDLE hHeap,
  HEAP_FLAGS dwFlags,
  Pointer? lpMem,
  int dwBytes,
) => _HeapReAlloc(hHeap, dwFlags, lpMem ?? nullptr, dwBytes);

@Native<Pointer Function(Pointer, Uint32, Pointer, IntPtr)>(
  symbol: 'HeapReAlloc',
)
external Pointer _HeapReAlloc(
  Pointer hHeap,
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
Win32Result<bool> HeapSetInformation(
  HANDLE? heapHandle,
  HEAP_INFORMATION_CLASS heapInformationClass,
  Pointer? heapInformation,
  int heapInformationLength,
) {
  final result_ = HeapSetInformation_Wrapper(
    heapHandle ?? nullptr,
    heapInformationClass,
    heapInformation ?? nullptr,
    heapInformationLength,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves the size of a memory block allocated from a heap by the HeapAlloc
/// or HeapReAlloc function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/heapapi/nf-heapapi-heapsize>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int HeapSize(HANDLE hHeap, HEAP_FLAGS dwFlags, Pointer lpMem) =>
    _HeapSize(hHeap, dwFlags, lpMem);

@Native<IntPtr Function(Pointer, Uint32, Pointer)>(symbol: 'HeapSize')
external int _HeapSize(Pointer hHeap, int dwFlags, Pointer lpMem);

/// Releases ownership of the critical section object, or lock, that is
/// associated with a specified heap.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/heapapi/nf-heapapi-heapunlock>.
///
/// {@category kernel32}
Win32Result<bool> HeapUnlock(HANDLE hHeap) {
  final result_ = HeapUnlock_Wrapper(hHeap);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

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
bool HeapValidate(HANDLE hHeap, HEAP_FLAGS dwFlags, Pointer? lpMem) =>
    _HeapValidate(hHeap, dwFlags, lpMem ?? nullptr) != FALSE;

@Native<Int32 Function(Pointer, Uint32, Pointer)>(symbol: 'HeapValidate')
external int _HeapValidate(Pointer hHeap, int dwFlags, Pointer lpMem);

/// Enumerates the memory blocks in the specified heap.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/heapapi/nf-heapapi-heapwalk>.
///
/// {@category kernel32}
Win32Result<bool> HeapWalk(HANDLE hHeap, Pointer<PROCESS_HEAP_ENTRY> lpEntry) {
  final result_ = HeapWalk_Wrapper(hHeap, lpEntry);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Initializes the specified list of attributes for process and thread
/// creation.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-initializeprocthreadattributelist>.
///
/// {@category kernel32}
Win32Result<bool> InitializeProcThreadAttributeList(
  LPPROC_THREAD_ATTRIBUTE_LIST? lpAttributeList,
  int dwAttributeCount,
  Pointer<IntPtr> lpSize,
) {
  final result_ = InitializeProcThreadAttributeList_Wrapper(
    lpAttributeList ?? nullptr,
    dwAttributeCount,
    NULL,
    lpSize,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Determines whether the calling process is being debugged by a user-mode
/// debugger.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/debugapi/nf-debugapi-isdebuggerpresent>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool IsDebuggerPresent() => _IsDebuggerPresent() != FALSE;

@Native<Int32 Function()>(symbol: 'IsDebuggerPresent')
external int _IsDebuggerPresent();

/// Indicates if the OS was booted from a VHD container.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-isnativevhdboot>.
///
/// {@category kernel32}
Win32Result<bool> IsNativeVhdBoot(Pointer<Int32> nativeVhdBoot) {
  final result_ = IsNativeVhdBoot_Wrapper(nativeVhdBoot);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Determines whether the process is running in the specified job.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/jobapi/nf-jobapi-isprocessinjob>.
///
/// {@category kernel32}
Win32Result<bool> IsProcessInJob(
  HANDLE processHandle,
  HANDLE? jobHandle,
  Pointer<Int32> result,
) {
  final result_ = IsProcessInJob_Wrapper(
    processHandle,
    jobHandle ?? nullptr,
    result,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Determines the current state of the computer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-issystemresumeautomatic>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool IsSystemResumeAutomatic() => _IsSystemResumeAutomatic() != FALSE;

@Native<Int32 Function()>(symbol: 'IsSystemResumeAutomatic')
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

@Native<Int32 Function(Pointer<Utf16>)>(symbol: 'IsValidLocaleName')
external int _IsValidLocaleName(Pointer<Utf16> lpLocaleName);

/// Determines whether the specified process is running under WOW64; also
/// returns additional machine process and architecture information.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wow64apiset/nf-wow64apiset-iswow64process2>.
///
/// {@category kernel32}
Win32Result<bool> IsWow64Process2(
  HANDLE hProcess,
  Pointer<Uint16> pProcessMachine,
  Pointer<Uint16>? pNativeMachine,
) {
  final result_ = IsWow64Process2_Wrapper(
    hProcess,
    pProcessMachine,
    pNativeMachine ?? nullptr,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Loads the specified module into the address space of the calling process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-loadlibraryw>.
///
/// {@category kernel32}
Win32Result<HMODULE> LoadLibrary(PCWSTR lpLibFileName) {
  final result_ = LoadLibraryW_Wrapper(lpLibFileName);
  return Win32Result(value: HMODULE(result_.value.ptr), error: result_.error);
}

/// Loads the specified module into the address space of the calling process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-loadlibraryexw>.
///
/// {@category kernel32}
Win32Result<HMODULE> LoadLibraryEx(
  PCWSTR lpLibFileName,
  LOAD_LIBRARY_FLAGS dwFlags,
) {
  final result_ = LoadLibraryExW_Wrapper(lpLibFileName, nullptr, dwFlags);
  return Win32Result(value: HMODULE(result_.value.ptr), error: result_.error);
}

/// Retrieves a handle that can be used to obtain a pointer to the first byte of
/// the specified resource in memory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-loadresource>.
///
/// {@category kernel32}
Win32Result<HGLOBAL> LoadResource(HMODULE? hModule, HRSRC hResInfo) {
  final result_ = LoadResource_Wrapper(hModule ?? nullptr, hResInfo);
  return Win32Result(value: HGLOBAL(result_.value.ptr), error: result_.error);
}

/// Allocates the specified number of bytes from the heap.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-localalloc>.
///
/// {@category kernel32}
Win32Result<HLOCAL> LocalAlloc(LOCAL_ALLOC_FLAGS uFlags, int uBytes) {
  final result_ = LocalAlloc_Wrapper(uFlags, uBytes);
  return Win32Result(value: HLOCAL(result_.value.ptr), error: result_.error);
}

/// Frees the specified local memory object and invalidates its handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-localfree>.
///
/// {@category kernel32}
Win32Result<HLOCAL> LocalFree(HLOCAL? hMem) {
  final result_ = LocalFree_Wrapper(hMem ?? nullptr);
  return Win32Result(value: HLOCAL(result_.value.ptr), error: result_.error);
}

/// Locks the specified file for exclusive access by the calling process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-lockfile>.
///
/// {@category kernel32}
Win32Result<bool> LockFile(
  HANDLE hFile,
  int dwFileOffsetLow,
  int dwFileOffsetHigh,
  int nNumberOfBytesToLockLow,
  int nNumberOfBytesToLockHigh,
) {
  final result_ = LockFile_Wrapper(
    hFile,
    dwFileOffsetLow,
    dwFileOffsetHigh,
    nNumberOfBytesToLockLow,
    nNumberOfBytesToLockHigh,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Locks the specified file for exclusive access by the calling process.
///
/// This function can operate either synchronously or asynchronously and can
/// request either an exclusive or a shared lock.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-lockfileex>.
///
/// {@category kernel32}
Win32Result<bool> LockFileEx(
  HANDLE hFile,
  LOCK_FILE_FLAGS dwFlags,
  int nNumberOfBytesToLockLow,
  int nNumberOfBytesToLockHigh,
  Pointer<OVERLAPPED> lpOverlapped,
) {
  final result_ = LockFileEx_Wrapper(
    hFile,
    dwFlags,
    NULL,
    nNumberOfBytesToLockLow,
    nNumberOfBytesToLockHigh,
    lpOverlapped,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves a pointer to the specified resource in memory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-lockresource>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
Pointer LockResource(HGLOBAL hResData) => _LockResource(hResData);

@Native<Pointer Function(Pointer)>(symbol: 'LockResource')
external Pointer _LockResource(Pointer hResData);

/// Moves an existing file or a directory, including its children.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-movefilew>.
///
/// {@category kernel32}
Win32Result<bool> MoveFile(PCWSTR lpExistingFileName, PCWSTR lpNewFileName) {
  final result_ = MoveFileW_Wrapper(lpExistingFileName, lpNewFileName);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Moves an existing file or directory, including its children, with various
/// move options.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-movefileexw>.
///
/// {@category kernel32}
Win32Result<bool> MoveFileEx(
  PCWSTR lpExistingFileName,
  PCWSTR? lpNewFileName,
  MOVE_FILE_FLAGS dwFlags,
) {
  final result_ = MoveFileExW_Wrapper(
    lpExistingFileName,
    lpNewFileName ?? nullptr,
    dwFlags,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Opens an existing named event object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/synchapi/nf-synchapi-openeventw>.
///
/// {@category kernel32}
Win32Result<HANDLE> OpenEvent(
  SYNCHRONIZATION_ACCESS_RIGHTS dwDesiredAccess,
  bool bInheritHandle,
  PCWSTR lpName,
) {
  final result_ = OpenEventW_Wrapper(
    dwDesiredAccess,
    bInheritHandle ? TRUE : FALSE,
    lpName,
  );
  return Win32Result(value: HANDLE(result_.value.ptr), error: result_.error);
}

/// Opens an existing job object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/jobapi2/nf-jobapi2-openjobobjectw>.
///
/// {@category kernel32}
Win32Result<HANDLE> OpenJobObject(
  int dwDesiredAccess,
  bool bInheritHandle,
  PCWSTR lpName,
) {
  final result_ = OpenJobObjectW_Wrapper(
    dwDesiredAccess,
    bInheritHandle ? TRUE : FALSE,
    lpName,
  );
  return Win32Result(value: HANDLE(result_.value.ptr), error: result_.error);
}

/// Opens an existing local process object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-openprocess>.
///
/// {@category kernel32}
Win32Result<HANDLE> OpenProcess(
  PROCESS_ACCESS_RIGHTS dwDesiredAccess,
  bool bInheritHandle,
  int dwProcessId,
) {
  final result_ = OpenProcess_Wrapper(
    dwDesiredAccess,
    bInheritHandle ? TRUE : FALSE,
    dwProcessId,
  );
  return Win32Result(value: HANDLE(result_.value.ptr), error: result_.error);
}

/// Sends a string to the debugger for display.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/debugapi/nf-debugapi-outputdebugstringw>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
void OutputDebugString(PCWSTR? lpOutputString) =>
    _OutputDebugString(lpOutputString ?? nullptr);

@Native<Void Function(Pointer<Utf16>)>(symbol: 'OutputDebugStringW')
external void _OutputDebugString(Pointer<Utf16> lpOutputString);

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

@Native<Uint32 Function(Pointer<Utf16>, Pointer<Uint32>, Pointer<Utf16>)>(
  symbol: 'PackageFamilyNameFromFullName',
)
external int _PackageFamilyNameFromFullName(
  Pointer<Utf16> packageFullName,
  Pointer<Uint32> packageFamilyNameLength,
  Pointer<Utf16> packageFamilyName,
);

/// Reads data from the specified console input buffer without removing it from
/// the buffer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/peekconsoleinput>.
///
/// {@category kernel32}
Win32Result<bool> PeekConsoleInput(
  HANDLE hConsoleInput,
  Pointer<INPUT_RECORD> lpBuffer,
  int nLength,
  Pointer<Uint32> lpNumberOfEventsRead,
) {
  final result_ = PeekConsoleInputW_Wrapper(
    hConsoleInput,
    lpBuffer,
    nLength,
    lpNumberOfEventsRead,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Copies data from a named or anonymous pipe into a buffer without removing it
/// from the pipe.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/namedpipeapi/nf-namedpipeapi-peeknamedpipe>.
///
/// {@category kernel32}
Win32Result<bool> PeekNamedPipe(
  HANDLE hNamedPipe,
  Pointer? lpBuffer,
  int nBufferSize,
  Pointer<Uint32>? lpBytesRead,
  Pointer<Uint32>? lpTotalBytesAvail,
  Pointer<Uint32>? lpBytesLeftThisMessage,
) {
  final result_ = PeekNamedPipe_Wrapper(
    hNamedPipe,
    lpBuffer ?? nullptr,
    nBufferSize,
    lpBytesRead ?? nullptr,
    lpTotalBytesAvail ?? nullptr,
    lpBytesLeftThisMessage ?? nullptr,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Posts an I/O completion packet to an I/O completion port.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/ioapiset/nf-ioapiset-postqueuedcompletionstatus>.
///
/// {@category kernel32}
Win32Result<bool> PostQueuedCompletionStatus(
  HANDLE completionPort,
  int dwNumberOfBytesTransferred,
  int dwCompletionKey,
  Pointer<OVERLAPPED>? lpOverlapped,
) {
  final result_ = PostQueuedCompletionStatus_Wrapper(
    completionPort,
    dwNumberOfBytesTransferred,
    dwCompletionKey,
    lpOverlapped ?? nullptr,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves the Remote Desktop Services session associated with a specified
/// process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-processidtosessionid>.
///
/// {@category kernel32}
Win32Result<bool> ProcessIdToSessionId(
  int dwProcessId,
  Pointer<Uint32> pSessionId,
) {
  final result_ = ProcessIdToSessionId_Wrapper(dwProcessId, pSessionId);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Discards all characters from the output or input buffer of a specified
/// communications resource.
///
/// It can also terminate pending read or write operations on the resource.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-purgecomm>.
///
/// {@category kernel32}
Win32Result<bool> PurgeComm(HANDLE hFile, PURGE_COMM_FLAGS dwFlags) {
  final result_ = PurgeComm_Wrapper(hFile, dwFlags);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves information about MS-DOS device names.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-querydosdevicew>.
///
/// {@category kernel32}
Win32Result<int> QueryDosDevice(
  PCWSTR? lpDeviceName,
  PWSTR? lpTargetPath,
  int ucchMax,
) {
  final result_ = QueryDosDeviceW_Wrapper(
    lpDeviceName ?? nullptr,
    lpTargetPath ?? nullptr,
    ucchMax,
  );
  return Win32Result(value: result_.value.u32, error: result_.error);
}

/// Retrieves the full name of the executable image for the specified process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-queryfullprocessimagenamew>.
///
/// {@category kernel32}
Win32Result<bool> QueryFullProcessImageName(
  HANDLE hProcess,
  PROCESS_NAME_FORMAT dwFlags,
  PWSTR lpExeName,
  Pointer<Uint32> lpdwSize,
) {
  final result_ = QueryFullProcessImageNameW_Wrapper(
    hProcess,
    dwFlags,
    lpExeName,
    lpdwSize,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves limit and job state information from the job object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/jobapi2/nf-jobapi2-queryinformationjobobject>.
///
/// {@category kernel32}
Win32Result<bool> QueryInformationJobObject(
  HANDLE? hJob,
  JOBOBJECTINFOCLASS jobObjectInformationClass,
  Pointer lpJobObjectInformation,
  int cbJobObjectInformationLength,
  Pointer<Uint32>? lpReturnLength,
) {
  final result_ = QueryInformationJobObject_Wrapper(
    hJob ?? nullptr,
    jobObjectInformationClass,
    lpJobObjectInformation,
    cbJobObjectInformationLength,
    lpReturnLength ?? nullptr,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Gets information about the control of the I/O rate for a job object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/jobapi2/nf-jobapi2-queryioratecontrolinformationjobobject>.
///
/// {@category kernel32}
Win32Result<int> QueryIoRateControlInformationJobObject(
  HANDLE? hJob,
  PCWSTR? volumeName,
  Pointer<Pointer<JOBOBJECT_IO_RATE_CONTROL_INFORMATION>> infoBlocks,
  Pointer<Uint32> infoBlockCount,
) {
  final result_ = QueryIoRateControlInformationJobObject_Wrapper(
    hJob ?? nullptr,
    volumeName ?? nullptr,
    infoBlocks,
    infoBlockCount,
  );
  return Win32Result(value: result_.value.u32, error: result_.error);
}

/// Retrieves the current value of the performance counter, which is a high
/// resolution (&lt;1us) time stamp that can be used for time-interval
/// measurements.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/profileapi/nf-profileapi-queryperformancecounter>.
///
/// {@category kernel32}
Win32Result<bool> QueryPerformanceCounter(Pointer<Int64> lpPerformanceCount) {
  final result_ = QueryPerformanceCounter_Wrapper(lpPerformanceCount);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves the frequency of the performance counter.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/profileapi/nf-profileapi-queryperformancefrequency>.
///
/// {@category kernel32}
Win32Result<bool> QueryPerformanceFrequency(Pointer<Int64> lpFrequency) {
  final result_ = QueryPerformanceFrequency_Wrapper(lpFrequency);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Reads character input from the console input buffer and removes it from the
/// buffer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/readconsole>.
///
/// {@category kernel32}
Win32Result<bool> ReadConsole(
  HANDLE hConsoleInput,
  Pointer lpBuffer,
  int nNumberOfCharsToRead,
  Pointer<Uint32> lpNumberOfCharsRead,
  Pointer<CONSOLE_READCONSOLE_CONTROL>? pInputControl,
) {
  final result_ = ReadConsoleW_Wrapper(
    hConsoleInput,
    lpBuffer,
    nNumberOfCharsToRead,
    lpNumberOfCharsRead,
    pInputControl ?? nullptr,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Reads data from a console input buffer and removes it from the buffer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/readconsoleinput>.
///
/// {@category kernel32}
Win32Result<bool> ReadConsoleInput(
  HANDLE hConsoleInput,
  Pointer<INPUT_RECORD> lpBuffer,
  int nLength,
  Pointer<Uint32> lpNumberOfEventsRead,
) {
  final result_ = ReadConsoleInputW_Wrapper(
    hConsoleInput,
    lpBuffer,
    nLength,
    lpNumberOfEventsRead,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Reads data from the specified file or input/output (I/O) device.
///
/// Reads occur at the position specified by the file pointer if supported by
/// the device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-readfile>.
///
/// {@category kernel32}
Win32Result<bool> ReadFile(
  HANDLE hFile,
  Pointer<Uint8>? lpBuffer,
  int nNumberOfBytesToRead,
  Pointer<Uint32>? lpNumberOfBytesRead,
  Pointer<OVERLAPPED>? lpOverlapped,
) {
  final result_ = ReadFile_Wrapper(
    hFile,
    lpBuffer ?? nullptr,
    nNumberOfBytesToRead,
    lpNumberOfBytesRead ?? nullptr,
    lpOverlapped ?? nullptr,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

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
Win32Result<bool> ReadFileEx(
  HANDLE hFile,
  Pointer<Uint8>? lpBuffer,
  int nNumberOfBytesToRead,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<NativeFunction<LPOVERLAPPED_COMPLETION_ROUTINE>> lpCompletionRoutine,
) {
  final result_ = ReadFileEx_Wrapper(
    hFile,
    lpBuffer ?? nullptr,
    nNumberOfBytesToRead,
    lpOverlapped,
    lpCompletionRoutine,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Reads data from a file and stores it in an array of buffers.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-readfilescatter>.
///
/// {@category kernel32}
Win32Result<bool> ReadFileScatter(
  HANDLE hFile,
  Pointer<FILE_SEGMENT_ELEMENT> aSegmentArray,
  int nNumberOfBytesToRead,
  Pointer<OVERLAPPED> lpOverlapped,
) {
  final result_ = ReadFileScatter_Wrapper(
    hFile,
    aSegmentArray,
    nNumberOfBytesToRead,
    nullptr,
    lpOverlapped,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Reads data from an area of memory in a specified process.
///
/// The entire area to be read must be accessible or the operation fails.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/memoryapi/nf-memoryapi-readprocessmemory>.
///
/// {@category kernel32}
Win32Result<bool> ReadProcessMemory(
  HANDLE hProcess,
  Pointer lpBaseAddress,
  Pointer lpBuffer,
  int nSize,
  Pointer<IntPtr>? lpNumberOfBytesRead,
) {
  final result_ = ReadProcessMemory_Wrapper(
    hProcess,
    lpBaseAddress,
    lpBuffer,
    nSize,
    lpNumberOfBytesRead ?? nullptr,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Decrements the reference count of the specified activation context.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-releaseactctx>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
void ReleaseActCtx(HANDLE hActCtx) => _ReleaseActCtx(hActCtx);

@Native<Void Function(Pointer)>(symbol: 'ReleaseActCtx')
external void _ReleaseActCtx(Pointer hActCtx);

/// Deletes an existing empty directory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-removedirectoryw>.
///
/// {@category kernel32}
Win32Result<bool> RemoveDirectory(PCWSTR lpPathName) {
  final result_ = RemoveDirectoryW_Wrapper(lpPathName);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Removes a directory that was added to the process DLL search path by using
/// AddDllDirectory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-removedlldirectory>.
///
/// {@category kernel32}
Win32Result<bool> RemoveDllDirectory(Pointer cookie) {
  final result_ = RemoveDllDirectory_Wrapper(cookie);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Reopens the specified file system object with different access rights,
/// sharing mode, and flags.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-reopenfile>.
///
/// {@category kernel32}
Win32Result<HANDLE> ReOpenFile(
  HANDLE hOriginalFile,
  int dwDesiredAccess,
  FILE_SHARE_MODE dwShareMode,
  FILE_FLAGS_AND_ATTRIBUTES dwFlagsAndAttributes,
) {
  final result_ = ReOpenFile_Wrapper(
    hOriginalFile,
    dwDesiredAccess,
    dwShareMode,
    dwFlagsAndAttributes,
  );
  return Win32Result(value: HANDLE(result_.value.ptr), error: result_.error);
}

/// Sets the specified event object to the nonsignaled state.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/synchapi/nf-synchapi-resetevent>.
///
/// {@category kernel32}
Win32Result<bool> ResetEvent(HANDLE hEvent) {
  final result_ = ResetEvent_Wrapper(hEvent);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Resizes the internal buffers for a pseudoconsole to the given size.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/resizepseudoconsole>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
void ResizePseudoConsole(HPCON hPC, COORD size) {
  final hr$ = HRESULT(_ResizePseudoConsole(hPC, size));
  if (hr$.isError) throw WindowsException(hr$);
}

@Native<Int32 Function(IntPtr, COORD)>(symbol: 'ResizePseudoConsole')
external int _ResizePseudoConsole(int hPC, COORD size);

/// Moves a block of data in a screen buffer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/scrollconsolescreenbuffer>.
///
/// {@category kernel32}
Win32Result<bool> ScrollConsoleScreenBuffer(
  HANDLE hConsoleOutput,
  Pointer<SMALL_RECT> lpScrollRectangle,
  Pointer<SMALL_RECT>? lpClipRectangle,
  COORD dwDestinationOrigin,
  Pointer<CHAR_INFO> lpFill,
) {
  final result_ = ScrollConsoleScreenBufferW_Wrapper(
    hConsoleOutput,
    lpScrollRectangle,
    lpClipRectangle ?? nullptr,
    dwDestinationOrigin,
    lpFill,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Suspends character transmission for a specified communications device and
/// places the transmission line in a break state until the ClearCommBreak
/// function is called.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-setcommbreak>.
///
/// {@category kernel32}
Win32Result<bool> SetCommBreak(HANDLE hFile) {
  final result_ = SetCommBreak_Wrapper(hFile);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Sets the current configuration of a communications device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-setcommconfig>.
///
/// {@category kernel32}
Win32Result<bool> SetCommConfig(
  HANDLE hCommDev,
  Pointer<COMMCONFIG> lpCC,
  int dwSize,
) {
  final result_ = SetCommConfig_Wrapper(hCommDev, lpCC, dwSize);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Specifies a set of events to be monitored for a communications device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-setcommmask>.
///
/// {@category kernel32}
Win32Result<bool> SetCommMask(HANDLE hFile, COMM_EVENT_MASK dwEvtMask) {
  final result_ = SetCommMask_Wrapper(hFile, dwEvtMask);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

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
Win32Result<bool> SetCommState(HANDLE hFile, Pointer<DCB> lpDCB) {
  final result_ = SetCommState_Wrapper(hFile, lpDCB);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Sets the time-out parameters for all read and write operations on a
/// specified communications device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-setcommtimeouts>.
///
/// {@category kernel32}
Win32Result<bool> SetCommTimeouts(
  HANDLE hFile,
  Pointer<COMMTIMEOUTS> lpCommTimeouts,
) {
  final result_ = SetCommTimeouts_Wrapper(hFile, lpCommTimeouts);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Adds or removes an application-defined HandlerRoutine function from the list
/// of handler functions for the calling process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/setconsolectrlhandler>.
///
/// {@category kernel32}
Win32Result<bool> SetConsoleCtrlHandler(
  Pointer<NativeFunction<PHANDLER_ROUTINE>>? handlerRoutine,
  bool add,
) {
  final result_ = SetConsoleCtrlHandler_Wrapper(
    handlerRoutine ?? nullptr,
    add ? TRUE : FALSE,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Sets the size and visibility of the cursor for the specified console screen
/// buffer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/setconsolecursorinfo>.
///
/// {@category kernel32}
Win32Result<bool> SetConsoleCursorInfo(
  HANDLE hConsoleOutput,
  Pointer<CONSOLE_CURSOR_INFO> lpConsoleCursorInfo,
) {
  final result_ = SetConsoleCursorInfo_Wrapper(
    hConsoleOutput,
    lpConsoleCursorInfo,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Sets the cursor position in the specified console screen buffer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/setconsolecursorposition>.
///
/// {@category kernel32}
Win32Result<bool> SetConsoleCursorPosition(
  HANDLE hConsoleOutput,
  COORD dwCursorPosition,
) {
  final result_ = SetConsoleCursorPosition_Wrapper(
    hConsoleOutput,
    dwCursorPosition,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Sets the display mode of the specified console screen buffer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/setconsoledisplaymode>.
///
/// {@category kernel32}
Win32Result<bool> SetConsoleDisplayMode(
  HANDLE hConsoleOutput,
  int dwFlags,
  Pointer<COORD>? lpNewScreenBufferDimensions,
) {
  final result_ = SetConsoleDisplayMode_Wrapper(
    hConsoleOutput,
    dwFlags,
    lpNewScreenBufferDimensions ?? nullptr,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Sets the input mode of a console's input buffer or the output mode of a
/// console screen buffer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/setconsolemode>.
///
/// {@category kernel32}
Win32Result<bool> SetConsoleMode(HANDLE hConsoleHandle, CONSOLE_MODE dwMode) {
  final result_ = SetConsoleMode_Wrapper(hConsoleHandle, dwMode);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Sets the attributes of characters written to the console screen buffer by
/// the WriteFile or WriteConsole function, or echoed by the ReadFile or
/// ReadConsole function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/setconsoletextattribute>.
///
/// {@category kernel32}
Win32Result<bool> SetConsoleTextAttribute(
  HANDLE hConsoleOutput,
  CONSOLE_CHARACTER_ATTRIBUTES wAttributes,
) {
  final result_ = SetConsoleTextAttribute_Wrapper(hConsoleOutput, wAttributes);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Sets the current size and position of a console screen buffer's window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/setconsolewindowinfo>.
///
/// {@category kernel32}
Win32Result<bool> SetConsoleWindowInfo(
  HANDLE hConsoleOutput,
  bool bAbsolute,
  Pointer<SMALL_RECT> lpConsoleWindow,
) {
  final result_ = SetConsoleWindowInfo_Wrapper(
    hConsoleOutput,
    bAbsolute ? TRUE : FALSE,
    lpConsoleWindow,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Changes the current directory for the current process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-setcurrentdirectory>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool SetCurrentDirectory(PCWSTR lpPathName) =>
    _SetCurrentDirectory(lpPathName) != FALSE;

@Native<Int32 Function(Pointer<Utf16>)>(symbol: 'SetCurrentDirectoryW')
external int _SetCurrentDirectory(Pointer<Utf16> lpPathName);

/// Sets the default configuration for a communications device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-setdefaultcommconfigw>.
///
/// {@category kernel32}
Win32Result<bool> SetDefaultCommConfig(
  PCWSTR lpszName,
  Pointer<COMMCONFIG> lpCC,
  int dwSize,
) {
  final result_ = SetDefaultCommConfigW_Wrapper(lpszName, lpCC, dwSize);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

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
Win32Result<bool> SetDefaultDllDirectories(LOAD_LIBRARY_FLAGS directoryFlags) {
  final result_ = SetDefaultDllDirectories_Wrapper(directoryFlags);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Sets the physical file size for the specified file to the current position
/// of the file pointer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-setendoffile>.
///
/// {@category kernel32}
Win32Result<bool> SetEndOfFile(HANDLE hFile) {
  final result_ = SetEndOfFile_Wrapper(hFile);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Sets the contents of the specified environment variable for the current
/// process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processenv/nf-processenv-setenvironmentvariablew>.
///
/// {@category kernel32}
Win32Result<bool> SetEnvironmentVariable(PCWSTR lpName, PCWSTR? lpValue) {
  final result_ = SetEnvironmentVariableW_Wrapper(lpName, lpValue ?? nullptr);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

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
Win32Result<bool> SetEvent(HANDLE hEvent) {
  final result_ = SetEvent_Wrapper(hEvent);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

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
Win32Result<bool> SetFileAttributes(
  PCWSTR lpFileName,
  FILE_FLAGS_AND_ATTRIBUTES dwFileAttributes,
) {
  final result_ = SetFileAttributesW_Wrapper(lpFileName, dwFileAttributes);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Sets the file information for the specified file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-setfileinformationbyhandle>.
///
/// {@category kernel32}
Win32Result<bool> SetFileInformationByHandle(
  HANDLE hFile,
  FILE_INFO_BY_HANDLE_CLASS fileInformationClass,
  Pointer lpFileInformation,
  int dwBufferSize,
) {
  final result_ = SetFileInformationByHandle_Wrapper(
    hFile,
    fileInformationClass,
    lpFileInformation,
    dwBufferSize,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Associates a virtual address range with the specified file handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-setfileiooverlappedrange>.
///
/// {@category kernel32}
Win32Result<bool> SetFileIoOverlappedRange(
  HANDLE fileHandle,
  Pointer<Uint8> overlappedRangeStart,
  int length,
) {
  final result_ = SetFileIoOverlappedRange_Wrapper(
    fileHandle,
    overlappedRangeStart,
    length,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Moves the file pointer of the specified file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-setfilepointer>.
///
/// {@category kernel32}
Win32Result<int> SetFilePointer(
  HANDLE hFile,
  int lDistanceToMove,
  Pointer<Int32>? lpDistanceToMoveHigh,
  SET_FILE_POINTER_MOVE_METHOD dwMoveMethod,
) {
  final result_ = SetFilePointer_Wrapper(
    hFile,
    lDistanceToMove,
    lpDistanceToMoveHigh ?? nullptr,
    dwMoveMethod,
  );
  return Win32Result(value: result_.value.u32, error: result_.error);
}

/// Moves the file pointer of the specified file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-setfilepointerex>.
///
/// {@category kernel32}
Win32Result<bool> SetFilePointerEx(
  HANDLE hFile,
  int liDistanceToMove,
  Pointer<Int64>? lpNewFilePointer,
  SET_FILE_POINTER_MOVE_METHOD dwMoveMethod,
) {
  final result_ = SetFilePointerEx_Wrapper(
    hFile,
    liDistanceToMove,
    lpNewFilePointer ?? nullptr,
    dwMoveMethod,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Sets the short name for the specified file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-setfileshortnamew>.
///
/// {@category kernel32}
Win32Result<bool> SetFileShortName(HANDLE hFile, PCWSTR lpShortName) {
  final result_ = SetFileShortNameW_Wrapper(hFile, lpShortName);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Sets the date and time that the specified file or directory was created,
/// last accessed, or last modified.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-setfiletime>.
///
/// {@category kernel32}
Win32Result<bool> SetFileTime(
  HANDLE hFile,
  Pointer<FILETIME>? lpCreationTime,
  Pointer<FILETIME>? lpLastAccessTime,
  Pointer<FILETIME>? lpLastWriteTime,
) {
  final result_ = SetFileTime_Wrapper(
    hFile,
    lpCreationTime ?? nullptr,
    lpLastAccessTime ?? nullptr,
    lpLastWriteTime ?? nullptr,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Sets the valid data length of the specified file.
///
/// This function is useful in very limited scenarios.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-setfilevaliddata>.
///
/// {@category kernel32}
Win32Result<bool> SetFileValidData(HANDLE hFile, int validDataLength) {
  final result_ = SetFileValidData_Wrapper(hFile, validDataLength);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Sets the value of the specified firmware environment variable.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-setfirmwareenvironmentvariablew>.
///
/// {@category kernel32}
Win32Result<bool> SetFirmwareEnvironmentVariable(
  PCWSTR lpName,
  PCWSTR lpGuid,
  Pointer? pValue,
  int nSize,
) {
  final result_ = SetFirmwareEnvironmentVariableW_Wrapper(
    lpName,
    lpGuid,
    pValue ?? nullptr,
    nSize,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Sets the value of the specified firmware environment variable and the
/// attributes that indicate how this variable is stored and maintained.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-setfirmwareenvironmentvariableexw>.
///
/// {@category kernel32}
Win32Result<bool> SetFirmwareEnvironmentVariableEx(
  PCWSTR lpName,
  PCWSTR lpGuid,
  Pointer? pValue,
  int nSize,
  int dwAttributes,
) {
  final result_ = SetFirmwareEnvironmentVariableExW_Wrapper(
    lpName,
    lpGuid,
    pValue ?? nullptr,
    nSize,
    dwAttributes,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Sets certain properties of an object handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/handleapi/nf-handleapi-sethandleinformation>.
///
/// {@category kernel32}
Win32Result<bool> SetHandleInformation(
  HANDLE hObject,
  int dwMask,
  HANDLE_FLAGS dwFlags,
) {
  final result_ = SetHandleInformation_Wrapper(hObject, dwMask, dwFlags);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Sets limits for a job object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/jobapi2/nf-jobapi2-setinformationjobobject>.
///
/// {@category kernel32}
Win32Result<bool> SetInformationJobObject(
  HANDLE hJob,
  JOBOBJECTINFOCLASS jobObjectInformationClass,
  Pointer lpJobObjectInformation,
  int cbJobObjectInformationLength,
) {
  final result_ = SetInformationJobObject_Wrapper(
    hJob,
    jobObjectInformationClass,
    lpJobObjectInformation,
    cbJobObjectInformationLength,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Sets I/O limits on a job object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/jobapi2/nf-jobapi2-setioratecontrolinformationjobobject>.
///
/// {@category kernel32}
Win32Result<int> SetIoRateControlInformationJobObject(
  HANDLE hJob,
  Pointer<JOBOBJECT_IO_RATE_CONTROL_INFORMATION> ioRateControlInfo,
) {
  final result_ = SetIoRateControlInformationJobObject_Wrapper(
    hJob,
    ioRateControlInfo,
  );
  return Win32Result(value: result_.value.u32, error: result_.error);
}

/// Sets the last-error code for the calling thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/errhandlingapi/nf-errhandlingapi-setlasterror>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
void SetLastError(WIN32_ERROR dwErrCode) => _SetLastError(dwErrCode);

@Native<Void Function(Uint32)>(symbol: 'SetLastError')
external void _SetLastError(int dwErrCode);

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
Win32Result<bool> SetNamedPipeHandleState(
  HANDLE hNamedPipe,
  Pointer<Uint32>? lpMode,
  Pointer<Uint32>? lpMaxCollectionCount,
  Pointer<Uint32>? lpCollectDataTimeout,
) {
  final result_ = SetNamedPipeHandleState_Wrapper(
    hNamedPipe,
    lpMode ?? nullptr,
    lpMaxCollectionCount ?? nullptr,
    lpCollectDataTimeout ?? nullptr,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Sets a processor affinity mask for the threads of the specified process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-setprocessaffinitymask>.
///
/// {@category kernel32}
Win32Result<bool> SetProcessAffinityMask(
  HANDLE hProcess,
  int dwProcessAffinityMask,
) {
  final result_ = SetProcessAffinityMask_Wrapper(
    hProcess,
    dwProcessAffinityMask,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Disables or enables the ability of the system to temporarily boost the
/// priority of the threads of the specified process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-setprocesspriorityboost>.
///
/// {@category kernel32}
Win32Result<bool> SetProcessPriorityBoost(
  HANDLE hProcess,
  bool bDisablePriorityBoost,
) {
  final result_ = SetProcessPriorityBoost_Wrapper(
    hProcess,
    bDisablePriorityBoost ? TRUE : FALSE,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Sets the minimum and maximum working set sizes for the specified process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/memoryapi/nf-memoryapi-setprocessworkingsetsize>.
///
/// {@category kernel32}
Win32Result<bool> SetProcessWorkingSetSize(
  HANDLE hProcess,
  int dwMinimumWorkingSetSize,
  int dwMaximumWorkingSetSize,
) {
  final result_ = SetProcessWorkingSetSize_Wrapper(
    hProcess,
    dwMinimumWorkingSetSize,
    dwMaximumWorkingSetSize,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Sets the handle for the specified standard device (standard input, standard
/// output, or standard error).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/setstdhandle>.
///
/// {@category kernel32}
Win32Result<bool> SetStdHandle(STD_HANDLE nStdHandle, HANDLE hHandle) {
  final result_ = SetStdHandle_Wrapper(nStdHandle, hHandle);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Sets a processor affinity mask for the specified thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-setthreadaffinitymask>.
///
/// {@category kernel32}
Win32Result<int> SetThreadAffinityMask(
  HANDLE hThread,
  int dwThreadAffinityMask,
) {
  final result_ = SetThreadAffinityMask_Wrapper(hThread, dwThreadAffinityMask);
  return Win32Result(value: result_.value.i64, error: result_.error);
}

/// Controls whether the system will handle the specified types of serious
/// errors or whether the calling thread will handle them.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/errhandlingapi/nf-errhandlingapi-setthreaderrormode>.
///
/// {@category kernel32}
Win32Result<bool> SetThreadErrorMode(
  THREAD_ERROR_MODE dwNewMode,
  Pointer<Uint32>? lpOldMode,
) {
  final result_ = SetThreadErrorMode_Wrapper(dwNewMode, lpOldMode ?? nullptr);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

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
Win32Result<int> SetThreadUILanguage(int langId) {
  final result_ = SetThreadUILanguage_Wrapper(langId);
  return Win32Result(value: result_.value.u16, error: result_.error);
}

/// Initializes the communications parameters for a specified communications
/// device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-setupcomm>.
///
/// {@category kernel32}
Win32Result<bool> SetupComm(HANDLE hFile, int dwInQueue, int dwOutQueue) {
  final result_ = SetupComm_Wrapper(hFile, dwInQueue, dwOutQueue);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Sets the label of a file system volume.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-setvolumelabelw>.
///
/// {@category kernel32}
Win32Result<bool> SetVolumeLabel(PCWSTR? lpRootPathName, PCWSTR? lpVolumeName) {
  final result_ = SetVolumeLabelW_Wrapper(
    lpRootPathName ?? nullptr,
    lpVolumeName ?? nullptr,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves the size, in bytes, of the specified resource.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-sizeofresource>.
///
/// {@category kernel32}
Win32Result<int> SizeofResource(HMODULE? hModule, HRSRC hResInfo) {
  final result_ = SizeofResource_Wrapper(hModule ?? nullptr, hResInfo);
  return Win32Result(value: result_.value.u32, error: result_.error);
}

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

@Native<Uint32 Function(Uint32, Int32)>(symbol: 'SleepEx')
external int _SleepEx(int dwMilliseconds, int bAlertable);

/// Converts a system time to file time format.
///
/// System time is based on Coordinated Universal Time (UTC).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/timezoneapi/nf-timezoneapi-systemtimetofiletime>.
///
/// {@category kernel32}
Win32Result<bool> SystemTimeToFileTime(
  Pointer<SYSTEMTIME> lpSystemTime,
  Pointer<FILETIME> lpFileTime,
) {
  final result_ = SystemTimeToFileTime_Wrapper(lpSystemTime, lpFileTime);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Terminates all processes currently associated with the job.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/jobapi2/nf-jobapi2-terminatejobobject>.
///
/// {@category kernel32}
Win32Result<bool> TerminateJobObject(HANDLE hJob, int uExitCode) {
  final result_ = TerminateJobObject_Wrapper(hJob, uExitCode);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Terminates the specified process and all of its threads.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-terminateprocess>.
///
/// {@category kernel32}
Win32Result<bool> TerminateProcess(HANDLE hProcess, int uExitCode) {
  final result_ = TerminateProcess_Wrapper(hProcess, uExitCode);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Terminates a thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-terminatethread>.
///
/// {@category kernel32}
Win32Result<bool> TerminateThread(HANDLE hThread, int dwExitCode) {
  final result_ = TerminateThread_Wrapper(hThread, dwExitCode);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Combines the functions that write a message to and read a message from the
/// specified named pipe into a single operation.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/namedpipeapi/nf-namedpipeapi-transactnamedpipe>.
///
/// {@category kernel32}
Win32Result<bool> TransactNamedPipe(
  HANDLE hNamedPipe,
  Pointer? lpInBuffer,
  int nInBufferSize,
  Pointer? lpOutBuffer,
  int nOutBufferSize,
  Pointer<Uint32> lpBytesRead,
  Pointer<OVERLAPPED>? lpOverlapped,
) {
  final result_ = TransactNamedPipe_Wrapper(
    hNamedPipe,
    lpInBuffer ?? nullptr,
    nInBufferSize,
    lpOutBuffer ?? nullptr,
    nOutBufferSize,
    lpBytesRead,
    lpOverlapped ?? nullptr,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Transmits a specified character ahead of any pending data in the output
/// buffer of the specified communications device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-transmitcommchar>.
///
/// {@category kernel32}
Win32Result<bool> TransmitCommChar(HANDLE hFile, CHAR cChar) {
  final result_ = TransmitCommChar_Wrapper(hFile, cChar);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Unlocks a region in an open file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-unlockfile>.
///
/// {@category kernel32}
Win32Result<bool> UnlockFile(
  HANDLE hFile,
  int dwFileOffsetLow,
  int dwFileOffsetHigh,
  int nNumberOfBytesToUnlockLow,
  int nNumberOfBytesToUnlockHigh,
) {
  final result_ = UnlockFile_Wrapper(
    hFile,
    dwFileOffsetLow,
    dwFileOffsetHigh,
    nNumberOfBytesToUnlockLow,
    nNumberOfBytesToUnlockHigh,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Unlocks a region in the specified file.
///
/// This function can operate either synchronously or asynchronously.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-unlockfileex>.
///
/// {@category kernel32}
Win32Result<bool> UnlockFileEx(
  HANDLE hFile,
  int nNumberOfBytesToUnlockLow,
  int nNumberOfBytesToUnlockHigh,
  Pointer<OVERLAPPED> lpOverlapped,
) {
  final result_ = UnlockFileEx_Wrapper(
    hFile,
    NULL,
    nNumberOfBytesToUnlockLow,
    nNumberOfBytesToUnlockHigh,
    lpOverlapped,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Updates the specified attribute in a list of attributes for process and
/// thread creation.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-updateprocthreadattribute>.
///
/// {@category kernel32}
Win32Result<bool> UpdateProcThreadAttribute(
  LPPROC_THREAD_ATTRIBUTE_LIST lpAttributeList,
  int dwFlags,
  int attribute,
  Pointer? lpValue,
  int cbSize,
  Pointer? lpPreviousValue,
  Pointer<IntPtr>? lpReturnSize,
) {
  final result_ = UpdateProcThreadAttribute_Wrapper(
    lpAttributeList,
    dwFlags,
    attribute,
    lpValue ?? nullptr,
    cbSize,
    lpPreviousValue ?? nullptr,
    lpReturnSize ?? nullptr,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Adds, deletes, or replaces a resource in a portable executable (PE) file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-updateresourcew>.
///
/// {@category kernel32}
Win32Result<bool> UpdateResource(
  HANDLE hUpdate,
  PCWSTR lpType,
  PCWSTR lpName,
  int wLanguage,
  Pointer? lpData,
  int cb,
) {
  final result_ = UpdateResourceW_Wrapper(
    hUpdate,
    lpType,
    lpName,
    wLanguage,
    lpData ?? nullptr,
    cb,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Compares a set of operating system version requirements to the corresponding
/// values for the currently running version of the system.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-verifyversioninfow>.
///
/// {@category kernel32}
Win32Result<bool> VerifyVersionInfo(
  Pointer<OSVERSIONINFOEX> lpVersionInformation,
  VER_FLAGS dwTypeMask,
  int dwlConditionMask,
) {
  final result_ = VerifyVersionInfoW_Wrapper(
    lpVersionInformation,
    dwTypeMask,
    dwlConditionMask,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

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

@Native<Uint32 Function(Uint32, Pointer<Utf16>, Uint32)>(
  symbol: 'VerLanguageNameW',
)
external int _VerLanguageName(int wLang, Pointer<Utf16> szLang, int cchLang);

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
Win32Result<Pointer> VirtualAlloc(
  Pointer? lpAddress,
  int dwSize,
  VIRTUAL_ALLOCATION_TYPE flAllocationType,
  PAGE_PROTECTION_FLAGS flProtect,
) {
  final result_ = VirtualAlloc_Wrapper(
    lpAddress ?? nullptr,
    dwSize,
    flAllocationType,
    flProtect,
  );
  return Win32Result(value: result_.value.ptr, error: result_.error);
}

/// Reserves, commits, or changes the state of a region of memory within the
/// virtual address space of a specified process.
///
/// The function initializes the memory it allocates to zero.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/memoryapi/nf-memoryapi-virtualallocex>.
///
/// {@category kernel32}
Win32Result<Pointer> VirtualAllocEx(
  HANDLE hProcess,
  Pointer? lpAddress,
  int dwSize,
  VIRTUAL_ALLOCATION_TYPE flAllocationType,
  PAGE_PROTECTION_FLAGS flProtect,
) {
  final result_ = VirtualAllocEx_Wrapper(
    hProcess,
    lpAddress ?? nullptr,
    dwSize,
    flAllocationType,
    flProtect,
  );
  return Win32Result(value: result_.value.ptr, error: result_.error);
}

/// Releases, decommits, or releases and decommits a region of pages within the
/// virtual address space of the calling process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/memoryapi/nf-memoryapi-virtualfree>.
///
/// {@category kernel32}
Win32Result<bool> VirtualFree(
  Pointer lpAddress,
  int dwSize,
  VIRTUAL_FREE_TYPE dwFreeType,
) {
  final result_ = VirtualFree_Wrapper(lpAddress, dwSize, dwFreeType);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Releases, decommits, or releases and decommits a region of memory within the
/// virtual address space of a specified process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/memoryapi/nf-memoryapi-virtualfreeex>.
///
/// {@category kernel32}
Win32Result<bool> VirtualFreeEx(
  HANDLE hProcess,
  Pointer lpAddress,
  int dwSize,
  VIRTUAL_FREE_TYPE dwFreeType,
) {
  final result_ = VirtualFreeEx_Wrapper(
    hProcess,
    lpAddress,
    dwSize,
    dwFreeType,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Locks the specified region of the process's virtual address space into
/// physical memory, ensuring that subsequent access to the region will not
/// incur a page fault.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/memoryapi/nf-memoryapi-virtuallock>.
///
/// {@category kernel32}
Win32Result<bool> VirtualLock(Pointer lpAddress, int dwSize) {
  final result_ = VirtualLock_Wrapper(lpAddress, dwSize);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Changes the protection on a region of committed pages in the virtual address
/// space of the calling process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/memoryapi/nf-memoryapi-virtualprotect>.
///
/// {@category kernel32}
Win32Result<bool> VirtualProtect(
  Pointer lpAddress,
  int dwSize,
  PAGE_PROTECTION_FLAGS flNewProtect,
  Pointer<Uint32> lpflOldProtect,
) {
  final result_ = VirtualProtect_Wrapper(
    lpAddress,
    dwSize,
    flNewProtect,
    lpflOldProtect,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Changes the protection on a region of committed pages in the virtual address
/// space of a specified process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/memoryapi/nf-memoryapi-virtualprotectex>.
///
/// {@category kernel32}
Win32Result<bool> VirtualProtectEx(
  HANDLE hProcess,
  Pointer lpAddress,
  int dwSize,
  PAGE_PROTECTION_FLAGS flNewProtect,
  Pointer<Uint32> lpflOldProtect,
) {
  final result_ = VirtualProtectEx_Wrapper(
    hProcess,
    lpAddress,
    dwSize,
    flNewProtect,
    lpflOldProtect,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves information about a range of pages in the virtual address space of
/// the calling process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/memoryapi/nf-memoryapi-virtualquery>.
///
/// {@category kernel32}
Win32Result<int> VirtualQuery(
  Pointer? lpAddress,
  Pointer<MEMORY_BASIC_INFORMATION> lpBuffer,
  int dwLength,
) {
  final result_ = VirtualQuery_Wrapper(
    lpAddress ?? nullptr,
    lpBuffer,
    dwLength,
  );
  return Win32Result(value: result_.value.i64, error: result_.error);
}

/// Retrieves information about a range of pages within the virtual address
/// space of a specified process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/memoryapi/nf-memoryapi-virtualqueryex>.
///
/// {@category kernel32}
Win32Result<int> VirtualQueryEx(
  HANDLE hProcess,
  Pointer? lpAddress,
  Pointer<MEMORY_BASIC_INFORMATION> lpBuffer,
  int dwLength,
) {
  final result_ = VirtualQueryEx_Wrapper(
    hProcess,
    lpAddress ?? nullptr,
    lpBuffer,
    dwLength,
  );
  return Win32Result(value: result_.value.i64, error: result_.error);
}

/// Unlocks a specified range of pages in the virtual address space of a
/// process, enabling the system to swap the pages out to the paging file if
/// necessary.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/memoryapi/nf-memoryapi-virtualunlock>.
///
/// {@category kernel32}
Win32Result<bool> VirtualUnlock(Pointer lpAddress, int dwSize) {
  final result_ = VirtualUnlock_Wrapper(lpAddress, dwSize);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Waits for an event to occur for a specified communications device.
///
/// The set of events that are monitored by this function is contained in the
/// event mask associated with the device handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-waitcommevent>.
///
/// {@category kernel32}
Win32Result<bool> WaitCommEvent(
  HANDLE hFile,
  Pointer<Uint32> lpEvtMask,
  Pointer<OVERLAPPED>? lpOverlapped,
) {
  final result_ = WaitCommEvent_Wrapper(
    hFile,
    lpEvtMask,
    lpOverlapped ?? nullptr,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Waits until one or all of the specified objects are in the signaled state or
/// the time-out interval elapses.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/synchapi/nf-synchapi-waitformultipleobjects>.
///
/// {@category kernel32}
Win32Result<WAIT_EVENT> WaitForMultipleObjects(
  int nCount,
  Pointer<Pointer> lpHandles,
  bool bWaitAll,
  int dwMilliseconds,
) {
  final result_ = WaitForMultipleObjects_Wrapper(
    nCount,
    lpHandles,
    bWaitAll ? TRUE : FALSE,
    dwMilliseconds,
  );
  return Win32Result(
    value: WAIT_EVENT(result_.value.u32),
    error: result_.error,
  );
}

/// Waits until the specified object is in the signaled state or the time-out
/// interval elapses.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/synchapi/nf-synchapi-waitforsingleobject>.
///
/// {@category kernel32}
Win32Result<WAIT_EVENT> WaitForSingleObject(
  HANDLE hHandle,
  int dwMilliseconds,
) {
  final result_ = WaitForSingleObject_Wrapper(hHandle, dwMilliseconds);
  return Win32Result(
    value: WAIT_EVENT(result_.value.u32),
    error: result_.error,
  );
}

/// Maps a UTF-16 (wide character) string to a new character string.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/stringapiset/nf-stringapiset-widechartomultibyte>.
///
/// {@category kernel32}
Win32Result<int> WideCharToMultiByte(
  int codePage,
  int dwFlags,
  PCWSTR lpWideCharStr,
  int cchWideChar,
  PSTR? lpMultiByteStr,
  int cbMultiByte,
  PCSTR? lpDefaultChar,
  Pointer<Int32>? lpUsedDefaultChar,
) {
  final result_ = WideCharToMultiByte_Wrapper(
    codePage,
    dwFlags,
    lpWideCharStr,
    cchWideChar,
    lpMultiByteStr ?? nullptr,
    cbMultiByte,
    lpDefaultChar ?? nullptr,
    lpUsedDefaultChar ?? nullptr,
  );
  return Win32Result(value: result_.value.i32, error: result_.error);
}

/// Suspends the specified WOW64 thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-wow64suspendthread>.
///
/// {@category kernel32}
Win32Result<int> Wow64SuspendThread(HANDLE hThread) {
  final result_ = Wow64SuspendThread_Wrapper(hThread);
  return Win32Result(value: result_.value.u32, error: result_.error);
}

/// Writes a character string to a console screen buffer beginning at the
/// current cursor location.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/writeconsole>.
///
/// {@category kernel32}
Win32Result<bool> WriteConsole(
  HANDLE hConsoleOutput,
  PCWSTR lpBuffer,
  int nNumberOfCharsToWrite,
  Pointer<Uint32>? lpNumberOfCharsWritten,
) {
  final result_ = WriteConsoleW_Wrapper(
    hConsoleOutput,
    lpBuffer,
    nNumberOfCharsToWrite,
    lpNumberOfCharsWritten ?? nullptr,
    nullptr,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Writes data to the specified file or input/output (I/O) device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-writefile>.
///
/// {@category kernel32}
Win32Result<bool> WriteFile(
  HANDLE hFile,
  Pointer<Uint8>? lpBuffer,
  int nNumberOfBytesToWrite,
  Pointer<Uint32>? lpNumberOfBytesWritten,
  Pointer<OVERLAPPED>? lpOverlapped,
) {
  final result_ = WriteFile_Wrapper(
    hFile,
    lpBuffer ?? nullptr,
    nNumberOfBytesToWrite,
    lpNumberOfBytesWritten ?? nullptr,
    lpOverlapped ?? nullptr,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

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
Win32Result<bool> WriteFileEx(
  HANDLE hFile,
  Pointer<Uint8>? lpBuffer,
  int nNumberOfBytesToWrite,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<NativeFunction<LPOVERLAPPED_COMPLETION_ROUTINE>> lpCompletionRoutine,
) {
  final result_ = WriteFileEx_Wrapper(
    hFile,
    lpBuffer ?? nullptr,
    nNumberOfBytesToWrite,
    lpOverlapped,
    lpCompletionRoutine,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves data from an array of buffers and writes the data to a file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-writefilegather>.
///
/// {@category kernel32}
Win32Result<bool> WriteFileGather(
  HANDLE hFile,
  Pointer<FILE_SEGMENT_ELEMENT> aSegmentArray,
  int nNumberOfBytesToWrite,
  Pointer<OVERLAPPED> lpOverlapped,
) {
  final result_ = WriteFileGather_Wrapper(
    hFile,
    aSegmentArray,
    nNumberOfBytesToWrite,
    nullptr,
    lpOverlapped,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Writes data to an area of memory in a specified process.
///
/// The entire area to be written to must be accessible or the operation fails.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/memoryapi/nf-memoryapi-writeprocessmemory>.
///
/// {@category kernel32}
Win32Result<bool> WriteProcessMemory(
  HANDLE hProcess,
  Pointer lpBaseAddress,
  Pointer lpBuffer,
  int nSize,
  Pointer<IntPtr>? lpNumberOfBytesWritten,
) {
  final result_ = WriteProcessMemory_Wrapper(
    hProcess,
    lpBaseAddress,
    lpBuffer,
    nSize,
    lpNumberOfBytesWritten ?? nullptr,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}
