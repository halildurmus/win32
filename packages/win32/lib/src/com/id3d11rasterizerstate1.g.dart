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
import 'id3d11rasterizerstate.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ID3D11RasterizerState1 = GUID.fromComponents(
  0x1217d7a6,
  0x5039,
  0x418c,
  Uint8List.fromList(const [0xb0, 0x42, 0x9c, 0xbe, 0x25, 0x6a, 0xfd, 0x6e]),
);

/// The rasterizer-state interface holds a description for rasterizer state that
/// you can bind to the rasterizer stage.
///
/// This rasterizer-state interface supports forced sample count.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11_1/nn-d3d11_1-id3d11rasterizerstate1>.
///
/// {@category com}
class ID3D11RasterizerState1 extends ID3D11RasterizerState
    implements ComInterface {
  /// Creates a new instance of [ID3D11RasterizerState1] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ID3D11RasterizerState1]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ID3D11RasterizerState1(super.ptr)
    : _vtable = ptr.value.cast<ID3D11RasterizerState1Vtbl>().ref;

  /// Creates a new instance of [ID3D11RasterizerState1] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3D11RasterizerState1] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3D11RasterizerState1.from(IUnknown interface) =>
      interface.queryInterface();

  final ID3D11RasterizerState1Vtbl _vtable;
  late final _GetDesc1Fn =
      _vtable.GetDesc1.asFunction<
        void Function(VTablePointer, Pointer<D3D11_RASTERIZER_DESC1>)
      >();

  /// Gets the description for rasterizer state that you used to create the
  /// rasterizer-state object.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_1/nf-d3d11_1-id3d11rasterizerstate1-getdesc1>.
  @pragma('vm:prefer-inline')
  void getDesc1(Pointer<D3D11_RASTERIZER_DESC1> pDesc) =>
      _GetDesc1Fn(ptr, pDesc);

  @override
  String toString() => 'ID3D11RasterizerState1(ptr: $ptr)';
}

/// @nodoc
base class ID3D11RasterizerState1Vtbl extends Struct {
  external ID3D11RasterizerStateVtbl base$;
  external Pointer<
    NativeFunction<
      Void Function(VTablePointer this$, Pointer<D3D11_RASTERIZER_DESC1> pDesc)
    >
  >
  GetDesc1;
}

@internal
final class ID3D11RasterizerState1Companion
    extends ComCompanion<ID3D11RasterizerState1> {
  const ID3D11RasterizerState1Companion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11RasterizerState1 Function(VTablePointer) get fromPointer =>
      ID3D11RasterizerState1.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11RasterizerState1;
}
