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
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IDCompositionEffect = GUID.fromComponents(
  0xec81b08f,
  0xbfcb,
  0x4e8d,
  Uint8List.fromList(const [0xb1, 0x93, 0xa9, 0x15, 0x58, 0x79, 0x99, 0xe8]),
);

/// Represents a bitmap effect that modifies the rasterization of a visual's
/// subtree.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dcomp/nn-dcomp-idcompositioneffect>.
///
/// {@category com}
class IDCompositionEffect extends IUnknown implements ComInterface {
  /// Creates a new instance of [IDCompositionEffect] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IDCompositionEffect]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  IDCompositionEffect(super.ptr);

  /// Creates a new instance of [IDCompositionEffect] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IDCompositionEffect] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IDCompositionEffect.from(IUnknown interface) =>
      interface.queryInterface();

  @override
  String toString() => 'IDCompositionEffect(ptr: $ptr)';
}

/// @nodoc
base class IDCompositionEffectVtbl extends Struct {
  external IUnknownVtbl base$;
}

@internal
final class IDCompositionEffectCompanion
    extends ComCompanion<IDCompositionEffect> {
  const IDCompositionEffectCompanion();

  @pragma('vm:prefer-inline')
  @override
  IDCompositionEffect Function(VTablePointer) get fromPointer =>
      IDCompositionEffect.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IDCompositionEffect;
}
