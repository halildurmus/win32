// kernel32.dart

// Maps FFI prototypes onto the corresponding Win32 API function calls

import 'dart:ffi';

import 'typedefs.dart';

final _kernel32 = DynamicLibrary.open('kernel32.dll');

/// {@category kernel32}
final Beep = _kernel32.lookupFunction<beepNative, beepDart>('Beep');

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
final CreatePseudoConsole = _kernel32.lookupFunction<createPseudoConsoleNative,
    createPseudoConsoleDart>('CreatePseudoConsole');

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
final GetLastError = _kernel32
    .lookupFunction<getLastErrorNative, getLastErrorDart>('GetLastError');

/// {@category kernel32}
final GetModuleHandle =
    _kernel32.lookupFunction<getModuleHandleNative, getModuleHandleDart>(
        'GetModuleHandleW');

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
final GetTempPath = _kernel32
    .lookupFunction<getTempPathNative, getTempPathDart>('GetTempPathW');

/// {@category kernel32}
final GetVolumePathNamesForVolumeName = _kernel32.lookupFunction<
    getVolumePathNamesForVolumeNameNative,
    getVolumePathNamesForVolumeNameDart>('GetVolumePathNamesForVolumeNameW');

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
final VirtualFree =
    _kernel32.lookupFunction<virtualFreeNative, virtualFreeDart>('VirtualFree');

/// {@category kernel32}
final WriteFile =
    _kernel32.lookupFunction<writeFileNative, writeFileDart>('WriteFile');

/// {@category kernel32}
final WriteProcessMemory =
    _kernel32.lookupFunction<writeProcessMemoryNative, writeProcessMemoryDart>(
        'WriteProcessMemory');
