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
final IID_IDCompositionColorMatrixEffect = GUID.fromComponents(
  0xc1170a22,
  0x3ce2,
  0x4966,
  Uint8List.fromList(const [0x90, 0xd4, 0x55, 0x40, 0x8b, 0xfc, 0x84, 0xc4]),
);

/// The color matrix effect alters the RGBA values of a bitmap.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dcomp/nn-dcomp-idcompositioncolormatrixeffect>.
///
/// {@category com}
class IDCompositionColorMatrixEffect extends IDCompositionFilterEffect
    implements ComInterface {
  /// Creates a new instance of [IDCompositionColorMatrixEffect] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IDCompositionColorMatrixEffect] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  IDCompositionColorMatrixEffect(super.ptr)
    : _vtable = ptr.value.cast<IDCompositionColorMatrixEffectVtbl>().ref;

  /// Creates a new instance of [IDCompositionColorMatrixEffect] from an
  /// existing [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IDCompositionColorMatrixEffect] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IDCompositionColorMatrixEffect.from(IUnknown interface) =>
      interface.queryInterface();

  final IDCompositionColorMatrixEffectVtbl _vtable;
  late final _SetMatrixFn =
      _vtable.SetMatrix.asFunction<
        int Function(VTablePointer, Pointer<D2D_MATRIX_5X4_F>)
      >();
  late final _SetMatrixElementFn =
      _vtable.SetMatrixElement.asFunction<
        int Function(VTablePointer, int, int, VTablePointer)
      >();
  late final _SetMatrixElement2Fn =
      _vtable.SetMatrixElement2.asFunction<
        int Function(VTablePointer, int, int, double)
      >();
  late final _SetAlphaModeFn =
      _vtable.SetAlphaMode.asFunction<int Function(VTablePointer, int)>();
  late final _SetClampOutputFn =
      _vtable.SetClampOutput.asFunction<int Function(VTablePointer, int)>();

  /// Sets the matrix used by the effect to multiply the RGBA values of the
  /// image.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositioncolormatrixeffect-setmatrix>.
  @pragma('vm:prefer-inline')
  void setMatrix(Pointer<D2D_MATRIX_5X4_F> matrix) {
    final hr$ = HRESULT(_SetMatrixFn(ptr, matrix));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets an element of the color matrix. (overload 1/2).
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositioncolormatrixeffect-setmatrixelement(int_int_float)>.
  @pragma('vm:prefer-inline')
  void setMatrixElement(
    int row,
    int column,
    IDCompositionAnimation? animation,
  ) {
    final hr$ = HRESULT(
      _SetMatrixElementFn(ptr, row, column, animation?.ptr ?? nullptr),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets an element of the color matrix. (overload 1/2).
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositioncolormatrixeffect-setmatrixelement(int_int_float)>.
  @pragma('vm:prefer-inline')
  void setMatrixElement2(int row, int column, double value) {
    final hr$ = HRESULT(_SetMatrixElement2Fn(ptr, row, column, value));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the alpha mode of the output for the color matrix effect.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositioncolormatrixeffect-setalphamode>.
  @pragma('vm:prefer-inline')
  void setAlphaMode(D2D1_COLORMATRIX_ALPHA_MODE mode) {
    final hr$ = HRESULT(_SetAlphaModeFn(ptr, mode));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Specifies whether the effect clamps color values to between 0 and 1 before
  /// the effects passes the values to the next effect in the chain.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositioncolormatrixeffect-setclampoutput>.
  @pragma('vm:prefer-inline')
  void setClampOutput(bool clamp) {
    final hr$ = HRESULT(_SetClampOutputFn(ptr, clamp ? TRUE : FALSE));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IDCompositionColorMatrixEffect(ptr: $ptr)';
}

/// @nodoc
base class IDCompositionColorMatrixEffectVtbl extends Struct {
  external IDCompositionFilterEffectVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<D2D_MATRIX_5X4_F> matrix)
    >
  >
  SetMatrix;
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
  SetMatrixElement;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Int32 row, Int32 column, Float value)
    >
  >
  SetMatrixElement2;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 mode)>
  >
  SetAlphaMode;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 clamp)>
  >
  SetClampOutput;
}

@internal
final class IDCompositionColorMatrixEffectCompanion
    extends ComCompanion<IDCompositionColorMatrixEffect> {
  const IDCompositionColorMatrixEffectCompanion();

  @pragma('vm:prefer-inline')
  @override
  IDCompositionColorMatrixEffect Function(VTablePointer) get fromPointer =>
      IDCompositionColorMatrixEffect.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IDCompositionColorMatrixEffect;
}
