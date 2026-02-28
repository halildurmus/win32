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
import 'id3d11view.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ID3D11ShaderResourceView = GUID.fromComponents(
  0xb0e06fe0,
  0x8192,
  0x4e1a,
  Uint8List.fromList(const [0xb1, 0xca, 0x36, 0xd7, 0x41, 0x47, 0x10, 0xb2]),
);

/// A shader-resource-view interface specifies the subresources a shader can
/// access during rendering.
///
/// Examples of shader resources include a constant buffer, a texture buffer,
/// and a texture.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11/nn-d3d11-id3d11shaderresourceview>.
///
/// {@category com}
class ID3D11ShaderResourceView extends ID3D11View implements ComInterface {
  /// Creates a new instance of [ID3D11ShaderResourceView] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [ID3D11ShaderResourceView] interface. The [ptr] must not be [nullptr];
  /// otherwise, an assertion error is thrown.
  ID3D11ShaderResourceView(super.ptr)
    : _vtable = ptr.value.cast<ID3D11ShaderResourceViewVtbl>().ref;

  /// Creates a new instance of [ID3D11ShaderResourceView] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3D11ShaderResourceView] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3D11ShaderResourceView.from(IUnknown interface) =>
      interface.queryInterface();

  final ID3D11ShaderResourceViewVtbl _vtable;
  late final _GetDescFn =
      _vtable.GetDesc.asFunction<
        void Function(VTablePointer, Pointer<D3D11_SHADER_RESOURCE_VIEW_DESC>)
      >();

  /// Get the shader resource view's description.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11shaderresourceview-getdesc>.
  @pragma('vm:prefer-inline')
  void getDesc(Pointer<D3D11_SHADER_RESOURCE_VIEW_DESC> pDesc) =>
      _GetDescFn(ptr, pDesc);

  @override
  String toString() => 'ID3D11ShaderResourceView(ptr: $ptr)';
}

/// @nodoc
base class ID3D11ShaderResourceViewVtbl extends Struct {
  external ID3D11ViewVtbl base$;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Pointer<D3D11_SHADER_RESOURCE_VIEW_DESC> pDesc,
      )
    >
  >
  GetDesc;
}

@internal
final class ID3D11ShaderResourceViewCompanion
    extends ComCompanion<ID3D11ShaderResourceView> {
  const ID3D11ShaderResourceViewCompanion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11ShaderResourceView Function(VTablePointer) get fromPointer =>
      ID3D11ShaderResourceView.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11ShaderResourceView;
}
