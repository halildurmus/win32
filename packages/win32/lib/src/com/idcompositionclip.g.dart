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
final IID_IDCompositionClip = GUID.fromComponents(
  0x64ac3703,
  0x9d3f,
  0x45ec,
  Uint8List.fromList(const [0xa1, 0x9, 0x7c, 0xac, 0xe, 0x7a, 0x13, 0xa7]),
);

/// Represents a clip object that is used to restrict the rendering of a visual
/// subtree to a rectangular area.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dcomp/nn-dcomp-idcompositionclip>.
///
/// {@category com}
class IDCompositionClip extends IUnknown implements ComInterface {
  /// Creates a new instance of [IDCompositionClip] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IDCompositionClip]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  IDCompositionClip(super.ptr);

  /// Creates a new instance of [IDCompositionClip] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IDCompositionClip] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IDCompositionClip.from(IUnknown interface) =>
      interface.queryInterface();

  @override
  String toString() => 'IDCompositionClip(ptr: $ptr)';
}

/// @nodoc
base class IDCompositionClipVtbl extends Struct {
  external IUnknownVtbl base$;
}

@internal
final class IDCompositionClipCompanion extends ComCompanion<IDCompositionClip> {
  const IDCompositionClipCompanion();

  @pragma('vm:prefer-inline')
  @override
  IDCompositionClip Function(VTablePointer) get fromPointer =>
      IDCompositionClip.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IDCompositionClip;
}
