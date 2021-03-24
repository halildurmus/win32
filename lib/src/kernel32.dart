// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'callbacks.dart';
import 'combase.dart';
import 'structs.dart';
import 'structs.g.dart';

final _kernel32 = DynamicLibrary.open('kernel32.dll');

/// The ActivateActCtx function activates the specified activation context.
/// It does this by pushing the specified activation context to the top of
/// the activation stack. The specified activation context is thus
/// associated with the current thread and any appropriate side-by-side API
/// functions.
///
/// ```c
/// BOOL ActivateActCtx(
///   HANDLE    hActCtx,
///   ULONG_PTR *lpCookie
/// );
/// ```
/// {@category kernel32}
int ActivateActCtx(int hActCtx, Pointer<IntPtr> lpCookie) {
  final _ActivateActCtx = _kernel32.lookupFunction<
      Int32 Function(IntPtr hActCtx, Pointer<IntPtr> lpCookie),
      int Function(int hActCtx, Pointer<IntPtr> lpCookie)>('ActivateActCtx');
  return _ActivateActCtx(hActCtx, lpCookie);
}

/// The AddRefActCtx function increments the reference count of the
/// specified activation context.
///
/// ```c
/// void AddRefActCtx(
///   HANDLE hActCtx
/// );
/// ```
/// {@category kernel32}
void AddRefActCtx(int hActCtx) {
  final _AddRefActCtx = _kernel32.lookupFunction<Void Function(IntPtr hActCtx),
      void Function(int hActCtx)>('AddRefActCtx');
  return _AddRefActCtx(hActCtx);
}

/// Allocates a new console for the calling process.
///
/// ```c
/// BOOL WINAPI AllocConsole(void);
/// ```
/// {@category kernel32}
int AllocConsole() {
  final _AllocConsole = _kernel32
      .lookupFunction<Int32 Function(), int Function()>('AllocConsole');
  return _AllocConsole();
}

/// Attaches the calling process to the console of the specified process.
///
/// ```c
/// BOOL WINAPI AttachConsole(
///   _In_ DWORD dwProcessId
/// );
/// ```
/// {@category kernel32}
int AttachConsole(int dwProcessId) {
  final _AttachConsole = _kernel32.lookupFunction<
      Int32 Function(Uint32 dwProcessId),
      int Function(int dwProcessId)>('AttachConsole');
  return _AttachConsole(dwProcessId);
}

/// Generates simple tones on the speaker. The function is synchronous; it
/// performs an alertable wait and does not return control to its caller
/// until the sound finishes.
///
/// ```c
/// BOOL Beep(
///   DWORD dwFreq,
///   DWORD dwDuration
/// );
/// ```
/// {@category kernel32}
int Beep(int dwFreq, int dwDuration) {
  final _Beep = _kernel32.lookupFunction<
      Int32 Function(Uint32 dwFreq, Uint32 dwDuration),
      int Function(int dwFreq, int dwDuration)>('Beep');
  return _Beep(dwFreq, dwDuration);
}

/// Retrieves a handle that can be used by the UpdateResource function to
/// add, delete, or replace resources in a binary module.
///
/// ```c
/// HANDLE BeginUpdateResourceW(
///   LPCWSTR pFileName,
///   BOOL    bDeleteExistingResources
/// );
/// ```
/// {@category kernel32}
int BeginUpdateResource(
    Pointer<Utf16> pFileName, int bDeleteExistingResources) {
  final _BeginUpdateResource = _kernel32.lookupFunction<
      IntPtr Function(Pointer<Utf16> pFileName, Int32 bDeleteExistingResources),
      int Function(Pointer<Utf16> pFileName,
          int bDeleteExistingResources)>('BeginUpdateResourceW');
  return _BeginUpdateResource(pFileName, bDeleteExistingResources);
}

/// Determines whether the specified process is being debugged.
///
/// ```c
/// BOOL CheckRemoteDebuggerPresent(
///   HANDLE hProcess,
///   PBOOL  pbDebuggerPresent
///       );
/// ```
/// {@category kernel32}
int CheckRemoteDebuggerPresent(int hProcess, Pointer<Int32> pbDebuggerPresent) {
  final _CheckRemoteDebuggerPresent = _kernel32.lookupFunction<
      Int32 Function(IntPtr hProcess, Pointer<Int32> pbDebuggerPresent),
      int Function(int hProcess,
          Pointer<Int32> pbDebuggerPresent)>('CheckRemoteDebuggerPresent');
  return _CheckRemoteDebuggerPresent(hProcess, pbDebuggerPresent);
}

/// Closes an open object handle.
///
/// ```c
/// BOOL CloseHandle(
///   HANDLE hObject
/// );
/// ```
/// {@category kernel32}
int CloseHandle(int hObject) {
  final _CloseHandle = _kernel32.lookupFunction<Int32 Function(IntPtr hObject),
      int Function(int hObject)>('CloseHandle');
  return _CloseHandle(hObject);
}

/// Closes a pseudoconsole from the given handle.
///
/// ```c
/// void WINAPI ClosePseudoConsole(
///   _In_ HPCON hPC
/// );
/// ```
/// {@category kernel32}
void ClosePseudoConsole(int hPC) {
  final _ClosePseudoConsole = _kernel32.lookupFunction<
      Void Function(IntPtr hPC), void Function(int hPC)>('ClosePseudoConsole');
  return _ClosePseudoConsole(hPC);
}

/// Enables a named pipe server process to wait for a client process to
/// connect to an instance of a named pipe. A client process connects by
/// calling either the CreateFile or CallNamedPipe function.
///
/// ```c
/// BOOL ConnectNamedPipe(
///   HANDLE       hNamedPipe,
///   LPOVERLAPPED lpOverlapped);
/// ```
/// {@category kernel32}
int ConnectNamedPipe(int hNamedPipe, Pointer<OVERLAPPED> lpOverlapped) {
  final _ConnectNamedPipe = _kernel32.lookupFunction<
      Int32 Function(IntPtr hNamedPipe, Pointer<OVERLAPPED> lpOverlapped),
      int Function(int hNamedPipe,
          Pointer<OVERLAPPED> lpOverlapped)>('ConnectNamedPipe');
  return _ConnectNamedPipe(hNamedPipe, lpOverlapped);
}

/// Enables a debugger to continue a thread that previously reported a
/// debugging event.
///
/// ```c
/// BOOL ContinueDebugEvent(
///   DWORD dwProcessId,
///   DWORD dwThreadId,
///   DWORD dwContinueStatus
/// );
/// ```
/// {@category kernel32}
int ContinueDebugEvent(int dwProcessId, int dwThreadId, int dwContinueStatus) {
  final _ContinueDebugEvent = _kernel32.lookupFunction<
      Int32 Function(
          Uint32 dwProcessId, Uint32 dwThreadId, Uint32 dwContinueStatus),
      int Function(int dwProcessId, int dwThreadId,
          int dwContinueStatus)>('ContinueDebugEvent');
  return _ContinueDebugEvent(dwProcessId, dwThreadId, dwContinueStatus);
}

/// The CreateActCtx function creates an activation context.
///
/// ```c
/// HANDLE CreateActCtxW(
///   PCACTCTXW pActCtx
/// );
/// ```
/// {@category kernel32}
int CreateActCtx(Pointer<ACTCTX> pActCtx) {
  final _CreateActCtx = _kernel32.lookupFunction<
      IntPtr Function(Pointer<ACTCTX> pActCtx),
      int Function(Pointer<ACTCTX> pActCtx)>('CreateActCtxW');
  return _CreateActCtx(pActCtx);
}

/// Creates a console screen buffer.
///
/// ```c
/// HANDLE WINAPI CreateConsoleScreenBuffer(
///   _In_             DWORD               dwDesiredAccess,
///   _In_             DWORD               dwShareMode,
///   _In_opt_   const SECURITY_ATTRIBUTES *lpSecurityAttributes,
///   _In_             DWORD               dwFlags,
///   _Reserved_       LPVOID              lpScreenBufferData
/// );
/// ```
/// {@category kernel32}
int CreateConsoleScreenBuffer(
    int dwDesiredAccess,
    int dwShareMode,
    Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
    int dwFlags,
    Pointer lpScreenBufferData) {
  final _CreateConsoleScreenBuffer = _kernel32.lookupFunction<
      IntPtr Function(
          Uint32 dwDesiredAccess,
          Uint32 dwShareMode,
          Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
          Uint32 dwFlags,
          Pointer lpScreenBufferData),
      int Function(
          int dwDesiredAccess,
          int dwShareMode,
          Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
          int dwFlags,
          Pointer lpScreenBufferData)>('CreateConsoleScreenBuffer');
  return _CreateConsoleScreenBuffer(dwDesiredAccess, dwShareMode,
      lpSecurityAttributes, dwFlags, lpScreenBufferData);
}

/// Creates a new directory. If the underlying file system supports
/// security on files and directories, the function applies a specified
/// security descriptor to the new directory.
///
/// ```c
/// BOOL CreateDirectoryW(
///   LPCWSTR               lpPathName,
///   LPSECURITY_ATTRIBUTES lpSecurityAttributes
/// );
/// ```
/// {@category kernel32}
int CreateDirectory(Pointer<Utf16> lpPathName,
    Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes) {
  final _CreateDirectory = _kernel32.lookupFunction<
          Int32 Function(Pointer<Utf16> lpPathName,
              Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes),
          int Function(Pointer<Utf16> lpPathName,
              Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes)>(
      'CreateDirectoryW');
  return _CreateDirectory(lpPathName, lpSecurityAttributes);
}

/// Creates or opens a file or I/O device. The most commonly used I/O
/// devices are as follows: file, file stream, directory, physical disk,
/// volume, console buffer, tape drive, communications resource, mailslot,
/// and pipe. The function returns a handle that can be used to access the
/// file or device for various types of I/O depending on the file or device
/// and the flags and attributes specified.
///
/// ```c
/// HANDLE CreateFileW(
///   LPCWSTR               lpFileName,
///   DWORD                 dwDesiredAccess,
///   DWORD                 dwShareMode,
///   LPSECURITY_ATTRIBUTES lpSecurityAttributes,
///   DWORD                 dwCreationDisposition,
///   DWORD                 dwFlagsAndAttributes,
///   HANDLE                hTemplateFile
/// );
/// ```
/// {@category kernel32}
int CreateFile(
    Pointer<Utf16> lpFileName,
    int dwDesiredAccess,
    int dwShareMode,
    Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
    int dwCreationDisposition,
    int dwFlagsAndAttributes,
    int hTemplateFile) {
  final _CreateFile = _kernel32.lookupFunction<
      IntPtr Function(
          Pointer<Utf16> lpFileName,
          Uint32 dwDesiredAccess,
          Uint32 dwShareMode,
          Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
          Uint32 dwCreationDisposition,
          Uint32 dwFlagsAndAttributes,
          IntPtr hTemplateFile),
      int Function(
          Pointer<Utf16> lpFileName,
          int dwDesiredAccess,
          int dwShareMode,
          Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
          int dwCreationDisposition,
          int dwFlagsAndAttributes,
          int hTemplateFile)>('CreateFileW');
  return _CreateFile(
      lpFileName,
      dwDesiredAccess,
      dwShareMode,
      lpSecurityAttributes,
      dwCreationDisposition,
      dwFlagsAndAttributes,
      hTemplateFile);
}

/// Creates an instance of a named pipe and returns a handle for subsequent
/// pipe operations. A named pipe server process uses this function either
/// to create the first instance of a specific named pipe and establish its
/// basic attributes or to create a new instance of an existing named pipe.
///
/// ```c
/// HANDLE CreateNamedPipeW(
///   LPCWSTR                lpName,
///   DWORD                 dwOpenMode,
///   DWORD                 dwPipeMode,
///   DWORD                 nMaxInstances,
///   DWORD                 nOutBufferSize,
///   DWORD                 nInBufferSize,
///   DWORD                 nDefaultTimeOut,
///   LPSECURITY_ATTRIBUTES lpSecurityAttributes);
/// ```
/// {@category kernel32}
int CreateNamedPipe(
    Pointer<Utf16> lpName,
    int dwOpenMode,
    int dwPipeMode,
    int nMaxInstances,
    int nOutBufferSize,
    int nInBufferSize,
    int nDefaultTimeOut,
    Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes) {
  final _CreateNamedPipe = _kernel32.lookupFunction<
          IntPtr Function(
              Pointer<Utf16> lpName,
              Uint32 dwOpenMode,
              Uint32 dwPipeMode,
              Uint32 nMaxInstances,
              Uint32 nOutBufferSize,
              Uint32 nInBufferSize,
              Uint32 nDefaultTimeOut,
              Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes),
          int Function(
              Pointer<Utf16> lpName,
              int dwOpenMode,
              int dwPipeMode,
              int nMaxInstances,
              int nOutBufferSize,
              int nInBufferSize,
              int nDefaultTimeOut,
              Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes)>(
      'CreateNamedPipeW');
  return _CreateNamedPipe(lpName, dwOpenMode, dwPipeMode, nMaxInstances,
      nOutBufferSize, nInBufferSize, nDefaultTimeOut, lpSecurityAttributes);
}

/// Creates an anonymous pipe, and returns handles to the read and write
/// ends of the pipe.
///
/// ```c
/// BOOL CreatePipe(
///   PHANDLE               hReadPipe,
///   PHANDLE               hWritePipe,
///   LPSECURITY_ATTRIBUTES lpPipeAttributes,
///   DWORD                 nSize
/// );
/// ```
/// {@category kernel32}
int CreatePipe(Pointer<IntPtr> hReadPipe, Pointer<IntPtr> hWritePipe,
    Pointer<SECURITY_ATTRIBUTES> lpPipeAttributes, int nSize) {
  final _CreatePipe = _kernel32.lookupFunction<
      Int32 Function(Pointer<IntPtr> hReadPipe, Pointer<IntPtr> hWritePipe,
          Pointer<SECURITY_ATTRIBUTES> lpPipeAttributes, Uint32 nSize),
      int Function(
          Pointer<IntPtr> hReadPipe,
          Pointer<IntPtr> hWritePipe,
          Pointer<SECURITY_ATTRIBUTES> lpPipeAttributes,
          int nSize)>('CreatePipe');
  return _CreatePipe(hReadPipe, hWritePipe, lpPipeAttributes, nSize);
}

/// Creates a new process and its primary thread. The new process runs in
/// the security context of the calling process.
///
/// ```c
/// BOOL CreateProcessW(
///   LPCWSTR               lpApplicationName,
///   LPWSTR                lpCommandLine,
///   LPSECURITY_ATTRIBUTES lpProcessAttributes,
///   LPSECURITY_ATTRIBUTES lpThreadAttributes,
///   BOOL                  bInheritHandles,
///   DWORD                 dwCreationFlags,
///   LPVOID                lpEnvironment,
///   LPCWSTR               lpCurrentDirectory,
///   LPSTARTUPINFOW        lpStartupInfo,
///   LPPROCESS_INFORMATION lpProcessInformation
/// );
/// ```
/// {@category kernel32}
int CreateProcess(
    Pointer<Utf16> lpApplicationName,
    Pointer<Utf16> lpCommandLine,
    Pointer<SECURITY_ATTRIBUTES> lpProcessAttributes,
    Pointer<SECURITY_ATTRIBUTES> lpThreadAttributes,
    int bInheritHandles,
    int dwCreationFlags,
    Pointer lpEnvironment,
    Pointer<Utf16> lpCurrentDirectory,
    Pointer<STARTUPINFO> lpStartupInfo,
    Pointer<PROCESS_INFORMATION> lpProcessInformation) {
  final _CreateProcess = _kernel32.lookupFunction<
      Int32 Function(
          Pointer<Utf16> lpApplicationName,
          Pointer<Utf16> lpCommandLine,
          Pointer<SECURITY_ATTRIBUTES> lpProcessAttributes,
          Pointer<SECURITY_ATTRIBUTES> lpThreadAttributes,
          Int32 bInheritHandles,
          Uint32 dwCreationFlags,
          Pointer lpEnvironment,
          Pointer<Utf16> lpCurrentDirectory,
          Pointer<STARTUPINFO> lpStartupInfo,
          Pointer<PROCESS_INFORMATION> lpProcessInformation),
      int Function(
          Pointer<Utf16> lpApplicationName,
          Pointer<Utf16> lpCommandLine,
          Pointer<SECURITY_ATTRIBUTES> lpProcessAttributes,
          Pointer<SECURITY_ATTRIBUTES> lpThreadAttributes,
          int bInheritHandles,
          int dwCreationFlags,
          Pointer lpEnvironment,
          Pointer<Utf16> lpCurrentDirectory,
          Pointer<STARTUPINFO> lpStartupInfo,
          Pointer<PROCESS_INFORMATION> lpProcessInformation)>('CreateProcessW');
  return _CreateProcess(
      lpApplicationName,
      lpCommandLine,
      lpProcessAttributes,
      lpThreadAttributes,
      bInheritHandles,
      dwCreationFlags,
      lpEnvironment,
      lpCurrentDirectory,
      lpStartupInfo,
      lpProcessInformation);
}

/// Creates a new pseudoconsole object for the calling process.
///
/// ```c
/// HRESULT WINAPI CreatePseudoConsole(
///   _In_ COORD size,
///   _In_ HANDLE hInput,
///   _In_ HANDLE hOutput,
///   _In_ DWORD dwFlags,
///   _Out_ HPCON* phPC
/// );
/// ```
/// {@category kernel32}
int CreatePseudoConsole(
    COORD size, int hInput, int hOutput, int dwFlags, Pointer<IntPtr> phPC) {
  final _CreatePseudoConsole = _kernel32.lookupFunction<
      Int32 Function(COORD size, IntPtr hInput, IntPtr hOutput, Uint32 dwFlags,
          Pointer<IntPtr> phPC),
      int Function(COORD size, int hInput, int hOutput, int dwFlags,
          Pointer<IntPtr> phPC)>('CreatePseudoConsole');
  return _CreatePseudoConsole(size, hInput, hOutput, dwFlags, phPC);
}

/// The DeactivateActCtx function deactivates the activation context
/// corresponding to the specified cookie.
///
/// ```c
/// BOOL DeactivateActCtx(
///   DWORD     dwFlags,
///   ULONG_PTR ulCookie
/// );
/// ```
/// {@category kernel32}
int DeactivateActCtx(int dwFlags, int ulCookie) {
  final _DeactivateActCtx = _kernel32.lookupFunction<
      Int32 Function(Uint32 dwFlags, IntPtr ulCookie),
      int Function(int dwFlags, int ulCookie)>('DeactivateActCtx');
  return _DeactivateActCtx(dwFlags, ulCookie);
}

/// Causes a breakpoint exception to occur in the current process. This
/// allows the calling thread to signal the debugger to handle the
/// exception.
///
/// ```c
/// void DebugBreak();
/// ```
/// {@category kernel32}
void DebugBreak() {
  final _DebugBreak =
      _kernel32.lookupFunction<Void Function(), void Function()>('DebugBreak');
  return _DebugBreak();
}

/// Causes a breakpoint exception to occur in the specified process. This
/// allows the calling thread to signal the debugger to handle the
/// exception.
///
/// ```c
/// BOOL DebugBreakProcess(
///   HANDLE Process
/// );
/// ```
/// {@category kernel32}
int DebugBreakProcess(int Process) {
  final _DebugBreakProcess = _kernel32.lookupFunction<
      Int32 Function(IntPtr Process),
      int Function(int Process)>('DebugBreakProcess');
  return _DebugBreakProcess(Process);
}

/// Sets the action to be performed when the calling thread exits.
///
/// ```c
/// BOOL DebugSetProcessKillOnExit(
///   BOOL KillOnExit
/// );
/// ```
/// {@category kernel32}
int DebugSetProcessKillOnExit(int KillOnExit) {
  final _DebugSetProcessKillOnExit = _kernel32.lookupFunction<
      Int32 Function(Int32 KillOnExit),
      int Function(int KillOnExit)>('DebugSetProcessKillOnExit');
  return _DebugSetProcessKillOnExit(KillOnExit);
}

/// Deletes an existing file.
///
/// ```c
/// BOOL DeleteFileW(
///   LPCWSTR lpFileName
/// );
/// ```
/// {@category kernel32}
int DeleteFile(Pointer<Utf16> lpFileName) {
  final _DeleteFile = _kernel32.lookupFunction<
      Int32 Function(Pointer<Utf16> lpFileName),
      int Function(Pointer<Utf16> lpFileName)>('DeleteFileW');
  return _DeleteFile(lpFileName);
}

/// Disconnects the server end of a named pipe instance from a client
/// process.
///
/// ```c
/// BOOL DisconnectNamedPipe(
///   HANDLE hNamedPipe);
/// ```
/// {@category kernel32}
int DisconnectNamedPipe(int hNamedPipe) {
  final _DisconnectNamedPipe = _kernel32.lookupFunction<
      Int32 Function(IntPtr hNamedPipe),
      int Function(int hNamedPipe)>('DisconnectNamedPipe');
  return _DisconnectNamedPipe(hNamedPipe);
}

/// Converts a DNS-style host name to a NetBIOS-style computer name.
///
/// ```c
/// BOOL DnsHostnameToComputerNameW(
///   LPCWSTR Hostname,
///   LPWSTR  ComputerName,
///   LPDWORD nSize
/// );
/// ```
/// {@category kernel32}
int DnsHostnameToComputerName(Pointer<Utf16> Hostname,
    Pointer<Utf16> ComputerName, Pointer<Uint32> nSize) {
  final _DnsHostnameToComputerName = _kernel32.lookupFunction<
      Int32 Function(Pointer<Utf16> Hostname, Pointer<Utf16> ComputerName,
          Pointer<Uint32> nSize),
      int Function(Pointer<Utf16> Hostname, Pointer<Utf16> ComputerName,
          Pointer<Uint32> nSize)>('DnsHostnameToComputerNameW');
  return _DnsHostnameToComputerName(Hostname, ComputerName, nSize);
}

/// Converts MS-DOS date and time values to a file time.
///
/// ```c
/// BOOL DosDateTimeToFileTime(
///   WORD       wFatDate,
///   WORD       wFatTime,
///   LPFILETIME lpFileTime
/// );
/// ```
/// {@category kernel32}
int DosDateTimeToFileTime(
    int wFatDate, int wFatTime, Pointer<FILETIME> lpFileTime) {
  final _DosDateTimeToFileTime = _kernel32.lookupFunction<
      Int32 Function(
          Uint16 wFatDate, Uint16 wFatTime, Pointer<FILETIME> lpFileTime),
      int Function(int wFatDate, int wFatTime,
          Pointer<FILETIME> lpFileTime)>('DosDateTimeToFileTime');
  return _DosDateTimeToFileTime(wFatDate, wFatTime, lpFileTime);
}

/// Duplicates an object handle.
///
/// ```c
/// BOOL DuplicateHandle(
///   HANDLE   hSourceProcessHandle,
///   HANDLE   hSourceHandle,
///   HANDLE   hTargetProcessHandle,
///   LPHANDLE lpTargetHandle,
///   DWORD    dwDesiredAccess,
///   BOOL     bInheritHandle,
///   DWORD    dwOptions
/// );
/// ```
/// {@category kernel32}
int DuplicateHandle(
    int hSourceProcessHandle,
    int hSourceHandle,
    int hTargetProcessHandle,
    Pointer<IntPtr> lpTargetHandle,
    int dwDesiredAccess,
    int bInheritHandle,
    int dwOptions) {
  final _DuplicateHandle = _kernel32.lookupFunction<
      Int32 Function(
          IntPtr hSourceProcessHandle,
          IntPtr hSourceHandle,
          IntPtr hTargetProcessHandle,
          Pointer<IntPtr> lpTargetHandle,
          Uint32 dwDesiredAccess,
          Int32 bInheritHandle,
          Uint32 dwOptions),
      int Function(
          int hSourceProcessHandle,
          int hSourceHandle,
          int hTargetProcessHandle,
          Pointer<IntPtr> lpTargetHandle,
          int dwDesiredAccess,
          int bInheritHandle,
          int dwOptions)>('DuplicateHandle');
  return _DuplicateHandle(
      hSourceProcessHandle,
      hSourceHandle,
      hTargetProcessHandle,
      lpTargetHandle,
      dwDesiredAccess,
      bInheritHandle,
      dwOptions);
}

/// Commits or discards changes made prior to a call to UpdateResource.
///
/// ```c
/// BOOL EndUpdateResourceW(
///   HANDLE hUpdate,
///   BOOL   fDiscard
/// );
/// ```
/// {@category kernel32}
int EndUpdateResource(int hUpdate, int fDiscard) {
  final _EndUpdateResource = _kernel32.lookupFunction<
      Int32 Function(IntPtr hUpdate, Int32 fDiscard),
      int Function(int hUpdate, int fDiscard)>('EndUpdateResourceW');
  return _EndUpdateResource(hUpdate, fDiscard);
}

/// Retrieves the process identifier for each process object in the system.
///
/// ```c
/// BOOL K32EnumProcesses(
///   DWORD   *lpidProcess,
///   DWORD   cb,
///   LPDWORD lpcbNeeded
/// );
/// ```
/// {@category kernel32}
int EnumProcesses(
    Pointer<Uint32> lpidProcess, int cb, Pointer<Uint32> lpcbNeeded) {
  final _EnumProcesses = _kernel32.lookupFunction<
      Int32 Function(
          Pointer<Uint32> lpidProcess, Uint32 cb, Pointer<Uint32> lpcbNeeded),
      int Function(Pointer<Uint32> lpidProcess, int cb,
          Pointer<Uint32> lpcbNeeded)>('K32EnumProcesses');
  return _EnumProcesses(lpidProcess, cb, lpcbNeeded);
}

/// Retrieves a handle for each module in the specified process.
///
/// ```c
/// BOOL K32EnumProcessModules(
///   HANDLE  hProcess,
///   HMODULE *lphModule,
///   DWORD   cb,
///   LPDWORD lpcbNeeded
/// );
/// ```
/// {@category kernel32}
int EnumProcessModules(int hProcess, Pointer<IntPtr> lphModule, int cb,
    Pointer<Uint32> lpcbNeeded) {
  final _EnumProcessModules = _kernel32.lookupFunction<
      Int32 Function(IntPtr hProcess, Pointer<IntPtr> lphModule, Uint32 cb,
          Pointer<Uint32> lpcbNeeded),
      int Function(int hProcess, Pointer<IntPtr> lphModule, int cb,
          Pointer<Uint32> lpcbNeeded)>('K32EnumProcessModules');
  return _EnumProcessModules(hProcess, lphModule, cb, lpcbNeeded);
}

/// Retrieves a handle for each module in the specified process that meets
/// the specified filter criteria.
///
/// ```c
/// BOOL K32EnumProcessModulesEx(
///   HANDLE  hProcess,
///   HMODULE *lphModule,
///   DWORD   cb,
///   LPDWORD lpcbNeeded,
///   DWORD   dwFilterFlag
/// );
/// ```
/// {@category kernel32}
int EnumProcessModulesEx(int hProcess, Pointer<IntPtr> lphModule, int cb,
    Pointer<Uint32> lpcbNeeded, int dwFilterFlag) {
  final _EnumProcessModulesEx = _kernel32.lookupFunction<
      Int32 Function(IntPtr hProcess, Pointer<IntPtr> lphModule, Uint32 cb,
          Pointer<Uint32> lpcbNeeded, Uint32 dwFilterFlag),
      int Function(
          int hProcess,
          Pointer<IntPtr> lphModule,
          int cb,
          Pointer<Uint32> lpcbNeeded,
          int dwFilterFlag)>('K32EnumProcessModulesEx');
  return _EnumProcessModulesEx(
      hProcess, lphModule, cb, lpcbNeeded, dwFilterFlag);
}

/// Enumerates resources of a specified type within a binary module. For
/// Windows Vista and later, this is typically a language-neutral Portable
/// Executable (LN file), and the enumeration will also include resources
/// from the corresponding language-specific resource files (.mui files)
/// that contain localizable language resources. It is also possible for
/// hModule to specify an .mui file, in which case only that file is
/// searched for resources.
///
/// ```c
/// BOOL EnumResourceNamesW(
///   HMODULE          hModule,
///   LPCWSTR          lpType,
///   ENUMRESNAMEPROCW lpEnumFunc,
///   LONG_PTR         lParam
/// );
/// ```
/// {@category kernel32}
int EnumResourceNames(int hModule, Pointer<Utf16> lpType,
    Pointer<NativeFunction<EnumResNameProc>> lpEnumFunc, int lParam) {
  final _EnumResourceNames = _kernel32.lookupFunction<
      Int32 Function(IntPtr hModule, Pointer<Utf16> lpType,
          Pointer<NativeFunction<EnumResNameProc>> lpEnumFunc, IntPtr lParam),
      int Function(
          int hModule,
          Pointer<Utf16> lpType,
          Pointer<NativeFunction<EnumResNameProc>> lpEnumFunc,
          int lParam)>('EnumResourceNamesW');
  return _EnumResourceNames(hModule, lpType, lpEnumFunc, lParam);
}

/// Enumerates resource types within a binary module. Starting with Windows
/// Vista, this is typically a language-neutral Portable Executable (LN
/// file), and the enumeration also includes resources from one of the
/// corresponding language-specific resource files (.mui files)—if one
/// exists—that contain localizable language resources. It is also possible
/// to use hModule to specify a .mui file, in which case only that file is
/// searched for resource types.
///
/// ```c
/// BOOL EnumResourceTypesW(
///   HMODULE          hModule,
///   ENUMRESTYPEPROCW lpEnumFunc,
///   LONG_PTR         lParam
/// );
/// ```
/// {@category kernel32}
int EnumResourceTypes(int hModule,
    Pointer<NativeFunction<EnumResTypeProc>> lpEnumFunc, int lParam) {
  final _EnumResourceTypes = _kernel32.lookupFunction<
      Int32 Function(IntPtr hModule,
          Pointer<NativeFunction<EnumResTypeProc>> lpEnumFunc, IntPtr lParam),
      int Function(
          int hModule,
          Pointer<NativeFunction<EnumResTypeProc>> lpEnumFunc,
          int lParam)>('EnumResourceTypesW');
  return _EnumResourceTypes(hModule, lpEnumFunc, lParam);
}

/// Ends the calling process and all its threads.
///
/// ```c
/// void ExitProcess(
///   UINT uExitCode
/// );
/// ```
/// {@category kernel32}
void ExitProcess(int uExitCode) {
  final _ExitProcess = _kernel32.lookupFunction<Void Function(Uint32 uExitCode),
      void Function(int uExitCode)>('ExitProcess');
  return _ExitProcess(uExitCode);
}

/// Converts a file time to MS-DOS date and time values.
///
/// ```c
/// BOOL FileTimeToDosDateTime(
///   const FILETIME *lpFileTime,
///   LPWORD         lpFatDate,
///   LPWORD         lpFatTime
/// );
/// ```
/// {@category kernel32}
int FileTimeToDosDateTime(Pointer<FILETIME> lpFileTime,
    Pointer<Uint16> lpFatDate, Pointer<Uint16> lpFatTime) {
  final _FileTimeToDosDateTime = _kernel32.lookupFunction<
      Int32 Function(Pointer<FILETIME> lpFileTime, Pointer<Uint16> lpFatDate,
          Pointer<Uint16> lpFatTime),
      int Function(Pointer<FILETIME> lpFileTime, Pointer<Uint16> lpFatDate,
          Pointer<Uint16> lpFatTime)>('FileTimeToDosDateTime');
  return _FileTimeToDosDateTime(lpFileTime, lpFatDate, lpFatTime);
}

/// Sets the character attributes for a specified number of character
/// cells, beginning at the specified coordinates in a screen buffer.
///
/// ```c
/// BOOL WINAPI FillConsoleOutputAttribute(
///   _In_  HANDLE  hConsoleOutput,
///   _In_  WORD    wAttribute,
///   _In_  DWORD   nLength,
///   _In_  COORD   dwWriteCoord,
///   _Out_ LPDWORD lpNumberOfAttrsWritten
/// );
/// ```
/// {@category kernel32}
int FillConsoleOutputAttribute(int hConsoleOutput, int wAttribute, int nLength,
    COORD dwWriteCoord, Pointer<Uint32> lpNumberOfAttrsWritten) {
  final _FillConsoleOutputAttribute = _kernel32.lookupFunction<
      Int32 Function(IntPtr hConsoleOutput, Uint16 wAttribute, Uint32 nLength,
          COORD dwWriteCoord, Pointer<Uint32> lpNumberOfAttrsWritten),
      int Function(
          int hConsoleOutput,
          int wAttribute,
          int nLength,
          COORD dwWriteCoord,
          Pointer<Uint32>
              lpNumberOfAttrsWritten)>('FillConsoleOutputAttribute');
  return _FillConsoleOutputAttribute(hConsoleOutput, wAttribute, nLength,
      dwWriteCoord, lpNumberOfAttrsWritten);
}

/// Writes a character to the console screen buffer a specified number of
/// times, beginning at the specified coordinates.
///
/// ```c
/// BOOL WINAPI FillConsoleOutputCharacterW(
///   _In_  HANDLE  hConsoleOutput,
///   _In_  TCHAR   cCharacter,
///   _In_  DWORD   nLength,
///   _In_  COORD   dwWriteCoord,
///   _Out_ LPDWORD lpNumberOfCharsWritten
/// );
/// ```
/// {@category kernel32}
int FillConsoleOutputCharacter(int hConsoleOutput, int cCharacter, int nLength,
    COORD dwWriteCoord, Pointer<Uint32> lpNumberOfCharsWritten) {
  final _FillConsoleOutputCharacter = _kernel32.lookupFunction<
      Int32 Function(IntPtr hConsoleOutput, Uint16 cCharacter, Uint32 nLength,
          COORD dwWriteCoord, Pointer<Uint32> lpNumberOfCharsWritten),
      int Function(
          int hConsoleOutput,
          int cCharacter,
          int nLength,
          COORD dwWriteCoord,
          Pointer<Uint32>
              lpNumberOfCharsWritten)>('FillConsoleOutputCharacterW');
  return _FillConsoleOutputCharacter(hConsoleOutput, cCharacter, nLength,
      dwWriteCoord, lpNumberOfCharsWritten);
}

/// Closes a file search handle opened by the FindFirstFile,
/// FindFirstFileEx, FindFirstFileNameW, FindFirstFileNameTransactedW,
/// FindFirstFileTransacted, FindFirstStreamTransactedW, or
/// FindFirstStreamW functions.
///
/// ```c
/// BOOL FindClose(
///   HANDLE hFindFile
/// );
/// ```
/// {@category kernel32}
int FindClose(int hFindFile) {
  final _FindClose = _kernel32.lookupFunction<Int32 Function(IntPtr hFindFile),
      int Function(int hFindFile)>('FindClose');
  return _FindClose(hFindFile);
}

/// Stops change notification handle monitoring.
///
/// ```c
/// BOOL FindCloseChangeNotification(
///   HANDLE hChangeHandle
/// );
/// ```
/// {@category kernel32}
int FindCloseChangeNotification(int hChangeHandle) {
  final _FindCloseChangeNotification = _kernel32.lookupFunction<
      Int32 Function(IntPtr hChangeHandle),
      int Function(int hChangeHandle)>('FindCloseChangeNotification');
  return _FindCloseChangeNotification(hChangeHandle);
}

/// Creates a change notification handle and sets up initial change
/// notification filter conditions. A wait on a notification handle
/// succeeds when a change matching the filter conditions occurs in the
/// specified directory or subtree. The function does not report changes to
/// the specified directory itself.
///
/// ```c
/// HANDLE FindFirstChangeNotificationW(
///   LPCWSTR lpPathName,
///   BOOL    bWatchSubtree,
///   DWORD   dwNotifyFilter
/// );
/// ```
/// {@category kernel32}
int FindFirstChangeNotification(
    Pointer<Utf16> lpPathName, int bWatchSubtree, int dwNotifyFilter) {
  final _FindFirstChangeNotification = _kernel32.lookupFunction<
      IntPtr Function(Pointer<Utf16> lpPathName, Int32 bWatchSubtree,
          Uint32 dwNotifyFilter),
      int Function(Pointer<Utf16> lpPathName, int bWatchSubtree,
          int dwNotifyFilter)>('FindFirstChangeNotificationW');
  return _FindFirstChangeNotification(
      lpPathName, bWatchSubtree, dwNotifyFilter);
}

/// Searches a directory for a file or subdirectory with a name that
/// matches a specific name (or partial name if wildcards are used).
///
/// ```c
/// HANDLE FindFirstFileW(
///   LPCWSTR            lpFileName,
///   LPWIN32_FIND_DATAW lpFindFileData
/// );
/// ```
/// {@category kernel32}
int FindFirstFile(
    Pointer<Utf16> lpFileName, Pointer<WIN32_FIND_DATA> lpFindFileData) {
  final _FindFirstFile = _kernel32.lookupFunction<
      IntPtr Function(
          Pointer<Utf16> lpFileName, Pointer<WIN32_FIND_DATA> lpFindFileData),
      int Function(Pointer<Utf16> lpFileName,
          Pointer<WIN32_FIND_DATA> lpFindFileData)>('FindFirstFileW');
  return _FindFirstFile(lpFileName, lpFindFileData);
}

/// Retrieves the name of a volume on a computer. FindFirstVolume is used
/// to begin scanning the volumes of a computer.
///
/// ```c
/// HANDLE FindFirstVolumeW(
///   LPWSTR lpszVolumeName,
///   DWORD  cchBufferLength
/// );
/// ```
/// {@category kernel32}
int FindFirstVolume(Pointer<Utf16> lpszVolumeName, int cchBufferLength) {
  final _FindFirstVolume = _kernel32.lookupFunction<
      IntPtr Function(Pointer<Utf16> lpszVolumeName, Uint32 cchBufferLength),
      int Function(Pointer<Utf16> lpszVolumeName,
          int cchBufferLength)>('FindFirstVolumeW');
  return _FindFirstVolume(lpszVolumeName, cchBufferLength);
}

/// Requests that the operating system signal a change notification handle
/// the next time it detects an appropriate change.
///
/// ```c
/// BOOL FindNextChangeNotification(
///   HANDLE hChangeHandle
/// );
/// ```
/// {@category kernel32}
int FindNextChangeNotification(int hChangeHandle) {
  final _FindNextChangeNotification = _kernel32.lookupFunction<
      Int32 Function(IntPtr hChangeHandle),
      int Function(int hChangeHandle)>('FindNextChangeNotification');
  return _FindNextChangeNotification(hChangeHandle);
}

/// Continues a file search from a previous call to the FindFirstFile,
/// FindFirstFileEx, or FindFirstFileTransacted functions.
///
/// ```c
/// BOOL FindNextFileW(
///   HANDLE             hFindFile,
///   LPWIN32_FIND_DATAW lpFindFileData
/// );
/// ```
/// {@category kernel32}
int FindNextFile(int hFindFile, Pointer<WIN32_FIND_DATA> lpFindFileData) {
  final _FindNextFile = _kernel32.lookupFunction<
      Int32 Function(IntPtr hFindFile, Pointer<WIN32_FIND_DATA> lpFindFileData),
      int Function(int hFindFile,
          Pointer<WIN32_FIND_DATA> lpFindFileData)>('FindNextFileW');
  return _FindNextFile(hFindFile, lpFindFileData);
}

/// Continues a volume search started by a call to the FindFirstVolume
/// function. FindNextVolume finds one volume per call.
///
/// ```c
/// BOOL FindNextVolumeW(
///   HANDLE hFindVolume,
///   LPWSTR lpszVolumeName,
///   DWORD  cchBufferLength
/// );
/// ```
/// {@category kernel32}
int FindNextVolume(
    int hFindVolume, Pointer<Utf16> lpszVolumeName, int cchBufferLength) {
  final _FindNextVolume = _kernel32.lookupFunction<
      Int32 Function(IntPtr hFindVolume, Pointer<Utf16> lpszVolumeName,
          Uint32 cchBufferLength),
      int Function(int hFindVolume, Pointer<Utf16> lpszVolumeName,
          int cchBufferLength)>('FindNextVolumeW');
  return _FindNextVolume(hFindVolume, lpszVolumeName, cchBufferLength);
}

/// Determines the location of a resource with the specified type and name
/// in the specified module.
///
/// ```c
/// HRSRC FindResourceW(
///   HMODULE hModule,
///   LPCWSTR  lpName,
///   LPCWSTR  lpType
/// );
/// ```
/// {@category kernel32}
int FindResource(int hModule, Pointer<Utf16> lpName, Pointer<Utf16> lpType) {
  final _FindResource = _kernel32.lookupFunction<
      IntPtr Function(
          IntPtr hModule, Pointer<Utf16> lpName, Pointer<Utf16> lpType),
      int Function(int hModule, Pointer<Utf16> lpName,
          Pointer<Utf16> lpType)>('FindResourceW');
  return _FindResource(hModule, lpName, lpType);
}

/// Determines the location of the resource with the specified type, name,
/// and language in the specified module.
///
/// ```c
/// HRSRC FindResourceExW(
///   HMODULE hModule,
///   LPCWSTR  lpType,
///   LPCWSTR  lpName,
///   WORD    wLanguage
/// );
/// ```
/// {@category kernel32}
int FindResourceEx(
    int hModule, Pointer<Utf16> lpType, Pointer<Utf16> lpName, int wLanguage) {
  final _FindResourceEx = _kernel32.lookupFunction<
      IntPtr Function(IntPtr hModule, Pointer<Utf16> lpType,
          Pointer<Utf16> lpName, Uint16 wLanguage),
      int Function(int hModule, Pointer<Utf16> lpType, Pointer<Utf16> lpName,
          int wLanguage)>('FindResourceExW');
  return _FindResourceEx(hModule, lpType, lpName, wLanguage);
}

/// Closes the specified volume search handle. The FindFirstVolume and
/// FindNextVolume functions use this search handle to locate volumes.
///
/// ```c
/// BOOL FindVolumeClose(
///   HANDLE hFindVolume
/// );
/// ```
/// {@category kernel32}
int FindVolumeClose(int hFindVolume) {
  final _FindVolumeClose = _kernel32.lookupFunction<
      Int32 Function(IntPtr hFindVolume),
      int Function(int hFindVolume)>('FindVolumeClose');
  return _FindVolumeClose(hFindVolume);
}

/// Flushes the console input buffer. All input records currently in the
/// input buffer are discarded.
///
/// ```c
/// BOOL WINAPI FlushConsoleInputBuffer(
///   _In_ HANDLE hConsoleInput
/// );
/// ```
/// {@category kernel32}
int FlushConsoleInputBuffer(int hConsoleInput) {
  final _FlushConsoleInputBuffer = _kernel32.lookupFunction<
      Int32 Function(IntPtr hConsoleInput),
      int Function(int hConsoleInput)>('FlushConsoleInputBuffer');
  return _FlushConsoleInputBuffer(hConsoleInput);
}

/// Formats a message string. The function requires a message definition as
/// input. The message definition can come from a buffer passed into the
/// function. It can come from a message table resource in an
/// already-loaded module. Or the caller can ask the function to search the
/// system's message table resource(s) for the message definition. The
/// function finds the message definition in a message table resource based
/// on a message identifier and a language identifier. The function copies
/// the formatted message text to an output buffer, processing any embedded
/// insert sequences if requested.
///
/// ```c
/// DWORD FormatMessageW(
///   DWORD   dwFlags,
///   LPCVOID lpSource,
///   DWORD   dwMessageId,
///   DWORD   dwLanguageId,
///   LPWSTR  lpBuffer,
///   DWORD   nSize,
///   va_list *Arguments
/// );
/// ```
/// {@category kernel32}
int FormatMessage(
    int dwFlags,
    Pointer lpSource,
    int dwMessageId,
    int dwLanguageId,
    Pointer<Utf16> lpBuffer,
    int nSize,
    Pointer<Pointer<Int8>> Arguments) {
  final _FormatMessage = _kernel32.lookupFunction<
      Uint32 Function(
          Uint32 dwFlags,
          Pointer lpSource,
          Uint32 dwMessageId,
          Uint32 dwLanguageId,
          Pointer<Utf16> lpBuffer,
          Uint32 nSize,
          Pointer<Pointer<Int8>> Arguments),
      int Function(
          int dwFlags,
          Pointer lpSource,
          int dwMessageId,
          int dwLanguageId,
          Pointer<Utf16> lpBuffer,
          int nSize,
          Pointer<Pointer<Int8>> Arguments)>('FormatMessageW');
  return _FormatMessage(
      dwFlags, lpSource, dwMessageId, dwLanguageId, lpBuffer, nSize, Arguments);
}

/// Detaches the calling process from its console.
///
/// ```c
/// BOOL WINAPI FreeConsole(void);
/// ```
/// {@category kernel32}
int FreeConsole() {
  final _FreeConsole =
      _kernel32.lookupFunction<Int32 Function(), int Function()>('FreeConsole');
  return _FreeConsole();
}

/// Frees the loaded dynamic-link library (DLL) module and, if necessary,
/// decrements its reference count. When the reference count reaches zero,
/// the module is unloaded from the address space of the calling process
/// and the handle is no longer valid.
///
/// ```c
/// BOOL FreeLibrary(
///   HMODULE hLibModule
/// );
/// ```
/// {@category kernel32}
int FreeLibrary(int hLibModule) {
  final _FreeLibrary = _kernel32.lookupFunction<
      Int32 Function(IntPtr hLibModule),
      int Function(int hLibModule)>('FreeLibrary');
  return _FreeLibrary(hLibModule);
}

/// Determines whether a file is an executable (.exe) file, and if so,
/// which subsystem runs the executable file.
///
/// ```c
/// BOOL GetBinaryTypeW(
///   LPCWSTR lpApplicationName,
///   LPDWORD lpBinaryType);
/// ```
/// {@category kernel32}
int GetBinaryType(
    Pointer<Utf16> lpApplicationName, Pointer<Uint32> lpBinaryType) {
  final _GetBinaryType = _kernel32.lookupFunction<
      Int32 Function(
          Pointer<Utf16> lpApplicationName, Pointer<Uint32> lpBinaryType),
      int Function(Pointer<Utf16> lpApplicationName,
          Pointer<Uint32> lpBinaryType)>('GetBinaryTypeW');
  return _GetBinaryType(lpApplicationName, lpBinaryType);
}

/// Retrieves the NetBIOS name of the local computer. This name is
/// established at system startup, when the system reads it from the
/// registry.
///
/// ```c
/// BOOL GetComputerNameW(
///   LPWSTR  lpBuffer,
///   LPDWORD nSize
/// );
/// ```
/// {@category kernel32}
int GetComputerName(Pointer<Utf16> lpBuffer, Pointer<Uint32> nSize) {
  final _GetComputerName = _kernel32.lookupFunction<
      Int32 Function(Pointer<Utf16> lpBuffer, Pointer<Uint32> nSize),
      int Function(
          Pointer<Utf16> lpBuffer, Pointer<Uint32> nSize)>('GetComputerNameW');
  return _GetComputerName(lpBuffer, nSize);
}

/// Retrieves a NetBIOS or DNS name associated with the local computer. The
/// names are established at system startup, when the system reads them
/// from the registry.
///
/// ```c
/// BOOL GetComputerNameExW(
///   COMPUTER_NAME_FORMAT NameType,
///   LPWSTR               lpBuffer,
///   LPDWORD              nSize
/// );
/// ```
/// {@category kernel32}
int GetComputerNameEx(
    int NameType, Pointer<Utf16> lpBuffer, Pointer<Uint32> nSize) {
  final _GetComputerNameEx = _kernel32.lookupFunction<
      Int32 Function(
          Uint32 NameType, Pointer<Utf16> lpBuffer, Pointer<Uint32> nSize),
      int Function(int NameType, Pointer<Utf16> lpBuffer,
          Pointer<Uint32> nSize)>('GetComputerNameExW');
  return _GetComputerNameEx(NameType, lpBuffer, nSize);
}

/// Retrieves information about the size and visibility of the cursor for
/// the specified console screen buffer.
///
/// ```c
/// BOOL WINAPI GetConsoleCursorInfo(
///   _In_  HANDLE               hConsoleOutput,
///   _Out_ PCONSOLE_CURSOR_INFO lpConsoleCursorInfo
/// );
/// ```
/// {@category kernel32}
int GetConsoleCursorInfo(
    int hConsoleOutput, Pointer<CONSOLE_CURSOR_INFO> lpConsoleCursorInfo) {
  final _GetConsoleCursorInfo = _kernel32.lookupFunction<
          Int32 Function(IntPtr hConsoleOutput,
              Pointer<CONSOLE_CURSOR_INFO> lpConsoleCursorInfo),
          int Function(int hConsoleOutput,
              Pointer<CONSOLE_CURSOR_INFO> lpConsoleCursorInfo)>(
      'GetConsoleCursorInfo');
  return _GetConsoleCursorInfo(hConsoleOutput, lpConsoleCursorInfo);
}

/// Retrieves the current input mode of a console's input buffer or the
/// current output mode of a console screen buffer.
///
/// ```c
/// BOOL WINAPI GetConsoleMode(
///   _In_  HANDLE  hConsoleHandle,
///   _Out_ LPDWORD lpMode
/// );
/// ```
/// {@category kernel32}
int GetConsoleMode(int hConsoleHandle, Pointer<Uint32> lpMode) {
  final _GetConsoleMode = _kernel32.lookupFunction<
      Int32 Function(IntPtr hConsoleHandle, Pointer<Uint32> lpMode),
      int Function(
          int hConsoleHandle, Pointer<Uint32> lpMode)>('GetConsoleMode');
  return _GetConsoleMode(hConsoleHandle, lpMode);
}

/// Retrieves information about the specified console screen buffer.
///
/// ```c
/// BOOL WINAPI GetConsoleScreenBufferInfo(
///   _In_  HANDLE                      hConsoleOutput,
///   _Out_ PCONSOLE_SCREEN_BUFFER_INFO lpConsoleScreenBufferInfo
/// );
/// ```
/// {@category kernel32}
int GetConsoleScreenBufferInfo(int hConsoleOutput,
    Pointer<CONSOLE_SCREEN_BUFFER_INFO> lpConsoleScreenBufferInfo) {
  final _GetConsoleScreenBufferInfo = _kernel32.lookupFunction<
          Int32 Function(IntPtr hConsoleOutput,
              Pointer<CONSOLE_SCREEN_BUFFER_INFO> lpConsoleScreenBufferInfo),
          int Function(int hConsoleOutput,
              Pointer<CONSOLE_SCREEN_BUFFER_INFO> lpConsoleScreenBufferInfo)>(
      'GetConsoleScreenBufferInfo');
  return _GetConsoleScreenBufferInfo(hConsoleOutput, lpConsoleScreenBufferInfo);
}

/// Retrieves information about the current console selection.
///
/// ```c
/// BOOL WINAPI GetConsoleSelectionInfo(
///   _Out_ PCONSOLE_SELECTION_INFO lpConsoleSelectionInfo
/// );
/// ```
/// {@category kernel32}
int GetConsoleSelectionInfo(
    Pointer<CONSOLE_SELECTION_INFO> lpConsoleSelectionInfo) {
  final _GetConsoleSelectionInfo = _kernel32.lookupFunction<
      Int32 Function(Pointer<CONSOLE_SELECTION_INFO> lpConsoleSelectionInfo),
      int Function(
          Pointer<CONSOLE_SELECTION_INFO>
              lpConsoleSelectionInfo)>('GetConsoleSelectionInfo');
  return _GetConsoleSelectionInfo(lpConsoleSelectionInfo);
}

/// Retrieves the title for the current console window.
///
/// ```c
/// DWORD WINAPI GetConsoleTitleW(
///   _Out_ LPTSTR lpConsoleTitle,
///   _In_  DWORD  nSize
/// );
/// ```
/// {@category kernel32}
int GetConsoleTitle(Pointer<Utf16> lpConsoleTitle, int nSize) {
  final _GetConsoleTitle = _kernel32.lookupFunction<
      Uint32 Function(Pointer<Utf16> lpConsoleTitle, Uint32 nSize),
      int Function(
          Pointer<Utf16> lpConsoleTitle, int nSize)>('GetConsoleTitleW');
  return _GetConsoleTitle(lpConsoleTitle, nSize);
}

/// Retrieves the window handle used by the console associated with the
/// calling process.
///
/// ```c
/// HWND WINAPI GetConsoleWindow(void);
/// ```
/// {@category kernel32}
int GetConsoleWindow() {
  final _GetConsoleWindow = _kernel32
      .lookupFunction<IntPtr Function(), int Function()>('GetConsoleWindow');
  return _GetConsoleWindow();
}

/// The GetCurrentActCtx function returns the handle to the active
/// activation context of the calling thread.
///
/// ```c
/// BOOL GetCurrentActCtx(
///   HANDLE *lphActCtx
/// );
/// ```
/// {@category kernel32}
int GetCurrentActCtx(Pointer<IntPtr> lphActCtx) {
  final _GetCurrentActCtx = _kernel32.lookupFunction<
      Int32 Function(Pointer<IntPtr> lphActCtx),
      int Function(Pointer<IntPtr> lphActCtx)>('GetCurrentActCtx');
  return _GetCurrentActCtx(lphActCtx);
}

/// Retrieves a pseudo handle for the current process.
///
/// ```c
/// HANDLE GetCurrentProcess();
/// ```
/// {@category kernel32}
int GetCurrentProcess() {
  final _GetCurrentProcess = _kernel32
      .lookupFunction<IntPtr Function(), int Function()>('GetCurrentProcess');
  return _GetCurrentProcess();
}

/// Retrieves the termination status of the specified process.
///
/// ```c
/// BOOL GetExitCodeProcess(
///   HANDLE  hProcess,
///   LPDWORD lpExitCode);
/// ```
/// {@category kernel32}
int GetExitCodeProcess(int hProcess, Pointer<Uint32> lpExitCode) {
  final _GetExitCodeProcess = _kernel32.lookupFunction<
      Int32 Function(IntPtr hProcess, Pointer<Uint32> lpExitCode),
      int Function(
          int hProcess, Pointer<Uint32> lpExitCode)>('GetExitCodeProcess');
  return _GetExitCodeProcess(hProcess, lpExitCode);
}

/// Retrieves attributes for a specified file or directory.
///
/// ```c
/// BOOL GetFileAttributesExW(
///   LPCWSTR                lpFileName,
///   GET_FILEEX_INFO_LEVELS fInfoLevelId,
///   LPVOID                 lpFileInformation
/// );
/// ```
/// {@category kernel32}
int GetFileAttributesEx(
    Pointer<Utf16> lpFileName, int fInfoLevelId, Pointer lpFileInformation) {
  final _GetFileAttributesEx = _kernel32.lookupFunction<
      Int32 Function(Pointer<Utf16> lpFileName, Uint32 fInfoLevelId,
          Pointer lpFileInformation),
      int Function(Pointer<Utf16> lpFileName, int fInfoLevelId,
          Pointer lpFileInformation)>('GetFileAttributesExW');
  return _GetFileAttributesEx(lpFileName, fInfoLevelId, lpFileInformation);
}

/// Retrieves certain properties of an object handle.
///
/// ```c
/// BOOL GetHandleInformation(
///   HANDLE  hObject,
///   LPDWORD lpdwFlags
/// );
/// ```
/// {@category kernel32}
int GetHandleInformation(int hObject, Pointer<Uint32> lpdwFlags) {
  final _GetHandleInformation = _kernel32.lookupFunction<
      Int32 Function(IntPtr hObject, Pointer<Uint32> lpdwFlags),
      int Function(
          int hObject, Pointer<Uint32> lpdwFlags)>('GetHandleInformation');
  return _GetHandleInformation(hObject, lpdwFlags);
}

/// Retrieves the size of the largest possible console window, based on the
/// current font and the size of the display.
///
/// ```c
/// COORD WINAPI GetLargestConsoleWindowSize(
///   _In_ HANDLE hConsoleOutput
/// );
/// ```
/// {@category kernel32}
COORD GetLargestConsoleWindowSize(int hConsoleOutput) {
  final _GetLargestConsoleWindowSize = _kernel32.lookupFunction<
      COORD Function(IntPtr hConsoleOutput),
      COORD Function(int hConsoleOutput)>('GetLargestConsoleWindowSize');
  return _GetLargestConsoleWindowSize(hConsoleOutput);
}

/// Retrieves the calling thread's last-error code value. The last-error
/// code is maintained on a per-thread basis. Multiple threads do not
/// overwrite each other's last-error code.
///
/// ```c
/// DWORD GetLastError();
/// ```
/// {@category kernel32}
int GetLastError() {
  final _GetLastError = _kernel32
      .lookupFunction<Uint32 Function(), int Function()>('GetLastError');
  return _GetLastError();
}

/// Retrieves information about a locale specified by name.
///
/// ```c
/// int GetLocaleInfoEx(
///   LPCWSTR lpLocaleName,
///   LCTYPE  LCType,
///   LPWSTR  lpLCData,
///   int     cchData
/// );
/// ```
/// {@category kernel32}
int GetLocaleInfoEx(Pointer<Utf16> lpLocaleName, int LCType,
    Pointer<Utf16> lpLCData, int cchData) {
  final _GetLocaleInfoEx = _kernel32.lookupFunction<
      Int32 Function(Pointer<Utf16> lpLocaleName, Uint32 LCType,
          Pointer<Utf16> lpLCData, Int32 cchData),
      int Function(Pointer<Utf16> lpLocaleName, int LCType,
          Pointer<Utf16> lpLCData, int cchData)>('GetLocaleInfoEx');
  return _GetLocaleInfoEx(lpLocaleName, LCType, lpLCData, cchData);
}

/// Retrieves the current local date and time.
///
/// ```c
/// void GetLocalTime(
///   LPSYSTEMTIME lpSystemTime
/// );
/// ```
/// {@category kernel32}
void GetLocalTime(Pointer<SYSTEMTIME> lpSystemTime) {
  final _GetLocalTime = _kernel32.lookupFunction<
      Void Function(Pointer<SYSTEMTIME> lpSystemTime),
      void Function(Pointer<SYSTEMTIME> lpSystemTime)>('GetLocalTime');
  return _GetLocalTime(lpSystemTime);
}

/// Fills a buffer with strings that specify valid drives in the system.
///
/// ```c
/// DWORD GetLogicalDriveStringsW(
///   DWORD  nBufferLength,
///   LPWSTR lpBuffer
/// );
/// ```
/// {@category kernel32}
int GetLogicalDriveStrings(int nBufferLength, Pointer<Utf16> lpBuffer) {
  final _GetLogicalDriveStrings = _kernel32.lookupFunction<
      Uint32 Function(Uint32 nBufferLength, Pointer<Utf16> lpBuffer),
      int Function(int nBufferLength,
          Pointer<Utf16> lpBuffer)>('GetLogicalDriveStringsW');
  return _GetLogicalDriveStrings(nBufferLength, lpBuffer);
}

/// Retrieves the base name of the specified module.
///
/// ```c
/// DWORD K32GetModuleBaseNameW(
///   HANDLE  hProcess,
///   HMODULE hModule,
///   LPWSTR  lpBaseName,
///   DWORD   nSize
/// );
/// ```
/// {@category kernel32}
int GetModuleBaseName(
    int hProcess, int hModule, Pointer<Utf16> lpBaseName, int nSize) {
  final _GetModuleBaseName = _kernel32.lookupFunction<
      Uint32 Function(IntPtr hProcess, IntPtr hModule,
          Pointer<Utf16> lpBaseName, Uint32 nSize),
      int Function(int hProcess, int hModule, Pointer<Utf16> lpBaseName,
          int nSize)>('K32GetModuleBaseNameW');
  return _GetModuleBaseName(hProcess, hModule, lpBaseName, nSize);
}

/// Retrieves the fully qualified path for the file that contains the
/// specified module. The module must have been loaded by the current
/// process.
///
/// ```c
/// DWORD GetModuleFileNameW(
///   HMODULE hModule,
///   LPWSTR  lpFilename,
///   DWORD   nSize
/// );
/// ```
/// {@category kernel32}
int GetModuleFileName(int hModule, Pointer<Utf16> lpFilename, int nSize) {
  final _GetModuleFileName = _kernel32.lookupFunction<
      Uint32 Function(IntPtr hModule, Pointer<Utf16> lpFilename, Uint32 nSize),
      int Function(int hModule, Pointer<Utf16> lpFilename,
          int nSize)>('GetModuleFileNameW');
  return _GetModuleFileName(hModule, lpFilename, nSize);
}

/// Retrieves the fully qualified path for the file containing the
/// specified module.
///
/// ```c
/// DWORD K32GetModuleFileNameExW(
///   HANDLE  hProcess,
///   HMODULE hModule,
///   LPWSTR  lpFilename,
///   DWORD   nSize
/// );
/// ```
/// {@category kernel32}
int GetModuleFileNameEx(
    int hProcess, int hModule, Pointer<Utf16> lpFilename, int nSize) {
  final _GetModuleFileNameEx = _kernel32.lookupFunction<
      Uint32 Function(IntPtr hProcess, IntPtr hModule,
          Pointer<Utf16> lpFilename, Uint32 nSize),
      int Function(int hProcess, int hModule, Pointer<Utf16> lpFilename,
          int nSize)>('K32GetModuleFileNameExW');
  return _GetModuleFileNameEx(hProcess, hModule, lpFilename, nSize);
}

/// Retrieves a module handle for the specified module. The module must
/// have been loaded by the calling process.
///
/// ```c
/// HMODULE GetModuleHandleW(
///   LPCWSTR lpModuleName
/// );
/// ```
/// {@category kernel32}
int GetModuleHandle(Pointer<Utf16> lpModuleName) {
  final _GetModuleHandle = _kernel32.lookupFunction<
      IntPtr Function(Pointer<Utf16> lpModuleName),
      int Function(Pointer<Utf16> lpModuleName)>('GetModuleHandleW');
  return _GetModuleHandle(lpModuleName);
}

/// Retrieves information about the specified named pipe.
///
/// ```c
/// BOOL GetNamedPipeInfo(
///   HANDLE  hNamedPipe,
///   LPDWORD lpFlags,
///   LPDWORD lpOutBufferSize,
///   LPDWORD lpInBufferSize,
///   LPDWORD lpMaxInstances);
/// ```
/// {@category kernel32}
int GetNamedPipeInfo(
    int hNamedPipe,
    Pointer<Uint32> lpFlags,
    Pointer<Uint32> lpOutBufferSize,
    Pointer<Uint32> lpInBufferSize,
    Pointer<Uint32> lpMaxInstances) {
  final _GetNamedPipeInfo = _kernel32.lookupFunction<
      Int32 Function(
          IntPtr hNamedPipe,
          Pointer<Uint32> lpFlags,
          Pointer<Uint32> lpOutBufferSize,
          Pointer<Uint32> lpInBufferSize,
          Pointer<Uint32> lpMaxInstances),
      int Function(
          int hNamedPipe,
          Pointer<Uint32> lpFlags,
          Pointer<Uint32> lpOutBufferSize,
          Pointer<Uint32> lpInBufferSize,
          Pointer<Uint32> lpMaxInstances)>('GetNamedPipeInfo');
  return _GetNamedPipeInfo(
      hNamedPipe, lpFlags, lpOutBufferSize, lpInBufferSize, lpMaxInstances);
}

/// Retrieves information about the current system to an application
/// running under WOW64. If the function is called from a 64-bit
/// application, or on a 64-bit system that does not have an Intel64 or x64
/// processor (such as ARM64), it is equivalent to the GetSystemInfo
/// function.
///
/// ```c
/// void GetNativeSystemInfo(
///   LPSYSTEM_INFO lpSystemInfo
/// );
/// ```
/// {@category kernel32}
void GetNativeSystemInfo(Pointer<SYSTEM_INFO> lpSystemInfo) {
  final _GetNativeSystemInfo = _kernel32.lookupFunction<
      Void Function(Pointer<SYSTEM_INFO> lpSystemInfo),
      void Function(Pointer<SYSTEM_INFO> lpSystemInfo)>('GetNativeSystemInfo');
  return _GetNativeSystemInfo(lpSystemInfo);
}

/// Retrieves the amount of RAM that is physically installed on the
/// computer.
///
/// ```c
/// BOOL GetPhysicallyInstalledSystemMemory(
///   PULONGLONG TotalMemoryInKilobytes
/// );
/// ```
/// {@category kernel32}
int GetPhysicallyInstalledSystemMemory(Pointer<Uint64> TotalMemoryInKilobytes) {
  final _GetPhysicallyInstalledSystemMemory = _kernel32.lookupFunction<
          Int32 Function(Pointer<Uint64> TotalMemoryInKilobytes),
          int Function(Pointer<Uint64> TotalMemoryInKilobytes)>(
      'GetPhysicallyInstalledSystemMemory');
  return _GetPhysicallyInstalledSystemMemory(TotalMemoryInKilobytes);
}

/// Retrieves the address of an exported function or variable from the
/// specified dynamic-link library (DLL).
///
/// ```c
/// FARPROC GetProcAddress(
///   HMODULE hModule,
///   LPCSTR  lpProcName
/// );
/// ```
/// {@category kernel32}
int GetProcAddress(int hModule, Pointer<Utf8> lpProcName) {
  final _GetProcAddress = _kernel32.lookupFunction<
      IntPtr Function(IntPtr hModule, Pointer<Utf8> lpProcName),
      int Function(int hModule, Pointer<Utf8> lpProcName)>('GetProcAddress');
  return _GetProcAddress(hModule, lpProcName);
}

/// Retrieves a handle to the default heap of the calling process. This
/// handle can then be used in subsequent calls to the heap functions.
///
/// ```c
/// HANDLE GetProcessHeap();
/// ```
/// {@category kernel32}
int GetProcessHeap() {
  final _GetProcessHeap = _kernel32
      .lookupFunction<IntPtr Function(), int Function()>('GetProcessHeap');
  return _GetProcessHeap();
}

/// Retrieves the product type for the operating system on the local
/// computer, and maps the type to the product types supported by the
/// specified operating system.
///
/// ```c
/// BOOL GetProductInfo(
///   DWORD  dwOSMajorVersion,
///   DWORD  dwOSMinorVersion,
///   DWORD  dwSpMajorVersion,
///   DWORD  dwSpMinorVersion,
///   PDWORD pdwReturnedProductType
/// );
/// ```
/// {@category kernel32}
int GetProductInfo(
    int dwOSMajorVersion,
    int dwOSMinorVersion,
    int dwSpMajorVersion,
    int dwSpMinorVersion,
    Pointer<Uint32> pdwReturnedProductType) {
  final _GetProductInfo = _kernel32.lookupFunction<
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
  return _GetProductInfo(dwOSMajorVersion, dwOSMinorVersion, dwSpMajorVersion,
      dwSpMinorVersion, pdwReturnedProductType);
}

/// Retrieves a handle to the specified standard device (standard input,
/// standard output, or standard error).
///
/// ```c
/// HANDLE WINAPI GetStdHandle(
///   _In_ DWORD nStdHandle
/// );
/// ```
/// {@category kernel32}
int GetStdHandle(int nStdHandle) {
  final _GetStdHandle = _kernel32.lookupFunction<
      IntPtr Function(Uint32 nStdHandle),
      int Function(int nStdHandle)>('GetStdHandle');
  return _GetStdHandle(nStdHandle);
}

/// Returns the language identifier for the system locale.
///
/// ```c
/// LANGID GetSystemDefaultLangID();
/// ```
/// {@category kernel32}
int GetSystemDefaultLangID() {
  final _GetSystemDefaultLangID =
      _kernel32.lookupFunction<Uint16 Function(), int Function()>(
          'GetSystemDefaultLangID');
  return _GetSystemDefaultLangID();
}

/// Retrieves the system default locale name.
///
/// ```c
/// int GetSystemDefaultLocaleName(
///   LPWSTR lpLocaleName,
///   int    cchLocaleName
/// );
/// ```
/// {@category kernel32}
int GetSystemDefaultLocaleName(Pointer<Utf16> lpLocaleName, int cchLocaleName) {
  final _GetSystemDefaultLocaleName = _kernel32.lookupFunction<
      Int32 Function(Pointer<Utf16> lpLocaleName, Int32 cchLocaleName),
      int Function(Pointer<Utf16> lpLocaleName,
          int cchLocaleName)>('GetSystemDefaultLocaleName');
  return _GetSystemDefaultLocaleName(lpLocaleName, cchLocaleName);
}

/// Retrieves the path of the system directory. The system directory
/// contains system files such as dynamic-link libraries and drivers.
///
/// ```c
/// UINT GetSystemDirectoryW(
///   LPWSTR lpBuffer,
///   UINT   uSize
/// );
/// ```
/// {@category kernel32}
int GetSystemDirectory(Pointer<Utf16> lpBuffer, int uSize) {
  final _GetSystemDirectory = _kernel32.lookupFunction<
      Uint32 Function(Pointer<Utf16> lpBuffer, Uint32 uSize),
      int Function(Pointer<Utf16> lpBuffer, int uSize)>('GetSystemDirectoryW');
  return _GetSystemDirectory(lpBuffer, uSize);
}

/// Retrieves information about the current system. To retrieve accurate
/// information for an application running on WOW64, call the
/// GetNativeSystemInfo function.
///
/// ```c
/// void GetSystemInfo(
///   LPSYSTEM_INFO lpSystemInfo
/// );
/// ```
/// {@category kernel32}
void GetSystemInfo(Pointer<SYSTEM_INFO> lpSystemInfo) {
  final _GetSystemInfo = _kernel32.lookupFunction<
      Void Function(Pointer<SYSTEM_INFO> lpSystemInfo),
      void Function(Pointer<SYSTEM_INFO> lpSystemInfo)>('GetSystemInfo');
  return _GetSystemInfo(lpSystemInfo);
}

/// Retrieves the power status of the system. The status indicates whether
/// the system is running on AC or DC power, whether the battery is
/// currently charging, how much battery life remains, and if battery saver
/// is on or off.
///
/// ```c
/// BOOL GetSystemPowerStatus(
///   LPSYSTEM_POWER_STATUS lpSystemPowerStatus
/// );
/// ```
/// {@category kernel32}
int GetSystemPowerStatus(Pointer<SYSTEM_POWER_STATUS> lpSystemPowerStatus) {
  final _GetSystemPowerStatus = _kernel32.lookupFunction<
          Int32 Function(Pointer<SYSTEM_POWER_STATUS> lpSystemPowerStatus),
          int Function(Pointer<SYSTEM_POWER_STATUS> lpSystemPowerStatus)>(
      'GetSystemPowerStatus');
  return _GetSystemPowerStatus(lpSystemPowerStatus);
}

/// Retrieves the current local date and time.
///
/// ```c
/// void GetSystemTime(
///   LPSYSTEMTIME lpSystemTime
/// );
/// ```
/// {@category kernel32}
void GetSystemTime(Pointer<SYSTEMTIME> lpSystemTime) {
  final _GetSystemTime = _kernel32.lookupFunction<
      Void Function(Pointer<SYSTEMTIME> lpSystemTime),
      void Function(Pointer<SYSTEMTIME> lpSystemTime)>('GetSystemTime');
  return _GetSystemTime(lpSystemTime);
}

/// Retrieves the path of the directory designated for temporary files.
///
/// ```c
/// DWORD GetTempPathW(
///   DWORD  nBufferLength,
///   LPWSTR lpBuffer
/// );
/// ```
/// {@category kernel32}
int GetTempPath(int nBufferLength, Pointer<Utf16> lpBuffer) {
  final _GetTempPath = _kernel32.lookupFunction<
      Uint32 Function(Uint32 nBufferLength, Pointer<Utf16> lpBuffer),
      int Function(int nBufferLength, Pointer<Utf16> lpBuffer)>('GetTempPathW');
  return _GetTempPath(nBufferLength, lpBuffer);
}

/// Returns the locale identifier of the current locale for the calling
/// thread.
///
/// ```c
/// LCID GetThreadLocale();
/// ```
/// {@category kernel32}
int GetThreadLocale() {
  final _GetThreadLocale = _kernel32
      .lookupFunction<Uint32 Function(), int Function()>('GetThreadLocale');
  return _GetThreadLocale();
}

/// Returns the language identifier of the first user interface language
/// for the current thread.
///
/// ```c
/// LANGID GetThreadUILanguage();
/// ```
/// {@category kernel32}
int GetThreadUILanguage() {
  final _GetThreadUILanguage = _kernel32
      .lookupFunction<Uint16 Function(), int Function()>('GetThreadUILanguage');
  return _GetThreadUILanguage();
}

/// Returns the language identifier of the Region Format setting for the
/// current user.
///
/// ```c
/// LANGID GetUserDefaultLangID();
/// ```
/// {@category kernel32}
int GetUserDefaultLangID() {
  final _GetUserDefaultLangID =
      _kernel32.lookupFunction<Uint16 Function(), int Function()>(
          'GetUserDefaultLangID');
  return _GetUserDefaultLangID();
}

/// Returns the locale identifier for the user default locale.
///
/// ```c
/// LCID GetUserDefaultLCID();
/// ```
/// {@category kernel32}
int GetUserDefaultLCID() {
  final _GetUserDefaultLCID = _kernel32
      .lookupFunction<Uint32 Function(), int Function()>('GetUserDefaultLCID');
  return _GetUserDefaultLCID();
}

/// Retrieves the user default locale name.
///
/// ```c
/// int GetUserDefaultLocaleName(
///   LPWSTR lpLocaleName,
///   int    cchLocaleName
/// );
/// ```
/// {@category kernel32}
int GetUserDefaultLocaleName(Pointer<Utf16> lpLocaleName, int cchLocaleName) {
  final _GetUserDefaultLocaleName = _kernel32.lookupFunction<
      Int32 Function(Pointer<Utf16> lpLocaleName, Int32 cchLocaleName),
      int Function(Pointer<Utf16> lpLocaleName,
          int cchLocaleName)>('GetUserDefaultLocaleName');
  return _GetUserDefaultLocaleName(lpLocaleName, cchLocaleName);
}

/// Gets information about the operating system version.
///
/// ```c
/// BOOL GetVersionExW(
///   LPOSVERSIONINFOW lpVersionInformation
/// );
/// ```
/// {@category kernel32}
int GetVersionEx(Pointer<OSVERSIONINFO> lpVersionInformation) {
  final _GetVersionEx = _kernel32.lookupFunction<
      Int32 Function(Pointer<OSVERSIONINFO> lpVersionInformation),
      int Function(
          Pointer<OSVERSIONINFO> lpVersionInformation)>('GetVersionExW');
  return _GetVersionEx(lpVersionInformation);
}

/// Retrieves the volume mount point where the specified path is mounted.
///
/// ```c
/// BOOL GetVolumePathNameW(
///   LPCWSTR lpszFileName,
///   LPWSTR  lpszVolumePathName,
///   DWORD   cchBufferLength);
/// ```
/// {@category kernel32}
int GetVolumePathName(Pointer<Utf16> lpszFileName,
    Pointer<Utf16> lpszVolumePathName, int cchBufferLength) {
  final _GetVolumePathName = _kernel32.lookupFunction<
      Int32 Function(Pointer<Utf16> lpszFileName,
          Pointer<Utf16> lpszVolumePathName, Uint32 cchBufferLength),
      int Function(
          Pointer<Utf16> lpszFileName,
          Pointer<Utf16> lpszVolumePathName,
          int cchBufferLength)>('GetVolumePathNameW');
  return _GetVolumePathName(lpszFileName, lpszVolumePathName, cchBufferLength);
}

/// Retrieves a list of drive letters and mounted folder paths for the
/// specified volume.
///
/// ```c
/// BOOL GetVolumePathNamesForVolumeNameW(
///   LPCWSTR lpszVolumeName,
///   LPWCH   lpszVolumePathNames,
///   DWORD   cchBufferLength,
///   PDWORD  lpcchReturnLength
/// );
/// ```
/// {@category kernel32}
int GetVolumePathNamesForVolumeName(
    Pointer<Utf16> lpszVolumeName,
    Pointer<Utf16> lpszVolumePathNames,
    int cchBufferLength,
    Pointer<Uint32> lpcchReturnLength) {
  final _GetVolumePathNamesForVolumeName = _kernel32.lookupFunction<
          Int32 Function(
              Pointer<Utf16> lpszVolumeName,
              Pointer<Utf16> lpszVolumePathNames,
              Uint32 cchBufferLength,
              Pointer<Uint32> lpcchReturnLength),
          int Function(
              Pointer<Utf16> lpszVolumeName,
              Pointer<Utf16> lpszVolumePathNames,
              int cchBufferLength,
              Pointer<Uint32> lpcchReturnLength)>(
      'GetVolumePathNamesForVolumeNameW');
  return _GetVolumePathNamesForVolumeName(
      lpszVolumeName, lpszVolumePathNames, cchBufferLength, lpcchReturnLength);
}

/// Allocates the specified number of bytes from the heap.
///
/// ```c
/// HGLOBAL GlobalAlloc(
///   UINT   uFlags,
///   SIZE_T dwBytes
/// );
/// ```
/// {@category kernel32}
int GlobalAlloc(int uFlags, int dwBytes) {
  final _GlobalAlloc = _kernel32.lookupFunction<
      IntPtr Function(Uint32 uFlags, IntPtr dwBytes),
      int Function(int uFlags, int dwBytes)>('GlobalAlloc');
  return _GlobalAlloc(uFlags, dwBytes);
}

/// Frees the specified global memory object and invalidates its handle.
///
/// ```c
/// HGLOBAL GlobalFree(
///   _Frees_ptr_opt_ HGLOBAL hMem
/// );
/// ```
/// {@category kernel32}
int GlobalFree(int hMem) {
  final _GlobalFree = _kernel32.lookupFunction<IntPtr Function(IntPtr hMem),
      int Function(int hMem)>('GlobalFree');
  return _GlobalFree(hMem);
}

/// Locks a global memory object and returns a pointer to the first byte of
/// the object's memory block.
///
/// ```c
/// LPVOID GlobalLock(
///   HGLOBAL hMem
/// );
/// ```
/// {@category kernel32}
Pointer GlobalLock(int hMem) {
  final _GlobalLock = _kernel32.lookupFunction<Pointer Function(IntPtr hMem),
      Pointer Function(int hMem)>('GlobalLock');
  return _GlobalLock(hMem);
}

/// Decrements the lock count associated with a memory object that was
/// allocated with GMEM_MOVEABLE. This function has no effect on memory
/// objects allocated with GMEM_FIXED.
///
/// ```c
/// BOOL GlobalUnlock(
///   HGLOBAL hMem
/// );
/// ```
/// {@category kernel32}
int GlobalUnlock(int hMem) {
  final _GlobalUnlock = _kernel32.lookupFunction<Int32 Function(IntPtr hMem),
      int Function(int hMem)>('GlobalUnlock');
  return _GlobalUnlock(hMem);
}

/// Allocates a block of memory from a heap. The allocated memory is not
/// movable.
///
/// ```c
/// LPVOID HeapAlloc(
///   HANDLE hHeap,
///   DWORD  dwFlags,
///   SIZE_T dwBytes
/// );
/// ```
/// {@category kernel32}
Pointer HeapAlloc(int hHeap, int dwFlags, int dwBytes) {
  final _HeapAlloc = _kernel32.lookupFunction<
      Pointer Function(IntPtr hHeap, Uint32 dwFlags, IntPtr dwBytes),
      Pointer Function(int hHeap, int dwFlags, int dwBytes)>('HeapAlloc');
  return _HeapAlloc(hHeap, dwFlags, dwBytes);
}

/// Frees a memory block allocated from a heap by the HeapAlloc or
/// HeapReAlloc function.
///
/// ```c
/// BOOL HeapFree(
///   HANDLE                 hHeap,
///   DWORD                  dwFlags,
///   _Frees_ptr_opt_ LPVOID lpMem
/// );
/// ```
/// {@category kernel32}
int HeapFree(int hHeap, int dwFlags, Pointer lpMem) {
  final _HeapFree = _kernel32.lookupFunction<
      Int32 Function(IntPtr hHeap, Uint32 dwFlags, Pointer lpMem),
      int Function(int hHeap, int dwFlags, Pointer lpMem)>('HeapFree');
  return _HeapFree(hHeap, dwFlags, lpMem);
}

/// Initializes the specified list of attributes for process and thread
/// creation.
///
/// ```c
/// BOOL InitializeProcThreadAttributeList(
///   LPPROC_THREAD_ATTRIBUTE_LIST lpAttributeList,
///   DWORD                        dwAttributeCount,
///   DWORD                        dwFlags,
///   PSIZE_T                      lpSize
/// );
/// ```
/// {@category kernel32}
int InitializeProcThreadAttributeList(int lpAttributeList, int dwAttributeCount,
    int dwFlags, Pointer<IntPtr> lpSize) {
  final _InitializeProcThreadAttributeList = _kernel32.lookupFunction<
      Int32 Function(IntPtr lpAttributeList, Uint32 dwAttributeCount,
          Uint32 dwFlags, Pointer<IntPtr> lpSize),
      int Function(int lpAttributeList, int dwAttributeCount, int dwFlags,
          Pointer<IntPtr> lpSize)>('InitializeProcThreadAttributeList');
  return _InitializeProcThreadAttributeList(
      lpAttributeList, dwAttributeCount, dwFlags, lpSize);
}

/// Determines whether the calling process is being debugged by a user-mode
/// debugger.
///
/// ```c
/// BOOL IsDebuggerPresent();
/// ```
/// {@category kernel32}
int IsDebuggerPresent() {
  final _IsDebuggerPresent = _kernel32
      .lookupFunction<Int32 Function(), int Function()>('IsDebuggerPresent');
  return _IsDebuggerPresent();
}

/// Indicates if the OS was booted from a VHD container.
///
/// ```c
/// BOOL IsNativeVhdBoot(
///   PBOOL NativeVhdBoot
/// );
/// ```
/// {@category kernel32}
int IsNativeVhdBoot(Pointer<Int32> NativeVhdBoot) {
  final _IsNativeVhdBoot = _kernel32.lookupFunction<
      Int32 Function(Pointer<Int32> NativeVhdBoot),
      int Function(Pointer<Int32> NativeVhdBoot)>('IsNativeVhdBoot');
  return _IsNativeVhdBoot(NativeVhdBoot);
}

/// Determines if the specified locale name is valid for a locale that is
/// installed or supported on the operating system.
///
/// ```c
/// BOOL IsValidLocaleName(
///   LPCWSTR lpLocaleName
///   );
/// ```
/// {@category kernel32}
int IsValidLocaleName(Pointer<Utf16> lpLocaleName) {
  final _IsValidLocaleName = _kernel32.lookupFunction<
      Int32 Function(Pointer<Utf16> lpLocaleName),
      int Function(Pointer<Utf16> lpLocaleName)>('IsValidLocaleName');
  return _IsValidLocaleName(lpLocaleName);
}

/// Determines whether the specified process is running under WOW64. Also
/// returns additional machine process and architecture information.
///
/// ```c
/// BOOL IsWow64Process2(
///   HANDLE hProcess,
///   USHORT *pProcessMachine,
///   USHORT *pNativeMachine
/// );
/// ```
/// {@category kernel32}
int IsWow64Process2(int hProcess, Pointer<Uint16> pProcessMachine,
    Pointer<Uint16> pNativeMachine) {
  final _IsWow64Process2 = _kernel32.lookupFunction<
      Int32 Function(IntPtr hProcess, Pointer<Uint16> pProcessMachine,
          Pointer<Uint16> pNativeMachine),
      int Function(int hProcess, Pointer<Uint16> pProcessMachine,
          Pointer<Uint16> pNativeMachine)>('IsWow64Process2');
  return _IsWow64Process2(hProcess, pProcessMachine, pNativeMachine);
}

/// Loads the specified module into the address space of the calling
/// process. The specified module may cause other modules to be loaded.
///
/// ```c
/// HMODULE LoadLibraryW(
///   LPCWSTR lpLibFileName
/// );
/// ```
/// {@category kernel32}
int LoadLibrary(Pointer<Utf16> lpLibFileName) {
  final _LoadLibrary = _kernel32.lookupFunction<
      IntPtr Function(Pointer<Utf16> lpLibFileName),
      int Function(Pointer<Utf16> lpLibFileName)>('LoadLibraryW');
  return _LoadLibrary(lpLibFileName);
}

/// Retrieves a handle that can be used to obtain a pointer to the first
/// byte of the specified resource in memory.
///
/// ```c
/// HGLOBAL LoadResource(
///   HMODULE hModule,
///   HRSRC   hResInfo
/// );
/// ```
/// {@category kernel32}
int LoadResource(int hModule, int hResInfo) {
  final _LoadResource = _kernel32.lookupFunction<
      IntPtr Function(IntPtr hModule, IntPtr hResInfo),
      int Function(int hModule, int hResInfo)>('LoadResource');
  return _LoadResource(hModule, hResInfo);
}

/// Retrieves a pointer to the specified resource in memory.
///
/// ```c
/// LPVOID LockResource(
///   HGLOBAL hResData
/// );
/// ```
/// {@category kernel32}
Pointer LockResource(int hResData) {
  final _LockResource = _kernel32.lookupFunction<
      Pointer Function(IntPtr hResData),
      Pointer Function(int hResData)>('LockResource');
  return _LockResource(hResData);
}

/// Moves an existing file or a directory, including its children.
///
/// ```c
/// BOOL MoveFileW(
///   LPCWSTR lpExistingFileName,
///   LPCWSTR lpNewFileName
/// );
/// ```
/// {@category kernel32}
int MoveFile(Pointer<Utf16> lpExistingFileName, Pointer<Utf16> lpNewFileName) {
  final _MoveFile = _kernel32.lookupFunction<
      Int32 Function(
          Pointer<Utf16> lpExistingFileName, Pointer<Utf16> lpNewFileName),
      int Function(Pointer<Utf16> lpExistingFileName,
          Pointer<Utf16> lpNewFileName)>('MoveFileW');
  return _MoveFile(lpExistingFileName, lpNewFileName);
}

/// Opens an existing local process object.
///
/// ```c
/// HANDLE OpenProcess(
///   DWORD dwDesiredAccess,
///   BOOL  bInheritHandle,
///   DWORD dwProcessId
/// );
/// ```
/// {@category kernel32}
int OpenProcess(int dwDesiredAccess, int bInheritHandle, int dwProcessId) {
  final _OpenProcess = _kernel32.lookupFunction<
      IntPtr Function(
          Uint32 dwDesiredAccess, Int32 bInheritHandle, Uint32 dwProcessId),
      int Function(int dwDesiredAccess, int bInheritHandle,
          int dwProcessId)>('OpenProcess');
  return _OpenProcess(dwDesiredAccess, bInheritHandle, dwProcessId);
}

/// Sends a string to the debugger for display.
///
/// ```c
/// void OutputDebugStringW(
///   LPCWSTR lpOutputString
/// );
/// ```
/// {@category kernel32}
void OutputDebugString(Pointer<Utf16> lpOutputString) {
  final _OutputDebugString = _kernel32.lookupFunction<
      Void Function(Pointer<Utf16> lpOutputString),
      void Function(Pointer<Utf16> lpOutputString)>('OutputDebugStringW');
  return _OutputDebugString(lpOutputString);
}

/// Copies data from a named or anonymous pipe into a buffer without
/// removing it from the pipe. It also returns information about data in
/// the pipe.
///
/// ```c
/// BOOL PeekNamedPipe(
///   HANDLE  hNamedPipe,
///   LPVOID  lpBuffer,
///   DWORD   nBufferSize,
///   LPDWORD lpBytesRead,
///   LPDWORD lpTotalBytesAvail,
///   LPDWORD lpBytesLeftThisMessage);
/// ```
/// {@category kernel32}
int PeekNamedPipe(
    int hNamedPipe,
    Pointer lpBuffer,
    int nBufferSize,
    Pointer<Uint32> lpBytesRead,
    Pointer<Uint32> lpTotalBytesAvail,
    Pointer<Uint32> lpBytesLeftThisMessage) {
  final _PeekNamedPipe = _kernel32.lookupFunction<
      Int32 Function(
          IntPtr hNamedPipe,
          Pointer lpBuffer,
          Uint32 nBufferSize,
          Pointer<Uint32> lpBytesRead,
          Pointer<Uint32> lpTotalBytesAvail,
          Pointer<Uint32> lpBytesLeftThisMessage),
      int Function(
          int hNamedPipe,
          Pointer lpBuffer,
          int nBufferSize,
          Pointer<Uint32> lpBytesRead,
          Pointer<Uint32> lpTotalBytesAvail,
          Pointer<Uint32> lpBytesLeftThisMessage)>('PeekNamedPipe');
  return _PeekNamedPipe(hNamedPipe, lpBuffer, nBufferSize, lpBytesRead,
      lpTotalBytesAvail, lpBytesLeftThisMessage);
}

/// Retrieves information about MS-DOS device names. The function can
/// obtain the current mapping for a particular MS-DOS device name. The
/// function can also obtain a list of all existing MS-DOS device names.
///
/// ```c
/// DWORD QueryDosDeviceW(
///   LPCWSTR lpDeviceName,
///   LPWSTR  lpTargetPath,
///   DWORD   ucchMax
/// );
/// ```
/// {@category kernel32}
int QueryDosDevice(
    Pointer<Utf16> lpDeviceName, Pointer<Utf16> lpTargetPath, int ucchMax) {
  final _QueryDosDevice = _kernel32.lookupFunction<
      Uint32 Function(Pointer<Utf16> lpDeviceName, Pointer<Utf16> lpTargetPath,
          Uint32 ucchMax),
      int Function(Pointer<Utf16> lpDeviceName, Pointer<Utf16> lpTargetPath,
          int ucchMax)>('QueryDosDeviceW');
  return _QueryDosDevice(lpDeviceName, lpTargetPath, ucchMax);
}

/// Retrieves the current value of the performance counter, which is a high
/// resolution (<1us) time stamp that can be used for time-interval
/// measurements.
///
/// ```c
/// BOOL QueryPerformanceCounter(
///   LARGE_INTEGER *lpPerformanceCount
/// );
/// ```
/// {@category kernel32}
int QueryPerformanceCounter(Pointer<Int64> lpPerformanceCount) {
  final _QueryPerformanceCounter = _kernel32.lookupFunction<
      Int32 Function(Pointer<Int64> lpPerformanceCount),
      int Function(
          Pointer<Int64> lpPerformanceCount)>('QueryPerformanceCounter');
  return _QueryPerformanceCounter(lpPerformanceCount);
}

/// Retrieves the frequency of the performance counter. The frequency of
/// the performance counter is fixed at system boot and is consistent
/// across all processors. Therefore, the frequency need only be queried
/// upon application initialization, and the result can be cached.
///
/// ```c
/// BOOL QueryPerformanceFrequency(
///   LARGE_INTEGER *lpFrequency
/// );
/// ```
/// {@category kernel32}
int QueryPerformanceFrequency(Pointer<Int64> lpFrequency) {
  final _QueryPerformanceFrequency = _kernel32.lookupFunction<
      Int32 Function(Pointer<Int64> lpFrequency),
      int Function(Pointer<Int64> lpFrequency)>('QueryPerformanceFrequency');
  return _QueryPerformanceFrequency(lpFrequency);
}

/// Reads character input from the console input buffer and removes it from
/// the buffer.
///
/// ```c
/// BOOL WINAPI ReadConsoleW(
///   _In_     HANDLE  hConsoleInput,
///   _Out_    LPVOID  lpBuffer,
///   _In_     DWORD   nNumberOfCharsToRead,
///   _Out_    LPDWORD lpNumberOfCharsRead,
///   _In_opt_ LPVOID  pInputControl
/// );
/// ```
/// {@category kernel32}
int ReadConsole(int hConsoleInput, Pointer lpBuffer, int nNumberOfCharsToRead,
    Pointer<Uint32> lpNumberOfCharsRead, Pointer<Void> pInputControl) {
  final _ReadConsole = _kernel32.lookupFunction<
      Int32 Function(
          IntPtr hConsoleInput,
          Pointer lpBuffer,
          Uint32 nNumberOfCharsToRead,
          Pointer<Uint32> lpNumberOfCharsRead,
          Pointer<Void> pInputControl),
      int Function(
          int hConsoleInput,
          Pointer lpBuffer,
          int nNumberOfCharsToRead,
          Pointer<Uint32> lpNumberOfCharsRead,
          Pointer<Void> pInputControl)>('ReadConsoleW');
  return _ReadConsole(hConsoleInput, lpBuffer, nNumberOfCharsToRead,
      lpNumberOfCharsRead, pInputControl);
}

/// Reads data from the specified file or input/output (I/O) device. Reads
/// occur at the position specified by the file pointer if supported by the
/// device.
///
/// ```c
/// BOOL ReadFile(
///   HANDLE       hFile,
///   LPVOID       lpBuffer,
///   DWORD        nNumberOfBytesToRead,
///   LPDWORD      lpNumberOfBytesRead,
///   LPOVERLAPPED lpOverlapped
/// );
/// ```
/// {@category kernel32}
int ReadFile(int hFile, Pointer lpBuffer, int nNumberOfBytesToRead,
    Pointer<Uint32> lpNumberOfBytesRead, Pointer<OVERLAPPED> lpOverlapped) {
  final _ReadFile = _kernel32.lookupFunction<
      Int32 Function(
          IntPtr hFile,
          Pointer lpBuffer,
          Uint32 nNumberOfBytesToRead,
          Pointer<Uint32> lpNumberOfBytesRead,
          Pointer<OVERLAPPED> lpOverlapped),
      int Function(
          int hFile,
          Pointer lpBuffer,
          int nNumberOfBytesToRead,
          Pointer<Uint32> lpNumberOfBytesRead,
          Pointer<OVERLAPPED> lpOverlapped)>('ReadFile');
  return _ReadFile(
      hFile, lpBuffer, nNumberOfBytesToRead, lpNumberOfBytesRead, lpOverlapped);
}

/// ReadProcessMemory copies the data in the specified address range from
/// the address space of the specified process into the specified buffer of
/// the current process. Any process that has a handle with PROCESS_VM_READ
/// access can call the function.
///
/// ```c
/// BOOL ReadProcessMemory(
///   HANDLE  hProcess,
///   LPCVOID lpBaseAddress,
///   LPVOID  lpBuffer,
///   SIZE_T  nSize,
///   SIZE_T  *lpNumberOfBytesRead
/// );
/// ```
/// {@category kernel32}
int ReadProcessMemory(int hProcess, Pointer lpBaseAddress, Pointer lpBuffer,
    int nSize, Pointer<IntPtr> lpNumberOfBytesRead) {
  final _ReadProcessMemory = _kernel32.lookupFunction<
      Int32 Function(IntPtr hProcess, Pointer lpBaseAddress, Pointer lpBuffer,
          IntPtr nSize, Pointer<IntPtr> lpNumberOfBytesRead),
      int Function(int hProcess, Pointer lpBaseAddress, Pointer lpBuffer,
          int nSize, Pointer<IntPtr> lpNumberOfBytesRead)>('ReadProcessMemory');
  return _ReadProcessMemory(
      hProcess, lpBaseAddress, lpBuffer, nSize, lpNumberOfBytesRead);
}

/// The ReleaseActCtx function decrements the reference count of the
/// specified activation context.
///
/// ```c
/// void ReleaseActCtx(
///   HANDLE hActCtx
/// );
/// ```
/// {@category kernel32}
void ReleaseActCtx(int hActCtx) {
  final _ReleaseActCtx = _kernel32.lookupFunction<Void Function(IntPtr hActCtx),
      void Function(int hActCtx)>('ReleaseActCtx');
  return _ReleaseActCtx(hActCtx);
}

/// Deletes an existing empty directory.
///
/// ```c
/// BOOL RemoveDirectoryW(
///   LPCWSTR lpPathName
/// );
/// ```
/// {@category kernel32}
int RemoveDirectory(Pointer<Utf16> lpPathName) {
  final _RemoveDirectory = _kernel32.lookupFunction<
      Int32 Function(Pointer<Utf16> lpPathName),
      int Function(Pointer<Utf16> lpPathName)>('RemoveDirectoryW');
  return _RemoveDirectory(lpPathName);
}

/// Reopens the specified file system object with different access rights,
/// sharing mode, and flags.
///
/// ```c
/// HANDLE ReOpenFile(
///   HANDLE hOriginalFile,
///   DWORD  dwDesiredAccess,
///   DWORD  dwShareMode,
///   DWORD  dwFlagsAndAttributes);
/// ```
/// {@category kernel32}
int ReOpenFile(int hOriginalFile, int dwDesiredAccess, int dwShareMode,
    int dwFlagsAndAttributes) {
  final _ReOpenFile = _kernel32.lookupFunction<
      IntPtr Function(IntPtr hOriginalFile, Uint32 dwDesiredAccess,
          Uint32 dwShareMode, Uint32 dwFlagsAndAttributes),
      int Function(int hOriginalFile, int dwDesiredAccess, int dwShareMode,
          int dwFlagsAndAttributes)>('ReOpenFile');
  return _ReOpenFile(
      hOriginalFile, dwDesiredAccess, dwShareMode, dwFlagsAndAttributes);
}

/// Resizes the internal buffers for a pseudoconsole to the given size.
///
/// ```c
/// HRESULT WINAPI ResizePseudoConsole(
///   _In_ HPCON hPC ,
///   _In_ COORD size
/// );
/// ```
/// {@category kernel32}
int ResizePseudoConsole(int hPC, COORD size) {
  final _ResizePseudoConsole = _kernel32.lookupFunction<
      Int32 Function(IntPtr hPC, COORD size),
      int Function(int hPC, COORD size)>('ResizePseudoConsole');
  return _ResizePseudoConsole(hPC, size);
}

/// Moves a block of data in a screen buffer. The effects of the move can
/// be limited by specifying a clipping rectangle, so the contents of the
/// console screen buffer outside the clipping rectangle are unchanged.
///
/// ```c
/// BOOL WINAPI ScrollConsoleScreenBufferW(
///   _In_           HANDLE     hConsoleOutput,
///   _In_     const SMALL_RECT *lpScrollRectangle,
///   _In_opt_ const SMALL_RECT *lpClipRectangle,
///   _In_           COORD      dwDestinationOrigin,
///   _In_     const CHAR_INFO  *lpFill
/// );
/// ```
/// {@category kernel32}
int ScrollConsoleScreenBuffer(
    int hConsoleOutput,
    Pointer<SMALL_RECT> lpScrollRectangle,
    Pointer<SMALL_RECT> lpClipRectangle,
    COORD dwDestinationOrigin,
    Pointer<CHAR_INFO> lpFill) {
  final _ScrollConsoleScreenBuffer = _kernel32.lookupFunction<
      Int32 Function(
          IntPtr hConsoleOutput,
          Pointer<SMALL_RECT> lpScrollRectangle,
          Pointer<SMALL_RECT> lpClipRectangle,
          COORD dwDestinationOrigin,
          Pointer<CHAR_INFO> lpFill),
      int Function(
          int hConsoleOutput,
          Pointer<SMALL_RECT> lpScrollRectangle,
          Pointer<SMALL_RECT> lpClipRectangle,
          COORD dwDestinationOrigin,
          Pointer<CHAR_INFO> lpFill)>('ScrollConsoleScreenBufferW');
  return _ScrollConsoleScreenBuffer(hConsoleOutput, lpScrollRectangle,
      lpClipRectangle, dwDestinationOrigin, lpFill);
}

/// Adds or removes an application-defined HandlerRoutine function from the
/// list of handler functions for the calling process.
///
/// ```c
/// BOOL WINAPI SetConsoleCtrlHandler(
///   _In_opt_ PHANDLER_ROUTINE HandlerRoutine,
///   _In_     BOOL             Add
/// );
/// ```
/// {@category kernel32}
int SetConsoleCtrlHandler(
    Pointer<NativeFunction<HandlerProc>> HandlerRoutine, int Add) {
  final _SetConsoleCtrlHandler = _kernel32.lookupFunction<
      Int32 Function(
          Pointer<NativeFunction<HandlerProc>> HandlerRoutine, Int32 Add),
      int Function(Pointer<NativeFunction<HandlerProc>> HandlerRoutine,
          int Add)>('SetConsoleCtrlHandler');
  return _SetConsoleCtrlHandler(HandlerRoutine, Add);
}

/// Sets the size and visibility of the cursor for the specified console
/// screen buffer.
///
/// ```c
/// BOOL WINAPI SetConsoleCursorInfo(
///   _In_       HANDLE              hConsoleOutput,
///   _In_ const CONSOLE_CURSOR_INFO *lpConsoleCursorInfo
/// );
/// ```
/// {@category kernel32}
int SetConsoleCursorInfo(
    int hConsoleOutput, Pointer<CONSOLE_CURSOR_INFO> lpConsoleCursorInfo) {
  final _SetConsoleCursorInfo = _kernel32.lookupFunction<
          Int32 Function(IntPtr hConsoleOutput,
              Pointer<CONSOLE_CURSOR_INFO> lpConsoleCursorInfo),
          int Function(int hConsoleOutput,
              Pointer<CONSOLE_CURSOR_INFO> lpConsoleCursorInfo)>(
      'SetConsoleCursorInfo');
  return _SetConsoleCursorInfo(hConsoleOutput, lpConsoleCursorInfo);
}

/// Sets the cursor position in the specified console screen buffer.
///
/// ```c
/// BOOL WINAPI SetConsoleCursorPosition(
///   _In_ HANDLE hConsoleOutput,
///   _In_ COORD  dwCursorPosition
/// );
/// ```
/// {@category kernel32}
int SetConsoleCursorPosition(int hConsoleOutput, COORD dwCursorPosition) {
  final _SetConsoleCursorPosition = _kernel32.lookupFunction<
      Int32 Function(IntPtr hConsoleOutput, COORD dwCursorPosition),
      int Function(int hConsoleOutput,
          COORD dwCursorPosition)>('SetConsoleCursorPosition');
  return _SetConsoleCursorPosition(hConsoleOutput, dwCursorPosition);
}

/// Sets the display mode of the specified console screen buffer.
///
/// ```c
/// BOOL WINAPI SetConsoleDisplayMode(
///   _In_      HANDLE hConsoleOutput,
///   _In_      DWORD  dwFlags,
///   _Out_opt_ PCOORD lpNewScreenBufferDimensions
/// );
/// ```
/// {@category kernel32}
int SetConsoleDisplayMode(int hConsoleOutput, int dwFlags,
    Pointer<COORD> lpNewScreenBufferDimensions) {
  final _SetConsoleDisplayMode = _kernel32.lookupFunction<
      Int32 Function(IntPtr hConsoleOutput, Uint32 dwFlags,
          Pointer<COORD> lpNewScreenBufferDimensions),
      int Function(int hConsoleOutput, int dwFlags,
          Pointer<COORD> lpNewScreenBufferDimensions)>('SetConsoleDisplayMode');
  return _SetConsoleDisplayMode(
      hConsoleOutput, dwFlags, lpNewScreenBufferDimensions);
}

/// Sets the input mode of a console's input buffer or the output mode of a
/// console screen buffer.
///
/// ```c
/// BOOL WINAPI SetConsoleMode(
///   _In_ HANDLE hConsoleHandle,
///   _In_ DWORD  dwMode
/// );
/// ```
/// {@category kernel32}
int SetConsoleMode(int hConsoleHandle, int dwMode) {
  final _SetConsoleMode = _kernel32.lookupFunction<
      Int32 Function(IntPtr hConsoleHandle, Uint32 dwMode),
      int Function(int hConsoleHandle, int dwMode)>('SetConsoleMode');
  return _SetConsoleMode(hConsoleHandle, dwMode);
}

/// Sets the attributes of characters written to the console screen buffer
/// by the WriteFile or WriteConsole function, or echoed by the ReadFile or
/// ReadConsole function. This function affects text written after the
/// function call.
///
/// ```c
/// BOOL WINAPI SetConsoleTextAttribute(
///   _In_ HANDLE hConsoleOutput,
///   _In_ WORD   wAttributes
/// );
/// ```
/// {@category kernel32}
int SetConsoleTextAttribute(int hConsoleOutput, int wAttributes) {
  final _SetConsoleTextAttribute = _kernel32.lookupFunction<
      Int32 Function(IntPtr hConsoleOutput, Uint16 wAttributes),
      int Function(
          int hConsoleOutput, int wAttributes)>('SetConsoleTextAttribute');
  return _SetConsoleTextAttribute(hConsoleOutput, wAttributes);
}

/// Sets the current size and position of a console screen buffer's window.
///
/// ```c
/// BOOL WINAPI SetConsoleWindowInfo(
///   _In_       HANDLE     hConsoleOutput,
///   _In_       BOOL       bAbsolute,
///   _In_ const SMALL_RECT *lpConsoleWindow
/// );
/// ```
/// {@category kernel32}
int SetConsoleWindowInfo(
    int hConsoleOutput, int bAbsolute, Pointer<SMALL_RECT> lpConsoleWindow) {
  final _SetConsoleWindowInfo = _kernel32.lookupFunction<
      Int32 Function(IntPtr hConsoleOutput, Int32 bAbsolute,
          Pointer<SMALL_RECT> lpConsoleWindow),
      int Function(int hConsoleOutput, int bAbsolute,
          Pointer<SMALL_RECT> lpConsoleWindow)>('SetConsoleWindowInfo');
  return _SetConsoleWindowInfo(hConsoleOutput, bAbsolute, lpConsoleWindow);
}

/// Changes the current directory for the current process.
///
/// ```c
/// BOOL SetCurrentDirectoryW(
///   LPCTSTR lpPathName
/// );
/// ```
/// {@category kernel32}
int SetCurrentDirectory(Pointer<Utf16> lpPathName) {
  final _SetCurrentDirectory = _kernel32.lookupFunction<
      Int32 Function(Pointer<Utf16> lpPathName),
      int Function(Pointer<Utf16> lpPathName)>('SetCurrentDirectoryW');
  return _SetCurrentDirectory(lpPathName);
}

/// Moves the file pointer of the specified file.
///
/// ```c
/// DWORD SetFilePointer(
///   HANDLE hFile,
///   LONG   lDistanceToMove,
///   PLONG  lpDistanceToMoveHigh,
///   DWORD  dwMoveMethod
/// );
/// ```
/// {@category kernel32}
int SetFilePointer(int hFile, int lDistanceToMove,
    Pointer<Int32> lpDistanceToMoveHigh, int dwMoveMethod) {
  final _SetFilePointer = _kernel32.lookupFunction<
      Uint32 Function(IntPtr hFile, Int32 lDistanceToMove,
          Pointer<Int32> lpDistanceToMoveHigh, Uint32 dwMoveMethod),
      int Function(
          int hFile,
          int lDistanceToMove,
          Pointer<Int32> lpDistanceToMoveHigh,
          int dwMoveMethod)>('SetFilePointer');
  return _SetFilePointer(
      hFile, lDistanceToMove, lpDistanceToMoveHigh, dwMoveMethod);
}

/// Moves the file pointer of the specified file.
///
/// ```c
/// BOOL SetFilePointerEx(
///   HANDLE         hFile,
///   LARGE_INTEGER  liDistanceToMove,
///   PLARGE_INTEGER lpNewFilePointer,
///   DWORD          dwMoveMethod
/// );
/// ```
/// {@category kernel32}
int SetFilePointerEx(int hFile, int liDistanceToMove,
    Pointer<Int64> lpNewFilePointer, int dwMoveMethod) {
  final _SetFilePointerEx = _kernel32.lookupFunction<
      Int32 Function(IntPtr hFile, Int64 liDistanceToMove,
          Pointer<Int64> lpNewFilePointer, Uint32 dwMoveMethod),
      int Function(
          int hFile,
          int liDistanceToMove,
          Pointer<Int64> lpNewFilePointer,
          int dwMoveMethod)>('SetFilePointerEx');
  return _SetFilePointerEx(
      hFile, liDistanceToMove, lpNewFilePointer, dwMoveMethod);
}

/// Sets the short name for the specified file. The file must be on an NTFS
/// file system volume.
///
/// ```c
/// BOOL SetFileShortNameW(
///   HANDLE  hFile,
///   LPCWSTR lpShortName);
/// ```
/// {@category kernel32}
int SetFileShortName(int hFile, Pointer<Utf16> lpShortName) {
  final _SetFileShortName = _kernel32.lookupFunction<
      Int32 Function(IntPtr hFile, Pointer<Utf16> lpShortName),
      int Function(int hFile, Pointer<Utf16> lpShortName)>('SetFileShortNameW');
  return _SetFileShortName(hFile, lpShortName);
}

/// Sets the value of the specified firmware environment variable.
///
/// ```c
/// BOOL SetFirmwareEnvironmentVariableW(
///   LPCWSTR lpName,
///   LPCWSTR lpGuid,
///   PVOID   pValue,
///   DWORD   nSize
/// );
/// ```
/// {@category kernel32}
int SetFirmwareEnvironmentVariable(
    Pointer<Utf16> lpName, Pointer<Utf16> lpGuid, Pointer pValue, int nSize) {
  final _SetFirmwareEnvironmentVariable = _kernel32.lookupFunction<
      Int32 Function(Pointer<Utf16> lpName, Pointer<Utf16> lpGuid,
          Pointer pValue, Uint32 nSize),
      int Function(Pointer<Utf16> lpName, Pointer<Utf16> lpGuid, Pointer pValue,
          int nSize)>('SetFirmwareEnvironmentVariableW');
  return _SetFirmwareEnvironmentVariable(lpName, lpGuid, pValue, nSize);
}

/// Sets the value of the specified firmware environment variable and the
/// attributes that indicate how this variable is stored and maintained.
///
/// ```c
/// BOOL SetFirmwareEnvironmentVariableExW(
///   LPCWSTR lpName,
///   LPCWSTR lpGuid,
///   PVOID   pValue,
///   DWORD   nSize,
///   DWORD   dwAttributes
/// );
/// ```
/// {@category kernel32}
int SetFirmwareEnvironmentVariableEx(Pointer<Utf16> lpName,
    Pointer<Utf16> lpGuid, Pointer pValue, int nSize, int dwAttributes) {
  final _SetFirmwareEnvironmentVariableEx = _kernel32.lookupFunction<
      Int32 Function(Pointer<Utf16> lpName, Pointer<Utf16> lpGuid,
          Pointer pValue, Uint32 nSize, Uint32 dwAttributes),
      int Function(Pointer<Utf16> lpName, Pointer<Utf16> lpGuid, Pointer pValue,
          int nSize, int dwAttributes)>('SetFirmwareEnvironmentVariableExW');
  return _SetFirmwareEnvironmentVariableEx(
      lpName, lpGuid, pValue, nSize, dwAttributes);
}

/// Sets certain properties of an object handle.
///
/// ```c
/// BOOL SetHandleInformation(
///   HANDLE hObject,
///   DWORD  dwMask,
///   DWORD  dwFlags
/// );
/// ```
/// {@category kernel32}
int SetHandleInformation(int hObject, int dwMask, int dwFlags) {
  final _SetHandleInformation = _kernel32.lookupFunction<
      Int32 Function(IntPtr hObject, Uint32 dwMask, Uint32 dwFlags),
      int Function(
          int hObject, int dwMask, int dwFlags)>('SetHandleInformation');
  return _SetHandleInformation(hObject, dwMask, dwFlags);
}

/// Sets the read mode and the blocking mode of the specified named pipe.
/// If the specified handle is to the client end of a named pipe and if the
/// named pipe server process is on a remote computer, the function can
/// also be used to control local buffering.
///
/// ```c
/// BOOL SetNamedPipeHandleState(
///   HANDLE  hNamedPipe,
///   LPDWORD lpMode,
///   LPDWORD lpMaxCollectionCount,
///   LPDWORD lpCollectDataTimeout);
/// ```
/// {@category kernel32}
int SetNamedPipeHandleState(
    int hNamedPipe,
    Pointer<Uint32> lpMode,
    Pointer<Uint32> lpMaxCollectionCount,
    Pointer<Uint32> lpCollectDataTimeout) {
  final _SetNamedPipeHandleState = _kernel32.lookupFunction<
      Int32 Function(
          IntPtr hNamedPipe,
          Pointer<Uint32> lpMode,
          Pointer<Uint32> lpMaxCollectionCount,
          Pointer<Uint32> lpCollectDataTimeout),
      int Function(
          int hNamedPipe,
          Pointer<Uint32> lpMode,
          Pointer<Uint32> lpMaxCollectionCount,
          Pointer<Uint32> lpCollectDataTimeout)>('SetNamedPipeHandleState');
  return _SetNamedPipeHandleState(
      hNamedPipe, lpMode, lpMaxCollectionCount, lpCollectDataTimeout);
}

/// Sets the handle for the specified standard device (standard input,
/// standard output, or standard error).
///
/// ```c
/// BOOL WINAPI SetStdHandle(
///   _In_ DWORD  nStdHandle,
///   _In_ HANDLE hHandle
/// );
/// ```
/// {@category kernel32}
int SetStdHandle(int nStdHandle, int hHandle) {
  final _SetStdHandle = _kernel32.lookupFunction<
      Int32 Function(Uint32 nStdHandle, IntPtr hHandle),
      int Function(int nStdHandle, int hHandle)>('SetStdHandle');
  return _SetStdHandle(nStdHandle, hHandle);
}

/// Enables an application to inform the system that it is in use, thereby
/// preventing the system from entering sleep or turning off the display
/// while the application is running.
///
/// ```c
/// EXECUTION_STATE SetThreadExecutionState(
///   EXECUTION_STATE esFlags
///   );
/// ```
/// {@category kernel32}
int SetThreadExecutionState(int esFlags) {
  final _SetThreadExecutionState = _kernel32.lookupFunction<
      Uint32 Function(Uint32 esFlags),
      int Function(int esFlags)>('SetThreadExecutionState');
  return _SetThreadExecutionState(esFlags);
}

/// Sets the user interface language for the current thread.
///
/// ```c
/// LANGID SetThreadUILanguage(
///   LANGID LangId
/// );
/// ```
/// {@category kernel32}
int SetThreadUILanguage(int LangId) {
  final _SetThreadUILanguage = _kernel32.lookupFunction<
      Uint16 Function(Uint16 LangId),
      int Function(int LangId)>('SetThreadUILanguage');
  return _SetThreadUILanguage(LangId);
}

/// Sets the label of a file system volume.
///
/// ```c
/// BOOL SetVolumeLabelW(
///   LPCWSTR lpRootPathName,
///   LPCWSTR lpVolumeName);
/// ```
/// {@category kernel32}
int SetVolumeLabel(Pointer<Utf16> lpRootPathName, Pointer<Utf16> lpVolumeName) {
  final _SetVolumeLabel = _kernel32.lookupFunction<
      Int32 Function(
          Pointer<Utf16> lpRootPathName, Pointer<Utf16> lpVolumeName),
      int Function(Pointer<Utf16> lpRootPathName,
          Pointer<Utf16> lpVolumeName)>('SetVolumeLabelW');
  return _SetVolumeLabel(lpRootPathName, lpVolumeName);
}

/// Suspends the execution of the current thread until the time-out
/// interval elapses.
///
/// ```c
/// void Sleep(
///   DWORD dwMilliseconds
/// );
/// ```
/// {@category kernel32}
void Sleep(int dwMilliseconds) {
  final _Sleep = _kernel32.lookupFunction<Void Function(Uint32 dwMilliseconds),
      void Function(int dwMilliseconds)>('Sleep');
  return _Sleep(dwMilliseconds);
}

/// Terminates the specified process and all of its threads.
///
/// ```c
/// BOOL TerminateProcess(
///   HANDLE hProcess,
///   UINT   uExitCode);
/// ```
/// {@category kernel32}
int TerminateProcess(int hProcess, int uExitCode) {
  final _TerminateProcess = _kernel32.lookupFunction<
      Int32 Function(IntPtr hProcess, Uint32 uExitCode),
      int Function(int hProcess, int uExitCode)>('TerminateProcess');
  return _TerminateProcess(hProcess, uExitCode);
}

/// Combines the functions that write a message to and read a message from
/// the specified named pipe into a single network operation.
///
/// ```c
/// BOOL TransactNamedPipe(
///   HANDLE       hNamedPipe,
///   LPVOID       lpInBuffer,
///   DWORD        nInBufferSize,
///   LPVOID       lpOutBuffer,
///   DWORD        nOutBufferSize,
///   LPDWORD      lpBytesRead,
///   LPOVERLAPPED lpOverlapped);
/// ```
/// {@category kernel32}
int TransactNamedPipe(
    int hNamedPipe,
    Pointer lpInBuffer,
    int nInBufferSize,
    Pointer lpOutBuffer,
    int nOutBufferSize,
    Pointer<Uint32> lpBytesRead,
    Pointer<OVERLAPPED> lpOverlapped) {
  final _TransactNamedPipe = _kernel32.lookupFunction<
      Int32 Function(
          IntPtr hNamedPipe,
          Pointer lpInBuffer,
          Uint32 nInBufferSize,
          Pointer lpOutBuffer,
          Uint32 nOutBufferSize,
          Pointer<Uint32> lpBytesRead,
          Pointer<OVERLAPPED> lpOverlapped),
      int Function(
          int hNamedPipe,
          Pointer lpInBuffer,
          int nInBufferSize,
          Pointer lpOutBuffer,
          int nOutBufferSize,
          Pointer<Uint32> lpBytesRead,
          Pointer<OVERLAPPED> lpOverlapped)>('TransactNamedPipe');
  return _TransactNamedPipe(hNamedPipe, lpInBuffer, nInBufferSize, lpOutBuffer,
      nOutBufferSize, lpBytesRead, lpOverlapped);
}

/// Updates the specified attribute in a list of attributes for process and
/// thread creation.
///
/// ```c
/// BOOL UpdateProcThreadAttribute(
///   LPPROC_THREAD_ATTRIBUTE_LIST lpAttributeList,
///   DWORD                        dwFlags,
///   DWORD_PTR                    Attribute,
///   PVOID                        lpValue,
///   SIZE_T                       cbSize,
///   PVOID                        lpPreviousValue,
///   PSIZE_T                      lpReturnSize
/// );
/// ```
/// {@category kernel32}
int UpdateProcThreadAttribute(
    int lpAttributeList,
    int dwFlags,
    int Attribute,
    Pointer lpValue,
    int cbSize,
    Pointer lpPreviousValue,
    Pointer<IntPtr> lpReturnSize) {
  final _UpdateProcThreadAttribute = _kernel32.lookupFunction<
      Int32 Function(
          IntPtr lpAttributeList,
          Uint32 dwFlags,
          IntPtr Attribute,
          Pointer lpValue,
          IntPtr cbSize,
          Pointer lpPreviousValue,
          Pointer<IntPtr> lpReturnSize),
      int Function(
          int lpAttributeList,
          int dwFlags,
          int Attribute,
          Pointer lpValue,
          int cbSize,
          Pointer lpPreviousValue,
          Pointer<IntPtr> lpReturnSize)>('UpdateProcThreadAttribute');
  return _UpdateProcThreadAttribute(lpAttributeList, dwFlags, Attribute,
      lpValue, cbSize, lpPreviousValue, lpReturnSize);
}

/// Adds, deletes, or replaces a resource in a portable executable (PE)
/// file.
///
/// ```c
/// BOOL UpdateResourceW(
///   HANDLE  hUpdate,
///   LPCWSTR lpType,
///   LPCWSTR lpName,
///   WORD    wLanguage,
///   LPVOID  lpData,
///   DWORD   cb
/// );
/// ```
/// {@category kernel32}
int UpdateResource(int hUpdate, Pointer<Utf16> lpType, Pointer<Utf16> lpName,
    int wLanguage, Pointer lpData, int cb) {
  final _UpdateResource = _kernel32.lookupFunction<
      Int32 Function(IntPtr hUpdate, Pointer<Utf16> lpType,
          Pointer<Utf16> lpName, Uint16 wLanguage, Pointer lpData, Uint32 cb),
      int Function(int hUpdate, Pointer<Utf16> lpType, Pointer<Utf16> lpName,
          int wLanguage, Pointer lpData, int cb)>('UpdateResourceW');
  return _UpdateResource(hUpdate, lpType, lpName, wLanguage, lpData, cb);
}

/// Retrieves a description string for the language associated with a
/// specified binary Microsoft language identifier.
///
/// ```c
/// DWORD VerLanguageNameW(
///   DWORD  wLang,
///   LPWSTR szLang,
///   DWORD  cchLang
/// );
/// ```
/// {@category kernel32}
int VerLanguageName(int wLang, Pointer<Utf16> szLang, int cchLang) {
  final _VerLanguageName = _kernel32.lookupFunction<
      Uint32 Function(Uint32 wLang, Pointer<Utf16> szLang, Uint32 cchLang),
      int Function(
          int wLang, Pointer<Utf16> szLang, int cchLang)>('VerLanguageNameW');
  return _VerLanguageName(wLang, szLang, cchLang);
}

/// Reserves, commits, or changes the state of a region of pages in the
/// virtual address space of the calling process. Memory allocated by this
/// function is automatically initialized to zero.
///
/// ```c
/// LPVOID VirtualAlloc(
///   LPVOID lpAddress,
///   SIZE_T dwSize,
///   DWORD  flAllocationType,
///   DWORD  flProtect
/// );
/// ```
/// {@category kernel32}
Pointer VirtualAlloc(
    Pointer lpAddress, int dwSize, int flAllocationType, int flProtect) {
  final _VirtualAlloc = _kernel32.lookupFunction<
      Pointer Function(Pointer lpAddress, IntPtr dwSize,
          Uint32 flAllocationType, Uint32 flProtect),
      Pointer Function(Pointer lpAddress, int dwSize, int flAllocationType,
          int flProtect)>('VirtualAlloc');
  return _VirtualAlloc(lpAddress, dwSize, flAllocationType, flProtect);
}

/// Releases, decommits, or releases and decommits a region of pages within
/// the virtual address space of the calling process.
///
/// ```c
/// BOOL VirtualFree(
///   LPVOID lpAddress,
///   SIZE_T dwSize,
///   DWORD  dwFreeType
/// );
/// ```
/// {@category kernel32}
int VirtualFree(Pointer lpAddress, int dwSize, int dwFreeType) {
  final _VirtualFree = _kernel32.lookupFunction<
      Int32 Function(Pointer lpAddress, IntPtr dwSize, Uint32 dwFreeType),
      int Function(
          Pointer lpAddress, int dwSize, int dwFreeType)>('VirtualFree');
  return _VirtualFree(lpAddress, dwSize, dwFreeType);
}

/// Waits until the specified object is in the signaled state or the
/// time-out interval elapses.
///
/// ```c
/// DWORD WaitForSingleObject(
///   HANDLE hHandle,
///   DWORD  dwMilliseconds
/// );
/// ```
/// {@category kernel32}
int WaitForSingleObject(int hHandle, int dwMilliseconds) {
  final _WaitForSingleObject = _kernel32.lookupFunction<
      Uint32 Function(IntPtr hHandle, Uint32 dwMilliseconds),
      int Function(int hHandle, int dwMilliseconds)>('WaitForSingleObject');
  return _WaitForSingleObject(hHandle, dwMilliseconds);
}

/// Maps a UTF-16 (wide character) string to a new character string. The
/// new character string is not necessarily from a multibyte character set.
///
/// ```c
/// int WideCharToMultiByte(
///   UINT   CodePage,
///   DWORD  dwFlags,
///   LPCWCH lpWideCharStr,
///   int    cchWideChar,
///   LPSTR  lpMultiByteStr,
///   int    cbMultiByte,
///   LPCCH  lpDefaultChar,
///   LPBOOL lpUsedDefaultChar
/// );
/// ```
/// {@category kernel32}
int WideCharToMultiByte(
    int CodePage,
    int dwFlags,
    Pointer<Utf16> lpWideCharStr,
    int cchWideChar,
    Pointer<Utf8> lpMultiByteStr,
    int cbMultiByte,
    Pointer<Utf8> lpDefaultChar,
    Pointer<Int32> lpUsedDefaultChar) {
  final _WideCharToMultiByte = _kernel32.lookupFunction<
      Int32 Function(
          Uint32 CodePage,
          Uint32 dwFlags,
          Pointer<Utf16> lpWideCharStr,
          Int32 cchWideChar,
          Pointer<Utf8> lpMultiByteStr,
          Int32 cbMultiByte,
          Pointer<Utf8> lpDefaultChar,
          Pointer<Int32> lpUsedDefaultChar),
      int Function(
          int CodePage,
          int dwFlags,
          Pointer<Utf16> lpWideCharStr,
          int cchWideChar,
          Pointer<Utf8> lpMultiByteStr,
          int cbMultiByte,
          Pointer<Utf8> lpDefaultChar,
          Pointer<Int32> lpUsedDefaultChar)>('WideCharToMultiByte');
  return _WideCharToMultiByte(CodePage, dwFlags, lpWideCharStr, cchWideChar,
      lpMultiByteStr, cbMultiByte, lpDefaultChar, lpUsedDefaultChar);
}

/// Suspends the specified WOW64 thread.
///
/// ```c
/// DWORD Wow64SuspendThread(
///   HANDLE hThread
/// );
/// ```
/// {@category kernel32}
int Wow64SuspendThread(int hThread) {
  final _Wow64SuspendThread = _kernel32.lookupFunction<
      Uint32 Function(IntPtr hThread),
      int Function(int hThread)>('Wow64SuspendThread');
  return _Wow64SuspendThread(hThread);
}

/// Writes a character string to a console screen buffer beginning at the
/// current cursor location.
///
/// ```c
/// BOOL WINAPI WriteConsoleW(
///   _In_             HANDLE  hConsoleOutput,
///   _In_       const VOID    *lpBuffer,
///   _In_             DWORD   nNumberOfCharsToWrite,
///   _Out_opt_        LPDWORD lpNumberOfCharsWritten,
///   _Reserved_       LPVOID  lpReserved
/// );
/// ```
/// {@category kernel32}
int WriteConsole(
    int hConsoleOutput,
    Pointer lpBuffer,
    int nNumberOfCharsToWrite,
    Pointer<Uint32> lpNumberOfCharsWritten,
    Pointer lpReserved) {
  final _WriteConsole = _kernel32.lookupFunction<
      Int32 Function(
          IntPtr hConsoleOutput,
          Pointer lpBuffer,
          Uint32 nNumberOfCharsToWrite,
          Pointer<Uint32> lpNumberOfCharsWritten,
          Pointer lpReserved),
      int Function(
          int hConsoleOutput,
          Pointer lpBuffer,
          int nNumberOfCharsToWrite,
          Pointer<Uint32> lpNumberOfCharsWritten,
          Pointer lpReserved)>('WriteConsoleW');
  return _WriteConsole(hConsoleOutput, lpBuffer, nNumberOfCharsToWrite,
      lpNumberOfCharsWritten, lpReserved);
}

/// Writes data to the specified file or input/output (I/O) device.
///
/// ```c
/// BOOL WriteFile(
///   HANDLE       hFile,
///   LPCVOID      lpBuffer,
///   DWORD        nNumberOfBytesToWrite,
///   LPDWORD      lpNumberOfBytesWritten,
///   LPOVERLAPPED lpOverlapped
/// );
/// ```
/// {@category kernel32}
int WriteFile(int hFile, Pointer lpBuffer, int nNumberOfBytesToWrite,
    Pointer<Uint32> lpNumberOfBytesWritten, Pointer<OVERLAPPED> lpOverlapped) {
  final _WriteFile = _kernel32.lookupFunction<
      Int32 Function(
          IntPtr hFile,
          Pointer lpBuffer,
          Uint32 nNumberOfBytesToWrite,
          Pointer<Uint32> lpNumberOfBytesWritten,
          Pointer<OVERLAPPED> lpOverlapped),
      int Function(
          int hFile,
          Pointer lpBuffer,
          int nNumberOfBytesToWrite,
          Pointer<Uint32> lpNumberOfBytesWritten,
          Pointer<OVERLAPPED> lpOverlapped)>('WriteFile');
  return _WriteFile(hFile, lpBuffer, nNumberOfBytesToWrite,
      lpNumberOfBytesWritten, lpOverlapped);
}

/// Writes data to an area of memory in a specified process. The entire
/// area to be written to must be accessible or the operation fails.
///
/// ```c
/// BOOL WriteProcessMemory(
///   HANDLE  hProcess,
///   LPVOID  lpBaseAddress,
///   LPCVOID lpBuffer,
///   SIZE_T  nSize,
///   SIZE_T  *lpNumberOfBytesWritten
/// );
/// ```
/// {@category kernel32}
int WriteProcessMemory(int hProcess, Pointer lpBaseAddress, Pointer lpBuffer,
    int nSize, Pointer<IntPtr> lpNumberOfBytesWritten) {
  final _WriteProcessMemory = _kernel32.lookupFunction<
      Int32 Function(IntPtr hProcess, Pointer lpBaseAddress, Pointer lpBuffer,
          IntPtr nSize, Pointer<IntPtr> lpNumberOfBytesWritten),
      int Function(
          int hProcess,
          Pointer lpBaseAddress,
          Pointer lpBuffer,
          int nSize,
          Pointer<IntPtr> lpNumberOfBytesWritten)>('WriteProcessMemory');
  return _WriteProcessMemory(
      hProcess, lpBaseAddress, lpBuffer, nSize, lpNumberOfBytesWritten);
}
