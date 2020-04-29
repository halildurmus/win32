// win32.dart

// Maps FFI prototypes onto the corresponding Win32 API function calls

import 'dart:ffi';
import 'package:ffi/ffi.dart';

import 'typedefs.dart';

// *** Callbacks ***
typedef LPFRHookProc = Pointer<Uint32> Function(IntPtr, Int32, IntPtr, IntPtr);
typedef TimerProc = Void Function(IntPtr, Uint32, Pointer<Uint32>, Int32);
typedef EnumWindowsProc = Int32 Function(IntPtr hwnd, IntPtr lParam);
typedef WindowProc = IntPtr Function(
    IntPtr hwnd, Int32 uMsg, IntPtr wParam, IntPtr lParam);

// *** Helper Function ***
final TEXT = Utf16.toUtf16;

// *** APIs ***
final user32 = DynamicLibrary.open('user32.dll');
final AppendMenu =
    user32.lookupFunction<appendMenuNative, appendMenuDart>('AppendMenuW');
final BeginPaint =
    user32.lookupFunction<beginPaintNative, beginPaintDart>('BeginPaint');
final CreateAcceleratorTable = user32.lookupFunction<
    createAcceleratorTableNative,
    createAcceleratorTableDart>('CreateAcceleratorTableW');
final CreateMenu =
    user32.lookupFunction<createMenuNative, createMenuDart>('CreateMenu');
final CreateWindowEx =
    user32.lookupFunction<createWindowExNative, createWindowExDart>(
        'CreateWindowExW');
final DefWindowProc = user32
    .lookupFunction<defWindowProcNative, defWindowProcDart>('DefWindowProcW');
final DestroyWindow = user32
    .lookupFunction<destroyWindowNative, destroyWindowDart>('DestroyWindow');
final DispatchMessage =
    user32.lookupFunction<dispatchMessageNative, dispatchMessageDart>(
        'DispatchMessageW');
final DrawText =
    user32.lookupFunction<drawTextNative, drawTextDart>('DrawTextW');
final EnableMenuItem = user32
    .lookupFunction<enableMenuItemNative, enableMenuItemDart>('EnableMenuItem');
final EndPaint =
    user32.lookupFunction<endPaintNative, endPaintDart>('EndPaint');
final EnumWindows =
    user32.lookupFunction<enumWindowsNative, enumWindowsDart>('EnumWindows');
final FillRect =
    user32.lookupFunction<fillRectNative, fillRectDart>('FillRect');
final FindWindowEx = user32
    .lookupFunction<findWindowExNative, findWindowExDart>('FindWindowExW');
final GetClientRect = user32
    .lookupFunction<getClientRectNative, getClientRectDart>('GetClientRect');
final GetDC = user32.lookupFunction<getDCNative, getDCDart>('GetDC');
final GetMessage =
    user32.lookupFunction<getMessageNative, getMessageDart>('GetMessageW');
final GetScrollInfo = user32
    .lookupFunction<getScrollInfoNative, getScrollInfoDart>('GetScrollInfo');
final InvalidateRect = user32
    .lookupFunction<invalidateRectNative, invalidateRectDart>('InvalidateRect');
final GetWindowText = user32
    .lookupFunction<getWindowTextNative, getWindowTextDart>('GetWindowTextW');
final GetWindowTextLength =
    user32.lookupFunction<getWindowTextLengthNative, getWindowTextLengthDart>(
        'GetWindowTextLengthW');
final IsClipboardFormatAvailable = user32.lookupFunction<
    isClipboardFormatAvailableNative,
    isClipboardFormatAvailableDart>('IsClipboardFormatAvailable');
final IsDialogMessage =
    user32.lookupFunction<isDialogMessageNative, isDialogMessageDart>(
        'IsDialogMessageW');
final IsWindowVisible =
    user32.lookupFunction<isWindowVisibleNative, isWindowVisibleDart>(
        'IsWindowVisible');
final KillTimer =
    user32.lookupFunction<killTimerNative, killTimerDart>('KillTimer');
final LoadCursor =
    user32.lookupFunction<loadCursorNative, loadCursorDart>('LoadCursorW');
final LoadIcon =
    user32.lookupFunction<loadIconNative, loadIconDart>('LoadIconW');
final MessageBox =
    user32.lookupFunction<messageBoxNative, messageBoxDart>('MessageBoxW');
final MoveWindow =
    user32.lookupFunction<moveWindowNative, moveWindowDart>('MoveWindow');
final PostQuitMessage =
    user32.lookupFunction<postQuitMessageNative, postQuitMessageDart>(
        'PostQuitMessage');
final RegisterClass = user32
    .lookupFunction<registerClassNative, registerClassDart>('RegisterClassW');
final RegisterWindowMessage = user32.lookupFunction<registerWindowMessageNative,
    registerWindowMessageDart>('RegisterWindowMessageW');
final ReleaseDC =
    user32.lookupFunction<releaseDCNative, releaseDCDart>('ReleaseDC');
final ScrollWindow =
    user32.lookupFunction<scrollWindowNative, scrollWindowDart>('ScrollWindow');
final SendInput =
    user32.lookupFunction<sendInputNative, sendInputDart>('SendInput');
final SendMessage =
    user32.lookupFunction<sendMessageNative, sendMessageDart>('SendMessageW');
final SetScrollInfo = user32
    .lookupFunction<setScrollInfoNative, setScrollInfoDart>('SetScrollInfo');
final SetFocus =
    user32.lookupFunction<setFocusNative, setFocusDart>('SetFocus');
final SetTimer =
    user32.lookupFunction<setTimerNative, setTimerDart>('SetTimer');
final SetWindowText = user32
    .lookupFunction<setWindowTextNative, setWindowTextDart>('SetWindowTextW');
final ShowWindow =
    user32.lookupFunction<showWindowNative, showWindowDart>('ShowWindow');
final TranslateAccelerator =
    user32.lookupFunction<translateAcceleratorNative, translateAcceleratorDart>(
        'TranslateAcceleratorW');
final TranslateMessage =
    user32.lookupFunction<translateMessageNative, translateMessageDart>(
        'TranslateMessage');
final UpdateWindow =
    user32.lookupFunction<updateWindowNative, updateWindowDart>('UpdateWindow');

final kernel32 = DynamicLibrary.open('kernel32.dll');
final CreateFile =
    kernel32.lookupFunction<createFileNative, createFileDart>('CreateFileW');
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
final CreateFontIndirect =
    gdi32.lookupFunction<createFontIndirectNative, createFontIndirectDart>(
        'CreateFontIndirectW');
final CreateSolidBrush =
    gdi32.lookupFunction<createSolidBrushNative, createSolidBrushDart>(
        'CreateSolidBrush');
final DeleteObject =
    gdi32.lookupFunction<deleteObjectNative, deleteObjectDart>('DeleteObject');
final GetObject =
    gdi32.lookupFunction<getObjectNative, getObjectDart>('GetObjectW');
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
final ChooseFont =
    comdlg32.lookupFunction<chooseFontNative, chooseFontDart>('ChooseFontW');
final FindText =
    comdlg32.lookupFunction<findTextNative, findTextDart>('FindTextW');
final GetOpenFileName =
    comdlg32.lookupFunction<getOpenFileNameNative, getOpenFileNameDart>(
        'GetOpenFileNameW');
final GetSaveFileName =
    comdlg32.lookupFunction<getSaveFileNameNative, getSaveFileNameDart>(
        'GetSaveFileNameW');
final ReplaceText =
    comdlg32.lookupFunction<replaceTextNative, replaceTextDart>('ReplaceTextW');

final ole32 = DynamicLibrary.open('ole32.dll');
final CoCreateGuid =
    ole32.lookupFunction<coCreateGuidNative, coCreateGuidDart>('CoCreateGuid');
final CoTaskMemFree = ole32
    .lookupFunction<coTaskMemFreeNative, coTaskMemFreeDart>('CoTaskMemFree');
