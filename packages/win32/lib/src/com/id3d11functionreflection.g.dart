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
import 'id3d11functionparameterreflection.g.dart';
import 'id3d11shaderreflectionconstantbuffer.g.dart';
import 'id3d11shaderreflectionvariable.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ID3D11FunctionReflection = GUID.fromComponents(
  0x207bcecb,
  0xd683,
  0x4a06,
  Uint8List.fromList(const [0xa8, 0xa3, 0x9b, 0x14, 0x9b, 0x9f, 0x73, 0xa4]),
);

/// A function-reflection interface accesses function info.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nn-d3d11shader-id3d11functionreflection>.
///
/// {@category com}
class ID3D11FunctionReflection implements ComInterface {
  /// Creates a new instance of [ID3D11FunctionReflection] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [ID3D11FunctionReflection] interface. The [ptr] must not be [nullptr];
  /// otherwise, an assertion error is thrown.
  ID3D11FunctionReflection(this.ptr)
    : assert(ptr != nullptr, "Pointer must not be 'nullptr'."),
      _vtable = ptr.value.cast<ID3D11FunctionReflectionVtbl>().ref;

  final VTablePointer ptr;
  final ID3D11FunctionReflectionVtbl _vtable;
  late final _GetDescFn =
      _vtable.GetDesc.asFunction<
        int Function(VTablePointer, Pointer<D3D11_FUNCTION_DESC>)
      >();
  late final _GetConstantBufferByIndexFn =
      _vtable.GetConstantBufferByIndex.asFunction<
        VTablePointer Function(VTablePointer, int)
      >();
  late final _GetConstantBufferByNameFn =
      _vtable.GetConstantBufferByName.asFunction<
        VTablePointer Function(VTablePointer, Pointer<Utf8>)
      >();
  late final _GetResourceBindingDescFn =
      _vtable.GetResourceBindingDesc.asFunction<
        int Function(VTablePointer, int, Pointer<D3D11_SHADER_INPUT_BIND_DESC>)
      >();
  late final _GetVariableByNameFn =
      _vtable.GetVariableByName.asFunction<
        VTablePointer Function(VTablePointer, Pointer<Utf8>)
      >();
  late final _GetResourceBindingDescByNameFn =
      _vtable.GetResourceBindingDescByName.asFunction<
        int Function(
          VTablePointer,
          Pointer<Utf8>,
          Pointer<D3D11_SHADER_INPUT_BIND_DESC>,
        )
      >();
  late final _GetFunctionParameterFn =
      _vtable.GetFunctionParameter.asFunction<
        VTablePointer Function(VTablePointer, int)
      >();

  /// Fills the function descriptor structure for the function.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11functionreflection-getdesc>.
  Pointer<D3D11_FUNCTION_DESC> getDesc() {
    final pDesc = adaptiveCalloc<D3D11_FUNCTION_DESC>();
    final hr$ = HRESULT(_GetDescFn(ptr, pDesc));
    if (hr$.isError) {
      free(pDesc);
      throw WindowsException(hr$);
    }
    return pDesc;
  }

  /// Gets a constant buffer by index for a function.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11functionreflection-getconstantbufferbyindex>.
  @pragma('vm:prefer-inline')
  ID3D11ShaderReflectionConstantBuffer? getConstantBufferByIndex(
    int bufferIndex,
  ) {
    final result = _GetConstantBufferByIndexFn(ptr, bufferIndex);
    if (result.isNull) return null;
    return ID3D11ShaderReflectionConstantBuffer(result);
  }

  /// Gets a constant buffer by name for a function.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11functionreflection-getconstantbufferbyname>.
  @pragma('vm:prefer-inline')
  ID3D11ShaderReflectionConstantBuffer? getConstantBufferByName(PCSTR name) {
    final result = _GetConstantBufferByNameFn(ptr, name);
    if (result.isNull) return null;
    return ID3D11ShaderReflectionConstantBuffer(result);
  }

  /// Gets a description of how a resource is bound to a function.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11functionreflection-getresourcebindingdesc>.
  Pointer<D3D11_SHADER_INPUT_BIND_DESC> getResourceBindingDesc(
    int resourceIndex,
  ) {
    final pDesc = adaptiveCalloc<D3D11_SHADER_INPUT_BIND_DESC>();
    final hr$ = HRESULT(_GetResourceBindingDescFn(ptr, resourceIndex, pDesc));
    if (hr$.isError) {
      free(pDesc);
      throw WindowsException(hr$);
    }
    return pDesc;
  }

  /// Gets a variable by name.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11functionreflection-getvariablebyname>.
  @pragma('vm:prefer-inline')
  ID3D11ShaderReflectionVariable? getVariableByName(PCSTR name) {
    final result = _GetVariableByNameFn(ptr, name);
    if (result.isNull) return null;
    return ID3D11ShaderReflectionVariable(result);
  }

  /// Gets a description of how a resource is bound to a function.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11functionreflection-getresourcebindingdescbyname>.
  Pointer<D3D11_SHADER_INPUT_BIND_DESC> getResourceBindingDescByName(
    PCSTR name,
  ) {
    final pDesc = adaptiveCalloc<D3D11_SHADER_INPUT_BIND_DESC>();
    final hr$ = HRESULT(_GetResourceBindingDescByNameFn(ptr, name, pDesc));
    if (hr$.isError) {
      free(pDesc);
      throw WindowsException(hr$);
    }
    return pDesc;
  }

  /// Gets the function parameter reflector.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11functionreflection-getfunctionparameter>.
  @pragma('vm:prefer-inline')
  ID3D11FunctionParameterReflection? getFunctionParameter(int parameterIndex) {
    final result = _GetFunctionParameterFn(ptr, parameterIndex);
    if (result.isNull) return null;
    return ID3D11FunctionParameterReflection(result);
  }

  @override
  String toString() => 'ID3D11FunctionReflection(ptr: $ptr)';
}

/// @nodoc
base class ID3D11FunctionReflectionVtbl extends Struct {
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<D3D11_FUNCTION_DESC> pDesc)
    >
  >
  GetDesc;
  external Pointer<
    NativeFunction<
      VTablePointer Function(VTablePointer this$, Uint32 bufferIndex)
    >
  >
  GetConstantBufferByIndex;
  external Pointer<
    NativeFunction<
      VTablePointer Function(VTablePointer this$, Pointer<Utf8> name)
    >
  >
  GetConstantBufferByName;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 resourceIndex,
        Pointer<D3D11_SHADER_INPUT_BIND_DESC> pDesc,
      )
    >
  >
  GetResourceBindingDesc;
  external Pointer<
    NativeFunction<
      VTablePointer Function(VTablePointer this$, Pointer<Utf8> name)
    >
  >
  GetVariableByName;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Utf8> name,
        Pointer<D3D11_SHADER_INPUT_BIND_DESC> pDesc,
      )
    >
  >
  GetResourceBindingDescByName;
  external Pointer<
    NativeFunction<
      VTablePointer Function(VTablePointer this$, Int32 parameterIndex)
    >
  >
  GetFunctionParameter;
}

@internal
final class ID3D11FunctionReflectionCompanion
    extends ComCompanion<ID3D11FunctionReflection> {
  const ID3D11FunctionReflectionCompanion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11FunctionReflection Function(VTablePointer) get fromPointer =>
      ID3D11FunctionReflection.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11FunctionReflection;
}
