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
import 'idcompositiontransform3d.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IDCompositionTransform = GUID.fromComponents(
  0xfd55faa7,
  0x37e0,
  0x4c20,
  Uint8List.fromList(const [0x95, 0xd2, 0x9b, 0xe4, 0x5b, 0xc3, 0x3f, 0x55]),
);

/// Represents a 2D transformation that can be used to modify the coordinate
/// space of a visual subtree.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dcomp/nn-dcomp-idcompositiontransform>.
///
/// {@category com}
class IDCompositionTransform extends IDCompositionTransform3D
    implements ComInterface {
  /// Creates a new instance of [IDCompositionTransform] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IDCompositionTransform]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  IDCompositionTransform(super.ptr);

  /// Creates a new instance of [IDCompositionTransform] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IDCompositionTransform] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IDCompositionTransform.from(IUnknown interface) =>
      interface.queryInterface();

  @override
  String toString() => 'IDCompositionTransform(ptr: $ptr)';
}

/// @nodoc
base class IDCompositionTransformVtbl extends Struct {
  external IDCompositionTransform3DVtbl base$;
}

@internal
final class IDCompositionTransformCompanion
    extends ComCompanion<IDCompositionTransform> {
  const IDCompositionTransformCompanion();

  @pragma('vm:prefer-inline')
  @override
  IDCompositionTransform Function(VTablePointer) get fromPointer =>
      IDCompositionTransform.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IDCompositionTransform;
}
