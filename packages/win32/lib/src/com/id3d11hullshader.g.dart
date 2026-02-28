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
final IID_ID3D11HullShader = GUID.fromComponents(
  0x8e5c6061,
  0x628a,
  0x4c8e,
  Uint8List.fromList(const [0x82, 0x64, 0xbb, 0xe4, 0x5c, 0xb3, 0xd5, 0xdd]),
);

/// A hull-shader interface manages an executable program (a hull shader) that
/// controls the hull-shader stage.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11/nn-d3d11-id3d11hullshader>.
///
/// {@category com}
class ID3D11HullShader extends ID3D11DeviceChild implements ComInterface {
  /// Creates a new instance of [ID3D11HullShader] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ID3D11HullShader]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ID3D11HullShader(super.ptr);

  /// Creates a new instance of [ID3D11HullShader] from an existing [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3D11HullShader] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3D11HullShader.from(IUnknown interface) =>
      interface.queryInterface();

  @override
  String toString() => 'ID3D11HullShader(ptr: $ptr)';
}

/// @nodoc
base class ID3D11HullShaderVtbl extends Struct {
  external ID3D11DeviceChildVtbl base$;
}

@internal
final class ID3D11HullShaderCompanion extends ComCompanion<ID3D11HullShader> {
  const ID3D11HullShaderCompanion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11HullShader Function(VTablePointer) get fromPointer =>
      ID3D11HullShader.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11HullShader;
}
