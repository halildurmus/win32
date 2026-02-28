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
import 'id3d11devicechild.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ID3D11GeometryShader = GUID.fromComponents(
  0x38325b96,
  0xeffb,
  0x4022,
  Uint8List.fromList(const [0xba, 0x2, 0x2e, 0x79, 0x5b, 0x70, 0x27, 0x5c]),
);

/// A geometry-shader interface manages an executable program (a geometry
/// shader) that controls the geometry-shader stage.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11/nn-d3d11-id3d11geometryshader>.
///
/// {@category com}
class ID3D11GeometryShader extends ID3D11DeviceChild implements ComInterface {
  /// Creates a new instance of [ID3D11GeometryShader] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ID3D11GeometryShader]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ID3D11GeometryShader(super.ptr);

  /// Creates a new instance of [ID3D11GeometryShader] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3D11GeometryShader] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3D11GeometryShader.from(IUnknown interface) =>
      interface.queryInterface();

  @override
  String toString() => 'ID3D11GeometryShader(ptr: $ptr)';
}

/// @nodoc
base class ID3D11GeometryShaderVtbl extends Struct {
  external ID3D11DeviceChildVtbl base$;
}

@internal
final class ID3D11GeometryShaderCompanion
    extends ComCompanion<ID3D11GeometryShader> {
  const ID3D11GeometryShaderCompanion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11GeometryShader Function(VTablePointer) get fromPointer =>
      ID3D11GeometryShader.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11GeometryShader;
}
