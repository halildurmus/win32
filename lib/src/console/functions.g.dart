// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../callbacks.dart';
import '../combase.dart';
import 'enums.g.dart';
import 'structs.g.dart';

import '../foundation/structs.g.dart';
import '../console/structs.g.dart';

// -----------------------------------------------------------------------
// KERNEL32.dll
// -----------------------------------------------------------------------
final _kernel32 = DynamicLibrary.open('KERNEL32.dll');

int AddConsoleAlias(
        Pointer<Utf16> Source, Pointer<Utf16> Target, Pointer<Utf16> ExeName) =>
    _AddConsoleAlias(Source, Target, ExeName);

late final _AddConsoleAlias = _kernel32.lookupFunction<
    Int32 Function(
        Pointer<Utf16> Source, Pointer<Utf16> Target, Pointer<Utf16> ExeName),
    int Function(Pointer<Utf16> Source, Pointer<Utf16> Target,
        Pointer<Utf16> ExeName)>('AddConsoleAliasW');

int AllocConsole() => _AllocConsole();

late final _AllocConsole =
    _kernel32.lookupFunction<Int32 Function(), int Function()>('AllocConsole');

int AttachConsole(int dwProcessId) => _AttachConsole(dwProcessId);

late final _AttachConsole = _kernel32.lookupFunction<
    Int32 Function(Uint32 dwProcessId),
    int Function(int dwProcessId)>('AttachConsole');

void ClosePseudoConsole(int hPC) => _ClosePseudoConsole(hPC);

late final _ClosePseudoConsole =
    _kernel32.lookupFunction<Void Function(IntPtr hPC), void Function(int hPC)>(
        'ClosePseudoConsole');

int CreatePseudoConsole(COORD size, int hInput, int hOutput, int dwFlags,
        Pointer<IntPtr> phPC) =>
    _CreatePseudoConsole(size, hInput, hOutput, dwFlags, phPC);

late final _CreatePseudoConsole = _kernel32.lookupFunction<
    Int32 Function(COORD size, IntPtr hInput, IntPtr hOutput, Uint32 dwFlags,
        Pointer<IntPtr> phPC),
    int Function(COORD size, int hInput, int hOutput, int dwFlags,
        Pointer<IntPtr> phPC)>('CreatePseudoConsole');

void ExpungeConsoleCommandHistory(Pointer<Utf16> ExeName) =>
    _ExpungeConsoleCommandHistory(ExeName);

late final _ExpungeConsoleCommandHistory = _kernel32.lookupFunction<
    Void Function(Pointer<Utf16> ExeName),
    void Function(Pointer<Utf16> ExeName)>('ExpungeConsoleCommandHistoryW');

int FillConsoleOutputAttribute(int hConsoleOutput, int wAttribute, int nLength,
        COORD dwWriteCoord, Pointer<Uint32> lpNumberOfAttrsWritten) =>
    _FillConsoleOutputAttribute(hConsoleOutput, wAttribute, nLength,
        dwWriteCoord, lpNumberOfAttrsWritten);

late final _FillConsoleOutputAttribute = _kernel32.lookupFunction<
    Int32 Function(IntPtr hConsoleOutput, Uint16 wAttribute, Uint32 nLength,
        COORD dwWriteCoord, Pointer<Uint32> lpNumberOfAttrsWritten),
    int Function(
        int hConsoleOutput,
        int wAttribute,
        int nLength,
        COORD dwWriteCoord,
        Pointer<Uint32> lpNumberOfAttrsWritten)>('FillConsoleOutputAttribute');

int FillConsoleOutputCharacter(int hConsoleOutput, int cCharacter, int nLength,
        COORD dwWriteCoord, Pointer<Uint32> lpNumberOfCharsWritten) =>
    _FillConsoleOutputCharacter(hConsoleOutput, cCharacter, nLength,
        dwWriteCoord, lpNumberOfCharsWritten);

late final _FillConsoleOutputCharacter = _kernel32.lookupFunction<
    Int32 Function(IntPtr hConsoleOutput, Uint16 cCharacter, Uint32 nLength,
        COORD dwWriteCoord, Pointer<Uint32> lpNumberOfCharsWritten),
    int Function(
        int hConsoleOutput,
        int cCharacter,
        int nLength,
        COORD dwWriteCoord,
        Pointer<Uint32> lpNumberOfCharsWritten)>('FillConsoleOutputCharacterW');

int FlushConsoleInputBuffer(int hConsoleInput) =>
    _FlushConsoleInputBuffer(hConsoleInput);

late final _FlushConsoleInputBuffer = _kernel32.lookupFunction<
    Int32 Function(IntPtr hConsoleInput),
    int Function(int hConsoleInput)>('FlushConsoleInputBuffer');

int FreeConsole() => _FreeConsole();

late final _FreeConsole =
    _kernel32.lookupFunction<Int32 Function(), int Function()>('FreeConsole');

int GenerateConsoleCtrlEvent(int dwCtrlEvent, int dwProcessGroupId) =>
    _GenerateConsoleCtrlEvent(dwCtrlEvent, dwProcessGroupId);

late final _GenerateConsoleCtrlEvent = _kernel32.lookupFunction<
    Int32 Function(Uint32 dwCtrlEvent, Uint32 dwProcessGroupId),
    int Function(
        int dwCtrlEvent, int dwProcessGroupId)>('GenerateConsoleCtrlEvent');

int GetConsoleAliasExesLength() => _GetConsoleAliasExesLength();

late final _GetConsoleAliasExesLength =
    _kernel32.lookupFunction<Uint32 Function(), int Function()>(
        'GetConsoleAliasExesLengthW');

int GetConsoleAliasExes(
        Pointer<Utf16> ExeNameBuffer, int ExeNameBufferLength) =>
    _GetConsoleAliasExes(ExeNameBuffer, ExeNameBufferLength);

late final _GetConsoleAliasExes = _kernel32.lookupFunction<
    Uint32 Function(Pointer<Utf16> ExeNameBuffer, Uint32 ExeNameBufferLength),
    int Function(Pointer<Utf16> ExeNameBuffer,
        int ExeNameBufferLength)>('GetConsoleAliasExesW');

int GetConsoleAlias(Pointer<Utf16> Source, Pointer<Utf16> TargetBuffer,
        int TargetBufferLength, Pointer<Utf16> ExeName) =>
    _GetConsoleAlias(Source, TargetBuffer, TargetBufferLength, ExeName);

late final _GetConsoleAlias = _kernel32.lookupFunction<
    Uint32 Function(Pointer<Utf16> Source, Pointer<Utf16> TargetBuffer,
        Uint32 TargetBufferLength, Pointer<Utf16> ExeName),
    int Function(Pointer<Utf16> Source, Pointer<Utf16> TargetBuffer,
        int TargetBufferLength, Pointer<Utf16> ExeName)>('GetConsoleAliasW');

int GetConsoleAliasesLength(Pointer<Utf16> ExeName) =>
    _GetConsoleAliasesLength(ExeName);

late final _GetConsoleAliasesLength = _kernel32.lookupFunction<
    Uint32 Function(Pointer<Utf16> ExeName),
    int Function(Pointer<Utf16> ExeName)>('GetConsoleAliasesLengthW');

int GetConsoleAliases(Pointer<Utf16> AliasBuffer, int AliasBufferLength,
        Pointer<Utf16> ExeName) =>
    _GetConsoleAliases(AliasBuffer, AliasBufferLength, ExeName);

late final _GetConsoleAliases = _kernel32.lookupFunction<
    Uint32 Function(Pointer<Utf16> AliasBuffer, Uint32 AliasBufferLength,
        Pointer<Utf16> ExeName),
    int Function(Pointer<Utf16> AliasBuffer, int AliasBufferLength,
        Pointer<Utf16> ExeName)>('GetConsoleAliasesW');

int GetConsoleCP() => _GetConsoleCP();

late final _GetConsoleCP =
    _kernel32.lookupFunction<Uint32 Function(), int Function()>('GetConsoleCP');

int GetConsoleCommandHistoryLength(Pointer<Utf16> ExeName) =>
    _GetConsoleCommandHistoryLength(ExeName);

late final _GetConsoleCommandHistoryLength = _kernel32.lookupFunction<
    Uint32 Function(Pointer<Utf16> ExeName),
    int Function(Pointer<Utf16> ExeName)>('GetConsoleCommandHistoryLengthW');

int GetConsoleCommandHistory(Pointer<Utf16> Commands, int CommandBufferLength,
        Pointer<Utf16> ExeName) =>
    _GetConsoleCommandHistory(Commands, CommandBufferLength, ExeName);

late final _GetConsoleCommandHistory = _kernel32.lookupFunction<
    Uint32 Function(Pointer<Utf16> Commands, Uint32 CommandBufferLength,
        Pointer<Utf16> ExeName),
    int Function(Pointer<Utf16> Commands, int CommandBufferLength,
        Pointer<Utf16> ExeName)>('GetConsoleCommandHistoryW');

int GetConsoleCursorInfo(
        int hConsoleOutput, Pointer<CONSOLE_CURSOR_INFO> lpConsoleCursorInfo) =>
    _GetConsoleCursorInfo(hConsoleOutput, lpConsoleCursorInfo);

late final _GetConsoleCursorInfo = _kernel32.lookupFunction<
        Int32 Function(IntPtr hConsoleOutput,
            Pointer<CONSOLE_CURSOR_INFO> lpConsoleCursorInfo),
        int Function(int hConsoleOutput,
            Pointer<CONSOLE_CURSOR_INFO> lpConsoleCursorInfo)>(
    'GetConsoleCursorInfo');

int GetConsoleDisplayMode(Pointer<Uint32> lpModeFlags) =>
    _GetConsoleDisplayMode(lpModeFlags);

late final _GetConsoleDisplayMode = _kernel32.lookupFunction<
    Int32 Function(Pointer<Uint32> lpModeFlags),
    int Function(Pointer<Uint32> lpModeFlags)>('GetConsoleDisplayMode');

COORD GetConsoleFontSize(int hConsoleOutput, int nFont) =>
    _GetConsoleFontSize(hConsoleOutput, nFont);

late final _GetConsoleFontSize = _kernel32.lookupFunction<
    COORD Function(IntPtr hConsoleOutput, Uint32 nFont),
    COORD Function(int hConsoleOutput, int nFont)>('GetConsoleFontSize');

int GetConsoleHistoryInfo(Pointer<CONSOLE_HISTORY_INFO> lpConsoleHistoryInfo) =>
    _GetConsoleHistoryInfo(lpConsoleHistoryInfo);

late final _GetConsoleHistoryInfo = _kernel32.lookupFunction<
        Int32 Function(Pointer<CONSOLE_HISTORY_INFO> lpConsoleHistoryInfo),
        int Function(Pointer<CONSOLE_HISTORY_INFO> lpConsoleHistoryInfo)>(
    'GetConsoleHistoryInfo');

int GetConsoleMode(int hConsoleHandle, Pointer<Uint32> lpMode) =>
    _GetConsoleMode(hConsoleHandle, lpMode);

late final _GetConsoleMode = _kernel32.lookupFunction<
    Int32 Function(IntPtr hConsoleHandle, Pointer<Uint32> lpMode),
    int Function(int hConsoleHandle, Pointer<Uint32> lpMode)>('GetConsoleMode');

int GetConsoleOriginalTitle(Pointer<Utf16> lpConsoleTitle, int nSize) =>
    _GetConsoleOriginalTitle(lpConsoleTitle, nSize);

late final _GetConsoleOriginalTitle = _kernel32.lookupFunction<
    Uint32 Function(Pointer<Utf16> lpConsoleTitle, Uint32 nSize),
    int Function(
        Pointer<Utf16> lpConsoleTitle, int nSize)>('GetConsoleOriginalTitleW');

int GetConsoleOutputCP() => _GetConsoleOutputCP();

late final _GetConsoleOutputCP = _kernel32
    .lookupFunction<Uint32 Function(), int Function()>('GetConsoleOutputCP');

int GetConsoleProcessList(
        Pointer<Uint32> lpdwProcessList, int dwProcessCount) =>
    _GetConsoleProcessList(lpdwProcessList, dwProcessCount);

late final _GetConsoleProcessList = _kernel32.lookupFunction<
    Uint32 Function(Pointer<Uint32> lpdwProcessList, Uint32 dwProcessCount),
    int Function(Pointer<Uint32> lpdwProcessList,
        int dwProcessCount)>('GetConsoleProcessList');

int GetConsoleScreenBufferInfo(int hConsoleOutput,
        Pointer<CONSOLE_SCREEN_BUFFER_INFO> lpConsoleScreenBufferInfo) =>
    _GetConsoleScreenBufferInfo(hConsoleOutput, lpConsoleScreenBufferInfo);

late final _GetConsoleScreenBufferInfo = _kernel32.lookupFunction<
        Int32 Function(IntPtr hConsoleOutput,
            Pointer<CONSOLE_SCREEN_BUFFER_INFO> lpConsoleScreenBufferInfo),
        int Function(int hConsoleOutput,
            Pointer<CONSOLE_SCREEN_BUFFER_INFO> lpConsoleScreenBufferInfo)>(
    'GetConsoleScreenBufferInfo');

int GetConsoleScreenBufferInfoEx(int hConsoleOutput,
        Pointer<CONSOLE_SCREEN_BUFFER_INFOEX> lpConsoleScreenBufferInfoEx) =>
    _GetConsoleScreenBufferInfoEx(hConsoleOutput, lpConsoleScreenBufferInfoEx);

late final _GetConsoleScreenBufferInfoEx = _kernel32.lookupFunction<
        Int32 Function(IntPtr hConsoleOutput,
            Pointer<CONSOLE_SCREEN_BUFFER_INFOEX> lpConsoleScreenBufferInfoEx),
        int Function(int hConsoleOutput,
            Pointer<CONSOLE_SCREEN_BUFFER_INFOEX> lpConsoleScreenBufferInfoEx)>(
    'GetConsoleScreenBufferInfoEx');

int GetConsoleSelectionInfo(
        Pointer<CONSOLE_SELECTION_INFO> lpConsoleSelectionInfo) =>
    _GetConsoleSelectionInfo(lpConsoleSelectionInfo);

late final _GetConsoleSelectionInfo = _kernel32.lookupFunction<
        Int32 Function(Pointer<CONSOLE_SELECTION_INFO> lpConsoleSelectionInfo),
        int Function(Pointer<CONSOLE_SELECTION_INFO> lpConsoleSelectionInfo)>(
    'GetConsoleSelectionInfo');

int GetConsoleTitle(Pointer<Utf16> lpConsoleTitle, int nSize) =>
    _GetConsoleTitle(lpConsoleTitle, nSize);

late final _GetConsoleTitle = _kernel32.lookupFunction<
    Uint32 Function(Pointer<Utf16> lpConsoleTitle, Uint32 nSize),
    int Function(Pointer<Utf16> lpConsoleTitle, int nSize)>('GetConsoleTitleW');

int GetConsoleWindow() => _GetConsoleWindow();

late final _GetConsoleWindow = _kernel32
    .lookupFunction<IntPtr Function(), int Function()>('GetConsoleWindow');

int GetCurrentConsoleFont(int hConsoleOutput, int bMaximumWindow,
        Pointer<CONSOLE_FONT_INFO> lpConsoleCurrentFont) =>
    _GetCurrentConsoleFont(
        hConsoleOutput, bMaximumWindow, lpConsoleCurrentFont);

late final _GetCurrentConsoleFont = _kernel32.lookupFunction<
        Int32 Function(IntPtr hConsoleOutput, Int32 bMaximumWindow,
            Pointer<CONSOLE_FONT_INFO> lpConsoleCurrentFont),
        int Function(int hConsoleOutput, int bMaximumWindow,
            Pointer<CONSOLE_FONT_INFO> lpConsoleCurrentFont)>(
    'GetCurrentConsoleFont');

int GetCurrentConsoleFontEx(int hConsoleOutput, int bMaximumWindow,
        Pointer<CONSOLE_FONT_INFOEX> lpConsoleCurrentFontEx) =>
    _GetCurrentConsoleFontEx(
        hConsoleOutput, bMaximumWindow, lpConsoleCurrentFontEx);

late final _GetCurrentConsoleFontEx = _kernel32.lookupFunction<
        Int32 Function(IntPtr hConsoleOutput, Int32 bMaximumWindow,
            Pointer<CONSOLE_FONT_INFOEX> lpConsoleCurrentFontEx),
        int Function(int hConsoleOutput, int bMaximumWindow,
            Pointer<CONSOLE_FONT_INFOEX> lpConsoleCurrentFontEx)>(
    'GetCurrentConsoleFontEx');

COORD GetLargestConsoleWindowSize(int hConsoleOutput) =>
    _GetLargestConsoleWindowSize(hConsoleOutput);

late final _GetLargestConsoleWindowSize = _kernel32.lookupFunction<
    COORD Function(IntPtr hConsoleOutput),
    COORD Function(int hConsoleOutput)>('GetLargestConsoleWindowSize');

int GetNumberOfConsoleInputEvents(
        int hConsoleInput, Pointer<Uint32> lpNumberOfEvents) =>
    _GetNumberOfConsoleInputEvents(hConsoleInput, lpNumberOfEvents);

late final _GetNumberOfConsoleInputEvents = _kernel32.lookupFunction<
    Int32 Function(IntPtr hConsoleInput, Pointer<Uint32> lpNumberOfEvents),
    int Function(int hConsoleInput,
        Pointer<Uint32> lpNumberOfEvents)>('GetNumberOfConsoleInputEvents');

int GetNumberOfConsoleMouseButtons(Pointer<Uint32> lpNumberOfMouseButtons) =>
    _GetNumberOfConsoleMouseButtons(lpNumberOfMouseButtons);

late final _GetNumberOfConsoleMouseButtons = _kernel32.lookupFunction<
        Int32 Function(Pointer<Uint32> lpNumberOfMouseButtons),
        int Function(Pointer<Uint32> lpNumberOfMouseButtons)>(
    'GetNumberOfConsoleMouseButtons');

int GetStdHandle(int nStdHandle) => _GetStdHandle(nStdHandle);

late final _GetStdHandle = _kernel32.lookupFunction<
    IntPtr Function(Uint32 nStdHandle),
    int Function(int nStdHandle)>('GetStdHandle');

int PeekConsoleInput(int hConsoleInput, Pointer<INPUT_RECORD> lpBuffer,
        int nLength, Pointer<Uint32> lpNumberOfEventsRead) =>
    _PeekConsoleInput(hConsoleInput, lpBuffer, nLength, lpNumberOfEventsRead);

late final _PeekConsoleInput = _kernel32.lookupFunction<
    Int32 Function(IntPtr hConsoleInput, Pointer<INPUT_RECORD> lpBuffer,
        Uint32 nLength, Pointer<Uint32> lpNumberOfEventsRead),
    int Function(int hConsoleInput, Pointer<INPUT_RECORD> lpBuffer, int nLength,
        Pointer<Uint32> lpNumberOfEventsRead)>('PeekConsoleInputW');

int ReadConsoleInput(int hConsoleInput, Pointer<INPUT_RECORD> lpBuffer,
        int nLength, Pointer<Uint32> lpNumberOfEventsRead) =>
    _ReadConsoleInput(hConsoleInput, lpBuffer, nLength, lpNumberOfEventsRead);

late final _ReadConsoleInput = _kernel32.lookupFunction<
    Int32 Function(IntPtr hConsoleInput, Pointer<INPUT_RECORD> lpBuffer,
        Uint32 nLength, Pointer<Uint32> lpNumberOfEventsRead),
    int Function(int hConsoleInput, Pointer<INPUT_RECORD> lpBuffer, int nLength,
        Pointer<Uint32> lpNumberOfEventsRead)>('ReadConsoleInputW');

int ReadConsoleOutputAttribute(int hConsoleOutput, Pointer<Uint16> lpAttribute,
        int nLength, COORD dwReadCoord, Pointer<Uint32> lpNumberOfAttrsRead) =>
    _ReadConsoleOutputAttribute(
        hConsoleOutput, lpAttribute, nLength, dwReadCoord, lpNumberOfAttrsRead);

late final _ReadConsoleOutputAttribute = _kernel32.lookupFunction<
    Int32 Function(IntPtr hConsoleOutput, Pointer<Uint16> lpAttribute,
        Uint32 nLength, COORD dwReadCoord, Pointer<Uint32> lpNumberOfAttrsRead),
    int Function(
        int hConsoleOutput,
        Pointer<Uint16> lpAttribute,
        int nLength,
        COORD dwReadCoord,
        Pointer<Uint32> lpNumberOfAttrsRead)>('ReadConsoleOutputAttribute');

int ReadConsoleOutputCharacter(int hConsoleOutput, Pointer<Utf16> lpCharacter,
        int nLength, COORD dwReadCoord, Pointer<Uint32> lpNumberOfCharsRead) =>
    _ReadConsoleOutputCharacter(
        hConsoleOutput, lpCharacter, nLength, dwReadCoord, lpNumberOfCharsRead);

late final _ReadConsoleOutputCharacter = _kernel32.lookupFunction<
    Int32 Function(IntPtr hConsoleOutput, Pointer<Utf16> lpCharacter,
        Uint32 nLength, COORD dwReadCoord, Pointer<Uint32> lpNumberOfCharsRead),
    int Function(
        int hConsoleOutput,
        Pointer<Utf16> lpCharacter,
        int nLength,
        COORD dwReadCoord,
        Pointer<Uint32> lpNumberOfCharsRead)>('ReadConsoleOutputCharacterW');

int ReadConsoleOutput(
        int hConsoleOutput,
        Pointer<CHAR_INFO> lpBuffer,
        COORD dwBufferSize,
        COORD dwBufferCoord,
        Pointer<SMALL_RECT> lpReadRegion) =>
    _ReadConsoleOutput(
        hConsoleOutput, lpBuffer, dwBufferSize, dwBufferCoord, lpReadRegion);

late final _ReadConsoleOutput = _kernel32.lookupFunction<
    Int32 Function(
        IntPtr hConsoleOutput,
        Pointer<CHAR_INFO> lpBuffer,
        COORD dwBufferSize,
        COORD dwBufferCoord,
        Pointer<SMALL_RECT> lpReadRegion),
    int Function(
        int hConsoleOutput,
        Pointer<CHAR_INFO> lpBuffer,
        COORD dwBufferSize,
        COORD dwBufferCoord,
        Pointer<SMALL_RECT> lpReadRegion)>('ReadConsoleOutputW');

int ReadConsole(int hConsoleInput, Pointer lpBuffer, int nNumberOfCharsToRead,
        Pointer<Uint32> lpNumberOfCharsRead, Pointer<Void> pInputControl) =>
    _ReadConsole(hConsoleInput, lpBuffer, nNumberOfCharsToRead,
        lpNumberOfCharsRead, pInputControl);

late final _ReadConsole = _kernel32.lookupFunction<
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

int ResizePseudoConsole(int hPC, COORD size) => _ResizePseudoConsole(hPC, size);

late final _ResizePseudoConsole = _kernel32.lookupFunction<
    Int32 Function(IntPtr hPC, COORD size),
    int Function(int hPC, COORD size)>('ResizePseudoConsole');

int ScrollConsoleScreenBuffer(
        int hConsoleOutput,
        Pointer<SMALL_RECT> lpScrollRectangle,
        Pointer<SMALL_RECT> lpClipRectangle,
        COORD dwDestinationOrigin,
        Pointer<CHAR_INFO> lpFill) =>
    _ScrollConsoleScreenBuffer(hConsoleOutput, lpScrollRectangle,
        lpClipRectangle, dwDestinationOrigin, lpFill);

late final _ScrollConsoleScreenBuffer = _kernel32.lookupFunction<
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

int SetConsoleActiveScreenBuffer(int hConsoleOutput) =>
    _SetConsoleActiveScreenBuffer(hConsoleOutput);

late final _SetConsoleActiveScreenBuffer = _kernel32.lookupFunction<
    Int32 Function(IntPtr hConsoleOutput),
    int Function(int hConsoleOutput)>('SetConsoleActiveScreenBuffer');

int SetConsoleCP(int wCodePageID) => _SetConsoleCP(wCodePageID);

late final _SetConsoleCP = _kernel32.lookupFunction<
    Int32 Function(Uint32 wCodePageID),
    int Function(int wCodePageID)>('SetConsoleCP');

int SetConsoleCtrlHandler(
        Pointer<NativeFunction<HandlerRoutine>> HandlerRoutine, int Add) =>
    _SetConsoleCtrlHandler(HandlerRoutine, Add);

late final _SetConsoleCtrlHandler = _kernel32.lookupFunction<
    Int32 Function(
        Pointer<NativeFunction<HandlerRoutine>> HandlerRoutine, Int32 Add),
    int Function(Pointer<NativeFunction<HandlerRoutine>> HandlerRoutine,
        int Add)>('SetConsoleCtrlHandler');

int SetConsoleCursorInfo(
        int hConsoleOutput, Pointer<CONSOLE_CURSOR_INFO> lpConsoleCursorInfo) =>
    _SetConsoleCursorInfo(hConsoleOutput, lpConsoleCursorInfo);

late final _SetConsoleCursorInfo = _kernel32.lookupFunction<
        Int32 Function(IntPtr hConsoleOutput,
            Pointer<CONSOLE_CURSOR_INFO> lpConsoleCursorInfo),
        int Function(int hConsoleOutput,
            Pointer<CONSOLE_CURSOR_INFO> lpConsoleCursorInfo)>(
    'SetConsoleCursorInfo');

int SetConsoleCursorPosition(int hConsoleOutput, COORD dwCursorPosition) =>
    _SetConsoleCursorPosition(hConsoleOutput, dwCursorPosition);

late final _SetConsoleCursorPosition = _kernel32.lookupFunction<
    Int32 Function(IntPtr hConsoleOutput, COORD dwCursorPosition),
    int Function(int hConsoleOutput,
        COORD dwCursorPosition)>('SetConsoleCursorPosition');

int SetConsoleDisplayMode(int hConsoleOutput, int dwFlags,
        Pointer<COORD> lpNewScreenBufferDimensions) =>
    _SetConsoleDisplayMode(
        hConsoleOutput, dwFlags, lpNewScreenBufferDimensions);

late final _SetConsoleDisplayMode = _kernel32.lookupFunction<
    Int32 Function(IntPtr hConsoleOutput, Uint32 dwFlags,
        Pointer<COORD> lpNewScreenBufferDimensions),
    int Function(int hConsoleOutput, int dwFlags,
        Pointer<COORD> lpNewScreenBufferDimensions)>('SetConsoleDisplayMode');

int SetConsoleHistoryInfo(Pointer<CONSOLE_HISTORY_INFO> lpConsoleHistoryInfo) =>
    _SetConsoleHistoryInfo(lpConsoleHistoryInfo);

late final _SetConsoleHistoryInfo = _kernel32.lookupFunction<
        Int32 Function(Pointer<CONSOLE_HISTORY_INFO> lpConsoleHistoryInfo),
        int Function(Pointer<CONSOLE_HISTORY_INFO> lpConsoleHistoryInfo)>(
    'SetConsoleHistoryInfo');

int SetConsoleMode(int hConsoleHandle, int dwMode) =>
    _SetConsoleMode(hConsoleHandle, dwMode);

late final _SetConsoleMode = _kernel32.lookupFunction<
    Int32 Function(IntPtr hConsoleHandle, Uint32 dwMode),
    int Function(int hConsoleHandle, int dwMode)>('SetConsoleMode');

int SetConsoleNumberOfCommands(int Number, Pointer<Utf16> ExeName) =>
    _SetConsoleNumberOfCommands(Number, ExeName);

late final _SetConsoleNumberOfCommands = _kernel32.lookupFunction<
    Int32 Function(Uint32 Number, Pointer<Utf16> ExeName),
    int Function(
        int Number, Pointer<Utf16> ExeName)>('SetConsoleNumberOfCommandsW');

int SetConsoleOutputCP(int wCodePageID) => _SetConsoleOutputCP(wCodePageID);

late final _SetConsoleOutputCP = _kernel32.lookupFunction<
    Int32 Function(Uint32 wCodePageID),
    int Function(int wCodePageID)>('SetConsoleOutputCP');

int SetConsoleScreenBufferInfoEx(int hConsoleOutput,
        Pointer<CONSOLE_SCREEN_BUFFER_INFOEX> lpConsoleScreenBufferInfoEx) =>
    _SetConsoleScreenBufferInfoEx(hConsoleOutput, lpConsoleScreenBufferInfoEx);

late final _SetConsoleScreenBufferInfoEx = _kernel32.lookupFunction<
        Int32 Function(IntPtr hConsoleOutput,
            Pointer<CONSOLE_SCREEN_BUFFER_INFOEX> lpConsoleScreenBufferInfoEx),
        int Function(int hConsoleOutput,
            Pointer<CONSOLE_SCREEN_BUFFER_INFOEX> lpConsoleScreenBufferInfoEx)>(
    'SetConsoleScreenBufferInfoEx');

int SetConsoleScreenBufferSize(int hConsoleOutput, COORD dwSize) =>
    _SetConsoleScreenBufferSize(hConsoleOutput, dwSize);

late final _SetConsoleScreenBufferSize = _kernel32.lookupFunction<
    Int32 Function(IntPtr hConsoleOutput, COORD dwSize),
    int Function(
        int hConsoleOutput, COORD dwSize)>('SetConsoleScreenBufferSize');

int SetConsoleTextAttribute(int hConsoleOutput, int wAttributes) =>
    _SetConsoleTextAttribute(hConsoleOutput, wAttributes);

late final _SetConsoleTextAttribute = _kernel32.lookupFunction<
    Int32 Function(IntPtr hConsoleOutput, Uint16 wAttributes),
    int Function(
        int hConsoleOutput, int wAttributes)>('SetConsoleTextAttribute');

int SetConsoleTitle(Pointer<Utf16> lpConsoleTitle) =>
    _SetConsoleTitle(lpConsoleTitle);

late final _SetConsoleTitle = _kernel32.lookupFunction<
    Int32 Function(Pointer<Utf16> lpConsoleTitle),
    int Function(Pointer<Utf16> lpConsoleTitle)>('SetConsoleTitleW');

int SetConsoleWindowInfo(int hConsoleOutput, int bAbsolute,
        Pointer<SMALL_RECT> lpConsoleWindow) =>
    _SetConsoleWindowInfo(hConsoleOutput, bAbsolute, lpConsoleWindow);

late final _SetConsoleWindowInfo = _kernel32.lookupFunction<
    Int32 Function(IntPtr hConsoleOutput, Int32 bAbsolute,
        Pointer<SMALL_RECT> lpConsoleWindow),
    int Function(int hConsoleOutput, int bAbsolute,
        Pointer<SMALL_RECT> lpConsoleWindow)>('SetConsoleWindowInfo');

int SetCurrentConsoleFontEx(int hConsoleOutput, int bMaximumWindow,
        Pointer<CONSOLE_FONT_INFOEX> lpConsoleCurrentFontEx) =>
    _SetCurrentConsoleFontEx(
        hConsoleOutput, bMaximumWindow, lpConsoleCurrentFontEx);

late final _SetCurrentConsoleFontEx = _kernel32.lookupFunction<
        Int32 Function(IntPtr hConsoleOutput, Int32 bMaximumWindow,
            Pointer<CONSOLE_FONT_INFOEX> lpConsoleCurrentFontEx),
        int Function(int hConsoleOutput, int bMaximumWindow,
            Pointer<CONSOLE_FONT_INFOEX> lpConsoleCurrentFontEx)>(
    'SetCurrentConsoleFontEx');

int SetStdHandle(int nStdHandle, int hHandle) =>
    _SetStdHandle(nStdHandle, hHandle);

late final _SetStdHandle = _kernel32.lookupFunction<
    Int32 Function(Uint32 nStdHandle, IntPtr hHandle),
    int Function(int nStdHandle, int hHandle)>('SetStdHandle');

int SetStdHandleEx(int nStdHandle, int hHandle, Pointer<IntPtr> phPrevValue) =>
    _SetStdHandleEx(nStdHandle, hHandle, phPrevValue);

late final _SetStdHandleEx = _kernel32.lookupFunction<
    Int32 Function(
        Uint32 nStdHandle, IntPtr hHandle, Pointer<IntPtr> phPrevValue),
    int Function(int nStdHandle, int hHandle,
        Pointer<IntPtr> phPrevValue)>('SetStdHandleEx');

int WriteConsoleInput(int hConsoleInput, Pointer<INPUT_RECORD> lpBuffer,
        int nLength, Pointer<Uint32> lpNumberOfEventsWritten) =>
    _WriteConsoleInput(
        hConsoleInput, lpBuffer, nLength, lpNumberOfEventsWritten);

late final _WriteConsoleInput = _kernel32.lookupFunction<
    Int32 Function(IntPtr hConsoleInput, Pointer<INPUT_RECORD> lpBuffer,
        Uint32 nLength, Pointer<Uint32> lpNumberOfEventsWritten),
    int Function(int hConsoleInput, Pointer<INPUT_RECORD> lpBuffer, int nLength,
        Pointer<Uint32> lpNumberOfEventsWritten)>('WriteConsoleInputW');

int WriteConsoleOutputAttribute(
        int hConsoleOutput,
        Pointer<Uint16> lpAttribute,
        int nLength,
        COORD dwWriteCoord,
        Pointer<Uint32> lpNumberOfAttrsWritten) =>
    _WriteConsoleOutputAttribute(hConsoleOutput, lpAttribute, nLength,
        dwWriteCoord, lpNumberOfAttrsWritten);

late final _WriteConsoleOutputAttribute = _kernel32.lookupFunction<
    Int32 Function(
        IntPtr hConsoleOutput,
        Pointer<Uint16> lpAttribute,
        Uint32 nLength,
        COORD dwWriteCoord,
        Pointer<Uint32> lpNumberOfAttrsWritten),
    int Function(
        int hConsoleOutput,
        Pointer<Uint16> lpAttribute,
        int nLength,
        COORD dwWriteCoord,
        Pointer<Uint32> lpNumberOfAttrsWritten)>('WriteConsoleOutputAttribute');

int WriteConsoleOutputCharacter(
        int hConsoleOutput,
        Pointer<Utf16> lpCharacter,
        int nLength,
        COORD dwWriteCoord,
        Pointer<Uint32> lpNumberOfCharsWritten) =>
    _WriteConsoleOutputCharacter(hConsoleOutput, lpCharacter, nLength,
        dwWriteCoord, lpNumberOfCharsWritten);

late final _WriteConsoleOutputCharacter = _kernel32.lookupFunction<
        Int32 Function(
            IntPtr hConsoleOutput,
            Pointer<Utf16> lpCharacter,
            Uint32 nLength,
            COORD dwWriteCoord,
            Pointer<Uint32> lpNumberOfCharsWritten),
        int Function(
            int hConsoleOutput,
            Pointer<Utf16> lpCharacter,
            int nLength,
            COORD dwWriteCoord,
            Pointer<Uint32> lpNumberOfCharsWritten)>(
    'WriteConsoleOutputCharacterW');

int WriteConsoleOutput(
        int hConsoleOutput,
        Pointer<CHAR_INFO> lpBuffer,
        COORD dwBufferSize,
        COORD dwBufferCoord,
        Pointer<SMALL_RECT> lpWriteRegion) =>
    _WriteConsoleOutput(
        hConsoleOutput, lpBuffer, dwBufferSize, dwBufferCoord, lpWriteRegion);

late final _WriteConsoleOutput = _kernel32.lookupFunction<
    Int32 Function(
        IntPtr hConsoleOutput,
        Pointer<CHAR_INFO> lpBuffer,
        COORD dwBufferSize,
        COORD dwBufferCoord,
        Pointer<SMALL_RECT> lpWriteRegion),
    int Function(
        int hConsoleOutput,
        Pointer<CHAR_INFO> lpBuffer,
        COORD dwBufferSize,
        COORD dwBufferCoord,
        Pointer<SMALL_RECT> lpWriteRegion)>('WriteConsoleOutputW');

int WriteConsole(
        int hConsoleOutput,
        Pointer lpBuffer,
        int nNumberOfCharsToWrite,
        Pointer<Uint32> lpNumberOfCharsWritten,
        Pointer lpReserved) =>
    _WriteConsole(hConsoleOutput, lpBuffer, nNumberOfCharsToWrite,
        lpNumberOfCharsWritten, lpReserved);

late final _WriteConsole = _kernel32.lookupFunction<
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
