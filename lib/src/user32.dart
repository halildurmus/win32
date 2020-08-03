// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Maps FFI prototypes onto the corresponding Win32 API function calls

import 'dart:ffi';

import 'typedefs.dart';

final _user32 = DynamicLibrary.open('user32.dll');

/// {@category user32}
final AppendMenu =
    _user32.lookupFunction<appendMenuNative, appendMenuDart>('AppendMenuW');

/// {@category user32}
final BeginPaint =
    _user32.lookupFunction<beginPaintNative, beginPaintDart>('BeginPaint');

/// {@category user32}
final CreateAcceleratorTable = _user32.lookupFunction<
    createAcceleratorTableNative,
    createAcceleratorTableDart>('CreateAcceleratorTableW');

/// {@category user32}
final CreateMenu =
    _user32.lookupFunction<createMenuNative, createMenuDart>('CreateMenu');

/// {@category user32}
final CreateWindowEx =
    _user32.lookupFunction<createWindowExNative, createWindowExDart>(
        'CreateWindowExW');

/// {@category user32}
final DefWindowProc = _user32
    .lookupFunction<defWindowProcNative, defWindowProcDart>('DefWindowProcW');

/// {@category user32}
final DestroyWindow = _user32
    .lookupFunction<destroyWindowNative, destroyWindowDart>('DestroyWindow');

/// {@category user32}
final DispatchMessage =
    _user32.lookupFunction<dispatchMessageNative, dispatchMessageDart>(
        'DispatchMessageW');

/// {@category user32}
final DrawText =
    _user32.lookupFunction<drawTextNative, drawTextDart>('DrawTextW');

/// {@category user32}
final EnableMenuItem = _user32
    .lookupFunction<enableMenuItemNative, enableMenuItemDart>('EnableMenuItem');

/// {@category user32}
final EndPaint =
    _user32.lookupFunction<endPaintNative, endPaintDart>('EndPaint');

/// {@category user32}
final EnumDisplayMonitors =
    _user32.lookupFunction<enumDisplayMonitorsNative, enumDisplayMonitorsDart>(
        'EnumDisplayMonitors');

/// {@category user32}
final EnumWindows =
    _user32.lookupFunction<enumWindowsNative, enumWindowsDart>('EnumWindows');

/// {@category user32}
final FillRect =
    _user32.lookupFunction<fillRectNative, fillRectDart>('FillRect');

/// {@category user32}
final FindWindowEx = _user32
    .lookupFunction<findWindowExNative, findWindowExDart>('FindWindowExW');

/// {@category user32}
final GetClientRect = _user32
    .lookupFunction<getClientRectNative, getClientRectDart>('GetClientRect');

/// {@category user32}
final GetDC = _user32.lookupFunction<getDCNative, getDCDart>('GetDC');

/// {@category user32}
final GetMessage =
    _user32.lookupFunction<getMessageNative, getMessageDart>('GetMessageW');

/// {@category user32}
final GetMonitorInfo =
    _user32.lookupFunction<getMonitorInfoNative, getMonitorInfoDart>(
        'GetMonitorInfoW');

/// {@category user32}
final GetScrollInfo = _user32
    .lookupFunction<getScrollInfoNative, getScrollInfoDart>('GetScrollInfo');

/// {@category user32}
final GetWindowText = _user32
    .lookupFunction<getWindowTextNative, getWindowTextDart>('GetWindowTextW');

/// {@category user32}
final GetWindowTextLength =
    _user32.lookupFunction<getWindowTextLengthNative, getWindowTextLengthDart>(
        'GetWindowTextLengthW');

/// {@category user32}
final InvalidateRect = _user32
    .lookupFunction<invalidateRectNative, invalidateRectDart>('InvalidateRect');

/// {@category user32}
final IsClipboardFormatAvailable = _user32.lookupFunction<
    isClipboardFormatAvailableNative,
    isClipboardFormatAvailableDart>('IsClipboardFormatAvailable');

/// {@category user32}
final IsDialogMessage =
    _user32.lookupFunction<isDialogMessageNative, isDialogMessageDart>(
        'IsDialogMessageW');

/// {@category user32}
final IsWindowVisible =
    _user32.lookupFunction<isWindowVisibleNative, isWindowVisibleDart>(
        'IsWindowVisible');

/// {@category user32}
final KillTimer =
    _user32.lookupFunction<killTimerNative, killTimerDart>('KillTimer');

/// {@category user32}
final LoadCursor =
    _user32.lookupFunction<loadCursorNative, loadCursorDart>('LoadCursorW');

/// {@category user32}
final LoadIcon =
    _user32.lookupFunction<loadIconNative, loadIconDart>('LoadIconW');

/// {@category user32}
final LockWorkStation =
    _user32.lookupFunction<lockWorkStationNative, lockWorkStationDart>(
        'LockWorkStation');

/// {@category user32}
final MessageBox =
    _user32.lookupFunction<messageBoxNative, messageBoxDart>('MessageBoxW');

/// {@category user32}
final MoveWindow =
    _user32.lookupFunction<moveWindowNative, moveWindowDart>('MoveWindow');

/// {@category user32}
final MonitorFromWindow =
    _user32.lookupFunction<monitorFromWindowNative, monitorFromWindowDart>(
        'MonitorFromWindow');

/// {@category user32}
final PeekMessage =
    _user32.lookupFunction<peekMessageNative, peekMessageDart>('PeekMessageW');

/// {@category user32}
final PostQuitMessage =
    _user32.lookupFunction<postQuitMessageNative, postQuitMessageDart>(
        'PostQuitMessage');

/// {@category user32}
final RegisterClass = _user32
    .lookupFunction<registerClassNative, registerClassDart>('RegisterClassW');

/// {@category user32}
final RegisterWindowMessage = _user32.lookupFunction<
    registerWindowMessageNative,
    registerWindowMessageDart>('RegisterWindowMessageW');

/// {@category user32}
final ReleaseDC =
    _user32.lookupFunction<releaseDCNative, releaseDCDart>('ReleaseDC');

/// {@category user32}
final ScrollWindow = _user32
    .lookupFunction<scrollWindowNative, scrollWindowDart>('ScrollWindow');

/// {@category user32}
final SendInput =
    _user32.lookupFunction<sendInputNative, sendInputDart>('SendInput');

/// {@category user32}
final SendMessage =
    _user32.lookupFunction<sendMessageNative, sendMessageDart>('SendMessageW');

/// {@category user32}
final SetFocus =
    _user32.lookupFunction<setFocusNative, setFocusDart>('SetFocus');

/// {@category user32}
final SetScrollInfo = _user32
    .lookupFunction<setScrollInfoNative, setScrollInfoDart>('SetScrollInfo');

/// {@category user32}
final SetTimer =
    _user32.lookupFunction<setTimerNative, setTimerDart>('SetTimer');

/// {@category user32}
final SetWindowText = _user32
    .lookupFunction<setWindowTextNative, setWindowTextDart>('SetWindowTextW');

/// {@category user32}
final ShowWindow =
    _user32.lookupFunction<showWindowNative, showWindowDart>('ShowWindow');

/// {@category user32}
final TranslateAccelerator = _user32.lookupFunction<translateAcceleratorNative,
    translateAcceleratorDart>('TranslateAcceleratorW');

/// {@category user32}
final TranslateMessage =
    _user32.lookupFunction<translateMessageNative, translateMessageDart>(
        'TranslateMessage');

/// {@category user32}
final UpdateWindow = _user32
    .lookupFunction<updateWindowNative, updateWindowDart>('UpdateWindow');
