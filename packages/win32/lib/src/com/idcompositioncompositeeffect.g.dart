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
final IID_IDCompositionCompositeEffect = GUID.fromComponents(
  0x576616c0,
  0xa231,
  0x494d,
  Uint8List.fromList(const [0xa3, 0x8d, 0x0, 0xfd, 0x5e, 0xc4, 0xdb, 0x46]),
);

/// The composite effect is used to combine 2 or more images.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dcomp/nn-dcomp-idcompositioncompositeeffect>.
///
/// {@category com}
class IDCompositionCompositeEffect extends IDCompositionFilterEffect
    implements ComInterface {
  /// Creates a new instance of [IDCompositionCompositeEffect] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IDCompositionCompositeEffect] interface. The [ptr] must not be [nullptr];
  /// otherwise, an assertion error is thrown.
  IDCompositionCompositeEffect(super.ptr)
    : _vtable = ptr.value.cast<IDCompositionCompositeEffectVtbl>().ref;

  /// Creates a new instance of [IDCompositionCompositeEffect] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IDCompositionCompositeEffect] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IDCompositionCompositeEffect.from(IUnknown interface) =>
      interface.queryInterface();

  final IDCompositionCompositeEffectVtbl _vtable;
  late final _SetModeFn =
      _vtable.SetMode.asFunction<int Function(VTablePointer, int)>();

  /// Sets the mode for the composite effect.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositioncompositeeffect-setmode>.
  @pragma('vm:prefer-inline')
  void setMode(D2D1_COMPOSITE_MODE mode) {
    final hr$ = HRESULT(_SetModeFn(ptr, mode));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IDCompositionCompositeEffect(ptr: $ptr)';
}

/// @nodoc
base class IDCompositionCompositeEffectVtbl extends Struct {
  external IDCompositionFilterEffectVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 mode)>
  >
  SetMode;
}

@internal
final class IDCompositionCompositeEffectCompanion
    extends ComCompanion<IDCompositionCompositeEffect> {
  const IDCompositionCompositeEffectCompanion();

  @pragma('vm:prefer-inline')
  @override
  IDCompositionCompositeEffect Function(VTablePointer) get fromPointer =>
      IDCompositionCompositeEffect.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IDCompositionCompositeEffect;
}
