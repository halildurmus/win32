// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated).
//
// ignore_for_file: non_constant_identifier_names, unnecessary_ignore
// ignore_for_file: unused_import

@TestOn('windows')
library;

import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:ffi/ffi.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

import '../../helpers.dart';

void main() {
  group('dcomp.dll', () {
    test('DCompositionAttachMouseDragToHwnd can be instantiated', () {
      check(_DCompositionAttachMouseDragToHwnd).isA<Function>();
    });
    test('DCompositionAttachMouseWheelToHwnd can be instantiated', () {
      check(_DCompositionAttachMouseWheelToHwnd).isA<Function>();
    });
    test('DCompositionBoostCompositorClock can be instantiated', () {
      check(_DCompositionBoostCompositorClock).isA<Function>();
    });
    test('DCompositionCreateDevice can be instantiated', () {
      check(_DCompositionCreateDevice).isA<Function>();
    });
    test('DCompositionCreateDevice2 can be instantiated', () {
      check(_DCompositionCreateDevice2).isA<Function>();
    });
    test('DCompositionCreateDevice3 can be instantiated', () {
      check(_DCompositionCreateDevice3).isA<Function>();
    });
    test('DCompositionCreateSurfaceHandle can be instantiated', () {
      check(_DCompositionCreateSurfaceHandle).isA<Function>();
    });
    test('DCompositionGetFrameId can be instantiated', () {
      check(_DCompositionGetFrameId).isA<Function>();
    });
    test('DCompositionGetStatistics can be instantiated', () {
      check(_DCompositionGetStatistics).isA<Function>();
    });
    test('DCompositionGetTargetStatistics can be instantiated', () {
      check(_DCompositionGetTargetStatistics).isA<Function>();
    });
    test('DCompositionWaitForCompositorClock can be instantiated', () {
      check(_DCompositionWaitForCompositorClock).isA<Function>();
    });
  });
}

@Native<Int32 Function(VTablePointer, Pointer, Int32)>(
  symbol: 'DCompositionAttachMouseDragToHwnd',
)
external int _DCompositionAttachMouseDragToHwnd(
  VTablePointer visual,
  Pointer hwnd,
  int enable,
);

@Native<Int32 Function(VTablePointer, Pointer, Int32)>(
  symbol: 'DCompositionAttachMouseWheelToHwnd',
)
external int _DCompositionAttachMouseWheelToHwnd(
  VTablePointer visual,
  Pointer hwnd,
  int enable,
);

@Native<Int32 Function(Int32)>(symbol: 'DCompositionBoostCompositorClock')
external int _DCompositionBoostCompositorClock(int enable);

@Native<Int32 Function(VTablePointer, Pointer<GUID>, Pointer<Pointer>)>(
  symbol: 'DCompositionCreateDevice',
)
external int _DCompositionCreateDevice(
  VTablePointer dxgiDevice,
  Pointer<GUID> iid,
  Pointer<Pointer> dcompositionDevice,
);

@Native<Int32 Function(VTablePointer, Pointer<GUID>, Pointer<Pointer>)>(
  symbol: 'DCompositionCreateDevice2',
)
external int _DCompositionCreateDevice2(
  VTablePointer renderingDevice,
  Pointer<GUID> iid,
  Pointer<Pointer> dcompositionDevice,
);

@Native<Int32 Function(VTablePointer, Pointer<GUID>, Pointer<Pointer>)>(
  symbol: 'DCompositionCreateDevice3',
)
external int _DCompositionCreateDevice3(
  VTablePointer renderingDevice,
  Pointer<GUID> iid,
  Pointer<Pointer> dcompositionDevice,
);

@Native<Int32 Function(Uint32, Pointer<SECURITY_ATTRIBUTES>, Pointer<Pointer>)>(
  symbol: 'DCompositionCreateSurfaceHandle',
)
external int _DCompositionCreateSurfaceHandle(
  int desiredAccess,
  Pointer<SECURITY_ATTRIBUTES> securityAttributes,
  Pointer<Pointer> surfaceHandle,
);

@Native<Int32 Function(Int32, Pointer<Uint64>)>(
  symbol: 'DCompositionGetFrameId',
)
external int _DCompositionGetFrameId(int frameIdType, Pointer<Uint64> frameId);

@Native<
  Int32 Function(
    Uint64,
    Pointer<COMPOSITION_FRAME_STATS>,
    Uint32,
    Pointer<COMPOSITION_TARGET_ID>,
    Pointer<Uint32>,
  )
>(symbol: 'DCompositionGetStatistics')
external int _DCompositionGetStatistics(
  int frameId,
  Pointer<COMPOSITION_FRAME_STATS> frameStats,
  int targetIdCount,
  Pointer<COMPOSITION_TARGET_ID> targetIds,
  Pointer<Uint32> actualTargetIdCount,
);

@Native<
  Int32 Function(
    Uint64,
    Pointer<COMPOSITION_TARGET_ID>,
    Pointer<COMPOSITION_TARGET_STATS>,
  )
>(symbol: 'DCompositionGetTargetStatistics')
external int _DCompositionGetTargetStatistics(
  int frameId,
  Pointer<COMPOSITION_TARGET_ID> targetId,
  Pointer<COMPOSITION_TARGET_STATS> targetStats,
);

@Native<Uint32 Function(Uint32, Pointer<Pointer>, Uint32)>(
  symbol: 'DCompositionWaitForCompositorClock',
)
external int _DCompositionWaitForCompositorClock(
  int count,
  Pointer<Pointer> handles,
  int timeoutInMs,
);
