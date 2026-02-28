// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';

import '../bstr.dart';
import '../com/idcompositionvisual.g.dart';
import '../com/idxgidevice.g.dart';
import '../com/interface.g.dart';
import '../com/iunknown.g.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../enums.g.dart';
import '../exception.dart';
import '../extensions/pointer.dart';
import '../guid.dart';
import '../hresult.dart';
import '../hstring.dart';
import '../macros.dart';
import '../ntstatus.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../rpc_status.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import '../win32_error.dart';
import '../win32_result.dart';

/// Creates an Interaction/InputSink to route mouse button down and any
/// subsequent move and up events to the given HWND.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-dcompositionattachmousedragtohwnd>.
///
/// {@category dcomp}
@pragma('vm:prefer-inline')
void DCompositionAttachMouseDragToHwnd(
  IDCompositionVisual? visual,
  HWND hwnd,
  bool enable,
) {
  final hr$ = HRESULT(
    _DCompositionAttachMouseDragToHwnd(
      visual?.ptr ?? nullptr,
      hwnd,
      enable ? TRUE : FALSE,
    ),
  );
  if (hr$.isError) throw WindowsException(hr$);
}

@Native<Int32 Function(VTablePointer, Pointer, Int32)>(
  symbol: 'DCompositionAttachMouseDragToHwnd',
)
external int _DCompositionAttachMouseDragToHwnd(
  VTablePointer visual,
  Pointer hwnd,
  int enable,
);

/// Creates an Interaction/InputSink to route mouse wheel messages to the given
/// HWND.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-dcompositionattachmousewheeltohwnd>.
///
/// {@category dcomp}
@pragma('vm:prefer-inline')
void DCompositionAttachMouseWheelToHwnd(
  IDCompositionVisual? visual,
  HWND hwnd,
  bool enable,
) {
  final hr$ = HRESULT(
    _DCompositionAttachMouseWheelToHwnd(
      visual?.ptr ?? nullptr,
      hwnd,
      enable ? TRUE : FALSE,
    ),
  );
  if (hr$.isError) throw WindowsException(hr$);
}

@Native<Int32 Function(VTablePointer, Pointer, Int32)>(
  symbol: 'DCompositionAttachMouseWheelToHwnd',
)
external int _DCompositionAttachMouseWheelToHwnd(
  VTablePointer visual,
  Pointer hwnd,
  int enable,
);

/// Requests that the system dynamically switch to a higher refresh rate to
/// enhance latency-sensitive content.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-dcompositionboostcompositorclock>.
///
/// {@category dcomp}
@pragma('vm:prefer-inline')
void DCompositionBoostCompositorClock(bool enable) {
  final hr$ = HRESULT(_DCompositionBoostCompositorClock(enable ? TRUE : FALSE));
  if (hr$.isError) throw WindowsException(hr$);
}

@Native<Int32 Function(Int32)>(symbol: 'DCompositionBoostCompositorClock')
external int _DCompositionBoostCompositorClock(int enable);

/// Creates a new device object that can be used to create other Microsoft
/// DirectComposition objects.
///
/// This method uses the [ComInterface.type] method to retrieve metadata about
/// the target interface defined by [T], including its IID (Interface ID) and
/// instantiation logic.
///
/// All COM interfaces provided by this package are pre-registered. Custom COM
/// interfaces must be registered manually using the [ComInterface.register]
/// method before calling this method.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-dcompositioncreatedevice>.
///
/// {@category dcomp}
T DCompositionCreateDevice<T extends IUnknown>(IDXGIDevice? dxgiDevice) {
  final companion = ComInterface.type<T>();
  final iid = companion.iid.toNative();
  final dcompositionDevice = adaptiveCalloc<Pointer>();
  final hr$ = HRESULT(
    _DCompositionCreateDevice(
      dxgiDevice?.ptr ?? nullptr,
      iid,
      dcompositionDevice,
    ),
  );
  free(iid);
  if (hr$.isError) {
    free(dcompositionDevice);
    throw WindowsException(hr$);
  }
  final result = companion.fromPointer(dcompositionDevice.value.cast());
  free(dcompositionDevice);
  return result;
}

@Native<Int32 Function(VTablePointer, Pointer<GUID>, Pointer<Pointer>)>(
  symbol: 'DCompositionCreateDevice',
)
external int _DCompositionCreateDevice(
  VTablePointer dxgiDevice,
  Pointer<GUID> iid,
  Pointer<Pointer> dcompositionDevice,
);

/// Creates a new device object that can be used to create other Microsoft
/// DirectComposition objects.
///
/// This method uses the [ComInterface.type] method to retrieve metadata about
/// the target interface defined by [T], including its IID (Interface ID) and
/// instantiation logic.
///
/// All COM interfaces provided by this package are pre-registered. Custom COM
/// interfaces must be registered manually using the [ComInterface.register]
/// method before calling this method.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-dcompositioncreatedevice2>.
///
/// {@category dcomp}
T DCompositionCreateDevice2<T extends IUnknown>(IUnknown? renderingDevice) {
  final companion = ComInterface.type<T>();
  final iid = companion.iid.toNative();
  final dcompositionDevice = adaptiveCalloc<Pointer>();
  final hr$ = HRESULT(
    _DCompositionCreateDevice2(
      renderingDevice?.ptr ?? nullptr,
      iid,
      dcompositionDevice,
    ),
  );
  free(iid);
  if (hr$.isError) {
    free(dcompositionDevice);
    throw WindowsException(hr$);
  }
  final result = companion.fromPointer(dcompositionDevice.value.cast());
  free(dcompositionDevice);
  return result;
}

@Native<Int32 Function(VTablePointer, Pointer<GUID>, Pointer<Pointer>)>(
  symbol: 'DCompositionCreateDevice2',
)
external int _DCompositionCreateDevice2(
  VTablePointer renderingDevice,
  Pointer<GUID> iid,
  Pointer<Pointer> dcompositionDevice,
);

/// Creates a new DirectComposition device object, which can be used to create
/// other DirectComposition objects.
///
/// This method uses the [ComInterface.type] method to retrieve metadata about
/// the target interface defined by [T], including its IID (Interface ID) and
/// instantiation logic.
///
/// All COM interfaces provided by this package are pre-registered. Custom COM
/// interfaces must be registered manually using the [ComInterface.register]
/// method before calling this method.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-dcompositioncreatedevice3>.
///
/// {@category dcomp}
T DCompositionCreateDevice3<T extends IUnknown>(IUnknown? renderingDevice) {
  final companion = ComInterface.type<T>();
  final iid = companion.iid.toNative();
  final dcompositionDevice = adaptiveCalloc<Pointer>();
  final hr$ = HRESULT(
    _DCompositionCreateDevice3(
      renderingDevice?.ptr ?? nullptr,
      iid,
      dcompositionDevice,
    ),
  );
  free(iid);
  if (hr$.isError) {
    free(dcompositionDevice);
    throw WindowsException(hr$);
  }
  final result = companion.fromPointer(dcompositionDevice.value.cast());
  free(dcompositionDevice);
  return result;
}

@Native<Int32 Function(VTablePointer, Pointer<GUID>, Pointer<Pointer>)>(
  symbol: 'DCompositionCreateDevice3',
)
external int _DCompositionCreateDevice3(
  VTablePointer renderingDevice,
  Pointer<GUID> iid,
  Pointer<Pointer> dcompositionDevice,
);

/// Creates a new composition surface object that can be bound to a Microsoft
/// DirectX swap chain or swap buffer and associated with a visual.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-dcompositioncreatesurfacehandle>.
///
/// {@category dcomp}
HANDLE DCompositionCreateSurfaceHandle(
  int desiredAccess,
  Pointer<SECURITY_ATTRIBUTES>? securityAttributes,
) {
  final surfaceHandle = adaptiveCalloc<Pointer>();
  final hr$ = HRESULT(
    _DCompositionCreateSurfaceHandle(
      desiredAccess,
      securityAttributes ?? nullptr,
      surfaceHandle,
    ),
  );
  if (hr$.isError) {
    free(surfaceHandle);
    throw WindowsException(hr$);
  }
  final result$ = surfaceHandle.value;
  free(surfaceHandle);
  return HANDLE(result$);
}

@Native<Int32 Function(Uint32, Pointer<SECURITY_ATTRIBUTES>, Pointer<Pointer>)>(
  symbol: 'DCompositionCreateSurfaceHandle',
)
external int _DCompositionCreateSurfaceHandle(
  int desiredAccess,
  Pointer<SECURITY_ATTRIBUTES> securityAttributes,
  Pointer<Pointer> surfaceHandle,
);

/// Gets the identifier of the most recent compositor frame of the specified
/// type.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-dcompositiongetframeid>.
///
/// {@category dcomp}
int DCompositionGetFrameId(COMPOSITION_FRAME_ID_TYPE frameIdType) {
  final frameId = adaptiveCalloc<Uint64>();
  final hr$ = HRESULT(_DCompositionGetFrameId(frameIdType, frameId));
  if (hr$.isError) {
    free(frameId);
    throw WindowsException(hr$);
  }
  final result$ = frameId.value;
  free(frameId);
  return result$;
}

@Native<Int32 Function(Int32, Pointer<Uint64>)>(
  symbol: 'DCompositionGetFrameId',
)
external int _DCompositionGetFrameId(int frameIdType, Pointer<Uint64> frameId);

/// Gets basic information about the composition frame and a list of render
/// target ID's that are part of the frame.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-dcompositiongetstatistics>.
///
/// {@category dcomp}
@pragma('vm:prefer-inline')
void DCompositionGetStatistics(
  int frameId,
  Pointer<COMPOSITION_FRAME_STATS> frameStats,
  int targetIdCount,
  Pointer<COMPOSITION_TARGET_ID>? targetIds,
  Pointer<Uint32>? actualTargetIdCount,
) {
  final hr$ = HRESULT(
    _DCompositionGetStatistics(
      frameId,
      frameStats,
      targetIdCount,
      targetIds ?? nullptr,
      actualTargetIdCount ?? nullptr,
    ),
  );
  if (hr$.isError) throw WindowsException(hr$);
}

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

/// Throws a [WindowsException] on failure.
///
/// {@category dcomp}
Pointer<COMPOSITION_TARGET_STATS> DCompositionGetTargetStatistics(
  int frameId,
  Pointer<COMPOSITION_TARGET_ID> targetId,
) {
  final targetStats = adaptiveCalloc<COMPOSITION_TARGET_STATS>();
  final hr$ = HRESULT(
    _DCompositionGetTargetStatistics(frameId, targetId, targetStats),
  );
  if (hr$.isError) {
    free(targetStats);
    throw WindowsException(hr$);
  }
  return targetStats;
}

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

/// Halts a thread until the next signal from the compositor clock occurs.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-dcompositionwaitforcompositorclock>.
///
/// {@category dcomp}
@pragma('vm:prefer-inline')
int DCompositionWaitForCompositorClock(
  int count,
  Pointer<Pointer>? handles,
  int timeoutInMs,
) =>
    _DCompositionWaitForCompositorClock(count, handles ?? nullptr, timeoutInMs);

@Native<Uint32 Function(Uint32, Pointer<Pointer>, Uint32)>(
  symbol: 'DCompositionWaitForCompositorClock',
)
external int _DCompositionWaitForCompositorClock(
  int count,
  Pointer<Pointer> handles,
  int timeoutInMs,
);
