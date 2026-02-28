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
final IID_ID3D11SamplerState = GUID.fromComponents(
  0xda6fea51,
  0x564c,
  0x4487,
  Uint8List.fromList(const [0x98, 0x10, 0xf0, 0xd0, 0xf9, 0xb4, 0xe3, 0xa5]),
);

/// The sampler-state interface holds a description for sampler state that you
/// can bind to any shader stage of the pipeline for reference by texture sample
/// operations.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11/nn-d3d11-id3d11samplerstate>.
///
/// {@category com}
class ID3D11SamplerState extends ID3D11DeviceChild implements ComInterface {
  /// Creates a new instance of [ID3D11SamplerState] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ID3D11SamplerState]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ID3D11SamplerState(super.ptr)
    : _vtable = ptr.value.cast<ID3D11SamplerStateVtbl>().ref;

  /// Creates a new instance of [ID3D11SamplerState] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3D11SamplerState] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3D11SamplerState.from(IUnknown interface) =>
      interface.queryInterface();

  final ID3D11SamplerStateVtbl _vtable;
  late final _GetDescFn =
      _vtable.GetDesc.asFunction<
        void Function(VTablePointer, Pointer<D3D11_SAMPLER_DESC>)
      >();

  /// Gets the description for sampler state that you used to create the
  /// sampler-state object.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11samplerstate-getdesc>.
  @pragma('vm:prefer-inline')
  void getDesc(Pointer<D3D11_SAMPLER_DESC> pDesc) => _GetDescFn(ptr, pDesc);

  @override
  String toString() => 'ID3D11SamplerState(ptr: $ptr)';
}

/// @nodoc
base class ID3D11SamplerStateVtbl extends Struct {
  external ID3D11DeviceChildVtbl base$;
  external Pointer<
    NativeFunction<
      Void Function(VTablePointer this$, Pointer<D3D11_SAMPLER_DESC> pDesc)
    >
  >
  GetDesc;
}

@internal
final class ID3D11SamplerStateCompanion
    extends ComCompanion<ID3D11SamplerState> {
  const ID3D11SamplerStateCompanion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11SamplerState Function(VTablePointer) get fromPointer =>
      ID3D11SamplerState.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11SamplerState;
}
