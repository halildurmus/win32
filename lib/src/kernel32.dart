// kernel32.dart

// Maps FFI prototypes onto the corresponding Win32 API function calls

import 'dart:ffi';

import 'typedefs.dart';

final _kernel32 = DynamicLibrary.open('kernel32.dll');
final Beep = _kernel32.lookupFunction<beepNative, beepDart>('Beep');
final CloseHandle =
    _kernel32.lookupFunction<closeHandleNative, closeHandleDart>('CloseHandle');
final CreateFile =
    _kernel32.lookupFunction<createFileNative, createFileDart>('CreateFileW');
final FillConsoleOutputAttribute = _kernel32.lookupFunction<
    fillConsoleOutputAttributeNative,
    fillConsoleOutputAttributeDart>('FillConsoleOutputAttribute');
final FillConsoleOutputCharacter = _kernel32.lookupFunction<
    fillConsoleOutputCharacterNative,
    fillConsoleOutputCharacterDart>('FillConsoleOutputCharacterW');
final FindFirstVolume =
    _kernel32.lookupFunction<findFirstVolumeNative, findFirstVolumeDart>(
        'FindFirstVolumeW');
final FindNextVolume =
    _kernel32.lookupFunction<findNextVolumeNative, findNextVolumeDart>(
        'FindNextVolumeW');
final FindVolumeClose =
    _kernel32.lookupFunction<findVolumeCloseNative, findVolumeCloseDart>(
        'FindVolumeClose');
final FormatMessage = _kernel32
    .lookupFunction<formatMessageNative, formatMessageDart>('FormatMessageW');
final FreeLibrary =
    _kernel32.lookupFunction<freeLibraryNative, freeLibraryDart>('FreeLibrary');
final GetConsoleScreenBufferInfo = _kernel32.lookupFunction<
    getConsoleScreenBufferInfoNative,
    getConsoleScreenBufferInfoDart>('GetConsoleScreenBufferInfo');
final GetLastError = _kernel32
    .lookupFunction<getLastErrorNative, getLastErrorDart>('GetLastError');
final GetModuleHandle =
    _kernel32.lookupFunction<getModuleHandleNative, getModuleHandleDart>(
        'GetModuleHandleW');
final GetProcAddress = _kernel32
    .lookupFunction<getProcAddressNative, getProcAddressDart>('GetProcAddress');
final GetStdHandle = _kernel32
    .lookupFunction<getStdHandleNative, getStdHandleDart>('GetStdHandle');
final GetSystemInfo = _kernel32
    .lookupFunction<getSystemInfoNative, getSystemInfoDart>('GetSystemInfo');
final GetTempPath = _kernel32
    .lookupFunction<getTempPathNative, getTempPathDart>('GetTempPathW');
final GetVolumePathNamesForVolumeName = _kernel32.lookupFunction<
    getVolumePathNamesForVolumeNameNative,
    getVolumePathNamesForVolumeNameDart>('GetVolumePathNamesForVolumeNameW');
final LoadLibrary = _kernel32
    .lookupFunction<loadLibraryNative, loadLibraryDart>('LoadLibraryW');
final OpenProcess =
    _kernel32.lookupFunction<openProcessNative, openProcessDart>('OpenProcess');
final ReadProcessMemory =
    _kernel32.lookupFunction<readProcessMemoryNative, readProcessMemoryDart>(
        'ReadProcessMemory');
final QueryDosDevice =
    _kernel32.lookupFunction<queryDosDeviceNative, queryDosDeviceDart>(
        'QueryDosDeviceW');
final SetConsoleCursorInfo = _kernel32.lookupFunction<
    setConsoleCursorInfoNative,
    setConsoleCursorInfoDart>('SetConsoleCursorInfo');
final SetConsoleCursorPosition = _kernel32.lookupFunction<
    setConsoleCursorPositionNative,
    setConsoleCursorPositionDart>('SetConsoleCursorPosition');
final SetConsoleMode = _kernel32
    .lookupFunction<setConsoleModeNative, setConsoleModeDart>('SetConsoleMode');
final Sleep = _kernel32.lookupFunction<sleepNative, sleepDart>('Sleep');
final VirtualAlloc = _kernel32
    .lookupFunction<virtualAllocNative, virtualAllocDart>('VirtualAlloc');
final VirtualFree =
    _kernel32.lookupFunction<virtualFreeNative, virtualFreeDart>('VirtualFree');
final WriteProcessMemory =
    _kernel32.lookupFunction<writeProcessMemoryNative, writeProcessMemoryDart>(
        'WriteProcessMemory');
