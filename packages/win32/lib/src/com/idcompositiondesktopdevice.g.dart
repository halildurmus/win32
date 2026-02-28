// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Dart representation of a COM interface.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:meta/meta.dart';

import '../bstr.dart';
import '../constants.dart';
import '../constants.g.dart';
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
import 'idcompositiondevice2.g.dart';
import 'idcompositiontarget.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IDCompositionDesktopDevice = GUID.fromComponents(
  0x5f4633fe,
  0x1e08,
  0x4cb8,
  Uint8List.fromList(const [0x8c, 0x75, 0xce, 0x24, 0x33, 0x3f, 0x56, 0x2]),
);

/// An application must use the IDCompositionDesktopDevice interface in order to
/// use DirectComposition in a Win32 desktop application.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dcomp/nn-dcomp-idcompositiondesktopdevice>.
///
/// {@category com}
class IDCompositionDesktopDevice extends IDCompositionDevice2
    implements ComInterface {
  /// Creates a new instance of [IDCompositionDesktopDevice] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IDCompositionDesktopDevice] interface. The [ptr] must not be [nullptr];
  /// otherwise, an assertion error is thrown.
  IDCompositionDesktopDevice(super.ptr)
    : _vtable = ptr.value.cast<IDCompositionDesktopDeviceVtbl>().ref;

  /// Creates a new instance of [IDCompositionDesktopDevice] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IDCompositionDesktopDevice] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IDCompositionDesktopDevice.from(IUnknown interface) =>
      interface.queryInterface();

  final IDCompositionDesktopDeviceVtbl _vtable;
  late final _CreateTargetForHwndFn =
      _vtable.CreateTargetForHwnd.asFunction<
        int Function(VTablePointer, Pointer, int, Pointer<VTablePointer>)
      >();
  late final _CreateSurfaceFromHandleFn =
      _vtable.CreateSurfaceFromHandle.asFunction<
        int Function(VTablePointer, Pointer, Pointer<VTablePointer>)
      >();
  late final _CreateSurfaceFromHwndFn =
      _vtable.CreateSurfaceFromHwnd.asFunction<
        int Function(VTablePointer, Pointer, Pointer<VTablePointer>)
      >();

  /// Creates a composition target object that is bound to the window that is
  /// represented by the specified window handle.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiondesktopdevice-createtargetforhwnd>.
  IDCompositionTarget? createTargetForHwnd(HWND hwnd, bool topmost) {
    final target = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _CreateTargetForHwndFn(ptr, hwnd, topmost ? TRUE : FALSE, target),
    );
    if (hr$.isError) {
      free(target);
      throw WindowsException(hr$);
    }
    final result$ = target.value;
    free(target);
    if (result$.isNull) return null;
    return IDCompositionTarget(result$);
  }

  /// Creates a new composition surface object that wraps an existing
  /// composition surface.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiondesktopdevice-createsurfacefromhandle>.
  IUnknown? createSurfaceFromHandle(HANDLE handle) {
    final surface = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_CreateSurfaceFromHandleFn(ptr, handle, surface));
    if (hr$.isError) {
      free(surface);
      throw WindowsException(hr$);
    }
    final result$ = surface.value;
    free(surface);
    if (result$.isNull) return null;
    return IUnknown(result$);
  }

  /// Creates a wrapper object that represents the rasterization of a layered
  /// window, and that can be associated with a visual for composition.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiondesktopdevice-createsurfacefromhwnd>.
  IUnknown? createSurfaceFromHwnd(HWND hwnd) {
    final surface = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_CreateSurfaceFromHwndFn(ptr, hwnd, surface));
    if (hr$.isError) {
      free(surface);
      throw WindowsException(hr$);
    }
    final result$ = surface.value;
    free(surface);
    if (result$.isNull) return null;
    return IUnknown(result$);
  }

  @override
  String toString() => 'IDCompositionDesktopDevice(ptr: $ptr)';
}

/// @nodoc
base class IDCompositionDesktopDeviceVtbl extends Struct {
  external IDCompositionDevice2Vtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer hwnd,
        Int32 topmost,
        Pointer<VTablePointer> target,
      )
    >
  >
  CreateTargetForHwnd;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer handle,
        Pointer<VTablePointer> surface,
      )
    >
  >
  CreateSurfaceFromHandle;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer hwnd,
        Pointer<VTablePointer> surface,
      )
    >
  >
  CreateSurfaceFromHwnd;
}

@internal
final class IDCompositionDesktopDeviceCompanion
    extends ComCompanion<IDCompositionDesktopDevice> {
  const IDCompositionDesktopDeviceCompanion();

  @pragma('vm:prefer-inline')
  @override
  IDCompositionDesktopDevice Function(VTablePointer) get fromPointer =>
      IDCompositionDesktopDevice.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IDCompositionDesktopDevice;
}
