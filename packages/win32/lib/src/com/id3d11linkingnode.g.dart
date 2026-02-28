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
final IID_ID3D11LinkingNode = GUID.fromComponents(
  0xd80dd70c,
  0x8d2f,
  0x4751,
  Uint8List.fromList(const [0x94, 0xa1, 0x3, 0xc7, 0x9b, 0x35, 0x56, 0xdb]),
);

/// A linking-node interface is used for shader linking.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nn-d3d11shader-id3d11linkingnode>.
///
/// {@category com}
class ID3D11LinkingNode extends IUnknown implements ComInterface {
  /// Creates a new instance of [ID3D11LinkingNode] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ID3D11LinkingNode]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ID3D11LinkingNode(super.ptr);

  /// Creates a new instance of [ID3D11LinkingNode] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3D11LinkingNode] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3D11LinkingNode.from(IUnknown interface) =>
      interface.queryInterface();

  @override
  String toString() => 'ID3D11LinkingNode(ptr: $ptr)';
}

/// @nodoc
base class ID3D11LinkingNodeVtbl extends Struct {
  external IUnknownVtbl base$;
}

@internal
final class ID3D11LinkingNodeCompanion extends ComCompanion<ID3D11LinkingNode> {
  const ID3D11LinkingNodeCompanion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11LinkingNode Function(VTablePointer) get fromPointer =>
      ID3D11LinkingNode.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11LinkingNode;
}
