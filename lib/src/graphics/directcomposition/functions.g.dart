// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../combase.dart';
import '../../guid.dart';
import '../../graphics/directcomposition/IDCompositionVisual.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/dxgi/IDXGIDevice.dart';
import '../../system/com/IUnknown.dart';
import '../../security/structs.g.dart';
import '../../graphics/directcomposition/structs.g.dart'; // -----------------------------------------------------------------------

// dcomp.dll
// -----------------------------------------------------------------------
final _dcomp = DynamicLibrary.open('dcomp.dll');

int DCompositionAttachMouseDragToHwnd(
  Pointer<COMObject> visual,
  int hwnd,
  int enable,
) =>
    _DCompositionAttachMouseDragToHwnd(
      visual,
      hwnd,
      enable,
    );

late final _DCompositionAttachMouseDragToHwnd = _dcomp.lookupFunction<
    Int32 Function(
  Pointer<COMObject> visual,
  IntPtr hwnd,
  Int32 enable,
),
    int Function(
  Pointer<COMObject> visual,
  int hwnd,
  int enable,
)>('DCompositionAttachMouseDragToHwnd');

int DCompositionAttachMouseWheelToHwnd(
  Pointer<COMObject> visual,
  int hwnd,
  int enable,
) =>
    _DCompositionAttachMouseWheelToHwnd(
      visual,
      hwnd,
      enable,
    );

late final _DCompositionAttachMouseWheelToHwnd = _dcomp.lookupFunction<
    Int32 Function(
  Pointer<COMObject> visual,
  IntPtr hwnd,
  Int32 enable,
),
    int Function(
  Pointer<COMObject> visual,
  int hwnd,
  int enable,
)>('DCompositionAttachMouseWheelToHwnd');

int DCompositionBoostCompositorClock(
  int enable,
) =>
    _DCompositionBoostCompositorClock(
      enable,
    );

late final _DCompositionBoostCompositorClock = _dcomp.lookupFunction<
    Int32 Function(
  Int32 enable,
),
    int Function(
  int enable,
)>('DCompositionBoostCompositorClock');

int DCompositionCreateDevice(
  Pointer<COMObject> dxgiDevice,
  Pointer<GUID> iid,
  Pointer<Pointer> dcompositionDevice,
) =>
    _DCompositionCreateDevice(
      dxgiDevice,
      iid,
      dcompositionDevice,
    );

late final _DCompositionCreateDevice = _dcomp.lookupFunction<
    Int32 Function(
  Pointer<COMObject> dxgiDevice,
  Pointer<GUID> iid,
  Pointer<Pointer> dcompositionDevice,
),
    int Function(
  Pointer<COMObject> dxgiDevice,
  Pointer<GUID> iid,
  Pointer<Pointer> dcompositionDevice,
)>('DCompositionCreateDevice');

int DCompositionCreateDevice2(
  Pointer<COMObject> renderingDevice,
  Pointer<GUID> iid,
  Pointer<Pointer> dcompositionDevice,
) =>
    _DCompositionCreateDevice2(
      renderingDevice,
      iid,
      dcompositionDevice,
    );

late final _DCompositionCreateDevice2 = _dcomp.lookupFunction<
    Int32 Function(
  Pointer<COMObject> renderingDevice,
  Pointer<GUID> iid,
  Pointer<Pointer> dcompositionDevice,
),
    int Function(
  Pointer<COMObject> renderingDevice,
  Pointer<GUID> iid,
  Pointer<Pointer> dcompositionDevice,
)>('DCompositionCreateDevice2');

int DCompositionCreateDevice3(
  Pointer<COMObject> renderingDevice,
  Pointer<GUID> iid,
  Pointer<Pointer> dcompositionDevice,
) =>
    _DCompositionCreateDevice3(
      renderingDevice,
      iid,
      dcompositionDevice,
    );

late final _DCompositionCreateDevice3 = _dcomp.lookupFunction<
    Int32 Function(
  Pointer<COMObject> renderingDevice,
  Pointer<GUID> iid,
  Pointer<Pointer> dcompositionDevice,
),
    int Function(
  Pointer<COMObject> renderingDevice,
  Pointer<GUID> iid,
  Pointer<Pointer> dcompositionDevice,
)>('DCompositionCreateDevice3');

int DCompositionCreateSurfaceHandle(
  int desiredAccess,
  Pointer<SECURITY_ATTRIBUTES> securityAttributes,
  Pointer<IntPtr> surfaceHandle,
) =>
    _DCompositionCreateSurfaceHandle(
      desiredAccess,
      securityAttributes,
      surfaceHandle,
    );

late final _DCompositionCreateSurfaceHandle = _dcomp.lookupFunction<
    Int32 Function(
  Uint32 desiredAccess,
  Pointer<SECURITY_ATTRIBUTES> securityAttributes,
  Pointer<IntPtr> surfaceHandle,
),
    int Function(
  int desiredAccess,
  Pointer<SECURITY_ATTRIBUTES> securityAttributes,
  Pointer<IntPtr> surfaceHandle,
)>('DCompositionCreateSurfaceHandle');

int DCompositionGetFrameId(
  int frameIdType,
  Pointer<Uint64> frameId,
) =>
    _DCompositionGetFrameId(
      frameIdType,
      frameId,
    );

late final _DCompositionGetFrameId = _dcomp.lookupFunction<
    Int32 Function(
  Int32 frameIdType,
  Pointer<Uint64> frameId,
),
    int Function(
  int frameIdType,
  Pointer<Uint64> frameId,
)>('DCompositionGetFrameId');

int DCompositionGetStatistics(
  int frameId,
  Pointer<COMPOSITION_FRAME_STATS> frameStats,
  int targetIdCount,
  Pointer<COMPOSITION_TARGET_ID> targetIds,
  Pointer<Uint32> actualTargetIdCount,
) =>
    _DCompositionGetStatistics(
      frameId,
      frameStats,
      targetIdCount,
      targetIds,
      actualTargetIdCount,
    );

late final _DCompositionGetStatistics = _dcomp.lookupFunction<
    Int32 Function(
  Uint64 frameId,
  Pointer<COMPOSITION_FRAME_STATS> frameStats,
  Uint32 targetIdCount,
  Pointer<COMPOSITION_TARGET_ID> targetIds,
  Pointer<Uint32> actualTargetIdCount,
),
    int Function(
  int frameId,
  Pointer<COMPOSITION_FRAME_STATS> frameStats,
  int targetIdCount,
  Pointer<COMPOSITION_TARGET_ID> targetIds,
  Pointer<Uint32> actualTargetIdCount,
)>('DCompositionGetStatistics');

int DCompositionGetTargetStatistics(
  int frameId,
  Pointer<COMPOSITION_TARGET_ID> targetId,
  Pointer<COMPOSITION_TARGET_STATS> targetStats,
) =>
    _DCompositionGetTargetStatistics(
      frameId,
      targetId,
      targetStats,
    );

late final _DCompositionGetTargetStatistics = _dcomp.lookupFunction<
    Int32 Function(
  Uint64 frameId,
  Pointer<COMPOSITION_TARGET_ID> targetId,
  Pointer<COMPOSITION_TARGET_STATS> targetStats,
),
    int Function(
  int frameId,
  Pointer<COMPOSITION_TARGET_ID> targetId,
  Pointer<COMPOSITION_TARGET_STATS> targetStats,
)>('DCompositionGetTargetStatistics');

int DCompositionWaitForCompositorClock(
  int count,
  Pointer<IntPtr> handles,
  int timeoutInMs,
) =>
    _DCompositionWaitForCompositorClock(
      count,
      handles,
      timeoutInMs,
    );

late final _DCompositionWaitForCompositorClock = _dcomp.lookupFunction<
    Uint32 Function(
  Uint32 count,
  Pointer<IntPtr> handles,
  Uint32 timeoutInMs,
),
    int Function(
  int count,
  Pointer<IntPtr> handles,
  int timeoutInMs,
)>('DCompositionWaitForCompositorClock');
