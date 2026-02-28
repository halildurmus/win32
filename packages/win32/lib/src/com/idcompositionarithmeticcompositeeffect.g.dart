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
import 'idcompositionanimation.g.dart';
import 'idcompositionfiltereffect.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IDCompositionArithmeticCompositeEffect = GUID.fromComponents(
  0x3b67dfa8,
  0xe3dd,
  0x4e61,
  Uint8List.fromList(const [0xb6, 0x40, 0x46, 0xc2, 0xf3, 0xd7, 0x39, 0xdc]),
);

/// The arithmetic composite effect is used to combine 2 images using a weighted
/// sum of pixels from the input images.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dcomp/nn-dcomp-idcompositionarithmeticcompositeeffect>.
///
/// {@category com}
class IDCompositionArithmeticCompositeEffect extends IDCompositionFilterEffect
    implements ComInterface {
  /// Creates a new instance of [IDCompositionArithmeticCompositeEffect] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IDCompositionArithmeticCompositeEffect] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  IDCompositionArithmeticCompositeEffect(super.ptr)
    : _vtable = ptr.value
          .cast<IDCompositionArithmeticCompositeEffectVtbl>()
          .ref;

  /// Creates a new instance of [IDCompositionArithmeticCompositeEffect] from an
  /// existing [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IDCompositionArithmeticCompositeEffect] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IDCompositionArithmeticCompositeEffect.from(IUnknown interface) =>
      interface.queryInterface();

  final IDCompositionArithmeticCompositeEffectVtbl _vtable;
  late final _SetCoefficientsFn =
      _vtable.SetCoefficients.asFunction<
        int Function(VTablePointer, Pointer<D2D_VECTOR_4F>)
      >();
  late final _SetClampOutputFn =
      _vtable.SetClampOutput.asFunction<int Function(VTablePointer, int)>();
  late final _SetCoefficient1Fn = _vtable
      .SetCoefficient1.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetCoefficient12Fn = _vtable
      .SetCoefficient12.asFunction<int Function(VTablePointer, double)>();
  late final _SetCoefficient2Fn = _vtable
      .SetCoefficient2.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetCoefficient22Fn = _vtable
      .SetCoefficient22.asFunction<int Function(VTablePointer, double)>();
  late final _SetCoefficient3Fn = _vtable
      .SetCoefficient3.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetCoefficient32Fn = _vtable
      .SetCoefficient32.asFunction<int Function(VTablePointer, double)>();
  late final _SetCoefficient4Fn = _vtable
      .SetCoefficient4.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetCoefficient42Fn = _vtable
      .SetCoefficient42.asFunction<int Function(VTablePointer, double)>();

  /// Sets the coefficients for the equation used to composite the two input
  /// images.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionarithmeticcompositeeffect-setcoefficients>.
  @pragma('vm:prefer-inline')
  void setCoefficients(Pointer<D2D_VECTOR_4F> coefficients) {
    final hr$ = HRESULT(_SetCoefficientsFn(ptr, coefficients));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Specifies whether to clamp color values before the effect passes the
  /// values to the next effect in the graph.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionarithmeticcompositeeffect-setclampoutput>.
  @pragma('vm:prefer-inline')
  void setClampOutput(bool clampoutput) {
    final hr$ = HRESULT(_SetClampOutputFn(ptr, clampoutput ? TRUE : FALSE));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the first coefficient for the equation used to composite the two
  /// input images. (overload 2/2).
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionarithmeticcompositeeffect-setcoefficient1(float)>.
  @pragma('vm:prefer-inline')
  void setCoefficient1(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetCoefficient1Fn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the first coefficient for the equation used to composite the two
  /// input images. (overload 2/2).
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionarithmeticcompositeeffect-setcoefficient1(float)>.
  @pragma('vm:prefer-inline')
  void setCoefficient12(double coeffcient1) {
    final hr$ = HRESULT(_SetCoefficient12Fn(ptr, coeffcient1));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the second coefficient for the equation used to composite the two
  /// input images. (overload 2/2).
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionarithmeticcompositeeffect-setcoefficient2(idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setCoefficient2(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetCoefficient2Fn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the second coefficient for the equation used to composite the two
  /// input images. (overload 2/2).
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionarithmeticcompositeeffect-setcoefficient2(idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setCoefficient22(double coefficient2) {
    final hr$ = HRESULT(_SetCoefficient22Fn(ptr, coefficient2));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the third coefficient for the equation used to composite the two
  /// input images. (overload 1/2).
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionarithmeticcompositeeffect-setcoefficient3(float)>.
  @pragma('vm:prefer-inline')
  void setCoefficient3(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetCoefficient3Fn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the third coefficient for the equation used to composite the two
  /// input images. (overload 1/2).
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionarithmeticcompositeeffect-setcoefficient3(float)>.
  @pragma('vm:prefer-inline')
  void setCoefficient32(double coefficient3) {
    final hr$ = HRESULT(_SetCoefficient32Fn(ptr, coefficient3));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the fourth coefficient for the equation used to composite the two
  /// input images. (overload 2/2).
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionarithmeticcompositeeffect-setcoefficient4(float)>.
  @pragma('vm:prefer-inline')
  void setCoefficient4(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetCoefficient4Fn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the fourth coefficient for the equation used to composite the two
  /// input images. (overload 2/2).
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionarithmeticcompositeeffect-setcoefficient4(float)>.
  @pragma('vm:prefer-inline')
  void setCoefficient42(double coefficient4) {
    final hr$ = HRESULT(_SetCoefficient42Fn(ptr, coefficient4));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IDCompositionArithmeticCompositeEffect(ptr: $ptr)';
}

/// @nodoc
base class IDCompositionArithmeticCompositeEffectVtbl extends Struct {
  external IDCompositionFilterEffectVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<D2D_VECTOR_4F> coefficients)
    >
  >
  SetCoefficients;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 clampoutput)>
  >
  SetClampOutput;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer animation)>
  >
  SetCoefficient1;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Float coeffcient1)>
  >
  SetCoefficient12;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer animation)>
  >
  SetCoefficient2;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Float coefficient2)>
  >
  SetCoefficient22;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer animation)>
  >
  SetCoefficient3;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Float coefficient3)>
  >
  SetCoefficient32;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer animation)>
  >
  SetCoefficient4;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Float coefficient4)>
  >
  SetCoefficient42;
}

@internal
final class IDCompositionArithmeticCompositeEffectCompanion
    extends ComCompanion<IDCompositionArithmeticCompositeEffect> {
  const IDCompositionArithmeticCompositeEffectCompanion();

  @pragma('vm:prefer-inline')
  @override
  IDCompositionArithmeticCompositeEffect Function(VTablePointer)
  get fromPointer => IDCompositionArithmeticCompositeEffect.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IDCompositionArithmeticCompositeEffect;
}
