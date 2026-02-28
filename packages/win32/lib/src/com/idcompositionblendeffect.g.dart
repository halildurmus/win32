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
import 'idcompositionfiltereffect.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IDCompositionBlendEffect = GUID.fromComponents(
  0x33ecdc0a,
  0x578a,
  0x4a11,
  Uint8List.fromList(const [0x9c, 0x14, 0xc, 0xb9, 0x5, 0x17, 0xf9, 0xc5]),
);

/// The Blend Effect is used to combine 2 images.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dcomp/nn-dcomp-idcompositionblendeffect>.
///
/// {@category com}
class IDCompositionBlendEffect extends IDCompositionFilterEffect
    implements ComInterface {
  /// Creates a new instance of [IDCompositionBlendEffect] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IDCompositionBlendEffect] interface. The [ptr] must not be [nullptr];
  /// otherwise, an assertion error is thrown.
  IDCompositionBlendEffect(super.ptr)
    : _vtable = ptr.value.cast<IDCompositionBlendEffectVtbl>().ref;

  /// Creates a new instance of [IDCompositionBlendEffect] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IDCompositionBlendEffect] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IDCompositionBlendEffect.from(IUnknown interface) =>
      interface.queryInterface();

  final IDCompositionBlendEffectVtbl _vtable;
  late final _SetModeFn =
      _vtable.SetMode.asFunction<int Function(VTablePointer, int)>();

  /// Sets the blend mode to use when the blend effect combines the two images.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionblendeffect-setmode>.
  @pragma('vm:prefer-inline')
  void setMode(D2D1_BLEND_MODE mode) {
    final hr$ = HRESULT(_SetModeFn(ptr, mode));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IDCompositionBlendEffect(ptr: $ptr)';
}

/// @nodoc
base class IDCompositionBlendEffectVtbl extends Struct {
  external IDCompositionFilterEffectVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 mode)>
  >
  SetMode;
}

@internal
final class IDCompositionBlendEffectCompanion
    extends ComCompanion<IDCompositionBlendEffect> {
  const IDCompositionBlendEffectCompanion();

  @pragma('vm:prefer-inline')
  @override
  IDCompositionBlendEffect Function(VTablePointer) get fromPointer =>
      IDCompositionBlendEffect.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IDCompositionBlendEffect;
}
