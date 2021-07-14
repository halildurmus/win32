// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering, unused_element

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';
import 'structs.g.dart';

import '../../foundation/structs.g.dart';
import '../../system/console/structs.g.dart';
import '../../system/systeminformation/structs.g.dart';
import '../../ui/keyboardandmouseinput/structs.g.dart';

// -----------------------------------------------------------------------
// USER32.dll
// -----------------------------------------------------------------------
final _user32 = DynamicLibrary.open('USER32.dll');

int ActivateKeyboardLayout(int hkl, int Flags) =>
    _ActivateKeyboardLayout(hkl, Flags);

late final _ActivateKeyboardLayout = _user32.lookupFunction<
    IntPtr Function(IntPtr hkl, Uint32 Flags),
    int Function(int hkl, int Flags)>('ActivateKeyboardLayout');

int BlockInput(int fBlockIt) => _BlockInput(fBlockIt);

late final _BlockInput = _user32.lookupFunction<Int32 Function(Int32 fBlockIt),
    int Function(int fBlockIt)>('BlockInput');

int DefRawInputProc(
        Pointer<Pointer<RAWINPUT>> paRawInput, int nInput, int cbSizeHeader) =>
    _DefRawInputProc(paRawInput, nInput, cbSizeHeader);

late final _DefRawInputProc = _user32.lookupFunction<
    IntPtr Function(Pointer<Pointer<RAWINPUT>> paRawInput, Int32 nInput,
        Uint32 cbSizeHeader),
    int Function(Pointer<Pointer<RAWINPUT>> paRawInput, int nInput,
        int cbSizeHeader)>('DefRawInputProc');

int DragDetect(int hwnd, POINT pt) => _DragDetect(hwnd, pt);

late final _DragDetect = _user32.lookupFunction<
    Int32 Function(IntPtr hwnd, POINT pt),
    int Function(int hwnd, POINT pt)>('DragDetect');

int EnableWindow(int hWnd, int bEnable) => _EnableWindow(hWnd, bEnable);

late final _EnableWindow = _user32.lookupFunction<
    Int32 Function(IntPtr hWnd, Int32 bEnable),
    int Function(int hWnd, int bEnable)>('EnableWindow');

int GetActiveWindow() => _GetActiveWindow();

late final _GetActiveWindow = _user32
    .lookupFunction<IntPtr Function(), int Function()>('GetActiveWindow');

int GetAsyncKeyState(int vKey) => _GetAsyncKeyState(vKey);

late final _GetAsyncKeyState =
    _user32.lookupFunction<Int16 Function(Int32 vKey), int Function(int vKey)>(
        'GetAsyncKeyState');

int GetCapture() => _GetCapture();

late final _GetCapture =
    _user32.lookupFunction<IntPtr Function(), int Function()>('GetCapture');

int GetDoubleClickTime() => _GetDoubleClickTime();

late final _GetDoubleClickTime = _user32
    .lookupFunction<Uint32 Function(), int Function()>('GetDoubleClickTime');

int GetFocus() => _GetFocus();

late final _GetFocus =
    _user32.lookupFunction<IntPtr Function(), int Function()>('GetFocus');

int GetKBCodePage() => _GetKBCodePage();

late final _GetKBCodePage =
    _user32.lookupFunction<Uint32 Function(), int Function()>('GetKBCodePage');

int GetKeyNameText(int lParam, Pointer<Utf16> lpString, int cchSize) =>
    _GetKeyNameText(lParam, lpString, cchSize);

late final _GetKeyNameText = _user32.lookupFunction<
    Int32 Function(Int32 lParam, Pointer<Utf16> lpString, Int32 cchSize),
    int Function(
        int lParam, Pointer<Utf16> lpString, int cchSize)>('GetKeyNameTextW');

int GetKeyState(int nVirtKey) => _GetKeyState(nVirtKey);

late final _GetKeyState = _user32.lookupFunction<Int16 Function(Int32 nVirtKey),
    int Function(int nVirtKey)>('GetKeyState');

int GetKeyboardLayout(int idThread) => _GetKeyboardLayout(idThread);

late final _GetKeyboardLayout = _user32.lookupFunction<
    IntPtr Function(Uint32 idThread),
    int Function(int idThread)>('GetKeyboardLayout');

int GetKeyboardLayoutList(int nBuff, Pointer<IntPtr> lpList) =>
    _GetKeyboardLayoutList(nBuff, lpList);

late final _GetKeyboardLayoutList = _user32.lookupFunction<
    Int32 Function(Int32 nBuff, Pointer<IntPtr> lpList),
    int Function(int nBuff, Pointer<IntPtr> lpList)>('GetKeyboardLayoutList');

int GetKeyboardLayoutName(Pointer<Utf16> pwszKLID) =>
    _GetKeyboardLayoutName(pwszKLID);

late final _GetKeyboardLayoutName = _user32.lookupFunction<
    Int32 Function(Pointer<Utf16> pwszKLID),
    int Function(Pointer<Utf16> pwszKLID)>('GetKeyboardLayoutNameW');

int GetKeyboardState(Pointer<Uint8> lpKeyState) =>
    _GetKeyboardState(lpKeyState);

late final _GetKeyboardState = _user32.lookupFunction<
    Int32 Function(Pointer<Uint8> lpKeyState),
    int Function(Pointer<Uint8> lpKeyState)>('GetKeyboardState');

int GetKeyboardType(int nTypeFlag) => _GetKeyboardType(nTypeFlag);

late final _GetKeyboardType = _user32.lookupFunction<
    Int32 Function(Int32 nTypeFlag),
    int Function(int nTypeFlag)>('GetKeyboardType');

int GetLastInputInfo(Pointer<LASTINPUTINFO> plii) => _GetLastInputInfo(plii);

late final _GetLastInputInfo = _user32.lookupFunction<
    Int32 Function(Pointer<LASTINPUTINFO> plii),
    int Function(Pointer<LASTINPUTINFO> plii)>('GetLastInputInfo');

int GetMouseMovePointsEx(int cbSize, Pointer<MOUSEMOVEPOINT> lppt,
        Pointer<MOUSEMOVEPOINT> lpptBuf, int nBufPoints, int resolution) =>
    _GetMouseMovePointsEx(cbSize, lppt, lpptBuf, nBufPoints, resolution);

late final _GetMouseMovePointsEx = _user32.lookupFunction<
    Int32 Function(Uint32 cbSize, Pointer<MOUSEMOVEPOINT> lppt,
        Pointer<MOUSEMOVEPOINT> lpptBuf, Int32 nBufPoints, Uint32 resolution),
    int Function(
        int cbSize,
        Pointer<MOUSEMOVEPOINT> lppt,
        Pointer<MOUSEMOVEPOINT> lpptBuf,
        int nBufPoints,
        int resolution)>('GetMouseMovePointsEx');

int GetRawInputBuffer(
        Pointer<RAWINPUT> pData, Pointer<Uint32> pcbSize, int cbSizeHeader) =>
    _GetRawInputBuffer(pData, pcbSize, cbSizeHeader);

late final _GetRawInputBuffer = _user32.lookupFunction<
    Uint32 Function(
        Pointer<RAWINPUT> pData, Pointer<Uint32> pcbSize, Uint32 cbSizeHeader),
    int Function(Pointer<RAWINPUT> pData, Pointer<Uint32> pcbSize,
        int cbSizeHeader)>('GetRawInputBuffer');

int GetRawInputData(int hRawInput, int uiCommand, Pointer pData,
        Pointer<Uint32> pcbSize, int cbSizeHeader) =>
    _GetRawInputData(hRawInput, uiCommand, pData, pcbSize, cbSizeHeader);

late final _GetRawInputData = _user32.lookupFunction<
    Uint32 Function(IntPtr hRawInput, Uint32 uiCommand, Pointer pData,
        Pointer<Uint32> pcbSize, Uint32 cbSizeHeader),
    int Function(int hRawInput, int uiCommand, Pointer pData,
        Pointer<Uint32> pcbSize, int cbSizeHeader)>('GetRawInputData');

int GetRawInputDeviceInfo(
        int hDevice, int uiCommand, Pointer pData, Pointer<Uint32> pcbSize) =>
    _GetRawInputDeviceInfo(hDevice, uiCommand, pData, pcbSize);

late final _GetRawInputDeviceInfo = _user32.lookupFunction<
    Uint32 Function(IntPtr hDevice, Uint32 uiCommand, Pointer pData,
        Pointer<Uint32> pcbSize),
    int Function(int hDevice, int uiCommand, Pointer pData,
        Pointer<Uint32> pcbSize)>('GetRawInputDeviceInfoW');

int GetRawInputDeviceList(Pointer<RAWINPUTDEVICELIST> pRawInputDeviceList,
        Pointer<Uint32> puiNumDevices, int cbSize) =>
    _GetRawInputDeviceList(pRawInputDeviceList, puiNumDevices, cbSize);

late final _GetRawInputDeviceList = _user32.lookupFunction<
    Uint32 Function(Pointer<RAWINPUTDEVICELIST> pRawInputDeviceList,
        Pointer<Uint32> puiNumDevices, Uint32 cbSize),
    int Function(Pointer<RAWINPUTDEVICELIST> pRawInputDeviceList,
        Pointer<Uint32> puiNumDevices, int cbSize)>('GetRawInputDeviceList');

int GetRegisteredRawInputDevices(Pointer<RAWINPUTDEVICE> pRawInputDevices,
        Pointer<Uint32> puiNumDevices, int cbSize) =>
    _GetRegisteredRawInputDevices(pRawInputDevices, puiNumDevices, cbSize);

late final _GetRegisteredRawInputDevices = _user32.lookupFunction<
    Uint32 Function(Pointer<RAWINPUTDEVICE> pRawInputDevices,
        Pointer<Uint32> puiNumDevices, Uint32 cbSize),
    int Function(
        Pointer<RAWINPUTDEVICE> pRawInputDevices,
        Pointer<Uint32> puiNumDevices,
        int cbSize)>('GetRegisteredRawInputDevices');

int IsWindowEnabled(int hWnd) => _IsWindowEnabled(hWnd);

late final _IsWindowEnabled =
    _user32.lookupFunction<Int32 Function(IntPtr hWnd), int Function(int hWnd)>(
        'IsWindowEnabled');

int LoadKeyboardLayout(Pointer<Utf16> pwszKLID, int Flags) =>
    _LoadKeyboardLayout(pwszKLID, Flags);

late final _LoadKeyboardLayout = _user32.lookupFunction<
    IntPtr Function(Pointer<Utf16> pwszKLID, Uint32 Flags),
    int Function(Pointer<Utf16> pwszKLID, int Flags)>('LoadKeyboardLayoutW');

int MapVirtualKeyEx(int uCode, int uMapType, int dwhkl) =>
    _MapVirtualKeyEx(uCode, uMapType, dwhkl);

late final _MapVirtualKeyEx = _user32.lookupFunction<
    Uint32 Function(Uint32 uCode, Uint32 uMapType, IntPtr dwhkl),
    int Function(int uCode, int uMapType, int dwhkl)>('MapVirtualKeyExW');

int MapVirtualKey(int uCode, int uMapType) => _MapVirtualKey(uCode, uMapType);

late final _MapVirtualKey = _user32.lookupFunction<
    Uint32 Function(Uint32 uCode, Uint32 uMapType),
    int Function(int uCode, int uMapType)>('MapVirtualKeyW');

int OemKeyScan(int wOemChar) => _OemKeyScan(wOemChar);

late final _OemKeyScan = _user32.lookupFunction<
    Uint32 Function(Uint16 wOemChar), int Function(int wOemChar)>('OemKeyScan');

int RegisterHotKey(int hWnd, int id, int fsModifiers, int vk) =>
    _RegisterHotKey(hWnd, id, fsModifiers, vk);

late final _RegisterHotKey = _user32.lookupFunction<
    Int32 Function(IntPtr hWnd, Int32 id, Uint32 fsModifiers, Uint32 vk),
    int Function(int hWnd, int id, int fsModifiers, int vk)>('RegisterHotKey');

int RegisterRawInputDevices(Pointer<RAWINPUTDEVICE> pRawInputDevices,
        int uiNumDevices, int cbSize) =>
    _RegisterRawInputDevices(pRawInputDevices, uiNumDevices, cbSize);

late final _RegisterRawInputDevices = _user32.lookupFunction<
    Int32 Function(Pointer<RAWINPUTDEVICE> pRawInputDevices,
        Uint32 uiNumDevices, Uint32 cbSize),
    int Function(Pointer<RAWINPUTDEVICE> pRawInputDevices, int uiNumDevices,
        int cbSize)>('RegisterRawInputDevices');

int ReleaseCapture() => _ReleaseCapture();

late final _ReleaseCapture =
    _user32.lookupFunction<Int32 Function(), int Function()>('ReleaseCapture');

int SendInput(int cInputs, Pointer<INPUT> pInputs, int cbSize) =>
    _SendInput(cInputs, pInputs, cbSize);

late final _SendInput = _user32.lookupFunction<
    Uint32 Function(Uint32 cInputs, Pointer<INPUT> pInputs, Int32 cbSize),
    int Function(int cInputs, Pointer<INPUT> pInputs, int cbSize)>('SendInput');

int SetActiveWindow(int hWnd) => _SetActiveWindow(hWnd);

late final _SetActiveWindow = _user32.lookupFunction<
    IntPtr Function(IntPtr hWnd), int Function(int hWnd)>('SetActiveWindow');

int SetCapture(int hWnd) => _SetCapture(hWnd);

late final _SetCapture = _user32.lookupFunction<IntPtr Function(IntPtr hWnd),
    int Function(int hWnd)>('SetCapture');

int SetDoubleClickTime(int param0) => _SetDoubleClickTime(param0);

late final _SetDoubleClickTime = _user32.lookupFunction<
    Int32 Function(Uint32 param0),
    int Function(int param0)>('SetDoubleClickTime');

int SetFocus(int hWnd) => _SetFocus(hWnd);

late final _SetFocus = _user32.lookupFunction<IntPtr Function(IntPtr hWnd),
    int Function(int hWnd)>('SetFocus');

int SetKeyboardState(Pointer<Uint8> lpKeyState) =>
    _SetKeyboardState(lpKeyState);

late final _SetKeyboardState = _user32.lookupFunction<
    Int32 Function(Pointer<Uint8> lpKeyState),
    int Function(Pointer<Uint8> lpKeyState)>('SetKeyboardState');

int SwapMouseButton(int fSwap) => _SwapMouseButton(fSwap);

late final _SwapMouseButton = _user32.lookupFunction<
    Int32 Function(Int32 fSwap), int Function(int fSwap)>('SwapMouseButton');

int ToAscii(int uVirtKey, int uScanCode, Pointer<Uint8> lpKeyState,
        Pointer<Uint16> lpChar, int uFlags) =>
    _ToAscii(uVirtKey, uScanCode, lpKeyState, lpChar, uFlags);

late final _ToAscii = _user32.lookupFunction<
    Int32 Function(Uint32 uVirtKey, Uint32 uScanCode, Pointer<Uint8> lpKeyState,
        Pointer<Uint16> lpChar, Uint32 uFlags),
    int Function(int uVirtKey, int uScanCode, Pointer<Uint8> lpKeyState,
        Pointer<Uint16> lpChar, int uFlags)>('ToAscii');

int ToAsciiEx(int uVirtKey, int uScanCode, Pointer<Uint8> lpKeyState,
        Pointer<Uint16> lpChar, int uFlags, int dwhkl) =>
    _ToAsciiEx(uVirtKey, uScanCode, lpKeyState, lpChar, uFlags, dwhkl);

late final _ToAsciiEx = _user32.lookupFunction<
    Int32 Function(Uint32 uVirtKey, Uint32 uScanCode, Pointer<Uint8> lpKeyState,
        Pointer<Uint16> lpChar, Uint32 uFlags, IntPtr dwhkl),
    int Function(int uVirtKey, int uScanCode, Pointer<Uint8> lpKeyState,
        Pointer<Uint16> lpChar, int uFlags, int dwhkl)>('ToAsciiEx');

int ToUnicode(int wVirtKey, int wScanCode, Pointer<Uint8> lpKeyState,
        Pointer<Utf16> pwszBuff, int cchBuff, int wFlags) =>
    _ToUnicode(wVirtKey, wScanCode, lpKeyState, pwszBuff, cchBuff, wFlags);

late final _ToUnicode = _user32.lookupFunction<
    Int32 Function(Uint32 wVirtKey, Uint32 wScanCode, Pointer<Uint8> lpKeyState,
        Pointer<Utf16> pwszBuff, Int32 cchBuff, Uint32 wFlags),
    int Function(int wVirtKey, int wScanCode, Pointer<Uint8> lpKeyState,
        Pointer<Utf16> pwszBuff, int cchBuff, int wFlags)>('ToUnicode');

int ToUnicodeEx(int wVirtKey, int wScanCode, Pointer<Uint8> lpKeyState,
        Pointer<Utf16> pwszBuff, int cchBuff, int wFlags, int dwhkl) =>
    _ToUnicodeEx(
        wVirtKey, wScanCode, lpKeyState, pwszBuff, cchBuff, wFlags, dwhkl);

late final _ToUnicodeEx = _user32.lookupFunction<
    Int32 Function(Uint32 wVirtKey, Uint32 wScanCode, Pointer<Uint8> lpKeyState,
        Pointer<Utf16> pwszBuff, Int32 cchBuff, Uint32 wFlags, IntPtr dwhkl),
    int Function(
        int wVirtKey,
        int wScanCode,
        Pointer<Uint8> lpKeyState,
        Pointer<Utf16> pwszBuff,
        int cchBuff,
        int wFlags,
        int dwhkl)>('ToUnicodeEx');

int TrackMouseEvent(Pointer<TRACKMOUSEEVENT> lpEventTrack) =>
    _TrackMouseEvent(lpEventTrack);

late final _TrackMouseEvent = _user32.lookupFunction<
    Int32 Function(Pointer<TRACKMOUSEEVENT> lpEventTrack),
    int Function(Pointer<TRACKMOUSEEVENT> lpEventTrack)>('TrackMouseEvent');

int UnloadKeyboardLayout(int hkl) => _UnloadKeyboardLayout(hkl);

late final _UnloadKeyboardLayout =
    _user32.lookupFunction<Int32 Function(IntPtr hkl), int Function(int hkl)>(
        'UnloadKeyboardLayout');

int UnregisterHotKey(int hWnd, int id) => _UnregisterHotKey(hWnd, id);

late final _UnregisterHotKey = _user32.lookupFunction<
    Int32 Function(IntPtr hWnd, Int32 id),
    int Function(int hWnd, int id)>('UnregisterHotKey');

int VkKeyScanEx(int ch, int dwhkl) => _VkKeyScanEx(ch, dwhkl);

late final _VkKeyScanEx = _user32.lookupFunction<
    Int16 Function(Uint16 ch, IntPtr dwhkl),
    int Function(int ch, int dwhkl)>('VkKeyScanExW');

int VkKeyScan(int ch) => _VkKeyScan(ch);

late final _VkKeyScan =
    _user32.lookupFunction<Int16 Function(Uint16 ch), int Function(int ch)>(
        'VkKeyScanW');

void keybd_event(int bVk, int bScan, int dwFlags, int dwExtraInfo) =>
    _keybd_event(bVk, bScan, dwFlags, dwExtraInfo);

late final _keybd_event = _user32.lookupFunction<
    Void Function(Uint8 bVk, Uint8 bScan, Uint32 dwFlags, IntPtr dwExtraInfo),
    void Function(
        int bVk, int bScan, int dwFlags, int dwExtraInfo)>('keybd_event');

void mouse_event(int dwFlags, int dx, int dy, int dwData, int dwExtraInfo) =>
    _mouse_event(dwFlags, dx, dy, dwData, dwExtraInfo);

late final _mouse_event = _user32.lookupFunction<
    Void Function(
        Uint32 dwFlags, Int32 dx, Int32 dy, Uint32 dwData, IntPtr dwExtraInfo),
    void Function(int dwFlags, int dx, int dy, int dwData,
        int dwExtraInfo)>('mouse_event');

// -----------------------------------------------------------------------
// COMCTL32.dll
// -----------------------------------------------------------------------
final _comctl32 = DynamicLibrary.open('COMCTL32.dll');
