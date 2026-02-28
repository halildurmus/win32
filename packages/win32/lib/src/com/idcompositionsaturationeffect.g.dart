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
final IID_IDCompositionSaturationEffect = GUID.fromComponents(
  0xa08debda,
  0x3258,
  0x4fa4,
  Uint8List.fromList(const [0x9f, 0x16, 0x91, 0x74, 0xd3, 0xfe, 0x93, 0xb1]),
);

/// This effect is used to alter the saturation of an image.
///
/// The saturation effect is a specialization of the color matrix effect.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dcomp/nn-dcomp-idcompositionsaturationeffect>.
///
/// {@category com}
class IDCompositionSaturationEffect extends IDCompositionFilterEffect
    implements ComInterface {
  /// Creates a new instance of [IDCompositionSaturationEffect] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IDCompositionSaturationEffect] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  IDCompositionSaturationEffect(super.ptr)
    : _vtable = ptr.value.cast<IDCompositionSaturationEffectVtbl>().ref;

  /// Creates a new instance of [IDCompositionSaturationEffect] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IDCompositionSaturationEffect] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IDCompositionSaturationEffect.from(IUnknown interface) =>
      interface.queryInterface();

  final IDCompositionSaturationEffectVtbl _vtable;
  late final _SetSaturationFn = _vtable
      .SetSaturation.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetSaturation2Fn =
      _vtable.SetSaturation2.asFunction<int Function(VTablePointer, double)>();

  /// Sets the saturation of the image. (overload 2/2).
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionsaturationeffect-setsaturation(float)>.
  @pragma('vm:prefer-inline')
  void setSaturation(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetSaturationFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the saturation of the image. (overload 2/2).
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionsaturationeffect-setsaturation(float)>.
  @pragma('vm:prefer-inline')
  void setSaturation2(double ratio) {
    final hr$ = HRESULT(_SetSaturation2Fn(ptr, ratio));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IDCompositionSaturationEffect(ptr: $ptr)';
}

/// @nodoc
base class IDCompositionSaturationEffectVtbl extends Struct {
  external IDCompositionFilterEffectVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer animation)>
  >
  SetSaturation;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Float ratio)>
  >
  SetSaturation2;
}

@internal
final class IDCompositionSaturationEffectCompanion
    extends ComCompanion<IDCompositionSaturationEffect> {
  const IDCompositionSaturationEffectCompanion();

  @pragma('vm:prefer-inline')
  @override
  IDCompositionSaturationEffect Function(VTablePointer) get fromPointer =>
      IDCompositionSaturationEffect.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IDCompositionSaturationEffect;
}
