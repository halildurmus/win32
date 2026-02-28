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
final IID_IDCompositionGaussianBlurEffect = GUID.fromComponents(
  0x45d4d0b7,
  0x1bd4,
  0x454e,
  Uint8List.fromList(const [0x88, 0x94, 0x2b, 0xfa, 0x68, 0x44, 0x30, 0x33]),
);

/// The Gaussian blur effect is used to blur an image by a Gaussian function,
/// typically to reduce image noise and reduce detail.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dcomp/nn-dcomp-idcompositiongaussianblureffect>.
///
/// {@category com}
class IDCompositionGaussianBlurEffect extends IDCompositionFilterEffect
    implements ComInterface {
  /// Creates a new instance of [IDCompositionGaussianBlurEffect] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IDCompositionGaussianBlurEffect] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  IDCompositionGaussianBlurEffect(super.ptr)
    : _vtable = ptr.value.cast<IDCompositionGaussianBlurEffectVtbl>().ref;

  /// Creates a new instance of [IDCompositionGaussianBlurEffect] from an
  /// existing [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IDCompositionGaussianBlurEffect] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IDCompositionGaussianBlurEffect.from(IUnknown interface) =>
      interface.queryInterface();

  final IDCompositionGaussianBlurEffectVtbl _vtable;
  late final _SetStandardDeviationFn =
      _vtable.SetStandardDeviation.asFunction<
        int Function(VTablePointer, VTablePointer)
      >();
  late final _SetStandardDeviation2Fn = _vtable
      .SetStandardDeviation2.asFunction<int Function(VTablePointer, double)>();
  late final _SetBorderModeFn =
      _vtable.SetBorderMode.asFunction<int Function(VTablePointer, int)>();

  /// The IDCompositionGaussianBlurEffect::SetStandardDeviation(float) method
  /// sets the amount of blur to be applied to the image.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiongaussianblureffect-setstandarddeviation(float)>.
  @pragma('vm:prefer-inline')
  void setStandardDeviation(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(
      _SetStandardDeviationFn(ptr, animation?.ptr ?? nullptr),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// The IDCompositionGaussianBlurEffect::SetStandardDeviation(float) method
  /// sets the amount of blur to be applied to the image.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiongaussianblureffect-setstandarddeviation(float)>.
  @pragma('vm:prefer-inline')
  void setStandardDeviation2(double amount) {
    final hr$ = HRESULT(_SetStandardDeviation2Fn(ptr, amount));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the mode used to calculate the border of the image.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiongaussianblureffect-setbordermode>.
  @pragma('vm:prefer-inline')
  void setBorderMode(D2D1_BORDER_MODE mode) {
    final hr$ = HRESULT(_SetBorderModeFn(ptr, mode));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IDCompositionGaussianBlurEffect(ptr: $ptr)';
}

/// @nodoc
base class IDCompositionGaussianBlurEffectVtbl extends Struct {
  external IDCompositionFilterEffectVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer animation)>
  >
  SetStandardDeviation;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Float amount)>
  >
  SetStandardDeviation2;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 mode)>
  >
  SetBorderMode;
}

@internal
final class IDCompositionGaussianBlurEffectCompanion
    extends ComCompanion<IDCompositionGaussianBlurEffect> {
  const IDCompositionGaussianBlurEffectCompanion();

  @pragma('vm:prefer-inline')
  @override
  IDCompositionGaussianBlurEffect Function(VTablePointer) get fromPointer =>
      IDCompositionGaussianBlurEffect.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IDCompositionGaussianBlurEffect;
}
