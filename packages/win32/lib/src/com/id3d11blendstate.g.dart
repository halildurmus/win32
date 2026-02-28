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
final IID_ID3D11BlendState = GUID.fromComponents(
  0x75b68faa,
  0x347d,
  0x4159,
  Uint8List.fromList(const [0x8f, 0x45, 0xa0, 0x64, 0xf, 0x1, 0xcd, 0x9a]),
);

/// The blend-state interface holds a description for blending state that you
/// can bind to the output-merger stage.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11/nn-d3d11-id3d11blendstate>.
///
/// {@category com}
class ID3D11BlendState extends ID3D11DeviceChild implements ComInterface {
  /// Creates a new instance of [ID3D11BlendState] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ID3D11BlendState]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ID3D11BlendState(super.ptr)
    : _vtable = ptr.value.cast<ID3D11BlendStateVtbl>().ref;

  /// Creates a new instance of [ID3D11BlendState] from an existing [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3D11BlendState] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3D11BlendState.from(IUnknown interface) =>
      interface.queryInterface();

  final ID3D11BlendStateVtbl _vtable;
  late final _GetDescFn =
      _vtable.GetDesc.asFunction<
        void Function(VTablePointer, Pointer<D3D11_BLEND_DESC>)
      >();

  /// Gets the description for blending state that you used to create the
  /// blend-state object.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11blendstate-getdesc>.
  @pragma('vm:prefer-inline')
  void getDesc(Pointer<D3D11_BLEND_DESC> pDesc) => _GetDescFn(ptr, pDesc);

  @override
  String toString() => 'ID3D11BlendState(ptr: $ptr)';
}

/// @nodoc
base class ID3D11BlendStateVtbl extends Struct {
  external ID3D11DeviceChildVtbl base$;
  external Pointer<
    NativeFunction<
      Void Function(VTablePointer this$, Pointer<D3D11_BLEND_DESC> pDesc)
    >
  >
  GetDesc;
}

@internal
final class ID3D11BlendStateCompanion extends ComCompanion<ID3D11BlendState> {
  const ID3D11BlendStateCompanion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11BlendState Function(VTablePointer) get fromPointer =>
      ID3D11BlendState.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11BlendState;
}
