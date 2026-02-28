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
final IID_IDCompositionHueRotationEffect = GUID.fromComponents(
  0x6db9f920,
  0x770,
  0x4781,
  Uint8List.fromList(const [0xb0, 0xc6, 0x38, 0x19, 0x12, 0xf9, 0xd1, 0x67]),
);

/// The hue rotate effect alters the hue of an image by applying a color matrix
/// based on the rotation angle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dcomp/nn-dcomp-idcompositionhuerotationeffect>.
///
/// {@category com}
class IDCompositionHueRotationEffect extends IDCompositionFilterEffect
    implements ComInterface {
  /// Creates a new instance of [IDCompositionHueRotationEffect] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IDCompositionHueRotationEffect] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  IDCompositionHueRotationEffect(super.ptr)
    : _vtable = ptr.value.cast<IDCompositionHueRotationEffectVtbl>().ref;

  /// Creates a new instance of [IDCompositionHueRotationEffect] from an
  /// existing [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IDCompositionHueRotationEffect] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IDCompositionHueRotationEffect.from(IUnknown interface) =>
      interface.queryInterface();

  final IDCompositionHueRotationEffectVtbl _vtable;
  late final _SetAngleFn =
      _vtable.SetAngle.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetAngle2Fn =
      _vtable.SetAngle2.asFunction<int Function(VTablePointer, double)>();

  /// The IDCompositionHueRotationEffect::SetAngle(float) method sets the angle
  /// to rotate the hue.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionhuerotationeffect-setangle(float)>.
  @pragma('vm:prefer-inline')
  void setAngle(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetAngleFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// The IDCompositionHueRotationEffect::SetAngle(float) method sets the angle
  /// to rotate the hue.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionhuerotationeffect-setangle(float)>.
  @pragma('vm:prefer-inline')
  void setAngle2(double amountDegrees) {
    final hr$ = HRESULT(_SetAngle2Fn(ptr, amountDegrees));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IDCompositionHueRotationEffect(ptr: $ptr)';
}

/// @nodoc
base class IDCompositionHueRotationEffectVtbl extends Struct {
  external IDCompositionFilterEffectVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer animation)>
  >
  SetAngle;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Float amountDegrees)>
  >
  SetAngle2;
}

@internal
final class IDCompositionHueRotationEffectCompanion
    extends ComCompanion<IDCompositionHueRotationEffect> {
  const IDCompositionHueRotationEffectCompanion();

  @pragma('vm:prefer-inline')
  @override
  IDCompositionHueRotationEffect Function(VTablePointer) get fromPointer =>
      IDCompositionHueRotationEffect.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IDCompositionHueRotationEffect;
}
