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
import 'idcompositionfiltereffect.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IDCompositionAffineTransform2DEffect = GUID.fromComponents(
  0xb74b9e8,
  0xcdd6,
  0x492f,
  Uint8List.fromList(const [0xbb, 0xbc, 0x5e, 0xd3, 0x21, 0x57, 0x2, 0x6d]),
);

/// The arithmetic composite effect is used to combine 2 images using a weighted
/// sum of pixels from the input images.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dcomp/nn-dcomp-idcompositionaffinetransform2deffect>.
///
/// {@category com}
class IDCompositionAffineTransform2DEffect extends IDCompositionFilterEffect
    implements ComInterface {
  /// Creates a new instance of [IDCompositionAffineTransform2DEffect] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IDCompositionAffineTransform2DEffect] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  IDCompositionAffineTransform2DEffect(super.ptr)
    : _vtable = ptr.value.cast<IDCompositionAffineTransform2DEffectVtbl>().ref;

  /// Creates a new instance of [IDCompositionAffineTransform2DEffect] from an
  /// existing [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IDCompositionAffineTransform2DEffect] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IDCompositionAffineTransform2DEffect.from(IUnknown interface) =>
      interface.queryInterface();

  final IDCompositionAffineTransform2DEffectVtbl _vtable;
  late final _SetInterpolationModeFn = _vtable
      .SetInterpolationMode.asFunction<int Function(VTablePointer, int)>();
  late final _SetBorderModeFn =
      _vtable.SetBorderMode.asFunction<int Function(VTablePointer, int)>();
  late final _SetTransformMatrixFn =
      _vtable.SetTransformMatrix.asFunction<
        int Function(VTablePointer, Pointer<D2D_MATRIX_3X2_F>)
      >();
  late final _SetTransformMatrixElementFn =
      _vtable.SetTransformMatrixElement.asFunction<
        int Function(VTablePointer, int, int, VTablePointer)
      >();
  late final _SetTransformMatrixElement2Fn =
      _vtable.SetTransformMatrixElement2.asFunction<
        int Function(VTablePointer, int, int, double)
      >();
  late final _SetSharpnessFn = _vtable
      .SetSharpness.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetSharpness2Fn =
      _vtable.SetSharpness2.asFunction<int Function(VTablePointer, double)>();

  /// Sets the interpolation mode of the effect.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionaffinetransform2deffect-setinterpolationmode>.
  @pragma('vm:prefer-inline')
  void setInterpolationMode(
    D2D1_2DAFFINETRANSFORM_INTERPOLATION_MODE interpolationMode,
  ) {
    final hr$ = HRESULT(_SetInterpolationModeFn(ptr, interpolationMode));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the border mode to use with the effect.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionaffinetransform2deffect-setbordermode>.
  @pragma('vm:prefer-inline')
  void setBorderMode(D2D1_BORDER_MODE borderMode) {
    final hr$ = HRESULT(_SetBorderModeFn(ptr, borderMode));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the transform matrix of the effect.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionaffinetransform2deffect-settransformmatrix>.
  @pragma('vm:prefer-inline')
  void setTransformMatrix(Pointer<D2D_MATRIX_3X2_F> transformMatrix) {
    final hr$ = HRESULT(_SetTransformMatrixFn(ptr, transformMatrix));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets an element of the transform matrix of the effect. (overload 2/2).
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionaffinetransform2deffect-settransformmatrixelement(int_int_idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setTransformMatrixElement(
    int row,
    int column,
    IDCompositionAnimation? animation,
  ) {
    final hr$ = HRESULT(
      _SetTransformMatrixElementFn(ptr, row, column, animation?.ptr ?? nullptr),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets an element of the transform matrix of the effect. (overload 2/2).
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionaffinetransform2deffect-settransformmatrixelement(int_int_idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setTransformMatrixElement2(int row, int column, double value) {
    final hr$ = HRESULT(_SetTransformMatrixElement2Fn(ptr, row, column, value));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the sharpness of the effect. (overload 2/2).
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionaffinetransform2deffect-setsharpness(float)>.
  @pragma('vm:prefer-inline')
  void setSharpness(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetSharpnessFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the sharpness of the effect. (overload 2/2).
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionaffinetransform2deffect-setsharpness(float)>.
  @pragma('vm:prefer-inline')
  void setSharpness2(double sharpness) {
    final hr$ = HRESULT(_SetSharpness2Fn(ptr, sharpness));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IDCompositionAffineTransform2DEffect(ptr: $ptr)';
}

/// @nodoc
base class IDCompositionAffineTransform2DEffectVtbl extends Struct {
  external IDCompositionFilterEffectVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 interpolationMode)>
  >
  SetInterpolationMode;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 borderMode)>
  >
  SetBorderMode;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<D2D_MATRIX_3X2_F> transformMatrix,
      )
    >
  >
  SetTransformMatrix;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 row,
        Int32 column,
        VTablePointer animation,
      )
    >
  >
  SetTransformMatrixElement;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Int32 row, Int32 column, Float value)
    >
  >
  SetTransformMatrixElement2;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer animation)>
  >
  SetSharpness;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Float sharpness)>
  >
  SetSharpness2;
}

@internal
final class IDCompositionAffineTransform2DEffectCompanion
    extends ComCompanion<IDCompositionAffineTransform2DEffect> {
  const IDCompositionAffineTransform2DEffectCompanion();

  @pragma('vm:prefer-inline')
  @override
  IDCompositionAffineTransform2DEffect Function(VTablePointer)
  get fromPointer => IDCompositionAffineTransform2DEffect.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IDCompositionAffineTransform2DEffect;
}
