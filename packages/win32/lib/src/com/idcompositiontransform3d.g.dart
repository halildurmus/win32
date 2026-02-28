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
import 'idcompositioneffect.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IDCompositionTransform3D = GUID.fromComponents(
  0x71185722,
  0x246b,
  0x41f2,
  Uint8List.fromList(const [0xaa, 0xd1, 0x4, 0x43, 0xf7, 0xf4, 0xbf, 0xc2]),
);

/// Represents a 3D transformation effect that can be used to modify the
/// rasterization of a visual subtree.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dcomp/nn-dcomp-idcompositiontransform3d>.
///
/// {@category com}
class IDCompositionTransform3D extends IDCompositionEffect
    implements ComInterface {
  /// Creates a new instance of [IDCompositionTransform3D] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IDCompositionTransform3D] interface. The [ptr] must not be [nullptr];
  /// otherwise, an assertion error is thrown.
  IDCompositionTransform3D(super.ptr);

  /// Creates a new instance of [IDCompositionTransform3D] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IDCompositionTransform3D] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IDCompositionTransform3D.from(IUnknown interface) =>
      interface.queryInterface();

  @override
  String toString() => 'IDCompositionTransform3D(ptr: $ptr)';
}

/// @nodoc
base class IDCompositionTransform3DVtbl extends Struct {
  external IDCompositionEffectVtbl base$;
}

@internal
final class IDCompositionTransform3DCompanion
    extends ComCompanion<IDCompositionTransform3D> {
  const IDCompositionTransform3DCompanion();

  @pragma('vm:prefer-inline')
  @override
  IDCompositionTransform3D Function(VTablePointer) get fromPointer =>
      IDCompositionTransform3D.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IDCompositionTransform3D;
}
