// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Maps FFI prototypes onto the corresponding Win32 API function calls

import 'dart:ffi';

import 'typedefs.dart';

final _kernel32 = DynamicLibrary.open('kernel32.dll');

/// {@category kernel32}
final ActivateActCtx = _kernel32
    .lookupFunction<activateActCtxNative, activateActCtxDart>('ActivateActCtx');

/// {@category kernel32}
final Beep = _kernel32.lookupFunction<beepNative, beepDart>('Beep');

/// {@category kernel32}
final BeginUpdateResource = _kernel32.lookupFunction<beginUpdateResourceNative,
    beginUpdateResourceDart>('BeginUpdateResourceW');

/// {@category kernel32}
final CloseHandle =
    _kernel32.lookupFunction<closeHandleNative, closeHandleDart>('CloseHandle');

/// {@category kernel32}
final ClosePseudoConsole =
    _kernel32.lookupFunction<closePseudoConsoleNative, closePseudoConsoleDart>(
        'ClosePseudoConsole');

/// {@category kernel32}
final CreateFile =
    _kernel32.lookupFunction<createFileNative, createFileDart>('CreateFileW');

/// {@category kernel32}
final CreatePipe =
    _kernel32.lookupFunction<createPipeNative, createPipeDart>('CreatePipe');

/// {@category kernel32}
final CreateProcess = _kernel32
    .lookupFunction<createProcessNative, createProcessDart>('CreateProcessW');

/// {@category kernel32}
final CreatePseudoConsole = _kernel32.lookupFunction<createPseudoConsoleNative,
    createPseudoConsoleDart>('CreatePseudoConsole');

/// {@category kernel32}
final DeactivateActCtx =
    _kernel32.lookupFunction<deactivateActCtxNative, deactivateActCtxDart>(
        'DeactivateActCtx');

/// {@category kernel32}
final EndUpdateResource =
    _kernel32.lookupFunction<endUpdateResourceNative, endUpdateResourceDart>(
        'EndUpdateResourceW');

/// {@category kernel32}
final EnumResourceNames =
    _kernel32.lookupFunction<enumResourceNamesNative, enumResourceNamesDart>(
        'EnumResourceNamesW');

/// {@category kernel32}
final EnumResourceTypes =
    _kernel32.lookupFunction<enumResourceTypesNative, enumResourceTypesDart>(
        'EnumResourceTypesW');

/// {@category kernel32}
final FillConsoleOutputAttribute = _kernel32.lookupFunction<
    fillConsoleOutputAttributeNative,
    fillConsoleOutputAttributeDart>('FillConsoleOutputAttribute');

/// {@category kernel32}
final FillConsoleOutputCharacter = _kernel32.lookupFunction<
    fillConsoleOutputCharacterNative,
    fillConsoleOutputCharacterDart>('FillConsoleOutputCharacterW');

/// {@category kernel32}
final FindFirstVolume =
    _kernel32.lookupFunction<findFirstVolumeNative, findFirstVolumeDart>(
        'FindFirstVolumeW');

/// {@category kernel32}
final FindNextVolume =
    _kernel32.lookupFunction<findNextVolumeNative, findNextVolumeDart>(
        'FindNextVolumeW');

/// {@category kernel32}
final FindVolumeClose =
    _kernel32.lookupFunction<findVolumeCloseNative, findVolumeCloseDart>(
        'FindVolumeClose');

/// {@category kernel32}
final FormatMessage = _kernel32
    .lookupFunction<formatMessageNative, formatMessageDart>('FormatMessageW');

/// {@category kernel32}
final FreeLibrary =
    _kernel32.lookupFunction<freeLibraryNative, freeLibraryDart>('FreeLibrary');

/// {@category kernel32}
final GetConsoleCursorInfo = _kernel32.lookupFunction<
    getConsoleCursorInfoNative,
    getConsoleCursorInfoDart>('GetConsoleCursorInfo');

/// {@category kernel32}
final GetComputerNameEx =
    _kernel32.lookupFunction<getComputerNameExNative, getComputerNameExDart>(
        'GetComputerNameExW');

/// {@category kernel32}
final GetConsoleMode = _kernel32
    .lookupFunction<getConsoleModeNative, getConsoleModeDart>('GetConsoleMode');

/// {@category kernel32}
final GetConsoleScreenBufferInfo = _kernel32.lookupFunction<
    getConsoleScreenBufferInfoNative,
    getConsoleScreenBufferInfoDart>('GetConsoleScreenBufferInfo');

/// {@category kernel32}
final GetConsoleSelectionInfo = _kernel32.lookupFunction<
    getConsoleSelectionInfoNative,
    getConsoleSelectionInfoDart>('GetConsoleSelectionInfo');

/// {@category kernel32}
final GetConsoleTitle =
    _kernel32.lookupFunction<getConsoleTitleNative, getConsoleTitleDart>(
        'GetConsoleTitleW');

/// {@category kernel32}
final GetConsoleWindow =
    _kernel32.lookupFunction<getConsoleWindowNative, getConsoleWindowDart>(
        'GetConsoleWindow');

/// {@category kernel32}
final GetProcessHeap = _kernel32
    .lookupFunction<getProcessHeapNative, getProcessHeapDart>('GetProcessHeap');

/// {@category kernel32}
final GetProductInfo = _kernel32
    .lookupFunction<getProductInfoNative, getProductInfoDart>('GetProductInfo');

/// {@category kernel32}
final GetLastError = _kernel32
    .lookupFunction<getLastErrorNative, getLastErrorDart>('GetLastError');

/// {@category kernel32}
final GetModuleHandle =
    _kernel32.lookupFunction<getModuleHandleNative, getModuleHandleDart>(
        'GetModuleHandleW');

/// {@category kernel32}
final GetPhysicallyInstalledSystemMemory = _kernel32.lookupFunction<
        getPhysicallyInstalledSystemMemoryNative,
        getPhysicallyInstalledSystemMemoryDart>(
    'GetPhysicallyInstalledSystemMemory');

/// {@category kernel32}
final GetProcAddress = _kernel32
    .lookupFunction<getProcAddressNative, getProcAddressDart>('GetProcAddress');

/// {@category kernel32}
final GetStdHandle = _kernel32
    .lookupFunction<getStdHandleNative, getStdHandleDart>('GetStdHandle');

/// {@category kernel32}
final GetSystemInfo = _kernel32
    .lookupFunction<getSystemInfoNative, getSystemInfoDart>('GetSystemInfo');

/// {@category kernel32}
final GetSystemPowerStatus = _kernel32.lookupFunction<
    getSystemPowerStatusNative,
    getSystemPowerStatusDart>('GetSystemPowerStatus');

/// {@category kernel32}
final GetTempPath = _kernel32
    .lookupFunction<getTempPathNative, getTempPathDart>('GetTempPathW');

/// {@category kernel32}
final GetVersionEx = _kernel32
    .lookupFunction<getVersionExNative, getVersionExDart>('GetVersionExW');

/// {@category kernel32}
final GetVolumePathNamesForVolumeName = _kernel32.lookupFunction<
    getVolumePathNamesForVolumeNameNative,
    getVolumePathNamesForVolumeNameDart>('GetVolumePathNamesForVolumeNameW');

/// {@category kernel32}
final HeapAlloc =
    _kernel32.lookupFunction<heapAllocNative, heapAllocDart>('HeapAlloc');

/// {@category kernel32}
final HeapFree =
    _kernel32.lookupFunction<heapFreeNative, heapFreeDart>('HeapFree');

/// {@category kernel32}
final InitializeProcThreadAttributeList = _kernel32.lookupFunction<
    initializeProcThreadAttributeListNative,
    initializeProcThreadAttributeListDart>('InitializeProcThreadAttributeList');

/// {@category kernel32}
final LoadLibrary = _kernel32
    .lookupFunction<loadLibraryNative, loadLibraryDart>('LoadLibraryW');

/// {@category kernel32}
final OpenProcess =
    _kernel32.lookupFunction<openProcessNative, openProcessDart>('OpenProcess');

/// {@category kernel32}
final ReadFile =
    _kernel32.lookupFunction<readFileNative, readFileDart>('ReadFile');

/// {@category kernel32}
final ReadProcessMemory =
    _kernel32.lookupFunction<readProcessMemoryNative, readProcessMemoryDart>(
        'ReadProcessMemory');

/// {@category kernel32}
final QueryDosDevice =
    _kernel32.lookupFunction<queryDosDeviceNative, queryDosDeviceDart>(
        'QueryDosDeviceW');

/// {@category kernel32}
final ResizePseudoConsole = _kernel32.lookupFunction<resizePseudoConsoleNative,
    resizePseudoConsoleDart>('ResizePseudoConsole');

/// {@category kernel32}
final ScrollConsoleScreenBuffer = _kernel32.lookupFunction<
    scrollConsoleScreenBufferNative,
    scrollConsoleScreenBufferDart>('ScrollConsoleScreenBufferW');

/// {@category kernel32}
final SetConsoleCtrlHandler = _kernel32.lookupFunction<
    setConsoleCtrlHandlerNative,
    setConsoleCtrlHandlerDart>('SetConsoleCtrlHandler');

/// {@category kernel32}
final SetConsoleCursorInfo = _kernel32.lookupFunction<
    setConsoleCursorInfoNative,
    setConsoleCursorInfoDart>('SetConsoleCursorInfo');

/// {@category kernel32}
final SetConsoleCursorPosition = _kernel32.lookupFunction<
    setConsoleCursorPositionNative,
    setConsoleCursorPositionDart>('SetConsoleCursorPosition');

/// {@category kernel32}
final SetConsoleMode = _kernel32
    .lookupFunction<setConsoleModeNative, setConsoleModeDart>('SetConsoleMode');

/// {@category kernel32}
final SetConsoleTextAttribute = _kernel32.lookupFunction<
    setConsoleTextAttributeNative,
    setConsoleTextAttributeDart>('SetConsoleTextAttribute');

/// {@category kernel32}
final Sleep = _kernel32.lookupFunction<sleepNative, sleepDart>('Sleep');

/// {@category kernel32}
final VirtualAlloc = _kernel32
    .lookupFunction<virtualAllocNative, virtualAllocDart>('VirtualAlloc');

/// {@category kernel32}
final UpdateProcThreadAttribute = _kernel32.lookupFunction<
    updateProcThreadAttributeNative,
    updateProcThreadAttributeDart>('UpdateProcThreadAttribute');

/// {@category kernel32}
final UpdateResource =
    _kernel32.lookupFunction<updateResourceNative, updateResourceDart>(
        'UpdateResourceW');

/// {@category kernel32}
final VirtualFree =
    _kernel32.lookupFunction<virtualFreeNative, virtualFreeDart>('VirtualFree');

/// {@category kernel32}
final WriteFile =
    _kernel32.lookupFunction<writeFileNative, writeFileDart>('WriteFile');

/// {@category kernel32}
final WriteProcessMemory =
    _kernel32.lookupFunction<writeProcessMemoryNative, writeProcessMemoryDart>(
        'WriteProcessMemory');
