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
import 'id3d11rasterizerstate1.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ID3D11RasterizerState2 = GUID.fromComponents(
  0x6fbd02fb,
  0x209f,
  0x46c4,
  Uint8List.fromList(const [0xb0, 0x59, 0x2e, 0xd1, 0x55, 0x86, 0xa6, 0xac]),
);

/// The rasterizer-state interface holds a description for rasterizer state that
/// you can bind to the rasterizer stage.
///
/// This rasterizer-state interface supports forced sample count and
/// conservative rasterization mode.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11_3/nn-d3d11_3-id3d11rasterizerstate2>.
///
/// {@category com}
class ID3D11RasterizerState2 extends ID3D11RasterizerState1
    implements ComInterface {
  /// Creates a new instance of [ID3D11RasterizerState2] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ID3D11RasterizerState2]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ID3D11RasterizerState2(super.ptr)
    : _vtable = ptr.value.cast<ID3D11RasterizerState2Vtbl>().ref;

  /// Creates a new instance of [ID3D11RasterizerState2] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3D11RasterizerState2] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3D11RasterizerState2.from(IUnknown interface) =>
      interface.queryInterface();

  final ID3D11RasterizerState2Vtbl _vtable;
  late final _GetDesc2Fn =
      _vtable.GetDesc2.asFunction<
        void Function(VTablePointer, Pointer<D3D11_RASTERIZER_DESC2>)
      >();

  /// Gets the description for rasterizer state that you used to create the
  /// rasterizer-state object.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_3/nf-d3d11_3-id3d11rasterizerstate2-getdesc2>.
  @pragma('vm:prefer-inline')
  void getDesc2(Pointer<D3D11_RASTERIZER_DESC2> pDesc) =>
      _GetDesc2Fn(ptr, pDesc);

  @override
  String toString() => 'ID3D11RasterizerState2(ptr: $ptr)';
}

/// @nodoc
base class ID3D11RasterizerState2Vtbl extends Struct {
  external ID3D11RasterizerState1Vtbl base$;
  external Pointer<
    NativeFunction<
      Void Function(VTablePointer this$, Pointer<D3D11_RASTERIZER_DESC2> pDesc)
    >
  >
  GetDesc2;
}

@internal
final class ID3D11RasterizerState2Companion
    extends ComCompanion<ID3D11RasterizerState2> {
  const ID3D11RasterizerState2Companion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11RasterizerState2 Function(VTablePointer) get fromPointer =>
      ID3D11RasterizerState2.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11RasterizerState2;
}
