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
import 'id3d11shaderreflectionvariable.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ID3D11ShaderReflectionConstantBuffer = GUID.fromComponents(
  0xeb62d63d,
  0x93dd,
  0x4318,
  Uint8List.fromList(const [0x8a, 0xe8, 0xc6, 0xf8, 0x3a, 0xd3, 0x71, 0xb8]),
);

/// This shader-reflection interface provides access to a constant buffer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nn-d3d11shader-id3d11shaderreflectionconstantbuffer>.
///
/// {@category com}
class ID3D11ShaderReflectionConstantBuffer implements ComInterface {
  /// Creates a new instance of [ID3D11ShaderReflectionConstantBuffer] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [ID3D11ShaderReflectionConstantBuffer] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  ID3D11ShaderReflectionConstantBuffer(this.ptr)
    : assert(ptr != nullptr, "Pointer must not be 'nullptr'."),
      _vtable = ptr.value.cast<ID3D11ShaderReflectionConstantBufferVtbl>().ref;

  final VTablePointer ptr;
  final ID3D11ShaderReflectionConstantBufferVtbl _vtable;
  late final _GetDescFn =
      _vtable.GetDesc.asFunction<
        int Function(VTablePointer, Pointer<D3D11_SHADER_BUFFER_DESC>)
      >();
  late final _GetVariableByIndexFn =
      _vtable.GetVariableByIndex.asFunction<
        VTablePointer Function(VTablePointer, int)
      >();
  late final _GetVariableByNameFn =
      _vtable.GetVariableByName.asFunction<
        VTablePointer Function(VTablePointer, Pointer<Utf8>)
      >();

  /// Get a constant-buffer description.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11shaderreflectionconstantbuffer-getdesc>.
  @pragma('vm:prefer-inline')
  void getDesc(Pointer<D3D11_SHADER_BUFFER_DESC> pDesc) {
    final hr$ = HRESULT(_GetDescFn(ptr, pDesc));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets a shader-reflection variable by index.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11shaderreflectionconstantbuffer-getvariablebyindex>.
  @pragma('vm:prefer-inline')
  ID3D11ShaderReflectionVariable? getVariableByIndex(int index) {
    final result = _GetVariableByIndexFn(ptr, index);
    if (result.isNull) return null;
    return ID3D11ShaderReflectionVariable(result);
  }

  /// Get a shader-reflection variable by name.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11shaderreflectionconstantbuffer-getvariablebyname>.
  @pragma('vm:prefer-inline')
  ID3D11ShaderReflectionVariable? getVariableByName(PCSTR name) {
    final result = _GetVariableByNameFn(ptr, name);
    if (result.isNull) return null;
    return ID3D11ShaderReflectionVariable(result);
  }

  @override
  String toString() => 'ID3D11ShaderReflectionConstantBuffer(ptr: $ptr)';
}

/// @nodoc
base class ID3D11ShaderReflectionConstantBufferVtbl extends Struct {
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<D3D11_SHADER_BUFFER_DESC> pDesc,
      )
    >
  >
  GetDesc;
  external Pointer<
    NativeFunction<VTablePointer Function(VTablePointer this$, Uint32 index)>
  >
  GetVariableByIndex;
  external Pointer<
    NativeFunction<
      VTablePointer Function(VTablePointer this$, Pointer<Utf8> name)
    >
  >
  GetVariableByName;
}

@internal
final class ID3D11ShaderReflectionConstantBufferCompanion
    extends ComCompanion<ID3D11ShaderReflectionConstantBuffer> {
  const ID3D11ShaderReflectionConstantBufferCompanion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11ShaderReflectionConstantBuffer Function(VTablePointer)
  get fromPointer => ID3D11ShaderReflectionConstantBuffer.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11ShaderReflectionConstantBuffer;
}
