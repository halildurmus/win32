// user32.dart

// Maps FFI prototypes onto the corresponding Win32 API function calls

import 'dart:ffi';

import 'typedefs.dart';

final _user32 = DynamicLibrary.open('user32.dll');
final AppendMenu =
    _user32.lookupFunction<appendMenuNative, appendMenuDart>('AppendMenuW');
final BeginPaint =
    _user32.lookupFunction<beginPaintNative, beginPaintDart>('BeginPaint');
final CreateAcceleratorTable = _user32.lookupFunction<
    createAcceleratorTableNative,
    createAcceleratorTableDart>('CreateAcceleratorTableW');
final CreateMenu =
    _user32.lookupFunction<createMenuNative, createMenuDart>('CreateMenu');
final CreateWindowEx =
    _user32.lookupFunction<createWindowExNative, createWindowExDart>(
        'CreateWindowExW');
final DefWindowProc = _user32
    .lookupFunction<defWindowProcNative, defWindowProcDart>('DefWindowProcW');
final DestroyWindow = _user32
    .lookupFunction<destroyWindowNative, destroyWindowDart>('DestroyWindow');
final DispatchMessage =
    _user32.lookupFunction<dispatchMessageNative, dispatchMessageDart>(
        'DispatchMessageW');
final DrawText =
    _user32.lookupFunction<drawTextNative, drawTextDart>('DrawTextW');
final EnableMenuItem = _user32
    .lookupFunction<enableMenuItemNative, enableMenuItemDart>('EnableMenuItem');
final EndPaint =
    _user32.lookupFunction<endPaintNative, endPaintDart>('EndPaint');
final EnumWindows =
    _user32.lookupFunction<enumWindowsNative, enumWindowsDart>('EnumWindows');
final FillRect =
    _user32.lookupFunction<fillRectNative, fillRectDart>('FillRect');
final FindWindowEx = _user32
    .lookupFunction<findWindowExNative, findWindowExDart>('FindWindowExW');
final GetClientRect = _user32
    .lookupFunction<getClientRectNative, getClientRectDart>('GetClientRect');
final GetDC = _user32.lookupFunction<getDCNative, getDCDart>('GetDC');
final GetMessage =
    _user32.lookupFunction<getMessageNative, getMessageDart>('GetMessageW');
final GetScrollInfo = _user32
    .lookupFunction<getScrollInfoNative, getScrollInfoDart>('GetScrollInfo');
final GetWindowText = _user32
    .lookupFunction<getWindowTextNative, getWindowTextDart>('GetWindowTextW');
final GetWindowTextLength =
    _user32.lookupFunction<getWindowTextLengthNative, getWindowTextLengthDart>(
        'GetWindowTextLengthW');
final InvalidateRect = _user32
    .lookupFunction<invalidateRectNative, invalidateRectDart>('InvalidateRect');
final IsClipboardFormatAvailable = _user32.lookupFunction<
    isClipboardFormatAvailableNative,
    isClipboardFormatAvailableDart>('IsClipboardFormatAvailable');
final IsDialogMessage =
    _user32.lookupFunction<isDialogMessageNative, isDialogMessageDart>(
        'IsDialogMessageW');
final IsWindowVisible =
    _user32.lookupFunction<isWindowVisibleNative, isWindowVisibleDart>(
        'IsWindowVisible');
final KillTimer =
    _user32.lookupFunction<killTimerNative, killTimerDart>('KillTimer');
final LoadCursor =
    _user32.lookupFunction<loadCursorNative, loadCursorDart>('LoadCursorW');
final LoadIcon =
    _user32.lookupFunction<loadIconNative, loadIconDart>('LoadIconW');
final MessageBox =
    _user32.lookupFunction<messageBoxNative, messageBoxDart>('MessageBoxW');
final MoveWindow =
    _user32.lookupFunction<moveWindowNative, moveWindowDart>('MoveWindow');
final PeekMessage =
    _user32.lookupFunction<peekMessageNative, peekMessageDart>('PeekMessageW');
final PostQuitMessage =
    _user32.lookupFunction<postQuitMessageNative, postQuitMessageDart>(
        'PostQuitMessage');
final RegisterClass = _user32
    .lookupFunction<registerClassNative, registerClassDart>('RegisterClassW');
final RegisterWindowMessage = _user32.lookupFunction<
    registerWindowMessageNative,
    registerWindowMessageDart>('RegisterWindowMessageW');
final ReleaseDC =
    _user32.lookupFunction<releaseDCNative, releaseDCDart>('ReleaseDC');
final ScrollWindow = _user32
    .lookupFunction<scrollWindowNative, scrollWindowDart>('ScrollWindow');
final SendInput =
    _user32.lookupFunction<sendInputNative, sendInputDart>('SendInput');
final SendMessage =
    _user32.lookupFunction<sendMessageNative, sendMessageDart>('SendMessageW');
final SetFocus =
    _user32.lookupFunction<setFocusNative, setFocusDart>('SetFocus');
final SetScrollInfo = _user32
    .lookupFunction<setScrollInfoNative, setScrollInfoDart>('SetScrollInfo');
final SetTimer =
    _user32.lookupFunction<setTimerNative, setTimerDart>('SetTimer');
final SetWindowText = _user32
    .lookupFunction<setWindowTextNative, setWindowTextDart>('SetWindowTextW');
final ShowWindow =
    _user32.lookupFunction<showWindowNative, showWindowDart>('ShowWindow');
final TranslateAccelerator = _user32.lookupFunction<translateAcceleratorNative,
    translateAcceleratorDart>('TranslateAcceleratorW');
final TranslateMessage =
    _user32.lookupFunction<translateMessageNative, translateMessageDart>(
        'TranslateMessage');
final UpdateWindow = _user32
    .lookupFunction<updateWindowNative, updateWindowDart>('UpdateWindow');
