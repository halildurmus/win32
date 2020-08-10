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

// BOOL ActivateActCtx(
//   HANDLE    hActCtx,
//   ULONG_PTR *lpCookie
// );

/// {@category kernel32}
final ActivateActCtx = _kernel32.lookupFunction<
    Int32 Function(IntPtr hActCtx, Pointer<IntPtr> lpCookie),
    int Function(int hActCtx, Pointer<IntPtr> lpCookie)>('ActivateActCtx');

// BOOL WINAPI AllocConsole(void);

/// {@category kernel32}
final AllocConsole =
    _kernel32.lookupFunction<Int32 Function(), int Function()>('AllocConsole');

// BOOL WINAPI AttachConsole(
//   _In_ DWORD dwProcessId
// );

/// {@category kernel32}
final AttachConsole = _kernel32.lookupFunction<
    Int32 Function(Uint32 dwProcessId),
    int Function(int dwProcessId)>('AttachConsole');

// BOOL Beep(
//   DWORD dwFreq,
//   DWORD dwDuration
// );

/// {@category kernel32}
final Beep = _kernel32.lookupFunction<
    Int32 Function(Uint32 dwFreq, Uint32 dwDuration),
    int Function(int dwFreq, int dwDuration)>('Beep');

// HANDLE BeginUpdateResourceW(
//   LPCWSTR pFileName,
//   BOOL    bDeleteExistingResources
// );

/// {@category kernel32}
final BeginUpdateResource = _kernel32.lookupFunction<
    IntPtr Function(Pointer<Utf16> pFilename, Int32 bDeleteExistingResources),
    int Function(Pointer<Utf16> pFilename,
        int bDeleteExistingResources)>('BeginUpdateResourceW');

// BOOL CloseHandle(
//   HANDLE hObject
// );

/// {@category kernel32}
final CloseHandle = _kernel32.lookupFunction<Int32 Function(IntPtr hObject),
    int Function(int hObject)>('CloseHandle');

// void WINAPI ClosePseudoConsole(
//     _In_ HPCON hPC
// );

/// {@category kernel32}
final ClosePseudoConsole = _kernel32.lookupFunction<
    Void Function(Pointer<IntPtr> hPC),
    void Function(Pointer<IntPtr> hPC)>('ClosePseudoConsole');

// HANDLE CreateFileW(
//   LPCWSTR               lpFileName,
//   DWORD                 dwDesiredAccess,
//   DWORD                 dwShareMode,
//   LPSECURITY_ATTRIBUTES lpSecurityAttributes,
//   DWORD                 dwCreationDisposition,
//   DWORD                 dwFlagsAndAttributes,
//   HANDLE                hTemplateFile
// );

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

// BOOL CreatePipe(
//   PHANDLE               hReadPipe,
//   PHANDLE               hWritePipe,
//   LPSECURITY_ATTRIBUTES lpPipeAttributes,
//   DWORD                 nSize
// );

/// {@category kernel32}
final CreatePipe = _kernel32.lookupFunction<
    Int32 Function(Pointer<IntPtr> hReadPipe, Pointer<IntPtr> hWritePipe,
        Pointer<SECURITY_ATTRIBUTES> lpPipeAttributes, Uint32 nSize),
    int Function(
        Pointer<IntPtr> hReadPipe,
        Pointer<IntPtr> hWritePipe,
        Pointer<SECURITY_ATTRIBUTES> lpPipeAttributes,
        int nSize)>('CreatePipe');

// BOOL CreateProcessW(
//   LPCWSTR               lpApplicationName,
//   LPWSTR                lpCommandLine,
//   LPSECURITY_ATTRIBUTES lpProcessAttributes,
//   LPSECURITY_ATTRIBUTES lpThreadAttributes,
//   BOOL                  bInheritHandles,
//   DWORD                 dwCreationFlags,
//   LPVOID                lpEnvironment,
//   LPCWSTR               lpCurrentDirectory,
//   LPSTARTUPINFOW        lpStartupInfo,
//   LPPROCESS_INFORMATION lpProcessInformation
// );

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

// HRESULT WINAPI CreatePseudoConsole(
//   _In_ COORD size,
//   _In_ HANDLE hInput,
//   _In_ HANDLE hOutput,
//   _In_ DWORD dwFlags,
//   _Out_ HPCON* phPC
// );

/// {@category kernel32}
final CreatePseudoConsole = _kernel32.lookupFunction<
    Int32 Function(Int32 size, IntPtr hInput, IntPtr hOutput, Int32 dwFlags,
        Pointer<IntPtr> phPC),
    int Function(int size, int hInput, int hOutput, int dwFlags,
        Pointer<IntPtr> phPC)>('CreatePseudoConsole');

// BOOL DeactivateActCtx(
//   DWORD     dwFlags,
//   ULONG_PTR ulCookie
// );

/// {@category kernel32}
final DeactivateActCtx = _kernel32.lookupFunction<
    Int32 Function(Uint32 dwFlags, IntPtr ulCookie),
    int Function(int dwFlags, int ulCookie)>('DeactivateActCtx');

// BOOL EndUpdateResourceW(
//   HANDLE hUpdate,
//   BOOL   fDiscard
// );

/// {@category kernel32}
final EndUpdateResource = _kernel32.lookupFunction<
    Int32 Function(IntPtr hUpdate, Int32 fDiscard),
    int Function(int hUpdate, int fDiscard)>('EndUpdateResourceW');

// BOOL EnumResourceNamesW(
//   HMODULE          hModule,
//   LPCWSTR          lpType,
//   ENUMRESNAMEPROCW lpEnumFunc,
//   LONG_PTR         lParam
// );

/// {@category kernel32}
final EnumResourceNames = _kernel32.lookupFunction<
    Int32 Function(IntPtr hModule, Pointer<Utf16> lpType,
        Pointer<NativeFunction> lpEnumFunc, IntPtr lParam),
    int Function(int hModule, Pointer<Utf16> lpType,
        Pointer<NativeFunction> lpEnumFunc, int lParam)>('EnumResourceNamesW');

// BOOL EnumResourceTypesW(
//   HMODULE          hModule,
//   ENUMRESTYPEPROCW lpEnumFunc,
//   LONG_PTR         lParam
// );

/// {@category kernel32}
final EnumResourceTypes = _kernel32.lookupFunction<
    Int32 Function(
        IntPtr hModule, Pointer<NativeFunction> lpEnumFunc, IntPtr lParam),
    int Function(int hModule, Pointer<NativeFunction> lpEnumFunc,
        int lParam)>('EnumResourceTypesW');

// BOOL WINAPI FillConsoleOutputCharacter(
//   _In_  HANDLE  hConsoleOutput,
//   _In_  TCHAR   cCharacter,
//   _In_  DWORD   nLength,
//   _In_  COORD   dwWriteCoord,
//   _Out_ LPDWORD lpNumberOfCharsWritten
// );

/// {@category kernel32}
final FillConsoleOutputCharacter = _kernel32.lookupFunction<
    Int32 Function(IntPtr hConsoleOutput, Uint8 cCharacter, Uint32 nLength,
        Int32 dwWriteCoord, Pointer<Uint32> lpNumberOfCharsWritten),
    int Function(
        int hConsoleOutput,
        int cCharacter,
        int nLength,
        int dwWriteCoord,
        Pointer<Uint32> lpNumberOfCharsWritten)>('FillConsoleOutputCharacter');

// BOOL WINAPI FillConsoleOutputAttribute(
//   _In_  HANDLE  hConsoleOutput,
//   _In_  WORD    wAttribute,
//   _In_  DWORD   nLength,
//   _In_  COORD   dwWriteCoord,
//   _Out_ LPDWORD lpNumberOfAttrsWritten
// );

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

// HANDLE FindFirstVolumeW(
//   LPWSTR lpszVolumeName,
//   DWORD  cchBufferLength
// );

/// {@category kernel32}
final FindFirstVolume = _kernel32.lookupFunction<
    IntPtr Function(Pointer<Utf16> lpszVolumeName, Uint32 cchBufferLength),
    int Function(Pointer<Utf16> lpszVolumeName,
        int cchBufferLength)>('FindFirstVolumeW');

// BOOL FindNextVolumeW(
//   HANDLE hFindVolume,
//   LPWSTR lpszVolumeName,
//   DWORD  cchBufferLength
// );

/// {@category kernel32}
final FindNextVolume = _kernel32.lookupFunction<
    Int32 Function(IntPtr hFindVolume, Pointer<Utf16> lpszVolumeName,
        Uint32 cchBufferLength),
    int Function(int hFindVolume, Pointer<Utf16> lpszVolumeName,
        int cchBufferLength)>('FindNextVolumeW');

// BOOL FindVolumeClose(
//   HANDLE hFindVolume
// );

/// {@category kernel32}
final FindVolumeClose = _kernel32.lookupFunction<
    Int32 Function(IntPtr hFindVolume),
    int Function(int hFindVolume)>('FindVolumeClose');

// DWORD FormatMessageW(
//   DWORD   dwFlags,
//   LPCVOID lpSource,
//   DWORD   dwMessageId,
//   DWORD   dwLanguageId,
//   LPWSTR  lpBuffer,
//   DWORD   nSize,
//   va_list *Arguments
// );

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

// BOOL WINAPI FreeConsole(void);

/// {@category kernel32}
final FreeConsole =
    _kernel32.lookupFunction<Int32 Function(), int Function()>('FreeConsole');

// BOOL FreeLibrary(
//   HMODULE hLibModule
// );

/// {@category kernel32}
final FreeLibrary = _kernel32.lookupFunction<Int32 Function(IntPtr hLibModule),
    int Function(int hLibModule)>('FreeLibrary');

// BOOL GetComputerNameExW(
//   COMPUTER_NAME_FORMAT NameType,
//   LPWSTR               lpBuffer,
//   LPDWORD              nSize
// );

/// {@category kernel32}
final GetComputerNameEx = _kernel32.lookupFunction<
    Int32 Function(
        Int32 NameType, Pointer<Utf16> lpBuffer, Pointer<Uint32> nSize),
    int Function(int NameType, Pointer<Utf16> lpBuffer,
        Pointer<Uint32> nSize)>('GetComputerNameExW');

// BOOL WINAPI GetConsoleCursorInfo(
//   _In_  HANDLE               hConsoleOutput,
//   _Out_ PCONSOLE_CURSOR_INFO lpConsoleCursorInfo
// );

/// {@category kernel32}
final GetConsoleCursorInfo = _kernel32.lookupFunction<
        Int32 Function(IntPtr hConsoleOutput,
            Pointer<CONSOLE_CURSOR_INFO> lpConsoleCursorInfo),
        int Function(int hConsoleOutput,
            Pointer<CONSOLE_CURSOR_INFO> lpConsoleCursorInfo)>(
    'GetConsoleCursorInfo');

// BOOL WINAPI GetConsoleMode(
//   _In_  HANDLE  hConsoleHandle,
//   _Out_ LPDWORD lpMode
// );

/// {@category kernel32}
final GetConsoleMode = _kernel32.lookupFunction<
    Int32 Function(IntPtr hConsoleHandle, Pointer<Uint32> lpMode),
    int Function(int hConsoleHandle, Pointer<Uint32> lpMode)>('GetConsoleMode');

// BOOL WINAPI GetConsoleScreenBufferInfo(
//   _In_  HANDLE                      hConsoleOutput,
//   _Out_ PCONSOLE_SCREEN_BUFFER_INFO lpConsoleScreenBufferInfo
// );

/// {@category kernel32}
final GetConsoleScreenBufferInfo = _kernel32.lookupFunction<
        Int32 Function(IntPtr hConsoleOutput,
            Pointer<CONSOLE_SCREEN_BUFFER_INFO> lpConsoleScreenBufferInfo),
        int Function(int hConsoleOutput,
            Pointer<CONSOLE_SCREEN_BUFFER_INFO> lpConsoleScreenBufferInfo)>(
    'GetConsoleScreenBufferInfo');

// BOOL WINAPI GetConsoleSelectionInfo(
//   _Out_ PCONSOLE_SELECTION_INFO lpConsoleSelectionInfo
// );

/// {@category kernel32}
final GetConsoleSelectionInfo = _kernel32.lookupFunction<
        Int32 Function(Pointer<CONSOLE_SELECTION_INFO> lpConsoleSelectionInfo),
        int Function(Pointer<CONSOLE_SELECTION_INFO> lpConsoleSelectionInfo)>(
    'GetConsoleSelectionInfo');

// DWORD WINAPI GetConsoleTitle(
//   _Out_ LPTSTR lpConsoleTitle,
//   _In_  DWORD  nSize
// );

/// {@category kernel32}
final GetConsoleTitle = _kernel32.lookupFunction<
    Uint32 Function(Pointer<Utf16> lpConsoleTitle, Uint32 nSize),
    int Function(Pointer<Utf16> lpConsoleTitle, int nSize)>('GetConsoleTitle');

// HWND WINAPI GetConsoleWindow(void);

/// {@category kernel32}
final GetConsoleWindow = _kernel32
    .lookupFunction<IntPtr Function(), int Function()>('GetConsoleWindow');

// _Post_equals_last_error_ DWORD GetLastError();

/// {@category kernel32}
final GetLastError =
    _kernel32.lookupFunction<Uint32 Function(), int Function()>('GetLastError');

// HMODULE GetModuleHandleW(
//   LPCWSTR lpModuleName
// );

/// {@category kernel32}
final GetModuleHandle = _kernel32.lookupFunction<
    IntPtr Function(Pointer<Utf16> lpModuleName),
    int Function(Pointer<Utf16> lpModuleName)>('GetModuleHandleW');

// BOOL GetPhysicallyInstalledSystemMemory(
//   PULONGLONG TotalMemoryInKilobytes
// );

/// {@category kernel32}
final GetPhysicallyInstalledSystemMemory = _kernel32.lookupFunction<
        Int32 Function(Pointer<Uint64> TotalMemoryInKilobytes),
        int Function(Pointer<Uint64> TotalMemoryInKilobytes)>(
    'GetPhysicallyInstalledSystemMemory');

// FARPROC GetProcAddress(
//   HMODULE hModule,
//   LPCSTR  lpProcName
// );

/// {@category kernel32}
final GetProcAddress = _kernel32.lookupFunction<
    IntPtr Function(IntPtr hModule, Pointer<Uint8> lpProcName),
    int Function(int hModule, Pointer<Uint8> lpProcName)>('GetProcAddress');

// HANDLE GetProcessHeap();

/// {@category kernel32}
final GetProcessHeap = _kernel32
    .lookupFunction<IntPtr Function(), int Function()>('GetProcessHeap');

// BOOL GetProductInfo(
//   DWORD  dwOSMajorVersion,
//   DWORD  dwOSMinorVersion,
//   DWORD  dwSpMajorVersion,
//   DWORD  dwSpMinorVersion,
//   PDWORD pdwReturnedProductType
// );

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

// HANDLE WINAPI GetStdHandle(
//   _In_ DWORD nStdHandle
// );

/// {@category kernel32}
final GetStdHandle = _kernel32.lookupFunction<
    IntPtr Function(Uint32 nStdHandle),
    int Function(int nStdHandle)>('GetStdHandle');

// BOOL GetSystemPowerStatus(
//   LPSYSTEM_POWER_STATUS lpSystemPowerStatus
// );

/// {@category kernel32}
final GetSystemPowerStatus = _kernel32.lookupFunction<
        Int32 Function(Pointer<SYSTEM_POWER_STATUS> lpSystemPowerStatus),
        int Function(Pointer<SYSTEM_POWER_STATUS> lpSystemPowerStatus)>(
    'GetSystemPowerStatus');

// void GetSystemInfo(
//   LPSYSTEM_INFO lpSystemInfo
// );

/// {@category kernel32}
final GetSystemInfo = _kernel32.lookupFunction<
    Void Function(Pointer<SYSTEM_INFO> lpSystemInfo),
    void Function(Pointer<SYSTEM_INFO> lpSystemInfo)>('GetSystemInfo');

// DWORD GetTempPathW(
//   DWORD  nBufferLength,
//   LPWSTR lpBuffer
// );

/// {@category kernel32}
final GetTempPath = _kernel32.lookupFunction<
    Uint32 Function(Uint32 nBufferLength, Pointer<Utf16> lpBuffer),
    int Function(int nBufferLength, Pointer<Utf16> lpBuffer)>('GetTempPathW');

// NOT_BUILD_WINDOWS_DEPRECATE BOOL GetVersionExW(
//   LPOSVERSIONINFOW lpVersionInformation
// );

/// {@category kernel32}
final GetVersionEx = _kernel32.lookupFunction<
    Int32 Function(Pointer<OSVERSIONINFO> lpVersionInformation),
    int Function(Pointer<OSVERSIONINFO> lpVersionInformation)>('GetVersionExW');

// BOOL GetVolumePathNamesForVolumeNameW(
//   LPCWSTR lpszVolumeName,
//   LPWCH   lpszVolumePathNames,
//   DWORD   cchBufferLength,
//   PDWORD  lpcchReturnLength
// );

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

// DECLSPEC_ALLOCATOR LPVOID HeapAlloc(
//   HANDLE hHeap,
//   DWORD  dwFlags,
//   SIZE_T dwBytes
// );

/// {@category kernel32}
final HeapAlloc = _kernel32.lookupFunction<
    Pointer Function(IntPtr hHeap, Uint32 dwflags, Uint32 dwBytes),
    Pointer Function(int hHeap, int dwflags, int dwBytes)>('HeapAlloc');

// BOOL HeapFree(
//   HANDLE                 hHeap,
//   DWORD                  dwFlags,
//   _Frees_ptr_opt_ LPVOID lpMem
// );

/// {@category kernel32}
final HeapFree = _kernel32.lookupFunction<
    Int32 Function(IntPtr hHeap, Uint32 dwFlags, Pointer lpMem),
    int Function(int hHeap, int dwFlags, Pointer lpMem)>('HeapFree');

// BOOL InitializeProcThreadAttributeList(
//   LPPROC_THREAD_ATTRIBUTE_LIST lpAttributeList,
//   DWORD                        dwAttributeCount,
//   DWORD                        dwFlags,
//   PSIZE_T                      lpSize
// );

/// {@category kernel32}
final InitializeProcThreadAttributeList = _kernel32.lookupFunction<
    Int32 Function(Pointer lpAttributeList, Uint32 dwAttributeCount,
        Uint32 dwFlags, Pointer<IntPtr> lpSize),
    int Function(Pointer lpAttributeList, int dwAttributeCount, int dwFlags,
        Pointer<IntPtr> lpSize)>('InitializeProcThreadAttributeList');

// BOOL IsDebuggerPresent();

/// {@category kernel32}
final IsDebuggerPresent = _kernel32
    .lookupFunction<Int32 Function(), int Function()>('IsDebuggerPresent');

// HMODULE LoadLibraryW(
//   LPCWSTR lpLibFileName
// );

/// {@category kernel32}
final LoadLibrary = _kernel32.lookupFunction<
    IntPtr Function(Pointer<Utf16> lpLibFileName),
    int Function(Pointer<Utf16> lpLibFileName)>('LoadLibraryW');

// HANDLE OpenProcess(
//   DWORD dwDesiredAccess,
//   BOOL  bInheritHandle,
//   DWORD dwProcessId
// );

/// {@category kernel32}
final OpenProcess = _kernel32.lookupFunction<
    Int32 Function(
        Uint32 dwDesiredAccess, Int32 bInheritHandle, Uint32 dwProcessId),
    int Function(int dwDesiredAccess, int bInheritHandle,
        int dwProcessId)>('OpenProcess');

// DWORD QueryDosDeviceW(
//   LPCWSTR lpDeviceName,
//   LPWSTR  lpTargetPath,
//   DWORD   ucchMax
// );

/// {@category kernel32}
final QueryDosDevice = _kernel32.lookupFunction<
    Uint32 Function(Pointer<Utf16> lpDeviceName, Pointer<Utf16> lpTargetPath,
        Uint32 ucchMax),
    int Function(Pointer<Utf16> lpDeviceName, Pointer<Utf16> lpTargetPath,
        int ucchMax)>('QueryDosDeviceW');

// BOOL QueryPerformanceCounter(
//   LARGE_INTEGER *lpPerformanceCount
// );

/// {@category kernel32}
final QueryPerformanceCounter = _kernel32.lookupFunction<
    Int32 Function(Pointer<Int64> lpPerformanceCount),
    int Function(Pointer<Int64> lpPerformanceCount)>('QueryPerformanceCounter');

// BOOL QueryPerformanceFrequency(
//   LARGE_INTEGER *lpFrequency
// );

/// {@category kernel32}
final QueryPerformanceFrequency = _kernel32.lookupFunction<
    Int32 Function(Pointer<Int64> lpPerformanceCount),
    int Function(
        Pointer<Int64> lpPerformanceCount)>('QueryPerformanceFrequency');

// BOOL ReadFile(
//   HANDLE       hFile,
//   LPVOID       lpBuffer,
//   DWORD        nNumberOfBytesToRead,
//   LPDWORD      lpNumberOfBytesRead,
//   LPOVERLAPPED lpOverlapped
// );

/// {@category kernel32}
final ReadFile = _kernel32.lookupFunction<
    Int32 Function(IntPtr hFile, Pointer lpBuffer, Uint32 nNumberOfBytesToRead,
        Pointer<Uint32> lpNumberOfBytesRead, Pointer lpOverlapped),
    int Function(int hFile, Pointer lpBuffer, int nNumberOfBytesToRead,
        Pointer<Uint32> lpNumberOfBytesRead, Pointer lpOverlapped)>('ReadFile');

// BOOL ReadProcessMemory(
//   HANDLE  hProcess,
//   LPCVOID lpBaseAddress,
//   LPVOID  lpBuffer,
//   SIZE_T  nSize,
//   SIZE_T  *lpNumberOfBytesRead
// );

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

// HRESULT WINAPI ResizePseudoConsole(
//     _In_ HPCON hPC ,
//     _In_ COORD size
// );

/// {@category kernel32}
final ResizePseudoConsole = _kernel32.lookupFunction<
    Int32 Function(Pointer<IntPtr> hPC, Int32 size),
    int Function(Pointer<IntPtr> hPC, int size)>('ResizePseudoConsole');

// BOOL WINAPI ScrollConsoleScreenBuffer(
//   _In_           HANDLE     hConsoleOutput,
//   _In_     const SMALL_RECT *lpScrollRectangle,
//   _In_opt_ const SMALL_RECT *lpClipRectangle,
//   _In_           COORD      dwDestinationOrigin,
//   _In_     const CHAR_INFO  *lpFill
// );

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
        Pointer<CHAR_INFO> lpFill)>('ScrollConsoleScreenBuffer');

// BOOL WINAPI SetConsoleCtrlHandler(
//   _In_opt_ PHANDLER_ROUTINE HandlerRoutine,
//   _In_     BOOL             Add
// );

/// {@category kernel32}
final SetConsoleCtrlHandler = _kernel32.lookupFunction<
    Int32 Function(Pointer<NativeFunction> HandlerRoutine, Int32 Add),
    int Function(Pointer<NativeFunction> HandlerRoutine,
        int Add)>('SetConsoleCtrlHandler');

// BOOL WINAPI SetConsoleCursorInfo(
//   _In_       HANDLE              hConsoleOutput,
//   _In_ const CONSOLE_CURSOR_INFO *lpConsoleCursorInfo
// );

/// {@category kernel32}
final SetConsoleCursorInfo = _kernel32.lookupFunction<
        Int32 Function(IntPtr hConsoleOutput,
            Pointer<CONSOLE_CURSOR_INFO> lpConsoleCursorInfo),
        int Function(int hConsoleOutput,
            Pointer<CONSOLE_CURSOR_INFO> lpConsoleCursorInfo)>(
    'SetConsoleCursorInfo');

// BOOL WINAPI SetConsoleCursorPosition(
//   _In_ HANDLE hConsoleOutput,
//   _In_ COORD  dwCursorPosition
// );

/// {@category kernel32}
final SetConsoleCursorPosition = _kernel32.lookupFunction<
    Int32 Function(IntPtr hConsoleOutput, Int32 dwCursorPosition),
    int Function(
        int hConsoleOutput, int dwCursorPosition)>('SetConsoleCursorPosition');

// BOOL WINAPI SetConsoleMode(
//   _In_ HANDLE hConsoleHandle,
//   _In_ DWORD  dwMode
// );

/// {@category kernel32}
final SetConsoleMode = _kernel32.lookupFunction<
    Int32 Function(IntPtr hConsoleHandle, Uint32 dwMode),
    int Function(int hConsoleHandle, int dwMode)>('SetConsoleMode');

// BOOL WINAPI SetConsoleTextAttribute(
//   _In_ HANDLE hConsoleOutput,
//   _In_ WORD   wAttributes
// );

/// {@category kernel32}
final SetConsoleTextAttribute = _kernel32.lookupFunction<
    Int32 Function(IntPtr hConsoleOutput, Uint16 wAttributes),
    int Function(
        int hConsoleOutput, int wAttributes)>('SetConsoleTextAttribute');

// void Sleep(
//   DWORD dwMilliseconds
// );

/// {@category kernel32}
final Sleep = _kernel32.lookupFunction<Void Function(Uint32 dwMilliseconds),
    void Function(int dwMilliseconds)>('Sleep');

// BOOL UpdateProcThreadAttribute(
//   LPPROC_THREAD_ATTRIBUTE_LIST lpAttributeList,
//   DWORD                        dwFlags,
//   DWORD_PTR                    Attribute,
//   PVOID                        lpValue,
//   SIZE_T                       cbSize,
//   PVOID                        lpPreviousValue,
//   PSIZE_T                      lpReturnSize
// );

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

// BOOL UpdateResourceW(
//   HANDLE  hUpdate,
//   LPCWSTR lpType,
//   LPCWSTR lpName,
//   WORD    wLanguage,
//   LPVOID  lpData,
//   DWORD   cb
// );

/// {@category kernel32}
final UpdateResource = _kernel32.lookupFunction<
    Int32 Function(IntPtr hUpdate, Pointer<Utf16> lpType, Pointer<Utf16> lpName,
        Uint16 wLanguage, Pointer lpData, Uint32 cb),
    int Function(int hUpdate, Pointer<Utf16> lpType, Pointer<Utf16> lpName,
        int wLanguage, Pointer lpData, int cb)>('UpdateResourceW');

// LPVOID VirtualAlloc(
//   LPVOID lpAddress,
//   SIZE_T dwSize,
//   DWORD  flAllocationType,
//   DWORD  flProtect
// );

/// {@category kernel32}
final VirtualAlloc = _kernel32.lookupFunction<
    Pointer<Void> Function(Pointer<Void> lpAddress, IntPtr dwSize,
        Uint32 flAllocationType, Uint32 flProtect),
    Pointer<Void> Function(Pointer<Void> lpAddress, int dwSize,
        int flAllocationType, int flProtect)>('VirtualAlloc');

// BOOL VirtualFree(
//   LPVOID lpAddress,
//   SIZE_T dwSize,
//   DWORD  dwFreeType
// );

/// {@category kernel32}
final VirtualFree = _kernel32.lookupFunction<
    Int32 Function(Pointer<Void> lpAddress, IntPtr dwSize, Uint32 dwFreeType),
    int Function(
        Pointer<Void> lpAddress, int dwSize, int dwFreeType)>('VirtualFree');

// BOOL WriteFile(
//   HANDLE       hFile,
//   LPCVOID      lpBuffer,
//   DWORD        nNumberOfBytesToWrite,
//   LPDWORD      lpNumberOfBytesWritten,
//   LPOVERLAPPED lpOverlapped
// );

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

// BOOL WriteProcessMemory(
//   HANDLE  hProcess,
//   LPVOID  lpBaseAddress,
//   LPCVOID lpBuffer,
//   SIZE_T  nSize,
//   SIZE_T  *lpNumberOfBytesWritten
// );

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
