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
final IID_ID3D11DepthStencilState = GUID.fromComponents(
  0x3823efb,
  0x8d8f,
  0x4e1c,
  Uint8List.fromList(const [0x9a, 0xa2, 0xf6, 0x4b, 0xb2, 0xcb, 0xfd, 0xf1]),
);

/// The depth-stencil-state interface holds a description for depth-stencil
/// state that you can bind to the output-merger stage.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11/nn-d3d11-id3d11depthstencilstate>.
///
/// {@category com}
class ID3D11DepthStencilState extends ID3D11DeviceChild
    implements ComInterface {
  /// Creates a new instance of [ID3D11DepthStencilState] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ID3D11DepthStencilState]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ID3D11DepthStencilState(super.ptr)
    : _vtable = ptr.value.cast<ID3D11DepthStencilStateVtbl>().ref;

  /// Creates a new instance of [ID3D11DepthStencilState] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3D11DepthStencilState] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3D11DepthStencilState.from(IUnknown interface) =>
      interface.queryInterface();

  final ID3D11DepthStencilStateVtbl _vtable;
  late final _GetDescFn =
      _vtable.GetDesc.asFunction<
        void Function(VTablePointer, Pointer<D3D11_DEPTH_STENCIL_DESC>)
      >();

  /// Gets the description for depth-stencil state that you used to create the
  /// depth-stencil-state object.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11depthstencilstate-getdesc>.
  @pragma('vm:prefer-inline')
  void getDesc(Pointer<D3D11_DEPTH_STENCIL_DESC> pDesc) =>
      _GetDescFn(ptr, pDesc);

  @override
  String toString() => 'ID3D11DepthStencilState(ptr: $ptr)';
}

/// @nodoc
base class ID3D11DepthStencilStateVtbl extends Struct {
  external ID3D11DeviceChildVtbl base$;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Pointer<D3D11_DEPTH_STENCIL_DESC> pDesc,
      )
    >
  >
  GetDesc;
}

@internal
final class ID3D11DepthStencilStateCompanion
    extends ComCompanion<ID3D11DepthStencilState> {
  const ID3D11DepthStencilStateCompanion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11DepthStencilState Function(VTablePointer) get fromPointer =>
      ID3D11DepthStencilState.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11DepthStencilState;
}
