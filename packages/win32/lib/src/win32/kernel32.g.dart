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

final _kernel32 = DynamicLibrary.open('kernel32.dll');

/// Activates the specified activation context.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-activateactctx>.
///
/// {@category kernel32}
Win32Result<bool> ActivateActCtx(HANDLE? hActCtx, Pointer<IntPtr> lpCookie) {
  resolveGetLastError();
  final result_ = _ActivateActCtx(hActCtx ?? nullptr, lpCookie);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _ActivateActCtx = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<IntPtr>),
      int Function(Pointer, Pointer<IntPtr>)
    >('ActivateActCtx');

/// Adds a directory to the process DLL search path.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-adddlldirectory>.
///
/// {@category kernel32}
Win32Result<Pointer> AddDllDirectory(PCWSTR newDirectory) {
  resolveGetLastError();
  final result_ = _AddDllDirectory(newDirectory);
  return .new(value: result_, error: GetLastError());
}

final _AddDllDirectory = _kernel32
    .lookupFunction<
      Pointer Function(Pointer<Utf16>),
      Pointer Function(Pointer<Utf16>)
    >('AddDllDirectory');

/// Increments the reference count of the specified activation context.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-addrefactctx>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
void AddRefActCtx(HANDLE hActCtx) => _AddRefActCtx(hActCtx);

final _AddRefActCtx = _kernel32
    .lookupFunction<Void Function(Pointer), void Function(Pointer)>(
      'AddRefActCtx',
    );

/// Allocates a new console for the calling process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/allocconsole>.
///
/// {@category kernel32}
Win32Result<bool> AllocConsole() {
  resolveGetLastError();
  final result_ = _AllocConsole();
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _AllocConsole = _kernel32
    .lookupFunction<Int32 Function(), int Function()>('AllocConsole');

/// Determines whether the file I/O functions are using the ANSI or OEM
/// character set code page.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-arefileapisansi>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool AreFileApisANSI() => _AreFileApisANSI() != FALSE;

final _AreFileApisANSI = _kernel32
    .lookupFunction<Int32 Function(), int Function()>('AreFileApisANSI');

/// Assigns a process to an existing job object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/jobapi2/nf-jobapi2-assignprocesstojobobject>.
///
/// {@category kernel32}
Win32Result<bool> AssignProcessToJobObject(HANDLE hJob, HANDLE hProcess) {
  resolveGetLastError();
  final result_ = _AssignProcessToJobObject(hJob, hProcess);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _AssignProcessToJobObject = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer),
      int Function(Pointer, Pointer)
    >('AssignProcessToJobObject');

/// Attaches the calling process to the console of the specified process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/attachconsole>.
///
/// {@category kernel32}
Win32Result<bool> AttachConsole(int dwProcessId) {
  resolveGetLastError();
  final result_ = _AttachConsole(dwProcessId);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _AttachConsole = _kernel32
    .lookupFunction<Int32 Function(Uint32), int Function(int)>('AttachConsole');

/// Generates simple tones on the speaker.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/utilapiset/nf-utilapiset-beep>.
///
/// {@category kernel32}
Win32Result<bool> Beep(int dwFreq, int dwDuration) {
  resolveGetLastError();
  final result_ = _Beep(dwFreq, dwDuration);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _Beep = _kernel32
    .lookupFunction<Int32 Function(Uint32, Uint32), int Function(int, int)>(
      'Beep',
    );

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
  resolveGetLastError();
  final result_ = _BeginUpdateResource(
    pFileName,
    bDeleteExistingResources ? TRUE : FALSE,
  );
  return .new(value: .new(result_), error: GetLastError());
}

final _BeginUpdateResource = _kernel32
    .lookupFunction<
      Pointer Function(Pointer<Utf16>, Int32),
      Pointer Function(Pointer<Utf16>, int)
    >('BeginUpdateResourceW');

/// Fills a specified DCB structure with values specified in a device-control
/// string.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-buildcommdcbw>.
///
/// {@category kernel32}
Win32Result<bool> BuildCommDCB(PCWSTR lpDef, Pointer<DCB> lpDCB) {
  resolveGetLastError();
  final result_ = _BuildCommDCB(lpDef, lpDCB);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _BuildCommDCB = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<DCB>),
      int Function(Pointer<Utf16>, Pointer<DCB>)
    >('BuildCommDCBW');

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
  resolveGetLastError();
  final result_ = _BuildCommDCBAndTimeouts(lpDef, lpDCB, lpCommTimeouts);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _BuildCommDCBAndTimeouts = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<DCB>, Pointer<COMMTIMEOUTS>),
      int Function(Pointer<Utf16>, Pointer<DCB>, Pointer<COMMTIMEOUTS>)
    >('BuildCommDCBAndTimeoutsW');

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

/// Cancels all pending input and output (I/O) operations that are issued by the
/// calling thread for the specified file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/ioapiset/nf-ioapiset-cancelio>.
///
/// {@category kernel32}
Win32Result<bool> CancelIo(HANDLE hFile) {
  resolveGetLastError();
  final result_ = _CancelIo(hFile);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _CancelIo = _kernel32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>('CancelIo');

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
  resolveGetLastError();
  final result_ = _CancelIoEx(hFile, lpOverlapped ?? nullptr);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _CancelIoEx = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<OVERLAPPED>),
      int Function(Pointer, Pointer<OVERLAPPED>)
    >('CancelIoEx');

/// Marks pending synchronous I/O operations that are issued by the specified
/// thread as canceled.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/ioapiset/nf-ioapiset-cancelsynchronousio>.
///
/// {@category kernel32}
Win32Result<bool> CancelSynchronousIo(HANDLE hThread) {
  resolveGetLastError();
  final result_ = _CancelSynchronousIo(hThread);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _CancelSynchronousIo = _kernel32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'CancelSynchronousIo',
    );

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
  resolveGetLastError();
  final result_ = _CheckRemoteDebuggerPresent(hProcess, pbDebuggerPresent);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _CheckRemoteDebuggerPresent = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Int32>),
      int Function(Pointer, Pointer<Int32>)
    >('CheckRemoteDebuggerPresent');

/// Restores character transmission for a specified communications device and
/// places the transmission line in a nonbreak state.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-clearcommbreak>.
///
/// {@category kernel32}
Win32Result<bool> ClearCommBreak(HANDLE hFile) {
  resolveGetLastError();
  final result_ = _ClearCommBreak(hFile);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _ClearCommBreak = _kernel32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'ClearCommBreak',
    );

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
  resolveGetLastError();
  final result_ = _ClearCommError(
    hFile,
    lpErrors ?? nullptr,
    lpStat ?? nullptr,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _ClearCommError = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Uint32>, Pointer<COMSTAT>),
      int Function(Pointer, Pointer<Uint32>, Pointer<COMSTAT>)
    >('ClearCommError');

/// Closes an open object handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/handleapi/nf-handleapi-closehandle>.
///
/// {@category kernel32}
Win32Result<bool> CloseHandle(HANDLE hObject) {
  resolveGetLastError();
  final result_ = _CloseHandle(hObject);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _CloseHandle = _kernel32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'CloseHandle',
    );

/// Closes a pseudoconsole from the given handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/closepseudoconsole>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
void ClosePseudoConsole(HPCON hPC) => _ClosePseudoConsole(hPC);

final _ClosePseudoConsole = _kernel32
    .lookupFunction<Void Function(IntPtr), void Function(int)>(
      'ClosePseudoConsole',
    );

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
  resolveGetLastError();
  final result_ = _CommConfigDialog(lpszName, hWnd ?? nullptr, lpCC);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _CommConfigDialog = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer, Pointer<COMMCONFIG>),
      int Function(Pointer<Utf16>, Pointer, Pointer<COMMCONFIG>)
    >('CommConfigDialogW');

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
  resolveGetLastError();
  final result_ = _ConnectNamedPipe(hNamedPipe, lpOverlapped ?? nullptr);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _ConnectNamedPipe = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<OVERLAPPED>),
      int Function(Pointer, Pointer<OVERLAPPED>)
    >('ConnectNamedPipe');

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
  resolveGetLastError();
  final result_ = _ContinueDebugEvent(
    dwProcessId,
    dwThreadId,
    dwContinueStatus,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _ContinueDebugEvent = _kernel32
    .lookupFunction<
      Int32 Function(Uint32, Uint32, Int32),
      int Function(int, int, int)
    >('ContinueDebugEvent');

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
  resolveGetLastError();
  final result_ = _CopyFile(
    lpExistingFileName,
    lpNewFileName,
    bFailIfExists ? TRUE : FALSE,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _CopyFile = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<Utf16>, Int32),
      int Function(Pointer<Utf16>, Pointer<Utf16>, int)
    >('CopyFileW');

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
  resolveGetLastError();
  final result_ = _CopyFileEx(
    lpExistingFileName,
    lpNewFileName,
    lpProgressRoutine ?? nullptr,
    lpData ?? nullptr,
    pbCancel ?? nullptr,
    dwCopyFlags,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

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

/// Creates an activation context.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-createactctxw>.
///
/// {@category kernel32}
Win32Result<HANDLE> CreateActCtx(Pointer<ACTCTX> pActCtx) {
  resolveGetLastError();
  final result_ = _CreateActCtx(pActCtx);
  return .new(value: .new(result_), error: GetLastError());
}

final _CreateActCtx = _kernel32
    .lookupFunction<
      Pointer Function(Pointer<ACTCTX>),
      Pointer Function(Pointer<ACTCTX>)
    >('CreateActCtxW');

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
  resolveGetLastError();
  final result_ = _CreateConsoleScreenBuffer(
    dwDesiredAccess,
    dwShareMode,
    lpSecurityAttributes ?? nullptr,
    dwFlags,
    nullptr,
  );
  return .new(value: .new(result_), error: GetLastError());
}

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
  resolveGetLastError();
  final result_ = _CreateDirectory(lpPathName, lpSecurityAttributes ?? nullptr);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _CreateDirectory = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<SECURITY_ATTRIBUTES>),
      int Function(Pointer<Utf16>, Pointer<SECURITY_ATTRIBUTES>)
    >('CreateDirectoryW');

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
  resolveGetLastError();
  final result_ = _CreateEvent(
    lpEventAttributes ?? nullptr,
    bManualReset ? TRUE : FALSE,
    bInitialState ? TRUE : FALSE,
    lpName ?? nullptr,
  );
  return .new(value: .new(result_), error: GetLastError());
}

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
  resolveGetLastError();
  final result_ = _CreateEventEx(
    lpEventAttributes ?? nullptr,
    lpName ?? nullptr,
    dwFlags,
    dwDesiredAccess,
  );
  return .new(value: .new(result_), error: GetLastError());
}

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
  resolveGetLastError();
  final result_ = _CreateFile(
    lpFileName,
    dwDesiredAccess,
    dwShareMode,
    lpSecurityAttributes ?? nullptr,
    dwCreationDisposition,
    dwFlagsAndAttributes,
    hTemplateFile ?? nullptr,
  );
  return .new(value: .new(result_), error: GetLastError());
}

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
  resolveGetLastError();
  final result_ = _CreateFile2(
    lpFileName,
    dwDesiredAccess,
    dwShareMode,
    dwCreationDisposition,
    pCreateExParams ?? nullptr,
  );
  return .new(value: .new(result_), error: GetLastError());
}

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
  resolveGetLastError();
  final result_ = _CreateIoCompletionPort(
    fileHandle,
    existingCompletionPort ?? nullptr,
    completionKey,
    numberOfConcurrentThreads,
  );
  return .new(value: .new(result_), error: GetLastError());
}

final _CreateIoCompletionPort = _kernel32
    .lookupFunction<
      Pointer Function(Pointer, Pointer, IntPtr, Uint32),
      Pointer Function(Pointer, Pointer, int, int)
    >('CreateIoCompletionPort');

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
  resolveGetLastError();
  final result_ = _CreateJobObject(
    lpJobAttributes ?? nullptr,
    lpName ?? nullptr,
  );
  return .new(value: .new(result_), error: GetLastError());
}

final _CreateJobObject = _kernel32
    .lookupFunction<
      Pointer Function(Pointer<SECURITY_ATTRIBUTES>, Pointer<Utf16>),
      Pointer Function(Pointer<SECURITY_ATTRIBUTES>, Pointer<Utf16>)
    >('CreateJobObjectW');

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
  resolveGetLastError();
  final result_ = _CreatePipe(
    hReadPipe,
    hWritePipe,
    lpPipeAttributes ?? nullptr,
    nSize,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

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
  resolveGetLastError();
  final result_ = _CreateProcess(
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
  return .new(value: result_ != FALSE, error: GetLastError());
}

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
  return .new(result$);
}

final _CreatePseudoConsole = _kernel32
    .lookupFunction<
      Int32 Function(COORD, Pointer, Pointer, Uint32, Pointer<IntPtr>),
      int Function(COORD, Pointer, Pointer, int, Pointer<IntPtr>)
    >('CreatePseudoConsole');

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
  resolveGetLastError();
  final result_ = _CreateRemoteThread(
    hProcess,
    lpThreadAttributes ?? nullptr,
    dwStackSize,
    lpStartAddress,
    lpParameter ?? nullptr,
    dwCreationFlags,
    lpThreadId ?? nullptr,
  );
  return .new(value: .new(result_), error: GetLastError());
}

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
  resolveGetLastError();
  final result_ = _CreateRemoteThreadEx(
    hProcess,
    lpThreadAttributes ?? nullptr,
    dwStackSize,
    lpStartAddress,
    lpParameter ?? nullptr,
    dwCreationFlags,
    lpAttributeList ?? nullptr,
    lpThreadId ?? nullptr,
  );
  return .new(value: .new(result_), error: GetLastError());
}

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
  resolveGetLastError();
  final result_ = _CreateSymbolicLink(
    lpSymlinkFileName,
    lpTargetFileName,
    dwFlags,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _CreateSymbolicLink = _kernel32
    .lookupFunction<
      Uint8 Function(Pointer<Utf16>, Pointer<Utf16>, Uint32),
      int Function(Pointer<Utf16>, Pointer<Utf16>, int)
    >('CreateSymbolicLinkW');

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
  resolveGetLastError();
  final result_ = _CreateThread(
    lpThreadAttributes ?? nullptr,
    dwStackSize,
    lpStartAddress,
    lpParameter ?? nullptr,
    dwCreationFlags,
    lpThreadId ?? nullptr,
  );
  return .new(value: .new(result_), error: GetLastError());
}

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

/// Deactivates the activation context corresponding to the specified cookie.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-deactivateactctx>.
///
/// {@category kernel32}
Win32Result<bool> DeactivateActCtx(int dwFlags, int ulCookie) {
  resolveGetLastError();
  final result_ = _DeactivateActCtx(dwFlags, ulCookie);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _DeactivateActCtx = _kernel32
    .lookupFunction<Int32 Function(Uint32, IntPtr), int Function(int, int)>(
      'DeactivateActCtx',
    );

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

final _DebugBreak = _kernel32.lookupFunction<Void Function(), void Function()>(
  'DebugBreak',
);

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
  resolveGetLastError();
  final result_ = _DebugBreakProcess(process);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _DebugBreakProcess = _kernel32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'DebugBreakProcess',
    );

/// Sets the action to be performed when the calling thread exits.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-debugsetprocesskillonexit>.
///
/// {@category kernel32}
Win32Result<bool> DebugSetProcessKillOnExit(bool killOnExit) {
  resolveGetLastError();
  final result_ = _DebugSetProcessKillOnExit(killOnExit ? TRUE : FALSE);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _DebugSetProcessKillOnExit = _kernel32
    .lookupFunction<Int32 Function(Int32), int Function(int)>(
      'DebugSetProcessKillOnExit',
    );

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
  resolveGetLastError();
  final result_ = _DefineDosDevice(
    dwFlags,
    lpDeviceName,
    lpTargetPath ?? nullptr,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _DefineDosDevice = _kernel32
    .lookupFunction<
      Int32 Function(Uint32, Pointer<Utf16>, Pointer<Utf16>),
      int Function(int, Pointer<Utf16>, Pointer<Utf16>)
    >('DefineDosDeviceW');

/// Deletes an existing file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-deletefilew>.
///
/// {@category kernel32}
Win32Result<bool> DeleteFile(PCWSTR lpFileName) {
  resolveGetLastError();
  final result_ = _DeleteFile(lpFileName);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _DeleteFile = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>),
      int Function(Pointer<Utf16>)
    >('DeleteFileW');

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

final _DeleteProcThreadAttributeList = _kernel32
    .lookupFunction<Void Function(Pointer), void Function(Pointer)>(
      'DeleteProcThreadAttributeList',
    );

/// Deletes a drive letter or mounted folder.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-deletevolumemountpointw>.
///
/// {@category kernel32}
Win32Result<bool> DeleteVolumeMountPoint(PCWSTR lpszVolumeMountPoint) {
  resolveGetLastError();
  final result_ = _DeleteVolumeMountPoint(lpszVolumeMountPoint);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _DeleteVolumeMountPoint = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>),
      int Function(Pointer<Utf16>)
    >('DeleteVolumeMountPointW');

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
  resolveGetLastError();
  final result_ = _DeviceIoControl(
    hDevice,
    dwIoControlCode,
    lpInBuffer ?? nullptr,
    nInBufferSize,
    lpOutBuffer ?? nullptr,
    nOutBufferSize,
    lpBytesReturned ?? nullptr,
    lpOverlapped ?? nullptr,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

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

/// Disables the DLL_THREAD_ATTACH and DLL_THREAD_DETACH notifications for the
/// specified dynamic-link library (DLL).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-disablethreadlibrarycalls>.
///
/// {@category kernel32}
Win32Result<bool> DisableThreadLibraryCalls(HMODULE hLibModule) {
  resolveGetLastError();
  final result_ = _DisableThreadLibraryCalls(hLibModule);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _DisableThreadLibraryCalls = _kernel32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'DisableThreadLibraryCalls',
    );

/// Disconnects the server end of a named pipe instance from a client process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/namedpipeapi/nf-namedpipeapi-disconnectnamedpipe>.
///
/// {@category kernel32}
Win32Result<bool> DisconnectNamedPipe(HANDLE hNamedPipe) {
  resolveGetLastError();
  final result_ = _DisconnectNamedPipe(hNamedPipe);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _DisconnectNamedPipe = _kernel32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'DisconnectNamedPipe',
    );

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
  resolveGetLastError();
  final result_ = _DnsHostnameToComputerName(
    hostname,
    computerName ?? nullptr,
    nSize,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _DnsHostnameToComputerName = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<Utf16>, Pointer<Uint32>),
      int Function(Pointer<Utf16>, Pointer<Utf16>, Pointer<Uint32>)
    >('DnsHostnameToComputerNameW');

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
  resolveGetLastError();
  final result_ = _DosDateTimeToFileTime(wFatDate, wFatTime, lpFileTime);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _DosDateTimeToFileTime = _kernel32
    .lookupFunction<
      Int32 Function(Uint16, Uint16, Pointer<FILETIME>),
      int Function(int, int, Pointer<FILETIME>)
    >('DosDateTimeToFileTime');

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
  resolveGetLastError();
  final result_ = _DuplicateHandle(
    hSourceProcessHandle,
    hSourceHandle,
    hTargetProcessHandle,
    lpTargetHandle,
    dwDesiredAccess,
    bInheritHandle ? TRUE : FALSE,
    dwOptions,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

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

/// Commits or discards changes made prior to a call to UpdateResource.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-endupdateresourcew>.
///
/// {@category kernel32}
Win32Result<bool> EndUpdateResource(HANDLE hUpdate, bool fDiscard) {
  resolveGetLastError();
  final result_ = _EndUpdateResource(hUpdate, fDiscard ? TRUE : FALSE);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _EndUpdateResource = _kernel32
    .lookupFunction<Int32 Function(Pointer, Int32), int Function(Pointer, int)>(
      'EndUpdateResourceW',
    );

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
  resolveGetLastError();
  final result_ = _EnumResourceTypes(hModule ?? nullptr, lpEnumFunc, lParam);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _EnumResourceTypes = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<NativeFunction<ENUMRESTYPEPROC>>, IntPtr),
      int Function(Pointer, Pointer<NativeFunction<ENUMRESTYPEPROC>>, int)
    >('EnumResourceTypesW');

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
  resolveGetLastError();
  final result_ = _EnumSystemFirmwareTables(
    firmwareTableProviderSignature,
    pFirmwareTableEnumBuffer ?? nullptr,
    bufferSize,
  );
  return .new(value: result_, error: GetLastError());
}

final _EnumSystemFirmwareTables = _kernel32
    .lookupFunction<
      Uint32 Function(Uint32, Pointer<Uint8>, Uint32),
      int Function(int, Pointer<Uint8>, int)
    >('EnumSystemFirmwareTables');

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
  resolveGetLastError();
  final result_ = _EscapeCommFunction(hFile, dwFunc);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _EscapeCommFunction = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Uint32),
      int Function(Pointer, int)
    >('EscapeCommFunction');

/// Ends the calling process and all its threads.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-exitprocess>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
void ExitProcess(int uExitCode) => _ExitProcess(uExitCode);

final _ExitProcess = _kernel32
    .lookupFunction<Void Function(Uint32), void Function(int)>('ExitProcess');

/// Ends the calling thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-exitthread>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
void ExitThread(int dwExitCode) => _ExitThread(dwExitCode);

final _ExitThread = _kernel32
    .lookupFunction<Void Function(Uint32), void Function(int)>('ExitThread');

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
  resolveGetLastError();
  final result_ = _FileTimeToDosDateTime(lpFileTime, lpFatDate, lpFatTime);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _FileTimeToDosDateTime = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<FILETIME>, Pointer<Uint16>, Pointer<Uint16>),
      int Function(Pointer<FILETIME>, Pointer<Uint16>, Pointer<Uint16>)
    >('FileTimeToDosDateTime');

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
  resolveGetLastError();
  final result_ = _FileTimeToSystemTime(lpFileTime, lpSystemTime);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _FileTimeToSystemTime = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<FILETIME>, Pointer<SYSTEMTIME>),
      int Function(Pointer<FILETIME>, Pointer<SYSTEMTIME>)
    >('FileTimeToSystemTime');

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
  resolveGetLastError();
  final result_ = _FillConsoleOutputAttribute(
    hConsoleOutput,
    wAttribute,
    nLength,
    dwWriteCoord,
    lpNumberOfAttrsWritten,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _FillConsoleOutputAttribute = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Uint16, Uint32, COORD, Pointer<Uint32>),
      int Function(Pointer, int, int, COORD, Pointer<Uint32>)
    >('FillConsoleOutputAttribute');

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
  resolveGetLastError();
  final result_ = _FillConsoleOutputCharacter(
    hConsoleOutput,
    cCharacter,
    nLength,
    dwWriteCoord,
    lpNumberOfCharsWritten,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _FillConsoleOutputCharacter = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Uint16, Uint32, COORD, Pointer<Uint32>),
      int Function(Pointer, int, int, COORD, Pointer<Uint32>)
    >('FillConsoleOutputCharacterW');

/// Closes a file search handle opened by the FindFirstFile, FindFirstFileEx,
/// FindFirstFileNameW, FindFirstFileNameTransactedW, FindFirstFileTransacted,
/// FindFirstStreamTransactedW, or FindFirstStreamW functions.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-findclose>.
///
/// {@category kernel32}
Win32Result<bool> FindClose(HANDLE hFindFile) {
  resolveGetLastError();
  final result_ = _FindClose(hFindFile);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _FindClose = _kernel32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'FindClose',
    );

/// Stops change notification handle monitoring.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-findclosechangenotification>.
///
/// {@category kernel32}
Win32Result<bool> FindCloseChangeNotification(HANDLE hChangeHandle) {
  resolveGetLastError();
  final result_ = _FindCloseChangeNotification(hChangeHandle);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _FindCloseChangeNotification = _kernel32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'FindCloseChangeNotification',
    );

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
  resolveGetLastError();
  final result_ = _FindFirstChangeNotification(
    lpPathName,
    bWatchSubtree ? TRUE : FALSE,
    dwNotifyFilter,
  );
  return .new(value: .new(result_), error: GetLastError());
}

final _FindFirstChangeNotification = _kernel32
    .lookupFunction<
      Pointer Function(Pointer<Utf16>, Int32, Uint32),
      Pointer Function(Pointer<Utf16>, int, int)
    >('FindFirstChangeNotificationW');

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
  resolveGetLastError();
  final result_ = _FindFirstFile(lpFileName, lpFindFileData);
  return .new(value: .new(result_), error: GetLastError());
}

final _FindFirstFile = _kernel32
    .lookupFunction<
      Pointer Function(Pointer<Utf16>, Pointer<WIN32_FIND_DATA>),
      Pointer Function(Pointer<Utf16>, Pointer<WIN32_FIND_DATA>)
    >('FindFirstFileW');

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
  resolveGetLastError();
  final result_ = _FindFirstFileEx(
    lpFileName,
    fInfoLevelId,
    lpFindFileData,
    fSearchOp,
    nullptr,
    dwAdditionalFlags,
  );
  return .new(value: .new(result_), error: GetLastError());
}

final _FindFirstFileEx = _kernel32
    .lookupFunction<
      Pointer Function(Pointer<Utf16>, Int32, Pointer, Int32, Pointer, Uint32),
      Pointer Function(Pointer<Utf16>, int, Pointer, int, Pointer, int)
    >('FindFirstFileExW');

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
  resolveGetLastError();
  final result_ = _FindFirstFileName(
    lpFileName,
    dwFlags,
    stringLength,
    linkName,
  );
  return .new(value: .new(result_), error: GetLastError());
}

final _FindFirstFileName = _kernel32
    .lookupFunction<
      Pointer Function(Pointer<Utf16>, Uint32, Pointer<Uint32>, Pointer<Utf16>),
      Pointer Function(Pointer<Utf16>, int, Pointer<Uint32>, Pointer<Utf16>)
    >('FindFirstFileNameW');

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
  resolveGetLastError();
  final result_ = _FindFirstStream(
    lpFileName,
    infoLevel,
    lpFindStreamData,
    NULL,
  );
  return .new(value: .new(result_), error: GetLastError());
}

final _FindFirstStream = _kernel32
    .lookupFunction<
      Pointer Function(Pointer<Utf16>, Int32, Pointer, Uint32),
      Pointer Function(Pointer<Utf16>, int, Pointer, int)
    >('FindFirstStreamW');

/// Retrieves the name of a volume on a computer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-findfirstvolumew>.
///
/// {@category kernel32}
Win32Result<HANDLE> FindFirstVolume(PWSTR lpszVolumeName, int cchBufferLength) {
  resolveGetLastError();
  final result_ = _FindFirstVolume(lpszVolumeName, cchBufferLength);
  return .new(value: .new(result_), error: GetLastError());
}

final _FindFirstVolume = _kernel32
    .lookupFunction<
      Pointer Function(Pointer<Utf16>, Uint32),
      Pointer Function(Pointer<Utf16>, int)
    >('FindFirstVolumeW');

/// Requests that the operating system signal a change notification handle the
/// next time it detects an appropriate change.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-findnextchangenotification>.
///
/// {@category kernel32}
Win32Result<bool> FindNextChangeNotification(HANDLE hChangeHandle) {
  resolveGetLastError();
  final result_ = _FindNextChangeNotification(hChangeHandle);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _FindNextChangeNotification = _kernel32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'FindNextChangeNotification',
    );

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
  resolveGetLastError();
  final result_ = _FindNextFile(hFindFile, lpFindFileData);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _FindNextFile = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<WIN32_FIND_DATA>),
      int Function(Pointer, Pointer<WIN32_FIND_DATA>)
    >('FindNextFileW');

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
  resolveGetLastError();
  final result_ = _FindNextFileName(hFindStream, stringLength, linkName);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _FindNextFileName = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Uint32>, Pointer<Utf16>),
      int Function(Pointer, Pointer<Uint32>, Pointer<Utf16>)
    >('FindNextFileNameW');

/// Continues a stream search started by a previous call to the FindFirstStreamW
/// function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-findnextstreamw>.
///
/// {@category kernel32}
Win32Result<bool> FindNextStream(HANDLE hFindStream, Pointer lpFindStreamData) {
  resolveGetLastError();
  final result_ = _FindNextStream(hFindStream, lpFindStreamData);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _FindNextStream = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer),
      int Function(Pointer, Pointer)
    >('FindNextStreamW');

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
  resolveGetLastError();
  final result_ = _FindNextVolume(hFindVolume, lpszVolumeName, cchBufferLength);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _FindNextVolume = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Utf16>, Uint32),
      int Function(Pointer, Pointer<Utf16>, int)
    >('FindNextVolumeW');

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
) => .new(
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

final _FindResource = _kernel32
    .lookupFunction<
      Pointer Function(Pointer, Pointer<Utf16>, Pointer<Utf16>),
      Pointer Function(Pointer, Pointer<Utf16>, Pointer<Utf16>)
    >('FindResourceW');

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

final _FindResourceEx = _kernel32
    .lookupFunction<
      Pointer Function(Pointer, Pointer<Utf16>, Pointer<Utf16>, Uint16),
      Pointer Function(Pointer, Pointer<Utf16>, Pointer<Utf16>, int)
    >('FindResourceExW');

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
  resolveGetLastError();
  final result_ = _FindStringOrdinal(
    dwFindStringOrdinalFlags,
    lpStringSource,
    cchSource,
    lpStringValue,
    cchValue,
    bIgnoreCase ? TRUE : FALSE,
  );
  return .new(value: result_, error: GetLastError());
}

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

/// Closes the specified volume search handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-findvolumeclose>.
///
/// {@category kernel32}
Win32Result<bool> FindVolumeClose(HANDLE hFindVolume) {
  resolveGetLastError();
  final result_ = _FindVolumeClose(hFindVolume);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _FindVolumeClose = _kernel32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'FindVolumeClose',
    );

/// Flushes the console input buffer.
///
/// All input records currently in the input buffer are discarded.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/flushconsoleinputbuffer>.
///
/// {@category kernel32}
Win32Result<bool> FlushConsoleInputBuffer(HANDLE hConsoleInput) {
  resolveGetLastError();
  final result_ = _FlushConsoleInputBuffer(hConsoleInput);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _FlushConsoleInputBuffer = _kernel32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'FlushConsoleInputBuffer',
    );

/// Flushes the buffers of a specified file and causes all buffered data to be
/// written to a file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-flushfilebuffers>.
///
/// {@category kernel32}
Win32Result<bool> FlushFileBuffers(HANDLE hFile) {
  resolveGetLastError();
  final result_ = _FlushFileBuffers(hFile);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _FlushFileBuffers = _kernel32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'FlushFileBuffers',
    );

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
  resolveGetLastError();
  final result_ = _FormatMessage(
    dwFlags,
    lpSource ?? nullptr,
    dwMessageId,
    dwLanguageId,
    lpBuffer,
    nSize,
    arguments ?? nullptr,
  );
  return .new(value: result_, error: GetLastError());
}

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

/// Detaches the calling process from its console.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/freeconsole>.
///
/// {@category kernel32}
Win32Result<bool> FreeConsole() {
  resolveGetLastError();
  final result_ = _FreeConsole();
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _FreeConsole = _kernel32.lookupFunction<Int32 Function(), int Function()>(
  'FreeConsole',
);

/// Frees the loaded dynamic-link library (DLL) module and, if necessary,
/// decrements its reference count.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-freelibrary>.
///
/// {@category kernel32}
Win32Result<bool> FreeLibrary(HMODULE hLibModule) {
  resolveGetLastError();
  final result_ = _FreeLibrary(hLibModule);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _FreeLibrary = _kernel32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'FreeLibrary',
    );

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

final _FreeLibraryAndExitThread = _kernel32
    .lookupFunction<
      Void Function(Pointer, Uint32),
      void Function(Pointer, int)
    >('FreeLibraryAndExitThread');

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

final _FreeMemoryJobObject = _kernel32
    .lookupFunction<Void Function(Pointer), void Function(Pointer)>(
      'FreeMemoryJobObject',
    );

/// Returns the number of active processors in a processor group or in the
/// system.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getactiveprocessorcount>.
///
/// {@category kernel32}
Win32Result<int> GetActiveProcessorCount(int groupNumber) {
  resolveGetLastError();
  final result_ = _GetActiveProcessorCount(groupNumber);
  return .new(value: result_, error: GetLastError());
}

final _GetActiveProcessorCount = _kernel32
    .lookupFunction<Uint32 Function(Uint16), int Function(int)>(
      'GetActiveProcessorCount',
    );

/// Returns the number of active processor groups in the system.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getactiveprocessorgroupcount>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GetActiveProcessorGroupCount() => _GetActiveProcessorGroupCount();

final _GetActiveProcessorGroupCount = _kernel32
    .lookupFunction<Uint16 Function(), int Function()>(
      'GetActiveProcessorGroupCount',
    );

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
  resolveGetLastError();
  final result_ = _GetBinaryType(lpApplicationName, lpBinaryType);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetBinaryType = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<Uint32>),
      int Function(Pointer<Utf16>, Pointer<Uint32>)
    >('GetBinaryTypeW');

/// Retrieves the command-line string for the current process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processenv/nf-processenv-getcommandlinew>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
PCWSTR GetCommandLine() => PCWSTR(_GetCommandLine());

final _GetCommandLine = _kernel32
    .lookupFunction<Pointer<Utf16> Function(), Pointer<Utf16> Function()>(
      'GetCommandLineW',
    );

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
  resolveGetLastError();
  final result_ = _GetCommConfig(hCommDev, lpCC ?? nullptr, lpdwSize);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetCommConfig = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<COMMCONFIG>, Pointer<Uint32>),
      int Function(Pointer, Pointer<COMMCONFIG>, Pointer<Uint32>)
    >('GetCommConfig');

/// Retrieves the value of the event mask for a specified communications device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getcommmask>.
///
/// {@category kernel32}
Win32Result<bool> GetCommMask(HANDLE hFile, Pointer<Uint32> lpEvtMask) {
  resolveGetLastError();
  final result_ = _GetCommMask(hFile, lpEvtMask);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetCommMask = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Uint32>),
      int Function(Pointer, Pointer<Uint32>)
    >('GetCommMask');

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
  resolveGetLastError();
  final result_ = _GetCommModemStatus(hFile, lpModemStat);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetCommModemStatus = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Uint32>),
      int Function(Pointer, Pointer<Uint32>)
    >('GetCommModemStatus');

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
  resolveGetLastError();
  final result_ = _GetCommProperties(hFile, lpCommProp);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetCommProperties = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<COMMPROP>),
      int Function(Pointer, Pointer<COMMPROP>)
    >('GetCommProperties');

/// Retrieves the current control settings for a specified communications
/// device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getcommstate>.
///
/// {@category kernel32}
Win32Result<bool> GetCommState(HANDLE hFile, Pointer<DCB> lpDCB) {
  resolveGetLastError();
  final result_ = _GetCommState(hFile, lpDCB);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetCommState = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<DCB>),
      int Function(Pointer, Pointer<DCB>)
    >('GetCommState');

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
  resolveGetLastError();
  final result_ = _GetCommTimeouts(hFile, lpCommTimeouts);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetCommTimeouts = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<COMMTIMEOUTS>),
      int Function(Pointer, Pointer<COMMTIMEOUTS>)
    >('GetCommTimeouts');

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
  resolveGetLastError();
  final result_ = _GetCompressedFileSize(lpFileName, lpFileSizeHigh ?? nullptr);
  return .new(value: result_, error: GetLastError());
}

final _GetCompressedFileSize = _kernel32
    .lookupFunction<
      Uint32 Function(Pointer<Utf16>, Pointer<Uint32>),
      int Function(Pointer<Utf16>, Pointer<Uint32>)
    >('GetCompressedFileSizeW');

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
  resolveGetLastError();
  final result_ = _GetComputerName(lpBuffer ?? nullptr, nSize);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetComputerName = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<Uint32>),
      int Function(Pointer<Utf16>, Pointer<Uint32>)
    >('GetComputerNameW');

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
  resolveGetLastError();
  final result_ = _GetComputerNameEx(nameType, lpBuffer ?? nullptr, nSize);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetComputerNameEx = _kernel32
    .lookupFunction<
      Int32 Function(Int32, Pointer<Utf16>, Pointer<Uint32>),
      int Function(int, Pointer<Utf16>, Pointer<Uint32>)
    >('GetComputerNameExW');

/// Retrieves the input code page used by the console associated with the
/// calling process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/getconsolecp>.
///
/// {@category kernel32}
Win32Result<int> GetConsoleCP() {
  resolveGetLastError();
  final result_ = _GetConsoleCP();
  return .new(value: result_, error: GetLastError());
}

final _GetConsoleCP = _kernel32
    .lookupFunction<Uint32 Function(), int Function()>('GetConsoleCP');

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
  resolveGetLastError();
  final result_ = _GetConsoleCursorInfo(hConsoleOutput, lpConsoleCursorInfo);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetConsoleCursorInfo = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<CONSOLE_CURSOR_INFO>),
      int Function(Pointer, Pointer<CONSOLE_CURSOR_INFO>)
    >('GetConsoleCursorInfo');

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
  resolveGetLastError();
  final result_ = _GetConsoleMode(hConsoleHandle, lpMode);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetConsoleMode = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Uint32>),
      int Function(Pointer, Pointer<Uint32>)
    >('GetConsoleMode');

/// Retrieves the output code page used by the console associated with the
/// calling process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/getconsoleoutputcp>.
///
/// {@category kernel32}
Win32Result<int> GetConsoleOutputCP() {
  resolveGetLastError();
  final result_ = _GetConsoleOutputCP();
  return .new(value: result_, error: GetLastError());
}

final _GetConsoleOutputCP = _kernel32
    .lookupFunction<Uint32 Function(), int Function()>('GetConsoleOutputCP');

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
  resolveGetLastError();
  final result_ = _GetConsoleScreenBufferInfo(
    hConsoleOutput,
    lpConsoleScreenBufferInfo,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetConsoleScreenBufferInfo = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<CONSOLE_SCREEN_BUFFER_INFO>),
      int Function(Pointer, Pointer<CONSOLE_SCREEN_BUFFER_INFO>)
    >('GetConsoleScreenBufferInfo');

/// Retrieves information about the current console selection.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/getconsoleselectioninfo>.
///
/// {@category kernel32}
Win32Result<bool> GetConsoleSelectionInfo(
  Pointer<CONSOLE_SELECTION_INFO> lpConsoleSelectionInfo,
) {
  resolveGetLastError();
  final result_ = _GetConsoleSelectionInfo(lpConsoleSelectionInfo);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetConsoleSelectionInfo = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<CONSOLE_SELECTION_INFO>),
      int Function(Pointer<CONSOLE_SELECTION_INFO>)
    >('GetConsoleSelectionInfo');

/// Retrieves the title and size of the title for the current console window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/getconsoletitle>.
///
/// {@category kernel32}
Win32Result<int> GetConsoleTitle(PWSTR lpConsoleTitle, int nSize) {
  resolveGetLastError();
  final result_ = _GetConsoleTitle(lpConsoleTitle, nSize);
  return .new(value: result_, error: GetLastError());
}

final _GetConsoleTitle = _kernel32
    .lookupFunction<
      Uint32 Function(Pointer<Utf16>, Uint32),
      int Function(Pointer<Utf16>, int)
    >('GetConsoleTitleW');

/// Retrieves the window handle used by the console associated with the calling
/// process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/getconsolewindow>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
HWND GetConsoleWindow() => HWND(_GetConsoleWindow());

final _GetConsoleWindow = _kernel32
    .lookupFunction<Pointer Function(), Pointer Function()>('GetConsoleWindow');

/// Returns the handle to the active activation context of the calling thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getcurrentactctx>.
///
/// {@category kernel32}
Win32Result<bool> GetCurrentActCtx(Pointer<Pointer> lphActCtx) {
  resolveGetLastError();
  final result_ = _GetCurrentActCtx(lphActCtx);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetCurrentActCtx = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Pointer>),
      int Function(Pointer<Pointer>)
    >('GetCurrentActCtx');

/// Retrieves the current directory for the current process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getcurrentdirectory>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GetCurrentDirectory(int nBufferLength, PWSTR? lpBuffer) =>
    _GetCurrentDirectory(nBufferLength, lpBuffer ?? nullptr);

final _GetCurrentDirectory = _kernel32
    .lookupFunction<
      Uint32 Function(Uint32, Pointer<Utf16>),
      int Function(int, Pointer<Utf16>)
    >('GetCurrentDirectoryW');

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
) => .new(
  _GetCurrentPackageFullName(packageFullNameLength, packageFullName ?? nullptr),
);

final _GetCurrentPackageFullName = _kernel32
    .lookupFunction<
      Uint32 Function(Pointer<Uint32>, Pointer<Utf16>),
      int Function(Pointer<Uint32>, Pointer<Utf16>)
    >('GetCurrentPackageFullName');

/// Retrieves a pseudo handle for the current process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-getcurrentprocess>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
HANDLE GetCurrentProcess() => HANDLE(_GetCurrentProcess());

final _GetCurrentProcess = _kernel32
    .lookupFunction<Pointer Function(), Pointer Function()>(
      'GetCurrentProcess',
    );

/// Retrieves the process identifier of the calling process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-getcurrentprocessid>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GetCurrentProcessId() => _GetCurrentProcessId();

final _GetCurrentProcessId = _kernel32
    .lookupFunction<Uint32 Function(), int Function()>('GetCurrentProcessId');

/// Retrieves the number of the processor the current thread was running on
/// during the call to this function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-getcurrentprocessornumber>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GetCurrentProcessorNumber() => _GetCurrentProcessorNumber();

final _GetCurrentProcessorNumber = _kernel32
    .lookupFunction<Uint32 Function(), int Function()>(
      'GetCurrentProcessorNumber',
    );

/// Retrieves a pseudo handle for the calling thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-getcurrentthread>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
HANDLE GetCurrentThread() => HANDLE(_GetCurrentThread());

final _GetCurrentThread = _kernel32
    .lookupFunction<Pointer Function(), Pointer Function()>('GetCurrentThread');

/// Retrieves the thread identifier of the calling thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-getcurrentthreadid>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GetCurrentThreadId() => _GetCurrentThreadId();

final _GetCurrentThreadId = _kernel32
    .lookupFunction<Uint32 Function(), int Function()>('GetCurrentThreadId');

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
  resolveGetLastError();
  final result_ = _GetDefaultCommConfig(lpszName, lpCC, lpdwSize);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetDefaultCommConfig = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<COMMCONFIG>, Pointer<Uint32>),
      int Function(Pointer<Utf16>, Pointer<COMMCONFIG>, Pointer<Uint32>)
    >('GetDefaultCommConfigW');

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
  resolveGetLastError();
  final result_ = _GetDiskFreeSpace(
    lpRootPathName ?? nullptr,
    lpSectorsPerCluster ?? nullptr,
    lpBytesPerSector ?? nullptr,
    lpNumberOfFreeClusters ?? nullptr,
    lpTotalNumberOfClusters ?? nullptr,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

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
  resolveGetLastError();
  final result_ = _GetDiskFreeSpaceEx(
    lpDirectoryName ?? nullptr,
    lpFreeBytesAvailableToCaller ?? nullptr,
    lpTotalNumberOfBytes ?? nullptr,
    lpTotalNumberOfFreeBytes ?? nullptr,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

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

/// Retrieves the application-specific portion of the search path used to locate
/// DLLs for the application.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getdlldirectoryw>.
///
/// {@category kernel32}
Win32Result<int> GetDllDirectory(int nBufferLength, PWSTR? lpBuffer) {
  resolveGetLastError();
  final result_ = _GetDllDirectory(nBufferLength, lpBuffer ?? nullptr);
  return .new(value: result_, error: GetLastError());
}

final _GetDllDirectory = _kernel32
    .lookupFunction<
      Uint32 Function(Uint32, Pointer<Utf16>),
      int Function(int, Pointer<Utf16>)
    >('GetDllDirectoryW');

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

final _GetDriveType = _kernel32
    .lookupFunction<
      Uint32 Function(Pointer<Utf16>),
      int Function(Pointer<Utf16>)
    >('GetDriveTypeW');

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
  resolveGetLastError();
  final result_ = _GetEnvironmentVariable(
    lpName ?? nullptr,
    lpBuffer ?? nullptr,
    nSize,
  );
  return .new(value: result_, error: GetLastError());
}

final _GetEnvironmentVariable = _kernel32
    .lookupFunction<
      Uint32 Function(Pointer<Utf16>, Pointer<Utf16>, Uint32),
      int Function(Pointer<Utf16>, Pointer<Utf16>, int)
    >('GetEnvironmentVariableW');

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
  resolveGetLastError();
  final result_ = _GetExitCodeProcess(hProcess, lpExitCode);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetExitCodeProcess = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Uint32>),
      int Function(Pointer, Pointer<Uint32>)
    >('GetExitCodeProcess');

/// Retrieves file system attributes for a specified file or directory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getfileattributesw>.
///
/// {@category kernel32}
Win32Result<int> GetFileAttributes(PCWSTR lpFileName) {
  resolveGetLastError();
  final result_ = _GetFileAttributes(lpFileName);
  return .new(value: result_, error: GetLastError());
}

final _GetFileAttributes = _kernel32
    .lookupFunction<
      Uint32 Function(Pointer<Utf16>),
      int Function(Pointer<Utf16>)
    >('GetFileAttributesW');

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
  resolveGetLastError();
  final result_ = _GetFileAttributesEx(
    lpFileName,
    fInfoLevelId,
    lpFileInformation,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetFileAttributesEx = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Int32, Pointer),
      int Function(Pointer<Utf16>, int, Pointer)
    >('GetFileAttributesExW');

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
  resolveGetLastError();
  final result_ = _GetFileInformationByHandle(hFile, lpFileInformation);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetFileInformationByHandle = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<BY_HANDLE_FILE_INFORMATION>),
      int Function(Pointer, Pointer<BY_HANDLE_FILE_INFORMATION>)
    >('GetFileInformationByHandle');

/// Retrieves the size of the specified file, in bytes.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getfilesize>.
///
/// {@category kernel32}
Win32Result<int> GetFileSize(HANDLE hFile, Pointer<Uint32>? lpFileSizeHigh) {
  resolveGetLastError();
  final result_ = _GetFileSize(hFile, lpFileSizeHigh ?? nullptr);
  return .new(value: result_, error: GetLastError());
}

final _GetFileSize = _kernel32
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Uint32>),
      int Function(Pointer, Pointer<Uint32>)
    >('GetFileSize');

/// Retrieves the size of the specified file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getfilesizeex>.
///
/// {@category kernel32}
Win32Result<bool> GetFileSizeEx(HANDLE hFile, Pointer<Int64> lpFileSize) {
  resolveGetLastError();
  final result_ = _GetFileSizeEx(hFile, lpFileSize);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetFileSizeEx = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Int64>),
      int Function(Pointer, Pointer<Int64>)
    >('GetFileSizeEx');

/// Retrieves the file type of the specified file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getfiletype>.
///
/// {@category kernel32}
Win32Result<FILE_TYPE> GetFileType(HANDLE hFile) {
  resolveGetLastError();
  final result_ = _GetFileType(hFile);
  return .new(value: .new(result_), error: GetLastError());
}

final _GetFileType = _kernel32
    .lookupFunction<Uint32 Function(Pointer), int Function(Pointer)>(
      'GetFileType',
    );

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
  resolveGetLastError();
  final result_ = _GetFinalPathNameByHandle(
    hFile,
    lpszFilePath,
    cchFilePath,
    dwFlags,
  );
  return .new(value: result_, error: GetLastError());
}

final _GetFinalPathNameByHandle = _kernel32
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Utf16>, Uint32, Uint32),
      int Function(Pointer, Pointer<Utf16>, int, int)
    >('GetFinalPathNameByHandleW');

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
  resolveGetLastError();
  final result_ = _GetFullPathName(
    lpFileName,
    nBufferLength,
    lpBuffer ?? nullptr,
    lpFilePart ?? nullptr,
  );
  return .new(value: result_, error: GetLastError());
}

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
  resolveGetLastError();
  final result_ = _GetHandleInformation(hObject, lpdwFlags);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetHandleInformation = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Uint32>),
      int Function(Pointer, Pointer<Uint32>)
    >('GetHandleInformation');

/// Retrieves the size of the largest possible console window, based on the
/// current font and the size of the display.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/getlargestconsolewindowsize>.
///
/// {@category kernel32}
Win32Result<COORD> GetLargestConsoleWindowSize(HANDLE hConsoleOutput) {
  resolveGetLastError();
  final result_ = _GetLargestConsoleWindowSize(hConsoleOutput);
  return .new(value: result_, error: GetLastError());
}

final _GetLargestConsoleWindowSize = _kernel32
    .lookupFunction<COORD Function(Pointer), COORD Function(Pointer)>(
      'GetLargestConsoleWindowSize',
    );

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
  resolveGetLastError();
  final result_ = _GetLocaleInfoEx(
    lpLocaleName ?? nullptr,
    lCType,
    lpLCData ?? nullptr,
    cchData,
  );
  return .new(value: result_, error: GetLastError());
}

final _GetLocaleInfoEx = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Uint32, Pointer<Utf16>, Int32),
      int Function(Pointer<Utf16>, int, Pointer<Utf16>, int)
    >('GetLocaleInfoEx');

/// Retrieves the current local date and time.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/sysinfoapi/nf-sysinfoapi-getlocaltime>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
void GetLocalTime(Pointer<SYSTEMTIME> lpSystemTime) =>
    _GetLocalTime(lpSystemTime);

final _GetLocalTime = _kernel32
    .lookupFunction<
      Void Function(Pointer<SYSTEMTIME>),
      void Function(Pointer<SYSTEMTIME>)
    >('GetLocalTime');

/// Retrieves a bitmask representing the currently available disk drives.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getlogicaldrives>.
///
/// {@category kernel32}
Win32Result<int> GetLogicalDrives() {
  resolveGetLastError();
  final result_ = _GetLogicalDrives();
  return .new(value: result_, error: GetLastError());
}

final _GetLogicalDrives = _kernel32
    .lookupFunction<Uint32 Function(), int Function()>('GetLogicalDrives');

/// Fills a buffer with strings that specify valid drives in the system.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getlogicaldrivestringsw>.
///
/// {@category kernel32}
Win32Result<int> GetLogicalDriveStrings(int nBufferLength, PWSTR? lpBuffer) {
  resolveGetLastError();
  final result_ = _GetLogicalDriveStrings(nBufferLength, lpBuffer ?? nullptr);
  return .new(value: result_, error: GetLastError());
}

final _GetLogicalDriveStrings = _kernel32
    .lookupFunction<
      Uint32 Function(Uint32, Pointer<Utf16>),
      int Function(int, Pointer<Utf16>)
    >('GetLogicalDriveStringsW');

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
  resolveGetLastError();
  final result_ = _GetLogicalProcessorInformation(
    buffer ?? nullptr,
    returnedLength,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

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
  resolveGetLastError();
  final result_ = _GetLongPathName(
    lpszShortPath,
    lpszLongPath ?? nullptr,
    cchBuffer,
  );
  return .new(value: result_, error: GetLastError());
}

final _GetLongPathName = _kernel32
    .lookupFunction<
      Uint32 Function(Pointer<Utf16>, Pointer<Utf16>, Uint32),
      int Function(Pointer<Utf16>, Pointer<Utf16>, int)
    >('GetLongPathNameW');

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
  return .new(result$);
}

final _GetMachineTypeAttributes = _kernel32
    .lookupFunction<
      Int32 Function(Uint16, Pointer<Int32>),
      int Function(int, Pointer<Int32>)
    >('GetMachineTypeAttributes');

/// Returns the maximum number of logical processors that a processor group or
/// the system can have.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getmaximumprocessorcount>.
///
/// {@category kernel32}
Win32Result<int> GetMaximumProcessorCount(int groupNumber) {
  resolveGetLastError();
  final result_ = _GetMaximumProcessorCount(groupNumber);
  return .new(value: result_, error: GetLastError());
}

final _GetMaximumProcessorCount = _kernel32
    .lookupFunction<Uint32 Function(Uint16), int Function(int)>(
      'GetMaximumProcessorCount',
    );

/// Returns the maximum number of processor groups that the system can have.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getmaximumprocessorgroupcount>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GetMaximumProcessorGroupCount() => _GetMaximumProcessorGroupCount();

final _GetMaximumProcessorGroupCount = _kernel32
    .lookupFunction<Uint16 Function(), int Function()>(
      'GetMaximumProcessorGroupCount',
    );

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
  resolveGetLastError();
  final result_ = _GetModuleFileName(hModule ?? nullptr, lpFilename, nSize);
  return .new(value: result_, error: GetLastError());
}

final _GetModuleFileName = _kernel32
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Utf16>, Uint32),
      int Function(Pointer, Pointer<Utf16>, int)
    >('GetModuleFileNameW');

/// Retrieves a module handle for the specified module.
///
/// The module must have been loaded by the calling process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-getmodulehandlew>.
///
/// {@category kernel32}
Win32Result<HMODULE> GetModuleHandle(PCWSTR? lpModuleName) {
  resolveGetLastError();
  final result_ = _GetModuleHandle(lpModuleName ?? nullptr);
  return .new(value: .new(result_), error: GetLastError());
}

final _GetModuleHandle = _kernel32
    .lookupFunction<
      Pointer Function(Pointer<Utf16>),
      Pointer Function(Pointer<Utf16>)
    >('GetModuleHandleW');

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
  resolveGetLastError();
  final result_ = _GetModuleHandleEx(
    dwFlags,
    lpModuleName ?? nullptr,
    phModule,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetModuleHandleEx = _kernel32
    .lookupFunction<
      Int32 Function(Uint32, Pointer<Utf16>, Pointer<Pointer>),
      int Function(int, Pointer<Utf16>, Pointer<Pointer>)
    >('GetModuleHandleExW');

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

final _GetNamedPipeClientComputerName = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Utf16>, Uint32),
      int Function(Pointer, Pointer<Utf16>, int)
    >('GetNamedPipeClientComputerNameW');

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
  resolveGetLastError();
  final result_ = _GetNamedPipeClientProcessId(pipe, clientProcessId);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetNamedPipeClientProcessId = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Uint32>),
      int Function(Pointer, Pointer<Uint32>)
    >('GetNamedPipeClientProcessId');

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
  resolveGetLastError();
  final result_ = _GetNamedPipeClientSessionId(pipe, clientSessionId);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetNamedPipeClientSessionId = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Uint32>),
      int Function(Pointer, Pointer<Uint32>)
    >('GetNamedPipeClientSessionId');

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
  resolveGetLastError();
  final result_ = _GetNamedPipeInfo(
    hNamedPipe,
    lpFlags ?? nullptr,
    lpOutBufferSize ?? nullptr,
    lpInBufferSize ?? nullptr,
    lpMaxInstances ?? nullptr,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

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

final _GetNativeSystemInfo = _kernel32
    .lookupFunction<
      Void Function(Pointer<SYSTEM_INFO>),
      void Function(Pointer<SYSTEM_INFO>)
    >('GetNativeSystemInfo');

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
  resolveGetLastError();
  final result_ = _GetNumberOfConsoleInputEvents(
    hConsoleInput,
    lpNumberOfEvents,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetNumberOfConsoleInputEvents = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Uint32>),
      int Function(Pointer, Pointer<Uint32>)
    >('GetNumberOfConsoleInputEvents');

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
  resolveGetLastError();
  final result_ = _GetOverlappedResult(
    hFile,
    lpOverlapped,
    lpNumberOfBytesTransferred,
    bWait ? TRUE : FALSE,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetOverlappedResult = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<OVERLAPPED>, Pointer<Uint32>, Int32),
      int Function(Pointer, Pointer<OVERLAPPED>, Pointer<Uint32>, int)
    >('GetOverlappedResult');

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
  resolveGetLastError();
  final result_ = _GetOverlappedResultEx(
    hFile,
    lpOverlapped,
    lpNumberOfBytesTransferred,
    dwMilliseconds,
    bAlertable ? TRUE : FALSE,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

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

/// Retrieves the amount of RAM that is physically installed on the computer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/sysinfoapi/nf-sysinfoapi-getphysicallyinstalledsystemmemory>.
///
/// {@category kernel32}
Win32Result<bool> GetPhysicallyInstalledSystemMemory(
  Pointer<Uint64> totalMemoryInKilobytes,
) {
  resolveGetLastError();
  final result_ = _GetPhysicallyInstalledSystemMemory(totalMemoryInKilobytes);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetPhysicallyInstalledSystemMemory = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Uint64>),
      int Function(Pointer<Uint64>)
    >('GetPhysicallyInstalledSystemMemory');

/// Retrieves the address of an exported function or variable from the specified
/// dynamic-link library (DLL).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-getprocaddress>.
///
/// {@category kernel32}
Win32Result<FARPROC> GetProcAddress(HMODULE hModule, PCSTR lpProcName) {
  resolveGetLastError();
  final result_ = _GetProcAddress(hModule, lpProcName);
  return .new(value: result_, error: GetLastError());
}

final _GetProcAddress = _kernel32
    .lookupFunction<
      FARPROC Function(Pointer, Pointer<Utf8>),
      FARPROC Function(Pointer, Pointer<Utf8>)
    >('GetProcAddress');

/// Retrieves a handle to the default heap of the calling process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/heapapi/nf-heapapi-getprocessheap>.
///
/// {@category kernel32}
Win32Result<HANDLE> GetProcessHeap() {
  resolveGetLastError();
  final result_ = _GetProcessHeap();
  return .new(value: .new(result_), error: GetLastError());
}

final _GetProcessHeap = _kernel32
    .lookupFunction<Pointer Function(), Pointer Function()>('GetProcessHeap');

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
  resolveGetLastError();
  final result_ = _GetProcessHeaps(numberOfHeaps, processHeaps);
  return .new(value: result_, error: GetLastError());
}

final _GetProcessHeaps = _kernel32
    .lookupFunction<
      Uint32 Function(Uint32, Pointer<Pointer>),
      int Function(int, Pointer<Pointer>)
    >('GetProcessHeaps');

/// Retrieves the process identifier of the specified process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-getprocessid>.
///
/// {@category kernel32}
Win32Result<int> GetProcessId(HANDLE process) {
  resolveGetLastError();
  final result_ = _GetProcessId(process);
  return .new(value: result_, error: GetLastError());
}

final _GetProcessId = _kernel32
    .lookupFunction<Uint32 Function(Pointer), int Function(Pointer)>(
      'GetProcessId',
    );

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
  resolveGetLastError();
  final result_ = _GetProcessShutdownParameters(lpdwLevel, lpdwFlags);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetProcessShutdownParameters = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Uint32>, Pointer<Uint32>),
      int Function(Pointer<Uint32>, Pointer<Uint32>)
    >('GetProcessShutdownParameters');

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
  resolveGetLastError();
  final result_ = _GetProcessTimes(
    hProcess,
    lpCreationTime,
    lpExitTime,
    lpKernelTime,
    lpUserTime,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

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

/// Retrieves the major and minor version numbers of the system on which the
/// specified process expects to run.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-getprocessversion>.
///
/// {@category kernel32}
Win32Result<int> GetProcessVersion(int processId) {
  resolveGetLastError();
  final result_ = _GetProcessVersion(processId);
  return .new(value: result_, error: GetLastError());
}

final _GetProcessVersion = _kernel32
    .lookupFunction<Uint32 Function(Uint32), int Function(int)>(
      'GetProcessVersion',
    );

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
  resolveGetLastError();
  final result_ = _GetProcessWorkingSetSize(
    hProcess,
    lpMinimumWorkingSetSize,
    lpMaximumWorkingSetSize,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetProcessWorkingSetSize = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<IntPtr>, Pointer<IntPtr>),
      int Function(Pointer, Pointer<IntPtr>, Pointer<IntPtr>)
    >('GetProcessWorkingSetSize');

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

final _GetProductInfo = _kernel32
    .lookupFunction<
      Int32 Function(Uint32, Uint32, Uint32, Uint32, Pointer<Uint32>),
      int Function(int, int, int, int, Pointer<Uint32>)
    >('GetProductInfo');

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
  resolveGetLastError();
  final result_ = _GetQueuedCompletionStatus(
    completionPort,
    lpNumberOfBytesTransferred,
    lpCompletionKey,
    lpOverlapped,
    dwMilliseconds,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

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
  resolveGetLastError();
  final result_ = _GetQueuedCompletionStatusEx(
    completionPort,
    lpCompletionPortEntries,
    ulCount,
    ulNumEntriesRemoved,
    dwMilliseconds,
    fAlertable ? TRUE : FALSE,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

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
  resolveGetLastError();
  final result_ = _GetShortPathName(
    lpszLongPath,
    lpszShortPath ?? nullptr,
    cchBuffer,
  );
  return .new(value: result_, error: GetLastError());
}

final _GetShortPathName = _kernel32
    .lookupFunction<
      Uint32 Function(Pointer<Utf16>, Pointer<Utf16>, Uint32),
      int Function(Pointer<Utf16>, Pointer<Utf16>, int)
    >('GetShortPathNameW');

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

final _GetStartupInfo = _kernel32
    .lookupFunction<
      Void Function(Pointer<STARTUPINFO>),
      void Function(Pointer<STARTUPINFO>)
    >('GetStartupInfoW');

/// Retrieves a handle to the specified standard device (standard input,
/// standard output, or standard error).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/getstdhandle>.
///
/// {@category kernel32}
Win32Result<HANDLE> GetStdHandle(STD_HANDLE nStdHandle) {
  resolveGetLastError();
  final result_ = _GetStdHandle(nStdHandle);
  return .new(value: .new(result_), error: GetLastError());
}

final _GetStdHandle = _kernel32
    .lookupFunction<Pointer Function(Uint32), Pointer Function(int)>(
      'GetStdHandle',
    );

/// Returns the language identifier for the system locale.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winnls/nf-winnls-getsystemdefaultlangid>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GetSystemDefaultLangID() => _GetSystemDefaultLangID();

final _GetSystemDefaultLangID = _kernel32
    .lookupFunction<Uint16 Function(), int Function()>(
      'GetSystemDefaultLangID',
    );

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
  resolveGetLastError();
  final result_ = _GetSystemDefaultLocaleName(lpLocaleName, cchLocaleName);
  return .new(value: result_, error: GetLastError());
}

final _GetSystemDefaultLocaleName = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Int32),
      int Function(Pointer<Utf16>, int)
    >('GetSystemDefaultLocaleName');

/// Retrieves the path of the system directory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/sysinfoapi/nf-sysinfoapi-getsystemdirectoryw>.
///
/// {@category kernel32}
Win32Result<int> GetSystemDirectory(PWSTR? lpBuffer, int uSize) {
  resolveGetLastError();
  final result_ = _GetSystemDirectory(lpBuffer ?? nullptr, uSize);
  return .new(value: result_, error: GetLastError());
}

final _GetSystemDirectory = _kernel32
    .lookupFunction<
      Uint32 Function(Pointer<Utf16>, Uint32),
      int Function(Pointer<Utf16>, int)
    >('GetSystemDirectoryW');

/// Retrieves information about the current system.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/sysinfoapi/nf-sysinfoapi-getsysteminfo>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
void GetSystemInfo(Pointer<SYSTEM_INFO> lpSystemInfo) =>
    _GetSystemInfo(lpSystemInfo);

final _GetSystemInfo = _kernel32
    .lookupFunction<
      Void Function(Pointer<SYSTEM_INFO>),
      void Function(Pointer<SYSTEM_INFO>)
    >('GetSystemInfo');

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
  resolveGetLastError();
  final result_ = _GetSystemPowerStatus(lpSystemPowerStatus);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetSystemPowerStatus = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<SYSTEM_POWER_STATUS>),
      int Function(Pointer<SYSTEM_POWER_STATUS>)
    >('GetSystemPowerStatus');

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

final _GetSystemTime = _kernel32
    .lookupFunction<
      Void Function(Pointer<SYSTEMTIME>),
      void Function(Pointer<SYSTEMTIME>)
    >('GetSystemTime');

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
  resolveGetLastError();
  final result_ = _GetSystemTimeAdjustment(
    lpTimeAdjustment,
    lpTimeIncrement,
    lpTimeAdjustmentDisabled,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetSystemTimeAdjustment = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Uint32>, Pointer<Uint32>, Pointer<Int32>),
      int Function(Pointer<Uint32>, Pointer<Uint32>, Pointer<Int32>)
    >('GetSystemTimeAdjustment');

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
  resolveGetLastError();
  final result_ = _GetSystemTimes(
    lpIdleTime ?? nullptr,
    lpKernelTime ?? nullptr,
    lpUserTime ?? nullptr,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetSystemTimes = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<FILETIME>, Pointer<FILETIME>, Pointer<FILETIME>),
      int Function(Pointer<FILETIME>, Pointer<FILETIME>, Pointer<FILETIME>)
    >('GetSystemTimes');

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
  resolveGetLastError();
  final result_ = _GetTempFileName(
    lpPathName,
    lpPrefixString,
    uUnique,
    lpTempFileName,
  );
  return .new(value: result_, error: GetLastError());
}

final _GetTempFileName = _kernel32
    .lookupFunction<
      Uint32 Function(Pointer<Utf16>, Pointer<Utf16>, Uint32, Pointer<Utf16>),
      int Function(Pointer<Utf16>, Pointer<Utf16>, int, Pointer<Utf16>)
    >('GetTempFileNameW');

/// Retrieves the path of the directory designated for temporary files.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-gettemppathw>.
///
/// {@category kernel32}
Win32Result<int> GetTempPath(int nBufferLength, PWSTR? lpBuffer) {
  resolveGetLastError();
  final result_ = _GetTempPath(nBufferLength, lpBuffer ?? nullptr);
  return .new(value: result_, error: GetLastError());
}

final _GetTempPath = _kernel32
    .lookupFunction<
      Uint32 Function(Uint32, Pointer<Utf16>),
      int Function(int, Pointer<Utf16>)
    >('GetTempPathW');

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

final _GetTempPath2 = _kernel32
    .lookupFunction<
      Uint32 Function(Uint32, Pointer<Utf16>),
      int Function(int, Pointer<Utf16>)
    >('GetTempPath2W');

/// Retrieves the thread identifier of the specified thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-getthreadid>.
///
/// {@category kernel32}
Win32Result<int> GetThreadId(HANDLE thread) {
  resolveGetLastError();
  final result_ = _GetThreadId(thread);
  return .new(value: result_, error: GetLastError());
}

final _GetThreadId = _kernel32
    .lookupFunction<Uint32 Function(Pointer), int Function(Pointer)>(
      'GetThreadId',
    );

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

final _GetThreadLocale = _kernel32
    .lookupFunction<Uint32 Function(), int Function()>('GetThreadLocale');

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
  resolveGetLastError();
  final result_ = _GetThreadTimes(
    hThread,
    lpCreationTime,
    lpExitTime,
    lpKernelTime,
    lpUserTime,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

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

/// Returns the language identifier of the first user interface language for the
/// current thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winnls/nf-winnls-getthreaduilanguage>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GetThreadUILanguage() => _GetThreadUILanguage();

final _GetThreadUILanguage = _kernel32
    .lookupFunction<Uint16 Function(), int Function()>('GetThreadUILanguage');

/// Retrieves the number of milliseconds that have elapsed since the system was
/// started, up to 49.7 days.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/sysinfoapi/nf-sysinfoapi-gettickcount>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GetTickCount() => _GetTickCount();

final _GetTickCount = _kernel32
    .lookupFunction<Uint32 Function(), int Function()>('GetTickCount');

/// Returns the language identifier of the Region Format setting for the current
/// user.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winnls/nf-winnls-getuserdefaultlangid>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int GetUserDefaultLangID() => _GetUserDefaultLangID();

final _GetUserDefaultLangID = _kernel32
    .lookupFunction<Uint16 Function(), int Function()>('GetUserDefaultLangID');

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

final _GetUserDefaultLCID = _kernel32
    .lookupFunction<Uint32 Function(), int Function()>('GetUserDefaultLCID');

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
  resolveGetLastError();
  final result_ = _GetUserDefaultLocaleName(lpLocaleName, cchLocaleName);
  return .new(value: result_, error: GetLastError());
}

final _GetUserDefaultLocaleName = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Int32),
      int Function(Pointer<Utf16>, int)
    >('GetUserDefaultLocaleName');

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
  resolveGetLastError();
  final result_ = _GetVolumeInformation(
    lpRootPathName ?? nullptr,
    lpVolumeNameBuffer ?? nullptr,
    nVolumeNameSize,
    lpVolumeSerialNumber ?? nullptr,
    lpMaximumComponentLength ?? nullptr,
    lpFileSystemFlags ?? nullptr,
    lpFileSystemNameBuffer ?? nullptr,
    nFileSystemNameSize,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

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
  resolveGetLastError();
  final result_ = _GetVolumeInformationByHandle(
    hFile,
    lpVolumeNameBuffer ?? nullptr,
    nVolumeNameSize,
    lpVolumeSerialNumber ?? nullptr,
    lpMaximumComponentLength ?? nullptr,
    lpFileSystemFlags ?? nullptr,
    lpFileSystemNameBuffer ?? nullptr,
    nFileSystemNameSize,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

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
  resolveGetLastError();
  final result_ = _GetVolumeNameForVolumeMountPoint(
    lpszVolumeMountPoint,
    lpszVolumeName,
    cchBufferLength,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetVolumeNameForVolumeMountPoint = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<Utf16>, Uint32),
      int Function(Pointer<Utf16>, Pointer<Utf16>, int)
    >('GetVolumeNameForVolumeMountPointW');

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
  resolveGetLastError();
  final result_ = _GetVolumePathName(
    lpszFileName,
    lpszVolumePathName,
    cchBufferLength,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetVolumePathName = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<Utf16>, Uint32),
      int Function(Pointer<Utf16>, Pointer<Utf16>, int)
    >('GetVolumePathNameW');

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
  resolveGetLastError();
  final result_ = _GetVolumePathNamesForVolumeName(
    lpszVolumeName,
    lpszVolumePathNames ?? nullptr,
    cchBufferLength,
    lpcchReturnLength,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetVolumePathNamesForVolumeName = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<Utf16>, Uint32, Pointer<Uint32>),
      int Function(Pointer<Utf16>, Pointer<Utf16>, int, Pointer<Uint32>)
    >('GetVolumePathNamesForVolumeNameW');

/// Allocates the specified number of bytes from the heap.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-globalalloc>.
///
/// {@category kernel32}
Win32Result<HGLOBAL> GlobalAlloc(GLOBAL_ALLOC_FLAGS uFlags, int dwBytes) {
  resolveGetLastError();
  final result_ = _GlobalAlloc(uFlags, dwBytes);
  return .new(value: .new(result_), error: GetLastError());
}

final _GlobalAlloc = _kernel32
    .lookupFunction<
      Pointer Function(Uint32, IntPtr),
      Pointer Function(int, int)
    >('GlobalAlloc');

/// Frees the specified global memory object and invalidates its handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-globalfree>.
///
/// {@category kernel32}
Win32Result<HGLOBAL> GlobalFree(HGLOBAL? hMem) {
  resolveGetLastError();
  final result_ = _GlobalFree(hMem ?? nullptr);
  return .new(value: .new(result_), error: GetLastError());
}

final _GlobalFree = _kernel32
    .lookupFunction<Pointer Function(Pointer), Pointer Function(Pointer)>(
      'GlobalFree',
    );

/// Locks a global memory object and returns a pointer to the first byte of the
/// object's memory block.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-globallock>.
///
/// {@category kernel32}
Win32Result<Pointer> GlobalLock(HGLOBAL hMem) {
  resolveGetLastError();
  final result_ = _GlobalLock(hMem);
  return .new(value: result_, error: GetLastError());
}

final _GlobalLock = _kernel32
    .lookupFunction<Pointer Function(Pointer), Pointer Function(Pointer)>(
      'GlobalLock',
    );

/// Retrieves information about the system's current usage of both physical and
/// virtual memory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/sysinfoapi/nf-sysinfoapi-globalmemorystatusex>.
///
/// {@category kernel32}
Win32Result<bool> GlobalMemoryStatusEx(Pointer<MEMORYSTATUSEX> lpBuffer) {
  resolveGetLastError();
  final result_ = _GlobalMemoryStatusEx(lpBuffer);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GlobalMemoryStatusEx = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<MEMORYSTATUSEX>),
      int Function(Pointer<MEMORYSTATUSEX>)
    >('GlobalMemoryStatusEx');

/// Retrieves the current size of the specified global memory object, in bytes.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-globalsize>.
///
/// {@category kernel32}
Win32Result<int> GlobalSize(HGLOBAL hMem) {
  resolveGetLastError();
  final result_ = _GlobalSize(hMem);
  return .new(value: result_, error: GetLastError());
}

final _GlobalSize = _kernel32
    .lookupFunction<IntPtr Function(Pointer), int Function(Pointer)>(
      'GlobalSize',
    );

/// Decrements the lock count associated with a memory object that was allocated
/// with GMEM_MOVEABLE.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-globalunlock>.
///
/// {@category kernel32}
Win32Result<bool> GlobalUnlock(HGLOBAL hMem) {
  resolveGetLastError();
  final result_ = _GlobalUnlock(hMem);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GlobalUnlock = _kernel32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'GlobalUnlock',
    );

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

final _HeapAlloc = _kernel32
    .lookupFunction<
      Pointer Function(Pointer, Uint32, IntPtr),
      Pointer Function(Pointer, int, int)
    >('HeapAlloc');

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
  resolveGetLastError();
  final result_ = _HeapCompact(hHeap, dwFlags);
  return .new(value: result_, error: GetLastError());
}

final _HeapCompact = _kernel32
    .lookupFunction<
      IntPtr Function(Pointer, Uint32),
      int Function(Pointer, int)
    >('HeapCompact');

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
  resolveGetLastError();
  final result_ = _HeapCreate(flOptions, dwInitialSize, dwMaximumSize);
  return .new(value: .new(result_), error: GetLastError());
}

final _HeapCreate = _kernel32
    .lookupFunction<
      Pointer Function(Uint32, IntPtr, IntPtr),
      Pointer Function(int, int, int)
    >('HeapCreate');

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
  resolveGetLastError();
  final result_ = _HeapDestroy(hHeap);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _HeapDestroy = _kernel32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'HeapDestroy',
    );

/// Frees a memory block allocated from a heap by the HeapAlloc or HeapReAlloc
/// function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/heapapi/nf-heapapi-heapfree>.
///
/// {@category kernel32}
Win32Result<bool> HeapFree(HANDLE hHeap, HEAP_FLAGS dwFlags, Pointer? lpMem) {
  resolveGetLastError();
  final result_ = _HeapFree(hHeap, dwFlags, lpMem ?? nullptr);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _HeapFree = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Pointer),
      int Function(Pointer, int, Pointer)
    >('HeapFree');

/// Attempts to acquire the critical section object, or lock, that is associated
/// with a specified heap.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/heapapi/nf-heapapi-heaplock>.
///
/// {@category kernel32}
Win32Result<bool> HeapLock(HANDLE hHeap) {
  resolveGetLastError();
  final result_ = _HeapLock(hHeap);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _HeapLock = _kernel32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>('HeapLock');

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
  resolveGetLastError();
  final result_ = _HeapQueryInformation(
    heapHandle ?? nullptr,
    heapInformationClass,
    heapInformation ?? nullptr,
    heapInformationLength,
    returnLength ?? nullptr,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _HeapQueryInformation = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Pointer, IntPtr, Pointer<IntPtr>),
      int Function(Pointer, int, Pointer, int, Pointer<IntPtr>)
    >('HeapQueryInformation');

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

final _HeapReAlloc = _kernel32
    .lookupFunction<
      Pointer Function(Pointer, Uint32, Pointer, IntPtr),
      Pointer Function(Pointer, int, Pointer, int)
    >('HeapReAlloc');

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
  resolveGetLastError();
  final result_ = _HeapSetInformation(
    heapHandle ?? nullptr,
    heapInformationClass,
    heapInformation ?? nullptr,
    heapInformationLength,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _HeapSetInformation = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Pointer, IntPtr),
      int Function(Pointer, int, Pointer, int)
    >('HeapSetInformation');

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

final _HeapSize = _kernel32
    .lookupFunction<
      IntPtr Function(Pointer, Uint32, Pointer),
      int Function(Pointer, int, Pointer)
    >('HeapSize');

/// Releases ownership of the critical section object, or lock, that is
/// associated with a specified heap.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/heapapi/nf-heapapi-heapunlock>.
///
/// {@category kernel32}
Win32Result<bool> HeapUnlock(HANDLE hHeap) {
  resolveGetLastError();
  final result_ = _HeapUnlock(hHeap);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _HeapUnlock = _kernel32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'HeapUnlock',
    );

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

final _HeapValidate = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Pointer),
      int Function(Pointer, int, Pointer)
    >('HeapValidate');

/// Enumerates the memory blocks in the specified heap.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/heapapi/nf-heapapi-heapwalk>.
///
/// {@category kernel32}
Win32Result<bool> HeapWalk(HANDLE hHeap, Pointer<PROCESS_HEAP_ENTRY> lpEntry) {
  resolveGetLastError();
  final result_ = _HeapWalk(hHeap, lpEntry);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _HeapWalk = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<PROCESS_HEAP_ENTRY>),
      int Function(Pointer, Pointer<PROCESS_HEAP_ENTRY>)
    >('HeapWalk');

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
  resolveGetLastError();
  final result_ = _InitializeProcThreadAttributeList(
    lpAttributeList ?? nullptr,
    dwAttributeCount,
    NULL,
    lpSize,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _InitializeProcThreadAttributeList = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Uint32, Pointer<IntPtr>),
      int Function(Pointer, int, int, Pointer<IntPtr>)
    >('InitializeProcThreadAttributeList');

/// Determines whether the calling process is being debugged by a user-mode
/// debugger.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/debugapi/nf-debugapi-isdebuggerpresent>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool IsDebuggerPresent() => _IsDebuggerPresent() != FALSE;

final _IsDebuggerPresent = _kernel32
    .lookupFunction<Int32 Function(), int Function()>('IsDebuggerPresent');

/// Indicates if the OS was booted from a VHD container.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-isnativevhdboot>.
///
/// {@category kernel32}
Win32Result<bool> IsNativeVhdBoot(Pointer<Int32> nativeVhdBoot) {
  resolveGetLastError();
  final result_ = _IsNativeVhdBoot(nativeVhdBoot);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _IsNativeVhdBoot = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Int32>),
      int Function(Pointer<Int32>)
    >('IsNativeVhdBoot');

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
  resolveGetLastError();
  final result_ = _IsProcessInJob(processHandle, jobHandle ?? nullptr, result);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _IsProcessInJob = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer, Pointer<Int32>),
      int Function(Pointer, Pointer, Pointer<Int32>)
    >('IsProcessInJob');

/// Determines the current state of the computer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-issystemresumeautomatic>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool IsSystemResumeAutomatic() => _IsSystemResumeAutomatic() != FALSE;

final _IsSystemResumeAutomatic = _kernel32
    .lookupFunction<Int32 Function(), int Function()>(
      'IsSystemResumeAutomatic',
    );

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

final _IsValidLocaleName = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>),
      int Function(Pointer<Utf16>)
    >('IsValidLocaleName');

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
  resolveGetLastError();
  final result_ = _IsWow64Process2(
    hProcess,
    pProcessMachine,
    pNativeMachine ?? nullptr,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _IsWow64Process2 = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Uint16>, Pointer<Uint16>),
      int Function(Pointer, Pointer<Uint16>, Pointer<Uint16>)
    >('IsWow64Process2');

/// Loads the specified module into the address space of the calling process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-loadlibraryw>.
///
/// {@category kernel32}
Win32Result<HMODULE> LoadLibrary(PCWSTR lpLibFileName) {
  resolveGetLastError();
  final result_ = _LoadLibrary(lpLibFileName);
  return .new(value: .new(result_), error: GetLastError());
}

final _LoadLibrary = _kernel32
    .lookupFunction<
      Pointer Function(Pointer<Utf16>),
      Pointer Function(Pointer<Utf16>)
    >('LoadLibraryW');

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
  resolveGetLastError();
  final result_ = _LoadLibraryEx(lpLibFileName, nullptr, dwFlags);
  return .new(value: .new(result_), error: GetLastError());
}

final _LoadLibraryEx = _kernel32
    .lookupFunction<
      Pointer Function(Pointer<Utf16>, Pointer, Uint32),
      Pointer Function(Pointer<Utf16>, Pointer, int)
    >('LoadLibraryExW');

/// Retrieves a handle that can be used to obtain a pointer to the first byte of
/// the specified resource in memory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-loadresource>.
///
/// {@category kernel32}
Win32Result<HGLOBAL> LoadResource(HMODULE? hModule, HRSRC hResInfo) {
  resolveGetLastError();
  final result_ = _LoadResource(hModule ?? nullptr, hResInfo);
  return .new(value: .new(result_), error: GetLastError());
}

final _LoadResource = _kernel32
    .lookupFunction<
      Pointer Function(Pointer, Pointer),
      Pointer Function(Pointer, Pointer)
    >('LoadResource');

/// Allocates the specified number of bytes from the heap.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-localalloc>.
///
/// {@category kernel32}
Win32Result<HLOCAL> LocalAlloc(LOCAL_ALLOC_FLAGS uFlags, int uBytes) {
  resolveGetLastError();
  final result_ = _LocalAlloc(uFlags, uBytes);
  return .new(value: .new(result_), error: GetLastError());
}

final _LocalAlloc = _kernel32
    .lookupFunction<
      Pointer Function(Uint32, IntPtr),
      Pointer Function(int, int)
    >('LocalAlloc');

/// Frees the specified local memory object and invalidates its handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-localfree>.
///
/// {@category kernel32}
Win32Result<HLOCAL> LocalFree(HLOCAL? hMem) {
  resolveGetLastError();
  final result_ = _LocalFree(hMem ?? nullptr);
  return .new(value: .new(result_), error: GetLastError());
}

final _LocalFree = _kernel32
    .lookupFunction<Pointer Function(Pointer), Pointer Function(Pointer)>(
      'LocalFree',
    );

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
  resolveGetLastError();
  final result_ = _LockFile(
    hFile,
    dwFileOffsetLow,
    dwFileOffsetHigh,
    nNumberOfBytesToLockLow,
    nNumberOfBytesToLockHigh,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _LockFile = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Uint32, Uint32, Uint32),
      int Function(Pointer, int, int, int, int)
    >('LockFile');

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
  resolveGetLastError();
  final result_ = _LockFileEx(
    hFile,
    dwFlags,
    NULL,
    nNumberOfBytesToLockLow,
    nNumberOfBytesToLockHigh,
    lpOverlapped,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

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

/// Retrieves a pointer to the specified resource in memory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-lockresource>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
Pointer LockResource(HGLOBAL hResData) => _LockResource(hResData);

final _LockResource = _kernel32
    .lookupFunction<Pointer Function(Pointer), Pointer Function(Pointer)>(
      'LockResource',
    );

/// Moves an existing file or a directory, including its children.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-movefilew>.
///
/// {@category kernel32}
Win32Result<bool> MoveFile(PCWSTR lpExistingFileName, PCWSTR lpNewFileName) {
  resolveGetLastError();
  final result_ = _MoveFile(lpExistingFileName, lpNewFileName);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _MoveFile = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<Utf16>),
      int Function(Pointer<Utf16>, Pointer<Utf16>)
    >('MoveFileW');

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
  resolveGetLastError();
  final result_ = _MoveFileEx(
    lpExistingFileName,
    lpNewFileName ?? nullptr,
    dwFlags,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _MoveFileEx = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<Utf16>, Uint32),
      int Function(Pointer<Utf16>, Pointer<Utf16>, int)
    >('MoveFileExW');

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
  resolveGetLastError();
  final result_ = _OpenEvent(
    dwDesiredAccess,
    bInheritHandle ? TRUE : FALSE,
    lpName,
  );
  return .new(value: .new(result_), error: GetLastError());
}

final _OpenEvent = _kernel32
    .lookupFunction<
      Pointer Function(Uint32, Int32, Pointer<Utf16>),
      Pointer Function(int, int, Pointer<Utf16>)
    >('OpenEventW');

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
  resolveGetLastError();
  final result_ = _OpenJobObject(
    dwDesiredAccess,
    bInheritHandle ? TRUE : FALSE,
    lpName,
  );
  return .new(value: .new(result_), error: GetLastError());
}

final _OpenJobObject = _kernel32
    .lookupFunction<
      Pointer Function(Uint32, Int32, Pointer<Utf16>),
      Pointer Function(int, int, Pointer<Utf16>)
    >('OpenJobObjectW');

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
  resolveGetLastError();
  final result_ = _OpenProcess(
    dwDesiredAccess,
    bInheritHandle ? TRUE : FALSE,
    dwProcessId,
  );
  return .new(value: .new(result_), error: GetLastError());
}

final _OpenProcess = _kernel32
    .lookupFunction<
      Pointer Function(Uint32, Int32, Uint32),
      Pointer Function(int, int, int)
    >('OpenProcess');

/// Sends a string to the debugger for display.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/debugapi/nf-debugapi-outputdebugstringw>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
void OutputDebugString(PCWSTR? lpOutputString) =>
    _OutputDebugString(lpOutputString ?? nullptr);

final _OutputDebugString = _kernel32
    .lookupFunction<
      Void Function(Pointer<Utf16>),
      void Function(Pointer<Utf16>)
    >('OutputDebugStringW');

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
) => .new(
  _PackageFamilyNameFromFullName(
    packageFullName,
    packageFamilyNameLength,
    packageFamilyName ?? nullptr,
  ),
);

final _PackageFamilyNameFromFullName = _kernel32
    .lookupFunction<
      Uint32 Function(Pointer<Utf16>, Pointer<Uint32>, Pointer<Utf16>),
      int Function(Pointer<Utf16>, Pointer<Uint32>, Pointer<Utf16>)
    >('PackageFamilyNameFromFullName');

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
  resolveGetLastError();
  final result_ = _PeekConsoleInput(
    hConsoleInput,
    lpBuffer,
    nLength,
    lpNumberOfEventsRead,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _PeekConsoleInput = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<INPUT_RECORD>, Uint32, Pointer<Uint32>),
      int Function(Pointer, Pointer<INPUT_RECORD>, int, Pointer<Uint32>)
    >('PeekConsoleInputW');

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
  resolveGetLastError();
  final result_ = _PeekNamedPipe(
    hNamedPipe,
    lpBuffer ?? nullptr,
    nBufferSize,
    lpBytesRead ?? nullptr,
    lpTotalBytesAvail ?? nullptr,
    lpBytesLeftThisMessage ?? nullptr,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

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
  resolveGetLastError();
  final result_ = _PostQueuedCompletionStatus(
    completionPort,
    dwNumberOfBytesTransferred,
    dwCompletionKey,
    lpOverlapped ?? nullptr,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _PostQueuedCompletionStatus = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, IntPtr, Pointer<OVERLAPPED>),
      int Function(Pointer, int, int, Pointer<OVERLAPPED>)
    >('PostQueuedCompletionStatus');

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
  resolveGetLastError();
  final result_ = _ProcessIdToSessionId(dwProcessId, pSessionId);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _ProcessIdToSessionId = _kernel32
    .lookupFunction<
      Int32 Function(Uint32, Pointer<Uint32>),
      int Function(int, Pointer<Uint32>)
    >('ProcessIdToSessionId');

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
  resolveGetLastError();
  final result_ = _PurgeComm(hFile, dwFlags);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _PurgeComm = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Uint32),
      int Function(Pointer, int)
    >('PurgeComm');

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
  resolveGetLastError();
  final result_ = _QueryDosDevice(
    lpDeviceName ?? nullptr,
    lpTargetPath ?? nullptr,
    ucchMax,
  );
  return .new(value: result_, error: GetLastError());
}

final _QueryDosDevice = _kernel32
    .lookupFunction<
      Uint32 Function(Pointer<Utf16>, Pointer<Utf16>, Uint32),
      int Function(Pointer<Utf16>, Pointer<Utf16>, int)
    >('QueryDosDeviceW');

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
  resolveGetLastError();
  final result_ = _QueryFullProcessImageName(
    hProcess,
    dwFlags,
    lpExeName,
    lpdwSize,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _QueryFullProcessImageName = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Pointer<Utf16>, Pointer<Uint32>),
      int Function(Pointer, int, Pointer<Utf16>, Pointer<Uint32>)
    >('QueryFullProcessImageNameW');

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
  resolveGetLastError();
  final result_ = _QueryInformationJobObject(
    hJob ?? nullptr,
    jobObjectInformationClass,
    lpJobObjectInformation,
    cbJobObjectInformationLength,
    lpReturnLength ?? nullptr,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _QueryInformationJobObject = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Pointer, Uint32, Pointer<Uint32>),
      int Function(Pointer, int, Pointer, int, Pointer<Uint32>)
    >('QueryInformationJobObject');

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
  resolveGetLastError();
  final result_ = _QueryIoRateControlInformationJobObject(
    hJob ?? nullptr,
    volumeName ?? nullptr,
    infoBlocks,
    infoBlockCount,
  );
  return .new(value: result_, error: GetLastError());
}

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

/// Retrieves the current value of the performance counter, which is a high
/// resolution (&lt;1us) time stamp that can be used for time-interval
/// measurements.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/profileapi/nf-profileapi-queryperformancecounter>.
///
/// {@category kernel32}
Win32Result<bool> QueryPerformanceCounter(Pointer<Int64> lpPerformanceCount) {
  resolveGetLastError();
  final result_ = _QueryPerformanceCounter(lpPerformanceCount);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _QueryPerformanceCounter = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Int64>),
      int Function(Pointer<Int64>)
    >('QueryPerformanceCounter');

/// Retrieves the frequency of the performance counter.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/profileapi/nf-profileapi-queryperformancefrequency>.
///
/// {@category kernel32}
Win32Result<bool> QueryPerformanceFrequency(Pointer<Int64> lpFrequency) {
  resolveGetLastError();
  final result_ = _QueryPerformanceFrequency(lpFrequency);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _QueryPerformanceFrequency = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Int64>),
      int Function(Pointer<Int64>)
    >('QueryPerformanceFrequency');

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
  resolveGetLastError();
  final result_ = _ReadConsole(
    hConsoleInput,
    lpBuffer,
    nNumberOfCharsToRead,
    lpNumberOfCharsRead,
    pInputControl ?? nullptr,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

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
  resolveGetLastError();
  final result_ = _ReadConsoleInput(
    hConsoleInput,
    lpBuffer,
    nLength,
    lpNumberOfEventsRead,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _ReadConsoleInput = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<INPUT_RECORD>, Uint32, Pointer<Uint32>),
      int Function(Pointer, Pointer<INPUT_RECORD>, int, Pointer<Uint32>)
    >('ReadConsoleInputW');

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
  resolveGetLastError();
  final result_ = _ReadFile(
    hFile,
    lpBuffer ?? nullptr,
    nNumberOfBytesToRead,
    lpNumberOfBytesRead ?? nullptr,
    lpOverlapped ?? nullptr,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

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
  resolveGetLastError();
  final result_ = _ReadFileEx(
    hFile,
    lpBuffer ?? nullptr,
    nNumberOfBytesToRead,
    lpOverlapped,
    lpCompletionRoutine,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

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
  resolveGetLastError();
  final result_ = _ReadFileScatter(
    hFile,
    aSegmentArray,
    nNumberOfBytesToRead,
    nullptr,
    lpOverlapped,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

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
  resolveGetLastError();
  final result_ = _ReadProcessMemory(
    hProcess,
    lpBaseAddress,
    lpBuffer,
    nSize,
    lpNumberOfBytesRead ?? nullptr,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _ReadProcessMemory = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer, Pointer, IntPtr, Pointer<IntPtr>),
      int Function(Pointer, Pointer, Pointer, int, Pointer<IntPtr>)
    >('ReadProcessMemory');

/// Decrements the reference count of the specified activation context.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-releaseactctx>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
void ReleaseActCtx(HANDLE hActCtx) => _ReleaseActCtx(hActCtx);

final _ReleaseActCtx = _kernel32
    .lookupFunction<Void Function(Pointer), void Function(Pointer)>(
      'ReleaseActCtx',
    );

/// Deletes an existing empty directory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-removedirectoryw>.
///
/// {@category kernel32}
Win32Result<bool> RemoveDirectory(PCWSTR lpPathName) {
  resolveGetLastError();
  final result_ = _RemoveDirectory(lpPathName);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _RemoveDirectory = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>),
      int Function(Pointer<Utf16>)
    >('RemoveDirectoryW');

/// Removes a directory that was added to the process DLL search path by using
/// AddDllDirectory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-removedlldirectory>.
///
/// {@category kernel32}
Win32Result<bool> RemoveDllDirectory(Pointer cookie) {
  resolveGetLastError();
  final result_ = _RemoveDllDirectory(cookie);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _RemoveDllDirectory = _kernel32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'RemoveDllDirectory',
    );

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
  resolveGetLastError();
  final result_ = _ReOpenFile(
    hOriginalFile,
    dwDesiredAccess,
    dwShareMode,
    dwFlagsAndAttributes,
  );
  return .new(value: .new(result_), error: GetLastError());
}

final _ReOpenFile = _kernel32
    .lookupFunction<
      Pointer Function(Pointer, Uint32, Uint32, Uint32),
      Pointer Function(Pointer, int, int, int)
    >('ReOpenFile');

/// Sets the specified event object to the nonsignaled state.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/synchapi/nf-synchapi-resetevent>.
///
/// {@category kernel32}
Win32Result<bool> ResetEvent(HANDLE hEvent) {
  resolveGetLastError();
  final result_ = _ResetEvent(hEvent);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _ResetEvent = _kernel32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'ResetEvent',
    );

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

final _ResizePseudoConsole = _kernel32
    .lookupFunction<Int32 Function(IntPtr, COORD), int Function(int, COORD)>(
      'ResizePseudoConsole',
    );

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
  resolveGetLastError();
  final result_ = _ScrollConsoleScreenBuffer(
    hConsoleOutput,
    lpScrollRectangle,
    lpClipRectangle ?? nullptr,
    dwDestinationOrigin,
    lpFill,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

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

/// Suspends character transmission for a specified communications device and
/// places the transmission line in a break state until the ClearCommBreak
/// function is called.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-setcommbreak>.
///
/// {@category kernel32}
Win32Result<bool> SetCommBreak(HANDLE hFile) {
  resolveGetLastError();
  final result_ = _SetCommBreak(hFile);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetCommBreak = _kernel32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'SetCommBreak',
    );

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
  resolveGetLastError();
  final result_ = _SetCommConfig(hCommDev, lpCC, dwSize);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetCommConfig = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<COMMCONFIG>, Uint32),
      int Function(Pointer, Pointer<COMMCONFIG>, int)
    >('SetCommConfig');

/// Specifies a set of events to be monitored for a communications device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-setcommmask>.
///
/// {@category kernel32}
Win32Result<bool> SetCommMask(HANDLE hFile, COMM_EVENT_MASK dwEvtMask) {
  resolveGetLastError();
  final result_ = _SetCommMask(hFile, dwEvtMask);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetCommMask = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Uint32),
      int Function(Pointer, int)
    >('SetCommMask');

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
  resolveGetLastError();
  final result_ = _SetCommState(hFile, lpDCB);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetCommState = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<DCB>),
      int Function(Pointer, Pointer<DCB>)
    >('SetCommState');

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
  resolveGetLastError();
  final result_ = _SetCommTimeouts(hFile, lpCommTimeouts);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetCommTimeouts = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<COMMTIMEOUTS>),
      int Function(Pointer, Pointer<COMMTIMEOUTS>)
    >('SetCommTimeouts');

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
  resolveGetLastError();
  final result_ = _SetConsoleCtrlHandler(
    handlerRoutine ?? nullptr,
    add ? TRUE : FALSE,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetConsoleCtrlHandler = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<NativeFunction<PHANDLER_ROUTINE>>, Int32),
      int Function(Pointer<NativeFunction<PHANDLER_ROUTINE>>, int)
    >('SetConsoleCtrlHandler');

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
  resolveGetLastError();
  final result_ = _SetConsoleCursorInfo(hConsoleOutput, lpConsoleCursorInfo);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetConsoleCursorInfo = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<CONSOLE_CURSOR_INFO>),
      int Function(Pointer, Pointer<CONSOLE_CURSOR_INFO>)
    >('SetConsoleCursorInfo');

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
  resolveGetLastError();
  final result_ = _SetConsoleCursorPosition(hConsoleOutput, dwCursorPosition);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetConsoleCursorPosition = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, COORD),
      int Function(Pointer, COORD)
    >('SetConsoleCursorPosition');

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
  resolveGetLastError();
  final result_ = _SetConsoleDisplayMode(
    hConsoleOutput,
    dwFlags,
    lpNewScreenBufferDimensions ?? nullptr,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetConsoleDisplayMode = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Pointer<COORD>),
      int Function(Pointer, int, Pointer<COORD>)
    >('SetConsoleDisplayMode');

/// Sets the input mode of a console's input buffer or the output mode of a
/// console screen buffer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/setconsolemode>.
///
/// {@category kernel32}
Win32Result<bool> SetConsoleMode(HANDLE hConsoleHandle, CONSOLE_MODE dwMode) {
  resolveGetLastError();
  final result_ = _SetConsoleMode(hConsoleHandle, dwMode);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetConsoleMode = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Uint32),
      int Function(Pointer, int)
    >('SetConsoleMode');

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
  resolveGetLastError();
  final result_ = _SetConsoleTextAttribute(hConsoleOutput, wAttributes);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetConsoleTextAttribute = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Uint16),
      int Function(Pointer, int)
    >('SetConsoleTextAttribute');

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
  resolveGetLastError();
  final result_ = _SetConsoleWindowInfo(
    hConsoleOutput,
    bAbsolute ? TRUE : FALSE,
    lpConsoleWindow,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetConsoleWindowInfo = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Pointer<SMALL_RECT>),
      int Function(Pointer, int, Pointer<SMALL_RECT>)
    >('SetConsoleWindowInfo');

/// Changes the current directory for the current process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-setcurrentdirectory>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
bool SetCurrentDirectory(PCWSTR lpPathName) =>
    _SetCurrentDirectory(lpPathName) != FALSE;

final _SetCurrentDirectory = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>),
      int Function(Pointer<Utf16>)
    >('SetCurrentDirectoryW');

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
  resolveGetLastError();
  final result_ = _SetDefaultCommConfig(lpszName, lpCC, dwSize);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetDefaultCommConfig = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<COMMCONFIG>, Uint32),
      int Function(Pointer<Utf16>, Pointer<COMMCONFIG>, int)
    >('SetDefaultCommConfigW');

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
  resolveGetLastError();
  final result_ = _SetDefaultDllDirectories(directoryFlags);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetDefaultDllDirectories = _kernel32
    .lookupFunction<Int32 Function(Uint32), int Function(int)>(
      'SetDefaultDllDirectories',
    );

/// Sets the physical file size for the specified file to the current position
/// of the file pointer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-setendoffile>.
///
/// {@category kernel32}
Win32Result<bool> SetEndOfFile(HANDLE hFile) {
  resolveGetLastError();
  final result_ = _SetEndOfFile(hFile);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetEndOfFile = _kernel32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'SetEndOfFile',
    );

/// Sets the contents of the specified environment variable for the current
/// process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processenv/nf-processenv-setenvironmentvariablew>.
///
/// {@category kernel32}
Win32Result<bool> SetEnvironmentVariable(PCWSTR lpName, PCWSTR? lpValue) {
  resolveGetLastError();
  final result_ = _SetEnvironmentVariable(lpName, lpValue ?? nullptr);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetEnvironmentVariable = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<Utf16>),
      int Function(Pointer<Utf16>, Pointer<Utf16>)
    >('SetEnvironmentVariableW');

/// Controls whether the system will handle the specified types of serious
/// errors or whether the process will handle them.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/errhandlingapi/nf-errhandlingapi-seterrormode>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
THREAD_ERROR_MODE SetErrorMode(THREAD_ERROR_MODE uMode) =>
    .new(_SetErrorMode(uMode));

final _SetErrorMode = _kernel32
    .lookupFunction<Uint32 Function(Uint32), int Function(int)>('SetErrorMode');

/// Sets the specified event object to the signaled state.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/synchapi/nf-synchapi-setevent>.
///
/// {@category kernel32}
Win32Result<bool> SetEvent(HANDLE hEvent) {
  resolveGetLastError();
  final result_ = _SetEvent(hEvent);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetEvent = _kernel32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>('SetEvent');

/// Causes the file I/O functions to use the ANSI character set code page for
/// the current process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-setfileapistoansi>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
void SetFileApisToANSI() => _SetFileApisToANSI();

final _SetFileApisToANSI = _kernel32
    .lookupFunction<Void Function(), void Function()>('SetFileApisToANSI');

/// Causes the file I/O functions for the process to use the OEM character set
/// code page.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-setfileapistooem>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
void SetFileApisToOEM() => _SetFileApisToOEM();

final _SetFileApisToOEM = _kernel32
    .lookupFunction<Void Function(), void Function()>('SetFileApisToOEM');

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
  resolveGetLastError();
  final result_ = _SetFileAttributes(lpFileName, dwFileAttributes);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetFileAttributes = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Uint32),
      int Function(Pointer<Utf16>, int)
    >('SetFileAttributesW');

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
  resolveGetLastError();
  final result_ = _SetFileInformationByHandle(
    hFile,
    fileInformationClass,
    lpFileInformation,
    dwBufferSize,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetFileInformationByHandle = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Pointer, Uint32),
      int Function(Pointer, int, Pointer, int)
    >('SetFileInformationByHandle');

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
  resolveGetLastError();
  final result_ = _SetFileIoOverlappedRange(
    fileHandle,
    overlappedRangeStart,
    length,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetFileIoOverlappedRange = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Uint8>, Uint32),
      int Function(Pointer, Pointer<Uint8>, int)
    >('SetFileIoOverlappedRange');

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
  resolveGetLastError();
  final result_ = _SetFilePointer(
    hFile,
    lDistanceToMove,
    lpDistanceToMoveHigh ?? nullptr,
    dwMoveMethod,
  );
  return .new(value: result_, error: GetLastError());
}

final _SetFilePointer = _kernel32
    .lookupFunction<
      Uint32 Function(Pointer, Int32, Pointer<Int32>, Uint32),
      int Function(Pointer, int, Pointer<Int32>, int)
    >('SetFilePointer');

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
  resolveGetLastError();
  final result_ = _SetFilePointerEx(
    hFile,
    liDistanceToMove,
    lpNewFilePointer ?? nullptr,
    dwMoveMethod,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetFilePointerEx = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Int64, Pointer<Int64>, Uint32),
      int Function(Pointer, int, Pointer<Int64>, int)
    >('SetFilePointerEx');

/// Sets the short name for the specified file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-setfileshortnamew>.
///
/// {@category kernel32}
Win32Result<bool> SetFileShortName(HANDLE hFile, PCWSTR lpShortName) {
  resolveGetLastError();
  final result_ = _SetFileShortName(hFile, lpShortName);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetFileShortName = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Utf16>),
      int Function(Pointer, Pointer<Utf16>)
    >('SetFileShortNameW');

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
  resolveGetLastError();
  final result_ = _SetFileTime(
    hFile,
    lpCreationTime ?? nullptr,
    lpLastAccessTime ?? nullptr,
    lpLastWriteTime ?? nullptr,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

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

/// Sets the valid data length of the specified file.
///
/// This function is useful in very limited scenarios.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-setfilevaliddata>.
///
/// {@category kernel32}
Win32Result<bool> SetFileValidData(HANDLE hFile, int validDataLength) {
  resolveGetLastError();
  final result_ = _SetFileValidData(hFile, validDataLength);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetFileValidData = _kernel32
    .lookupFunction<Int32 Function(Pointer, Int64), int Function(Pointer, int)>(
      'SetFileValidData',
    );

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
  resolveGetLastError();
  final result_ = _SetFirmwareEnvironmentVariable(
    lpName,
    lpGuid,
    pValue ?? nullptr,
    nSize,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetFirmwareEnvironmentVariable = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<Utf16>, Pointer, Uint32),
      int Function(Pointer<Utf16>, Pointer<Utf16>, Pointer, int)
    >('SetFirmwareEnvironmentVariableW');

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
  resolveGetLastError();
  final result_ = _SetFirmwareEnvironmentVariableEx(
    lpName,
    lpGuid,
    pValue ?? nullptr,
    nSize,
    dwAttributes,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetFirmwareEnvironmentVariableEx = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<Utf16>, Pointer, Uint32, Uint32),
      int Function(Pointer<Utf16>, Pointer<Utf16>, Pointer, int, int)
    >('SetFirmwareEnvironmentVariableExW');

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
  resolveGetLastError();
  final result_ = _SetHandleInformation(hObject, dwMask, dwFlags);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetHandleInformation = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Uint32),
      int Function(Pointer, int, int)
    >('SetHandleInformation');

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
  resolveGetLastError();
  final result_ = _SetInformationJobObject(
    hJob,
    jobObjectInformationClass,
    lpJobObjectInformation,
    cbJobObjectInformationLength,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetInformationJobObject = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Pointer, Uint32),
      int Function(Pointer, int, Pointer, int)
    >('SetInformationJobObject');

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
  resolveGetLastError();
  final result_ = _SetIoRateControlInformationJobObject(
    hJob,
    ioRateControlInfo,
  );
  return .new(value: result_, error: GetLastError());
}

final _SetIoRateControlInformationJobObject = _kernel32
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<JOBOBJECT_IO_RATE_CONTROL_INFORMATION>),
      int Function(Pointer, Pointer<JOBOBJECT_IO_RATE_CONTROL_INFORMATION>)
    >('SetIoRateControlInformationJobObject');

/// Sets the last-error code for the calling thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/errhandlingapi/nf-errhandlingapi-setlasterror>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
void SetLastError(WIN32_ERROR dwErrCode) => _SetLastError(dwErrCode);

final _SetLastError = _kernel32
    .lookupFunction<Void Function(Uint32), void Function(int)>('SetLastError');

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
  resolveGetLastError();
  final result_ = _SetNamedPipeHandleState(
    hNamedPipe,
    lpMode ?? nullptr,
    lpMaxCollectionCount ?? nullptr,
    lpCollectDataTimeout ?? nullptr,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

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
  resolveGetLastError();
  final result_ = _SetProcessAffinityMask(hProcess, dwProcessAffinityMask);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetProcessAffinityMask = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, IntPtr),
      int Function(Pointer, int)
    >('SetProcessAffinityMask');

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
  resolveGetLastError();
  final result_ = _SetProcessPriorityBoost(
    hProcess,
    bDisablePriorityBoost ? TRUE : FALSE,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetProcessPriorityBoost = _kernel32
    .lookupFunction<Int32 Function(Pointer, Int32), int Function(Pointer, int)>(
      'SetProcessPriorityBoost',
    );

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
  resolveGetLastError();
  final result_ = _SetProcessWorkingSetSize(
    hProcess,
    dwMinimumWorkingSetSize,
    dwMaximumWorkingSetSize,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetProcessWorkingSetSize = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, IntPtr, IntPtr),
      int Function(Pointer, int, int)
    >('SetProcessWorkingSetSize');

/// Sets the handle for the specified standard device (standard input, standard
/// output, or standard error).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/setstdhandle>.
///
/// {@category kernel32}
Win32Result<bool> SetStdHandle(STD_HANDLE nStdHandle, HANDLE hHandle) {
  resolveGetLastError();
  final result_ = _SetStdHandle(nStdHandle, hHandle);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetStdHandle = _kernel32
    .lookupFunction<
      Int32 Function(Uint32, Pointer),
      int Function(int, Pointer)
    >('SetStdHandle');

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
  resolveGetLastError();
  final result_ = _SetThreadAffinityMask(hThread, dwThreadAffinityMask);
  return .new(value: result_, error: GetLastError());
}

final _SetThreadAffinityMask = _kernel32
    .lookupFunction<
      IntPtr Function(Pointer, IntPtr),
      int Function(Pointer, int)
    >('SetThreadAffinityMask');

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
  resolveGetLastError();
  final result_ = _SetThreadErrorMode(dwNewMode, lpOldMode ?? nullptr);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetThreadErrorMode = _kernel32
    .lookupFunction<
      Int32 Function(Uint32, Pointer<Uint32>),
      int Function(int, Pointer<Uint32>)
    >('SetThreadErrorMode');

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
    .new(_SetThreadExecutionState(esFlags));

final _SetThreadExecutionState = _kernel32
    .lookupFunction<Uint32 Function(Uint32), int Function(int)>(
      'SetThreadExecutionState',
    );

/// Sets the user interface language for the current thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winnls/nf-winnls-setthreaduilanguage>.
///
/// {@category kernel32}
Win32Result<int> SetThreadUILanguage(int langId) {
  resolveGetLastError();
  final result_ = _SetThreadUILanguage(langId);
  return .new(value: result_, error: GetLastError());
}

final _SetThreadUILanguage = _kernel32
    .lookupFunction<Uint16 Function(Uint16), int Function(int)>(
      'SetThreadUILanguage',
    );

/// Initializes the communications parameters for a specified communications
/// device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-setupcomm>.
///
/// {@category kernel32}
Win32Result<bool> SetupComm(HANDLE hFile, int dwInQueue, int dwOutQueue) {
  resolveGetLastError();
  final result_ = _SetupComm(hFile, dwInQueue, dwOutQueue);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetupComm = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Uint32),
      int Function(Pointer, int, int)
    >('SetupComm');

/// Sets the label of a file system volume.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-setvolumelabelw>.
///
/// {@category kernel32}
Win32Result<bool> SetVolumeLabel(PCWSTR? lpRootPathName, PCWSTR? lpVolumeName) {
  resolveGetLastError();
  final result_ = _SetVolumeLabel(
    lpRootPathName ?? nullptr,
    lpVolumeName ?? nullptr,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetVolumeLabel = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<Utf16>),
      int Function(Pointer<Utf16>, Pointer<Utf16>)
    >('SetVolumeLabelW');

/// Retrieves the size, in bytes, of the specified resource.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-sizeofresource>.
///
/// {@category kernel32}
Win32Result<int> SizeofResource(HMODULE? hModule, HRSRC hResInfo) {
  resolveGetLastError();
  final result_ = _SizeofResource(hModule ?? nullptr, hResInfo);
  return .new(value: result_, error: GetLastError());
}

final _SizeofResource = _kernel32
    .lookupFunction<
      Uint32 Function(Pointer, Pointer),
      int Function(Pointer, Pointer)
    >('SizeofResource');

/// Suspends the execution of the current thread until the time-out interval
/// elapses.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/synchapi/nf-synchapi-sleep>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
void Sleep(int dwMilliseconds) => _Sleep(dwMilliseconds);

final _Sleep = _kernel32
    .lookupFunction<Void Function(Uint32), void Function(int)>('Sleep');

/// Suspends the current thread until the specified condition is met.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/synchapi/nf-synchapi-sleepex>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
int SleepEx(int dwMilliseconds, bool bAlertable) =>
    _SleepEx(dwMilliseconds, bAlertable ? TRUE : FALSE);

final _SleepEx = _kernel32
    .lookupFunction<Uint32 Function(Uint32, Int32), int Function(int, int)>(
      'SleepEx',
    );

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
  resolveGetLastError();
  final result_ = _SystemTimeToFileTime(lpSystemTime, lpFileTime);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SystemTimeToFileTime = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<SYSTEMTIME>, Pointer<FILETIME>),
      int Function(Pointer<SYSTEMTIME>, Pointer<FILETIME>)
    >('SystemTimeToFileTime');

/// Terminates all processes currently associated with the job.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/jobapi2/nf-jobapi2-terminatejobobject>.
///
/// {@category kernel32}
Win32Result<bool> TerminateJobObject(HANDLE hJob, int uExitCode) {
  resolveGetLastError();
  final result_ = _TerminateJobObject(hJob, uExitCode);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _TerminateJobObject = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Uint32),
      int Function(Pointer, int)
    >('TerminateJobObject');

/// Terminates the specified process and all of its threads.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-terminateprocess>.
///
/// {@category kernel32}
Win32Result<bool> TerminateProcess(HANDLE hProcess, int uExitCode) {
  resolveGetLastError();
  final result_ = _TerminateProcess(hProcess, uExitCode);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _TerminateProcess = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Uint32),
      int Function(Pointer, int)
    >('TerminateProcess');

/// Terminates a thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-terminatethread>.
///
/// {@category kernel32}
Win32Result<bool> TerminateThread(HANDLE hThread, int dwExitCode) {
  resolveGetLastError();
  final result_ = _TerminateThread(hThread, dwExitCode);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _TerminateThread = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Uint32),
      int Function(Pointer, int)
    >('TerminateThread');

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
  resolveGetLastError();
  final result_ = _TransactNamedPipe(
    hNamedPipe,
    lpInBuffer ?? nullptr,
    nInBufferSize,
    lpOutBuffer ?? nullptr,
    nOutBufferSize,
    lpBytesRead,
    lpOverlapped ?? nullptr,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

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

/// Transmits a specified character ahead of any pending data in the output
/// buffer of the specified communications device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-transmitcommchar>.
///
/// {@category kernel32}
Win32Result<bool> TransmitCommChar(HANDLE hFile, CHAR cChar) {
  resolveGetLastError();
  final result_ = _TransmitCommChar(hFile, cChar);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _TransmitCommChar = _kernel32
    .lookupFunction<Int32 Function(Pointer, Int8), int Function(Pointer, int)>(
      'TransmitCommChar',
    );

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
  resolveGetLastError();
  final result_ = _UnlockFile(
    hFile,
    dwFileOffsetLow,
    dwFileOffsetHigh,
    nNumberOfBytesToUnlockLow,
    nNumberOfBytesToUnlockHigh,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _UnlockFile = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Uint32, Uint32, Uint32),
      int Function(Pointer, int, int, int, int)
    >('UnlockFile');

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
  resolveGetLastError();
  final result_ = _UnlockFileEx(
    hFile,
    NULL,
    nNumberOfBytesToUnlockLow,
    nNumberOfBytesToUnlockHigh,
    lpOverlapped,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _UnlockFileEx = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Uint32, Uint32, Pointer<OVERLAPPED>),
      int Function(Pointer, int, int, int, Pointer<OVERLAPPED>)
    >('UnlockFileEx');

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
  resolveGetLastError();
  final result_ = _UpdateProcThreadAttribute(
    lpAttributeList,
    dwFlags,
    attribute,
    lpValue ?? nullptr,
    cbSize,
    lpPreviousValue ?? nullptr,
    lpReturnSize ?? nullptr,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

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
  resolveGetLastError();
  final result_ = _UpdateResource(
    hUpdate,
    lpType,
    lpName,
    wLanguage,
    lpData ?? nullptr,
    cb,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

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
  resolveGetLastError();
  final result_ = _VerifyVersionInfo(
    lpVersionInformation,
    dwTypeMask,
    dwlConditionMask,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _VerifyVersionInfo = _kernel32
    .lookupFunction<
      Int32 Function(Pointer<OSVERSIONINFOEX>, Uint32, Uint64),
      int Function(Pointer<OSVERSIONINFOEX>, int, int)
    >('VerifyVersionInfoW');

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

final _VerLanguageName = _kernel32
    .lookupFunction<
      Uint32 Function(Uint32, Pointer<Utf16>, Uint32),
      int Function(int, Pointer<Utf16>, int)
    >('VerLanguageNameW');

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

final _VerSetConditionMask = _kernel32
    .lookupFunction<
      Uint64 Function(Uint64, Uint32, Uint8),
      int Function(int, int, int)
    >('VerSetConditionMask');

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
  resolveGetLastError();
  final result_ = _VirtualAlloc(
    lpAddress ?? nullptr,
    dwSize,
    flAllocationType,
    flProtect,
  );
  return .new(value: result_, error: GetLastError());
}

final _VirtualAlloc = _kernel32
    .lookupFunction<
      Pointer Function(Pointer, IntPtr, Uint32, Uint32),
      Pointer Function(Pointer, int, int, int)
    >('VirtualAlloc');

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
  resolveGetLastError();
  final result_ = _VirtualAllocEx(
    hProcess,
    lpAddress ?? nullptr,
    dwSize,
    flAllocationType,
    flProtect,
  );
  return .new(value: result_, error: GetLastError());
}

final _VirtualAllocEx = _kernel32
    .lookupFunction<
      Pointer Function(Pointer, Pointer, IntPtr, Uint32, Uint32),
      Pointer Function(Pointer, Pointer, int, int, int)
    >('VirtualAllocEx');

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
  resolveGetLastError();
  final result_ = _VirtualFree(lpAddress, dwSize, dwFreeType);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _VirtualFree = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, IntPtr, Uint32),
      int Function(Pointer, int, int)
    >('VirtualFree');

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
  resolveGetLastError();
  final result_ = _VirtualFreeEx(hProcess, lpAddress, dwSize, dwFreeType);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _VirtualFreeEx = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer, IntPtr, Uint32),
      int Function(Pointer, Pointer, int, int)
    >('VirtualFreeEx');

/// Locks the specified region of the process's virtual address space into
/// physical memory, ensuring that subsequent access to the region will not
/// incur a page fault.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/memoryapi/nf-memoryapi-virtuallock>.
///
/// {@category kernel32}
Win32Result<bool> VirtualLock(Pointer lpAddress, int dwSize) {
  resolveGetLastError();
  final result_ = _VirtualLock(lpAddress, dwSize);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _VirtualLock = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, IntPtr),
      int Function(Pointer, int)
    >('VirtualLock');

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
  resolveGetLastError();
  final result_ = _VirtualProtect(
    lpAddress,
    dwSize,
    flNewProtect,
    lpflOldProtect,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _VirtualProtect = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, IntPtr, Uint32, Pointer<Uint32>),
      int Function(Pointer, int, int, Pointer<Uint32>)
    >('VirtualProtect');

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
  resolveGetLastError();
  final result_ = _VirtualProtectEx(
    hProcess,
    lpAddress,
    dwSize,
    flNewProtect,
    lpflOldProtect,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _VirtualProtectEx = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer, IntPtr, Uint32, Pointer<Uint32>),
      int Function(Pointer, Pointer, int, int, Pointer<Uint32>)
    >('VirtualProtectEx');

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
  resolveGetLastError();
  final result_ = _VirtualQuery(lpAddress ?? nullptr, lpBuffer, dwLength);
  return .new(value: result_, error: GetLastError());
}

final _VirtualQuery = _kernel32
    .lookupFunction<
      IntPtr Function(Pointer, Pointer<MEMORY_BASIC_INFORMATION>, IntPtr),
      int Function(Pointer, Pointer<MEMORY_BASIC_INFORMATION>, int)
    >('VirtualQuery');

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
  resolveGetLastError();
  final result_ = _VirtualQueryEx(
    hProcess,
    lpAddress ?? nullptr,
    lpBuffer,
    dwLength,
  );
  return .new(value: result_, error: GetLastError());
}

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

/// Unlocks a specified range of pages in the virtual address space of a
/// process, enabling the system to swap the pages out to the paging file if
/// necessary.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/memoryapi/nf-memoryapi-virtualunlock>.
///
/// {@category kernel32}
Win32Result<bool> VirtualUnlock(Pointer lpAddress, int dwSize) {
  resolveGetLastError();
  final result_ = _VirtualUnlock(lpAddress, dwSize);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _VirtualUnlock = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, IntPtr),
      int Function(Pointer, int)
    >('VirtualUnlock');

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
  resolveGetLastError();
  final result_ = _WaitCommEvent(hFile, lpEvtMask, lpOverlapped ?? nullptr);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _WaitCommEvent = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Uint32>, Pointer<OVERLAPPED>),
      int Function(Pointer, Pointer<Uint32>, Pointer<OVERLAPPED>)
    >('WaitCommEvent');

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
  resolveGetLastError();
  final result_ = _WaitForMultipleObjects(
    nCount,
    lpHandles,
    bWaitAll ? TRUE : FALSE,
    dwMilliseconds,
  );
  return .new(value: .new(result_), error: GetLastError());
}

final _WaitForMultipleObjects = _kernel32
    .lookupFunction<
      Uint32 Function(Uint32, Pointer<Pointer>, Int32, Uint32),
      int Function(int, Pointer<Pointer>, int, int)
    >('WaitForMultipleObjects');

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
  resolveGetLastError();
  final result_ = _WaitForSingleObject(hHandle, dwMilliseconds);
  return .new(value: .new(result_), error: GetLastError());
}

final _WaitForSingleObject = _kernel32
    .lookupFunction<
      Uint32 Function(Pointer, Uint32),
      int Function(Pointer, int)
    >('WaitForSingleObject');

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
  resolveGetLastError();
  final result_ = _WideCharToMultiByte(
    codePage,
    dwFlags,
    lpWideCharStr,
    cchWideChar,
    lpMultiByteStr ?? nullptr,
    cbMultiByte,
    lpDefaultChar ?? nullptr,
    lpUsedDefaultChar ?? nullptr,
  );
  return .new(value: result_, error: GetLastError());
}

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

/// Suspends the specified WOW64 thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-wow64suspendthread>.
///
/// {@category kernel32}
Win32Result<int> Wow64SuspendThread(HANDLE hThread) {
  resolveGetLastError();
  final result_ = _Wow64SuspendThread(hThread);
  return .new(value: result_, error: GetLastError());
}

final _Wow64SuspendThread = _kernel32
    .lookupFunction<Uint32 Function(Pointer), int Function(Pointer)>(
      'Wow64SuspendThread',
    );

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
  resolveGetLastError();
  final result_ = _WriteConsole(
    hConsoleOutput,
    lpBuffer,
    nNumberOfCharsToWrite,
    lpNumberOfCharsWritten ?? nullptr,
    nullptr,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _WriteConsole = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Utf16>, Uint32, Pointer<Uint32>, Pointer),
      int Function(Pointer, Pointer<Utf16>, int, Pointer<Uint32>, Pointer)
    >('WriteConsoleW');

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
  resolveGetLastError();
  final result_ = _WriteFile(
    hFile,
    lpBuffer ?? nullptr,
    nNumberOfBytesToWrite,
    lpNumberOfBytesWritten ?? nullptr,
    lpOverlapped ?? nullptr,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

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
  resolveGetLastError();
  final result_ = _WriteFileEx(
    hFile,
    lpBuffer ?? nullptr,
    nNumberOfBytesToWrite,
    lpOverlapped,
    lpCompletionRoutine,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

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
  resolveGetLastError();
  final result_ = _WriteFileGather(
    hFile,
    aSegmentArray,
    nNumberOfBytesToWrite,
    nullptr,
    lpOverlapped,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

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
  resolveGetLastError();
  final result_ = _WriteProcessMemory(
    hProcess,
    lpBaseAddress,
    lpBuffer,
    nSize,
    lpNumberOfBytesWritten ?? nullptr,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _WriteProcessMemory = _kernel32
    .lookupFunction<
      Int32 Function(Pointer, Pointer, Pointer, IntPtr, Pointer<IntPtr>),
      int Function(Pointer, Pointer, Pointer, int, Pointer<IntPtr>)
    >('WriteProcessMemory');
