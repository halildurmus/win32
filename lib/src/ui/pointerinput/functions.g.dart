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
import '../../foundation/structs.g.dart';
import '../../ui/pointerinput/structs.g.dart';
import '../../ui/windowsandmessaging/structs.g.dart';

// -----------------------------------------------------------------------
// USER32.dll
// -----------------------------------------------------------------------
final _user32 = DynamicLibrary.open('USER32.dll');

int EnableMouseInPointer(int fEnable) => _EnableMouseInPointer(fEnable);

late final _EnableMouseInPointer = _user32.lookupFunction<
    Int32 Function(Int32 fEnable),
    int Function(int fEnable)>('EnableMouseInPointer');

int GetPointerCursorId(int pointerId, Pointer<Uint32> cursorId) =>
    _GetPointerCursorId(pointerId, cursorId);

late final _GetPointerCursorId = _user32.lookupFunction<
    Int32 Function(Uint32 pointerId, Pointer<Uint32> cursorId),
    int Function(
        int pointerId, Pointer<Uint32> cursorId)>('GetPointerCursorId');

int GetPointerFrameInfo(int pointerId, Pointer<Uint32> pointerCount,
        Pointer<POINTER_INFO> pointerInfo) =>
    _GetPointerFrameInfo(pointerId, pointerCount, pointerInfo);

late final _GetPointerFrameInfo = _user32.lookupFunction<
    Int32 Function(Uint32 pointerId, Pointer<Uint32> pointerCount,
        Pointer<POINTER_INFO> pointerInfo),
    int Function(int pointerId, Pointer<Uint32> pointerCount,
        Pointer<POINTER_INFO> pointerInfo)>('GetPointerFrameInfo');

int GetPointerFrameInfoHistory(int pointerId, Pointer<Uint32> entriesCount,
        Pointer<Uint32> pointerCount, Pointer<POINTER_INFO> pointerInfo) =>
    _GetPointerFrameInfoHistory(
        pointerId, entriesCount, pointerCount, pointerInfo);

late final _GetPointerFrameInfoHistory = _user32.lookupFunction<
    Int32 Function(Uint32 pointerId, Pointer<Uint32> entriesCount,
        Pointer<Uint32> pointerCount, Pointer<POINTER_INFO> pointerInfo),
    int Function(
        int pointerId,
        Pointer<Uint32> entriesCount,
        Pointer<Uint32> pointerCount,
        Pointer<POINTER_INFO> pointerInfo)>('GetPointerFrameInfoHistory');

int GetPointerFramePenInfo(int pointerId, Pointer<Uint32> pointerCount,
        Pointer<POINTER_PEN_INFO> penInfo) =>
    _GetPointerFramePenInfo(pointerId, pointerCount, penInfo);

late final _GetPointerFramePenInfo = _user32.lookupFunction<
    Int32 Function(Uint32 pointerId, Pointer<Uint32> pointerCount,
        Pointer<POINTER_PEN_INFO> penInfo),
    int Function(int pointerId, Pointer<Uint32> pointerCount,
        Pointer<POINTER_PEN_INFO> penInfo)>('GetPointerFramePenInfo');

int GetPointerFramePenInfoHistory(int pointerId, Pointer<Uint32> entriesCount,
        Pointer<Uint32> pointerCount, Pointer<POINTER_PEN_INFO> penInfo) =>
    _GetPointerFramePenInfoHistory(
        pointerId, entriesCount, pointerCount, penInfo);

late final _GetPointerFramePenInfoHistory = _user32.lookupFunction<
    Int32 Function(Uint32 pointerId, Pointer<Uint32> entriesCount,
        Pointer<Uint32> pointerCount, Pointer<POINTER_PEN_INFO> penInfo),
    int Function(
        int pointerId,
        Pointer<Uint32> entriesCount,
        Pointer<Uint32> pointerCount,
        Pointer<POINTER_PEN_INFO> penInfo)>('GetPointerFramePenInfoHistory');

int GetPointerFrameTouchInfo(int pointerId, Pointer<Uint32> pointerCount,
        Pointer<POINTER_TOUCH_INFO> touchInfo) =>
    _GetPointerFrameTouchInfo(pointerId, pointerCount, touchInfo);

late final _GetPointerFrameTouchInfo = _user32.lookupFunction<
    Int32 Function(Uint32 pointerId, Pointer<Uint32> pointerCount,
        Pointer<POINTER_TOUCH_INFO> touchInfo),
    int Function(int pointerId, Pointer<Uint32> pointerCount,
        Pointer<POINTER_TOUCH_INFO> touchInfo)>('GetPointerFrameTouchInfo');

int GetPointerFrameTouchInfoHistory(int pointerId, Pointer<Uint32> entriesCount,
        Pointer<Uint32> pointerCount, Pointer<POINTER_TOUCH_INFO> touchInfo) =>
    _GetPointerFrameTouchInfoHistory(
        pointerId, entriesCount, pointerCount, touchInfo);

late final _GetPointerFrameTouchInfoHistory = _user32.lookupFunction<
    Int32 Function(Uint32 pointerId, Pointer<Uint32> entriesCount,
        Pointer<Uint32> pointerCount, Pointer<POINTER_TOUCH_INFO> touchInfo),
    int Function(
        int pointerId,
        Pointer<Uint32> entriesCount,
        Pointer<Uint32> pointerCount,
        Pointer<POINTER_TOUCH_INFO>
            touchInfo)>('GetPointerFrameTouchInfoHistory');

int GetPointerInfo(int pointerId, Pointer<POINTER_INFO> pointerInfo) =>
    _GetPointerInfo(pointerId, pointerInfo);

late final _GetPointerInfo = _user32.lookupFunction<
    Int32 Function(Uint32 pointerId, Pointer<POINTER_INFO> pointerInfo),
    int Function(
        int pointerId, Pointer<POINTER_INFO> pointerInfo)>('GetPointerInfo');

int GetPointerInfoHistory(int pointerId, Pointer<Uint32> entriesCount,
        Pointer<POINTER_INFO> pointerInfo) =>
    _GetPointerInfoHistory(pointerId, entriesCount, pointerInfo);

late final _GetPointerInfoHistory = _user32.lookupFunction<
    Int32 Function(Uint32 pointerId, Pointer<Uint32> entriesCount,
        Pointer<POINTER_INFO> pointerInfo),
    int Function(int pointerId, Pointer<Uint32> entriesCount,
        Pointer<POINTER_INFO> pointerInfo)>('GetPointerInfoHistory');

int GetPointerInputTransform(int pointerId, int historyCount,
        Pointer<INPUT_TRANSFORM> inputTransform) =>
    _GetPointerInputTransform(pointerId, historyCount, inputTransform);

late final _GetPointerInputTransform = _user32.lookupFunction<
    Int32 Function(Uint32 pointerId, Uint32 historyCount,
        Pointer<INPUT_TRANSFORM> inputTransform),
    int Function(int pointerId, int historyCount,
        Pointer<INPUT_TRANSFORM> inputTransform)>('GetPointerInputTransform');

int GetPointerPenInfo(int pointerId, Pointer<POINTER_PEN_INFO> penInfo) =>
    _GetPointerPenInfo(pointerId, penInfo);

late final _GetPointerPenInfo = _user32.lookupFunction<
    Int32 Function(Uint32 pointerId, Pointer<POINTER_PEN_INFO> penInfo),
    int Function(
        int pointerId, Pointer<POINTER_PEN_INFO> penInfo)>('GetPointerPenInfo');

int GetPointerPenInfoHistory(int pointerId, Pointer<Uint32> entriesCount,
        Pointer<POINTER_PEN_INFO> penInfo) =>
    _GetPointerPenInfoHistory(pointerId, entriesCount, penInfo);

late final _GetPointerPenInfoHistory = _user32.lookupFunction<
    Int32 Function(Uint32 pointerId, Pointer<Uint32> entriesCount,
        Pointer<POINTER_PEN_INFO> penInfo),
    int Function(int pointerId, Pointer<Uint32> entriesCount,
        Pointer<POINTER_PEN_INFO> penInfo)>('GetPointerPenInfoHistory');

int GetPointerTouchInfo(int pointerId, Pointer<POINTER_TOUCH_INFO> touchInfo) =>
    _GetPointerTouchInfo(pointerId, touchInfo);

late final _GetPointerTouchInfo = _user32.lookupFunction<
    Int32 Function(Uint32 pointerId, Pointer<POINTER_TOUCH_INFO> touchInfo),
    int Function(int pointerId,
        Pointer<POINTER_TOUCH_INFO> touchInfo)>('GetPointerTouchInfo');

int GetPointerTouchInfoHistory(int pointerId, Pointer<Uint32> entriesCount,
        Pointer<POINTER_TOUCH_INFO> touchInfo) =>
    _GetPointerTouchInfoHistory(pointerId, entriesCount, touchInfo);

late final _GetPointerTouchInfoHistory = _user32.lookupFunction<
    Int32 Function(Uint32 pointerId, Pointer<Uint32> entriesCount,
        Pointer<POINTER_TOUCH_INFO> touchInfo),
    int Function(int pointerId, Pointer<Uint32> entriesCount,
        Pointer<POINTER_TOUCH_INFO> touchInfo)>('GetPointerTouchInfoHistory');

int GetPointerType(int pointerId, Pointer<Uint32> pointerType) =>
    _GetPointerType(pointerId, pointerType);

late final _GetPointerType = _user32.lookupFunction<
    Int32 Function(Uint32 pointerId, Pointer<Uint32> pointerType),
    int Function(int pointerId, Pointer<Uint32> pointerType)>('GetPointerType');

int GetUnpredictedMessagePos() => _GetUnpredictedMessagePos();

late final _GetUnpredictedMessagePos =
    _user32.lookupFunction<Uint32 Function(), int Function()>(
        'GetUnpredictedMessagePos');

int IsMouseInPointerEnabled() => _IsMouseInPointerEnabled();

late final _IsMouseInPointerEnabled =
    _user32.lookupFunction<Int32 Function(), int Function()>(
        'IsMouseInPointerEnabled');

int SkipPointerFrameMessages(int pointerId) =>
    _SkipPointerFrameMessages(pointerId);

late final _SkipPointerFrameMessages = _user32.lookupFunction<
    Int32 Function(Uint32 pointerId),
    int Function(int pointerId)>('SkipPointerFrameMessages');
