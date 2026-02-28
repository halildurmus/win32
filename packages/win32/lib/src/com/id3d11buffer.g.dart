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
import 'id3d11resource.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ID3D11Buffer = GUID.fromComponents(
  0x48570b85,
  0xd1ee,
  0x4fcd,
  Uint8List.fromList(const [0xa2, 0x50, 0xeb, 0x35, 0x7, 0x22, 0xb0, 0x37]),
);

/// Accesses a buffer resource, which is unstructured memory.
///
/// Buffers typically store vertex or index data.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11/nn-d3d11-id3d11buffer>.
///
/// {@category com}
class ID3D11Buffer extends ID3D11Resource implements ComInterface {
  /// Creates a new instance of [ID3D11Buffer] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ID3D11Buffer] interface.
  /// The [ptr] must not be [nullptr]; otherwise, an assertion error is thrown.
  ID3D11Buffer(super.ptr) : _vtable = ptr.value.cast<ID3D11BufferVtbl>().ref;

  /// Creates a new instance of [ID3D11Buffer] from an existing [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3D11Buffer] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3D11Buffer.from(IUnknown interface) => interface.queryInterface();

  final ID3D11BufferVtbl _vtable;
  late final _GetDescFn =
      _vtable.GetDesc.asFunction<
        void Function(VTablePointer, Pointer<D3D11_BUFFER_DESC>)
      >();

  /// Get the properties of a buffer resource.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11buffer-getdesc>.
  @pragma('vm:prefer-inline')
  void getDesc(Pointer<D3D11_BUFFER_DESC> pDesc) => _GetDescFn(ptr, pDesc);

  @override
  String toString() => 'ID3D11Buffer(ptr: $ptr)';
}

/// @nodoc
base class ID3D11BufferVtbl extends Struct {
  external ID3D11ResourceVtbl base$;
  external Pointer<
    NativeFunction<
      Void Function(VTablePointer this$, Pointer<D3D11_BUFFER_DESC> pDesc)
    >
  >
  GetDesc;
}

@internal
final class ID3D11BufferCompanion extends ComCompanion<ID3D11Buffer> {
  const ID3D11BufferCompanion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11Buffer Function(VTablePointer) get fromPointer => ID3D11Buffer.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11Buffer;
}
