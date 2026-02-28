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
import 'idcompositionanimation.g.dart';
import 'idcompositioneffectgroup.g.dart';
import 'idcompositionmatrixtransform.g.dart';
import 'idcompositionmatrixtransform3d.g.dart';
import 'idcompositionrectangleclip.g.dart';
import 'idcompositionrotatetransform.g.dart';
import 'idcompositionrotatetransform3d.g.dart';
import 'idcompositionscaletransform.g.dart';
import 'idcompositionscaletransform3d.g.dart';
import 'idcompositionskewtransform.g.dart';
import 'idcompositionsurface.g.dart';
import 'idcompositiontarget.g.dart';
import 'idcompositiontransform.g.dart';
import 'idcompositiontransform3d.g.dart';
import 'idcompositiontranslatetransform.g.dart';
import 'idcompositiontranslatetransform3d.g.dart';
import 'idcompositionvirtualsurface.g.dart';
import 'idcompositionvisual.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IDCompositionDevice = GUID.fromComponents(
  0xc37ea93a,
  0xe7aa,
  0x450d,
  Uint8List.fromList(const [0xb1, 0x6f, 0x97, 0x46, 0xcb, 0x4, 0x7, 0xf3]),
);

/// Serves as a factory for all other Microsoft DirectComposition objects and
/// provides methods to control transactional composition.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dcomp/nn-dcomp-idcompositiondevice>.
///
/// {@category com}
class IDCompositionDevice extends IUnknown implements ComInterface {
  /// Creates a new instance of [IDCompositionDevice] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IDCompositionDevice]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  IDCompositionDevice(super.ptr)
    : _vtable = ptr.value.cast<IDCompositionDeviceVtbl>().ref;

  /// Creates a new instance of [IDCompositionDevice] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IDCompositionDevice] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IDCompositionDevice.from(IUnknown interface) =>
      interface.queryInterface();

  final IDCompositionDeviceVtbl _vtable;
  late final _CommitFn =
      _vtable.Commit.asFunction<int Function(VTablePointer)>();
  late final _WaitForCommitCompletionFn =
      _vtable.WaitForCommitCompletion.asFunction<int Function(VTablePointer)>();
  late final _GetFrameStatisticsFn =
      _vtable.GetFrameStatistics.asFunction<
        int Function(VTablePointer, Pointer<DCOMPOSITION_FRAME_STATISTICS>)
      >();
  late final _CreateTargetForHwndFn =
      _vtable.CreateTargetForHwnd.asFunction<
        int Function(VTablePointer, Pointer, int, Pointer<VTablePointer>)
      >();
  late final _CreateVisualFn =
      _vtable.CreateVisual.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _CreateSurfaceFn =
      _vtable.CreateSurface.asFunction<
        int Function(VTablePointer, int, int, int, int, Pointer<VTablePointer>)
      >();
  late final _CreateVirtualSurfaceFn =
      _vtable.CreateVirtualSurface.asFunction<
        int Function(VTablePointer, int, int, int, int, Pointer<VTablePointer>)
      >();
  late final _CreateSurfaceFromHandleFn =
      _vtable.CreateSurfaceFromHandle.asFunction<
        int Function(VTablePointer, Pointer, Pointer<VTablePointer>)
      >();
  late final _CreateSurfaceFromHwndFn =
      _vtable.CreateSurfaceFromHwnd.asFunction<
        int Function(VTablePointer, Pointer, Pointer<VTablePointer>)
      >();
  late final _CreateTranslateTransformFn =
      _vtable.CreateTranslateTransform.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _CreateScaleTransformFn =
      _vtable.CreateScaleTransform.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _CreateRotateTransformFn =
      _vtable.CreateRotateTransform.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _CreateSkewTransformFn =
      _vtable.CreateSkewTransform.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _CreateMatrixTransformFn =
      _vtable.CreateMatrixTransform.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _CreateTransformGroupFn =
      _vtable.CreateTransformGroup.asFunction<
        int Function(
          VTablePointer,
          Pointer<VTablePointer>,
          int,
          Pointer<VTablePointer>,
        )
      >();
  late final _CreateTranslateTransform3DFn =
      _vtable.CreateTranslateTransform3D.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _CreateScaleTransform3DFn =
      _vtable.CreateScaleTransform3D.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _CreateRotateTransform3DFn =
      _vtable.CreateRotateTransform3D.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _CreateMatrixTransform3DFn =
      _vtable.CreateMatrixTransform3D.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _CreateTransform3DGroupFn =
      _vtable.CreateTransform3DGroup.asFunction<
        int Function(
          VTablePointer,
          Pointer<VTablePointer>,
          int,
          Pointer<VTablePointer>,
        )
      >();
  late final _CreateEffectGroupFn =
      _vtable.CreateEffectGroup.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _CreateRectangleClipFn =
      _vtable.CreateRectangleClip.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _CreateAnimationFn =
      _vtable.CreateAnimation.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _CheckDeviceStateFn =
      _vtable.CheckDeviceState.asFunction<
        int Function(VTablePointer, Pointer<Int32>)
      >();

  /// Commits all DirectComposition commands that are pending on this device.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiondevice-commit>.
  @pragma('vm:prefer-inline')
  void commit() {
    final hr$ = HRESULT(_CommitFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Waits for the composition engine to finish processing the previous call to
  /// the `IDCompositionDevice.commit` method.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiondevice-waitforcommitcompletion>.
  @pragma('vm:prefer-inline')
  void waitForCommitCompletion() {
    final hr$ = HRESULT(_WaitForCommitCompletionFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves information from the composition engine about composition times
  /// and the frame rate.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiondevice-getframestatistics>.
  Pointer<DCOMPOSITION_FRAME_STATISTICS> getFrameStatistics() {
    final statistics = adaptiveCalloc<DCOMPOSITION_FRAME_STATISTICS>();
    final hr$ = HRESULT(_GetFrameStatisticsFn(ptr, statistics));
    if (hr$.isError) {
      free(statistics);
      throw WindowsException(hr$);
    }
    return statistics;
  }

  /// Creates a composition target object that is bound to the window that is
  /// represented by the specified window handle (HWND).
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiondevice-createtargetforhwnd>.
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

  /// Creates a new visual object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiondevice-createvisual>.
  IDCompositionVisual? createVisual() {
    final visual = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_CreateVisualFn(ptr, visual));
    if (hr$.isError) {
      free(visual);
      throw WindowsException(hr$);
    }
    final result$ = visual.value;
    free(visual);
    if (result$.isNull) return null;
    return IDCompositionVisual(result$);
  }

  /// Creates an updatable surface object that can be associated with one or
  /// more visuals for composition.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiondevice-createsurface>.
  IDCompositionSurface? createSurface(
    int width,
    int height,
    DXGI_FORMAT pixelFormat,
    DXGI_ALPHA_MODE alphaMode,
  ) {
    final surface = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _CreateSurfaceFn(ptr, width, height, pixelFormat, alphaMode, surface),
    );
    if (hr$.isError) {
      free(surface);
      throw WindowsException(hr$);
    }
    final result$ = surface.value;
    free(surface);
    if (result$.isNull) return null;
    return IDCompositionSurface(result$);
  }

  /// Creates a sparsely populated surface that can be associated with one or
  /// more visuals for composition.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiondevice-createvirtualsurface>.
  IDCompositionVirtualSurface? createVirtualSurface(
    int initialWidth,
    int initialHeight,
    DXGI_FORMAT pixelFormat,
    DXGI_ALPHA_MODE alphaMode,
  ) {
    final virtualSurface = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _CreateVirtualSurfaceFn(
        ptr,
        initialWidth,
        initialHeight,
        pixelFormat,
        alphaMode,
        virtualSurface,
      ),
    );
    if (hr$.isError) {
      free(virtualSurface);
      throw WindowsException(hr$);
    }
    final result$ = virtualSurface.value;
    free(virtualSurface);
    if (result$.isNull) return null;
    return IDCompositionVirtualSurface(result$);
  }

  /// Creates a new composition surface object that wraps an existing
  /// composition surface.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiondevice-createsurfacefromhandle>.
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
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiondevice-createsurfacefromhwnd>.
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

  /// Creates a 2D translation transform object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiondevice-createtranslatetransform>.
  IDCompositionTranslateTransform? createTranslateTransform() {
    final translateTransform = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_CreateTranslateTransformFn(ptr, translateTransform));
    if (hr$.isError) {
      free(translateTransform);
      throw WindowsException(hr$);
    }
    final result$ = translateTransform.value;
    free(translateTransform);
    if (result$.isNull) return null;
    return IDCompositionTranslateTransform(result$);
  }

  /// Creates a 2D scale transform object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiondevice-createscaletransform>.
  IDCompositionScaleTransform? createScaleTransform() {
    final scaleTransform = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_CreateScaleTransformFn(ptr, scaleTransform));
    if (hr$.isError) {
      free(scaleTransform);
      throw WindowsException(hr$);
    }
    final result$ = scaleTransform.value;
    free(scaleTransform);
    if (result$.isNull) return null;
    return IDCompositionScaleTransform(result$);
  }

  /// Creates a 2D rotation transform object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiondevice-createrotatetransform>.
  IDCompositionRotateTransform? createRotateTransform() {
    final rotateTransform = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_CreateRotateTransformFn(ptr, rotateTransform));
    if (hr$.isError) {
      free(rotateTransform);
      throw WindowsException(hr$);
    }
    final result$ = rotateTransform.value;
    free(rotateTransform);
    if (result$.isNull) return null;
    return IDCompositionRotateTransform(result$);
  }

  /// Creates a 2D skew transform object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiondevice-createskewtransform>.
  IDCompositionSkewTransform? createSkewTransform() {
    final skewTransform = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_CreateSkewTransformFn(ptr, skewTransform));
    if (hr$.isError) {
      free(skewTransform);
      throw WindowsException(hr$);
    }
    final result$ = skewTransform.value;
    free(skewTransform);
    if (result$.isNull) return null;
    return IDCompositionSkewTransform(result$);
  }

  /// Creates a 2D 3-by-2 matrix transform object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiondevice-creatematrixtransform>.
  IDCompositionMatrixTransform? createMatrixTransform() {
    final matrixTransform = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_CreateMatrixTransformFn(ptr, matrixTransform));
    if (hr$.isError) {
      free(matrixTransform);
      throw WindowsException(hr$);
    }
    final result$ = matrixTransform.value;
    free(matrixTransform);
    if (result$.isNull) return null;
    return IDCompositionMatrixTransform(result$);
  }

  /// Creates a 2D transform group object that holds an array of 2D transform
  /// objects.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiondevice-createtransformgroup>.
  IDCompositionTransform? createTransformGroup(
    Pointer<VTablePointer> transforms,
    int elements,
  ) {
    final transformGroup = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _CreateTransformGroupFn(ptr, transforms, elements, transformGroup),
    );
    if (hr$.isError) {
      free(transformGroup);
      throw WindowsException(hr$);
    }
    final result$ = transformGroup.value;
    free(transformGroup);
    if (result$.isNull) return null;
    return IDCompositionTransform(result$);
  }

  /// Creates a 3D translation transform object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiondevice-createtranslatetransform3d>.
  IDCompositionTranslateTransform3D? createTranslateTransform3D() {
    final translateTransform3D = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _CreateTranslateTransform3DFn(ptr, translateTransform3D),
    );
    if (hr$.isError) {
      free(translateTransform3D);
      throw WindowsException(hr$);
    }
    final result$ = translateTransform3D.value;
    free(translateTransform3D);
    if (result$.isNull) return null;
    return IDCompositionTranslateTransform3D(result$);
  }

  /// Creates a 3D scale transform object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiondevice-createscaletransform3d>.
  IDCompositionScaleTransform3D? createScaleTransform3D() {
    final scaleTransform3D = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_CreateScaleTransform3DFn(ptr, scaleTransform3D));
    if (hr$.isError) {
      free(scaleTransform3D);
      throw WindowsException(hr$);
    }
    final result$ = scaleTransform3D.value;
    free(scaleTransform3D);
    if (result$.isNull) return null;
    return IDCompositionScaleTransform3D(result$);
  }

  /// Creates a 3D rotation transform object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiondevice-createrotatetransform3d>.
  IDCompositionRotateTransform3D? createRotateTransform3D() {
    final rotateTransform3D = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_CreateRotateTransform3DFn(ptr, rotateTransform3D));
    if (hr$.isError) {
      free(rotateTransform3D);
      throw WindowsException(hr$);
    }
    final result$ = rotateTransform3D.value;
    free(rotateTransform3D);
    if (result$.isNull) return null;
    return IDCompositionRotateTransform3D(result$);
  }

  /// Creates a 3D 4-by-4 matrix transform object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiondevice-creatematrixtransform3d>.
  IDCompositionMatrixTransform3D? createMatrixTransform3D() {
    final matrixTransform3D = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_CreateMatrixTransform3DFn(ptr, matrixTransform3D));
    if (hr$.isError) {
      free(matrixTransform3D);
      throw WindowsException(hr$);
    }
    final result$ = matrixTransform3D.value;
    free(matrixTransform3D);
    if (result$.isNull) return null;
    return IDCompositionMatrixTransform3D(result$);
  }

  /// Creates a 3D transform group object that holds an array of 3D transform
  /// objects.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiondevice-createtransform3dgroup>.
  IDCompositionTransform3D? createTransform3DGroup(
    Pointer<VTablePointer> transforms3D,
    int elements,
  ) {
    final transform3DGroup = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _CreateTransform3DGroupFn(ptr, transforms3D, elements, transform3DGroup),
    );
    if (hr$.isError) {
      free(transform3DGroup);
      throw WindowsException(hr$);
    }
    final result$ = transform3DGroup.value;
    free(transform3DGroup);
    if (result$.isNull) return null;
    return IDCompositionTransform3D(result$);
  }

  /// Creates an object that represents multiple effects to be applied to a
  /// visual subtree.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiondevice-createeffectgroup>.
  IDCompositionEffectGroup? createEffectGroup() {
    final effectGroup = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_CreateEffectGroupFn(ptr, effectGroup));
    if (hr$.isError) {
      free(effectGroup);
      throw WindowsException(hr$);
    }
    final result$ = effectGroup.value;
    free(effectGroup);
    if (result$.isNull) return null;
    return IDCompositionEffectGroup(result$);
  }

  /// Creates a clip object that can be used to restrict the rendering of a
  /// visual subtree to a rectangular area.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiondevice-createrectangleclip>.
  IDCompositionRectangleClip? createRectangleClip() {
    final clip = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_CreateRectangleClipFn(ptr, clip));
    if (hr$.isError) {
      free(clip);
      throw WindowsException(hr$);
    }
    final result$ = clip.value;
    free(clip);
    if (result$.isNull) return null;
    return IDCompositionRectangleClip(result$);
  }

  /// Creates an animation object that is used to animate one or more scalar
  /// properties of one or more Microsoft DirectComposition objects.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiondevice-createanimation>.
  IDCompositionAnimation? createAnimation() {
    final animation = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_CreateAnimationFn(ptr, animation));
    if (hr$.isError) {
      free(animation);
      throw WindowsException(hr$);
    }
    final result$ = animation.value;
    free(animation);
    if (result$.isNull) return null;
    return IDCompositionAnimation(result$);
  }

  /// Determines whether the DirectComposition device object is still valid.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiondevice-checkdevicestate>.
  bool checkDeviceState() {
    final pfValid = adaptiveCalloc<Int32>();
    final hr$ = HRESULT(_CheckDeviceStateFn(ptr, pfValid));
    if (hr$.isError) {
      free(pfValid);
      throw WindowsException(hr$);
    }
    final result$ = pfValid.value;
    free(pfValid);
    return result$ != FALSE;
  }

  @override
  String toString() => 'IDCompositionDevice(ptr: $ptr)';
}

/// @nodoc
base class IDCompositionDeviceVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>> Commit;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>>
  WaitForCommitCompletion;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<DCOMPOSITION_FRAME_STATISTICS> statistics,
      )
    >
  >
  GetFrameStatistics;
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
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> visual)
    >
  >
  CreateVisual;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 width,
        Uint32 height,
        Int32 pixelFormat,
        Int32 alphaMode,
        Pointer<VTablePointer> surface,
      )
    >
  >
  CreateSurface;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 initialWidth,
        Uint32 initialHeight,
        Int32 pixelFormat,
        Int32 alphaMode,
        Pointer<VTablePointer> virtualSurface,
      )
    >
  >
  CreateVirtualSurface;
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
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<VTablePointer> translateTransform,
      )
    >
  >
  CreateTranslateTransform;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> scaleTransform)
    >
  >
  CreateScaleTransform;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<VTablePointer> rotateTransform,
      )
    >
  >
  CreateRotateTransform;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> skewTransform)
    >
  >
  CreateSkewTransform;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<VTablePointer> matrixTransform,
      )
    >
  >
  CreateMatrixTransform;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<VTablePointer> transforms,
        Uint32 elements,
        Pointer<VTablePointer> transformGroup,
      )
    >
  >
  CreateTransformGroup;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<VTablePointer> translateTransform3D,
      )
    >
  >
  CreateTranslateTransform3D;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<VTablePointer> scaleTransform3D,
      )
    >
  >
  CreateScaleTransform3D;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<VTablePointer> rotateTransform3D,
      )
    >
  >
  CreateRotateTransform3D;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<VTablePointer> matrixTransform3D,
      )
    >
  >
  CreateMatrixTransform3D;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<VTablePointer> transforms3D,
        Uint32 elements,
        Pointer<VTablePointer> transform3DGroup,
      )
    >
  >
  CreateTransform3DGroup;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> effectGroup)
    >
  >
  CreateEffectGroup;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> clip)
    >
  >
  CreateRectangleClip;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> animation)
    >
  >
  CreateAnimation;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> pfValid)>
  >
  CheckDeviceState;
}

@internal
final class IDCompositionDeviceCompanion
    extends ComCompanion<IDCompositionDevice> {
  const IDCompositionDeviceCompanion();

  @pragma('vm:prefer-inline')
  @override
  IDCompositionDevice Function(VTablePointer) get fromPointer =>
      IDCompositionDevice.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IDCompositionDevice;
}
