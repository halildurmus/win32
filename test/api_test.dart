// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated)

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

@TestOn('windows')

import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:test/test.dart';

import 'package:win32/win32.dart';

import 'helpers.dart';

void main() {
  final windowsBuildNumber = getWindowsBuildNumber();
  group('Test kernel32 functions', () {
    test('Can instantiate ActivateActCtx', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final ActivateActCtx = kernel32.lookupFunction<
          Int32 Function(IntPtr hActCtx, Pointer<IntPtr> lpCookie),
          int Function(
              int hActCtx, Pointer<IntPtr> lpCookie)>('ActivateActCtx');
      expect(ActivateActCtx, isA<Function>());
    });
    test('Can instantiate AddRefActCtx', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final AddRefActCtx = kernel32.lookupFunction<
          Void Function(IntPtr hActCtx),
          void Function(int hActCtx)>('AddRefActCtx');
      expect(AddRefActCtx, isA<Function>());
    });
    test('Can instantiate AllocConsole', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final AllocConsole = kernel32
          .lookupFunction<Int32 Function(), int Function()>('AllocConsole');
      expect(AllocConsole, isA<Function>());
    });
    test('Can instantiate AttachConsole', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final AttachConsole = kernel32.lookupFunction<
          Int32 Function(Uint32 dwProcessId),
          int Function(int dwProcessId)>('AttachConsole');
      expect(AttachConsole, isA<Function>());
    });
    test('Can instantiate Beep', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final Beep = kernel32.lookupFunction<
          Int32 Function(Uint32 dwFreq, Uint32 dwDuration),
          int Function(int dwFreq, int dwDuration)>('Beep');
      expect(Beep, isA<Function>());
    });
    test('Can instantiate BeginUpdateResource', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final BeginUpdateResource = kernel32.lookupFunction<
          IntPtr Function(
              Pointer<Utf16> pFileName, Int32 bDeleteExistingResources),
          int Function(Pointer<Utf16> pFileName,
              int bDeleteExistingResources)>('BeginUpdateResourceW');
      expect(BeginUpdateResource, isA<Function>());
    });
    test('Can instantiate CheckRemoteDebuggerPresent', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final CheckRemoteDebuggerPresent = kernel32.lookupFunction<
          Int32 Function(IntPtr hProcess, Pointer<Int32> pbDebuggerPresent),
          int Function(int hProcess,
              Pointer<Int32> pbDebuggerPresent)>('CheckRemoteDebuggerPresent');
      expect(CheckRemoteDebuggerPresent, isA<Function>());
    });
    test('Can instantiate CloseHandle', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final CloseHandle = kernel32.lookupFunction<
          Int32 Function(IntPtr hObject),
          int Function(int hObject)>('CloseHandle');
      expect(CloseHandle, isA<Function>());
    });
    if (windowsBuildNumber >= 17763) {
      test('Can instantiate ClosePseudoConsole', () {
        final kernel32 = DynamicLibrary.open('kernel32.dll');
        final ClosePseudoConsole = kernel32.lookupFunction<
            Void Function(IntPtr hPC),
            void Function(int hPC)>('ClosePseudoConsole');
        expect(ClosePseudoConsole, isA<Function>());
      });
    }
    test('Can instantiate ConnectNamedPipe', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final ConnectNamedPipe = kernel32.lookupFunction<
          Int32 Function(IntPtr hNamedPipe, Pointer<OVERLAPPED> lpOverlapped),
          int Function(int hNamedPipe,
              Pointer<OVERLAPPED> lpOverlapped)>('ConnectNamedPipe');
      expect(ConnectNamedPipe, isA<Function>());
    });
    test('Can instantiate ContinueDebugEvent', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final ContinueDebugEvent = kernel32.lookupFunction<
          Int32 Function(
              Uint32 dwProcessId, Uint32 dwThreadId, Uint32 dwContinueStatus),
          int Function(int dwProcessId, int dwThreadId,
              int dwContinueStatus)>('ContinueDebugEvent');
      expect(ContinueDebugEvent, isA<Function>());
    });
    test('Can instantiate CreateActCtx', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final CreateActCtx = kernel32.lookupFunction<
          IntPtr Function(Pointer<ACTCTX> pActCtx),
          int Function(Pointer<ACTCTX> pActCtx)>('CreateActCtxW');
      expect(CreateActCtx, isA<Function>());
    });
    test('Can instantiate CreateConsoleScreenBuffer', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final CreateConsoleScreenBuffer = kernel32.lookupFunction<
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
      expect(CreateConsoleScreenBuffer, isA<Function>());
    });
    test('Can instantiate CreateDirectory', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final CreateDirectory = kernel32.lookupFunction<
              Int32 Function(Pointer<Utf16> lpPathName,
                  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes),
              int Function(Pointer<Utf16> lpPathName,
                  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes)>(
          'CreateDirectoryW');
      expect(CreateDirectory, isA<Function>());
    });
    test('Can instantiate CreateFile', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final CreateFile = kernel32.lookupFunction<
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
      expect(CreateFile, isA<Function>());
    });
    test('Can instantiate CreateNamedPipe', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final CreateNamedPipe = kernel32.lookupFunction<
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
      expect(CreateNamedPipe, isA<Function>());
    });
    test('Can instantiate CreatePipe', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final CreatePipe = kernel32.lookupFunction<
          Int32 Function(Pointer<IntPtr> hReadPipe, Pointer<IntPtr> hWritePipe,
              Pointer<SECURITY_ATTRIBUTES> lpPipeAttributes, Uint32 nSize),
          int Function(
              Pointer<IntPtr> hReadPipe,
              Pointer<IntPtr> hWritePipe,
              Pointer<SECURITY_ATTRIBUTES> lpPipeAttributes,
              int nSize)>('CreatePipe');
      expect(CreatePipe, isA<Function>());
    });
    test('Can instantiate CreateProcess', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final CreateProcess = kernel32.lookupFunction<
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
                  Pointer<PROCESS_INFORMATION> lpProcessInformation)>(
          'CreateProcessW');
      expect(CreateProcess, isA<Function>());
    });
    if (windowsBuildNumber >= 17763) {
      test('Can instantiate CreatePseudoConsole', () {
        final kernel32 = DynamicLibrary.open('kernel32.dll');
        final CreatePseudoConsole = kernel32.lookupFunction<
            Int32 Function(COORD size, IntPtr hInput, IntPtr hOutput,
                Uint32 dwFlags, Pointer<IntPtr> phPC),
            int Function(COORD size, int hInput, int hOutput, int dwFlags,
                Pointer<IntPtr> phPC)>('CreatePseudoConsole');
        expect(CreatePseudoConsole, isA<Function>());
      });
    }
    test('Can instantiate DeactivateActCtx', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final DeactivateActCtx = kernel32.lookupFunction<
          Int32 Function(Uint32 dwFlags, IntPtr ulCookie),
          int Function(int dwFlags, int ulCookie)>('DeactivateActCtx');
      expect(DeactivateActCtx, isA<Function>());
    });
    test('Can instantiate DebugBreak', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final DebugBreak = kernel32
          .lookupFunction<Void Function(), void Function()>('DebugBreak');
      expect(DebugBreak, isA<Function>());
    });
    test('Can instantiate DebugBreakProcess', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final DebugBreakProcess = kernel32.lookupFunction<
          Int32 Function(IntPtr Process),
          int Function(int Process)>('DebugBreakProcess');
      expect(DebugBreakProcess, isA<Function>());
    });
    test('Can instantiate DebugSetProcessKillOnExit', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final DebugSetProcessKillOnExit = kernel32.lookupFunction<
          Int32 Function(Int32 KillOnExit),
          int Function(int KillOnExit)>('DebugSetProcessKillOnExit');
      expect(DebugSetProcessKillOnExit, isA<Function>());
    });
    test('Can instantiate DeleteFile', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final DeleteFile = kernel32.lookupFunction<
          Int32 Function(Pointer<Utf16> lpFileName),
          int Function(Pointer<Utf16> lpFileName)>('DeleteFileW');
      expect(DeleteFile, isA<Function>());
    });
    test('Can instantiate DisconnectNamedPipe', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final DisconnectNamedPipe = kernel32.lookupFunction<
          Int32 Function(IntPtr hNamedPipe),
          int Function(int hNamedPipe)>('DisconnectNamedPipe');
      expect(DisconnectNamedPipe, isA<Function>());
    });
    test('Can instantiate DnsHostnameToComputerName', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final DnsHostnameToComputerName = kernel32.lookupFunction<
          Int32 Function(Pointer<Utf16> Hostname, Pointer<Utf16> ComputerName,
              Pointer<Uint32> nSize),
          int Function(Pointer<Utf16> Hostname, Pointer<Utf16> ComputerName,
              Pointer<Uint32> nSize)>('DnsHostnameToComputerNameW');
      expect(DnsHostnameToComputerName, isA<Function>());
    });
    test('Can instantiate DosDateTimeToFileTime', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final DosDateTimeToFileTime = kernel32.lookupFunction<
          Int32 Function(
              Uint16 wFatDate, Uint16 wFatTime, Pointer<FILETIME> lpFileTime),
          int Function(int wFatDate, int wFatTime,
              Pointer<FILETIME> lpFileTime)>('DosDateTimeToFileTime');
      expect(DosDateTimeToFileTime, isA<Function>());
    });
    test('Can instantiate DuplicateHandle', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final DuplicateHandle = kernel32.lookupFunction<
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
      expect(DuplicateHandle, isA<Function>());
    });
    test('Can instantiate EndUpdateResource', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final EndUpdateResource = kernel32.lookupFunction<
          Int32 Function(IntPtr hUpdate, Int32 fDiscard),
          int Function(int hUpdate, int fDiscard)>('EndUpdateResourceW');
      expect(EndUpdateResource, isA<Function>());
    });
    test('Can instantiate EnumProcesses', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final EnumProcesses = kernel32.lookupFunction<
          Int32 Function(Pointer<Uint32> lpidProcess, Uint32 cb,
              Pointer<Uint32> lpcbNeeded),
          int Function(Pointer<Uint32> lpidProcess, int cb,
              Pointer<Uint32> lpcbNeeded)>('K32EnumProcesses');
      expect(EnumProcesses, isA<Function>());
    });
    test('Can instantiate EnumProcessModules', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final EnumProcessModules = kernel32.lookupFunction<
          Int32 Function(IntPtr hProcess, Pointer<IntPtr> lphModule, Uint32 cb,
              Pointer<Uint32> lpcbNeeded),
          int Function(int hProcess, Pointer<IntPtr> lphModule, int cb,
              Pointer<Uint32> lpcbNeeded)>('K32EnumProcessModules');
      expect(EnumProcessModules, isA<Function>());
    });
    test('Can instantiate EnumProcessModulesEx', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final EnumProcessModulesEx = kernel32.lookupFunction<
          Int32 Function(IntPtr hProcess, Pointer<IntPtr> lphModule, Uint32 cb,
              Pointer<Uint32> lpcbNeeded, Uint32 dwFilterFlag),
          int Function(
              int hProcess,
              Pointer<IntPtr> lphModule,
              int cb,
              Pointer<Uint32> lpcbNeeded,
              int dwFilterFlag)>('K32EnumProcessModulesEx');
      expect(EnumProcessModulesEx, isA<Function>());
    });
    test('Can instantiate EnumResourceNames', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final EnumResourceNames = kernel32.lookupFunction<
          Int32 Function(
              IntPtr hModule,
              Pointer<Utf16> lpType,
              Pointer<NativeFunction<EnumResNameProc>> lpEnumFunc,
              IntPtr lParam),
          int Function(
              int hModule,
              Pointer<Utf16> lpType,
              Pointer<NativeFunction<EnumResNameProc>> lpEnumFunc,
              int lParam)>('EnumResourceNamesW');
      expect(EnumResourceNames, isA<Function>());
    });
    test('Can instantiate EnumResourceTypes', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final EnumResourceTypes = kernel32.lookupFunction<
          Int32 Function(
              IntPtr hModule,
              Pointer<NativeFunction<EnumResTypeProc>> lpEnumFunc,
              IntPtr lParam),
          int Function(
              int hModule,
              Pointer<NativeFunction<EnumResTypeProc>> lpEnumFunc,
              int lParam)>('EnumResourceTypesW');
      expect(EnumResourceTypes, isA<Function>());
    });
    test('Can instantiate ExitProcess', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final ExitProcess = kernel32.lookupFunction<
          Void Function(Uint32 uExitCode),
          void Function(int uExitCode)>('ExitProcess');
      expect(ExitProcess, isA<Function>());
    });
    test('Can instantiate FileTimeToDosDateTime', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final FileTimeToDosDateTime = kernel32.lookupFunction<
          Int32 Function(Pointer<FILETIME> lpFileTime,
              Pointer<Uint16> lpFatDate, Pointer<Uint16> lpFatTime),
          int Function(Pointer<FILETIME> lpFileTime, Pointer<Uint16> lpFatDate,
              Pointer<Uint16> lpFatTime)>('FileTimeToDosDateTime');
      expect(FileTimeToDosDateTime, isA<Function>());
    });
    test('Can instantiate FillConsoleOutputAttribute', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final FillConsoleOutputAttribute = kernel32.lookupFunction<
              Int32 Function(
                  IntPtr hConsoleOutput,
                  Uint16 wAttribute,
                  Uint32 nLength,
                  COORD dwWriteCoord,
                  Pointer<Uint32> lpNumberOfAttrsWritten),
              int Function(int hConsoleOutput, int wAttribute, int nLength,
                  COORD dwWriteCoord, Pointer<Uint32> lpNumberOfAttrsWritten)>(
          'FillConsoleOutputAttribute');
      expect(FillConsoleOutputAttribute, isA<Function>());
    });
    test('Can instantiate FillConsoleOutputCharacter', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final FillConsoleOutputCharacter = kernel32.lookupFunction<
              Int32 Function(
                  IntPtr hConsoleOutput,
                  Uint16 cCharacter,
                  Uint32 nLength,
                  COORD dwWriteCoord,
                  Pointer<Uint32> lpNumberOfCharsWritten),
              int Function(int hConsoleOutput, int cCharacter, int nLength,
                  COORD dwWriteCoord, Pointer<Uint32> lpNumberOfCharsWritten)>(
          'FillConsoleOutputCharacterW');
      expect(FillConsoleOutputCharacter, isA<Function>());
    });
    test('Can instantiate FindClose', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final FindClose = kernel32.lookupFunction<
          Int32 Function(IntPtr hFindFile),
          int Function(int hFindFile)>('FindClose');
      expect(FindClose, isA<Function>());
    });
    test('Can instantiate FindCloseChangeNotification', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final FindCloseChangeNotification = kernel32.lookupFunction<
          Int32 Function(IntPtr hChangeHandle),
          int Function(int hChangeHandle)>('FindCloseChangeNotification');
      expect(FindCloseChangeNotification, isA<Function>());
    });
    test('Can instantiate FindFirstChangeNotification', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final FindFirstChangeNotification = kernel32.lookupFunction<
          IntPtr Function(Pointer<Utf16> lpPathName, Int32 bWatchSubtree,
              Uint32 dwNotifyFilter),
          int Function(Pointer<Utf16> lpPathName, int bWatchSubtree,
              int dwNotifyFilter)>('FindFirstChangeNotificationW');
      expect(FindFirstChangeNotification, isA<Function>());
    });
    test('Can instantiate FindFirstFile', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final FindFirstFile = kernel32.lookupFunction<
          IntPtr Function(Pointer<Utf16> lpFileName,
              Pointer<WIN32_FIND_DATA> lpFindFileData),
          int Function(Pointer<Utf16> lpFileName,
              Pointer<WIN32_FIND_DATA> lpFindFileData)>('FindFirstFileW');
      expect(FindFirstFile, isA<Function>());
    });
    test('Can instantiate FindFirstVolume', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final FindFirstVolume = kernel32.lookupFunction<
          IntPtr Function(
              Pointer<Utf16> lpszVolumeName, Uint32 cchBufferLength),
          int Function(Pointer<Utf16> lpszVolumeName,
              int cchBufferLength)>('FindFirstVolumeW');
      expect(FindFirstVolume, isA<Function>());
    });
    test('Can instantiate FindNextChangeNotification', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final FindNextChangeNotification = kernel32.lookupFunction<
          Int32 Function(IntPtr hChangeHandle),
          int Function(int hChangeHandle)>('FindNextChangeNotification');
      expect(FindNextChangeNotification, isA<Function>());
    });
    test('Can instantiate FindNextFile', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final FindNextFile = kernel32.lookupFunction<
          Int32 Function(
              IntPtr hFindFile, Pointer<WIN32_FIND_DATA> lpFindFileData),
          int Function(int hFindFile,
              Pointer<WIN32_FIND_DATA> lpFindFileData)>('FindNextFileW');
      expect(FindNextFile, isA<Function>());
    });
    test('Can instantiate FindNextVolume', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final FindNextVolume = kernel32.lookupFunction<
          Int32 Function(IntPtr hFindVolume, Pointer<Utf16> lpszVolumeName,
              Uint32 cchBufferLength),
          int Function(int hFindVolume, Pointer<Utf16> lpszVolumeName,
              int cchBufferLength)>('FindNextVolumeW');
      expect(FindNextVolume, isA<Function>());
    });
    test('Can instantiate FindResource', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final FindResource = kernel32.lookupFunction<
          IntPtr Function(
              IntPtr hModule, Pointer<Utf16> lpName, Pointer<Utf16> lpType),
          int Function(int hModule, Pointer<Utf16> lpName,
              Pointer<Utf16> lpType)>('FindResourceW');
      expect(FindResource, isA<Function>());
    });
    test('Can instantiate FindResourceEx', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final FindResourceEx = kernel32.lookupFunction<
          IntPtr Function(IntPtr hModule, Pointer<Utf16> lpType,
              Pointer<Utf16> lpName, Uint16 wLanguage),
          int Function(int hModule, Pointer<Utf16> lpType,
              Pointer<Utf16> lpName, int wLanguage)>('FindResourceExW');
      expect(FindResourceEx, isA<Function>());
    });
    test('Can instantiate FindVolumeClose', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final FindVolumeClose = kernel32.lookupFunction<
          Int32 Function(IntPtr hFindVolume),
          int Function(int hFindVolume)>('FindVolumeClose');
      expect(FindVolumeClose, isA<Function>());
    });
    test('Can instantiate FlushConsoleInputBuffer', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final FlushConsoleInputBuffer = kernel32.lookupFunction<
          Int32 Function(IntPtr hConsoleInput),
          int Function(int hConsoleInput)>('FlushConsoleInputBuffer');
      expect(FlushConsoleInputBuffer, isA<Function>());
    });
    test('Can instantiate FormatMessage', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final FormatMessage = kernel32.lookupFunction<
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
      expect(FormatMessage, isA<Function>());
    });
    test('Can instantiate FreeConsole', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final FreeConsole = kernel32
          .lookupFunction<Int32 Function(), int Function()>('FreeConsole');
      expect(FreeConsole, isA<Function>());
    });
    test('Can instantiate FreeLibrary', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final FreeLibrary = kernel32.lookupFunction<
          Int32 Function(IntPtr hLibModule),
          int Function(int hLibModule)>('FreeLibrary');
      expect(FreeLibrary, isA<Function>());
    });
    test('Can instantiate GetBinaryType', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final GetBinaryType = kernel32.lookupFunction<
          Int32 Function(
              Pointer<Utf16> lpApplicationName, Pointer<Uint32> lpBinaryType),
          int Function(Pointer<Utf16> lpApplicationName,
              Pointer<Uint32> lpBinaryType)>('GetBinaryTypeW');
      expect(GetBinaryType, isA<Function>());
    });
    test('Can instantiate GetComputerName', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final GetComputerName = kernel32.lookupFunction<
          Int32 Function(Pointer<Utf16> lpBuffer, Pointer<Uint32> nSize),
          int Function(Pointer<Utf16> lpBuffer,
              Pointer<Uint32> nSize)>('GetComputerNameW');
      expect(GetComputerName, isA<Function>());
    });
    test('Can instantiate GetComputerNameEx', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final GetComputerNameEx = kernel32.lookupFunction<
          Int32 Function(
              Uint32 NameType, Pointer<Utf16> lpBuffer, Pointer<Uint32> nSize),
          int Function(int NameType, Pointer<Utf16> lpBuffer,
              Pointer<Uint32> nSize)>('GetComputerNameExW');
      expect(GetComputerNameEx, isA<Function>());
    });
    test('Can instantiate GetConsoleCursorInfo', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final GetConsoleCursorInfo = kernel32.lookupFunction<
              Int32 Function(IntPtr hConsoleOutput,
                  Pointer<CONSOLE_CURSOR_INFO> lpConsoleCursorInfo),
              int Function(int hConsoleOutput,
                  Pointer<CONSOLE_CURSOR_INFO> lpConsoleCursorInfo)>(
          'GetConsoleCursorInfo');
      expect(GetConsoleCursorInfo, isA<Function>());
    });
    test('Can instantiate GetConsoleMode', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final GetConsoleMode = kernel32.lookupFunction<
          Int32 Function(IntPtr hConsoleHandle, Pointer<Uint32> lpMode),
          int Function(
              int hConsoleHandle, Pointer<Uint32> lpMode)>('GetConsoleMode');
      expect(GetConsoleMode, isA<Function>());
    });
    test('Can instantiate GetConsoleScreenBufferInfo', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final GetConsoleScreenBufferInfo = kernel32.lookupFunction<
          Int32 Function(IntPtr hConsoleOutput,
              Pointer<CONSOLE_SCREEN_BUFFER_INFO> lpConsoleScreenBufferInfo),
          int Function(
              int hConsoleOutput,
              Pointer<CONSOLE_SCREEN_BUFFER_INFO>
                  lpConsoleScreenBufferInfo)>('GetConsoleScreenBufferInfo');
      expect(GetConsoleScreenBufferInfo, isA<Function>());
    });
    test('Can instantiate GetConsoleSelectionInfo', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final GetConsoleSelectionInfo = kernel32.lookupFunction<
              Int32 Function(
                  Pointer<CONSOLE_SELECTION_INFO> lpConsoleSelectionInfo),
              int Function(
                  Pointer<CONSOLE_SELECTION_INFO> lpConsoleSelectionInfo)>(
          'GetConsoleSelectionInfo');
      expect(GetConsoleSelectionInfo, isA<Function>());
    });
    test('Can instantiate GetConsoleTitle', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final GetConsoleTitle = kernel32.lookupFunction<
          Uint32 Function(Pointer<Utf16> lpConsoleTitle, Uint32 nSize),
          int Function(
              Pointer<Utf16> lpConsoleTitle, int nSize)>('GetConsoleTitleW');
      expect(GetConsoleTitle, isA<Function>());
    });
    test('Can instantiate GetConsoleWindow', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final GetConsoleWindow =
          kernel32.lookupFunction<IntPtr Function(), int Function()>(
              'GetConsoleWindow');
      expect(GetConsoleWindow, isA<Function>());
    });
    test('Can instantiate GetCurrentActCtx', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final GetCurrentActCtx = kernel32.lookupFunction<
          Int32 Function(Pointer<IntPtr> lphActCtx),
          int Function(Pointer<IntPtr> lphActCtx)>('GetCurrentActCtx');
      expect(GetCurrentActCtx, isA<Function>());
    });
    test('Can instantiate GetCurrentProcess', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final GetCurrentProcess =
          kernel32.lookupFunction<IntPtr Function(), int Function()>(
              'GetCurrentProcess');
      expect(GetCurrentProcess, isA<Function>());
    });
    test('Can instantiate GetExitCodeProcess', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final GetExitCodeProcess = kernel32.lookupFunction<
          Int32 Function(IntPtr hProcess, Pointer<Uint32> lpExitCode),
          int Function(
              int hProcess, Pointer<Uint32> lpExitCode)>('GetExitCodeProcess');
      expect(GetExitCodeProcess, isA<Function>());
    });
    test('Can instantiate GetFileAttributesEx', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final GetFileAttributesEx = kernel32.lookupFunction<
          Int32 Function(Pointer<Utf16> lpFileName, Uint32 fInfoLevelId,
              Pointer lpFileInformation),
          int Function(Pointer<Utf16> lpFileName, int fInfoLevelId,
              Pointer lpFileInformation)>('GetFileAttributesExW');
      expect(GetFileAttributesEx, isA<Function>());
    });
    test('Can instantiate GetHandleInformation', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final GetHandleInformation = kernel32.lookupFunction<
          Int32 Function(IntPtr hObject, Pointer<Uint32> lpdwFlags),
          int Function(
              int hObject, Pointer<Uint32> lpdwFlags)>('GetHandleInformation');
      expect(GetHandleInformation, isA<Function>());
    });
    test('Can instantiate GetLargestConsoleWindowSize', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final GetLargestConsoleWindowSize = kernel32.lookupFunction<
          COORD Function(IntPtr hConsoleOutput),
          COORD Function(int hConsoleOutput)>('GetLargestConsoleWindowSize');
      expect(GetLargestConsoleWindowSize, isA<Function>());
    });
    test('Can instantiate GetLastError', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final GetLastError = kernel32
          .lookupFunction<Uint32 Function(), int Function()>('GetLastError');
      expect(GetLastError, isA<Function>());
    });
    test('Can instantiate GetLocaleInfoEx', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final GetLocaleInfoEx = kernel32.lookupFunction<
          Int32 Function(Pointer<Utf16> lpLocaleName, Uint32 LCType,
              Pointer<Utf16> lpLCData, Int32 cchData),
          int Function(Pointer<Utf16> lpLocaleName, int LCType,
              Pointer<Utf16> lpLCData, int cchData)>('GetLocaleInfoEx');
      expect(GetLocaleInfoEx, isA<Function>());
    });
    test('Can instantiate GetLocalTime', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final GetLocalTime = kernel32.lookupFunction<
          Void Function(Pointer<SYSTEMTIME> lpSystemTime),
          void Function(Pointer<SYSTEMTIME> lpSystemTime)>('GetLocalTime');
      expect(GetLocalTime, isA<Function>());
    });
    test('Can instantiate GetLogicalDriveStrings', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final GetLogicalDriveStrings = kernel32.lookupFunction<
          Uint32 Function(Uint32 nBufferLength, Pointer<Utf16> lpBuffer),
          int Function(int nBufferLength,
              Pointer<Utf16> lpBuffer)>('GetLogicalDriveStringsW');
      expect(GetLogicalDriveStrings, isA<Function>());
    });
    test('Can instantiate GetModuleBaseName', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final GetModuleBaseName = kernel32.lookupFunction<
          Uint32 Function(IntPtr hProcess, IntPtr hModule,
              Pointer<Utf16> lpBaseName, Uint32 nSize),
          int Function(int hProcess, int hModule, Pointer<Utf16> lpBaseName,
              int nSize)>('K32GetModuleBaseNameW');
      expect(GetModuleBaseName, isA<Function>());
    });
    test('Can instantiate GetModuleFileName', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final GetModuleFileName = kernel32.lookupFunction<
          Uint32 Function(
              IntPtr hModule, Pointer<Utf16> lpFilename, Uint32 nSize),
          int Function(int hModule, Pointer<Utf16> lpFilename,
              int nSize)>('GetModuleFileNameW');
      expect(GetModuleFileName, isA<Function>());
    });
    test('Can instantiate GetModuleFileNameEx', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final GetModuleFileNameEx = kernel32.lookupFunction<
          Uint32 Function(IntPtr hProcess, IntPtr hModule,
              Pointer<Utf16> lpFilename, Uint32 nSize),
          int Function(int hProcess, int hModule, Pointer<Utf16> lpFilename,
              int nSize)>('K32GetModuleFileNameExW');
      expect(GetModuleFileNameEx, isA<Function>());
    });
    test('Can instantiate GetModuleHandle', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final GetModuleHandle = kernel32.lookupFunction<
          IntPtr Function(Pointer<Utf16> lpModuleName),
          int Function(Pointer<Utf16> lpModuleName)>('GetModuleHandleW');
      expect(GetModuleHandle, isA<Function>());
    });
    test('Can instantiate GetNamedPipeInfo', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final GetNamedPipeInfo = kernel32.lookupFunction<
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
      expect(GetNamedPipeInfo, isA<Function>());
    });
    test('Can instantiate GetNativeSystemInfo', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final GetNativeSystemInfo = kernel32.lookupFunction<
          Void Function(Pointer<SYSTEM_INFO> lpSystemInfo),
          void Function(
              Pointer<SYSTEM_INFO> lpSystemInfo)>('GetNativeSystemInfo');
      expect(GetNativeSystemInfo, isA<Function>());
    });
    test('Can instantiate GetPhysicallyInstalledSystemMemory', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final GetPhysicallyInstalledSystemMemory = kernel32.lookupFunction<
              Int32 Function(Pointer<Uint64> TotalMemoryInKilobytes),
              int Function(Pointer<Uint64> TotalMemoryInKilobytes)>(
          'GetPhysicallyInstalledSystemMemory');
      expect(GetPhysicallyInstalledSystemMemory, isA<Function>());
    });
    test('Can instantiate GetProcAddress', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final GetProcAddress = kernel32.lookupFunction<
          IntPtr Function(IntPtr hModule, Pointer<Utf8> lpProcName),
          int Function(
              int hModule, Pointer<Utf8> lpProcName)>('GetProcAddress');
      expect(GetProcAddress, isA<Function>());
    });
    test('Can instantiate GetProcessHeap', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final GetProcessHeap = kernel32
          .lookupFunction<IntPtr Function(), int Function()>('GetProcessHeap');
      expect(GetProcessHeap, isA<Function>());
    });
    test('Can instantiate GetProductInfo', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final GetProductInfo = kernel32.lookupFunction<
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
      expect(GetProductInfo, isA<Function>());
    });
    test('Can instantiate GetStdHandle', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final GetStdHandle = kernel32.lookupFunction<
          IntPtr Function(Uint32 nStdHandle),
          int Function(int nStdHandle)>('GetStdHandle');
      expect(GetStdHandle, isA<Function>());
    });
    test('Can instantiate GetSystemDefaultLangID', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final GetSystemDefaultLangID =
          kernel32.lookupFunction<Uint16 Function(), int Function()>(
              'GetSystemDefaultLangID');
      expect(GetSystemDefaultLangID, isA<Function>());
    });
    test('Can instantiate GetSystemDefaultLocaleName', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final GetSystemDefaultLocaleName = kernel32.lookupFunction<
          Int32 Function(Pointer<Utf16> lpLocaleName, Int32 cchLocaleName),
          int Function(Pointer<Utf16> lpLocaleName,
              int cchLocaleName)>('GetSystemDefaultLocaleName');
      expect(GetSystemDefaultLocaleName, isA<Function>());
    });
    test('Can instantiate GetSystemDirectory', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final GetSystemDirectory = kernel32.lookupFunction<
          Uint32 Function(Pointer<Utf16> lpBuffer, Uint32 uSize),
          int Function(
              Pointer<Utf16> lpBuffer, int uSize)>('GetSystemDirectoryW');
      expect(GetSystemDirectory, isA<Function>());
    });
    test('Can instantiate GetSystemInfo', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final GetSystemInfo = kernel32.lookupFunction<
          Void Function(Pointer<SYSTEM_INFO> lpSystemInfo),
          void Function(Pointer<SYSTEM_INFO> lpSystemInfo)>('GetSystemInfo');
      expect(GetSystemInfo, isA<Function>());
    });
    test('Can instantiate GetSystemPowerStatus', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final GetSystemPowerStatus = kernel32.lookupFunction<
              Int32 Function(Pointer<SYSTEM_POWER_STATUS> lpSystemPowerStatus),
              int Function(Pointer<SYSTEM_POWER_STATUS> lpSystemPowerStatus)>(
          'GetSystemPowerStatus');
      expect(GetSystemPowerStatus, isA<Function>());
    });
    test('Can instantiate GetSystemTime', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final GetSystemTime = kernel32.lookupFunction<
          Void Function(Pointer<SYSTEMTIME> lpSystemTime),
          void Function(Pointer<SYSTEMTIME> lpSystemTime)>('GetSystemTime');
      expect(GetSystemTime, isA<Function>());
    });
    test('Can instantiate GetTempPath', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final GetTempPath = kernel32.lookupFunction<
          Uint32 Function(Uint32 nBufferLength, Pointer<Utf16> lpBuffer),
          int Function(
              int nBufferLength, Pointer<Utf16> lpBuffer)>('GetTempPathW');
      expect(GetTempPath, isA<Function>());
    });
    test('Can instantiate GetThreadLocale', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final GetThreadLocale = kernel32
          .lookupFunction<Uint32 Function(), int Function()>('GetThreadLocale');
      expect(GetThreadLocale, isA<Function>());
    });
    test('Can instantiate GetThreadUILanguage', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final GetThreadUILanguage =
          kernel32.lookupFunction<Uint16 Function(), int Function()>(
              'GetThreadUILanguage');
      expect(GetThreadUILanguage, isA<Function>());
    });
    test('Can instantiate GetUserDefaultLangID', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final GetUserDefaultLangID =
          kernel32.lookupFunction<Uint16 Function(), int Function()>(
              'GetUserDefaultLangID');
      expect(GetUserDefaultLangID, isA<Function>());
    });
    test('Can instantiate GetUserDefaultLCID', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final GetUserDefaultLCID =
          kernel32.lookupFunction<Uint32 Function(), int Function()>(
              'GetUserDefaultLCID');
      expect(GetUserDefaultLCID, isA<Function>());
    });
    test('Can instantiate GetUserDefaultLocaleName', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final GetUserDefaultLocaleName = kernel32.lookupFunction<
          Int32 Function(Pointer<Utf16> lpLocaleName, Int32 cchLocaleName),
          int Function(Pointer<Utf16> lpLocaleName,
              int cchLocaleName)>('GetUserDefaultLocaleName');
      expect(GetUserDefaultLocaleName, isA<Function>());
    });
    test('Can instantiate GetVersionEx', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final GetVersionEx = kernel32.lookupFunction<
          Int32 Function(Pointer<OSVERSIONINFO> lpVersionInformation),
          int Function(
              Pointer<OSVERSIONINFO> lpVersionInformation)>('GetVersionExW');
      expect(GetVersionEx, isA<Function>());
    });
    test('Can instantiate GetVolumePathName', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final GetVolumePathName = kernel32.lookupFunction<
          Int32 Function(Pointer<Utf16> lpszFileName,
              Pointer<Utf16> lpszVolumePathName, Uint32 cchBufferLength),
          int Function(
              Pointer<Utf16> lpszFileName,
              Pointer<Utf16> lpszVolumePathName,
              int cchBufferLength)>('GetVolumePathNameW');
      expect(GetVolumePathName, isA<Function>());
    });
    test('Can instantiate GetVolumePathNamesForVolumeName', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final GetVolumePathNamesForVolumeName = kernel32.lookupFunction<
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
      expect(GetVolumePathNamesForVolumeName, isA<Function>());
    });
    test('Can instantiate GlobalAlloc', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final GlobalAlloc = kernel32.lookupFunction<
          IntPtr Function(Uint32 uFlags, IntPtr dwBytes),
          int Function(int uFlags, int dwBytes)>('GlobalAlloc');
      expect(GlobalAlloc, isA<Function>());
    });
    test('Can instantiate GlobalFree', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final GlobalFree = kernel32.lookupFunction<IntPtr Function(IntPtr hMem),
          int Function(int hMem)>('GlobalFree');
      expect(GlobalFree, isA<Function>());
    });
    test('Can instantiate GlobalLock', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final GlobalLock = kernel32.lookupFunction<Pointer Function(IntPtr hMem),
          Pointer Function(int hMem)>('GlobalLock');
      expect(GlobalLock, isA<Function>());
    });
    test('Can instantiate GlobalUnlock', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final GlobalUnlock = kernel32.lookupFunction<Int32 Function(IntPtr hMem),
          int Function(int hMem)>('GlobalUnlock');
      expect(GlobalUnlock, isA<Function>());
    });
    test('Can instantiate HeapAlloc', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final HeapAlloc = kernel32.lookupFunction<
          Pointer Function(IntPtr hHeap, Uint32 dwFlags, IntPtr dwBytes),
          Pointer Function(int hHeap, int dwFlags, int dwBytes)>('HeapAlloc');
      expect(HeapAlloc, isA<Function>());
    });
    test('Can instantiate HeapFree', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final HeapFree = kernel32.lookupFunction<
          Int32 Function(IntPtr hHeap, Uint32 dwFlags, Pointer lpMem),
          int Function(int hHeap, int dwFlags, Pointer lpMem)>('HeapFree');
      expect(HeapFree, isA<Function>());
    });
    test('Can instantiate InitializeProcThreadAttributeList', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final InitializeProcThreadAttributeList = kernel32.lookupFunction<
          Int32 Function(IntPtr lpAttributeList, Uint32 dwAttributeCount,
              Uint32 dwFlags, Pointer<IntPtr> lpSize),
          int Function(int lpAttributeList, int dwAttributeCount, int dwFlags,
              Pointer<IntPtr> lpSize)>('InitializeProcThreadAttributeList');
      expect(InitializeProcThreadAttributeList, isA<Function>());
    });
    test('Can instantiate IsDebuggerPresent', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final IsDebuggerPresent =
          kernel32.lookupFunction<Int32 Function(), int Function()>(
              'IsDebuggerPresent');
      expect(IsDebuggerPresent, isA<Function>());
    });
    test('Can instantiate IsNativeVhdBoot', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final IsNativeVhdBoot = kernel32.lookupFunction<
          Int32 Function(Pointer<Int32> NativeVhdBoot),
          int Function(Pointer<Int32> NativeVhdBoot)>('IsNativeVhdBoot');
      expect(IsNativeVhdBoot, isA<Function>());
    });
    test('Can instantiate IsValidLocaleName', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final IsValidLocaleName = kernel32.lookupFunction<
          Int32 Function(Pointer<Utf16> lpLocaleName),
          int Function(Pointer<Utf16> lpLocaleName)>('IsValidLocaleName');
      expect(IsValidLocaleName, isA<Function>());
    });
    if (windowsBuildNumber >= 16299) {
      test('Can instantiate IsWow64Process2', () {
        final kernel32 = DynamicLibrary.open('kernel32.dll');
        final IsWow64Process2 = kernel32.lookupFunction<
            Int32 Function(IntPtr hProcess, Pointer<Uint16> pProcessMachine,
                Pointer<Uint16> pNativeMachine),
            int Function(int hProcess, Pointer<Uint16> pProcessMachine,
                Pointer<Uint16> pNativeMachine)>('IsWow64Process2');
        expect(IsWow64Process2, isA<Function>());
      });
    }
    test('Can instantiate LoadLibrary', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final LoadLibrary = kernel32.lookupFunction<
          IntPtr Function(Pointer<Utf16> lpLibFileName),
          int Function(Pointer<Utf16> lpLibFileName)>('LoadLibraryW');
      expect(LoadLibrary, isA<Function>());
    });
    test('Can instantiate LoadResource', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final LoadResource = kernel32.lookupFunction<
          IntPtr Function(IntPtr hModule, IntPtr hResInfo),
          int Function(int hModule, int hResInfo)>('LoadResource');
      expect(LoadResource, isA<Function>());
    });
    test('Can instantiate LockResource', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final LockResource = kernel32.lookupFunction<
          Pointer Function(IntPtr hResData),
          Pointer Function(int hResData)>('LockResource');
      expect(LockResource, isA<Function>());
    });
    test('Can instantiate MoveFile', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final MoveFile = kernel32.lookupFunction<
          Int32 Function(
              Pointer<Utf16> lpExistingFileName, Pointer<Utf16> lpNewFileName),
          int Function(Pointer<Utf16> lpExistingFileName,
              Pointer<Utf16> lpNewFileName)>('MoveFileW');
      expect(MoveFile, isA<Function>());
    });
    test('Can instantiate OpenProcess', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final OpenProcess = kernel32.lookupFunction<
          IntPtr Function(
              Uint32 dwDesiredAccess, Int32 bInheritHandle, Uint32 dwProcessId),
          int Function(int dwDesiredAccess, int bInheritHandle,
              int dwProcessId)>('OpenProcess');
      expect(OpenProcess, isA<Function>());
    });
    test('Can instantiate OutputDebugString', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final OutputDebugString = kernel32.lookupFunction<
          Void Function(Pointer<Utf16> lpOutputString),
          void Function(Pointer<Utf16> lpOutputString)>('OutputDebugStringW');
      expect(OutputDebugString, isA<Function>());
    });
    test('Can instantiate PeekNamedPipe', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final PeekNamedPipe = kernel32.lookupFunction<
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
      expect(PeekNamedPipe, isA<Function>());
    });
    test('Can instantiate QueryDosDevice', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final QueryDosDevice = kernel32.lookupFunction<
          Uint32 Function(Pointer<Utf16> lpDeviceName,
              Pointer<Utf16> lpTargetPath, Uint32 ucchMax),
          int Function(Pointer<Utf16> lpDeviceName, Pointer<Utf16> lpTargetPath,
              int ucchMax)>('QueryDosDeviceW');
      expect(QueryDosDevice, isA<Function>());
    });
    test('Can instantiate QueryPerformanceCounter', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final QueryPerformanceCounter = kernel32.lookupFunction<
          Int32 Function(Pointer<Int64> lpPerformanceCount),
          int Function(
              Pointer<Int64> lpPerformanceCount)>('QueryPerformanceCounter');
      expect(QueryPerformanceCounter, isA<Function>());
    });
    test('Can instantiate QueryPerformanceFrequency', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final QueryPerformanceFrequency = kernel32.lookupFunction<
          Int32 Function(Pointer<Int64> lpFrequency),
          int Function(
              Pointer<Int64> lpFrequency)>('QueryPerformanceFrequency');
      expect(QueryPerformanceFrequency, isA<Function>());
    });
    test('Can instantiate ReadConsole', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final ReadConsole = kernel32.lookupFunction<
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
      expect(ReadConsole, isA<Function>());
    });
    test('Can instantiate ReadFile', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final ReadFile = kernel32.lookupFunction<
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
      expect(ReadFile, isA<Function>());
    });
    test('Can instantiate ReadProcessMemory', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final ReadProcessMemory = kernel32.lookupFunction<
          Int32 Function(
              IntPtr hProcess,
              Pointer lpBaseAddress,
              Pointer lpBuffer,
              IntPtr nSize,
              Pointer<IntPtr> lpNumberOfBytesRead),
          int Function(
              int hProcess,
              Pointer lpBaseAddress,
              Pointer lpBuffer,
              int nSize,
              Pointer<IntPtr> lpNumberOfBytesRead)>('ReadProcessMemory');
      expect(ReadProcessMemory, isA<Function>());
    });
    test('Can instantiate ReleaseActCtx', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final ReleaseActCtx = kernel32.lookupFunction<
          Void Function(IntPtr hActCtx),
          void Function(int hActCtx)>('ReleaseActCtx');
      expect(ReleaseActCtx, isA<Function>());
    });
    test('Can instantiate RemoveDirectory', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final RemoveDirectory = kernel32.lookupFunction<
          Int32 Function(Pointer<Utf16> lpPathName),
          int Function(Pointer<Utf16> lpPathName)>('RemoveDirectoryW');
      expect(RemoveDirectory, isA<Function>());
    });
    test('Can instantiate ReOpenFile', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final ReOpenFile = kernel32.lookupFunction<
          IntPtr Function(IntPtr hOriginalFile, Uint32 dwDesiredAccess,
              Uint32 dwShareMode, Uint32 dwFlagsAndAttributes),
          int Function(int hOriginalFile, int dwDesiredAccess, int dwShareMode,
              int dwFlagsAndAttributes)>('ReOpenFile');
      expect(ReOpenFile, isA<Function>());
    });
    if (windowsBuildNumber >= 17763) {
      test('Can instantiate ResizePseudoConsole', () {
        final kernel32 = DynamicLibrary.open('kernel32.dll');
        final ResizePseudoConsole = kernel32.lookupFunction<
            Int32 Function(IntPtr hPC, COORD size),
            int Function(int hPC, COORD size)>('ResizePseudoConsole');
        expect(ResizePseudoConsole, isA<Function>());
      });
    }
    test('Can instantiate ScrollConsoleScreenBuffer', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final ScrollConsoleScreenBuffer = kernel32.lookupFunction<
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
      expect(ScrollConsoleScreenBuffer, isA<Function>());
    });
    test('Can instantiate SetConsoleCtrlHandler', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final SetConsoleCtrlHandler = kernel32.lookupFunction<
          Int32 Function(
              Pointer<NativeFunction<HandlerProc>> HandlerRoutine, Int32 Add),
          int Function(Pointer<NativeFunction<HandlerProc>> HandlerRoutine,
              int Add)>('SetConsoleCtrlHandler');
      expect(SetConsoleCtrlHandler, isA<Function>());
    });
    test('Can instantiate SetConsoleCursorInfo', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final SetConsoleCursorInfo = kernel32.lookupFunction<
              Int32 Function(IntPtr hConsoleOutput,
                  Pointer<CONSOLE_CURSOR_INFO> lpConsoleCursorInfo),
              int Function(int hConsoleOutput,
                  Pointer<CONSOLE_CURSOR_INFO> lpConsoleCursorInfo)>(
          'SetConsoleCursorInfo');
      expect(SetConsoleCursorInfo, isA<Function>());
    });
    test('Can instantiate SetConsoleCursorPosition', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final SetConsoleCursorPosition = kernel32.lookupFunction<
          Int32 Function(IntPtr hConsoleOutput, COORD dwCursorPosition),
          int Function(int hConsoleOutput,
              COORD dwCursorPosition)>('SetConsoleCursorPosition');
      expect(SetConsoleCursorPosition, isA<Function>());
    });
    test('Can instantiate SetConsoleDisplayMode', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final SetConsoleDisplayMode = kernel32.lookupFunction<
              Int32 Function(IntPtr hConsoleOutput, Uint32 dwFlags,
                  Pointer<COORD> lpNewScreenBufferDimensions),
              int Function(int hConsoleOutput, int dwFlags,
                  Pointer<COORD> lpNewScreenBufferDimensions)>(
          'SetConsoleDisplayMode');
      expect(SetConsoleDisplayMode, isA<Function>());
    });
    test('Can instantiate SetConsoleMode', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final SetConsoleMode = kernel32.lookupFunction<
          Int32 Function(IntPtr hConsoleHandle, Uint32 dwMode),
          int Function(int hConsoleHandle, int dwMode)>('SetConsoleMode');
      expect(SetConsoleMode, isA<Function>());
    });
    test('Can instantiate SetConsoleTextAttribute', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final SetConsoleTextAttribute = kernel32.lookupFunction<
          Int32 Function(IntPtr hConsoleOutput, Uint16 wAttributes),
          int Function(
              int hConsoleOutput, int wAttributes)>('SetConsoleTextAttribute');
      expect(SetConsoleTextAttribute, isA<Function>());
    });
    test('Can instantiate SetConsoleWindowInfo', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final SetConsoleWindowInfo = kernel32.lookupFunction<
          Int32 Function(IntPtr hConsoleOutput, Int32 bAbsolute,
              Pointer<SMALL_RECT> lpConsoleWindow),
          int Function(int hConsoleOutput, int bAbsolute,
              Pointer<SMALL_RECT> lpConsoleWindow)>('SetConsoleWindowInfo');
      expect(SetConsoleWindowInfo, isA<Function>());
    });
    test('Can instantiate SetCurrentDirectory', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final SetCurrentDirectory = kernel32.lookupFunction<
          Int32 Function(Pointer<Utf16> lpPathName),
          int Function(Pointer<Utf16> lpPathName)>('SetCurrentDirectoryW');
      expect(SetCurrentDirectory, isA<Function>());
    });
    test('Can instantiate SetFilePointer', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final SetFilePointer = kernel32.lookupFunction<
          Uint32 Function(IntPtr hFile, Int32 lDistanceToMove,
              Pointer<Int32> lpDistanceToMoveHigh, Uint32 dwMoveMethod),
          int Function(
              int hFile,
              int lDistanceToMove,
              Pointer<Int32> lpDistanceToMoveHigh,
              int dwMoveMethod)>('SetFilePointer');
      expect(SetFilePointer, isA<Function>());
    });
    test('Can instantiate SetFilePointerEx', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final SetFilePointerEx = kernel32.lookupFunction<
          Int32 Function(IntPtr hFile, Int64 liDistanceToMove,
              Pointer<Int64> lpNewFilePointer, Uint32 dwMoveMethod),
          int Function(
              int hFile,
              int liDistanceToMove,
              Pointer<Int64> lpNewFilePointer,
              int dwMoveMethod)>('SetFilePointerEx');
      expect(SetFilePointerEx, isA<Function>());
    });
    test('Can instantiate SetFileShortName', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final SetFileShortName = kernel32.lookupFunction<
          Int32 Function(IntPtr hFile, Pointer<Utf16> lpShortName),
          int Function(
              int hFile, Pointer<Utf16> lpShortName)>('SetFileShortNameW');
      expect(SetFileShortName, isA<Function>());
    });
    test('Can instantiate SetFirmwareEnvironmentVariable', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final SetFirmwareEnvironmentVariable = kernel32.lookupFunction<
          Int32 Function(Pointer<Utf16> lpName, Pointer<Utf16> lpGuid,
              Pointer pValue, Uint32 nSize),
          int Function(Pointer<Utf16> lpName, Pointer<Utf16> lpGuid,
              Pointer pValue, int nSize)>('SetFirmwareEnvironmentVariableW');
      expect(SetFirmwareEnvironmentVariable, isA<Function>());
    });
    test('Can instantiate SetFirmwareEnvironmentVariableEx', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final SetFirmwareEnvironmentVariableEx = kernel32.lookupFunction<
          Int32 Function(Pointer<Utf16> lpName, Pointer<Utf16> lpGuid,
              Pointer pValue, Uint32 nSize, Uint32 dwAttributes),
          int Function(
              Pointer<Utf16> lpName,
              Pointer<Utf16> lpGuid,
              Pointer pValue,
              int nSize,
              int dwAttributes)>('SetFirmwareEnvironmentVariableExW');
      expect(SetFirmwareEnvironmentVariableEx, isA<Function>());
    });
    test('Can instantiate SetHandleInformation', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final SetHandleInformation = kernel32.lookupFunction<
          Int32 Function(IntPtr hObject, Uint32 dwMask, Uint32 dwFlags),
          int Function(
              int hObject, int dwMask, int dwFlags)>('SetHandleInformation');
      expect(SetHandleInformation, isA<Function>());
    });
    test('Can instantiate SetNamedPipeHandleState', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final SetNamedPipeHandleState = kernel32.lookupFunction<
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
      expect(SetNamedPipeHandleState, isA<Function>());
    });
    test('Can instantiate SetStdHandle', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final SetStdHandle = kernel32.lookupFunction<
          Int32 Function(Uint32 nStdHandle, IntPtr hHandle),
          int Function(int nStdHandle, int hHandle)>('SetStdHandle');
      expect(SetStdHandle, isA<Function>());
    });
    test('Can instantiate SetThreadExecutionState', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final SetThreadExecutionState = kernel32.lookupFunction<
          Uint32 Function(Uint32 esFlags),
          int Function(int esFlags)>('SetThreadExecutionState');
      expect(SetThreadExecutionState, isA<Function>());
    });
    test('Can instantiate SetThreadUILanguage', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final SetThreadUILanguage = kernel32.lookupFunction<
          Uint16 Function(Uint16 LangId),
          int Function(int LangId)>('SetThreadUILanguage');
      expect(SetThreadUILanguage, isA<Function>());
    });
    test('Can instantiate SetVolumeLabel', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final SetVolumeLabel = kernel32.lookupFunction<
          Int32 Function(
              Pointer<Utf16> lpRootPathName, Pointer<Utf16> lpVolumeName),
          int Function(Pointer<Utf16> lpRootPathName,
              Pointer<Utf16> lpVolumeName)>('SetVolumeLabelW');
      expect(SetVolumeLabel, isA<Function>());
    });
    test('Can instantiate Sleep', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final Sleep = kernel32.lookupFunction<
          Void Function(Uint32 dwMilliseconds),
          void Function(int dwMilliseconds)>('Sleep');
      expect(Sleep, isA<Function>());
    });
    test('Can instantiate TerminateProcess', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final TerminateProcess = kernel32.lookupFunction<
          Int32 Function(IntPtr hProcess, Uint32 uExitCode),
          int Function(int hProcess, int uExitCode)>('TerminateProcess');
      expect(TerminateProcess, isA<Function>());
    });
    test('Can instantiate TransactNamedPipe', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final TransactNamedPipe = kernel32.lookupFunction<
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
      expect(TransactNamedPipe, isA<Function>());
    });
    test('Can instantiate UpdateProcThreadAttribute', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final UpdateProcThreadAttribute = kernel32.lookupFunction<
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
      expect(UpdateProcThreadAttribute, isA<Function>());
    });
    test('Can instantiate UpdateResource', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final UpdateResource = kernel32.lookupFunction<
          Int32 Function(
              IntPtr hUpdate,
              Pointer<Utf16> lpType,
              Pointer<Utf16> lpName,
              Uint16 wLanguage,
              Pointer lpData,
              Uint32 cb),
          int Function(
              int hUpdate,
              Pointer<Utf16> lpType,
              Pointer<Utf16> lpName,
              int wLanguage,
              Pointer lpData,
              int cb)>('UpdateResourceW');
      expect(UpdateResource, isA<Function>());
    });
    test('Can instantiate VerLanguageName', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final VerLanguageName = kernel32.lookupFunction<
          Uint32 Function(Uint32 wLang, Pointer<Utf16> szLang, Uint32 cchLang),
          int Function(int wLang, Pointer<Utf16> szLang,
              int cchLang)>('VerLanguageNameW');
      expect(VerLanguageName, isA<Function>());
    });
    test('Can instantiate VirtualAlloc', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final VirtualAlloc = kernel32.lookupFunction<
          Pointer Function(Pointer lpAddress, IntPtr dwSize,
              Uint32 flAllocationType, Uint32 flProtect),
          Pointer Function(Pointer lpAddress, int dwSize, int flAllocationType,
              int flProtect)>('VirtualAlloc');
      expect(VirtualAlloc, isA<Function>());
    });
    test('Can instantiate VirtualFree', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final VirtualFree = kernel32.lookupFunction<
          Int32 Function(Pointer lpAddress, IntPtr dwSize, Uint32 dwFreeType),
          int Function(
              Pointer lpAddress, int dwSize, int dwFreeType)>('VirtualFree');
      expect(VirtualFree, isA<Function>());
    });
    test('Can instantiate WaitForSingleObject', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final WaitForSingleObject = kernel32.lookupFunction<
          Uint32 Function(IntPtr hHandle, Uint32 dwMilliseconds),
          int Function(int hHandle, int dwMilliseconds)>('WaitForSingleObject');
      expect(WaitForSingleObject, isA<Function>());
    });
    test('Can instantiate WideCharToMultiByte', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final WideCharToMultiByte = kernel32.lookupFunction<
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
      expect(WideCharToMultiByte, isA<Function>());
    });
    test('Can instantiate Wow64SuspendThread', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final Wow64SuspendThread = kernel32.lookupFunction<
          Uint32 Function(IntPtr hThread),
          int Function(int hThread)>('Wow64SuspendThread');
      expect(Wow64SuspendThread, isA<Function>());
    });
    test('Can instantiate WriteConsole', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final WriteConsole = kernel32.lookupFunction<
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
      expect(WriteConsole, isA<Function>());
    });
    test('Can instantiate WriteFile', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final WriteFile = kernel32.lookupFunction<
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
      expect(WriteFile, isA<Function>());
    });
    test('Can instantiate WriteProcessMemory', () {
      final kernel32 = DynamicLibrary.open('kernel32.dll');
      final WriteProcessMemory = kernel32.lookupFunction<
          Int32 Function(
              IntPtr hProcess,
              Pointer lpBaseAddress,
              Pointer lpBuffer,
              IntPtr nSize,
              Pointer<IntPtr> lpNumberOfBytesWritten),
          int Function(
              int hProcess,
              Pointer lpBaseAddress,
              Pointer lpBuffer,
              int nSize,
              Pointer<IntPtr> lpNumberOfBytesWritten)>('WriteProcessMemory');
      expect(WriteProcessMemory, isA<Function>());
    });
  });

  group('Test user32 functions', () {
    test('Can instantiate ActivateKeyboardLayout', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final ActivateKeyboardLayout = user32.lookupFunction<
          IntPtr Function(IntPtr hkl, Uint32 Flags),
          int Function(int hkl, int Flags)>('ActivateKeyboardLayout');
      expect(ActivateKeyboardLayout, isA<Function>());
    });
    test('Can instantiate AddClipboardFormatListener', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final AddClipboardFormatListener = user32.lookupFunction<
          Int32 Function(IntPtr hwnd),
          int Function(int hwnd)>('AddClipboardFormatListener');
      expect(AddClipboardFormatListener, isA<Function>());
    });
    test('Can instantiate AnimateWindow', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final AnimateWindow = user32.lookupFunction<
          Int32 Function(IntPtr hWnd, Uint32 dwTime, Uint32 dwFlags),
          int Function(int hWnd, int dwTime, int dwFlags)>('AnimateWindow');
      expect(AnimateWindow, isA<Function>());
    });
    test('Can instantiate AppendMenu', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final AppendMenu = user32.lookupFunction<
          Int32 Function(IntPtr hMenu, Uint32 uFlags, IntPtr uIDNewItem,
              Pointer<Utf16> lpNewItem),
          int Function(int hMenu, int uFlags, int uIDNewItem,
              Pointer<Utf16> lpNewItem)>('AppendMenuW');
      expect(AppendMenu, isA<Function>());
    });
    test('Can instantiate BeginPaint', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final BeginPaint = user32.lookupFunction<
          IntPtr Function(IntPtr hWnd, Pointer<PAINTSTRUCT> lpPaint),
          int Function(int hWnd, Pointer<PAINTSTRUCT> lpPaint)>('BeginPaint');
      expect(BeginPaint, isA<Function>());
    });
    test('Can instantiate BlockInput', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final BlockInput = user32.lookupFunction<Int32 Function(Int32 fBlockIt),
          int Function(int fBlockIt)>('BlockInput');
      expect(BlockInput, isA<Function>());
    });
    test('Can instantiate BringWindowToTop', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final BringWindowToTop = user32.lookupFunction<
          Int32 Function(IntPtr hWnd),
          int Function(int hWnd)>('BringWindowToTop');
      expect(BringWindowToTop, isA<Function>());
    });
    test('Can instantiate ChangeClipboardChain', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final ChangeClipboardChain = user32.lookupFunction<
          Int32 Function(IntPtr hWndRemove, IntPtr hWndNewNext),
          int Function(
              int hWndRemove, int hWndNewNext)>('ChangeClipboardChain');
      expect(ChangeClipboardChain, isA<Function>());
    });
    test('Can instantiate ChildWindowFromPoint', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final ChildWindowFromPoint = user32.lookupFunction<
          IntPtr Function(IntPtr hWndParent, POINT Point),
          int Function(int hWndParent, POINT Point)>('ChildWindowFromPoint');
      expect(ChildWindowFromPoint, isA<Function>());
    });
    test('Can instantiate ChildWindowFromPointEx', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final ChildWindowFromPointEx = user32.lookupFunction<
          IntPtr Function(IntPtr hwnd, POINT pt, Uint32 flags),
          int Function(
              int hwnd, POINT pt, int flags)>('ChildWindowFromPointEx');
      expect(ChildWindowFromPointEx, isA<Function>());
    });
    test('Can instantiate ClientToScreen', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final ClientToScreen = user32.lookupFunction<
          Int32 Function(IntPtr hWnd, Pointer<POINT> lpPoint),
          int Function(int hWnd, Pointer<POINT> lpPoint)>('ClientToScreen');
      expect(ClientToScreen, isA<Function>());
    });
    test('Can instantiate ClipCursor', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final ClipCursor = user32.lookupFunction<
          Int32 Function(Pointer<RECT> lpRect),
          int Function(Pointer<RECT> lpRect)>('ClipCursor');
      expect(ClipCursor, isA<Function>());
    });
    test('Can instantiate CloseClipboard', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final CloseClipboard = user32
          .lookupFunction<Int32 Function(), int Function()>('CloseClipboard');
      expect(CloseClipboard, isA<Function>());
    });
    test('Can instantiate CopyAcceleratorTable', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final CopyAcceleratorTable = user32.lookupFunction<
          Int32 Function(
              IntPtr hAccelSrc, Pointer<ACCEL> lpAccelDst, Int32 cAccelEntries),
          int Function(int hAccelSrc, Pointer<ACCEL> lpAccelDst,
              int cAccelEntries)>('CopyAcceleratorTableW');
      expect(CopyAcceleratorTable, isA<Function>());
    });
    test('Can instantiate CopyIcon', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final CopyIcon = user32.lookupFunction<IntPtr Function(IntPtr hIcon),
          int Function(int hIcon)>('CopyIcon');
      expect(CopyIcon, isA<Function>());
    });
    test('Can instantiate CopyImage', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final CopyImage = user32.lookupFunction<
          IntPtr Function(
              IntPtr h, Uint32 type, Int32 cx, Int32 cy, Uint32 flags),
          int Function(
              int h, int type, int cx, int cy, int flags)>('CopyImage');
      expect(CopyImage, isA<Function>());
    });
    test('Can instantiate CopyRect', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final CopyRect = user32.lookupFunction<
          Int32 Function(Pointer<RECT> lprcDst, Pointer<RECT> lprcSrc),
          int Function(
              Pointer<RECT> lprcDst, Pointer<RECT> lprcSrc)>('CopyRect');
      expect(CopyRect, isA<Function>());
    });
    test('Can instantiate CountClipboardFormats', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final CountClipboardFormats =
          user32.lookupFunction<Int32 Function(), int Function()>(
              'CountClipboardFormats');
      expect(CountClipboardFormats, isA<Function>());
    });
    test('Can instantiate CreateAcceleratorTable', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final CreateAcceleratorTable = user32.lookupFunction<
          IntPtr Function(Pointer<ACCEL> paccel, Int32 cAccel),
          int Function(
              Pointer<ACCEL> paccel, int cAccel)>('CreateAcceleratorTableW');
      expect(CreateAcceleratorTable, isA<Function>());
    });
    test('Can instantiate CreateDialogIndirectParam', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final CreateDialogIndirectParam = user32.lookupFunction<
          IntPtr Function(
              IntPtr hInstance,
              Pointer<DLGTEMPLATE> lpTemplate,
              IntPtr hWndParent,
              Pointer<NativeFunction<DlgProc>> lpDialogFunc,
              IntPtr dwInitParam),
          int Function(
              int hInstance,
              Pointer<DLGTEMPLATE> lpTemplate,
              int hWndParent,
              Pointer<NativeFunction<DlgProc>> lpDialogFunc,
              int dwInitParam)>('CreateDialogIndirectParamW');
      expect(CreateDialogIndirectParam, isA<Function>());
    });
    test('Can instantiate CreateMenu', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final CreateMenu = user32
          .lookupFunction<IntPtr Function(), int Function()>('CreateMenu');
      expect(CreateMenu, isA<Function>());
    });
    test('Can instantiate CreateWindowEx', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final CreateWindowEx = user32.lookupFunction<
          IntPtr Function(
              Uint32 dwExStyle,
              Pointer<Utf16> lpClassName,
              Pointer<Utf16> lpWindowName,
              Uint32 dwStyle,
              Int32 X,
              Int32 Y,
              Int32 nWidth,
              Int32 nHeight,
              IntPtr hWndParent,
              IntPtr hMenu,
              IntPtr hInstance,
              Pointer lpParam),
          int Function(
              int dwExStyle,
              Pointer<Utf16> lpClassName,
              Pointer<Utf16> lpWindowName,
              int dwStyle,
              int X,
              int Y,
              int nWidth,
              int nHeight,
              int hWndParent,
              int hMenu,
              int hInstance,
              Pointer lpParam)>('CreateWindowExW');
      expect(CreateWindowEx, isA<Function>());
    });
    test('Can instantiate DefWindowProc', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final DefWindowProc = user32.lookupFunction<
          IntPtr Function(
              IntPtr hWnd, Uint32 Msg, IntPtr wParam, IntPtr lParam),
          int Function(
              int hWnd, int Msg, int wParam, int lParam)>('DefWindowProcW');
      expect(DefWindowProc, isA<Function>());
    });
    test('Can instantiate DestroyIcon', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final DestroyIcon = user32.lookupFunction<Int32 Function(IntPtr hIcon),
          int Function(int hIcon)>('DestroyIcon');
      expect(DestroyIcon, isA<Function>());
    });
    test('Can instantiate DestroyMenu', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final DestroyMenu = user32.lookupFunction<Int32 Function(IntPtr hMenu),
          int Function(int hMenu)>('DestroyMenu');
      expect(DestroyMenu, isA<Function>());
    });
    test('Can instantiate DestroyWindow', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final DestroyWindow = user32.lookupFunction<Int32 Function(IntPtr hWnd),
          int Function(int hWnd)>('DestroyWindow');
      expect(DestroyWindow, isA<Function>());
    });
    test('Can instantiate DialogBoxIndirectParam', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final DialogBoxIndirectParam = user32.lookupFunction<
          IntPtr Function(
              IntPtr hInstance,
              Pointer<DLGTEMPLATE> hDialogTemplate,
              IntPtr hWndParent,
              Pointer<NativeFunction<DlgProc>> lpDialogFunc,
              IntPtr dwInitParam),
          int Function(
              int hInstance,
              Pointer<DLGTEMPLATE> hDialogTemplate,
              int hWndParent,
              Pointer<NativeFunction<DlgProc>> lpDialogFunc,
              int dwInitParam)>('DialogBoxIndirectParamW');
      expect(DialogBoxIndirectParam, isA<Function>());
    });
    test('Can instantiate DisableProcessWindowsGhosting', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final DisableProcessWindowsGhosting =
          user32.lookupFunction<Void Function(), void Function()>(
              'DisableProcessWindowsGhosting');
      expect(DisableProcessWindowsGhosting, isA<Function>());
    });
    test('Can instantiate DispatchMessage', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final DispatchMessage = user32.lookupFunction<
          IntPtr Function(Pointer<MSG> lpMsg),
          int Function(Pointer<MSG> lpMsg)>('DispatchMessageW');
      expect(DispatchMessage, isA<Function>());
    });
    test('Can instantiate DragDetect', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final DragDetect = user32.lookupFunction<
          Int32 Function(IntPtr hwnd, POINT pt),
          int Function(int hwnd, POINT pt)>('DragDetect');
      expect(DragDetect, isA<Function>());
    });
    test('Can instantiate DrawCaption', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final DrawCaption = user32.lookupFunction<
          Int32 Function(
              IntPtr hwnd, IntPtr hdc, Pointer<RECT> lprect, Uint32 flags),
          int Function(int hwnd, int hdc, Pointer<RECT> lprect,
              int flags)>('DrawCaption');
      expect(DrawCaption, isA<Function>());
    });
    test('Can instantiate DrawIcon', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final DrawIcon = user32.lookupFunction<
          Int32 Function(IntPtr hDC, Int32 X, Int32 Y, IntPtr hIcon),
          int Function(int hDC, int X, int Y, int hIcon)>('DrawIcon');
      expect(DrawIcon, isA<Function>());
    });
    test('Can instantiate DrawText', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final DrawText = user32.lookupFunction<
          Int32 Function(IntPtr hdc, Pointer<Utf16> lpchText, Int32 cchText,
              Pointer<RECT> lprc, Uint32 format),
          int Function(int hdc, Pointer<Utf16> lpchText, int cchText,
              Pointer<RECT> lprc, int format)>('DrawTextW');
      expect(DrawText, isA<Function>());
    });
    test('Can instantiate DrawTextEx', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final DrawTextEx = user32.lookupFunction<
          Int32 Function(IntPtr hdc, Pointer<Utf16> lpchText, Int32 cchText,
              Pointer<RECT> lprc, Uint32 format, Pointer<DRAWTEXTPARAMS> lpdtp),
          int Function(
              int hdc,
              Pointer<Utf16> lpchText,
              int cchText,
              Pointer<RECT> lprc,
              int format,
              Pointer<DRAWTEXTPARAMS> lpdtp)>('DrawTextExW');
      expect(DrawTextEx, isA<Function>());
    });
    test('Can instantiate EmptyClipboard', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final EmptyClipboard = user32
          .lookupFunction<Int32 Function(), int Function()>('EmptyClipboard');
      expect(EmptyClipboard, isA<Function>());
    });
    test('Can instantiate EnableMenuItem', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final EnableMenuItem = user32.lookupFunction<
          Int32 Function(IntPtr hMenu, Uint32 uIDEnableItem, Uint32 uEnable),
          int Function(
              int hMenu, int uIDEnableItem, int uEnable)>('EnableMenuItem');
      expect(EnableMenuItem, isA<Function>());
    });
    test('Can instantiate EnableWindow', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final EnableWindow = user32.lookupFunction<
          Int32 Function(IntPtr hWnd, Int32 bEnable),
          int Function(int hWnd, int bEnable)>('EnableWindow');
      expect(EnableWindow, isA<Function>());
    });
    test('Can instantiate EndDialog', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final EndDialog = user32.lookupFunction<
          Int32 Function(IntPtr hDlg, IntPtr nResult),
          int Function(int hDlg, int nResult)>('EndDialog');
      expect(EndDialog, isA<Function>());
    });
    test('Can instantiate EndPaint', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final EndPaint = user32.lookupFunction<
          Int32 Function(IntPtr hWnd, Pointer<PAINTSTRUCT> lpPaint),
          int Function(int hWnd, Pointer<PAINTSTRUCT> lpPaint)>('EndPaint');
      expect(EndPaint, isA<Function>());
    });
    test('Can instantiate EnumChildWindows', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final EnumChildWindows = user32.lookupFunction<
          Int32 Function(
              IntPtr hWndParent,
              Pointer<NativeFunction<EnumWindowsProc>> lpEnumFunc,
              IntPtr lParam),
          int Function(
              int hWndParent,
              Pointer<NativeFunction<EnumWindowsProc>> lpEnumFunc,
              int lParam)>('EnumChildWindows');
      expect(EnumChildWindows, isA<Function>());
    });
    test('Can instantiate EnumClipboardFormats', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final EnumClipboardFormats = user32.lookupFunction<
          Uint32 Function(Uint32 format),
          int Function(int format)>('EnumClipboardFormats');
      expect(EnumClipboardFormats, isA<Function>());
    });
    test('Can instantiate EnumDisplayMonitors', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final EnumDisplayMonitors = user32.lookupFunction<
          Int32 Function(IntPtr hdc, Pointer<RECT> lprcClip,
              Pointer<NativeFunction<MonitorEnumProc>> lpfnEnum, IntPtr dwData),
          int Function(
              int hdc,
              Pointer<RECT> lprcClip,
              Pointer<NativeFunction<MonitorEnumProc>> lpfnEnum,
              int dwData)>('EnumDisplayMonitors');
      expect(EnumDisplayMonitors, isA<Function>());
    });
    test('Can instantiate EnumWindows', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final EnumWindows = user32.lookupFunction<
          Int32 Function(Pointer<NativeFunction<EnumWindowsProc>> lpEnumFunc,
              IntPtr lParam),
          int Function(Pointer<NativeFunction<EnumWindowsProc>> lpEnumFunc,
              int lParam)>('EnumWindows');
      expect(EnumWindows, isA<Function>());
    });
    test('Can instantiate EqualRect', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final EqualRect = user32.lookupFunction<
          Int32 Function(Pointer<RECT> lprc1, Pointer<RECT> lprc2),
          int Function(Pointer<RECT> lprc1, Pointer<RECT> lprc2)>('EqualRect');
      expect(EqualRect, isA<Function>());
    });
    test('Can instantiate ExcludeUpdateRgn', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final ExcludeUpdateRgn = user32.lookupFunction<
          Int32 Function(IntPtr hDC, IntPtr hWnd),
          int Function(int hDC, int hWnd)>('ExcludeUpdateRgn');
      expect(ExcludeUpdateRgn, isA<Function>());
    });
    test('Can instantiate FillRect', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final FillRect = user32.lookupFunction<
          Int32 Function(IntPtr hDC, Pointer<RECT> lprc, IntPtr hbr),
          int Function(int hDC, Pointer<RECT> lprc, int hbr)>('FillRect');
      expect(FillRect, isA<Function>());
    });
    test('Can instantiate FindWindowEx', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final FindWindowEx = user32.lookupFunction<
          IntPtr Function(IntPtr hWndParent, IntPtr hWndChildAfter,
              Pointer<Utf16> lpszClass, Pointer<Utf16> lpszWindow),
          int Function(
              int hWndParent,
              int hWndChildAfter,
              Pointer<Utf16> lpszClass,
              Pointer<Utf16> lpszWindow)>('FindWindowExW');
      expect(FindWindowEx, isA<Function>());
    });
    test('Can instantiate FrameRect', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final FrameRect = user32.lookupFunction<
          Int32 Function(IntPtr hDC, Pointer<RECT> lprc, IntPtr hbr),
          int Function(int hDC, Pointer<RECT> lprc, int hbr)>('FrameRect');
      expect(FrameRect, isA<Function>());
    });
    test('Can instantiate GetActiveWindow', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetActiveWindow = user32
          .lookupFunction<IntPtr Function(), int Function()>('GetActiveWindow');
      expect(GetActiveWindow, isA<Function>());
    });
    test('Can instantiate GetAncestor', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetAncestor = user32.lookupFunction<
          IntPtr Function(IntPtr hwnd, Uint32 gaFlags),
          int Function(int hwnd, int gaFlags)>('GetAncestor');
      expect(GetAncestor, isA<Function>());
    });
    test('Can instantiate GetAsyncKeyState', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetAsyncKeyState = user32.lookupFunction<Int16 Function(Int32 vKey),
          int Function(int vKey)>('GetAsyncKeyState');
      expect(GetAsyncKeyState, isA<Function>());
    });
    test('Can instantiate GetCapture', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetCapture = user32
          .lookupFunction<IntPtr Function(), int Function()>('GetCapture');
      expect(GetCapture, isA<Function>());
    });
    test('Can instantiate GetClientRect', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetClientRect = user32.lookupFunction<
          Int32 Function(IntPtr hWnd, Pointer<RECT> lpRect),
          int Function(int hWnd, Pointer<RECT> lpRect)>('GetClientRect');
      expect(GetClientRect, isA<Function>());
    });
    test('Can instantiate GetClipboardData', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetClipboardData = user32.lookupFunction<
          IntPtr Function(Uint32 uFormat),
          int Function(int uFormat)>('GetClipboardData');
      expect(GetClipboardData, isA<Function>());
    });
    test('Can instantiate GetClipboardFormatName', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetClipboardFormatName = user32.lookupFunction<
          Int32 Function(
              Uint32 format, Pointer<Utf16> lpszFormatName, Int32 cchMaxCount),
          int Function(int format, Pointer<Utf16> lpszFormatName,
              int cchMaxCount)>('GetClipboardFormatNameW');
      expect(GetClipboardFormatName, isA<Function>());
    });
    test('Can instantiate GetClipboardOwner', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetClipboardOwner =
          user32.lookupFunction<IntPtr Function(), int Function()>(
              'GetClipboardOwner');
      expect(GetClipboardOwner, isA<Function>());
    });
    test('Can instantiate GetClipboardSequenceNumber', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetClipboardSequenceNumber =
          user32.lookupFunction<Uint32 Function(), int Function()>(
              'GetClipboardSequenceNumber');
      expect(GetClipboardSequenceNumber, isA<Function>());
    });
    test('Can instantiate GetClipboardViewer', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetClipboardViewer =
          user32.lookupFunction<IntPtr Function(), int Function()>(
              'GetClipboardViewer');
      expect(GetClipboardViewer, isA<Function>());
    });
    test('Can instantiate GetCursor', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetCursor =
          user32.lookupFunction<IntPtr Function(), int Function()>('GetCursor');
      expect(GetCursor, isA<Function>());
    });
    test('Can instantiate GetCursorPos', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetCursorPos = user32.lookupFunction<
          Int32 Function(Pointer<POINT> lpPoint),
          int Function(Pointer<POINT> lpPoint)>('GetCursorPos');
      expect(GetCursorPos, isA<Function>());
    });
    test('Can instantiate GetDC', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetDC = user32.lookupFunction<IntPtr Function(IntPtr hWnd),
          int Function(int hWnd)>('GetDC');
      expect(GetDC, isA<Function>());
    });
    test('Can instantiate GetDCEx', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetDCEx = user32.lookupFunction<
          IntPtr Function(IntPtr hWnd, IntPtr hrgnClip, Uint32 flags),
          int Function(int hWnd, int hrgnClip, int flags)>('GetDCEx');
      expect(GetDCEx, isA<Function>());
    });
    test('Can instantiate GetDesktopWindow', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetDesktopWindow =
          user32.lookupFunction<IntPtr Function(), int Function()>(
              'GetDesktopWindow');
      expect(GetDesktopWindow, isA<Function>());
    });
    test('Can instantiate GetDialogBaseUnits', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetDialogBaseUnits =
          user32.lookupFunction<Int32 Function(), int Function()>(
              'GetDialogBaseUnits');
      expect(GetDialogBaseUnits, isA<Function>());
    });
    test('Can instantiate GetDlgItem', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetDlgItem = user32.lookupFunction<
          IntPtr Function(IntPtr hDlg, Int32 nIDDlgItem),
          int Function(int hDlg, int nIDDlgItem)>('GetDlgItem');
      expect(GetDlgItem, isA<Function>());
    });
    test('Can instantiate GetDlgItemInt', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetDlgItemInt = user32.lookupFunction<
          Uint32 Function(IntPtr hDlg, Int32 nIDDlgItem,
              Pointer<Int32> lpTranslated, Int32 bSigned),
          int Function(int hDlg, int nIDDlgItem, Pointer<Int32> lpTranslated,
              int bSigned)>('GetDlgItemInt');
      expect(GetDlgItemInt, isA<Function>());
    });
    test('Can instantiate GetDlgItemText', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetDlgItemText = user32.lookupFunction<
          Uint32 Function(IntPtr hDlg, Int32 nIDDlgItem,
              Pointer<Utf16> lpString, Int32 cchMax),
          int Function(int hDlg, int nIDDlgItem, Pointer<Utf16> lpString,
              int cchMax)>('GetDlgItemTextW');
      expect(GetDlgItemText, isA<Function>());
    });
    test('Can instantiate GetDoubleClickTime', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetDoubleClickTime =
          user32.lookupFunction<Uint32 Function(), int Function()>(
              'GetDoubleClickTime');
      expect(GetDoubleClickTime, isA<Function>());
    });
    if (windowsBuildNumber >= 14393) {
      test('Can instantiate GetDpiForSystem', () {
        final user32 = DynamicLibrary.open('user32.dll');
        final GetDpiForSystem =
            user32.lookupFunction<Uint32 Function(), int Function()>(
                'GetDpiForSystem');
        expect(GetDpiForSystem, isA<Function>());
      });
    }
    if (windowsBuildNumber >= 14393) {
      test('Can instantiate GetDpiForWindow', () {
        final user32 = DynamicLibrary.open('user32.dll');
        final GetDpiForWindow = user32.lookupFunction<
            Uint32 Function(IntPtr hwnd),
            int Function(int hwnd)>('GetDpiForWindow');
        expect(GetDpiForWindow, isA<Function>());
      });
    }
    test('Can instantiate GetFocus', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetFocus =
          user32.lookupFunction<IntPtr Function(), int Function()>('GetFocus');
      expect(GetFocus, isA<Function>());
    });
    test('Can instantiate GetForegroundWindow', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetForegroundWindow =
          user32.lookupFunction<IntPtr Function(), int Function()>(
              'GetForegroundWindow');
      expect(GetForegroundWindow, isA<Function>());
    });
    test('Can instantiate GetInputState', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetInputState = user32
          .lookupFunction<Int32 Function(), int Function()>('GetInputState');
      expect(GetInputState, isA<Function>());
    });
    test('Can instantiate GetKeyboardLayout', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetKeyboardLayout = user32.lookupFunction<
          IntPtr Function(Uint32 idThread),
          int Function(int idThread)>('GetKeyboardLayout');
      expect(GetKeyboardLayout, isA<Function>());
    });
    test('Can instantiate GetKeyboardLayoutList', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetKeyboardLayoutList = user32.lookupFunction<
          Int32 Function(Int32 nBuff, Pointer<IntPtr> lpList),
          int Function(
              int nBuff, Pointer<IntPtr> lpList)>('GetKeyboardLayoutList');
      expect(GetKeyboardLayoutList, isA<Function>());
    });
    test('Can instantiate GetKeyboardLayoutName', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetKeyboardLayoutName = user32.lookupFunction<
          Int32 Function(Pointer<Utf16> pwszKLID),
          int Function(Pointer<Utf16> pwszKLID)>('GetKeyboardLayoutNameW');
      expect(GetKeyboardLayoutName, isA<Function>());
    });
    test('Can instantiate GetKeyboardState', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetKeyboardState = user32.lookupFunction<
          Int32 Function(Pointer<Uint8> lpKeyState),
          int Function(Pointer<Uint8> lpKeyState)>('GetKeyboardState');
      expect(GetKeyboardState, isA<Function>());
    });
    test('Can instantiate GetKeyboardType', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetKeyboardType = user32.lookupFunction<
          Int32 Function(Int32 nTypeFlag),
          int Function(int nTypeFlag)>('GetKeyboardType');
      expect(GetKeyboardType, isA<Function>());
    });
    test('Can instantiate GetKeyNameText', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetKeyNameText = user32.lookupFunction<
          Int32 Function(Int32 lParam, Pointer<Utf16> lpString, Int32 cchSize),
          int Function(int lParam, Pointer<Utf16> lpString,
              int cchSize)>('GetKeyNameTextW');
      expect(GetKeyNameText, isA<Function>());
    });
    test('Can instantiate GetKeyState', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetKeyState = user32.lookupFunction<Int16 Function(Int32 nVirtKey),
          int Function(int nVirtKey)>('GetKeyState');
      expect(GetKeyState, isA<Function>());
    });
    test('Can instantiate GetLastInputInfo', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetLastInputInfo = user32.lookupFunction<
          Int32 Function(Pointer<LASTINPUTINFO> plii),
          int Function(Pointer<LASTINPUTINFO> plii)>('GetLastInputInfo');
      expect(GetLastInputInfo, isA<Function>());
    });
    test('Can instantiate GetMessage', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetMessage = user32.lookupFunction<
          Int32 Function(Pointer<MSG> lpMsg, IntPtr hWnd, Uint32 wMsgFilterMin,
              Uint32 wMsgFilterMax),
          int Function(Pointer<MSG> lpMsg, int hWnd, int wMsgFilterMin,
              int wMsgFilterMax)>('GetMessageW');
      expect(GetMessage, isA<Function>());
    });
    test('Can instantiate GetMessageExtraInfo', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetMessageExtraInfo =
          user32.lookupFunction<IntPtr Function(), int Function()>(
              'GetMessageExtraInfo');
      expect(GetMessageExtraInfo, isA<Function>());
    });
    test('Can instantiate GetMessageTime', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetMessageTime = user32
          .lookupFunction<Int32 Function(), int Function()>('GetMessageTime');
      expect(GetMessageTime, isA<Function>());
    });
    test('Can instantiate GetMonitorInfo', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetMonitorInfo = user32.lookupFunction<
          Int32 Function(IntPtr hMonitor, Pointer<MONITORINFO> lpmi),
          int Function(
              int hMonitor, Pointer<MONITORINFO> lpmi)>('GetMonitorInfoW');
      expect(GetMonitorInfo, isA<Function>());
    });
    test('Can instantiate GetMouseMovePointsEx', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetMouseMovePointsEx = user32.lookupFunction<
          Int32 Function(
              Uint32 cbSize,
              Pointer<MOUSEMOVEPOINT> lppt,
              Pointer<MOUSEMOVEPOINT> lpptBuf,
              Int32 nBufPoints,
              Uint32 resolution),
          int Function(
              int cbSize,
              Pointer<MOUSEMOVEPOINT> lppt,
              Pointer<MOUSEMOVEPOINT> lpptBuf,
              int nBufPoints,
              int resolution)>('GetMouseMovePointsEx');
      expect(GetMouseMovePointsEx, isA<Function>());
    });
    test('Can instantiate GetNextDlgGroupItem', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetNextDlgGroupItem = user32.lookupFunction<
          IntPtr Function(IntPtr hDlg, IntPtr hCtl, Int32 bPrevious),
          int Function(
              int hDlg, int hCtl, int bPrevious)>('GetNextDlgGroupItem');
      expect(GetNextDlgGroupItem, isA<Function>());
    });
    test('Can instantiate GetNextDlgTabItem', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetNextDlgTabItem = user32.lookupFunction<
          IntPtr Function(IntPtr hDlg, IntPtr hCtl, Int32 bPrevious),
          int Function(int hDlg, int hCtl, int bPrevious)>('GetNextDlgTabItem');
      expect(GetNextDlgTabItem, isA<Function>());
    });
    test('Can instantiate GetOpenClipboardWindow', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetOpenClipboardWindow =
          user32.lookupFunction<IntPtr Function(), int Function()>(
              'GetOpenClipboardWindow');
      expect(GetOpenClipboardWindow, isA<Function>());
    });
    test('Can instantiate GetParent', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetParent = user32.lookupFunction<IntPtr Function(IntPtr hWnd),
          int Function(int hWnd)>('GetParent');
      expect(GetParent, isA<Function>());
    });
    test('Can instantiate GetPriorityClipboardFormat', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetPriorityClipboardFormat = user32.lookupFunction<
          Int32 Function(Pointer<Uint32> paFormatPriorityList, Int32 cFormats),
          int Function(Pointer<Uint32> paFormatPriorityList,
              int cFormats)>('GetPriorityClipboardFormat');
      expect(GetPriorityClipboardFormat, isA<Function>());
    });
    test('Can instantiate GetScrollInfo', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetScrollInfo = user32.lookupFunction<
          Int32 Function(IntPtr hwnd, Uint32 nBar, Pointer<SCROLLINFO> lpsi),
          int Function(
              int hwnd, int nBar, Pointer<SCROLLINFO> lpsi)>('GetScrollInfo');
      expect(GetScrollInfo, isA<Function>());
    });
    test('Can instantiate GetShellWindow', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetShellWindow = user32
          .lookupFunction<IntPtr Function(), int Function()>('GetShellWindow');
      expect(GetShellWindow, isA<Function>());
    });
    test('Can instantiate GetSubMenu', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetSubMenu = user32.lookupFunction<
          IntPtr Function(IntPtr hMenu, Int32 nPos),
          int Function(int hMenu, int nPos)>('GetSubMenu');
      expect(GetSubMenu, isA<Function>());
    });
    test('Can instantiate GetSysColor', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetSysColor = user32.lookupFunction<Uint32 Function(Uint32 nIndex),
          int Function(int nIndex)>('GetSysColor');
      expect(GetSysColor, isA<Function>());
    });
    test('Can instantiate GetSysColorBrush', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetSysColorBrush = user32.lookupFunction<
          IntPtr Function(Int32 nIndex),
          int Function(int nIndex)>('GetSysColorBrush');
      expect(GetSysColorBrush, isA<Function>());
    });
    if (windowsBuildNumber >= 17134) {
      test('Can instantiate GetSystemDpiForProcess', () {
        final user32 = DynamicLibrary.open('user32.dll');
        final GetSystemDpiForProcess = user32.lookupFunction<
            Uint32 Function(IntPtr hProcess),
            int Function(int hProcess)>('GetSystemDpiForProcess');
        expect(GetSystemDpiForProcess, isA<Function>());
      });
    }
    test('Can instantiate GetSystemMenu', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetSystemMenu = user32.lookupFunction<
          IntPtr Function(IntPtr hWnd, Int32 bRevert),
          int Function(int hWnd, int bRevert)>('GetSystemMenu');
      expect(GetSystemMenu, isA<Function>());
    });
    test('Can instantiate GetSystemMetrics', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetSystemMetrics = user32.lookupFunction<
          Int32 Function(Uint32 nIndex),
          int Function(int nIndex)>('GetSystemMetrics');
      expect(GetSystemMetrics, isA<Function>());
    });
    if (windowsBuildNumber >= 14393) {
      test('Can instantiate GetSystemMetricsForDpi', () {
        final user32 = DynamicLibrary.open('user32.dll');
        final GetSystemMetricsForDpi = user32.lookupFunction<
            Int32 Function(Int32 nIndex, Uint32 dpi),
            int Function(int nIndex, int dpi)>('GetSystemMetricsForDpi');
        expect(GetSystemMetricsForDpi, isA<Function>());
      });
    }
    test('Can instantiate GetTabbedTextExtent', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetTabbedTextExtent = user32.lookupFunction<
          Uint32 Function(IntPtr hdc, Pointer<Utf16> lpString, Int32 chCount,
              Int32 nTabPositions, Pointer<Int32> lpnTabStopPositions),
          int Function(
              int hdc,
              Pointer<Utf16> lpString,
              int chCount,
              int nTabPositions,
              Pointer<Int32> lpnTabStopPositions)>('GetTabbedTextExtentW');
      expect(GetTabbedTextExtent, isA<Function>());
    });
    test('Can instantiate GetTopWindow', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetTopWindow = user32.lookupFunction<IntPtr Function(IntPtr hWnd),
          int Function(int hWnd)>('GetTopWindow');
      expect(GetTopWindow, isA<Function>());
    });
    test('Can instantiate GetUpdatedClipboardFormats', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetUpdatedClipboardFormats = user32.lookupFunction<
          Int32 Function(Pointer<Uint32> lpuiFormats, Uint32 cFormats,
              Pointer<Uint32> pcFormatsOut),
          int Function(Pointer<Uint32> lpuiFormats, int cFormats,
              Pointer<Uint32> pcFormatsOut)>('GetUpdatedClipboardFormats');
      expect(GetUpdatedClipboardFormats, isA<Function>());
    });
    test('Can instantiate GetUpdateRect', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetUpdateRect = user32.lookupFunction<
          Int32 Function(IntPtr hWnd, Pointer<RECT> lpRect, Int32 bErase),
          int Function(
              int hWnd, Pointer<RECT> lpRect, int bErase)>('GetUpdateRect');
      expect(GetUpdateRect, isA<Function>());
    });
    test('Can instantiate GetUpdateRgn', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetUpdateRgn = user32.lookupFunction<
          Int32 Function(IntPtr hWnd, IntPtr hRgn, Int32 bErase),
          int Function(int hWnd, int hRgn, int bErase)>('GetUpdateRgn');
      expect(GetUpdateRgn, isA<Function>());
    });
    test('Can instantiate GetWindow', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetWindow = user32.lookupFunction<
          IntPtr Function(IntPtr hWnd, Uint32 uCmd),
          int Function(int hWnd, int uCmd)>('GetWindow');
      expect(GetWindow, isA<Function>());
    });
    test('Can instantiate GetWindowDC', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetWindowDC = user32.lookupFunction<IntPtr Function(IntPtr hWnd),
          int Function(int hWnd)>('GetWindowDC');
      expect(GetWindowDC, isA<Function>());
    });
    test('Can instantiate GetWindowDisplayAffinity', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetWindowDisplayAffinity = user32.lookupFunction<
          Int32 Function(IntPtr hWnd, Pointer<Uint32> pdwAffinity),
          int Function(int hWnd,
              Pointer<Uint32> pdwAffinity)>('GetWindowDisplayAffinity');
      expect(GetWindowDisplayAffinity, isA<Function>());
    });
    test('Can instantiate GetWindowInfo', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetWindowInfo = user32.lookupFunction<
          Int32 Function(IntPtr hwnd, Pointer<WINDOWINFO> pwi),
          int Function(int hwnd, Pointer<WINDOWINFO> pwi)>('GetWindowInfo');
      expect(GetWindowInfo, isA<Function>());
    });
    test('Can instantiate GetWindowModuleFileName', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetWindowModuleFileName = user32.lookupFunction<
          Uint32 Function(
              IntPtr hwnd, Pointer<Utf16> pszFileName, Uint32 cchFileNameMax),
          int Function(int hwnd, Pointer<Utf16> pszFileName,
              int cchFileNameMax)>('GetWindowModuleFileNameW');
      expect(GetWindowModuleFileName, isA<Function>());
    });
    test('Can instantiate GetWindowRect', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetWindowRect = user32.lookupFunction<
          Int32 Function(IntPtr hWnd, Pointer<RECT> lpRect),
          int Function(int hWnd, Pointer<RECT> lpRect)>('GetWindowRect');
      expect(GetWindowRect, isA<Function>());
    });
    test('Can instantiate GetWindowRgnBox', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetWindowRgnBox = user32.lookupFunction<
          Int32 Function(IntPtr hWnd, Pointer<RECT> lprc),
          int Function(int hWnd, Pointer<RECT> lprc)>('GetWindowRgnBox');
      expect(GetWindowRgnBox, isA<Function>());
    });
    test('Can instantiate GetWindowText', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetWindowText = user32.lookupFunction<
          Int32 Function(IntPtr hWnd, Pointer<Utf16> lpString, Int32 nMaxCount),
          int Function(int hWnd, Pointer<Utf16> lpString,
              int nMaxCount)>('GetWindowTextW');
      expect(GetWindowText, isA<Function>());
    });
    test('Can instantiate GetWindowTextLength', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GetWindowTextLength = user32.lookupFunction<
          Int32 Function(IntPtr hWnd),
          int Function(int hWnd)>('GetWindowTextLengthW');
      expect(GetWindowTextLength, isA<Function>());
    });
    test('Can instantiate GrayString', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final GrayString = user32.lookupFunction<
          Int32 Function(
              IntPtr hDC,
              IntPtr hBrush,
              Pointer<NativeFunction<OutputProc>> lpOutputFunc,
              IntPtr lpData,
              Int32 nCount,
              Int32 X,
              Int32 Y,
              Int32 nWidth,
              Int32 nHeight),
          int Function(
              int hDC,
              int hBrush,
              Pointer<NativeFunction<OutputProc>> lpOutputFunc,
              int lpData,
              int nCount,
              int X,
              int Y,
              int nWidth,
              int nHeight)>('GrayStringW');
      expect(GrayString, isA<Function>());
    });
    test('Can instantiate InflateRect', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final InflateRect = user32.lookupFunction<
          Int32 Function(Pointer<RECT> lprc, Int32 dx, Int32 dy),
          int Function(Pointer<RECT> lprc, int dx, int dy)>('InflateRect');
      expect(InflateRect, isA<Function>());
    });
    test('Can instantiate InsertMenu', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final InsertMenu = user32.lookupFunction<
          Int32 Function(IntPtr hMenu, Uint32 uPosition, Uint32 uFlags,
              IntPtr uIDNewItem, Pointer<Utf16> lpNewItem),
          int Function(int hMenu, int uPosition, int uFlags, int uIDNewItem,
              Pointer<Utf16> lpNewItem)>('InsertMenuW');
      expect(InsertMenu, isA<Function>());
    });
    test('Can instantiate InsertMenuItem', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final InsertMenuItem = user32.lookupFunction<
          Int32 Function(IntPtr hmenu, Uint32 item, Int32 fByPosition,
              Pointer<MENUITEMINFO> lpmi),
          int Function(int hmenu, int item, int fByPosition,
              Pointer<MENUITEMINFO> lpmi)>('InsertMenuItemW');
      expect(InsertMenuItem, isA<Function>());
    });
    test('Can instantiate IntersectRect', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final IntersectRect = user32.lookupFunction<
          Int32 Function(Pointer<RECT> lprcDst, Pointer<RECT> lprcSrc1,
              Pointer<RECT> lprcSrc2),
          int Function(Pointer<RECT> lprcDst, Pointer<RECT> lprcSrc1,
              Pointer<RECT> lprcSrc2)>('IntersectRect');
      expect(IntersectRect, isA<Function>());
    });
    test('Can instantiate InvalidateRect', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final InvalidateRect = user32.lookupFunction<
          Int32 Function(IntPtr hWnd, Pointer<RECT> lpRect, Int32 bErase),
          int Function(
              int hWnd, Pointer<RECT> lpRect, int bErase)>('InvalidateRect');
      expect(InvalidateRect, isA<Function>());
    });
    test('Can instantiate InvalidateRgn', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final InvalidateRgn = user32.lookupFunction<
          Int32 Function(IntPtr hWnd, IntPtr hRgn, Int32 bErase),
          int Function(int hWnd, int hRgn, int bErase)>('InvalidateRgn');
      expect(InvalidateRgn, isA<Function>());
    });
    test('Can instantiate InvertRect', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final InvertRect = user32.lookupFunction<
          Int32 Function(IntPtr hDC, Pointer<RECT> lprc),
          int Function(int hDC, Pointer<RECT> lprc)>('InvertRect');
      expect(InvertRect, isA<Function>());
    });
    test('Can instantiate IsClipboardFormatAvailable', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final IsClipboardFormatAvailable = user32.lookupFunction<
          Int32 Function(Uint32 format),
          int Function(int format)>('IsClipboardFormatAvailable');
      expect(IsClipboardFormatAvailable, isA<Function>());
    });
    test('Can instantiate IsDialogMessage', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final IsDialogMessage = user32.lookupFunction<
          Int32 Function(IntPtr hDlg, Pointer<MSG> lpMsg),
          int Function(int hDlg, Pointer<MSG> lpMsg)>('IsDialogMessageW');
      expect(IsDialogMessage, isA<Function>());
    });
    test('Can instantiate IsIconic', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final IsIconic = user32.lookupFunction<Int32 Function(IntPtr hWnd),
          int Function(int hWnd)>('IsIconic');
      expect(IsIconic, isA<Function>());
    });
    test('Can instantiate IsRectEmpty', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final IsRectEmpty = user32.lookupFunction<
          Int32 Function(Pointer<RECT> lprc),
          int Function(Pointer<RECT> lprc)>('IsRectEmpty');
      expect(IsRectEmpty, isA<Function>());
    });
    test('Can instantiate IsWindowEnabled', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final IsWindowEnabled = user32.lookupFunction<Int32 Function(IntPtr hWnd),
          int Function(int hWnd)>('IsWindowEnabled');
      expect(IsWindowEnabled, isA<Function>());
    });
    test('Can instantiate IsWindowVisible', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final IsWindowVisible = user32.lookupFunction<Int32 Function(IntPtr hWnd),
          int Function(int hWnd)>('IsWindowVisible');
      expect(IsWindowVisible, isA<Function>());
    });
    test('Can instantiate IsZoomed', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final IsZoomed = user32.lookupFunction<Int32 Function(IntPtr hWnd),
          int Function(int hWnd)>('IsZoomed');
      expect(IsZoomed, isA<Function>());
    });
    test('Can instantiate KillTimer', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final KillTimer = user32.lookupFunction<
          Int32 Function(IntPtr hWnd, IntPtr uIDEvent),
          int Function(int hWnd, int uIDEvent)>('KillTimer');
      expect(KillTimer, isA<Function>());
    });
    test('Can instantiate LoadCursor', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final LoadCursor = user32.lookupFunction<
          IntPtr Function(IntPtr hInstance, Pointer<Utf16> lpCursorName),
          int Function(
              int hInstance, Pointer<Utf16> lpCursorName)>('LoadCursorW');
      expect(LoadCursor, isA<Function>());
    });
    test('Can instantiate LoadIcon', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final LoadIcon = user32.lookupFunction<
          IntPtr Function(IntPtr hInstance, Pointer<Utf16> lpIconName),
          int Function(int hInstance, Pointer<Utf16> lpIconName)>('LoadIconW');
      expect(LoadIcon, isA<Function>());
    });
    test('Can instantiate LoadImage', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final LoadImage = user32.lookupFunction<
          IntPtr Function(IntPtr hInst, Pointer<Utf16> name, Uint32 type,
              Int32 cx, Int32 cy, Uint32 fuLoad),
          int Function(int hInst, Pointer<Utf16> name, int type, int cx, int cy,
              int fuLoad)>('LoadImageW');
      expect(LoadImage, isA<Function>());
    });
    test('Can instantiate LoadKeyboardLayout', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final LoadKeyboardLayout = user32.lookupFunction<
          IntPtr Function(Pointer<Utf16> pwszKLID, Uint32 Flags),
          int Function(
              Pointer<Utf16> pwszKLID, int Flags)>('LoadKeyboardLayoutW');
      expect(LoadKeyboardLayout, isA<Function>());
    });
    test('Can instantiate LockWindowUpdate', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final LockWindowUpdate = user32.lookupFunction<
          Int32 Function(IntPtr hWndLock),
          int Function(int hWndLock)>('LockWindowUpdate');
      expect(LockWindowUpdate, isA<Function>());
    });
    test('Can instantiate LockWorkStation', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final LockWorkStation = user32
          .lookupFunction<Int32 Function(), int Function()>('LockWorkStation');
      expect(LockWorkStation, isA<Function>());
    });
    test('Can instantiate LogicalToPhysicalPoint', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final LogicalToPhysicalPoint = user32.lookupFunction<
          Int32 Function(IntPtr hWnd, Pointer<POINT> lpPoint),
          int Function(
              int hWnd, Pointer<POINT> lpPoint)>('LogicalToPhysicalPoint');
      expect(LogicalToPhysicalPoint, isA<Function>());
    });
    test('Can instantiate MapDialogRect', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final MapDialogRect = user32.lookupFunction<
          Int32 Function(IntPtr hDlg, Pointer<RECT> lpRect),
          int Function(int hDlg, Pointer<RECT> lpRect)>('MapDialogRect');
      expect(MapDialogRect, isA<Function>());
    });
    test('Can instantiate MapVirtualKey', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final MapVirtualKey = user32.lookupFunction<
          Uint32 Function(Uint32 uCode, Uint32 uMapType),
          int Function(int uCode, int uMapType)>('MapVirtualKeyW');
      expect(MapVirtualKey, isA<Function>());
    });
    test('Can instantiate MapWindowPoints', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final MapWindowPoints = user32.lookupFunction<
          Int32 Function(IntPtr hWndFrom, IntPtr hWndTo,
              Pointer<POINT> lpPoints, Uint32 cPoints),
          int Function(int hWndFrom, int hWndTo, Pointer<POINT> lpPoints,
              int cPoints)>('MapWindowPoints');
      expect(MapWindowPoints, isA<Function>());
    });
    test('Can instantiate MessageBox', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final MessageBox = user32.lookupFunction<
          Uint32 Function(IntPtr hWnd, Pointer<Utf16> lpText,
              Pointer<Utf16> lpCaption, Uint32 uType),
          int Function(int hWnd, Pointer<Utf16> lpText,
              Pointer<Utf16> lpCaption, int uType)>('MessageBoxW');
      expect(MessageBox, isA<Function>());
    });
    test('Can instantiate MonitorFromPoint', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final MonitorFromPoint = user32.lookupFunction<
          IntPtr Function(POINT pt, Uint32 dwFlags),
          int Function(POINT pt, int dwFlags)>('MonitorFromPoint');
      expect(MonitorFromPoint, isA<Function>());
    });
    test('Can instantiate MonitorFromRect', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final MonitorFromRect = user32.lookupFunction<
          IntPtr Function(Pointer<RECT> lprc, Uint32 dwFlags),
          int Function(Pointer<RECT> lprc, int dwFlags)>('MonitorFromRect');
      expect(MonitorFromRect, isA<Function>());
    });
    test('Can instantiate MonitorFromWindow', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final MonitorFromWindow = user32.lookupFunction<
          IntPtr Function(IntPtr hwnd, Uint32 dwFlags),
          int Function(int hwnd, int dwFlags)>('MonitorFromWindow');
      expect(MonitorFromWindow, isA<Function>());
    });
    test('Can instantiate MoveWindow', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final MoveWindow = user32.lookupFunction<
          Int32 Function(IntPtr hWnd, Int32 X, Int32 Y, Int32 nWidth,
              Int32 nHeight, Int32 bRepaint),
          int Function(int hWnd, int X, int Y, int nWidth, int nHeight,
              int bRepaint)>('MoveWindow');
      expect(MoveWindow, isA<Function>());
    });
    test('Can instantiate MsgWaitForMultipleObjects', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final MsgWaitForMultipleObjects = user32.lookupFunction<
          Uint32 Function(Uint32 nCount, Pointer<IntPtr> pHandles,
              Int32 fWaitAll, Uint32 dwMilliseconds, Uint32 dwWakeMask),
          int Function(int nCount, Pointer<IntPtr> pHandles, int fWaitAll,
              int dwMilliseconds, int dwWakeMask)>('MsgWaitForMultipleObjects');
      expect(MsgWaitForMultipleObjects, isA<Function>());
    });
    test('Can instantiate OffsetRect', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final OffsetRect = user32.lookupFunction<
          Int32 Function(Pointer<RECT> lprc, Int32 dx, Int32 dy),
          int Function(Pointer<RECT> lprc, int dx, int dy)>('OffsetRect');
      expect(OffsetRect, isA<Function>());
    });
    test('Can instantiate OpenClipboard', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final OpenClipboard = user32.lookupFunction<
          Int32 Function(IntPtr hWndNewOwner),
          int Function(int hWndNewOwner)>('OpenClipboard');
      expect(OpenClipboard, isA<Function>());
    });
    test('Can instantiate OpenIcon', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final OpenIcon = user32.lookupFunction<Int32 Function(IntPtr hWnd),
          int Function(int hWnd)>('OpenIcon');
      expect(OpenIcon, isA<Function>());
    });
    test('Can instantiate PaintDesktop', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final PaintDesktop = user32.lookupFunction<Int32 Function(IntPtr hdc),
          int Function(int hdc)>('PaintDesktop');
      expect(PaintDesktop, isA<Function>());
    });
    test('Can instantiate PeekMessage', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final PeekMessage = user32.lookupFunction<
          Int32 Function(Pointer<MSG> lpMsg, IntPtr hWnd, Uint32 wMsgFilterMin,
              Uint32 wMsgFilterMax, Uint32 wRemoveMsg),
          int Function(Pointer<MSG> lpMsg, int hWnd, int wMsgFilterMin,
              int wMsgFilterMax, int wRemoveMsg)>('PeekMessageW');
      expect(PeekMessage, isA<Function>());
    });
    test('Can instantiate PhysicalToLogicalPoint', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final PhysicalToLogicalPoint = user32.lookupFunction<
          Int32 Function(IntPtr hWnd, Pointer<POINT> lpPoint),
          int Function(
              int hWnd, Pointer<POINT> lpPoint)>('PhysicalToLogicalPoint');
      expect(PhysicalToLogicalPoint, isA<Function>());
    });
    test('Can instantiate PostMessage', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final PostMessage = user32.lookupFunction<
          Int32 Function(IntPtr hWnd, Uint32 Msg, IntPtr wParam, IntPtr lParam),
          int Function(
              int hWnd, int Msg, int wParam, int lParam)>('PostMessageW');
      expect(PostMessage, isA<Function>());
    });
    test('Can instantiate PostQuitMessage', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final PostQuitMessage = user32.lookupFunction<
          Void Function(Int32 nExitCode),
          void Function(int nExitCode)>('PostQuitMessage');
      expect(PostQuitMessage, isA<Function>());
    });
    test('Can instantiate PostThreadMessage', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final PostThreadMessage = user32.lookupFunction<
          Int32 Function(
              Uint32 idThread, Uint32 Msg, IntPtr wParam, IntPtr lParam),
          int Function(int idThread, int Msg, int wParam,
              int lParam)>('PostThreadMessageW');
      expect(PostThreadMessage, isA<Function>());
    });
    test('Can instantiate PtInRect', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final PtInRect = user32.lookupFunction<
          Int32 Function(Pointer<RECT> lprc, POINT pt),
          int Function(Pointer<RECT> lprc, POINT pt)>('PtInRect');
      expect(PtInRect, isA<Function>());
    });
    test('Can instantiate RedrawWindow', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final RedrawWindow = user32.lookupFunction<
          Int32 Function(IntPtr hWnd, Pointer<RECT> lprcUpdate,
              IntPtr hrgnUpdate, Uint32 flags),
          int Function(int hWnd, Pointer<RECT> lprcUpdate, int hrgnUpdate,
              int flags)>('RedrawWindow');
      expect(RedrawWindow, isA<Function>());
    });
    test('Can instantiate RegisterClass', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final RegisterClass = user32.lookupFunction<
          Uint16 Function(Pointer<WNDCLASS> lpWndClass),
          int Function(Pointer<WNDCLASS> lpWndClass)>('RegisterClassW');
      expect(RegisterClass, isA<Function>());
    });
    test('Can instantiate RegisterClipboardFormat', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final RegisterClipboardFormat = user32.lookupFunction<
          Uint32 Function(Pointer<Utf16> lpszFormat),
          int Function(Pointer<Utf16> lpszFormat)>('RegisterClipboardFormatW');
      expect(RegisterClipboardFormat, isA<Function>());
    });
    test('Can instantiate RegisterHotKey', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final RegisterHotKey = user32.lookupFunction<
          Int32 Function(IntPtr hWnd, Int32 id, Uint32 fsModifiers, Uint32 vk),
          int Function(
              int hWnd, int id, int fsModifiers, int vk)>('RegisterHotKey');
      expect(RegisterHotKey, isA<Function>());
    });
    test('Can instantiate RegisterPowerSettingNotification', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final RegisterPowerSettingNotification = user32.lookupFunction<
          IntPtr Function(
              IntPtr hRecipient, Pointer<GUID> PowerSettingGuid, Uint32 Flags),
          int Function(int hRecipient, Pointer<GUID> PowerSettingGuid,
              int Flags)>('RegisterPowerSettingNotification');
      expect(RegisterPowerSettingNotification, isA<Function>());
    });
    test('Can instantiate RegisterWindowMessage', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final RegisterWindowMessage = user32.lookupFunction<
          Uint32 Function(Pointer<Utf16> lpString),
          int Function(Pointer<Utf16> lpString)>('RegisterWindowMessageW');
      expect(RegisterWindowMessage, isA<Function>());
    });
    test('Can instantiate ReleaseCapture', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final ReleaseCapture = user32
          .lookupFunction<Int32 Function(), int Function()>('ReleaseCapture');
      expect(ReleaseCapture, isA<Function>());
    });
    test('Can instantiate ReleaseDC', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final ReleaseDC = user32.lookupFunction<
          Int32 Function(IntPtr hWnd, IntPtr hDC),
          int Function(int hWnd, int hDC)>('ReleaseDC');
      expect(ReleaseDC, isA<Function>());
    });
    test('Can instantiate RemoveClipboardFormatListener', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final RemoveClipboardFormatListener = user32.lookupFunction<
          Int32 Function(IntPtr hwnd),
          int Function(int hwnd)>('RemoveClipboardFormatListener');
      expect(RemoveClipboardFormatListener, isA<Function>());
    });
    test('Can instantiate ReplyMessage', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final ReplyMessage = user32.lookupFunction<Int32 Function(IntPtr lResult),
          int Function(int lResult)>('ReplyMessage');
      expect(ReplyMessage, isA<Function>());
    });
    test('Can instantiate ScreenToClient', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final ScreenToClient = user32.lookupFunction<
          Int32 Function(IntPtr hWnd, Pointer<POINT> lpPoint),
          int Function(int hWnd, Pointer<POINT> lpPoint)>('ScreenToClient');
      expect(ScreenToClient, isA<Function>());
    });
    test('Can instantiate ScrollWindow', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final ScrollWindow = user32.lookupFunction<
          Int32 Function(IntPtr hWnd, Int32 XAmount, Int32 YAmount,
              Pointer<RECT> lpRect, Pointer<RECT> lpClipRect),
          int Function(int hWnd, int XAmount, int YAmount, Pointer<RECT> lpRect,
              Pointer<RECT> lpClipRect)>('ScrollWindow');
      expect(ScrollWindow, isA<Function>());
    });
    test('Can instantiate SendDlgItemMessage', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final SendDlgItemMessage = user32.lookupFunction<
          IntPtr Function(IntPtr hDlg, Int32 nIDDlgItem, Uint32 Msg,
              IntPtr wParam, IntPtr lParam),
          int Function(int hDlg, int nIDDlgItem, int Msg, int wParam,
              int lParam)>('SendDlgItemMessageW');
      expect(SendDlgItemMessage, isA<Function>());
    });
    test('Can instantiate SendInput', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final SendInput = user32.lookupFunction<
          Uint32 Function(Uint32 cInputs, Pointer<INPUT> pInputs, Int32 cbSize),
          int Function(
              int cInputs, Pointer<INPUT> pInputs, int cbSize)>('SendInput');
      expect(SendInput, isA<Function>());
    });
    test('Can instantiate SendMessage', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final SendMessage = user32.lookupFunction<
          IntPtr Function(
              IntPtr hWnd, Uint32 Msg, IntPtr wParam, IntPtr lParam),
          int Function(
              int hWnd, int Msg, int wParam, int lParam)>('SendMessageW');
      expect(SendMessage, isA<Function>());
    });
    test('Can instantiate SetActiveWindow', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final SetActiveWindow = user32.lookupFunction<
          IntPtr Function(IntPtr hWnd),
          int Function(int hWnd)>('SetActiveWindow');
      expect(SetActiveWindow, isA<Function>());
    });
    test('Can instantiate SetCapture', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final SetCapture = user32.lookupFunction<IntPtr Function(IntPtr hWnd),
          int Function(int hWnd)>('SetCapture');
      expect(SetCapture, isA<Function>());
    });
    test('Can instantiate SetClipboardData', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final SetClipboardData = user32.lookupFunction<
          IntPtr Function(Uint32 uFormat, IntPtr hMem),
          int Function(int uFormat, int hMem)>('SetClipboardData');
      expect(SetClipboardData, isA<Function>());
    });
    test('Can instantiate SetClipboardViewer', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final SetClipboardViewer = user32.lookupFunction<
          IntPtr Function(IntPtr hWndNewViewer),
          int Function(int hWndNewViewer)>('SetClipboardViewer');
      expect(SetClipboardViewer, isA<Function>());
    });
    test('Can instantiate SetCursorPos', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final SetCursorPos = user32.lookupFunction<
          Int32 Function(Int32 X, Int32 Y),
          int Function(int X, int Y)>('SetCursorPos');
      expect(SetCursorPos, isA<Function>());
    });
    test('Can instantiate SetDlgItemInt', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final SetDlgItemInt = user32.lookupFunction<
          Int32 Function(
              IntPtr hDlg, Int32 nIDDlgItem, Uint32 uValue, Int32 bSigned),
          int Function(int hDlg, int nIDDlgItem, int uValue,
              int bSigned)>('SetDlgItemInt');
      expect(SetDlgItemInt, isA<Function>());
    });
    test('Can instantiate SetDlgItemText', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final SetDlgItemText = user32.lookupFunction<
          Int32 Function(
              IntPtr hDlg, Int32 nIDDlgItem, Pointer<Utf16> lpString),
          int Function(int hDlg, int nIDDlgItem,
              Pointer<Utf16> lpString)>('SetDlgItemTextW');
      expect(SetDlgItemText, isA<Function>());
    });
    test('Can instantiate SetDoubleClickTime', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final SetDoubleClickTime = user32.lookupFunction<
          Int32 Function(Uint32 param0),
          int Function(int param0)>('SetDoubleClickTime');
      expect(SetDoubleClickTime, isA<Function>());
    });
    test('Can instantiate SetFocus', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final SetFocus = user32.lookupFunction<IntPtr Function(IntPtr hWnd),
          int Function(int hWnd)>('SetFocus');
      expect(SetFocus, isA<Function>());
    });
    test('Can instantiate SetForegroundWindow', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final SetForegroundWindow = user32.lookupFunction<
          Int32 Function(IntPtr hWnd),
          int Function(int hWnd)>('SetForegroundWindow');
      expect(SetForegroundWindow, isA<Function>());
    });
    test('Can instantiate SetKeyboardState', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final SetKeyboardState = user32.lookupFunction<
          Int32 Function(Pointer<Uint8> lpKeyState),
          int Function(Pointer<Uint8> lpKeyState)>('SetKeyboardState');
      expect(SetKeyboardState, isA<Function>());
    });
    test('Can instantiate SetMenuInfo', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final SetMenuInfo = user32.lookupFunction<
          Int32 Function(IntPtr param0, Pointer<MENUINFO> param1),
          int Function(int param0, Pointer<MENUINFO> param1)>('SetMenuInfo');
      expect(SetMenuInfo, isA<Function>());
    });
    test('Can instantiate SetMenuItemInfo', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final SetMenuItemInfo = user32.lookupFunction<
          Int32 Function(IntPtr hmenu, Uint32 item, Int32 fByPositon,
              Pointer<MENUITEMINFO> lpmii),
          int Function(int hmenu, int item, int fByPositon,
              Pointer<MENUITEMINFO> lpmii)>('SetMenuItemInfoW');
      expect(SetMenuItemInfo, isA<Function>());
    });
    test('Can instantiate SetParent', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final SetParent = user32.lookupFunction<
          IntPtr Function(IntPtr hWndChild, IntPtr hWndNewParent),
          int Function(int hWndChild, int hWndNewParent)>('SetParent');
      expect(SetParent, isA<Function>());
    });
    test('Can instantiate SetProcessDPIAware', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final SetProcessDPIAware =
          user32.lookupFunction<Int32 Function(), int Function()>(
              'SetProcessDPIAware');
      expect(SetProcessDPIAware, isA<Function>());
    });
    test('Can instantiate SetRect', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final SetRect = user32.lookupFunction<
          Int32 Function(Pointer<RECT> lprc, Int32 xLeft, Int32 yTop,
              Int32 xRight, Int32 yBottom),
          int Function(Pointer<RECT> lprc, int xLeft, int yTop, int xRight,
              int yBottom)>('SetRect');
      expect(SetRect, isA<Function>());
    });
    test('Can instantiate SetRectEmpty', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final SetRectEmpty = user32.lookupFunction<
          Int32 Function(Pointer<RECT> lprc),
          int Function(Pointer<RECT> lprc)>('SetRectEmpty');
      expect(SetRectEmpty, isA<Function>());
    });
    test('Can instantiate SetScrollInfo', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final SetScrollInfo = user32.lookupFunction<
          Int32 Function(
              IntPtr hwnd, Uint32 nBar, Pointer<SCROLLINFO> lpsi, Int32 redraw),
          int Function(int hwnd, int nBar, Pointer<SCROLLINFO> lpsi,
              int redraw)>('SetScrollInfo');
      expect(SetScrollInfo, isA<Function>());
    });
    test('Can instantiate SetSysColors', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final SetSysColors = user32.lookupFunction<
          Int32 Function(Int32 cElements, Pointer<Int32> lpaElements,
              Pointer<Uint32> lpaRgbValues),
          int Function(int cElements, Pointer<Int32> lpaElements,
              Pointer<Uint32> lpaRgbValues)>('SetSysColors');
      expect(SetSysColors, isA<Function>());
    });
    test('Can instantiate SetTimer', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final SetTimer = user32.lookupFunction<
          IntPtr Function(IntPtr hWnd, IntPtr nIDEvent, Uint32 uElapse,
              Pointer<NativeFunction<TimerProc>> lpTimerFunc),
          int Function(int hWnd, int nIDEvent, int uElapse,
              Pointer<NativeFunction<TimerProc>> lpTimerFunc)>('SetTimer');
      expect(SetTimer, isA<Function>());
    });
    test('Can instantiate SetWindowLongPtr', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final SetWindowLongPtr = user32.lookupFunction<
          IntPtr Function(IntPtr hWnd, Uint32 nIndex, IntPtr dwNewLong),
          int Function(
              int hWnd, int nIndex, int dwNewLong)>('SetWindowLongPtrW');
      expect(SetWindowLongPtr, isA<Function>());
    });
    test('Can instantiate SetWindowPos', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final SetWindowPos = user32.lookupFunction<
          Int32 Function(IntPtr hWnd, IntPtr hWndInsertAfter, Int32 X, Int32 Y,
              Int32 cx, Int32 cy, Uint32 uFlags),
          int Function(int hWnd, int hWndInsertAfter, int X, int Y, int cx,
              int cy, int uFlags)>('SetWindowPos');
      expect(SetWindowPos, isA<Function>());
    });
    test('Can instantiate SetWindowRgn', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final SetWindowRgn = user32.lookupFunction<
          Int32 Function(IntPtr hWnd, IntPtr hRgn, Int32 bRedraw),
          int Function(int hWnd, int hRgn, int bRedraw)>('SetWindowRgn');
      expect(SetWindowRgn, isA<Function>());
    });
    test('Can instantiate SetWindowText', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final SetWindowText = user32.lookupFunction<
          Int32 Function(IntPtr hWnd, Pointer<Utf16> lpString),
          int Function(int hWnd, Pointer<Utf16> lpString)>('SetWindowTextW');
      expect(SetWindowText, isA<Function>());
    });
    test('Can instantiate ShowCursor', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final ShowCursor = user32.lookupFunction<Int32 Function(Int32 bShow),
          int Function(int bShow)>('ShowCursor');
      expect(ShowCursor, isA<Function>());
    });
    test('Can instantiate ShowOwnedPopups', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final ShowOwnedPopups = user32.lookupFunction<
          Int32 Function(IntPtr hWnd, Int32 fShow),
          int Function(int hWnd, int fShow)>('ShowOwnedPopups');
      expect(ShowOwnedPopups, isA<Function>());
    });
    test('Can instantiate ShowWindow', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final ShowWindow = user32.lookupFunction<
          Int32 Function(IntPtr hWnd, Uint32 nCmdShow),
          int Function(int hWnd, int nCmdShow)>('ShowWindow');
      expect(ShowWindow, isA<Function>());
    });
    test('Can instantiate ShowWindowAsync', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final ShowWindowAsync = user32.lookupFunction<
          Int32 Function(IntPtr hWnd, Int32 nCmdShow),
          int Function(int hWnd, int nCmdShow)>('ShowWindowAsync');
      expect(ShowWindowAsync, isA<Function>());
    });
    test('Can instantiate SoundSentry', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final SoundSentry = user32
          .lookupFunction<Int32 Function(), int Function()>('SoundSentry');
      expect(SoundSentry, isA<Function>());
    });
    test('Can instantiate SubtractRect', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final SubtractRect = user32.lookupFunction<
          Int32 Function(Pointer<RECT> lprcDst, Pointer<RECT> lprcSrc1,
              Pointer<RECT> lprcSrc2),
          int Function(Pointer<RECT> lprcDst, Pointer<RECT> lprcSrc1,
              Pointer<RECT> lprcSrc2)>('SubtractRect');
      expect(SubtractRect, isA<Function>());
    });
    test('Can instantiate SwapMouseButton', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final SwapMouseButton = user32.lookupFunction<Int32 Function(Int32 fSwap),
          int Function(int fSwap)>('SwapMouseButton');
      expect(SwapMouseButton, isA<Function>());
    });
    test('Can instantiate SystemParametersInfo', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final SystemParametersInfo = user32.lookupFunction<
          Int32 Function(
              Uint32 uiAction, Uint32 uiParam, Pointer pvParam, Uint32 fWinIni),
          int Function(int uiAction, int uiParam, Pointer pvParam,
              int fWinIni)>('SystemParametersInfoW');
      expect(SystemParametersInfo, isA<Function>());
    });
    test('Can instantiate TabbedTextOut', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final TabbedTextOut = user32.lookupFunction<
          Int32 Function(
              IntPtr hdc,
              Int32 x,
              Int32 y,
              Pointer<Utf16> lpString,
              Int32 chCount,
              Int32 nTabPositions,
              Pointer<Int32> lpnTabStopPositions,
              Int32 nTabOrigin),
          int Function(
              int hdc,
              int x,
              int y,
              Pointer<Utf16> lpString,
              int chCount,
              int nTabPositions,
              Pointer<Int32> lpnTabStopPositions,
              int nTabOrigin)>('TabbedTextOutW');
      expect(TabbedTextOut, isA<Function>());
    });
    test('Can instantiate ToAscii', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final ToAscii = user32.lookupFunction<
          Int32 Function(Uint32 uVirtKey, Uint32 uScanCode,
              Pointer<Uint8> lpKeyState, Pointer<Uint16> lpChar, Uint32 uFlags),
          int Function(int uVirtKey, int uScanCode, Pointer<Uint8> lpKeyState,
              Pointer<Uint16> lpChar, int uFlags)>('ToAscii');
      expect(ToAscii, isA<Function>());
    });
    test('Can instantiate ToAsciiEx', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final ToAsciiEx = user32.lookupFunction<
          Int32 Function(
              Uint32 uVirtKey,
              Uint32 uScanCode,
              Pointer<Uint8> lpKeyState,
              Pointer<Uint16> lpChar,
              Uint32 uFlags,
              IntPtr dwhkl),
          int Function(int uVirtKey, int uScanCode, Pointer<Uint8> lpKeyState,
              Pointer<Uint16> lpChar, int uFlags, int dwhkl)>('ToAsciiEx');
      expect(ToAsciiEx, isA<Function>());
    });
    test('Can instantiate ToUnicode', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final ToUnicode = user32.lookupFunction<
          Int32 Function(
              Uint32 wVirtKey,
              Uint32 wScanCode,
              Pointer<Uint8> lpKeyState,
              Pointer<Utf16> pwszBuff,
              Int32 cchBuff,
              Uint32 wFlags),
          int Function(int wVirtKey, int wScanCode, Pointer<Uint8> lpKeyState,
              Pointer<Utf16> pwszBuff, int cchBuff, int wFlags)>('ToUnicode');
      expect(ToUnicode, isA<Function>());
    });
    test('Can instantiate ToUnicodeEx', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final ToUnicodeEx = user32.lookupFunction<
          Int32 Function(
              Uint32 wVirtKey,
              Uint32 wScanCode,
              Pointer<Uint8> lpKeyState,
              Pointer<Utf16> pwszBuff,
              Int32 cchBuff,
              Uint32 wFlags,
              IntPtr dwhkl),
          int Function(
              int wVirtKey,
              int wScanCode,
              Pointer<Uint8> lpKeyState,
              Pointer<Utf16> pwszBuff,
              int cchBuff,
              int wFlags,
              int dwhkl)>('ToUnicodeEx');
      expect(ToUnicodeEx, isA<Function>());
    });
    test('Can instantiate TrackPopupMenuEx', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final TrackPopupMenuEx = user32.lookupFunction<
          Int32 Function(IntPtr hMenu, Uint32 uFlags, Int32 x, Int32 y,
              IntPtr hwnd, Pointer<TPMPARAMS> lptpm),
          int Function(int hMenu, int uFlags, int x, int y, int hwnd,
              Pointer<TPMPARAMS> lptpm)>('TrackPopupMenuEx');
      expect(TrackPopupMenuEx, isA<Function>());
    });
    test('Can instantiate TranslateAccelerator', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final TranslateAccelerator = user32.lookupFunction<
          Int32 Function(IntPtr hWnd, IntPtr hAccTable, Pointer<MSG> lpMsg),
          int Function(int hWnd, int hAccTable,
              Pointer<MSG> lpMsg)>('TranslateAcceleratorW');
      expect(TranslateAccelerator, isA<Function>());
    });
    test('Can instantiate TranslateMessage', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final TranslateMessage = user32.lookupFunction<
          Int32 Function(Pointer<MSG> lpMsg),
          int Function(Pointer<MSG> lpMsg)>('TranslateMessage');
      expect(TranslateMessage, isA<Function>());
    });
    test('Can instantiate UnionRect', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final UnionRect = user32.lookupFunction<
          Int32 Function(Pointer<RECT> lprcDst, Pointer<RECT> lprcSrc1,
              Pointer<RECT> lprcSrc2),
          int Function(Pointer<RECT> lprcDst, Pointer<RECT> lprcSrc1,
              Pointer<RECT> lprcSrc2)>('UnionRect');
      expect(UnionRect, isA<Function>());
    });
    test('Can instantiate UnloadKeyboardLayout', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final UnloadKeyboardLayout = user32.lookupFunction<
          Int32 Function(IntPtr hkl),
          int Function(int hkl)>('UnloadKeyboardLayout');
      expect(UnloadKeyboardLayout, isA<Function>());
    });
    test('Can instantiate UnregisterClass', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final UnregisterClass = user32.lookupFunction<
          Int32 Function(Pointer<Utf16> lpClassName, IntPtr hInstance),
          int Function(
              Pointer<Utf16> lpClassName, int hInstance)>('UnregisterClassW');
      expect(UnregisterClass, isA<Function>());
    });
    test('Can instantiate UnregisterHotKey', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final UnregisterHotKey = user32.lookupFunction<
          Int32 Function(IntPtr hWnd, Int32 id),
          int Function(int hWnd, int id)>('UnregisterHotKey');
      expect(UnregisterHotKey, isA<Function>());
    });
    test('Can instantiate UnregisterPowerSettingNotification', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final UnregisterPowerSettingNotification = user32.lookupFunction<
          Int32 Function(IntPtr Handle),
          int Function(int Handle)>('UnregisterPowerSettingNotification');
      expect(UnregisterPowerSettingNotification, isA<Function>());
    });
    test('Can instantiate UpdateWindow', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final UpdateWindow = user32.lookupFunction<Int32 Function(IntPtr hWnd),
          int Function(int hWnd)>('UpdateWindow');
      expect(UpdateWindow, isA<Function>());
    });
    test('Can instantiate ValidateRect', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final ValidateRect = user32.lookupFunction<
          Int32 Function(IntPtr hWnd, Pointer<RECT> lpRect),
          int Function(int hWnd, Pointer<RECT> lpRect)>('ValidateRect');
      expect(ValidateRect, isA<Function>());
    });
    test('Can instantiate ValidateRgn', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final ValidateRgn = user32.lookupFunction<
          Int32 Function(IntPtr hWnd, IntPtr hRgn),
          int Function(int hWnd, int hRgn)>('ValidateRgn');
      expect(ValidateRgn, isA<Function>());
    });
    test('Can instantiate VkKeyScan', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final VkKeyScan = user32.lookupFunction<Int16 Function(Uint16 ch),
          int Function(int ch)>('VkKeyScanW');
      expect(VkKeyScan, isA<Function>());
    });
    test('Can instantiate VkKeyScanEx', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final VkKeyScanEx = user32.lookupFunction<
          Int16 Function(Uint16 ch, IntPtr dwhkl),
          int Function(int ch, int dwhkl)>('VkKeyScanExW');
      expect(VkKeyScanEx, isA<Function>());
    });
    test('Can instantiate WaitMessage', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final WaitMessage = user32
          .lookupFunction<Int32 Function(), int Function()>('WaitMessage');
      expect(WaitMessage, isA<Function>());
    });
    test('Can instantiate WindowFromDC', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final WindowFromDC = user32.lookupFunction<IntPtr Function(IntPtr hDC),
          int Function(int hDC)>('WindowFromDC');
      expect(WindowFromDC, isA<Function>());
    });
    test('Can instantiate WindowFromPhysicalPoint', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final WindowFromPhysicalPoint = user32.lookupFunction<
          IntPtr Function(POINT Point),
          int Function(POINT Point)>('WindowFromPhysicalPoint');
      expect(WindowFromPhysicalPoint, isA<Function>());
    });
    test('Can instantiate WindowFromPoint', () {
      final user32 = DynamicLibrary.open('user32.dll');
      final WindowFromPoint = user32.lookupFunction<
          IntPtr Function(POINT Point),
          int Function(POINT Point)>('WindowFromPoint');
      expect(WindowFromPoint, isA<Function>());
    });
  });

  group('Test gdi32 functions', () {
    test('Can instantiate AddFontResource', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final AddFontResource = gdi32.lookupFunction<
          Int32 Function(Pointer<Utf16> param0),
          int Function(Pointer<Utf16> param0)>('AddFontResourceW');
      expect(AddFontResource, isA<Function>());
    });
    test('Can instantiate AddFontResourceEx', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final AddFontResourceEx = gdi32.lookupFunction<
          Int32 Function(Pointer<Utf16> name, Uint32 fl, Pointer res),
          int Function(
              Pointer<Utf16> name, int fl, Pointer res)>('AddFontResourceExW');
      expect(AddFontResourceEx, isA<Function>());
    });
    test('Can instantiate AngleArc', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final AngleArc = gdi32.lookupFunction<
          Int32 Function(IntPtr hdc, Int32 x, Int32 y, Uint32 r,
              Float StartAngle, Float SweepAngle),
          int Function(int hdc, int x, int y, int r, double StartAngle,
              double SweepAngle)>('AngleArc');
      expect(AngleArc, isA<Function>());
    });
    test('Can instantiate AnimatePalette', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final AnimatePalette = gdi32.lookupFunction<
          Int32 Function(IntPtr hPal, Uint32 iStartIndex, Uint32 cEntries,
              Pointer<PALETTEENTRY> ppe),
          int Function(int hPal, int iStartIndex, int cEntries,
              Pointer<PALETTEENTRY> ppe)>('AnimatePalette');
      expect(AnimatePalette, isA<Function>());
    });
    test('Can instantiate Arc', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final Arc = gdi32.lookupFunction<
          Int32 Function(IntPtr hdc, Int32 x1, Int32 y1, Int32 x2, Int32 y2,
              Int32 x3, Int32 y3, Int32 x4, Int32 y4),
          int Function(int hdc, int x1, int y1, int x2, int y2, int x3, int y3,
              int x4, int y4)>('Arc');
      expect(Arc, isA<Function>());
    });
    test('Can instantiate ArcTo', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final ArcTo = gdi32.lookupFunction<
          Int32 Function(IntPtr hdc, Int32 left, Int32 top, Int32 right,
              Int32 bottom, Int32 xr1, Int32 yr1, Int32 xr2, Int32 yr2),
          int Function(int hdc, int left, int top, int right, int bottom,
              int xr1, int yr1, int xr2, int yr2)>('ArcTo');
      expect(ArcTo, isA<Function>());
    });
    test('Can instantiate BeginPath', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final BeginPath = gdi32.lookupFunction<Int32 Function(IntPtr hdc),
          int Function(int hdc)>('BeginPath');
      expect(BeginPath, isA<Function>());
    });
    test('Can instantiate BitBlt', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final BitBlt = gdi32.lookupFunction<
          Int32 Function(IntPtr hdc, Int32 x, Int32 y, Int32 cx, Int32 cy,
              IntPtr hdcSrc, Int32 x1, Int32 y1, Uint32 rop),
          int Function(int hdc, int x, int y, int cx, int cy, int hdcSrc,
              int x1, int y1, int rop)>('BitBlt');
      expect(BitBlt, isA<Function>());
    });
    test('Can instantiate CancelDC', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final CancelDC = gdi32.lookupFunction<Int32 Function(IntPtr hdc),
          int Function(int hdc)>('CancelDC');
      expect(CancelDC, isA<Function>());
    });
    test('Can instantiate Chord', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final Chord = gdi32.lookupFunction<
          Int32 Function(IntPtr hdc, Int32 x1, Int32 y1, Int32 x2, Int32 y2,
              Int32 x3, Int32 y3, Int32 x4, Int32 y4),
          int Function(int hdc, int x1, int y1, int x2, int y2, int x3, int y3,
              int x4, int y4)>('Chord');
      expect(Chord, isA<Function>());
    });
    test('Can instantiate CloseFigure', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final CloseFigure = gdi32.lookupFunction<Int32 Function(IntPtr hdc),
          int Function(int hdc)>('CloseFigure');
      expect(CloseFigure, isA<Function>());
    });
    test('Can instantiate CreateCompatibleBitmap', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final CreateCompatibleBitmap = gdi32.lookupFunction<
          IntPtr Function(IntPtr hdc, Int32 cx, Int32 cy),
          int Function(int hdc, int cx, int cy)>('CreateCompatibleBitmap');
      expect(CreateCompatibleBitmap, isA<Function>());
    });
    test('Can instantiate CreateCompatibleDC', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final CreateCompatibleDC = gdi32.lookupFunction<
          IntPtr Function(IntPtr hdc),
          int Function(int hdc)>('CreateCompatibleDC');
      expect(CreateCompatibleDC, isA<Function>());
    });
    test('Can instantiate CreateDIBitmap', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final CreateDIBitmap = gdi32.lookupFunction<
          IntPtr Function(
              IntPtr hdc,
              Pointer<BITMAPINFOHEADER> pbmih,
              Uint32 flInit,
              Pointer pjBits,
              Pointer<BITMAPINFO> pbmi,
              Uint32 iUsage),
          int Function(
              int hdc,
              Pointer<BITMAPINFOHEADER> pbmih,
              int flInit,
              Pointer pjBits,
              Pointer<BITMAPINFO> pbmi,
              int iUsage)>('CreateDIBitmap');
      expect(CreateDIBitmap, isA<Function>());
    });
    test('Can instantiate CreateDIBPatternBrushPt', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final CreateDIBPatternBrushPt = gdi32.lookupFunction<
          IntPtr Function(Pointer lpPackedDIB, Uint32 iUsage),
          int Function(
              Pointer lpPackedDIB, int iUsage)>('CreateDIBPatternBrushPt');
      expect(CreateDIBPatternBrushPt, isA<Function>());
    });
    test('Can instantiate CreateEllipticRgn', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final CreateEllipticRgn = gdi32.lookupFunction<
          IntPtr Function(Int32 x1, Int32 y1, Int32 x2, Int32 y2),
          int Function(int x1, int y1, int x2, int y2)>('CreateEllipticRgn');
      expect(CreateEllipticRgn, isA<Function>());
    });
    test('Can instantiate CreateFontIndirect', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final CreateFontIndirect = gdi32.lookupFunction<
          IntPtr Function(Pointer<LOGFONT> lplf),
          int Function(Pointer<LOGFONT> lplf)>('CreateFontIndirectW');
      expect(CreateFontIndirect, isA<Function>());
    });
    test('Can instantiate CreateHalftonePalette', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final CreateHalftonePalette = gdi32.lookupFunction<
          IntPtr Function(IntPtr hdc),
          int Function(int hdc)>('CreateHalftonePalette');
      expect(CreateHalftonePalette, isA<Function>());
    });
    test('Can instantiate CreateHatchBrush', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final CreateHatchBrush = gdi32.lookupFunction<
          IntPtr Function(Uint32 iHatch, Uint32 color),
          int Function(int iHatch, int color)>('CreateHatchBrush');
      expect(CreateHatchBrush, isA<Function>());
    });
    test('Can instantiate CreatePen', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final CreatePen = gdi32.lookupFunction<
          IntPtr Function(Uint32 iStyle, Int32 cWidth, Uint32 color),
          int Function(int iStyle, int cWidth, int color)>('CreatePen');
      expect(CreatePen, isA<Function>());
    });
    test('Can instantiate CreateSolidBrush', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final CreateSolidBrush = gdi32.lookupFunction<
          IntPtr Function(Uint32 color),
          int Function(int color)>('CreateSolidBrush');
      expect(CreateSolidBrush, isA<Function>());
    });
    test('Can instantiate DeleteDC', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final DeleteDC = gdi32.lookupFunction<Int32 Function(IntPtr hdc),
          int Function(int hdc)>('DeleteDC');
      expect(DeleteDC, isA<Function>());
    });
    test('Can instantiate DeleteObject', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final DeleteObject =
          gdi32.lookupFunction<Int32 Function(IntPtr ho), int Function(int ho)>(
              'DeleteObject');
      expect(DeleteObject, isA<Function>());
    });
    test('Can instantiate DrawEscape', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final DrawEscape = gdi32.lookupFunction<
          Int32 Function(
              IntPtr hdc, Int32 iEscape, Int32 cjIn, Pointer<Utf8> lpIn),
          int Function(int hdc, int iEscape, int cjIn,
              Pointer<Utf8> lpIn)>('DrawEscape');
      expect(DrawEscape, isA<Function>());
    });
    test('Can instantiate Ellipse', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final Ellipse = gdi32.lookupFunction<
          Int32 Function(
              IntPtr hdc, Int32 left, Int32 top, Int32 right, Int32 bottom),
          int Function(
              int hdc, int left, int top, int right, int bottom)>('Ellipse');
      expect(Ellipse, isA<Function>());
    });
    test('Can instantiate EndPath', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final EndPath = gdi32.lookupFunction<Int32 Function(IntPtr hdc),
          int Function(int hdc)>('EndPath');
      expect(EndPath, isA<Function>());
    });
    test('Can instantiate EnumFontFamiliesEx', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final EnumFontFamiliesEx = gdi32.lookupFunction<
          Int32 Function(
              IntPtr hdc,
              Pointer<LOGFONT> lpLogfont,
              Pointer<NativeFunction<EnumFontFamExProc>> lpProc,
              IntPtr lParam,
              Uint32 dwFlags),
          int Function(
              int hdc,
              Pointer<LOGFONT> lpLogfont,
              Pointer<NativeFunction<EnumFontFamExProc>> lpProc,
              int lParam,
              int dwFlags)>('EnumFontFamiliesExW');
      expect(EnumFontFamiliesEx, isA<Function>());
    });
    test('Can instantiate ExtCreatePen', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final ExtCreatePen = gdi32.lookupFunction<
          IntPtr Function(Uint32 iPenStyle, Uint32 cWidth,
              Pointer<LOGBRUSH> plbrush, Uint32 cStyle, Pointer<Uint32> pstyle),
          int Function(int iPenStyle, int cWidth, Pointer<LOGBRUSH> plbrush,
              int cStyle, Pointer<Uint32> pstyle)>('ExtCreatePen');
      expect(ExtCreatePen, isA<Function>());
    });
    test('Can instantiate ExtTextOut', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final ExtTextOut = gdi32.lookupFunction<
          Int32 Function(
              IntPtr hdc,
              Int32 x,
              Int32 y,
              Uint32 options,
              Pointer<RECT> lprect,
              Pointer<Utf16> lpString,
              Uint32 c,
              Pointer<Int32> lpDx),
          int Function(
              int hdc,
              int x,
              int y,
              int options,
              Pointer<RECT> lprect,
              Pointer<Utf16> lpString,
              int c,
              Pointer<Int32> lpDx)>('ExtTextOutW');
      expect(ExtTextOut, isA<Function>());
    });
    test('Can instantiate GetDIBits', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final GetDIBits = gdi32.lookupFunction<
          Int32 Function(IntPtr hdc, IntPtr hbm, Uint32 start, Uint32 cLines,
              Pointer lpvBits, Pointer<BITMAPINFO> lpbmi, Uint32 usage),
          int Function(int hdc, int hbm, int start, int cLines, Pointer lpvBits,
              Pointer<BITMAPINFO> lpbmi, int usage)>('GetDIBits');
      expect(GetDIBits, isA<Function>());
    });
    test('Can instantiate GetNearestColor', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final GetNearestColor = gdi32.lookupFunction<
          Uint32 Function(IntPtr hdc, Uint32 color),
          int Function(int hdc, int color)>('GetNearestColor');
      expect(GetNearestColor, isA<Function>());
    });
    test('Can instantiate GetObject', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final GetObject = gdi32.lookupFunction<
          Int32 Function(IntPtr h, Int32 c, Pointer pv),
          int Function(int h, int c, Pointer pv)>('GetObjectW');
      expect(GetObject, isA<Function>());
    });
    test('Can instantiate GetStockObject', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final GetStockObject =
          gdi32.lookupFunction<IntPtr Function(Uint32 i), int Function(int i)>(
              'GetStockObject');
      expect(GetStockObject, isA<Function>());
    });
    test('Can instantiate GetTextMetrics', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final GetTextMetrics = gdi32.lookupFunction<
          Int32 Function(IntPtr hdc, Pointer<TEXTMETRIC> lptm),
          int Function(int hdc, Pointer<TEXTMETRIC> lptm)>('GetTextMetricsW');
      expect(GetTextMetrics, isA<Function>());
    });
    test('Can instantiate LineTo', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final LineTo = gdi32.lookupFunction<
          Int32 Function(IntPtr hdc, Int32 x, Int32 y),
          int Function(int hdc, int x, int y)>('LineTo');
      expect(LineTo, isA<Function>());
    });
    test('Can instantiate MoveToEx', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final MoveToEx = gdi32.lookupFunction<
          Int32 Function(IntPtr hdc, Int32 x, Int32 y, Pointer<POINT> lppt),
          int Function(int hdc, int x, int y, Pointer<POINT> lppt)>('MoveToEx');
      expect(MoveToEx, isA<Function>());
    });
    test('Can instantiate Pie', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final Pie = gdi32.lookupFunction<
          Int32 Function(IntPtr hdc, Int32 left, Int32 top, Int32 right,
              Int32 bottom, Int32 xr1, Int32 yr1, Int32 xr2, Int32 yr2),
          int Function(int hdc, int left, int top, int right, int bottom,
              int xr1, int yr1, int xr2, int yr2)>('Pie');
      expect(Pie, isA<Function>());
    });
    test('Can instantiate PolyBezier', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final PolyBezier = gdi32.lookupFunction<
          Int32 Function(IntPtr hdc, Pointer<POINT> apt, Uint32 cpt),
          int Function(int hdc, Pointer<POINT> apt, int cpt)>('PolyBezier');
      expect(PolyBezier, isA<Function>());
    });
    test('Can instantiate PolyBezierTo', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final PolyBezierTo = gdi32.lookupFunction<
          Int32 Function(IntPtr hdc, Pointer<POINT> apt, Uint32 cpt),
          int Function(int hdc, Pointer<POINT> apt, int cpt)>('PolyBezierTo');
      expect(PolyBezierTo, isA<Function>());
    });
    test('Can instantiate PolyDraw', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final PolyDraw = gdi32.lookupFunction<
          Int32 Function(
              IntPtr hdc, Pointer<POINT> apt, Pointer<Uint8> aj, Int32 cpt),
          int Function(int hdc, Pointer<POINT> apt, Pointer<Uint8> aj,
              int cpt)>('PolyDraw');
      expect(PolyDraw, isA<Function>());
    });
    test('Can instantiate Polygon', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final Polygon = gdi32.lookupFunction<
          Int32 Function(IntPtr hdc, Pointer<POINT> apt, Int32 cpt),
          int Function(int hdc, Pointer<POINT> apt, int cpt)>('Polygon');
      expect(Polygon, isA<Function>());
    });
    test('Can instantiate Polyline', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final Polyline = gdi32.lookupFunction<
          Int32 Function(IntPtr hdc, Pointer<POINT> apt, Int32 cpt),
          int Function(int hdc, Pointer<POINT> apt, int cpt)>('Polyline');
      expect(Polyline, isA<Function>());
    });
    test('Can instantiate PolylineTo', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final PolylineTo = gdi32.lookupFunction<
          Int32 Function(IntPtr hdc, Pointer<POINT> apt, Uint32 cpt),
          int Function(int hdc, Pointer<POINT> apt, int cpt)>('PolylineTo');
      expect(PolylineTo, isA<Function>());
    });
    test('Can instantiate PolyPolygon', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final PolyPolygon = gdi32.lookupFunction<
          Int32 Function(
              IntPtr hdc, Pointer<POINT> apt, Pointer<Int32> asz, Int32 csz),
          int Function(int hdc, Pointer<POINT> apt, Pointer<Int32> asz,
              int csz)>('PolyPolygon');
      expect(PolyPolygon, isA<Function>());
    });
    test('Can instantiate PolyPolyline', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final PolyPolyline = gdi32.lookupFunction<
          Int32 Function(
              IntPtr hdc, Pointer<POINT> apt, Pointer<Uint32> asz, Uint32 csz),
          int Function(int hdc, Pointer<POINT> apt, Pointer<Uint32> asz,
              int csz)>('PolyPolyline');
      expect(PolyPolyline, isA<Function>());
    });
    test('Can instantiate PtInRegion', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final PtInRegion = gdi32.lookupFunction<
          Int32 Function(IntPtr hrgn, Int32 x, Int32 y),
          int Function(int hrgn, int x, int y)>('PtInRegion');
      expect(PtInRegion, isA<Function>());
    });
    test('Can instantiate Rectangle', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final Rectangle = gdi32.lookupFunction<
          Int32 Function(
              IntPtr hdc, Int32 left, Int32 top, Int32 right, Int32 bottom),
          int Function(
              int hdc, int left, int top, int right, int bottom)>('Rectangle');
      expect(Rectangle, isA<Function>());
    });
    test('Can instantiate RectInRegion', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final RectInRegion = gdi32.lookupFunction<
          Int32 Function(IntPtr hrgn, Pointer<RECT> lprect),
          int Function(int hrgn, Pointer<RECT> lprect)>('RectInRegion');
      expect(RectInRegion, isA<Function>());
    });
    test('Can instantiate RoundRect', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final RoundRect = gdi32.lookupFunction<
          Int32 Function(IntPtr hdc, Int32 left, Int32 top, Int32 right,
              Int32 bottom, Int32 width, Int32 height),
          int Function(int hdc, int left, int top, int right, int bottom,
              int width, int height)>('RoundRect');
      expect(RoundRect, isA<Function>());
    });
    test('Can instantiate SaveDC', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final SaveDC = gdi32.lookupFunction<Int32 Function(IntPtr hdc),
          int Function(int hdc)>('SaveDC');
      expect(SaveDC, isA<Function>());
    });
    test('Can instantiate SelectObject', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final SelectObject = gdi32.lookupFunction<
          IntPtr Function(IntPtr hdc, IntPtr h),
          int Function(int hdc, int h)>('SelectObject');
      expect(SelectObject, isA<Function>());
    });
    test('Can instantiate SetBkColor', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final SetBkColor = gdi32.lookupFunction<
          Uint32 Function(IntPtr hdc, Uint32 color),
          int Function(int hdc, int color)>('SetBkColor');
      expect(SetBkColor, isA<Function>());
    });
    test('Can instantiate SetBkMode', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final SetBkMode = gdi32.lookupFunction<
          Int32 Function(IntPtr hdc, Uint32 mode),
          int Function(int hdc, int mode)>('SetBkMode');
      expect(SetBkMode, isA<Function>());
    });
    test('Can instantiate SetMapMode', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final SetMapMode = gdi32.lookupFunction<
          Int32 Function(IntPtr hdc, Uint32 iMode),
          int Function(int hdc, int iMode)>('SetMapMode');
      expect(SetMapMode, isA<Function>());
    });
    test('Can instantiate SetPixel', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final SetPixel = gdi32.lookupFunction<
          Uint32 Function(IntPtr hdc, Int32 x, Int32 y, Uint32 color),
          int Function(int hdc, int x, int y, int color)>('SetPixel');
      expect(SetPixel, isA<Function>());
    });
    test('Can instantiate SetStretchBltMode', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final SetStretchBltMode = gdi32.lookupFunction<
          Int32 Function(IntPtr hdc, Uint32 mode),
          int Function(int hdc, int mode)>('SetStretchBltMode');
      expect(SetStretchBltMode, isA<Function>());
    });
    test('Can instantiate SetTextColor', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final SetTextColor = gdi32.lookupFunction<
          Uint32 Function(IntPtr hdc, Uint32 color),
          int Function(int hdc, int color)>('SetTextColor');
      expect(SetTextColor, isA<Function>());
    });
    test('Can instantiate SetViewportExtEx', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final SetViewportExtEx = gdi32.lookupFunction<
          Int32 Function(IntPtr hdc, Int32 x, Int32 y, Pointer<SIZE> lpsz),
          int Function(
              int hdc, int x, int y, Pointer<SIZE> lpsz)>('SetViewportExtEx');
      expect(SetViewportExtEx, isA<Function>());
    });
    test('Can instantiate SetViewportOrgEx', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final SetViewportOrgEx = gdi32.lookupFunction<
          Int32 Function(IntPtr hdc, Int32 x, Int32 y, Pointer<POINT> lppt),
          int Function(
              int hdc, int x, int y, Pointer<POINT> lppt)>('SetViewportOrgEx');
      expect(SetViewportOrgEx, isA<Function>());
    });
    test('Can instantiate SetWindowExtEx', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final SetWindowExtEx = gdi32.lookupFunction<
          Int32 Function(IntPtr hdc, Int32 x, Int32 y, Pointer<SIZE> lpsz),
          int Function(
              int hdc, int x, int y, Pointer<SIZE> lpsz)>('SetWindowExtEx');
      expect(SetWindowExtEx, isA<Function>());
    });
    test('Can instantiate StretchBlt', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final StretchBlt = gdi32.lookupFunction<
          Int32 Function(
              IntPtr hdcDest,
              Int32 xDest,
              Int32 yDest,
              Int32 wDest,
              Int32 hDest,
              IntPtr hdcSrc,
              Int32 xSrc,
              Int32 ySrc,
              Int32 wSrc,
              Int32 hSrc,
              Uint32 rop),
          int Function(
              int hdcDest,
              int xDest,
              int yDest,
              int wDest,
              int hDest,
              int hdcSrc,
              int xSrc,
              int ySrc,
              int wSrc,
              int hSrc,
              int rop)>('StretchBlt');
      expect(StretchBlt, isA<Function>());
    });
    test('Can instantiate StretchDIBits', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final StretchDIBits = gdi32.lookupFunction<
          Int32 Function(
              IntPtr hdc,
              Int32 xDest,
              Int32 yDest,
              Int32 DestWidth,
              Int32 DestHeight,
              Int32 xSrc,
              Int32 ySrc,
              Int32 SrcWidth,
              Int32 SrcHeight,
              Pointer lpBits,
              Pointer<BITMAPINFO> lpbmi,
              Uint32 iUsage,
              Uint32 rop),
          int Function(
              int hdc,
              int xDest,
              int yDest,
              int DestWidth,
              int DestHeight,
              int xSrc,
              int ySrc,
              int SrcWidth,
              int SrcHeight,
              Pointer lpBits,
              Pointer<BITMAPINFO> lpbmi,
              int iUsage,
              int rop)>('StretchDIBits');
      expect(StretchDIBits, isA<Function>());
    });
    test('Can instantiate TextOut', () {
      final gdi32 = DynamicLibrary.open('gdi32.dll');
      final TextOut = gdi32.lookupFunction<
          Int32 Function(
              IntPtr hdc, Int32 x, Int32 y, Pointer<Utf16> lpString, Int32 c),
          int Function(int hdc, int x, int y, Pointer<Utf16> lpString,
              int c)>('TextOutW');
      expect(TextOut, isA<Function>());
    });
  });

  group('Test bthprops functions', () {
    test('Can instantiate BluetoothAuthenticateDeviceEx', () {
      final bthprops = DynamicLibrary.open('bthprops.cpl');
      final BluetoothAuthenticateDeviceEx = bthprops.lookupFunction<
          Uint32 Function(
              IntPtr hwndParentIn,
              IntPtr hRadioIn,
              Pointer<BLUETOOTH_DEVICE_INFO> pbtdiInout,
              Pointer<BLUETOOTH_OOB_DATA_INFO> pbtOobData,
              Uint32 authenticationRequirement),
          int Function(
              int hwndParentIn,
              int hRadioIn,
              Pointer<BLUETOOTH_DEVICE_INFO> pbtdiInout,
              Pointer<BLUETOOTH_OOB_DATA_INFO> pbtOobData,
              int authenticationRequirement)>('BluetoothAuthenticateDeviceEx');
      expect(BluetoothAuthenticateDeviceEx, isA<Function>());
    });
    test('Can instantiate BluetoothDisplayDeviceProperties', () {
      final bthprops = DynamicLibrary.open('bthprops.cpl');
      final BluetoothDisplayDeviceProperties = bthprops.lookupFunction<
              Int32 Function(
                  IntPtr hwndParent, Pointer<BLUETOOTH_DEVICE_INFO> pbtdi),
              int Function(
                  int hwndParent, Pointer<BLUETOOTH_DEVICE_INFO> pbtdi)>(
          'BluetoothDisplayDeviceProperties');
      expect(BluetoothDisplayDeviceProperties, isA<Function>());
    });
    test('Can instantiate BluetoothEnableDiscovery', () {
      final bthprops = DynamicLibrary.open('bthprops.cpl');
      final BluetoothEnableDiscovery = bthprops.lookupFunction<
          Int32 Function(IntPtr hRadio, Int32 fEnabled),
          int Function(int hRadio, int fEnabled)>('BluetoothEnableDiscovery');
      expect(BluetoothEnableDiscovery, isA<Function>());
    });
    test('Can instantiate BluetoothEnableIncomingConnections', () {
      final bthprops = DynamicLibrary.open('bthprops.cpl');
      final BluetoothEnableIncomingConnections = bthprops.lookupFunction<
          Int32 Function(IntPtr hRadio, Int32 fEnabled),
          int Function(
              int hRadio, int fEnabled)>('BluetoothEnableIncomingConnections');
      expect(BluetoothEnableIncomingConnections, isA<Function>());
    });
    test('Can instantiate BluetoothEnumerateInstalledServices', () {
      final bthprops = DynamicLibrary.open('bthprops.cpl');
      final BluetoothEnumerateInstalledServices = bthprops.lookupFunction<
          Uint32 Function(IntPtr hRadio, Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
              Pointer<Uint32> pcServiceInout, Pointer<GUID> pGuidServices),
          int Function(
              int hRadio,
              Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
              Pointer<Uint32> pcServiceInout,
              Pointer<GUID>
                  pGuidServices)>('BluetoothEnumerateInstalledServices');
      expect(BluetoothEnumerateInstalledServices, isA<Function>());
    });
    test('Can instantiate BluetoothFindDeviceClose', () {
      final bthprops = DynamicLibrary.open('bthprops.cpl');
      final BluetoothFindDeviceClose = bthprops.lookupFunction<
          Int32 Function(IntPtr hFind),
          int Function(int hFind)>('BluetoothFindDeviceClose');
      expect(BluetoothFindDeviceClose, isA<Function>());
    });
    test('Can instantiate BluetoothFindFirstDevice', () {
      final bthprops = DynamicLibrary.open('bthprops.cpl');
      final BluetoothFindFirstDevice = bthprops.lookupFunction<
              IntPtr Function(Pointer<BLUETOOTH_DEVICE_SEARCH_PARAMS> pbtsp,
                  Pointer<BLUETOOTH_DEVICE_INFO> pbtdi),
              int Function(Pointer<BLUETOOTH_DEVICE_SEARCH_PARAMS> pbtsp,
                  Pointer<BLUETOOTH_DEVICE_INFO> pbtdi)>(
          'BluetoothFindFirstDevice');
      expect(BluetoothFindFirstDevice, isA<Function>());
    });
    test('Can instantiate BluetoothFindFirstRadio', () {
      final bthprops = DynamicLibrary.open('bthprops.cpl');
      final BluetoothFindFirstRadio = bthprops.lookupFunction<
          IntPtr Function(Pointer<BLUETOOTH_FIND_RADIO_PARAMS> pbtfrp,
              Pointer<IntPtr> phRadio),
          int Function(Pointer<BLUETOOTH_FIND_RADIO_PARAMS> pbtfrp,
              Pointer<IntPtr> phRadio)>('BluetoothFindFirstRadio');
      expect(BluetoothFindFirstRadio, isA<Function>());
    });
    test('Can instantiate BluetoothFindNextDevice', () {
      final bthprops = DynamicLibrary.open('bthprops.cpl');
      final BluetoothFindNextDevice = bthprops.lookupFunction<
          Int32 Function(IntPtr hFind, Pointer<BLUETOOTH_DEVICE_INFO> pbtdi),
          int Function(int hFind,
              Pointer<BLUETOOTH_DEVICE_INFO> pbtdi)>('BluetoothFindNextDevice');
      expect(BluetoothFindNextDevice, isA<Function>());
    });
    test('Can instantiate BluetoothFindNextRadio', () {
      final bthprops = DynamicLibrary.open('bthprops.cpl');
      final BluetoothFindNextRadio = bthprops.lookupFunction<
          Int32 Function(IntPtr hFind, Pointer<IntPtr> phRadio),
          int Function(
              int hFind, Pointer<IntPtr> phRadio)>('BluetoothFindNextRadio');
      expect(BluetoothFindNextRadio, isA<Function>());
    });
    test('Can instantiate BluetoothFindRadioClose', () {
      final bthprops = DynamicLibrary.open('bthprops.cpl');
      final BluetoothFindRadioClose = bthprops.lookupFunction<
          Int32 Function(IntPtr hFind),
          int Function(int hFind)>('BluetoothFindRadioClose');
      expect(BluetoothFindRadioClose, isA<Function>());
    });
    test('Can instantiate BluetoothGetRadioInfo', () {
      final bthprops = DynamicLibrary.open('bthprops.cpl');
      final BluetoothGetRadioInfo = bthprops.lookupFunction<
              Uint32 Function(
                  IntPtr hRadio, Pointer<BLUETOOTH_RADIO_INFO> pRadioInfo),
              int Function(
                  int hRadio, Pointer<BLUETOOTH_RADIO_INFO> pRadioInfo)>(
          'BluetoothGetRadioInfo');
      expect(BluetoothGetRadioInfo, isA<Function>());
    });
    test('Can instantiate BluetoothIsConnectable', () {
      final bthprops = DynamicLibrary.open('bthprops.cpl');
      final BluetoothIsConnectable = bthprops.lookupFunction<
          Int32 Function(IntPtr hRadio),
          int Function(int hRadio)>('BluetoothIsConnectable');
      expect(BluetoothIsConnectable, isA<Function>());
    });
    test('Can instantiate BluetoothIsDiscoverable', () {
      final bthprops = DynamicLibrary.open('bthprops.cpl');
      final BluetoothIsDiscoverable = bthprops.lookupFunction<
          Int32 Function(IntPtr hRadio),
          int Function(int hRadio)>('BluetoothIsDiscoverable');
      expect(BluetoothIsDiscoverable, isA<Function>());
    });
    test('Can instantiate BluetoothIsVersionAvailable', () {
      final bthprops = DynamicLibrary.open('bthprops.cpl');
      final BluetoothIsVersionAvailable = bthprops.lookupFunction<
          Int32 Function(Uint8 MajorVersion, Uint8 MinorVersion),
          int Function(int MajorVersion,
              int MinorVersion)>('BluetoothIsVersionAvailable');
      expect(BluetoothIsVersionAvailable, isA<Function>());
    });
    test('Can instantiate BluetoothRegisterForAuthenticationEx', () {
      final bthprops = DynamicLibrary.open('bthprops.cpl');
      final BluetoothRegisterForAuthenticationEx = bthprops.lookupFunction<
          Uint32 Function(
              Pointer<BLUETOOTH_DEVICE_INFO> pbtdiIn,
              Pointer<IntPtr> phRegHandleOut,
              Pointer<NativeFunction<PfnAuthenticationCallbackEx>>
                  pfnCallbackIn,
              Pointer pvParam),
          int Function(
              Pointer<BLUETOOTH_DEVICE_INFO> pbtdiIn,
              Pointer<IntPtr> phRegHandleOut,
              Pointer<NativeFunction<PfnAuthenticationCallbackEx>>
                  pfnCallbackIn,
              Pointer pvParam)>('BluetoothRegisterForAuthenticationEx');
      expect(BluetoothRegisterForAuthenticationEx, isA<Function>());
    });
    test('Can instantiate BluetoothRemoveDevice', () {
      final bthprops = DynamicLibrary.open('bthprops.cpl');
      final BluetoothRemoveDevice = bthprops.lookupFunction<
          Uint32 Function(Pointer<BLUETOOTH_ADDRESS> pAddress),
          int Function(
              Pointer<BLUETOOTH_ADDRESS> pAddress)>('BluetoothRemoveDevice');
      expect(BluetoothRemoveDevice, isA<Function>());
    });
    test('Can instantiate BluetoothSetServiceState', () {
      final bthprops = DynamicLibrary.open('bthprops.cpl');
      final BluetoothSetServiceState = bthprops.lookupFunction<
          Uint32 Function(IntPtr hRadio, Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
              Pointer<GUID> pGuidService, Uint32 dwServiceFlags),
          int Function(
              int hRadio,
              Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
              Pointer<GUID> pGuidService,
              int dwServiceFlags)>('BluetoothSetServiceState');
      expect(BluetoothSetServiceState, isA<Function>());
    });
    test('Can instantiate BluetoothUnregisterAuthentication', () {
      final bthprops = DynamicLibrary.open('bthprops.cpl');
      final BluetoothUnregisterAuthentication = bthprops.lookupFunction<
          Int32 Function(IntPtr hRegHandle),
          int Function(int hRegHandle)>('BluetoothUnregisterAuthentication');
      expect(BluetoothUnregisterAuthentication, isA<Function>());
    });
    test('Can instantiate BluetoothUpdateDeviceRecord', () {
      final bthprops = DynamicLibrary.open('bthprops.cpl');
      final BluetoothUpdateDeviceRecord = bthprops.lookupFunction<
              Uint32 Function(Pointer<BLUETOOTH_DEVICE_INFO> pbtdi),
              int Function(Pointer<BLUETOOTH_DEVICE_INFO> pbtdi)>(
          'BluetoothUpdateDeviceRecord');
      expect(BluetoothUpdateDeviceRecord, isA<Function>());
    });
  });

  group('Test powrprof functions', () {
    test('Can instantiate CallNtPowerInformation', () {
      final powrprof = DynamicLibrary.open('powrprof.dll');
      final CallNtPowerInformation = powrprof.lookupFunction<
          Int32 Function(
              Uint32 InformationLevel,
              Pointer InputBuffer,
              Uint32 InputBufferLength,
              Pointer OutputBuffer,
              Uint32 OutputBufferLength),
          int Function(
              int InformationLevel,
              Pointer InputBuffer,
              int InputBufferLength,
              Pointer OutputBuffer,
              int OutputBufferLength)>('CallNtPowerInformation');
      expect(CallNtPowerInformation, isA<Function>());
    });
  });

  group('Test comdlg32 functions', () {
    test('Can instantiate ChooseColor', () {
      final comdlg32 = DynamicLibrary.open('comdlg32.dll');
      final ChooseColor = comdlg32.lookupFunction<
          Int32 Function(Pointer<CHOOSECOLOR> param0),
          int Function(Pointer<CHOOSECOLOR> param0)>('ChooseColorW');
      expect(ChooseColor, isA<Function>());
    });
    test('Can instantiate ChooseFont', () {
      final comdlg32 = DynamicLibrary.open('comdlg32.dll');
      final ChooseFont = comdlg32.lookupFunction<
          Int32 Function(Pointer<CHOOSEFONT> param0),
          int Function(Pointer<CHOOSEFONT> param0)>('ChooseFontW');
      expect(ChooseFont, isA<Function>());
    });
    test('Can instantiate FindText', () {
      final comdlg32 = DynamicLibrary.open('comdlg32.dll');
      final FindText = comdlg32.lookupFunction<
          IntPtr Function(Pointer<FINDREPLACE> param0),
          int Function(Pointer<FINDREPLACE> param0)>('FindTextW');
      expect(FindText, isA<Function>());
    });
    test('Can instantiate GetOpenFileName', () {
      final comdlg32 = DynamicLibrary.open('comdlg32.dll');
      final GetOpenFileName = comdlg32.lookupFunction<
          Int32 Function(Pointer<OPENFILENAME> param0),
          int Function(Pointer<OPENFILENAME> param0)>('GetOpenFileNameW');
      expect(GetOpenFileName, isA<Function>());
    });
    test('Can instantiate GetSaveFileName', () {
      final comdlg32 = DynamicLibrary.open('comdlg32.dll');
      final GetSaveFileName = comdlg32.lookupFunction<
          Int32 Function(Pointer<OPENFILENAME> param0),
          int Function(Pointer<OPENFILENAME> param0)>('GetSaveFileNameW');
      expect(GetSaveFileName, isA<Function>());
    });
    test('Can instantiate ReplaceText', () {
      final comdlg32 = DynamicLibrary.open('comdlg32.dll');
      final ReplaceText = comdlg32.lookupFunction<
          IntPtr Function(Pointer<FINDREPLACE> param0),
          int Function(Pointer<FINDREPLACE> param0)>('ReplaceTextW');
      expect(ReplaceText, isA<Function>());
    });
  });

  group('Test ole32 functions', () {
    test('Can instantiate CLSIDFromProgID', () {
      final ole32 = DynamicLibrary.open('ole32.dll');
      final CLSIDFromProgID = ole32.lookupFunction<
          Int32 Function(Pointer<Utf16> lpszProgID, Pointer<GUID> lpclsid),
          int Function(Pointer<Utf16> lpszProgID,
              Pointer<GUID> lpclsid)>('CLSIDFromProgID');
      expect(CLSIDFromProgID, isA<Function>());
    });
    test('Can instantiate CLSIDFromProgIDEx', () {
      final ole32 = DynamicLibrary.open('ole32.dll');
      final CLSIDFromProgIDEx = ole32.lookupFunction<
          Int32 Function(Pointer<Utf16> lpszProgID, Pointer<GUID> lpclsid),
          int Function(Pointer<Utf16> lpszProgID,
              Pointer<GUID> lpclsid)>('CLSIDFromProgIDEx');
      expect(CLSIDFromProgIDEx, isA<Function>());
    });
    test('Can instantiate CLSIDFromString', () {
      final ole32 = DynamicLibrary.open('ole32.dll');
      final CLSIDFromString = ole32.lookupFunction<
          Int32 Function(Pointer<Utf16> lpsz, Pointer<GUID> pclsid),
          int Function(
              Pointer<Utf16> lpsz, Pointer<GUID> pclsid)>('CLSIDFromString');
      expect(CLSIDFromString, isA<Function>());
    });
    test('Can instantiate CoAddRefServerProcess', () {
      final ole32 = DynamicLibrary.open('ole32.dll');
      final CoAddRefServerProcess =
          ole32.lookupFunction<Uint32 Function(), int Function()>(
              'CoAddRefServerProcess');
      expect(CoAddRefServerProcess, isA<Function>());
    });
    test('Can instantiate CoCreateGuid', () {
      final ole32 = DynamicLibrary.open('ole32.dll');
      final CoCreateGuid = ole32.lookupFunction<
          Int32 Function(Pointer<GUID> pguid),
          int Function(Pointer<GUID> pguid)>('CoCreateGuid');
      expect(CoCreateGuid, isA<Function>());
    });
    test('Can instantiate CoCreateInstance', () {
      final ole32 = DynamicLibrary.open('ole32.dll');
      final CoCreateInstance = ole32.lookupFunction<
          Int32 Function(Pointer<GUID> rclsid, Pointer pUnkOuter,
              Uint32 dwClsContext, Pointer<GUID> riid, Pointer<Pointer> ppv),
          int Function(
              Pointer<GUID> rclsid,
              Pointer pUnkOuter,
              int dwClsContext,
              Pointer<GUID> riid,
              Pointer<Pointer> ppv)>('CoCreateInstance');
      expect(CoCreateInstance, isA<Function>());
    });
    test('Can instantiate CoGetClassObject', () {
      final ole32 = DynamicLibrary.open('ole32.dll');
      final CoGetClassObject = ole32.lookupFunction<
          Int32 Function(Pointer<GUID> rclsid, Uint32 dwClsContext,
              Pointer pvReserved, Pointer<GUID> riid, Pointer<Pointer> ppv),
          int Function(
              Pointer<GUID> rclsid,
              int dwClsContext,
              Pointer pvReserved,
              Pointer<GUID> riid,
              Pointer<Pointer> ppv)>('CoGetClassObject');
      expect(CoGetClassObject, isA<Function>());
    });
    test('Can instantiate CoGetCurrentProcess', () {
      final ole32 = DynamicLibrary.open('ole32.dll');
      final CoGetCurrentProcess =
          ole32.lookupFunction<Uint32 Function(), int Function()>(
              'CoGetCurrentProcess');
      expect(CoGetCurrentProcess, isA<Function>());
    });
    test('Can instantiate CoInitializeEx', () {
      final ole32 = DynamicLibrary.open('ole32.dll');
      final CoInitializeEx = ole32.lookupFunction<
          Int32 Function(Pointer pvReserved, Uint32 dwCoInit),
          int Function(Pointer pvReserved, int dwCoInit)>('CoInitializeEx');
      expect(CoInitializeEx, isA<Function>());
    });
    test('Can instantiate CoInitializeSecurity', () {
      final ole32 = DynamicLibrary.open('ole32.dll');
      final CoInitializeSecurity = ole32.lookupFunction<
          Int32 Function(
              Pointer<SECURITY_DESCRIPTOR> pSecDesc,
              Int32 cAuthSvc,
              Pointer<SOLE_AUTHENTICATION_SERVICE> asAuthSvc,
              Pointer pReserved1,
              Uint32 dwAuthnLevel,
              Uint32 dwImpLevel,
              Pointer pAuthList,
              Uint32 dwCapabilities,
              Pointer pReserved3),
          int Function(
              Pointer<SECURITY_DESCRIPTOR> pSecDesc,
              int cAuthSvc,
              Pointer<SOLE_AUTHENTICATION_SERVICE> asAuthSvc,
              Pointer pReserved1,
              int dwAuthnLevel,
              int dwImpLevel,
              Pointer pAuthList,
              int dwCapabilities,
              Pointer pReserved3)>('CoInitializeSecurity');
      expect(CoInitializeSecurity, isA<Function>());
    });
    test('Can instantiate CoSetProxyBlanket', () {
      final ole32 = DynamicLibrary.open('ole32.dll');
      final CoSetProxyBlanket = ole32.lookupFunction<
          Int32 Function(
              Pointer pProxy,
              Uint32 dwAuthnSvc,
              Uint32 dwAuthzSvc,
              Pointer<Utf16> pServerPrincName,
              Uint32 dwAuthnLevel,
              Uint32 dwImpLevel,
              Pointer pAuthInfo,
              Uint32 dwCapabilities),
          int Function(
              Pointer pProxy,
              int dwAuthnSvc,
              int dwAuthzSvc,
              Pointer<Utf16> pServerPrincName,
              int dwAuthnLevel,
              int dwImpLevel,
              Pointer pAuthInfo,
              int dwCapabilities)>('CoSetProxyBlanket');
      expect(CoSetProxyBlanket, isA<Function>());
    });
    test('Can instantiate CoTaskMemFree', () {
      final ole32 = DynamicLibrary.open('ole32.dll');
      final CoTaskMemFree = ole32.lookupFunction<Void Function(Pointer pv),
          void Function(Pointer pv)>('CoTaskMemFree');
      expect(CoTaskMemFree, isA<Function>());
    });
    test('Can instantiate CoUninitialize', () {
      final ole32 = DynamicLibrary.open('ole32.dll');
      final CoUninitialize = ole32
          .lookupFunction<Void Function(), void Function()>('CoUninitialize');
      expect(CoUninitialize, isA<Function>());
    });
    test('Can instantiate IIDFromString', () {
      final ole32 = DynamicLibrary.open('ole32.dll');
      final IIDFromString = ole32.lookupFunction<
          Int32 Function(Pointer<Utf16> lpsz, Pointer<GUID> lpiid),
          int Function(
              Pointer<Utf16> lpsz, Pointer<GUID> lpiid)>('IIDFromString');
      expect(IIDFromString, isA<Function>());
    });
    test('Can instantiate OleInitialize', () {
      final ole32 = DynamicLibrary.open('ole32.dll');
      final OleInitialize = ole32.lookupFunction<
          Int32 Function(Pointer pvReserved),
          int Function(Pointer pvReserved)>('OleInitialize');
      expect(OleInitialize, isA<Function>());
    });
    test('Can instantiate OleUninitialize', () {
      final ole32 = DynamicLibrary.open('ole32.dll');
      final OleUninitialize = ole32
          .lookupFunction<Void Function(), void Function()>('OleUninitialize');
      expect(OleUninitialize, isA<Function>());
    });
    test('Can instantiate ProgIDFromCLSID', () {
      final ole32 = DynamicLibrary.open('ole32.dll');
      final ProgIDFromCLSID = ole32.lookupFunction<
          Int32 Function(
              Pointer<GUID> clsid, Pointer<Pointer<Utf16>> lplpszProgID),
          int Function(Pointer<GUID> clsid,
              Pointer<Pointer<Utf16>> lplpszProgID)>('ProgIDFromCLSID');
      expect(ProgIDFromCLSID, isA<Function>());
    });
    test('Can instantiate StringFromCLSID', () {
      final ole32 = DynamicLibrary.open('ole32.dll');
      final StringFromCLSID = ole32.lookupFunction<
          Int32 Function(Pointer<GUID> rclsid, Pointer<Pointer<Utf16>> lplpsz),
          int Function(Pointer<GUID> rclsid,
              Pointer<Pointer<Utf16>> lplpsz)>('StringFromCLSID');
      expect(StringFromCLSID, isA<Function>());
    });
    test('Can instantiate StringFromGUID2', () {
      final ole32 = DynamicLibrary.open('ole32.dll');
      final StringFromGUID2 = ole32.lookupFunction<
          Int32 Function(
              Pointer<GUID> rguid, Pointer<Utf16> lpsz, Int32 cchMax),
          int Function(Pointer<GUID> rguid, Pointer<Utf16> lpsz,
              int cchMax)>('StringFromGUID2');
      expect(StringFromGUID2, isA<Function>());
    });
    test('Can instantiate StringFromIID', () {
      final ole32 = DynamicLibrary.open('ole32.dll');
      final StringFromIID = ole32.lookupFunction<
          Int32 Function(Pointer<GUID> rclsid, Pointer<Pointer<Utf16>> lplpsz),
          int Function(Pointer<GUID> rclsid,
              Pointer<Pointer<Utf16>> lplpsz)>('StringFromIID');
      expect(StringFromIID, isA<Function>());
    });
  });

  group('Test kernelbase functions', () {
    if (windowsBuildNumber >= 10240) {
      test('Can instantiate CompareObjectHandles', () {
        final kernelbase = DynamicLibrary.open('kernelbase.dll');
        final CompareObjectHandles = kernelbase.lookupFunction<
            Int32 Function(
                IntPtr hFirstObjectHandle, IntPtr hSecondObjectHandle),
            int Function(int hFirstObjectHandle,
                int hSecondObjectHandle)>('CompareObjectHandles');
        expect(CompareObjectHandles, isA<Function>());
      });
    }
    if (windowsBuildNumber >= 10240) {
      test('Can instantiate GetIntegratedDisplaySize', () {
        final kernelbase = DynamicLibrary.open('kernelbase.dll');
        final GetIntegratedDisplaySize = kernelbase.lookupFunction<
            Int32 Function(Pointer<Double> sizeInInches),
            int Function(
                Pointer<Double> sizeInInches)>('GetIntegratedDisplaySize');
        expect(GetIntegratedDisplaySize, isA<Function>());
      });
    }
  });

  group('Test advapi32 functions', () {
    test('Can instantiate CredDelete', () {
      final advapi32 = DynamicLibrary.open('advapi32.dll');
      final CredDelete = advapi32.lookupFunction<
          Int32 Function(Pointer<Utf16> TargetName, Uint32 Type, Uint32 Flags),
          int Function(
              Pointer<Utf16> TargetName, int Type, int Flags)>('CredDeleteW');
      expect(CredDelete, isA<Function>());
    });
    test('Can instantiate CredFree', () {
      final advapi32 = DynamicLibrary.open('advapi32.dll');
      final CredFree = advapi32.lookupFunction<Void Function(Pointer Buffer),
          void Function(Pointer Buffer)>('CredFree');
      expect(CredFree, isA<Function>());
    });
    test('Can instantiate CredRead', () {
      final advapi32 = DynamicLibrary.open('advapi32.dll');
      final CredRead = advapi32.lookupFunction<
          Int32 Function(Pointer<Utf16> TargetName, Uint32 Type, Uint32 Flags,
              Pointer<Pointer<CREDENTIAL>> Credential),
          int Function(Pointer<Utf16> TargetName, int Type, int Flags,
              Pointer<Pointer<CREDENTIAL>> Credential)>('CredReadW');
      expect(CredRead, isA<Function>());
    });
    test('Can instantiate CredWrite', () {
      final advapi32 = DynamicLibrary.open('advapi32.dll');
      final CredWrite = advapi32.lookupFunction<
          Int32 Function(Pointer<CREDENTIAL> Credential, Uint32 Flags),
          int Function(
              Pointer<CREDENTIAL> Credential, int Flags)>('CredWriteW');
      expect(CredWrite, isA<Function>());
    });
    test('Can instantiate DecryptFile', () {
      final advapi32 = DynamicLibrary.open('advapi32.dll');
      final DecryptFile = advapi32.lookupFunction<
          Int32 Function(Pointer<Utf16> lpFileName, Uint32 dwReserved),
          int Function(
              Pointer<Utf16> lpFileName, int dwReserved)>('DecryptFileW');
      expect(DecryptFile, isA<Function>());
    });
    test('Can instantiate EncryptFile', () {
      final advapi32 = DynamicLibrary.open('advapi32.dll');
      final EncryptFile = advapi32.lookupFunction<
          Int32 Function(Pointer<Utf16> lpFileName),
          int Function(Pointer<Utf16> lpFileName)>('EncryptFileW');
      expect(EncryptFile, isA<Function>());
    });
    test('Can instantiate FileEncryptionStatus', () {
      final advapi32 = DynamicLibrary.open('advapi32.dll');
      final FileEncryptionStatus = advapi32.lookupFunction<
          Int32 Function(Pointer<Utf16> lpFileName, Pointer<Uint32> lpStatus),
          int Function(Pointer<Utf16> lpFileName,
              Pointer<Uint32> lpStatus)>('FileEncryptionStatusW');
      expect(FileEncryptionStatus, isA<Function>());
    });
    test('Can instantiate InitiateShutdown', () {
      final advapi32 = DynamicLibrary.open('advapi32.dll');
      final InitiateShutdown = advapi32.lookupFunction<
          Uint32 Function(
              Pointer<Utf16> lpMachineName,
              Pointer<Utf16> lpMessage,
              Uint32 dwGracePeriod,
              Uint32 dwShutdownFlags,
              Uint32 dwReason),
          int Function(
              Pointer<Utf16> lpMachineName,
              Pointer<Utf16> lpMessage,
              int dwGracePeriod,
              int dwShutdownFlags,
              int dwReason)>('InitiateShutdownW');
      expect(InitiateShutdown, isA<Function>());
    });
    test('Can instantiate RegCloseKey', () {
      final advapi32 = DynamicLibrary.open('advapi32.dll');
      final RegCloseKey = advapi32.lookupFunction<Int32 Function(IntPtr hKey),
          int Function(int hKey)>('RegCloseKey');
      expect(RegCloseKey, isA<Function>());
    });
    test('Can instantiate RegConnectRegistry', () {
      final advapi32 = DynamicLibrary.open('advapi32.dll');
      final RegConnectRegistry = advapi32.lookupFunction<
          Int32 Function(Pointer<Utf16> lpMachineName, IntPtr hKey,
              Pointer<IntPtr> phkResult),
          int Function(Pointer<Utf16> lpMachineName, int hKey,
              Pointer<IntPtr> phkResult)>('RegConnectRegistryW');
      expect(RegConnectRegistry, isA<Function>());
    });
    test('Can instantiate RegCopyTree', () {
      final advapi32 = DynamicLibrary.open('advapi32.dll');
      final RegCopyTree = advapi32.lookupFunction<
          Int32 Function(
              IntPtr hKeySrc, Pointer<Utf16> lpSubKey, IntPtr hKeyDest),
          int Function(int hKeySrc, Pointer<Utf16> lpSubKey,
              int hKeyDest)>('RegCopyTreeW');
      expect(RegCopyTree, isA<Function>());
    });
    test('Can instantiate RegCreateKey', () {
      final advapi32 = DynamicLibrary.open('advapi32.dll');
      final RegCreateKey = advapi32.lookupFunction<
          Int32 Function(
              IntPtr hKey, Pointer<Utf16> lpSubKey, Pointer<IntPtr> phkResult),
          int Function(int hKey, Pointer<Utf16> lpSubKey,
              Pointer<IntPtr> phkResult)>('RegCreateKeyW');
      expect(RegCreateKey, isA<Function>());
    });
    test('Can instantiate RegCreateKeyEx', () {
      final advapi32 = DynamicLibrary.open('advapi32.dll');
      final RegCreateKeyEx = advapi32.lookupFunction<
          Int32 Function(
              IntPtr hKey,
              Pointer<Utf16> lpSubKey,
              Uint32 Reserved,
              Pointer<Utf16> lpClass,
              Uint32 dwOptions,
              Uint32 samDesired,
              Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
              Pointer<IntPtr> phkResult,
              Pointer<Uint32> lpdwDisposition),
          int Function(
              int hKey,
              Pointer<Utf16> lpSubKey,
              int Reserved,
              Pointer<Utf16> lpClass,
              int dwOptions,
              int samDesired,
              Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
              Pointer<IntPtr> phkResult,
              Pointer<Uint32> lpdwDisposition)>('RegCreateKeyExW');
      expect(RegCreateKeyEx, isA<Function>());
    });
    test('Can instantiate RegCreateKeyTransacted', () {
      final advapi32 = DynamicLibrary.open('advapi32.dll');
      final RegCreateKeyTransacted = advapi32.lookupFunction<
          Int32 Function(
              IntPtr hKey,
              Pointer<Utf16> lpSubKey,
              Uint32 Reserved,
              Pointer<Utf16> lpClass,
              Uint32 dwOptions,
              Uint32 samDesired,
              Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
              Pointer<IntPtr> phkResult,
              Pointer<Uint32> lpdwDisposition,
              IntPtr hTransaction,
              Pointer pExtendedParemeter),
          int Function(
              int hKey,
              Pointer<Utf16> lpSubKey,
              int Reserved,
              Pointer<Utf16> lpClass,
              int dwOptions,
              int samDesired,
              Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
              Pointer<IntPtr> phkResult,
              Pointer<Uint32> lpdwDisposition,
              int hTransaction,
              Pointer pExtendedParemeter)>('RegCreateKeyTransactedW');
      expect(RegCreateKeyTransacted, isA<Function>());
    });
    test('Can instantiate RegDeleteKey', () {
      final advapi32 = DynamicLibrary.open('advapi32.dll');
      final RegDeleteKey = advapi32.lookupFunction<
          Int32 Function(IntPtr hKey, Pointer<Utf16> lpSubKey),
          int Function(int hKey, Pointer<Utf16> lpSubKey)>('RegDeleteKeyW');
      expect(RegDeleteKey, isA<Function>());
    });
    test('Can instantiate RegDeleteKeyEx', () {
      final advapi32 = DynamicLibrary.open('advapi32.dll');
      final RegDeleteKeyEx = advapi32.lookupFunction<
          Int32 Function(IntPtr hKey, Pointer<Utf16> lpSubKey,
              Uint32 samDesired, Uint32 Reserved),
          int Function(int hKey, Pointer<Utf16> lpSubKey, int samDesired,
              int Reserved)>('RegDeleteKeyExW');
      expect(RegDeleteKeyEx, isA<Function>());
    });
    test('Can instantiate RegDeleteKeyTransacted', () {
      final advapi32 = DynamicLibrary.open('advapi32.dll');
      final RegDeleteKeyTransacted = advapi32.lookupFunction<
          Int32 Function(
              IntPtr hKey,
              Pointer<Utf16> lpSubKey,
              Uint32 samDesired,
              Uint32 Reserved,
              IntPtr hTransaction,
              Pointer pExtendedParameter),
          int Function(
              int hKey,
              Pointer<Utf16> lpSubKey,
              int samDesired,
              int Reserved,
              int hTransaction,
              Pointer pExtendedParameter)>('RegDeleteKeyTransactedW');
      expect(RegDeleteKeyTransacted, isA<Function>());
    });
    test('Can instantiate RegDeleteKeyValue', () {
      final advapi32 = DynamicLibrary.open('advapi32.dll');
      final RegDeleteKeyValue = advapi32.lookupFunction<
          Int32 Function(
              IntPtr hKey, Pointer<Utf16> lpSubKey, Pointer<Utf16> lpValueName),
          int Function(int hKey, Pointer<Utf16> lpSubKey,
              Pointer<Utf16> lpValueName)>('RegDeleteKeyValueW');
      expect(RegDeleteKeyValue, isA<Function>());
    });
    test('Can instantiate RegDeleteTree', () {
      final advapi32 = DynamicLibrary.open('advapi32.dll');
      final RegDeleteTree = advapi32.lookupFunction<
          Int32 Function(IntPtr hKey, Pointer<Utf16> lpSubKey),
          int Function(int hKey, Pointer<Utf16> lpSubKey)>('RegDeleteTreeW');
      expect(RegDeleteTree, isA<Function>());
    });
    test('Can instantiate RegDeleteValue', () {
      final advapi32 = DynamicLibrary.open('advapi32.dll');
      final RegDeleteValue = advapi32.lookupFunction<
          Int32 Function(IntPtr hKey, Pointer<Utf16> lpValueName),
          int Function(
              int hKey, Pointer<Utf16> lpValueName)>('RegDeleteValueW');
      expect(RegDeleteValue, isA<Function>());
    });
    test('Can instantiate RegDisablePredefinedCache', () {
      final advapi32 = DynamicLibrary.open('advapi32.dll');
      final RegDisablePredefinedCache =
          advapi32.lookupFunction<Int32 Function(), int Function()>(
              'RegDisablePredefinedCache');
      expect(RegDisablePredefinedCache, isA<Function>());
    });
    test('Can instantiate RegDisablePredefinedCacheEx', () {
      final advapi32 = DynamicLibrary.open('advapi32.dll');
      final RegDisablePredefinedCacheEx =
          advapi32.lookupFunction<Int32 Function(), int Function()>(
              'RegDisablePredefinedCacheEx');
      expect(RegDisablePredefinedCacheEx, isA<Function>());
    });
    test('Can instantiate RegDisableReflectionKey', () {
      final advapi32 = DynamicLibrary.open('advapi32.dll');
      final RegDisableReflectionKey = advapi32.lookupFunction<
          Int32 Function(IntPtr hBase),
          int Function(int hBase)>('RegDisableReflectionKey');
      expect(RegDisableReflectionKey, isA<Function>());
    });
    test('Can instantiate RegEnableReflectionKey', () {
      final advapi32 = DynamicLibrary.open('advapi32.dll');
      final RegEnableReflectionKey = advapi32.lookupFunction<
          Int32 Function(IntPtr hBase),
          int Function(int hBase)>('RegEnableReflectionKey');
      expect(RegEnableReflectionKey, isA<Function>());
    });
    test('Can instantiate RegEnumKey', () {
      final advapi32 = DynamicLibrary.open('advapi32.dll');
      final RegEnumKey = advapi32.lookupFunction<
          Int32 Function(IntPtr hKey, Uint32 dwIndex, Pointer<Utf16> lpName,
              Uint32 cchName),
          int Function(int hKey, int dwIndex, Pointer<Utf16> lpName,
              int cchName)>('RegEnumKeyW');
      expect(RegEnumKey, isA<Function>());
    });
    test('Can instantiate RegEnumKeyEx', () {
      final advapi32 = DynamicLibrary.open('advapi32.dll');
      final RegEnumKeyEx = advapi32.lookupFunction<
          Int32 Function(
              IntPtr hKey,
              Uint32 dwIndex,
              Pointer<Utf16> lpName,
              Pointer<Uint32> lpcchName,
              Pointer<Uint32> lpReserved,
              Pointer<Utf16> lpClass,
              Pointer<Uint32> lpcchClass,
              Pointer<FILETIME> lpftLastWriteTime),
          int Function(
              int hKey,
              int dwIndex,
              Pointer<Utf16> lpName,
              Pointer<Uint32> lpcchName,
              Pointer<Uint32> lpReserved,
              Pointer<Utf16> lpClass,
              Pointer<Uint32> lpcchClass,
              Pointer<FILETIME> lpftLastWriteTime)>('RegEnumKeyExW');
      expect(RegEnumKeyEx, isA<Function>());
    });
    test('Can instantiate RegEnumValue', () {
      final advapi32 = DynamicLibrary.open('advapi32.dll');
      final RegEnumValue = advapi32.lookupFunction<
          Int32 Function(
              IntPtr hKey,
              Uint32 dwIndex,
              Pointer<Utf16> lpValueName,
              Pointer<Uint32> lpcchValueName,
              Pointer<Uint32> lpReserved,
              Pointer<Uint32> lpType,
              Pointer<Uint8> lpData,
              Pointer<Uint32> lpcbData),
          int Function(
              int hKey,
              int dwIndex,
              Pointer<Utf16> lpValueName,
              Pointer<Uint32> lpcchValueName,
              Pointer<Uint32> lpReserved,
              Pointer<Uint32> lpType,
              Pointer<Uint8> lpData,
              Pointer<Uint32> lpcbData)>('RegEnumValueW');
      expect(RegEnumValue, isA<Function>());
    });
    test('Can instantiate RegFlushKey', () {
      final advapi32 = DynamicLibrary.open('advapi32.dll');
      final RegFlushKey = advapi32.lookupFunction<Int32 Function(IntPtr hKey),
          int Function(int hKey)>('RegFlushKey');
      expect(RegFlushKey, isA<Function>());
    });
    test('Can instantiate RegGetValue', () {
      final advapi32 = DynamicLibrary.open('advapi32.dll');
      final RegGetValue = advapi32.lookupFunction<
          Int32 Function(
              IntPtr hkey,
              Pointer<Utf16> lpSubKey,
              Pointer<Utf16> lpValue,
              Uint32 dwFlags,
              Pointer<Uint32> pdwType,
              Pointer pvData,
              Pointer<Uint32> pcbData),
          int Function(
              int hkey,
              Pointer<Utf16> lpSubKey,
              Pointer<Utf16> lpValue,
              int dwFlags,
              Pointer<Uint32> pdwType,
              Pointer pvData,
              Pointer<Uint32> pcbData)>('RegGetValueW');
      expect(RegGetValue, isA<Function>());
    });
    test('Can instantiate RegLoadAppKey', () {
      final advapi32 = DynamicLibrary.open('advapi32.dll');
      final RegLoadAppKey = advapi32.lookupFunction<
          Int32 Function(Pointer<Utf16> lpFile, Pointer<IntPtr> phkResult,
              Uint32 samDesired, Uint32 dwOptions, Uint32 Reserved),
          int Function(Pointer<Utf16> lpFile, Pointer<IntPtr> phkResult,
              int samDesired, int dwOptions, int Reserved)>('RegLoadAppKeyW');
      expect(RegLoadAppKey, isA<Function>());
    });
    test('Can instantiate RegLoadKey', () {
      final advapi32 = DynamicLibrary.open('advapi32.dll');
      final RegLoadKey = advapi32.lookupFunction<
          Int32 Function(
              IntPtr hKey, Pointer<Utf16> lpSubKey, Pointer<Utf16> lpFile),
          int Function(int hKey, Pointer<Utf16> lpSubKey,
              Pointer<Utf16> lpFile)>('RegLoadKeyW');
      expect(RegLoadKey, isA<Function>());
    });
    test('Can instantiate RegLoadMUIString', () {
      final advapi32 = DynamicLibrary.open('advapi32.dll');
      final RegLoadMUIString = advapi32.lookupFunction<
          Int32 Function(
              IntPtr hKey,
              Pointer<Utf16> pszValue,
              Pointer<Utf16> pszOutBuf,
              Uint32 cbOutBuf,
              Pointer<Uint32> pcbData,
              Uint32 Flags,
              Pointer<Utf16> pszDirectory),
          int Function(
              int hKey,
              Pointer<Utf16> pszValue,
              Pointer<Utf16> pszOutBuf,
              int cbOutBuf,
              Pointer<Uint32> pcbData,
              int Flags,
              Pointer<Utf16> pszDirectory)>('RegLoadMUIStringW');
      expect(RegLoadMUIString, isA<Function>());
    });
    test('Can instantiate RegNotifyChangeKeyValue', () {
      final advapi32 = DynamicLibrary.open('advapi32.dll');
      final RegNotifyChangeKeyValue = advapi32.lookupFunction<
          Int32 Function(IntPtr hKey, Int32 bWatchSubtree,
              Uint32 dwNotifyFilter, IntPtr hEvent, Int32 fAsynchronous),
          int Function(int hKey, int bWatchSubtree, int dwNotifyFilter,
              int hEvent, int fAsynchronous)>('RegNotifyChangeKeyValue');
      expect(RegNotifyChangeKeyValue, isA<Function>());
    });
    test('Can instantiate RegOpenCurrentUser', () {
      final advapi32 = DynamicLibrary.open('advapi32.dll');
      final RegOpenCurrentUser = advapi32.lookupFunction<
          Int32 Function(Uint32 samDesired, Pointer<IntPtr> phkResult),
          int Function(
              int samDesired, Pointer<IntPtr> phkResult)>('RegOpenCurrentUser');
      expect(RegOpenCurrentUser, isA<Function>());
    });
    test('Can instantiate RegOpenKey', () {
      final advapi32 = DynamicLibrary.open('advapi32.dll');
      final RegOpenKey = advapi32.lookupFunction<
          Int32 Function(
              IntPtr hKey, Pointer<Utf16> lpSubKey, Pointer<IntPtr> phkResult),
          int Function(int hKey, Pointer<Utf16> lpSubKey,
              Pointer<IntPtr> phkResult)>('RegOpenKeyW');
      expect(RegOpenKey, isA<Function>());
    });
    test('Can instantiate RegOpenKeyEx', () {
      final advapi32 = DynamicLibrary.open('advapi32.dll');
      final RegOpenKeyEx = advapi32.lookupFunction<
          Int32 Function(IntPtr hKey, Pointer<Utf16> lpSubKey, Uint32 ulOptions,
              Uint32 samDesired, Pointer<IntPtr> phkResult),
          int Function(int hKey, Pointer<Utf16> lpSubKey, int ulOptions,
              int samDesired, Pointer<IntPtr> phkResult)>('RegOpenKeyExW');
      expect(RegOpenKeyEx, isA<Function>());
    });
    test('Can instantiate RegOpenKeyTransacted', () {
      final advapi32 = DynamicLibrary.open('advapi32.dll');
      final RegOpenKeyTransacted = advapi32.lookupFunction<
          Int32 Function(
              IntPtr hKey,
              Pointer<Utf16> lpSubKey,
              Uint32 ulOptions,
              Uint32 samDesired,
              Pointer<IntPtr> phkResult,
              IntPtr hTransaction,
              Pointer pExtendedParemeter),
          int Function(
              int hKey,
              Pointer<Utf16> lpSubKey,
              int ulOptions,
              int samDesired,
              Pointer<IntPtr> phkResult,
              int hTransaction,
              Pointer pExtendedParemeter)>('RegOpenKeyTransactedW');
      expect(RegOpenKeyTransacted, isA<Function>());
    });
    test('Can instantiate RegOpenUserClassesRoot', () {
      final advapi32 = DynamicLibrary.open('advapi32.dll');
      final RegOpenUserClassesRoot = advapi32.lookupFunction<
          Int32 Function(IntPtr hToken, Uint32 dwOptions, Uint32 samDesired,
              Pointer<IntPtr> phkResult),
          int Function(int hToken, int dwOptions, int samDesired,
              Pointer<IntPtr> phkResult)>('RegOpenUserClassesRoot');
      expect(RegOpenUserClassesRoot, isA<Function>());
    });
    test('Can instantiate RegOverridePredefKey', () {
      final advapi32 = DynamicLibrary.open('advapi32.dll');
      final RegOverridePredefKey = advapi32.lookupFunction<
          Int32 Function(IntPtr hKey, IntPtr hNewHKey),
          int Function(int hKey, int hNewHKey)>('RegOverridePredefKey');
      expect(RegOverridePredefKey, isA<Function>());
    });
    test('Can instantiate RegQueryInfoKey', () {
      final advapi32 = DynamicLibrary.open('advapi32.dll');
      final RegQueryInfoKey = advapi32.lookupFunction<
          Int32 Function(
              IntPtr hKey,
              Pointer<Utf16> lpClass,
              Pointer<Uint32> lpcchClass,
              Pointer<Uint32> lpReserved,
              Pointer<Uint32> lpcSubKeys,
              Pointer<Uint32> lpcbMaxSubKeyLen,
              Pointer<Uint32> lpcbMaxClassLen,
              Pointer<Uint32> lpcValues,
              Pointer<Uint32> lpcbMaxValueNameLen,
              Pointer<Uint32> lpcbMaxValueLen,
              Pointer<Uint32> lpcbSecurityDescriptor,
              Pointer<FILETIME> lpftLastWriteTime),
          int Function(
              int hKey,
              Pointer<Utf16> lpClass,
              Pointer<Uint32> lpcchClass,
              Pointer<Uint32> lpReserved,
              Pointer<Uint32> lpcSubKeys,
              Pointer<Uint32> lpcbMaxSubKeyLen,
              Pointer<Uint32> lpcbMaxClassLen,
              Pointer<Uint32> lpcValues,
              Pointer<Uint32> lpcbMaxValueNameLen,
              Pointer<Uint32> lpcbMaxValueLen,
              Pointer<Uint32> lpcbSecurityDescriptor,
              Pointer<FILETIME> lpftLastWriteTime)>('RegQueryInfoKeyW');
      expect(RegQueryInfoKey, isA<Function>());
    });
    test('Can instantiate RegQueryMultipleValues', () {
      final advapi32 = DynamicLibrary.open('advapi32.dll');
      final RegQueryMultipleValues = advapi32.lookupFunction<
          Int32 Function(IntPtr hKey, Pointer<VALENT> val_list, Uint32 num_vals,
              Pointer<Utf16> lpValueBuf, Pointer<Uint32> ldwTotsize),
          int Function(
              int hKey,
              Pointer<VALENT> val_list,
              int num_vals,
              Pointer<Utf16> lpValueBuf,
              Pointer<Uint32> ldwTotsize)>('RegQueryMultipleValuesW');
      expect(RegQueryMultipleValues, isA<Function>());
    });
    test('Can instantiate RegQueryReflectionKey', () {
      final advapi32 = DynamicLibrary.open('advapi32.dll');
      final RegQueryReflectionKey = advapi32.lookupFunction<
          Int32 Function(IntPtr hBase, Pointer<Int32> bIsReflectionDisabled),
          int Function(int hBase,
              Pointer<Int32> bIsReflectionDisabled)>('RegQueryReflectionKey');
      expect(RegQueryReflectionKey, isA<Function>());
    });
    test('Can instantiate RegQueryValue', () {
      final advapi32 = DynamicLibrary.open('advapi32.dll');
      final RegQueryValue = advapi32.lookupFunction<
          Int32 Function(IntPtr hKey, Pointer<Utf16> lpSubKey,
              Pointer<Utf16> lpData, Pointer<Int32> lpcbData),
          int Function(int hKey, Pointer<Utf16> lpSubKey, Pointer<Utf16> lpData,
              Pointer<Int32> lpcbData)>('RegQueryValueW');
      expect(RegQueryValue, isA<Function>());
    });
    test('Can instantiate RegQueryValueEx', () {
      final advapi32 = DynamicLibrary.open('advapi32.dll');
      final RegQueryValueEx = advapi32.lookupFunction<
          Int32 Function(
              IntPtr hKey,
              Pointer<Utf16> lpValueName,
              Pointer<Uint32> lpReserved,
              Pointer<Uint32> lpType,
              Pointer<Uint8> lpData,
              Pointer<Uint32> lpcbData),
          int Function(
              int hKey,
              Pointer<Utf16> lpValueName,
              Pointer<Uint32> lpReserved,
              Pointer<Uint32> lpType,
              Pointer<Uint8> lpData,
              Pointer<Uint32> lpcbData)>('RegQueryValueExW');
      expect(RegQueryValueEx, isA<Function>());
    });
    test('Can instantiate RegReplaceKey', () {
      final advapi32 = DynamicLibrary.open('advapi32.dll');
      final RegReplaceKey = advapi32.lookupFunction<
          Int32 Function(IntPtr hKey, Pointer<Utf16> lpSubKey,
              Pointer<Utf16> lpNewFile, Pointer<Utf16> lpOldFile),
          int Function(
              int hKey,
              Pointer<Utf16> lpSubKey,
              Pointer<Utf16> lpNewFile,
              Pointer<Utf16> lpOldFile)>('RegReplaceKeyW');
      expect(RegReplaceKey, isA<Function>());
    });
    test('Can instantiate RegRestoreKey', () {
      final advapi32 = DynamicLibrary.open('advapi32.dll');
      final RegRestoreKey = advapi32.lookupFunction<
          Int32 Function(IntPtr hKey, Pointer<Utf16> lpFile, Uint32 dwFlags),
          int Function(
              int hKey, Pointer<Utf16> lpFile, int dwFlags)>('RegRestoreKeyW');
      expect(RegRestoreKey, isA<Function>());
    });
    test('Can instantiate RegSaveKey', () {
      final advapi32 = DynamicLibrary.open('advapi32.dll');
      final RegSaveKey = advapi32.lookupFunction<
              Int32 Function(IntPtr hKey, Pointer<Utf16> lpFile,
                  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes),
              int Function(int hKey, Pointer<Utf16> lpFile,
                  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes)>(
          'RegSaveKeyW');
      expect(RegSaveKey, isA<Function>());
    });
    test('Can instantiate RegSaveKeyEx', () {
      final advapi32 = DynamicLibrary.open('advapi32.dll');
      final RegSaveKeyEx = advapi32.lookupFunction<
          Int32 Function(IntPtr hKey, Pointer<Utf16> lpFile,
              Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes, Uint32 Flags),
          int Function(
              int hKey,
              Pointer<Utf16> lpFile,
              Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
              int Flags)>('RegSaveKeyExW');
      expect(RegSaveKeyEx, isA<Function>());
    });
    test('Can instantiate RegSetKeyValue', () {
      final advapi32 = DynamicLibrary.open('advapi32.dll');
      final RegSetKeyValue = advapi32.lookupFunction<
          Int32 Function(
              IntPtr hKey,
              Pointer<Utf16> lpSubKey,
              Pointer<Utf16> lpValueName,
              Uint32 dwType,
              Pointer lpData,
              Uint32 cbData),
          int Function(
              int hKey,
              Pointer<Utf16> lpSubKey,
              Pointer<Utf16> lpValueName,
              int dwType,
              Pointer lpData,
              int cbData)>('RegSetKeyValueW');
      expect(RegSetKeyValue, isA<Function>());
    });
    test('Can instantiate RegSetValue', () {
      final advapi32 = DynamicLibrary.open('advapi32.dll');
      final RegSetValue = advapi32.lookupFunction<
          Int32 Function(IntPtr hKey, Pointer<Utf16> lpSubKey, Uint32 dwType,
              Pointer<Utf16> lpData, Uint32 cbData),
          int Function(int hKey, Pointer<Utf16> lpSubKey, int dwType,
              Pointer<Utf16> lpData, int cbData)>('RegSetValueW');
      expect(RegSetValue, isA<Function>());
    });
    test('Can instantiate RegSetValueEx', () {
      final advapi32 = DynamicLibrary.open('advapi32.dll');
      final RegSetValueEx = advapi32.lookupFunction<
          Int32 Function(
              IntPtr hKey,
              Pointer<Utf16> lpValueName,
              Uint32 Reserved,
              Uint32 dwType,
              Pointer<Uint8> lpData,
              Uint32 cbData),
          int Function(int hKey, Pointer<Utf16> lpValueName, int Reserved,
              int dwType, Pointer<Uint8> lpData, int cbData)>('RegSetValueExW');
      expect(RegSetValueEx, isA<Function>());
    });
    test('Can instantiate RegUnLoadKey', () {
      final advapi32 = DynamicLibrary.open('advapi32.dll');
      final RegUnLoadKey = advapi32.lookupFunction<
          Int32 Function(IntPtr hKey, Pointer<Utf16> lpSubKey),
          int Function(int hKey, Pointer<Utf16> lpSubKey)>('RegUnLoadKeyW');
      expect(RegUnLoadKey, isA<Function>());
    });
  });

  group('Test dxva2 functions', () {
    test('Can instantiate DestroyPhysicalMonitor', () {
      final dxva2 = DynamicLibrary.open('dxva2.dll');
      final DestroyPhysicalMonitor = dxva2.lookupFunction<
          Int32 Function(IntPtr hMonitor),
          int Function(int hMonitor)>('DestroyPhysicalMonitor');
      expect(DestroyPhysicalMonitor, isA<Function>());
    });
    test('Can instantiate DestroyPhysicalMonitors', () {
      final dxva2 = DynamicLibrary.open('dxva2.dll');
      final DestroyPhysicalMonitors = dxva2.lookupFunction<
              Int32 Function(Uint32 dwPhysicalMonitorArraySize,
                  Pointer<PHYSICAL_MONITOR> pPhysicalMonitorArray),
              int Function(int dwPhysicalMonitorArraySize,
                  Pointer<PHYSICAL_MONITOR> pPhysicalMonitorArray)>(
          'DestroyPhysicalMonitors');
      expect(DestroyPhysicalMonitors, isA<Function>());
    });
    test('Can instantiate GetMonitorBrightness', () {
      final dxva2 = DynamicLibrary.open('dxva2.dll');
      final GetMonitorBrightness = dxva2.lookupFunction<
          Int32 Function(
              IntPtr hMonitor,
              Pointer<Uint32> pdwMinimumBrightness,
              Pointer<Uint32> pdwCurrentBrightness,
              Pointer<Uint32> pdwMaximumBrightness),
          int Function(
              int hMonitor,
              Pointer<Uint32> pdwMinimumBrightness,
              Pointer<Uint32> pdwCurrentBrightness,
              Pointer<Uint32> pdwMaximumBrightness)>('GetMonitorBrightness');
      expect(GetMonitorBrightness, isA<Function>());
    });
    test('Can instantiate GetMonitorCapabilities', () {
      final dxva2 = DynamicLibrary.open('dxva2.dll');
      final GetMonitorCapabilities = dxva2.lookupFunction<
              Int32 Function(
                  IntPtr hMonitor,
                  Pointer<Uint32> pdwMonitorCapabilities,
                  Pointer<Uint32> pdwSupportedColorTemperatures),
              int Function(int hMonitor, Pointer<Uint32> pdwMonitorCapabilities,
                  Pointer<Uint32> pdwSupportedColorTemperatures)>(
          'GetMonitorCapabilities');
      expect(GetMonitorCapabilities, isA<Function>());
    });
    test('Can instantiate GetMonitorColorTemperature', () {
      final dxva2 = DynamicLibrary.open('dxva2.dll');
      final GetMonitorColorTemperature = dxva2.lookupFunction<
              Int32 Function(
                  IntPtr hMonitor, Pointer<Uint32> pctCurrentColorTemperature),
              int Function(
                  int hMonitor, Pointer<Uint32> pctCurrentColorTemperature)>(
          'GetMonitorColorTemperature');
      expect(GetMonitorColorTemperature, isA<Function>());
    });
    test('Can instantiate GetMonitorContrast', () {
      final dxva2 = DynamicLibrary.open('dxva2.dll');
      final GetMonitorContrast = dxva2.lookupFunction<
          Int32 Function(
              IntPtr hMonitor,
              Pointer<Uint32> pdwMinimumContrast,
              Pointer<Uint32> pdwCurrentContrast,
              Pointer<Uint32> pdwMaximumContrast),
          int Function(
              int hMonitor,
              Pointer<Uint32> pdwMinimumContrast,
              Pointer<Uint32> pdwCurrentContrast,
              Pointer<Uint32> pdwMaximumContrast)>('GetMonitorContrast');
      expect(GetMonitorContrast, isA<Function>());
    });
    test('Can instantiate GetMonitorDisplayAreaPosition', () {
      final dxva2 = DynamicLibrary.open('dxva2.dll');
      final GetMonitorDisplayAreaPosition = dxva2.lookupFunction<
              Int32 Function(
                  IntPtr hMonitor,
                  Uint32 ptPositionType,
                  Pointer<Uint32> pdwMinimumPosition,
                  Pointer<Uint32> pdwCurrentPosition,
                  Pointer<Uint32> pdwMaximumPosition),
              int Function(
                  int hMonitor,
                  int ptPositionType,
                  Pointer<Uint32> pdwMinimumPosition,
                  Pointer<Uint32> pdwCurrentPosition,
                  Pointer<Uint32> pdwMaximumPosition)>(
          'GetMonitorDisplayAreaPosition');
      expect(GetMonitorDisplayAreaPosition, isA<Function>());
    });
    test('Can instantiate GetMonitorDisplayAreaSize', () {
      final dxva2 = DynamicLibrary.open('dxva2.dll');
      final GetMonitorDisplayAreaSize = dxva2.lookupFunction<
              Int32 Function(
                  IntPtr hMonitor,
                  Uint32 stSizeType,
                  Pointer<Uint32> pdwMinimumWidthOrHeight,
                  Pointer<Uint32> pdwCurrentWidthOrHeight,
                  Pointer<Uint32> pdwMaximumWidthOrHeight),
              int Function(
                  int hMonitor,
                  int stSizeType,
                  Pointer<Uint32> pdwMinimumWidthOrHeight,
                  Pointer<Uint32> pdwCurrentWidthOrHeight,
                  Pointer<Uint32> pdwMaximumWidthOrHeight)>(
          'GetMonitorDisplayAreaSize');
      expect(GetMonitorDisplayAreaSize, isA<Function>());
    });
    test('Can instantiate GetMonitorRedGreenOrBlueDrive', () {
      final dxva2 = DynamicLibrary.open('dxva2.dll');
      final GetMonitorRedGreenOrBlueDrive = dxva2.lookupFunction<
              Int32 Function(
                  IntPtr hMonitor,
                  Uint32 dtDriveType,
                  Pointer<Uint32> pdwMinimumDrive,
                  Pointer<Uint32> pdwCurrentDrive,
                  Pointer<Uint32> pdwMaximumDrive),
              int Function(
                  int hMonitor,
                  int dtDriveType,
                  Pointer<Uint32> pdwMinimumDrive,
                  Pointer<Uint32> pdwCurrentDrive,
                  Pointer<Uint32> pdwMaximumDrive)>(
          'GetMonitorRedGreenOrBlueDrive');
      expect(GetMonitorRedGreenOrBlueDrive, isA<Function>());
    });
    test('Can instantiate GetMonitorRedGreenOrBlueGain', () {
      final dxva2 = DynamicLibrary.open('dxva2.dll');
      final GetMonitorRedGreenOrBlueGain = dxva2.lookupFunction<
          Int32 Function(
              IntPtr hMonitor,
              Uint32 gtGainType,
              Pointer<Uint32> pdwMinimumGain,
              Pointer<Uint32> pdwCurrentGain,
              Pointer<Uint32> pdwMaximumGain),
          int Function(
              int hMonitor,
              int gtGainType,
              Pointer<Uint32> pdwMinimumGain,
              Pointer<Uint32> pdwCurrentGain,
              Pointer<Uint32> pdwMaximumGain)>('GetMonitorRedGreenOrBlueGain');
      expect(GetMonitorRedGreenOrBlueGain, isA<Function>());
    });
    test('Can instantiate GetMonitorTechnologyType', () {
      final dxva2 = DynamicLibrary.open('dxva2.dll');
      final GetMonitorTechnologyType = dxva2.lookupFunction<
              Int32 Function(
                  IntPtr hMonitor, Pointer<Uint32> pdtyDisplayTechnologyType),
              int Function(
                  int hMonitor, Pointer<Uint32> pdtyDisplayTechnologyType)>(
          'GetMonitorTechnologyType');
      expect(GetMonitorTechnologyType, isA<Function>());
    });
    test('Can instantiate GetNumberOfPhysicalMonitorsFromHMONITOR', () {
      final dxva2 = DynamicLibrary.open('dxva2.dll');
      final GetNumberOfPhysicalMonitorsFromHMONITOR = dxva2.lookupFunction<
              Int32 Function(
                  IntPtr hMonitor, Pointer<Uint32> pdwNumberOfPhysicalMonitors),
              int Function(
                  int hMonitor, Pointer<Uint32> pdwNumberOfPhysicalMonitors)>(
          'GetNumberOfPhysicalMonitorsFromHMONITOR');
      expect(GetNumberOfPhysicalMonitorsFromHMONITOR, isA<Function>());
    });
    test('Can instantiate GetPhysicalMonitorsFromHMONITOR', () {
      final dxva2 = DynamicLibrary.open('dxva2.dll');
      final GetPhysicalMonitorsFromHMONITOR = dxva2.lookupFunction<
              Int32 Function(IntPtr hMonitor, Uint32 dwPhysicalMonitorArraySize,
                  Pointer<PHYSICAL_MONITOR> pPhysicalMonitorArray),
              int Function(int hMonitor, int dwPhysicalMonitorArraySize,
                  Pointer<PHYSICAL_MONITOR> pPhysicalMonitorArray)>(
          'GetPhysicalMonitorsFromHMONITOR');
      expect(GetPhysicalMonitorsFromHMONITOR, isA<Function>());
    });
    test('Can instantiate SaveCurrentMonitorSettings', () {
      final dxva2 = DynamicLibrary.open('dxva2.dll');
      final SaveCurrentMonitorSettings = dxva2.lookupFunction<
          Int32 Function(IntPtr hMonitor),
          int Function(int hMonitor)>('SaveCurrentMonitorSettings');
      expect(SaveCurrentMonitorSettings, isA<Function>());
    });
    test('Can instantiate SetMonitorBrightness', () {
      final dxva2 = DynamicLibrary.open('dxva2.dll');
      final SetMonitorBrightness = dxva2.lookupFunction<
          Int32 Function(IntPtr hMonitor, Uint32 dwNewBrightness),
          int Function(
              int hMonitor, int dwNewBrightness)>('SetMonitorBrightness');
      expect(SetMonitorBrightness, isA<Function>());
    });
    test('Can instantiate SetMonitorColorTemperature', () {
      final dxva2 = DynamicLibrary.open('dxva2.dll');
      final SetMonitorColorTemperature = dxva2.lookupFunction<
          Int32 Function(IntPtr hMonitor, Uint32 ctCurrentColorTemperature),
          int Function(int hMonitor,
              int ctCurrentColorTemperature)>('SetMonitorColorTemperature');
      expect(SetMonitorColorTemperature, isA<Function>());
    });
    test('Can instantiate SetMonitorContrast', () {
      final dxva2 = DynamicLibrary.open('dxva2.dll');
      final SetMonitorContrast = dxva2.lookupFunction<
          Int32 Function(IntPtr hMonitor, Uint32 dwNewContrast),
          int Function(int hMonitor, int dwNewContrast)>('SetMonitorContrast');
      expect(SetMonitorContrast, isA<Function>());
    });
    test('Can instantiate SetMonitorDisplayAreaPosition', () {
      final dxva2 = DynamicLibrary.open('dxva2.dll');
      final SetMonitorDisplayAreaPosition = dxva2.lookupFunction<
          Int32 Function(
              IntPtr hMonitor, Uint32 ptPositionType, Uint32 dwNewPosition),
          int Function(int hMonitor, int ptPositionType,
              int dwNewPosition)>('SetMonitorDisplayAreaPosition');
      expect(SetMonitorDisplayAreaPosition, isA<Function>());
    });
    test('Can instantiate SetMonitorDisplayAreaSize', () {
      final dxva2 = DynamicLibrary.open('dxva2.dll');
      final SetMonitorDisplayAreaSize = dxva2.lookupFunction<
          Int32 Function(IntPtr hMonitor, Uint32 stSizeType,
              Uint32 dwNewDisplayAreaWidthOrHeight),
          int Function(int hMonitor, int stSizeType,
              int dwNewDisplayAreaWidthOrHeight)>('SetMonitorDisplayAreaSize');
      expect(SetMonitorDisplayAreaSize, isA<Function>());
    });
    test('Can instantiate SetMonitorRedGreenOrBlueDrive', () {
      final dxva2 = DynamicLibrary.open('dxva2.dll');
      final SetMonitorRedGreenOrBlueDrive = dxva2.lookupFunction<
          Int32 Function(
              IntPtr hMonitor, Uint32 dtDriveType, Uint32 dwNewDrive),
          int Function(int hMonitor, int dtDriveType,
              int dwNewDrive)>('SetMonitorRedGreenOrBlueDrive');
      expect(SetMonitorRedGreenOrBlueDrive, isA<Function>());
    });
    test('Can instantiate SetMonitorRedGreenOrBlueGain', () {
      final dxva2 = DynamicLibrary.open('dxva2.dll');
      final SetMonitorRedGreenOrBlueGain = dxva2.lookupFunction<
          Int32 Function(IntPtr hMonitor, Uint32 gtGainType, Uint32 dwNewGain),
          int Function(int hMonitor, int gtGainType,
              int dwNewGain)>('SetMonitorRedGreenOrBlueGain');
      expect(SetMonitorRedGreenOrBlueGain, isA<Function>());
    });
  });

  group('Test oleaut32 functions', () {
    test('Can instantiate DosDateTimeToVariantTime', () {
      final oleaut32 = DynamicLibrary.open('oleaut32.dll');
      final DosDateTimeToVariantTime = oleaut32.lookupFunction<
          Int32 Function(
              Uint16 wDosDate, Uint16 wDosTime, Pointer<Double> pvtime),
          int Function(int wDosDate, int wDosTime,
              Pointer<Double> pvtime)>('DosDateTimeToVariantTime');
      expect(DosDateTimeToVariantTime, isA<Function>());
    });
    test('Can instantiate GetActiveObject', () {
      final oleaut32 = DynamicLibrary.open('oleaut32.dll');
      final GetActiveObject = oleaut32.lookupFunction<
          Int32 Function(
              Pointer<GUID> rclsid, Pointer pvReserved, Pointer<Pointer> ppunk),
          int Function(Pointer<GUID> rclsid, Pointer pvReserved,
              Pointer<Pointer> ppunk)>('GetActiveObject');
      expect(GetActiveObject, isA<Function>());
    });
    test('Can instantiate SysAllocString', () {
      final oleaut32 = DynamicLibrary.open('oleaut32.dll');
      final SysAllocString = oleaut32.lookupFunction<
          Pointer<Utf16> Function(Pointer<Utf16> psz),
          Pointer<Utf16> Function(Pointer<Utf16> psz)>('SysAllocString');
      expect(SysAllocString, isA<Function>());
    });
    test('Can instantiate SysAllocStringByteLen', () {
      final oleaut32 = DynamicLibrary.open('oleaut32.dll');
      final SysAllocStringByteLen = oleaut32.lookupFunction<
          Pointer<Utf16> Function(Pointer<Utf8> psz, Uint32 len),
          Pointer<Utf16> Function(
              Pointer<Utf8> psz, int len)>('SysAllocStringByteLen');
      expect(SysAllocStringByteLen, isA<Function>());
    });
    test('Can instantiate SysAllocStringLen', () {
      final oleaut32 = DynamicLibrary.open('oleaut32.dll');
      final SysAllocStringLen = oleaut32.lookupFunction<
          Pointer<Utf16> Function(Pointer<Utf16> strIn, Uint32 ui),
          Pointer<Utf16> Function(
              Pointer<Utf16> strIn, int ui)>('SysAllocStringLen');
      expect(SysAllocStringLen, isA<Function>());
    });
    test('Can instantiate SysFreeString', () {
      final oleaut32 = DynamicLibrary.open('oleaut32.dll');
      final SysFreeString = oleaut32.lookupFunction<
          Void Function(Pointer<Utf16> bstrString),
          void Function(Pointer<Utf16> bstrString)>('SysFreeString');
      expect(SysFreeString, isA<Function>());
    });
    test('Can instantiate SysReAllocString', () {
      final oleaut32 = DynamicLibrary.open('oleaut32.dll');
      final SysReAllocString = oleaut32.lookupFunction<
          Int32 Function(Pointer<Pointer<Utf16>> pbstr, Pointer<Utf16> psz),
          int Function(Pointer<Pointer<Utf16>> pbstr,
              Pointer<Utf16> psz)>('SysReAllocString');
      expect(SysReAllocString, isA<Function>());
    });
    test('Can instantiate SysReAllocStringLen', () {
      final oleaut32 = DynamicLibrary.open('oleaut32.dll');
      final SysReAllocStringLen = oleaut32.lookupFunction<
          Int32 Function(
              Pointer<Pointer<Utf16>> pbstr, Pointer<Utf16> psz, Uint32 len),
          int Function(Pointer<Pointer<Utf16>> pbstr, Pointer<Utf16> psz,
              int len)>('SysReAllocStringLen');
      expect(SysReAllocStringLen, isA<Function>());
    });
    test('Can instantiate SysReleaseString', () {
      final oleaut32 = DynamicLibrary.open('oleaut32.dll');
      final SysReleaseString = oleaut32.lookupFunction<
          Void Function(Pointer<Utf16> bstrString),
          void Function(Pointer<Utf16> bstrString)>('SysReleaseString');
      expect(SysReleaseString, isA<Function>());
    });
    test('Can instantiate SysStringByteLen', () {
      final oleaut32 = DynamicLibrary.open('oleaut32.dll');
      final SysStringByteLen = oleaut32.lookupFunction<
          Uint32 Function(Pointer<Utf16> bstr),
          int Function(Pointer<Utf16> bstr)>('SysStringByteLen');
      expect(SysStringByteLen, isA<Function>());
    });
    test('Can instantiate SysStringLen', () {
      final oleaut32 = DynamicLibrary.open('oleaut32.dll');
      final SysStringLen = oleaut32.lookupFunction<
          Uint32 Function(Pointer<Utf16> pbstr),
          int Function(Pointer<Utf16> pbstr)>('SysStringLen');
      expect(SysStringLen, isA<Function>());
    });
    test('Can instantiate VariantChangeType', () {
      final oleaut32 = DynamicLibrary.open('oleaut32.dll');
      final VariantChangeType = oleaut32.lookupFunction<
          Int32 Function(Pointer<VARIANT> pvargDest, Pointer<VARIANT> pvarSrc,
              Uint16 wFlags, Uint16 vt),
          int Function(Pointer<VARIANT> pvargDest, Pointer<VARIANT> pvarSrc,
              int wFlags, int vt)>('VariantChangeType');
      expect(VariantChangeType, isA<Function>());
    });
    test('Can instantiate VariantClear', () {
      final oleaut32 = DynamicLibrary.open('oleaut32.dll');
      final VariantClear = oleaut32.lookupFunction<
          Int32 Function(Pointer<VARIANT> pvarg),
          int Function(Pointer<VARIANT> pvarg)>('VariantClear');
      expect(VariantClear, isA<Function>());
    });
    test('Can instantiate VariantCopy', () {
      final oleaut32 = DynamicLibrary.open('oleaut32.dll');
      final VariantCopy = oleaut32.lookupFunction<
          Int32 Function(Pointer<VARIANT> pvargDest, Pointer<VARIANT> pvargSrc),
          int Function(Pointer<VARIANT> pvargDest,
              Pointer<VARIANT> pvargSrc)>('VariantCopy');
      expect(VariantCopy, isA<Function>());
    });
    test('Can instantiate VariantInit', () {
      final oleaut32 = DynamicLibrary.open('oleaut32.dll');
      final VariantInit = oleaut32.lookupFunction<
          Void Function(Pointer<VARIANT> pvarg),
          void Function(Pointer<VARIANT> pvarg)>('VariantInit');
      expect(VariantInit, isA<Function>());
    });
    test('Can instantiate VariantTimeToDosDateTime', () {
      final oleaut32 = DynamicLibrary.open('oleaut32.dll');
      final VariantTimeToDosDateTime = oleaut32.lookupFunction<
          Int32 Function(Double vtime, Pointer<Uint16> pwDosDate,
              Pointer<Uint16> pwDosTime),
          int Function(double vtime, Pointer<Uint16> pwDosDate,
              Pointer<Uint16> pwDosTime)>('VariantTimeToDosDateTime');
      expect(VariantTimeToDosDateTime, isA<Function>());
    });
    test('Can instantiate VariantTimeToSystemTime', () {
      final oleaut32 = DynamicLibrary.open('oleaut32.dll');
      final VariantTimeToSystemTime = oleaut32.lookupFunction<
          Int32 Function(Double vtime, Pointer<SYSTEMTIME> lpSystemTime),
          int Function(double vtime,
              Pointer<SYSTEMTIME> lpSystemTime)>('VariantTimeToSystemTime');
      expect(VariantTimeToSystemTime, isA<Function>());
    });
  });

  group('Test comctl32 functions', () {
    test('Can instantiate DrawStatusText', () {
      final comctl32 = DynamicLibrary.open('comctl32.dll');
      final DrawStatusText = comctl32.lookupFunction<
          Void Function(IntPtr hDC, Pointer<RECT> lprc, Pointer<Utf16> pszText,
              Uint32 uFlags),
          void Function(int hDC, Pointer<RECT> lprc, Pointer<Utf16> pszText,
              int uFlags)>('DrawStatusTextW');
      expect(DrawStatusText, isA<Function>());
    });
    test('Can instantiate InitCommonControlsEx', () {
      final comctl32 = DynamicLibrary.open('comctl32.dll');
      final InitCommonControlsEx = comctl32.lookupFunction<
          Int32 Function(Pointer<INITCOMMONCONTROLSEX> picce),
          int Function(
              Pointer<INITCOMMONCONTROLSEX> picce)>('InitCommonControlsEx');
      expect(InitCommonControlsEx, isA<Function>());
    });
  });

  group('Test shell32 functions', () {
    test('Can instantiate FindExecutable', () {
      final shell32 = DynamicLibrary.open('shell32.dll');
      final FindExecutable = shell32.lookupFunction<
          IntPtr Function(Pointer<Utf16> lpFile, Pointer<Utf16> lpDirectory,
              Pointer<Utf16> lpResult),
          int Function(Pointer<Utf16> lpFile, Pointer<Utf16> lpDirectory,
              Pointer<Utf16> lpResult)>('FindExecutableW');
      expect(FindExecutable, isA<Function>());
    });
    test('Can instantiate SHCreateItemFromParsingName', () {
      final shell32 = DynamicLibrary.open('shell32.dll');
      final SHCreateItemFromParsingName = shell32.lookupFunction<
          Int32 Function(Pointer<Utf16> pszPath, Pointer pbc,
              Pointer<GUID> riid, Pointer<Pointer> ppv),
          int Function(Pointer<Utf16> pszPath, Pointer pbc, Pointer<GUID> riid,
              Pointer<Pointer> ppv)>('SHCreateItemFromParsingName');
      expect(SHCreateItemFromParsingName, isA<Function>());
    });
    test('Can instantiate Shell_NotifyIcon', () {
      final shell32 = DynamicLibrary.open('shell32.dll');
      final Shell_NotifyIcon = shell32.lookupFunction<
          Int32 Function(Uint32 dwMessage, Pointer<NOTIFYICONDATA> lpData),
          int Function(int dwMessage,
              Pointer<NOTIFYICONDATA> lpData)>('Shell_NotifyIconW');
      expect(Shell_NotifyIcon, isA<Function>());
    });
    test('Can instantiate ShellAbout', () {
      final shell32 = DynamicLibrary.open('shell32.dll');
      final ShellAbout = shell32.lookupFunction<
          Int32 Function(IntPtr hWnd, Pointer<Utf16> szApp,
              Pointer<Utf16> szOtherStuff, IntPtr hIcon),
          int Function(int hWnd, Pointer<Utf16> szApp,
              Pointer<Utf16> szOtherStuff, int hIcon)>('ShellAboutW');
      expect(ShellAbout, isA<Function>());
    });
    test('Can instantiate ShellExecute', () {
      final shell32 = DynamicLibrary.open('shell32.dll');
      final ShellExecute = shell32.lookupFunction<
          IntPtr Function(
              IntPtr hwnd,
              Pointer<Utf16> lpOperation,
              Pointer<Utf16> lpFile,
              Pointer<Utf16> lpParameters,
              Pointer<Utf16> lpDirectory,
              Int32 nShowCmd),
          int Function(
              int hwnd,
              Pointer<Utf16> lpOperation,
              Pointer<Utf16> lpFile,
              Pointer<Utf16> lpParameters,
              Pointer<Utf16> lpDirectory,
              int nShowCmd)>('ShellExecuteW');
      expect(ShellExecute, isA<Function>());
    });
    test('Can instantiate ShellExecuteEx', () {
      final shell32 = DynamicLibrary.open('shell32.dll');
      final ShellExecuteEx = shell32.lookupFunction<
          Int32 Function(Pointer<SHELLEXECUTEINFO> pExecInfo),
          int Function(Pointer<SHELLEXECUTEINFO> pExecInfo)>('ShellExecuteExW');
      expect(ShellExecuteEx, isA<Function>());
    });
    test('Can instantiate SHEmptyRecycleBin', () {
      final shell32 = DynamicLibrary.open('shell32.dll');
      final SHEmptyRecycleBin = shell32.lookupFunction<
          Int32 Function(
              IntPtr hwnd, Pointer<Utf16> pszRootPath, Uint32 dwFlags),
          int Function(int hwnd, Pointer<Utf16> pszRootPath,
              int dwFlags)>('SHEmptyRecycleBinW');
      expect(SHEmptyRecycleBin, isA<Function>());
    });
    test('Can instantiate SHGetDesktopFolder', () {
      final shell32 = DynamicLibrary.open('shell32.dll');
      final SHGetDesktopFolder = shell32.lookupFunction<
          Int32 Function(Pointer<Pointer> ppshf),
          int Function(Pointer<Pointer> ppshf)>('SHGetDesktopFolder');
      expect(SHGetDesktopFolder, isA<Function>());
    });
    test('Can instantiate SHGetDiskFreeSpaceEx', () {
      final shell32 = DynamicLibrary.open('shell32.dll');
      final SHGetDiskFreeSpaceEx = shell32.lookupFunction<
              Int32 Function(
                  Pointer<Utf16> pszDirectoryName,
                  Pointer<Uint64> pulFreeBytesAvailableToCaller,
                  Pointer<Uint64> pulTotalNumberOfBytes,
                  Pointer<Uint64> pulTotalNumberOfFreeBytes),
              int Function(
                  Pointer<Utf16> pszDirectoryName,
                  Pointer<Uint64> pulFreeBytesAvailableToCaller,
                  Pointer<Uint64> pulTotalNumberOfBytes,
                  Pointer<Uint64> pulTotalNumberOfFreeBytes)>(
          'SHGetDiskFreeSpaceExW');
      expect(SHGetDiskFreeSpaceEx, isA<Function>());
    });
    test('Can instantiate SHGetDriveMedia', () {
      final shell32 = DynamicLibrary.open('shell32.dll');
      final SHGetDriveMedia = shell32.lookupFunction<
          Int32 Function(
              Pointer<Utf16> pszDrive, Pointer<Uint32> pdwMediaContent),
          int Function(Pointer<Utf16> pszDrive,
              Pointer<Uint32> pdwMediaContent)>('SHGetDriveMedia');
      expect(SHGetDriveMedia, isA<Function>());
    });
    test('Can instantiate SHGetFolderPath', () {
      final shell32 = DynamicLibrary.open('shell32.dll');
      final SHGetFolderPath = shell32.lookupFunction<
          Int32 Function(IntPtr hwnd, Int32 csidl, IntPtr hToken,
              Uint32 dwFlags, Pointer<Utf16> pszPath),
          int Function(int hwnd, int csidl, int hToken, int dwFlags,
              Pointer<Utf16> pszPath)>('SHGetFolderPathW');
      expect(SHGetFolderPath, isA<Function>());
    });
    test('Can instantiate SHGetKnownFolderPath', () {
      final shell32 = DynamicLibrary.open('shell32.dll');
      final SHGetKnownFolderPath = shell32.lookupFunction<
          Int32 Function(Pointer<GUID> rfid, Uint32 dwFlags, IntPtr hToken,
              Pointer<Pointer<Utf16>> ppszPath),
          int Function(Pointer<GUID> rfid, int dwFlags, int hToken,
              Pointer<Pointer<Utf16>> ppszPath)>('SHGetKnownFolderPath');
      expect(SHGetKnownFolderPath, isA<Function>());
    });
    test('Can instantiate SHQueryRecycleBin', () {
      final shell32 = DynamicLibrary.open('shell32.dll');
      final SHQueryRecycleBin = shell32.lookupFunction<
          Int32 Function(Pointer<Utf16> pszRootPath,
              Pointer<SHQUERYRBINFO> pSHQueryRBInfo),
          int Function(Pointer<Utf16> pszRootPath,
              Pointer<SHQUERYRBINFO> pSHQueryRBInfo)>('SHQueryRecycleBinW');
      expect(SHQueryRecycleBin, isA<Function>());
    });
  });

  group('Test shcore functions', () {
    if (windowsBuildNumber >= 9600) {
      test('Can instantiate GetDpiForMonitor', () {
        final shcore = DynamicLibrary.open('shcore.dll');
        final GetDpiForMonitor = shcore.lookupFunction<
            Int32 Function(IntPtr hmonitor, Uint32 dpiType,
                Pointer<Uint32> dpiX, Pointer<Uint32> dpiY),
            int Function(int hmonitor, int dpiType, Pointer<Uint32> dpiX,
                Pointer<Uint32> dpiY)>('GetDpiForMonitor');
        expect(GetDpiForMonitor, isA<Function>());
      });
    }
    if (windowsBuildNumber >= 9600) {
      test('Can instantiate GetProcessDpiAwareness', () {
        final shcore = DynamicLibrary.open('shcore.dll');
        final GetProcessDpiAwareness = shcore.lookupFunction<
            Int32 Function(IntPtr hprocess, Pointer<Uint32> value),
            int Function(
                int hprocess, Pointer<Uint32> value)>('GetProcessDpiAwareness');
        expect(GetProcessDpiAwareness, isA<Function>());
      });
    }
    if (windowsBuildNumber >= 9600) {
      test('Can instantiate SetProcessDpiAwareness', () {
        final shcore = DynamicLibrary.open('shcore.dll');
        final SetProcessDpiAwareness = shcore.lookupFunction<
            Int32 Function(Uint32 value),
            int Function(int value)>('SetProcessDpiAwareness');
        expect(SetProcessDpiAwareness, isA<Function>());
      });
    }
  });

  group('Test version functions', () {
    test('Can instantiate GetFileVersionInfo', () {
      final version = DynamicLibrary.open('version.dll');
      final GetFileVersionInfo = version.lookupFunction<
          Int32 Function(Pointer<Utf16> lptstrFilename, Uint32 dwHandle,
              Uint32 dwLen, Pointer lpData),
          int Function(Pointer<Utf16> lptstrFilename, int dwHandle, int dwLen,
              Pointer lpData)>('GetFileVersionInfoW');
      expect(GetFileVersionInfo, isA<Function>());
    });
    test('Can instantiate GetFileVersionInfoEx', () {
      final version = DynamicLibrary.open('version.dll');
      final GetFileVersionInfoEx = version.lookupFunction<
          Int32 Function(Uint32 dwFlags, Pointer<Utf16> lpwstrFilename,
              Uint32 dwHandle, Uint32 dwLen, Pointer lpData),
          int Function(int dwFlags, Pointer<Utf16> lpwstrFilename, int dwHandle,
              int dwLen, Pointer lpData)>('GetFileVersionInfoExW');
      expect(GetFileVersionInfoEx, isA<Function>());
    });
    test('Can instantiate GetFileVersionInfoSize', () {
      final version = DynamicLibrary.open('version.dll');
      final GetFileVersionInfoSize = version.lookupFunction<
          Uint32 Function(
              Pointer<Utf16> lptstrFilename, Pointer<Uint32> lpdwHandle),
          int Function(Pointer<Utf16> lptstrFilename,
              Pointer<Uint32> lpdwHandle)>('GetFileVersionInfoSizeW');
      expect(GetFileVersionInfoSize, isA<Function>());
    });
    test('Can instantiate GetFileVersionInfoSizeEx', () {
      final version = DynamicLibrary.open('version.dll');
      final GetFileVersionInfoSizeEx = version.lookupFunction<
          Uint32 Function(Uint32 dwFlags, Pointer<Utf16> lpwstrFilename,
              Pointer<Uint32> lpdwHandle),
          int Function(int dwFlags, Pointer<Utf16> lpwstrFilename,
              Pointer<Uint32> lpdwHandle)>('GetFileVersionInfoSizeExW');
      expect(GetFileVersionInfoSizeEx, isA<Function>());
    });
    test('Can instantiate VerFindFile', () {
      final version = DynamicLibrary.open('version.dll');
      final VerFindFile = version.lookupFunction<
          Uint32 Function(
              Uint32 uFlags,
              Pointer<Utf16> szFileName,
              Pointer<Utf16> szWinDir,
              Pointer<Utf16> szAppDir,
              Pointer<Utf16> szCurDir,
              Pointer<Uint32> puCurDirLen,
              Pointer<Utf16> szDestDir,
              Pointer<Uint32> puDestDirLen),
          int Function(
              int uFlags,
              Pointer<Utf16> szFileName,
              Pointer<Utf16> szWinDir,
              Pointer<Utf16> szAppDir,
              Pointer<Utf16> szCurDir,
              Pointer<Uint32> puCurDirLen,
              Pointer<Utf16> szDestDir,
              Pointer<Uint32> puDestDirLen)>('VerFindFileW');
      expect(VerFindFile, isA<Function>());
    });
    test('Can instantiate VerInstallFile', () {
      final version = DynamicLibrary.open('version.dll');
      final VerInstallFile = version.lookupFunction<
          Uint32 Function(
              Uint32 uFlags,
              Pointer<Utf16> szSrcFileName,
              Pointer<Utf16> szDestFileName,
              Pointer<Utf16> szSrcDir,
              Pointer<Utf16> szDestDir,
              Pointer<Utf16> szCurDir,
              Pointer<Utf16> szTmpFile,
              Pointer<Uint32> puTmpFileLen),
          int Function(
              int uFlags,
              Pointer<Utf16> szSrcFileName,
              Pointer<Utf16> szDestFileName,
              Pointer<Utf16> szSrcDir,
              Pointer<Utf16> szDestDir,
              Pointer<Utf16> szCurDir,
              Pointer<Utf16> szTmpFile,
              Pointer<Uint32> puTmpFileLen)>('VerInstallFileW');
      expect(VerInstallFile, isA<Function>());
    });
    test('Can instantiate VerQueryValue', () {
      final version = DynamicLibrary.open('version.dll');
      final VerQueryValue = version.lookupFunction<
          Int32 Function(Pointer pBlock, Pointer<Utf16> lpSubBlock,
              Pointer<Pointer> lplpBuffer, Pointer<Uint32> puLen),
          int Function(
              Pointer pBlock,
              Pointer<Utf16> lpSubBlock,
              Pointer<Pointer> lplpBuffer,
              Pointer<Uint32> puLen)>('VerQueryValueW');
      expect(VerQueryValue, isA<Function>());
    });
  });

  group('Test winmm functions', () {
    test('Can instantiate mciGetDeviceID', () {
      final winmm = DynamicLibrary.open('winmm.dll');
      final mciGetDeviceID = winmm.lookupFunction<
          Uint32 Function(Pointer<Utf16> pszDevice),
          int Function(Pointer<Utf16> pszDevice)>('mciGetDeviceIDW');
      expect(mciGetDeviceID, isA<Function>());
    });
    test('Can instantiate mciGetDeviceIDFromElementID', () {
      final winmm = DynamicLibrary.open('winmm.dll');
      final mciGetDeviceIDFromElementID = winmm.lookupFunction<
          Uint32 Function(Uint32 dwElementID, Pointer<Utf16> lpstrType),
          int Function(int dwElementID,
              Pointer<Utf16> lpstrType)>('mciGetDeviceIDFromElementIDW');
      expect(mciGetDeviceIDFromElementID, isA<Function>());
    });
    test('Can instantiate mciGetErrorString', () {
      final winmm = DynamicLibrary.open('winmm.dll');
      final mciGetErrorString = winmm.lookupFunction<
          Int32 Function(Uint32 mcierr, Pointer<Utf16> pszText, Uint32 cchText),
          int Function(int mcierr, Pointer<Utf16> pszText,
              int cchText)>('mciGetErrorStringW');
      expect(mciGetErrorString, isA<Function>());
    });
    test('Can instantiate mciSendCommand', () {
      final winmm = DynamicLibrary.open('winmm.dll');
      final mciSendCommand = winmm.lookupFunction<
          Uint32 Function(
              Uint32 mciId, Uint32 uMsg, IntPtr dwParam1, IntPtr dwParam2),
          int Function(int mciId, int uMsg, int dwParam1,
              int dwParam2)>('mciSendCommandW');
      expect(mciSendCommand, isA<Function>());
    });
    test('Can instantiate mciSendString', () {
      final winmm = DynamicLibrary.open('winmm.dll');
      final mciSendString = winmm.lookupFunction<
          Uint32 Function(
              Pointer<Utf16> lpstrCommand,
              Pointer<Utf16> lpstrReturnString,
              Uint32 uReturnLength,
              IntPtr hwndCallback),
          int Function(
              Pointer<Utf16> lpstrCommand,
              Pointer<Utf16> lpstrReturnString,
              int uReturnLength,
              int hwndCallback)>('mciSendStringW');
      expect(mciSendString, isA<Function>());
    });
    test('Can instantiate midiOutGetNumDevs', () {
      final winmm = DynamicLibrary.open('winmm.dll');
      final midiOutGetNumDevs =
          winmm.lookupFunction<Uint32 Function(), int Function()>(
              'midiOutGetNumDevs');
      expect(midiOutGetNumDevs, isA<Function>());
    });
    test('Can instantiate PlaySound', () {
      final winmm = DynamicLibrary.open('winmm.dll');
      final PlaySound = winmm.lookupFunction<
          Int32 Function(Pointer<Utf16> pszSound, IntPtr hmod, Uint32 fdwSound),
          int Function(
              Pointer<Utf16> pszSound, int hmod, int fdwSound)>('PlaySoundW');
      expect(PlaySound, isA<Function>());
    });
    test('Can instantiate waveOutClose', () {
      final winmm = DynamicLibrary.open('winmm.dll');
      final waveOutClose = winmm.lookupFunction<Uint32 Function(IntPtr hwo),
          int Function(int hwo)>('waveOutClose');
      expect(waveOutClose, isA<Function>());
    });
    test('Can instantiate waveOutGetDevCaps', () {
      final winmm = DynamicLibrary.open('winmm.dll');
      final waveOutGetDevCaps = winmm.lookupFunction<
          Uint32 Function(
              IntPtr uDeviceID, Pointer<WAVEOUTCAPS> pwoc, Uint32 cbwoc),
          int Function(int uDeviceID, Pointer<WAVEOUTCAPS> pwoc,
              int cbwoc)>('waveOutGetDevCapsW');
      expect(waveOutGetDevCaps, isA<Function>());
    });
    test('Can instantiate waveOutGetErrorText', () {
      final winmm = DynamicLibrary.open('winmm.dll');
      final waveOutGetErrorText = winmm.lookupFunction<
          Uint32 Function(
              Uint32 mmrError, Pointer<Utf16> pszText, Uint32 cchText),
          int Function(int mmrError, Pointer<Utf16> pszText,
              int cchText)>('waveOutGetErrorTextW');
      expect(waveOutGetErrorText, isA<Function>());
    });
    test('Can instantiate waveOutGetID', () {
      final winmm = DynamicLibrary.open('winmm.dll');
      final waveOutGetID = winmm.lookupFunction<
          Uint32 Function(IntPtr hwo, Pointer<Uint32> puDeviceID),
          int Function(int hwo, Pointer<Uint32> puDeviceID)>('waveOutGetID');
      expect(waveOutGetID, isA<Function>());
    });
    test('Can instantiate waveOutGetNumDevs', () {
      final winmm = DynamicLibrary.open('winmm.dll');
      final waveOutGetNumDevs =
          winmm.lookupFunction<Uint32 Function(), int Function()>(
              'waveOutGetNumDevs');
      expect(waveOutGetNumDevs, isA<Function>());
    });
    test('Can instantiate waveOutGetPitch', () {
      final winmm = DynamicLibrary.open('winmm.dll');
      final waveOutGetPitch = winmm.lookupFunction<
          Uint32 Function(IntPtr hwo, Pointer<Uint32> pdwPitch),
          int Function(int hwo, Pointer<Uint32> pdwPitch)>('waveOutGetPitch');
      expect(waveOutGetPitch, isA<Function>());
    });
    test('Can instantiate waveOutGetPlaybackRate', () {
      final winmm = DynamicLibrary.open('winmm.dll');
      final waveOutGetPlaybackRate = winmm.lookupFunction<
          Uint32 Function(IntPtr hwo, Pointer<Uint32> pdwRate),
          int Function(
              int hwo, Pointer<Uint32> pdwRate)>('waveOutGetPlaybackRate');
      expect(waveOutGetPlaybackRate, isA<Function>());
    });
    test('Can instantiate waveOutGetPosition', () {
      final winmm = DynamicLibrary.open('winmm.dll');
      final waveOutGetPosition = winmm.lookupFunction<
          Uint32 Function(IntPtr hwo, Pointer<MMTIME> pmmt, Uint32 cbmmt),
          int Function(
              int hwo, Pointer<MMTIME> pmmt, int cbmmt)>('waveOutGetPosition');
      expect(waveOutGetPosition, isA<Function>());
    });
    test('Can instantiate waveOutGetVolume', () {
      final winmm = DynamicLibrary.open('winmm.dll');
      final waveOutGetVolume = winmm.lookupFunction<
          Uint32 Function(IntPtr hwo, Pointer<Uint32> pdwVolume),
          int Function(int hwo, Pointer<Uint32> pdwVolume)>('waveOutGetVolume');
      expect(waveOutGetVolume, isA<Function>());
    });
    test('Can instantiate waveOutMessage', () {
      final winmm = DynamicLibrary.open('winmm.dll');
      final waveOutMessage = winmm.lookupFunction<
          Uint32 Function(IntPtr hwo, Uint32 uMsg, IntPtr dw1, IntPtr dw2),
          int Function(int hwo, int uMsg, int dw1, int dw2)>('waveOutMessage');
      expect(waveOutMessage, isA<Function>());
    });
    test('Can instantiate waveOutOpen', () {
      final winmm = DynamicLibrary.open('winmm.dll');
      final waveOutOpen = winmm.lookupFunction<
          Uint32 Function(
              Pointer<IntPtr> phwo,
              Uint32 uDeviceID,
              Pointer<WAVEFORMATEX> pwfx,
              IntPtr dwCallback,
              IntPtr dwInstance,
              Uint32 fdwOpen),
          int Function(
              Pointer<IntPtr> phwo,
              int uDeviceID,
              Pointer<WAVEFORMATEX> pwfx,
              int dwCallback,
              int dwInstance,
              int fdwOpen)>('waveOutOpen');
      expect(waveOutOpen, isA<Function>());
    });
    test('Can instantiate waveOutPause', () {
      final winmm = DynamicLibrary.open('winmm.dll');
      final waveOutPause = winmm.lookupFunction<Uint32 Function(IntPtr hwo),
          int Function(int hwo)>('waveOutPause');
      expect(waveOutPause, isA<Function>());
    });
    test('Can instantiate waveOutPrepareHeader', () {
      final winmm = DynamicLibrary.open('winmm.dll');
      final waveOutPrepareHeader = winmm.lookupFunction<
          Uint32 Function(IntPtr hwo, Pointer<WAVEHDR> pwh, Uint32 cbwh),
          int Function(
              int hwo, Pointer<WAVEHDR> pwh, int cbwh)>('waveOutPrepareHeader');
      expect(waveOutPrepareHeader, isA<Function>());
    });
    test('Can instantiate waveOutReset', () {
      final winmm = DynamicLibrary.open('winmm.dll');
      final waveOutReset = winmm.lookupFunction<Uint32 Function(IntPtr hwo),
          int Function(int hwo)>('waveOutReset');
      expect(waveOutReset, isA<Function>());
    });
    test('Can instantiate waveOutRestart', () {
      final winmm = DynamicLibrary.open('winmm.dll');
      final waveOutRestart = winmm.lookupFunction<Uint32 Function(IntPtr hwo),
          int Function(int hwo)>('waveOutRestart');
      expect(waveOutRestart, isA<Function>());
    });
    test('Can instantiate waveOutSetPitch', () {
      final winmm = DynamicLibrary.open('winmm.dll');
      final waveOutSetPitch = winmm.lookupFunction<
          Uint32 Function(IntPtr hwo, Uint32 dwPitch),
          int Function(int hwo, int dwPitch)>('waveOutSetPitch');
      expect(waveOutSetPitch, isA<Function>());
    });
    test('Can instantiate waveOutSetPlaybackRate', () {
      final winmm = DynamicLibrary.open('winmm.dll');
      final waveOutSetPlaybackRate = winmm.lookupFunction<
          Uint32 Function(IntPtr hwo, Uint32 dwRate),
          int Function(int hwo, int dwRate)>('waveOutSetPlaybackRate');
      expect(waveOutSetPlaybackRate, isA<Function>());
    });
    test('Can instantiate waveOutSetVolume', () {
      final winmm = DynamicLibrary.open('winmm.dll');
      final waveOutSetVolume = winmm.lookupFunction<
          Uint32 Function(IntPtr hwo, Uint32 dwVolume),
          int Function(int hwo, int dwVolume)>('waveOutSetVolume');
      expect(waveOutSetVolume, isA<Function>());
    });
    test('Can instantiate waveOutUnprepareHeader', () {
      final winmm = DynamicLibrary.open('winmm.dll');
      final waveOutUnprepareHeader = winmm.lookupFunction<
          Uint32 Function(IntPtr hwo, Pointer<WAVEHDR> pwh, Uint32 cbwh),
          int Function(int hwo, Pointer<WAVEHDR> pwh,
              int cbwh)>('waveOutUnprepareHeader');
      expect(waveOutUnprepareHeader, isA<Function>());
    });
    test('Can instantiate waveOutWrite', () {
      final winmm = DynamicLibrary.open('winmm.dll');
      final waveOutWrite = winmm.lookupFunction<
          Uint32 Function(IntPtr hwo, Pointer<WAVEHDR> pwh, Uint32 cbwh),
          int Function(
              int hwo, Pointer<WAVEHDR> pwh, int cbwh)>('waveOutWrite');
      expect(waveOutWrite, isA<Function>());
    });
  });

  group('Test rometadata functions', () {
    if (windowsBuildNumber >= 10586) {
      test('Can instantiate MetaDataGetDispenser', () {
        final rometadata = DynamicLibrary.open('rometadata.dll');
        final MetaDataGetDispenser = rometadata.lookupFunction<
            Int32 Function(
                Pointer<GUID> rclsid, Pointer<GUID> riid, Pointer<Pointer> ppv),
            int Function(Pointer<GUID> rclsid, Pointer<GUID> riid,
                Pointer<Pointer> ppv)>('MetaDataGetDispenser');
        expect(MetaDataGetDispenser, isA<Function>());
      });
    }
  });

  group('Test api-ms-win-core-winrt-l1-1-0 functions', () {
    if (windowsBuildNumber >= 9200) {
      test('Can instantiate RoActivateInstance', () {
        final api_ms_win_core_winrt_l1_1_0 =
            DynamicLibrary.open('api-ms-win-core-winrt-l1-1-0.dll');
        final RoActivateInstance = api_ms_win_core_winrt_l1_1_0.lookupFunction<
            Int32 Function(
                IntPtr activatableClassId, Pointer<Pointer> instance),
            int Function(int activatableClassId,
                Pointer<Pointer> instance)>('RoActivateInstance');
        expect(RoActivateInstance, isA<Function>());
      });
    }
    if (windowsBuildNumber >= 9200) {
      test('Can instantiate RoInitialize', () {
        final api_ms_win_core_winrt_l1_1_0 =
            DynamicLibrary.open('api-ms-win-core-winrt-l1-1-0.dll');
        final RoInitialize = api_ms_win_core_winrt_l1_1_0.lookupFunction<
            Int32 Function(Uint32 initType),
            int Function(int initType)>('RoInitialize');
        expect(RoInitialize, isA<Function>());
      });
    }
    if (windowsBuildNumber >= 9200) {
      test('Can instantiate RoUninitialize', () {
        final api_ms_win_core_winrt_l1_1_0 =
            DynamicLibrary.open('api-ms-win-core-winrt-l1-1-0.dll');
        final RoUninitialize = api_ms_win_core_winrt_l1_1_0
            .lookupFunction<Void Function(), void Function()>('RoUninitialize');
        expect(RoUninitialize, isA<Function>());
      });
    }
  });

  group('Test api-ms-win-ro-typeresolution-l1-1-0 functions', () {});

  group('Test dbghelp functions', () {
    test('Can instantiate SymCleanup', () {
      final dbghelp = DynamicLibrary.open('dbghelp.dll');
      final SymCleanup = dbghelp.lookupFunction<Int32 Function(IntPtr hProcess),
          int Function(int hProcess)>('SymCleanup');
      expect(SymCleanup, isA<Function>());
    });
    test('Can instantiate SymEnumSymbols', () {
      final dbghelp = DynamicLibrary.open('dbghelp.dll');
      final SymEnumSymbols = dbghelp.lookupFunction<
          Int32 Function(
              IntPtr hProcess,
              Uint64 BaseOfDll,
              Pointer<Utf16> Mask,
              Pointer<NativeFunction<SymEnumSymbolsProc>> EnumSymbolsCallback,
              Pointer UserContext),
          int Function(
              int hProcess,
              int BaseOfDll,
              Pointer<Utf16> Mask,
              Pointer<NativeFunction<SymEnumSymbolsProc>> EnumSymbolsCallback,
              Pointer UserContext)>('SymEnumSymbolsW');
      expect(SymEnumSymbols, isA<Function>());
    });
    test('Can instantiate SymFromAddr', () {
      final dbghelp = DynamicLibrary.open('dbghelp.dll');
      final SymFromAddr = dbghelp.lookupFunction<
          Int32 Function(IntPtr hProcess, Uint64 Address,
              Pointer<Uint64> Displacement, Pointer<SYMBOL_INFO> Symbol),
          int Function(int hProcess, int Address, Pointer<Uint64> Displacement,
              Pointer<SYMBOL_INFO> Symbol)>('SymFromAddrW');
      expect(SymFromAddr, isA<Function>());
    });
    test('Can instantiate SymFromToken', () {
      final dbghelp = DynamicLibrary.open('dbghelp.dll');
      final SymFromToken = dbghelp.lookupFunction<
          Int32 Function(IntPtr hProcess, Uint64 Base, Uint32 Token,
              Pointer<SYMBOL_INFO> Symbol),
          int Function(int hProcess, int Base, int Token,
              Pointer<SYMBOL_INFO> Symbol)>('SymFromTokenW');
      expect(SymFromToken, isA<Function>());
    });
    if (windowsBuildNumber >= 17134) {
      test('Can instantiate SymGetExtendedOption', () {
        final dbghelp = DynamicLibrary.open('dbghelp.dll');
        final SymGetExtendedOption = dbghelp.lookupFunction<
            Int32 Function(Uint32 option),
            int Function(int option)>('SymGetExtendedOption');
        expect(SymGetExtendedOption, isA<Function>());
      });
    }
    test('Can instantiate SymInitialize', () {
      final dbghelp = DynamicLibrary.open('dbghelp.dll');
      final SymInitialize = dbghelp.lookupFunction<
          Int32 Function(IntPtr hProcess, Pointer<Utf16> UserSearchPath,
              Int32 fInvadeProcess),
          int Function(int hProcess, Pointer<Utf16> UserSearchPath,
              int fInvadeProcess)>('SymInitializeW');
      expect(SymInitialize, isA<Function>());
    });
    test('Can instantiate SymLoadModuleEx', () {
      final dbghelp = DynamicLibrary.open('dbghelp.dll');
      final SymLoadModuleEx = dbghelp.lookupFunction<
          Uint64 Function(
              IntPtr hProcess,
              IntPtr hFile,
              Pointer<Utf16> ImageName,
              Pointer<Utf16> ModuleName,
              Uint64 BaseOfDll,
              Uint32 DllSize,
              Pointer<MODLOAD_DATA> Data,
              Uint32 Flags),
          int Function(
              int hProcess,
              int hFile,
              Pointer<Utf16> ImageName,
              Pointer<Utf16> ModuleName,
              int BaseOfDll,
              int DllSize,
              Pointer<MODLOAD_DATA> Data,
              int Flags)>('SymLoadModuleExW');
      expect(SymLoadModuleEx, isA<Function>());
    });
    if (windowsBuildNumber >= 17134) {
      test('Can instantiate SymSetExtendedOption', () {
        final dbghelp = DynamicLibrary.open('dbghelp.dll');
        final SymSetExtendedOption = dbghelp.lookupFunction<
            Int32 Function(Uint32 option, Int32 value),
            int Function(int option, int value)>('SymSetExtendedOption');
        expect(SymSetExtendedOption, isA<Function>());
      });
    }
    test('Can instantiate SymSetOptions', () {
      final dbghelp = DynamicLibrary.open('dbghelp.dll');
      final SymSetOptions = dbghelp.lookupFunction<
          Uint32 Function(Uint32 SymOptions),
          int Function(int SymOptions)>('SymSetOptions');
      expect(SymSetOptions, isA<Function>());
    });
    test('Can instantiate SymSetParentWindow', () {
      final dbghelp = DynamicLibrary.open('dbghelp.dll');
      final SymSetParentWindow = dbghelp.lookupFunction<
          Int32 Function(IntPtr hwnd),
          int Function(int hwnd)>('SymSetParentWindow');
      expect(SymSetParentWindow, isA<Function>());
    });
    test('Can instantiate SymSetScopeFromAddr', () {
      final dbghelp = DynamicLibrary.open('dbghelp.dll');
      final SymSetScopeFromAddr = dbghelp.lookupFunction<
          Int32 Function(IntPtr hProcess, Uint64 Address),
          int Function(int hProcess, int Address)>('SymSetScopeFromAddr');
      expect(SymSetScopeFromAddr, isA<Function>());
    });
    test('Can instantiate SymSetScopeFromIndex', () {
      final dbghelp = DynamicLibrary.open('dbghelp.dll');
      final SymSetScopeFromIndex = dbghelp.lookupFunction<
          Int32 Function(IntPtr hProcess, Uint64 BaseOfDll, Uint32 Index),
          int Function(
              int hProcess, int BaseOfDll, int Index)>('SymSetScopeFromIndex');
      expect(SymSetScopeFromIndex, isA<Function>());
    });
    test('Can instantiate SymSetScopeFromInlineContext', () {
      final dbghelp = DynamicLibrary.open('dbghelp.dll');
      final SymSetScopeFromInlineContext = dbghelp.lookupFunction<
          Int32 Function(IntPtr hProcess, Uint64 Address, Uint32 InlineContext),
          int Function(int hProcess, int Address,
              int InlineContext)>('SymSetScopeFromInlineContext');
      expect(SymSetScopeFromInlineContext, isA<Function>());
    });
    test('Can instantiate SymSetSearchPath', () {
      final dbghelp = DynamicLibrary.open('dbghelp.dll');
      final SymSetSearchPath = dbghelp.lookupFunction<
          Int32 Function(IntPtr hProcess, Pointer<Utf16> SearchPathA),
          int Function(
              int hProcess, Pointer<Utf16> SearchPathA)>('SymSetSearchPathW');
      expect(SymSetSearchPath, isA<Function>());
    });
    test('Can instantiate SymUnloadModule64', () {
      final dbghelp = DynamicLibrary.open('dbghelp.dll');
      final SymUnloadModule64 = dbghelp.lookupFunction<
          Int32 Function(IntPtr hProcess, Uint64 BaseOfDll),
          int Function(int hProcess, int BaseOfDll)>('SymUnloadModule64');
      expect(SymUnloadModule64, isA<Function>());
    });
    test('Can instantiate UnDecorateSymbolName', () {
      final dbghelp = DynamicLibrary.open('dbghelp.dll');
      final UnDecorateSymbolName = dbghelp.lookupFunction<
          Uint32 Function(Pointer<Utf16> name, Pointer<Utf16> outputString,
              Uint32 maxStringLength, Uint32 flags),
          int Function(Pointer<Utf16> name, Pointer<Utf16> outputString,
              int maxStringLength, int flags)>('UnDecorateSymbolNameW');
      expect(UnDecorateSymbolName, isA<Function>());
    });
  });

  group('Test api-ms-win-core-winrt-string-l1-1-0 functions', () {
    if (windowsBuildNumber >= 9200) {
      test('Can instantiate WindowsCreateString', () {
        final api_ms_win_core_winrt_string_l1_1_0 =
            DynamicLibrary.open('api-ms-win-core-winrt-string-l1-1-0.dll');
        final WindowsCreateString =
            api_ms_win_core_winrt_string_l1_1_0.lookupFunction<
                Int32 Function(Pointer<Utf16> sourceString, Uint32 length,
                    Pointer<IntPtr> string),
                int Function(Pointer<Utf16> sourceString, int length,
                    Pointer<IntPtr> string)>('WindowsCreateString');
        expect(WindowsCreateString, isA<Function>());
      });
    }
    if (windowsBuildNumber >= 9200) {
      test('Can instantiate WindowsDeleteString', () {
        final api_ms_win_core_winrt_string_l1_1_0 =
            DynamicLibrary.open('api-ms-win-core-winrt-string-l1-1-0.dll');
        final WindowsDeleteString =
            api_ms_win_core_winrt_string_l1_1_0.lookupFunction<
                Int32 Function(IntPtr string),
                int Function(int string)>('WindowsDeleteString');
        expect(WindowsDeleteString, isA<Function>());
      });
    }
    if (windowsBuildNumber >= 9200) {
      test('Can instantiate WindowsGetStringRawBuffer', () {
        final api_ms_win_core_winrt_string_l1_1_0 =
            DynamicLibrary.open('api-ms-win-core-winrt-string-l1-1-0.dll');
        final WindowsGetStringRawBuffer =
            api_ms_win_core_winrt_string_l1_1_0.lookupFunction<
                Pointer<Utf16> Function(IntPtr string, Pointer<Uint32> length),
                Pointer<Utf16> Function(int string,
                    Pointer<Uint32> length)>('WindowsGetStringRawBuffer');
        expect(WindowsGetStringRawBuffer, isA<Function>());
      });
    }
  });
}
