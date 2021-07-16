// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../guid.dart';
import '../../combase.dart';
import '../../ui/touchinput/structs.g.dart';
import '../../foundation/structs.g.dart';

// -----------------------------------------------------------------------
// USER32.dll
// -----------------------------------------------------------------------
final _user32 = DynamicLibrary.open('USER32.dll');

int CloseGestureInfoHandle(int hGestureInfo) =>
    _CloseGestureInfoHandle(hGestureInfo);

late final _CloseGestureInfoHandle = _user32.lookupFunction<
    Int32 Function(IntPtr hGestureInfo),
    int Function(int hGestureInfo)>('CloseGestureInfoHandle');

int CloseTouchInputHandle(int hTouchInput) =>
    _CloseTouchInputHandle(hTouchInput);

late final _CloseTouchInputHandle = _user32.lookupFunction<
    Int32 Function(IntPtr hTouchInput),
    int Function(int hTouchInput)>('CloseTouchInputHandle');

int GetGestureConfig(
        int hwnd,
        int dwReserved,
        int dwFlags,
        Pointer<Uint32> pcIDs,
        Pointer<GESTURECONFIG> pGestureConfig,
        int cbSize) =>
    _GetGestureConfig(hwnd, dwReserved, dwFlags, pcIDs, pGestureConfig, cbSize);

late final _GetGestureConfig = _user32.lookupFunction<
    Int32 Function(
        IntPtr hwnd,
        Uint32 dwReserved,
        Uint32 dwFlags,
        Pointer<Uint32> pcIDs,
        Pointer<GESTURECONFIG> pGestureConfig,
        Uint32 cbSize),
    int Function(int hwnd, int dwReserved, int dwFlags, Pointer<Uint32> pcIDs,
        Pointer<GESTURECONFIG> pGestureConfig, int cbSize)>('GetGestureConfig');

int GetGestureExtraArgs(
        int hGestureInfo, int cbExtraArgs, Pointer<Uint8> pExtraArgs) =>
    _GetGestureExtraArgs(hGestureInfo, cbExtraArgs, pExtraArgs);

late final _GetGestureExtraArgs = _user32.lookupFunction<
    Int32 Function(
        IntPtr hGestureInfo, Uint32 cbExtraArgs, Pointer<Uint8> pExtraArgs),
    int Function(int hGestureInfo, int cbExtraArgs,
        Pointer<Uint8> pExtraArgs)>('GetGestureExtraArgs');

int GetGestureInfo(int hGestureInfo, Pointer<GESTUREINFO> pGestureInfo) =>
    _GetGestureInfo(hGestureInfo, pGestureInfo);

late final _GetGestureInfo = _user32.lookupFunction<
    Int32 Function(IntPtr hGestureInfo, Pointer<GESTUREINFO> pGestureInfo),
    int Function(
        int hGestureInfo, Pointer<GESTUREINFO> pGestureInfo)>('GetGestureInfo');

int GetTouchInputInfo(int hTouchInput, int cInputs, Pointer<TOUCHINPUT> pInputs,
        int cbSize) =>
    _GetTouchInputInfo(hTouchInput, cInputs, pInputs, cbSize);

late final _GetTouchInputInfo = _user32.lookupFunction<
    Int32 Function(IntPtr hTouchInput, Uint32 cInputs,
        Pointer<TOUCHINPUT> pInputs, Int32 cbSize),
    int Function(int hTouchInput, int cInputs, Pointer<TOUCHINPUT> pInputs,
        int cbSize)>('GetTouchInputInfo');

int IsTouchWindow(int hwnd, Pointer<Uint32> pulFlags) =>
    _IsTouchWindow(hwnd, pulFlags);

late final _IsTouchWindow = _user32.lookupFunction<
    Int32 Function(IntPtr hwnd, Pointer<Uint32> pulFlags),
    int Function(int hwnd, Pointer<Uint32> pulFlags)>('IsTouchWindow');

int RegisterTouchWindow(int hwnd, int ulFlags) =>
    _RegisterTouchWindow(hwnd, ulFlags);

late final _RegisterTouchWindow = _user32.lookupFunction<
    Int32 Function(IntPtr hwnd, Uint32 ulFlags),
    int Function(int hwnd, int ulFlags)>('RegisterTouchWindow');

int SetGestureConfig(int hwnd, int dwReserved, int cIDs,
        Pointer<GESTURECONFIG> pGestureConfig, int cbSize) =>
    _SetGestureConfig(hwnd, dwReserved, cIDs, pGestureConfig, cbSize);

late final _SetGestureConfig = _user32.lookupFunction<
    Int32 Function(IntPtr hwnd, Uint32 dwReserved, Uint32 cIDs,
        Pointer<GESTURECONFIG> pGestureConfig, Uint32 cbSize),
    int Function(int hwnd, int dwReserved, int cIDs,
        Pointer<GESTURECONFIG> pGestureConfig, int cbSize)>('SetGestureConfig');

int UnregisterTouchWindow(int hwnd) => _UnregisterTouchWindow(hwnd);

late final _UnregisterTouchWindow =
    _user32.lookupFunction<Int32 Function(IntPtr hwnd), int Function(int hwnd)>(
        'UnregisterTouchWindow');
