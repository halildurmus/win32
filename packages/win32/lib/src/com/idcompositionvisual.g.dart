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
import 'idcompositionclip.g.dart';
import 'idcompositioneffect.g.dart';
import 'idcompositiontransform.g.dart';
import 'idcompositionvisual.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IDCompositionVisual = GUID.fromComponents(
  0x4d93059d,
  0x97b,
  0x4651,
  Uint8List.fromList(const [0x9a, 0x60, 0xf0, 0xf2, 0x51, 0x16, 0xe2, 0xf3]),
);

/// Represents a Microsoft DirectComposition visual.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dcomp/nn-dcomp-idcompositionvisual>.
///
/// {@category com}
class IDCompositionVisual extends IUnknown implements ComInterface {
  /// Creates a new instance of [IDCompositionVisual] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IDCompositionVisual]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  IDCompositionVisual(super.ptr)
    : _vtable = ptr.value.cast<IDCompositionVisualVtbl>().ref;

  /// Creates a new instance of [IDCompositionVisual] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IDCompositionVisual] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IDCompositionVisual.from(IUnknown interface) =>
      interface.queryInterface();

  final IDCompositionVisualVtbl _vtable;
  late final _SetOffsetXFn = _vtable
      .SetOffsetX.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetOffsetX2Fn =
      _vtable.SetOffsetX2.asFunction<int Function(VTablePointer, double)>();
  late final _SetOffsetYFn = _vtable
      .SetOffsetY.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetOffsetY2Fn =
      _vtable.SetOffsetY2.asFunction<int Function(VTablePointer, double)>();
  late final _SetTransformFn = _vtable
      .SetTransform.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetTransform2Fn =
      _vtable.SetTransform2.asFunction<
        int Function(VTablePointer, Pointer<D2D_MATRIX_3X2_F>)
      >();
  late final _SetTransformParentFn =
      _vtable.SetTransformParent.asFunction<
        int Function(VTablePointer, VTablePointer)
      >();
  late final _SetEffectFn = _vtable
      .SetEffect.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetBitmapInterpolationModeFn =
      _vtable.SetBitmapInterpolationMode.asFunction<
        int Function(VTablePointer, int)
      >();
  late final _SetBorderModeFn =
      _vtable.SetBorderMode.asFunction<int Function(VTablePointer, int)>();
  late final _SetClipFn =
      _vtable.SetClip.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetClip2Fn = _vtable
      .SetClip2.asFunction<int Function(VTablePointer, Pointer<D2D_RECT_F>)>();
  late final _SetContentFn = _vtable
      .SetContent.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _AddVisualFn =
      _vtable.AddVisual.asFunction<
        int Function(VTablePointer, VTablePointer, int, VTablePointer)
      >();
  late final _RemoveVisualFn = _vtable
      .RemoveVisual.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _RemoveAllVisualsFn =
      _vtable.RemoveAllVisuals.asFunction<int Function(VTablePointer)>();
  late final _SetCompositeModeFn =
      _vtable.SetCompositeMode.asFunction<int Function(VTablePointer, int)>();

  /// Changes the value of the OffsetX property of this visual. (overload 2/2).
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionvisual-setoffsetx(idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setOffsetX(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetOffsetXFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Changes the value of the OffsetX property of this visual. (overload 2/2).
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionvisual-setoffsetx(idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setOffsetX2(double offsetX) {
    final hr$ = HRESULT(_SetOffsetX2Fn(ptr, offsetX));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Animates the value of the OffsetY property of this visual.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionvisual-setoffsety(idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setOffsetY(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetOffsetYFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Animates the value of the OffsetY property of this visual.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionvisual-setoffsety(idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setOffsetY2(double offsetY) {
    final hr$ = HRESULT(_SetOffsetY2Fn(ptr, offsetY));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the Transform property of this visual to the specified 3-by-2
  /// transform matrix.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionvisual-settransform(constd2d_matrix_3x2_f_)>.
  @pragma('vm:prefer-inline')
  void setTransform(IDCompositionTransform? transform) {
    final hr$ = HRESULT(_SetTransformFn(ptr, transform?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the Transform property of this visual to the specified 3-by-2
  /// transform matrix.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionvisual-settransform(constd2d_matrix_3x2_f_)>.
  @pragma('vm:prefer-inline')
  void setTransform2(Pointer<D2D_MATRIX_3X2_F> matrix) {
    final hr$ = HRESULT(_SetTransform2Fn(ptr, matrix));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the TransformParent property of this visual.
  ///
  /// The TransformParent property establishes the coordinate system relative to
  /// which this visual is composed.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionvisual-settransformparent>.
  @pragma('vm:prefer-inline')
  void setTransformParent(IDCompositionVisual? visual) {
    final hr$ = HRESULT(_SetTransformParentFn(ptr, visual?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the Effect property of this visual.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionvisual-seteffect>.
  @pragma('vm:prefer-inline')
  void setEffect(IDCompositionEffect? effect) {
    final hr$ = HRESULT(_SetEffectFn(ptr, effect?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the BitmapInterpolationMode property, which specifies the mode for
  /// Microsoft DirectComposition to use when interpolating pixels from bitmaps
  /// that are not axis-aligned or drawn exactly at scale.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionvisual-setbitmapinterpolationmode>.
  @pragma('vm:prefer-inline')
  void setBitmapInterpolationMode(
    DCOMPOSITION_BITMAP_INTERPOLATION_MODE interpolationMode,
  ) {
    final hr$ = HRESULT(_SetBitmapInterpolationModeFn(ptr, interpolationMode));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the BorderMode property, which specifies how to compose the edges of
  /// bitmaps and clips associated with this visual, or with visuals in the
  /// subtree rooted at this visual.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionvisual-setbordermode>.
  @pragma('vm:prefer-inline')
  void setBorderMode(DCOMPOSITION_BORDER_MODE borderMode) {
    final hr$ = HRESULT(_SetBorderModeFn(ptr, borderMode));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the Clip property of this visual to the specified rectangle.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionvisual-setclip(constd2d_rect_f_)>.
  @pragma('vm:prefer-inline')
  void setClip(IDCompositionClip? clip) {
    final hr$ = HRESULT(_SetClipFn(ptr, clip?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the Clip property of this visual to the specified rectangle.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionvisual-setclip(constd2d_rect_f_)>.
  @pragma('vm:prefer-inline')
  void setClip2(Pointer<D2D_RECT_F> rect) {
    final hr$ = HRESULT(_SetClip2Fn(ptr, rect));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the Content property of this visual to the specified bitmap or window
  /// wrapper.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionvisual-setcontent>.
  @pragma('vm:prefer-inline')
  void setContent(IUnknown? content) {
    final hr$ = HRESULT(_SetContentFn(ptr, content?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Adds a new child visual to the children list of this visual.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionvisual-addvisual>.
  @pragma('vm:prefer-inline')
  void addVisual(
    IDCompositionVisual? visual,
    bool insertAbove,
    IDCompositionVisual? referenceVisual,
  ) {
    final hr$ = HRESULT(
      _AddVisualFn(
        ptr,
        visual?.ptr ?? nullptr,
        insertAbove ? TRUE : FALSE,
        referenceVisual?.ptr ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Removes a child visual from the children list of this visual.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionvisual-removevisual>.
  @pragma('vm:prefer-inline')
  void removeVisual(IDCompositionVisual? visual) {
    final hr$ = HRESULT(_RemoveVisualFn(ptr, visual?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Removes all visuals from the children list of this visual.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionvisual-removeallvisuals>.
  @pragma('vm:prefer-inline')
  void removeAllVisuals() {
    final hr$ = HRESULT(_RemoveAllVisualsFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the blending mode for this visual.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionvisual-setcompositemode>.
  @pragma('vm:prefer-inline')
  void setCompositeMode(DCOMPOSITION_COMPOSITE_MODE compositeMode) {
    final hr$ = HRESULT(_SetCompositeModeFn(ptr, compositeMode));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IDCompositionVisual(ptr: $ptr)';
}

/// @nodoc
base class IDCompositionVisualVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer animation)>
  >
  SetOffsetX;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Float offsetX)>
  >
  SetOffsetX2;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer animation)>
  >
  SetOffsetY;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Float offsetY)>
  >
  SetOffsetY2;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer transform)>
  >
  SetTransform;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<D2D_MATRIX_3X2_F> matrix)
    >
  >
  SetTransform2;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer visual)>
  >
  SetTransformParent;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer effect)>
  >
  SetEffect;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 interpolationMode)>
  >
  SetBitmapInterpolationMode;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 borderMode)>
  >
  SetBorderMode;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer clip)>
  >
  SetClip;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<D2D_RECT_F> rect)
    >
  >
  SetClip2;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer content)>
  >
  SetContent;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer visual,
        Int32 insertAbove,
        VTablePointer referenceVisual,
      )
    >
  >
  AddVisual;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer visual)>
  >
  RemoveVisual;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>>
  RemoveAllVisuals;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 compositeMode)>
  >
  SetCompositeMode;
}

@internal
final class IDCompositionVisualCompanion
    extends ComCompanion<IDCompositionVisual> {
  const IDCompositionVisualCompanion();

  @pragma('vm:prefer-inline')
  @override
  IDCompositionVisual Function(VTablePointer) get fromPointer =>
      IDCompositionVisual.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IDCompositionVisual;
}
