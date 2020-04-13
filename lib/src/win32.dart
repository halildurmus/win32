// win32.dart

// Maps FFI prototypes onto the corresponding Win32 API function calls

import 'dart:ffi';
import 'package:ffi/ffi.dart';

import 'typedefs.dart';

// Prototypes of window-related functions, constants and structs in user32.dll

// *** Callbacks ***
typedef TimerProc = Void Function(
    Int64 Arg1, Uint32 Arg2, Pointer<Uint32> Arg3, Int32 Arg4);
typedef WindowProc = Int64 Function(
    Int64 hwnd, Int32 uMsg, Int64 wParam, Int64 lParam);

// *** Helper Function ***
final TEXT = Utf16.toUtf16;

// *** APIs ***
final user32 = DynamicLibrary.open('user32.dll');
final BeginPaint =
    user32.lookupFunction<beginPaintNative, beginPaintDart>('BeginPaint');
final CreateWindowEx =
    user32.lookupFunction<createWindowExNative, createWindowExDart>(
        'CreateWindowExW');
final DefWindowProc = user32
    .lookupFunction<defWindowProcNative, defWindowProcDart>('DefWindowProcW');
final DispatchMessage =
    user32.lookupFunction<dispatchMessageNative, dispatchMessageDart>(
        'DispatchMessageW');
final DrawText =
    user32.lookupFunction<drawTextNative, drawTextDart>('DrawTextW');
final EndPaint =
    user32.lookupFunction<endPaintNative, endPaintDart>('EndPaint');
final FillRect =
    user32.lookupFunction<fillRectNative, fillRectDart>('FillRect');
final GetClientRect = user32
    .lookupFunction<getClientRectNative, getClientRectDart>('GetClientRect');
final GetDC = user32.lookupFunction<getDCNative, getDCDart>('GetDC');
final GetMessage =
    user32.lookupFunction<getMessageNative, getMessageDart>('GetMessageW');
final GetScrollInfo = user32
    .lookupFunction<getScrollInfoNative, getScrollInfoDart>('GetScrollInfo');
final KillTimer =
    user32.lookupFunction<killTimerNative, killTimerDart>('KillTimer');
final LoadCursor =
    user32.lookupFunction<loadCursorNative, loadCursorDart>('LoadCursorW');
final LoadIcon =
    user32.lookupFunction<loadIconNative, loadIconDart>('LoadIconW');
final MessageBox =
    user32.lookupFunction<messageBoxNative, messageBoxDart>('MessageBoxW');
final PostQuitMessage =
    user32.lookupFunction<postQuitMessageNative, postQuitMessageDart>(
        'PostQuitMessage');
final RegisterClass = user32
    .lookupFunction<registerClassNative, registerClassDart>('RegisterClassW');
final ReleaseDC =
    user32.lookupFunction<releaseDCNative, releaseDCDart>('ReleaseDC');
final ScrollWindow =
    user32.lookupFunction<scrollWindowNative, scrollWindowDart>('ScrollWindow');
final SendInput =
    user32.lookupFunction<sendInputNative, sendInputDart>('SendInput');
final SetScrollInfo = user32
    .lookupFunction<setScrollInfoNative, setScrollInfoDart>('SetScrollInfo');
final SetTimer =
    user32.lookupFunction<setTimerNative, setTimerDart>('SetTimer');
final ShowWindow =
    user32.lookupFunction<showWindowNative, showWindowDart>('ShowWindow');
final TranslateMessage =
    user32.lookupFunction<translateMessageNative, translateMessageDart>(
        'TranslateMessage');
final UpdateWindow =
    user32.lookupFunction<updateWindowNative, updateWindowDart>('UpdateWindow');

final kernel32 = DynamicLibrary.open('kernel32.dll');
final FindFirstVolume =
    kernel32.lookupFunction<findFirstVolumeNative, findFirstVolumeDart>(
        'FindFirstVolumeW');
final FindNextVolume =
    kernel32.lookupFunction<findNextVolumeNative, findNextVolumeDart>(
        'FindNextVolumeW');
final FindVolumeClose =
    kernel32.lookupFunction<findVolumeCloseNative, findVolumeCloseDart>(
        'FindVolumeClose');
final GetLastError = kernel32
    .lookupFunction<getLastErrorNative, getLastErrorDart>('GetLastError');
final GetModuleHandle =
    kernel32.lookupFunction<getModuleHandleNative, getModuleHandleDart>(
        'GetModuleHandleW');
final GetStdHandle = kernel32
    .lookupFunction<getStdHandleNative, getStdHandleDart>('GetStdHandle');
final GetVolumePathNamesForVolumeName = kernel32.lookupFunction<
    getVolumePathNamesForVolumeNameNative,
    getVolumePathNamesForVolumeNameDart>('GetVolumePathNamesForVolumeNameW');
final GetConsoleScreenBufferInfo = kernel32.lookupFunction<
    getConsoleScreenBufferInfoNative,
    getConsoleScreenBufferInfoDart>('GetConsoleScreenBufferInfo');
final QueryDosDevice =
    kernel32.lookupFunction<queryDosDeviceNative, queryDosDeviceDart>(
        'QueryDosDeviceW');
final SetConsoleMode = kernel32
    .lookupFunction<setConsoleModeNative, setConsoleModeDart>('SetConsoleMode');
final SetConsoleCursorInfo = kernel32.lookupFunction<setConsoleCursorInfoNative,
    setConsoleCursorInfoDart>('SetConsoleCursorInfo');
final SetConsoleCursorPosition = kernel32.lookupFunction<
    setConsoleCursorPositionNative,
    setConsoleCursorPositionDart>('SetConsoleCursorPosition');
final Sleep = kernel32.lookupFunction<sleepNative, sleepDart>('Sleep');
final FillConsoleOutputCharacter = kernel32.lookupFunction<
    fillConsoleOutputCharacterNative,
    fillConsoleOutputCharacterDart>('FillConsoleOutputCharacterW');
final FillConsoleOutputAttribute = kernel32.lookupFunction<
    fillConsoleOutputAttributeNative,
    fillConsoleOutputAttributeDart>('FillConsoleOutputAttribute');

final gdi32 = DynamicLibrary.open('gdi32.dll');
final CreateSolidBrush =
    gdi32.lookupFunction<createSolidBrushNative, createSolidBrushDart>(
        'CreateSolidBrush');
final DeleteObject =
    gdi32.lookupFunction<deleteObjectNative, deleteObjectDart>('DeleteObject');
final GetStockObject = gdi32
    .lookupFunction<getStockObjectNative, getStockObjectDart>('GetStockObject');
final GetTextMetrics =
    gdi32.lookupFunction<getTextMetricsNative, getTextMetricsDart>(
        'GetTextMetricsW');
final LineTo = gdi32.lookupFunction<lineToNative, lineToDart>('LineTo');
final MoveToEx = gdi32.lookupFunction<moveToExNative, moveToExDart>('MoveToEx');
final SaveDC = gdi32.lookupFunction<saveDCNative, saveDCDart>('SaveDC');
final SetBkColor =
    gdi32.lookupFunction<setBkColorNative, setBkColorDart>('SetBkColor');
final SetBkMode =
    gdi32.lookupFunction<setBkModeNative, setBkModeDart>('SetBkMode');
final SetMapMode =
    gdi32.lookupFunction<setMapModeNative, setMapModeDart>('SetMapMode');
final SetTextColor =
    gdi32.lookupFunction<setTextColorNative, setTextColorDart>('SetTextColor');
final SetViewportExtEx =
    gdi32.lookupFunction<setViewportExtExNative, setViewportExtExDart>(
        'SetViewportExtEx');
final SetViewportOrgEx =
    gdi32.lookupFunction<setViewportOrgExNative, setViewportOrgExDart>(
        'SetViewportOrgEx');
final SetWindowExtEx = gdi32
    .lookupFunction<setWindowExtExNative, setWindowExtExDart>('SetWindowExtEx');
final TextOut = gdi32.lookupFunction<textOutNative, textOutDart>('TextOutW');

final shell32 = DynamicLibrary.open('shell32.dll');
final SHGetFolderPath =
    shell32.lookupFunction<shGetFolderPathNative, shGetFolderPathDart>(
        'SHGetFolderPathW');
final SHGetKnownFolderPath = shell32.lookupFunction<shGetKnownFolderPathNative,
    shGetKnownFolderPathDart>('SHGetKnownFolderPath');
final ShellExecute = shell32
    .lookupFunction<shellExecuteNative, shellExecuteDart>('ShellExecuteW');

final comdlg32 = DynamicLibrary.open('comdlg32.dll');
final ChooseColor =
    comdlg32.lookupFunction<chooseColorNative, chooseColorDart>('ChooseColorW');

final ole32 = DynamicLibrary.open('ole32.dll');
final CoCreateGuid =
    ole32.lookupFunction<coCreateGuidNative, coCreateGuidDart>('CoCreateGuid');
final CoTaskMemFree = ole32
    .lookupFunction<coTaskMemFreeNative, coTaskMemFreeDart>('CoTaskMemFree');
