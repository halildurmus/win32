// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'com/combase.dart';
import 'structs.dart';

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
final ActivateActCtx = _kernel32.lookupFunction<
    Int32 Function(IntPtr hActCtx, Pointer<IntPtr> lpCookie),
    int Function(int hActCtx, Pointer<IntPtr> lpCookie)>('ActivateActCtx');

/// Allocates a new console for the calling process.
///
/// ```c
/// BOOL WINAPI AllocConsole(void);
/// ```
/// {@category kernel32}
final AllocConsole =
    _kernel32.lookupFunction<Int32 Function(), int Function()>('AllocConsole');

/// Attaches the calling process to the console of the specified process.
///
/// ```c
/// BOOL WINAPI AttachConsole(
///   _In_ DWORD dwProcessId
/// );
/// ```
/// {@category kernel32}
final AttachConsole = _kernel32.lookupFunction<
    Int32 Function(Uint32 dwProcessId),
    int Function(int dwProcessId)>('AttachConsole');

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
final Beep = _kernel32.lookupFunction<
    Int32 Function(Uint32 dwFreq, Uint32 dwDuration),
    int Function(int dwFreq, int dwDuration)>('Beep');

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
final BeginUpdateResource = _kernel32.lookupFunction<
    IntPtr Function(Pointer<Utf16> pFilename, Int32 bDeleteExistingResources),
    int Function(Pointer<Utf16> pFilename,
        int bDeleteExistingResources)>('BeginUpdateResourceW');

/// Closes an open object handle.
///
/// ```c
/// BOOL CloseHandle(
///   HANDLE hObject
/// );
/// ```
/// {@category kernel32}
final CloseHandle = _kernel32.lookupFunction<Int32 Function(IntPtr hObject),
    int Function(int hObject)>('CloseHandle');

/// Closes a pseudoconsole from the given handle.
///
/// ```c
/// void WINAPI ClosePseudoConsole(
///     _In_ HPCON hPC
/// );
/// ```
/// {@category kernel32}
final ClosePseudoConsole = _kernel32.lookupFunction<
    Void Function(Pointer<IntPtr> hPC),
    void Function(Pointer<IntPtr> hPC)>('ClosePseudoConsole');

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
final CreateConsoleScreenBuffer = _kernel32.lookupFunction<
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
final CreateFile = _kernel32.lookupFunction<
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
final CreatePipe = _kernel32.lookupFunction<
    Int32 Function(Pointer<IntPtr> hReadPipe, Pointer<IntPtr> hWritePipe,
        Pointer<SECURITY_ATTRIBUTES> lpPipeAttributes, Uint32 nSize),
    int Function(
        Pointer<IntPtr> hReadPipe,
        Pointer<IntPtr> hWritePipe,
        Pointer<SECURITY_ATTRIBUTES> lpPipeAttributes,
        int nSize)>('CreatePipe');

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
final CreateProcess = _kernel32.lookupFunction<
    Int32 Function(
        Pointer<Utf16> lpApplicationName,
        Pointer<Utf16> lpCommandLine,
        Pointer<SECURITY_ATTRIBUTES> lpProcessAttributes,
        Pointer<SECURITY_ATTRIBUTES> lpThreadAttributes,
        Int32 bInheritHandles,
        Uint32 dwCreationFlags,
        Pointer lpEnvironment,
        Pointer<Utf16> lpCurrentDirectory,
        Pointer lpStartupInfo,
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
        Pointer lpStartupInfo,
        Pointer<PROCESS_INFORMATION> lpProcessInformation)>('CreateProcessW');

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
final CreatePseudoConsole = _kernel32.lookupFunction<
    Int32 Function(Int32 size, IntPtr hInput, IntPtr hOutput, Int32 dwFlags,
        Pointer<IntPtr> phPC),
    int Function(int size, int hInput, int hOutput, int dwFlags,
        Pointer<IntPtr> phPC)>('CreatePseudoConsole');

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
final DeactivateActCtx = _kernel32.lookupFunction<
    Int32 Function(Uint32 dwFlags, IntPtr ulCookie),
    int Function(int dwFlags, int ulCookie)>('DeactivateActCtx');

/// Commits or discards changes made prior to a call to UpdateResource.
///
/// ```c
/// BOOL EndUpdateResourceW(
///   HANDLE hUpdate,
///   BOOL   fDiscard
/// );
/// ```
/// {@category kernel32}
final EndUpdateResource = _kernel32.lookupFunction<
    Int32 Function(IntPtr hUpdate, Int32 fDiscard),
    int Function(int hUpdate, int fDiscard)>('EndUpdateResourceW');

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
final EnumResourceNames = _kernel32.lookupFunction<
    Int32 Function(IntPtr hModule, Pointer<Utf16> lpType,
        Pointer<NativeFunction> lpEnumFunc, IntPtr lParam),
    int Function(int hModule, Pointer<Utf16> lpType,
        Pointer<NativeFunction> lpEnumFunc, int lParam)>('EnumResourceNamesW');

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
final EnumResourceTypes = _kernel32.lookupFunction<
    Int32 Function(
        IntPtr hModule, Pointer<NativeFunction> lpEnumFunc, IntPtr lParam),
    int Function(int hModule, Pointer<NativeFunction> lpEnumFunc,
        int lParam)>('EnumResourceTypesW');

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
final FillConsoleOutputAttribute = _kernel32.lookupFunction<
    Int32 Function(IntPtr hConsoleOutput, Uint16 wAttribute, Uint32 nLength,
        Int32 dwWriteCoord, Pointer<Uint32> lpNumberOfAttrsWritten),
    int Function(
        int hConsoleOutput,
        int wAttribute,
        int nLength,
        int dwWriteCoord,
        Pointer<Uint32> lpNumberOfAttrsWritten)>('FillConsoleOutputAttribute');

/// Writes a character to the console screen buffer a specified number of
/// times, beginning at the specified coordinates.
///
/// ```c
/// BOOL WINAPI FillConsoleOutputCharacter(
///   _In_  HANDLE  hConsoleOutput,
///   _In_  TCHAR   cCharacter,
///   _In_  DWORD   nLength,
///   _In_  COORD   dwWriteCoord,
///   _Out_ LPDWORD lpNumberOfCharsWritten
/// );
/// ```
/// {@category kernel32}
final FillConsoleOutputCharacter = _kernel32.lookupFunction<
    Int32 Function(IntPtr hConsoleOutput, Uint8 cCharacter, Uint32 nLength,
        Int32 dwWriteCoord, Pointer<Uint32> lpNumberOfCharsWritten),
    int Function(
        int hConsoleOutput,
        int cCharacter,
        int nLength,
        int dwWriteCoord,
        Pointer<Uint32> lpNumberOfCharsWritten)>('FillConsoleOutputCharacterW');

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
final FindFirstVolume = _kernel32.lookupFunction<
    IntPtr Function(Pointer<Utf16> lpszVolumeName, Uint32 cchBufferLength),
    int Function(Pointer<Utf16> lpszVolumeName,
        int cchBufferLength)>('FindFirstVolumeW');

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
final FindNextVolume = _kernel32.lookupFunction<
    Int32 Function(IntPtr hFindVolume, Pointer<Utf16> lpszVolumeName,
        Uint32 cchBufferLength),
    int Function(int hFindVolume, Pointer<Utf16> lpszVolumeName,
        int cchBufferLength)>('FindNextVolumeW');

/// Closes the specified volume search handle. The FindFirstVolume and
/// FindNextVolume functions use this search handle to locate volumes.
///
/// ```c
/// BOOL FindVolumeClose(
///   HANDLE hFindVolume
/// );
/// ```
/// {@category kernel32}
final FindVolumeClose = _kernel32.lookupFunction<
    Int32 Function(IntPtr hFindVolume),
    int Function(int hFindVolume)>('FindVolumeClose');

/// Flushes the console input buffer. All input records currently in the
/// input buffer are discarded.
///
/// ```c
/// BOOL WINAPI FlushConsoleInputBuffer(
///   _In_ HANDLE hConsoleInput
/// );
/// ```
/// {@category kernel32}
final FlushConsoleInputBuffer = _kernel32.lookupFunction<
    Int32 Function(IntPtr hConsoleInput),
    int Function(int hConsoleInput)>('FlushConsoleInputBuffer');

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
final FormatMessage = _kernel32.lookupFunction<
    Int32 Function(
        Uint32 dwFlags,
        Pointer<Void> lpSource,
        Uint32 dwMessageId,
        Uint32 dwLanguageId,
        Pointer<Utf16> lpBuffer,
        Uint32 nSize,
        Pointer arguments),
    int Function(
        int dwFlags,
        Pointer<Void> lpSource,
        int dwMessageId,
        int dwLanguageId,
        Pointer<Utf16> lpBuffer,
        int nSize,
        Pointer arguments)>('FormatMessageW');

/// Detaches the calling process from its console.
///
/// ```c
/// BOOL WINAPI FreeConsole(void);
/// ```
/// {@category kernel32}
final FreeConsole =
    _kernel32.lookupFunction<Int32 Function(), int Function()>('FreeConsole');

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
final FreeLibrary = _kernel32.lookupFunction<Int32 Function(IntPtr hLibModule),
    int Function(int hLibModule)>('FreeLibrary');

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
final GetComputerNameEx = _kernel32.lookupFunction<
    Int32 Function(
        Int32 NameType, Pointer<Utf16> lpBuffer, Pointer<Uint32> nSize),
    int Function(int NameType, Pointer<Utf16> lpBuffer,
        Pointer<Uint32> nSize)>('GetComputerNameExW');

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
final GetConsoleCursorInfo = _kernel32.lookupFunction<
        Int32 Function(IntPtr hConsoleOutput,
            Pointer<CONSOLE_CURSOR_INFO> lpConsoleCursorInfo),
        int Function(int hConsoleOutput,
            Pointer<CONSOLE_CURSOR_INFO> lpConsoleCursorInfo)>(
    'GetConsoleCursorInfo');

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
final GetConsoleMode = _kernel32.lookupFunction<
    Int32 Function(IntPtr hConsoleHandle, Pointer<Uint32> lpMode),
    int Function(int hConsoleHandle, Pointer<Uint32> lpMode)>('GetConsoleMode');

/// Retrieves information about the specified console screen buffer.
///
/// ```c
/// BOOL WINAPI GetConsoleScreenBufferInfo(
///   _In_  HANDLE                      hConsoleOutput,
///   _Out_ PCONSOLE_SCREEN_BUFFER_INFO lpConsoleScreenBufferInfo
/// );
/// ```
/// {@category kernel32}
final GetConsoleScreenBufferInfo = _kernel32.lookupFunction<
        Int32 Function(IntPtr hConsoleOutput,
            Pointer<CONSOLE_SCREEN_BUFFER_INFO> lpConsoleScreenBufferInfo),
        int Function(int hConsoleOutput,
            Pointer<CONSOLE_SCREEN_BUFFER_INFO> lpConsoleScreenBufferInfo)>(
    'GetConsoleScreenBufferInfo');

/// Retrieves information about the current console selection.
///
/// ```c
/// BOOL WINAPI GetConsoleSelectionInfo(
///   _Out_ PCONSOLE_SELECTION_INFO lpConsoleSelectionInfo
/// );
/// ```
/// {@category kernel32}
final GetConsoleSelectionInfo = _kernel32.lookupFunction<
        Int32 Function(Pointer<CONSOLE_SELECTION_INFO> lpConsoleSelectionInfo),
        int Function(Pointer<CONSOLE_SELECTION_INFO> lpConsoleSelectionInfo)>(
    'GetConsoleSelectionInfo');

/// Retrieves the title for the current console window.
///
/// ```c
/// DWORD WINAPI GetConsoleTitle(
///   _Out_ LPTSTR lpConsoleTitle,
///   _In_  DWORD  nSize
/// );
/// ```
/// {@category kernel32}
final GetConsoleTitle = _kernel32.lookupFunction<
    Uint32 Function(Pointer<Utf16> lpConsoleTitle, Uint32 nSize),
    int Function(Pointer<Utf16> lpConsoleTitle, int nSize)>('GetConsoleTitleW');

/// Retrieves the window handle used by the console associated with the
/// calling process.
///
/// ```c
/// HWND WINAPI GetConsoleWindow(void);
/// ```
/// {@category kernel32}
final GetConsoleWindow = _kernel32
    .lookupFunction<IntPtr Function(), int Function()>('GetConsoleWindow');

/// Retrieves a pseudo handle for the current process.
///
/// ```c
/// HANDLE GetCurrentProcess();
/// ```
/// {@category kernel32}
final GetCurrentProcess = _kernel32
    .lookupFunction<IntPtr Function(), int Function()>('GetCurrentProcess');

/// Retrieves the size of the largest possible console window, based on the
/// current font and the size of the display.
///
/// ```c
/// COORD WINAPI GetLargestConsoleWindowSize(
///   _In_ HANDLE hConsoleOutput
/// );
/// ```
/// {@category kernel32}
final GetLargestConsoleWindowSize = _kernel32.lookupFunction<
    Int32 Function(IntPtr hConsoleOutput),
    int Function(int hConsoleOutput)>('GetLargestConsoleWindowSize');

/// Retrieves the calling thread's last-error code value. The last-error
/// code is maintained on a per-thread basis. Multiple threads do not
/// overwrite each other's last-error code.
///
/// ```c
/// _Post_equals_last_error_ DWORD GetLastError();
/// ```
/// {@category kernel32}
final GetLastError =
    _kernel32.lookupFunction<Uint32 Function(), int Function()>('GetLastError');

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
final GetModuleFileName = _kernel32.lookupFunction<
    Int32 Function(IntPtr hModule, Pointer<Utf16> lpFilename, Uint32 nSize),
    int Function(int hModule, Pointer<Utf16> lpFilename,
        int nSize)>('GetModuleFileNameW');

/// Retrieves a module handle for the specified module. The module must
/// have been loaded by the calling process.
///
/// ```c
/// HMODULE GetModuleHandleW(
///   LPCWSTR lpModuleName
/// );
/// ```
/// {@category kernel32}
final GetModuleHandle = _kernel32.lookupFunction<
    IntPtr Function(Pointer<Utf16> lpModuleName),
    int Function(Pointer<Utf16> lpModuleName)>('GetModuleHandleW');

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
final GetNativeSystemInfo = _kernel32.lookupFunction<
    Void Function(Pointer<SYSTEM_INFO> lpSystemInfo),
    void Function(Pointer<SYSTEM_INFO> lpSystemInfo)>('GetNativeSystemInfo');

/// Retrieves the amount of RAM that is physically installed on the
/// computer.
///
/// ```c
/// BOOL GetPhysicallyInstalledSystemMemory(
///   PULONGLONG TotalMemoryInKilobytes
/// );
/// ```
/// {@category kernel32}
final GetPhysicallyInstalledSystemMemory = _kernel32.lookupFunction<
        Int32 Function(Pointer<Uint64> TotalMemoryInKilobytes),
        int Function(Pointer<Uint64> TotalMemoryInKilobytes)>(
    'GetPhysicallyInstalledSystemMemory');

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
final GetProcAddress = _kernel32.lookupFunction<
    IntPtr Function(IntPtr hModule, Pointer<Uint8> lpProcName),
    int Function(int hModule, Pointer<Uint8> lpProcName)>('GetProcAddress');

/// Retrieves a handle to the default heap of the calling process. This
/// handle can then be used in subsequent calls to the heap functions.
///
/// ```c
/// HANDLE GetProcessHeap();
/// ```
/// {@category kernel32}
final GetProcessHeap = _kernel32
    .lookupFunction<IntPtr Function(), int Function()>('GetProcessHeap');

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
final GetProductInfo = _kernel32.lookupFunction<
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

/// Retrieves a handle to the specified standard device (standard input,
/// standard output, or standard error).
///
/// ```c
/// HANDLE WINAPI GetStdHandle(
///   _In_ DWORD nStdHandle
/// );
/// ```
/// {@category kernel32}
final GetStdHandle = _kernel32.lookupFunction<
    IntPtr Function(Uint32 nStdHandle),
    int Function(int nStdHandle)>('GetStdHandle');

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
final GetSystemInfo = _kernel32.lookupFunction<
    Void Function(Pointer<SYSTEM_INFO> lpSystemInfo),
    void Function(Pointer<SYSTEM_INFO> lpSystemInfo)>('GetSystemInfo');

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
final GetSystemPowerStatus = _kernel32.lookupFunction<
        Int32 Function(Pointer<SYSTEM_POWER_STATUS> lpSystemPowerStatus),
        int Function(Pointer<SYSTEM_POWER_STATUS> lpSystemPowerStatus)>(
    'GetSystemPowerStatus');

/// Retrieves the path of the directory designated for temporary files.
///
/// ```c
/// DWORD GetTempPathW(
///   DWORD  nBufferLength,
///   LPWSTR lpBuffer
/// );
/// ```
/// {@category kernel32}
final GetTempPath = _kernel32.lookupFunction<
    Uint32 Function(Uint32 nBufferLength, Pointer<Utf16> lpBuffer),
    int Function(int nBufferLength, Pointer<Utf16> lpBuffer)>('GetTempPathW');

/// With the release of Windows 8.1, the behavior of the GetVersionEx API
/// has changed in the value it will return for the operating system
/// version. The value returned by the GetVersionEx function now depends on
/// how the application is manifested. Applications not manifested for
/// Windows 8.1 or Windows 10 will return the Windows 8 OS version value
/// (6.2). Once an application is manifested for a given operating system
/// version, GetVersionEx will always return the version that the
/// application is manifested for in future releases.
///
/// ```c
/// NOT_BUILD_WINDOWS_DEPRECATE BOOL GetVersionExW(
///   LPOSVERSIONINFOW lpVersionInformation
/// );
/// ```
/// {@category kernel32}
final GetVersionEx = _kernel32.lookupFunction<
    Int32 Function(Pointer<OSVERSIONINFO> lpVersionInformation),
    int Function(Pointer<OSVERSIONINFO> lpVersionInformation)>('GetVersionExW');

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
final GetVolumePathNamesForVolumeName = _kernel32.lookupFunction<
    Int32 Function(
        Pointer<Utf16> lpszVolumeName,
        Pointer<Utf16> lpszVolumePathNames,
        Uint32 cchBufferLength,
        Pointer<Uint32> lpcchReturnLength),
    int Function(
        Pointer<Utf16> lpszVolumeName,
        Pointer<Utf16> lpszVolumePathNames,
        int cchBufferLength,
        Pointer<Uint32> lpcchReturnLength)>('GetVolumePathNamesForVolumeNameW');

/// Allocates a block of memory from a heap. The allocated memory is not
/// movable.
///
/// ```c
/// DECLSPEC_ALLOCATOR LPVOID HeapAlloc(
///   HANDLE hHeap,
///   DWORD  dwFlags,
///   SIZE_T dwBytes
/// );
/// ```
/// {@category kernel32}
final HeapAlloc = _kernel32.lookupFunction<
    Pointer Function(IntPtr hHeap, Uint32 dwflags, Uint32 dwBytes),
    Pointer Function(int hHeap, int dwflags, int dwBytes)>('HeapAlloc');

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
final HeapFree = _kernel32.lookupFunction<
    Int32 Function(IntPtr hHeap, Uint32 dwFlags, Pointer lpMem),
    int Function(int hHeap, int dwFlags, Pointer lpMem)>('HeapFree');

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
final InitializeProcThreadAttributeList = _kernel32.lookupFunction<
    Int32 Function(Pointer lpAttributeList, Uint32 dwAttributeCount,
        Uint32 dwFlags, Pointer<IntPtr> lpSize),
    int Function(Pointer lpAttributeList, int dwAttributeCount, int dwFlags,
        Pointer<IntPtr> lpSize)>('InitializeProcThreadAttributeList');

/// Determines whether the calling process is being debugged by a user-mode
/// debugger.
///
/// ```c
/// BOOL IsDebuggerPresent();
/// ```
/// {@category kernel32}
final IsDebuggerPresent = _kernel32
    .lookupFunction<Int32 Function(), int Function()>('IsDebuggerPresent');

/// Loads the specified module into the address space of the calling
/// process. The specified module may cause other modules to be loaded.
///
/// ```c
/// HMODULE LoadLibraryW(
///   LPCWSTR lpLibFileName
/// );
/// ```
/// {@category kernel32}
final LoadLibrary = _kernel32.lookupFunction<
    IntPtr Function(Pointer<Utf16> lpLibFileName),
    int Function(Pointer<Utf16> lpLibFileName)>('LoadLibraryW');

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
final OpenProcess = _kernel32.lookupFunction<
    Int32 Function(
        Uint32 dwDesiredAccess, Int32 bInheritHandle, Uint32 dwProcessId),
    int Function(int dwDesiredAccess, int bInheritHandle,
        int dwProcessId)>('OpenProcess');

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
final QueryDosDevice = _kernel32.lookupFunction<
    Uint32 Function(Pointer<Utf16> lpDeviceName, Pointer<Utf16> lpTargetPath,
        Uint32 ucchMax),
    int Function(Pointer<Utf16> lpDeviceName, Pointer<Utf16> lpTargetPath,
        int ucchMax)>('QueryDosDeviceW');

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
final QueryPerformanceCounter = _kernel32.lookupFunction<
    Int32 Function(Pointer<Int64> lpPerformanceCount),
    int Function(Pointer<Int64> lpPerformanceCount)>('QueryPerformanceCounter');

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
final QueryPerformanceFrequency = _kernel32.lookupFunction<
    Int32 Function(Pointer<Int64> lpPerformanceCount),
    int Function(
        Pointer<Int64> lpPerformanceCount)>('QueryPerformanceFrequency');

/// Reads character input from the console input buffer and removes it from
/// the buffer.
///
/// ```c
/// BOOL WINAPI ReadConsole(
///   _In_     HANDLE  hConsoleInput,
///   _Out_    LPVOID  lpBuffer,
///   _In_     DWORD   nNumberOfCharsToRead,
///   _Out_    LPDWORD lpNumberOfCharsRead,
///   _In_opt_ LPVOID  pInputControl
/// );
/// ```
/// {@category kernel32}
final ReadConsole = _kernel32.lookupFunction<
    Int32 Function(
        IntPtr hConsoleInput,
        Pointer lpBuffer,
        Uint32 nNumberOfCharsToRead,
        Pointer<Uint32> lpNumberOfCharsRead,
        Pointer pInputControl),
    int Function(
        int hConsoleInput,
        Pointer lpBuffer,
        int nNumberOfCharsToRead,
        Pointer<Uint32> lpNumberOfCharsRead,
        Pointer pInputControl)>('ReadConsoleW');

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
final ReadFile = _kernel32.lookupFunction<
    Int32 Function(IntPtr hFile, Pointer lpBuffer, Uint32 nNumberOfBytesToRead,
        Pointer<Uint32> lpNumberOfBytesRead, Pointer lpOverlapped),
    int Function(int hFile, Pointer lpBuffer, int nNumberOfBytesToRead,
        Pointer<Uint32> lpNumberOfBytesRead, Pointer lpOverlapped)>('ReadFile');

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
final ReadProcessMemory = _kernel32.lookupFunction<
    Int32 Function(
        IntPtr hProcess,
        Pointer<Void> lpBaseAddress,
        Pointer<Void> lpBuffer,
        IntPtr nSize,
        Pointer<IntPtr> lpNumberOfBytesRead),
    int Function(
        int hProcess,
        Pointer<Void> lpBaseAddress,
        Pointer<Void> lpBuffer,
        int nSize,
        Pointer<IntPtr> lpNumberOfBytesRead)>('ReadProcessMemory');

/// Resizes the internal buffers for a pseudoconsole to the given size.
///
/// ```c
/// HRESULT WINAPI ResizePseudoConsole(
///     _In_ HPCON hPC ,
///     _In_ COORD size
/// );
/// ```
/// {@category kernel32}
final ResizePseudoConsole = _kernel32.lookupFunction<
    Int32 Function(Pointer<IntPtr> hPC, Int32 size),
    int Function(Pointer<IntPtr> hPC, int size)>('ResizePseudoConsole');

/// Moves a block of data in a screen buffer. The effects of the move can
/// be limited by specifying a clipping rectangle, so the contents of the
/// console screen buffer outside the clipping rectangle are unchanged.
///
/// ```c
/// BOOL WINAPI ScrollConsoleScreenBuffer(
///   _In_           HANDLE     hConsoleOutput,
///   _In_     const SMALL_RECT *lpScrollRectangle,
///   _In_opt_ const SMALL_RECT *lpClipRectangle,
///   _In_           COORD      dwDestinationOrigin,
///   _In_     const CHAR_INFO  *lpFill
/// );
/// ```
/// {@category kernel32}
final ScrollConsoleScreenBuffer = _kernel32.lookupFunction<
    Int32 Function(
        IntPtr hConsoleOutput,
        Pointer<SMALL_RECT> lpScrollRectangle,
        Pointer<SMALL_RECT> lpClipRectangle,
        Int32 dwDestinationOrigin,
        Pointer<CHAR_INFO> lpFill),
    int Function(
        int hConsoleOutput,
        Pointer<SMALL_RECT> lpScrollRectangle,
        Pointer<SMALL_RECT> lpClipRectangle,
        int dwDestinationOrigin,
        Pointer<CHAR_INFO> lpFill)>('ScrollConsoleScreenBufferW');

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
final SetConsoleCtrlHandler = _kernel32.lookupFunction<
    Int32 Function(Pointer<NativeFunction> HandlerRoutine, Int32 Add),
    int Function(Pointer<NativeFunction> HandlerRoutine,
        int Add)>('SetConsoleCtrlHandler');

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
final SetConsoleCursorInfo = _kernel32.lookupFunction<
        Int32 Function(IntPtr hConsoleOutput,
            Pointer<CONSOLE_CURSOR_INFO> lpConsoleCursorInfo),
        int Function(int hConsoleOutput,
            Pointer<CONSOLE_CURSOR_INFO> lpConsoleCursorInfo)>(
    'SetConsoleCursorInfo');

/// Sets the cursor position in the specified console screen buffer.
///
/// ```c
/// BOOL WINAPI SetConsoleCursorPosition(
///   _In_ HANDLE hConsoleOutput,
///   _In_ COORD  dwCursorPosition
/// );
/// ```
/// {@category kernel32}
final SetConsoleCursorPosition = _kernel32.lookupFunction<
    Int32 Function(IntPtr hConsoleOutput, Int32 dwCursorPosition),
    int Function(
        int hConsoleOutput, int dwCursorPosition)>('SetConsoleCursorPosition');

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
final SetConsoleDisplayMode = _kernel32.lookupFunction<
    Int32 Function(IntPtr hConsoleOutput, Uint32 dwFlags,
        Pointer<COORD> lpNewScreenBufferDimensions),
    int Function(int hConsoleOutput, int dwFlags,
        Pointer<COORD> lpNewScreenBufferDimensions)>('SetConsoleDisplayMode');

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
final SetConsoleMode = _kernel32.lookupFunction<
    Int32 Function(IntPtr hConsoleHandle, Uint32 dwMode),
    int Function(int hConsoleHandle, int dwMode)>('SetConsoleMode');

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
final SetConsoleTextAttribute = _kernel32.lookupFunction<
    Int32 Function(IntPtr hConsoleOutput, Uint16 wAttributes),
    int Function(
        int hConsoleOutput, int wAttributes)>('SetConsoleTextAttribute');

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
final SetConsoleWindowInfo = _kernel32.lookupFunction<
    Int32 Function(IntPtr hConsoleOutput, Int32 bAbsolute,
        Pointer<SMALL_RECT> lpConsoleWindow),
    int Function(int hConsoleOutput, int bAbsolute,
        Pointer<SMALL_RECT> lpConsoleWindow)>('SetConsoleWindowInfo');

/// Sets the handle for the specified standard device (standard input,
/// standard output, or standard error).
///
/// ```c
/// BOOL WINAPI SetStdHandle(
///   _In_ DWORD  nStdHandle
///   _In_ HANDLE hHandle
/// );
/// ```
/// {@category kernel32}
final SetStdHandle = _kernel32.lookupFunction<
    Int32 Function(Uint32 nStdHandle, IntPtr hHandle),
    int Function(int nStdHandle, int hHandle)>('SetStdHandle');

/// Suspends the execution of the current thread until the time-out
/// interval elapses.
///
/// ```c
/// void Sleep(
///   DWORD dwMilliseconds
/// );
/// ```
/// {@category kernel32}
final Sleep = _kernel32.lookupFunction<Void Function(Uint32 dwMilliseconds),
    void Function(int dwMilliseconds)>('Sleep');

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
final UpdateProcThreadAttribute = _kernel32.lookupFunction<
    Int32 Function(
        Pointer lpAttributeList,
        Uint32 dwFlags,
        IntPtr Attribute,
        Pointer lpValue,
        IntPtr cbSize,
        Pointer lpPreviousValue,
        Pointer<IntPtr> lpReturnSize),
    int Function(
        Pointer lpAttributeList,
        int dwFlags,
        int Attribute,
        Pointer lpValue,
        int cbSize,
        Pointer lpPreviousValue,
        Pointer<IntPtr> lpReturnSize)>('UpdateProcThreadAttribute');

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
final UpdateResource = _kernel32.lookupFunction<
    Int32 Function(IntPtr hUpdate, Pointer<Utf16> lpType, Pointer<Utf16> lpName,
        Uint16 wLanguage, Pointer lpData, Uint32 cb),
    int Function(int hUpdate, Pointer<Utf16> lpType, Pointer<Utf16> lpName,
        int wLanguage, Pointer lpData, int cb)>('UpdateResourceW');

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
final VirtualAlloc = _kernel32.lookupFunction<
    Pointer<Void> Function(Pointer<Void> lpAddress, IntPtr dwSize,
        Uint32 flAllocationType, Uint32 flProtect),
    Pointer<Void> Function(Pointer<Void> lpAddress, int dwSize,
        int flAllocationType, int flProtect)>('VirtualAlloc');

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
final VirtualFree = _kernel32.lookupFunction<
    Int32 Function(Pointer<Void> lpAddress, IntPtr dwSize, Uint32 dwFreeType),
    int Function(
        Pointer<Void> lpAddress, int dwSize, int dwFreeType)>('VirtualFree');

/// Writes a character string to a console screen buffer beginning at the
/// current cursor location.
///
/// ```c
/// BOOL WINAPI WriteConsole(
///   _In_             HANDLE  hConsoleOutput,
///   _In_       const VOID    *lpBuffer,
///   _In_             DWORD   nNumberOfCharsToWrite,
///   _Out_opt_        LPDWORD lpNumberOfCharsWritten,
///   _Reserved_       LPVOID  lpReserved
/// );
/// ```
/// {@category kernel32}
final WriteConsole = _kernel32.lookupFunction<
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
final WriteFile = _kernel32.lookupFunction<
    Int32 Function(IntPtr hFile, Pointer lpBuffer, Uint32 nNumberOfBytesToWrite,
        Pointer<Uint32> lpNumberOfBytesWritten, Pointer lpOverlapped),
    int Function(
        int hFile,
        Pointer lpBuffer,
        int nNumberOfBytesToWrite,
        Pointer<Uint32> lpNumberOfBytesWritten,
        Pointer lpOverlapped)>('WriteFile');

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
final WriteProcessMemory = _kernel32.lookupFunction<
    Int32 Function(
        IntPtr hProcess,
        Pointer<Void> lpBaseAddress,
        Pointer<Void> lpBuffer,
        IntPtr nSize,
        Pointer<IntPtr> lpNumberOfBytesWritten),
    int Function(
        int hProcess,
        Pointer<Void> lpBaseAddress,
        Pointer<Void> lpBuffer,
        int nSize,
        Pointer<IntPtr> lpNumberOfBytesWritten)>('WriteProcessMemory');
