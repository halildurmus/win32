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
import '../enums.g.dart';
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
import 'id3d11shaderreflectionconstantbuffer.g.dart';
import 'id3d11shaderreflectionvariable.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ID3D11ShaderReflection = GUID.fromComponents(
  0x8d536ca1,
  0xcca,
  0x4956,
  Uint8List.fromList(const [0xa8, 0x37, 0x78, 0x69, 0x63, 0x75, 0x55, 0x84]),
);

/// A shader-reflection interface accesses shader information.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nn-d3d11shader-id3d11shaderreflection>.
///
/// {@category com}
class ID3D11ShaderReflection extends IUnknown implements ComInterface {
  /// Creates a new instance of [ID3D11ShaderReflection] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ID3D11ShaderReflection]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ID3D11ShaderReflection(super.ptr)
    : _vtable = ptr.value.cast<ID3D11ShaderReflectionVtbl>().ref;

  /// Creates a new instance of [ID3D11ShaderReflection] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3D11ShaderReflection] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3D11ShaderReflection.from(IUnknown interface) =>
      interface.queryInterface();

  final ID3D11ShaderReflectionVtbl _vtable;
  late final _GetDescFn =
      _vtable.GetDesc.asFunction<
        int Function(VTablePointer, Pointer<D3D11_SHADER_DESC>)
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
  late final _GetInputParameterDescFn =
      _vtable.GetInputParameterDesc.asFunction<
        int Function(
          VTablePointer,
          int,
          Pointer<D3D11_SIGNATURE_PARAMETER_DESC>,
        )
      >();
  late final _GetOutputParameterDescFn =
      _vtable.GetOutputParameterDesc.asFunction<
        int Function(
          VTablePointer,
          int,
          Pointer<D3D11_SIGNATURE_PARAMETER_DESC>,
        )
      >();
  late final _GetPatchConstantParameterDescFn =
      _vtable.GetPatchConstantParameterDesc.asFunction<
        int Function(
          VTablePointer,
          int,
          Pointer<D3D11_SIGNATURE_PARAMETER_DESC>,
        )
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
  late final _GetMovInstructionCountFn =
      _vtable.GetMovInstructionCount.asFunction<int Function(VTablePointer)>();
  late final _GetMovcInstructionCountFn =
      _vtable.GetMovcInstructionCount.asFunction<int Function(VTablePointer)>();
  late final _GetConversionInstructionCountFn = _vtable
      .GetConversionInstructionCount.asFunction<int Function(VTablePointer)>();
  late final _GetBitwiseInstructionCountFn = _vtable
      .GetBitwiseInstructionCount.asFunction<int Function(VTablePointer)>();
  late final _GetGSInputPrimitiveFn =
      _vtable.GetGSInputPrimitive.asFunction<int Function(VTablePointer)>();
  late final _IsSampleFrequencyShaderFn =
      _vtable.IsSampleFrequencyShader.asFunction<int Function(VTablePointer)>();
  late final _GetNumInterfaceSlotsFn =
      _vtable.GetNumInterfaceSlots.asFunction<int Function(VTablePointer)>();
  late final _GetMinFeatureLevelFn =
      _vtable.GetMinFeatureLevel.asFunction<
        int Function(VTablePointer, Pointer<Int32>)
      >();
  late final _GetThreadGroupSizeFn =
      _vtable.GetThreadGroupSize.asFunction<
        int Function(
          VTablePointer,
          Pointer<Uint32>,
          Pointer<Uint32>,
          Pointer<Uint32>,
        )
      >();
  late final _GetRequiresFlagsFn =
      _vtable.GetRequiresFlags.asFunction<int Function(VTablePointer)>();

  /// Get a shader description.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11shaderreflection-getdesc>.
  Pointer<D3D11_SHADER_DESC> getDesc() {
    final pDesc = adaptiveCalloc<D3D11_SHADER_DESC>();
    final hr$ = HRESULT(_GetDescFn(ptr, pDesc));
    if (hr$.isError) {
      free(pDesc);
      throw WindowsException(hr$);
    }
    return pDesc;
  }

  /// Gets a constant buffer by index.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11shaderreflection-getconstantbufferbyindex>.
  @pragma('vm:prefer-inline')
  ID3D11ShaderReflectionConstantBuffer? getConstantBufferByIndex(int index) {
    final result = _GetConstantBufferByIndexFn(ptr, index);
    if (result.isNull) return null;
    return ID3D11ShaderReflectionConstantBuffer(result);
  }

  /// Get a constant buffer by name.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11shaderreflection-getconstantbufferbyname>.
  @pragma('vm:prefer-inline')
  ID3D11ShaderReflectionConstantBuffer? getConstantBufferByName(PCSTR name) {
    final result = _GetConstantBufferByNameFn(ptr, name);
    if (result.isNull) return null;
    return ID3D11ShaderReflectionConstantBuffer(result);
  }

  /// Get a description of how a resource is bound to a shader.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11shaderreflection-getresourcebindingdesc>.
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

  /// Get an input-parameter description for a shader.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11shaderreflection-getinputparameterdesc>.
  Pointer<D3D11_SIGNATURE_PARAMETER_DESC> getInputParameterDesc(
    int parameterIndex,
  ) {
    final pDesc = adaptiveCalloc<D3D11_SIGNATURE_PARAMETER_DESC>();
    final hr$ = HRESULT(_GetInputParameterDescFn(ptr, parameterIndex, pDesc));
    if (hr$.isError) {
      free(pDesc);
      throw WindowsException(hr$);
    }
    return pDesc;
  }

  /// Get an output-parameter description for a shader.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11shaderreflection-getoutputparameterdesc>.
  Pointer<D3D11_SIGNATURE_PARAMETER_DESC> getOutputParameterDesc(
    int parameterIndex,
  ) {
    final pDesc = adaptiveCalloc<D3D11_SIGNATURE_PARAMETER_DESC>();
    final hr$ = HRESULT(_GetOutputParameterDescFn(ptr, parameterIndex, pDesc));
    if (hr$.isError) {
      free(pDesc);
      throw WindowsException(hr$);
    }
    return pDesc;
  }

  /// Get a patch-constant parameter description for a shader.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11shaderreflection-getpatchconstantparameterdesc>.
  Pointer<D3D11_SIGNATURE_PARAMETER_DESC> getPatchConstantParameterDesc(
    int parameterIndex,
  ) {
    final pDesc = adaptiveCalloc<D3D11_SIGNATURE_PARAMETER_DESC>();
    final hr$ = HRESULT(
      _GetPatchConstantParameterDescFn(ptr, parameterIndex, pDesc),
    );
    if (hr$.isError) {
      free(pDesc);
      throw WindowsException(hr$);
    }
    return pDesc;
  }

  /// Gets a variable by name.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11shaderreflection-getvariablebyname>.
  @pragma('vm:prefer-inline')
  ID3D11ShaderReflectionVariable? getVariableByName(PCSTR name) {
    final result = _GetVariableByNameFn(ptr, name);
    if (result.isNull) return null;
    return ID3D11ShaderReflectionVariable(result);
  }

  /// Get a description of how a resource is bound to a shader.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11shaderreflection-getresourcebindingdescbyname>.
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

  /// Gets the number of Mov instructions.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11shaderreflection-getmovinstructioncount>.
  @pragma('vm:prefer-inline')
  int getMovInstructionCount() => _GetMovInstructionCountFn(ptr);

  /// Gets the number of Movc instructions.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11shaderreflection-getmovcinstructioncount>.
  @pragma('vm:prefer-inline')
  int getMovcInstructionCount() => _GetMovcInstructionCountFn(ptr);

  /// Gets the number of conversion instructions.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11shaderreflection-getconversioninstructioncount>.
  @pragma('vm:prefer-inline')
  int getConversionInstructionCount() => _GetConversionInstructionCountFn(ptr);

  /// Gets the number of bitwise instructions.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11shaderreflection-getbitwiseinstructioncount>.
  @pragma('vm:prefer-inline')
  int getBitwiseInstructionCount() => _GetBitwiseInstructionCountFn(ptr);

  /// Gets the geometry-shader input-primitive description.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11shaderreflection-getgsinputprimitive>.
  @pragma('vm:prefer-inline')
  D3D_PRIMITIVE getGSInputPrimitive() =>
      D3D_PRIMITIVE(_GetGSInputPrimitiveFn(ptr));

  /// Indicates whether a shader is a sample frequency shader.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11shaderreflection-issamplefrequencyshader>.
  @pragma('vm:prefer-inline')
  bool isSampleFrequencyShader() => _IsSampleFrequencyShaderFn(ptr) != FALSE;

  /// Gets the number of interface slots in a shader.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11shaderreflection-getnuminterfaceslots>.
  @pragma('vm:prefer-inline')
  int getNumInterfaceSlots() => _GetNumInterfaceSlotsFn(ptr);

  /// Gets the minimum feature level.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11shaderreflection-getminfeaturelevel>.
  D3D_FEATURE_LEVEL getMinFeatureLevel() {
    final pLevel = adaptiveCalloc<Int32>();
    final hr$ = HRESULT(_GetMinFeatureLevelFn(ptr, pLevel));
    if (hr$.isError) {
      free(pLevel);
      throw WindowsException(hr$);
    }
    final result$ = pLevel.value;
    free(pLevel);
    return D3D_FEATURE_LEVEL(result$);
  }

  /// Retrieves the sizes, in units of threads, of the X, Y, and Z dimensions of
  /// the shader's thread-group grid.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11shaderreflection-getthreadgroupsize>.
  @pragma('vm:prefer-inline')
  int getThreadGroupSize(
    Pointer<Uint32>? pSizeX,
    Pointer<Uint32>? pSizeY,
    Pointer<Uint32>? pSizeZ,
  ) => _GetThreadGroupSizeFn(
    ptr,
    pSizeX ?? nullptr,
    pSizeY ?? nullptr,
    pSizeZ ?? nullptr,
  );

  /// Gets a group of flags that indicates the requirements of a shader.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11shaderreflection-getrequiresflags>.
  @pragma('vm:prefer-inline')
  int getRequiresFlags() => _GetRequiresFlagsFn(ptr);

  @override
  String toString() => 'ID3D11ShaderReflection(ptr: $ptr)';
}

/// @nodoc
base class ID3D11ShaderReflectionVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<D3D11_SHADER_DESC> pDesc)
    >
  >
  GetDesc;
  external Pointer<
    NativeFunction<VTablePointer Function(VTablePointer this$, Uint32 index)>
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
      Int32 Function(
        VTablePointer this$,
        Uint32 parameterIndex,
        Pointer<D3D11_SIGNATURE_PARAMETER_DESC> pDesc,
      )
    >
  >
  GetInputParameterDesc;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 parameterIndex,
        Pointer<D3D11_SIGNATURE_PARAMETER_DESC> pDesc,
      )
    >
  >
  GetOutputParameterDesc;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 parameterIndex,
        Pointer<D3D11_SIGNATURE_PARAMETER_DESC> pDesc,
      )
    >
  >
  GetPatchConstantParameterDesc;
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
  external Pointer<NativeFunction<Uint32 Function(VTablePointer this$)>>
  GetMovInstructionCount;
  external Pointer<NativeFunction<Uint32 Function(VTablePointer this$)>>
  GetMovcInstructionCount;
  external Pointer<NativeFunction<Uint32 Function(VTablePointer this$)>>
  GetConversionInstructionCount;
  external Pointer<NativeFunction<Uint32 Function(VTablePointer this$)>>
  GetBitwiseInstructionCount;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>>
  GetGSInputPrimitive;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>>
  IsSampleFrequencyShader;
  external Pointer<NativeFunction<Uint32 Function(VTablePointer this$)>>
  GetNumInterfaceSlots;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> pLevel)>
  >
  GetMinFeatureLevel;
  external Pointer<
    NativeFunction<
      Uint32 Function(
        VTablePointer this$,
        Pointer<Uint32> pSizeX,
        Pointer<Uint32> pSizeY,
        Pointer<Uint32> pSizeZ,
      )
    >
  >
  GetThreadGroupSize;
  external Pointer<NativeFunction<Uint64 Function(VTablePointer this$)>>
  GetRequiresFlags;
}

@internal
final class ID3D11ShaderReflectionCompanion
    extends ComCompanion<ID3D11ShaderReflection> {
  const ID3D11ShaderReflectionCompanion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11ShaderReflection Function(VTablePointer) get fromPointer =>
      ID3D11ShaderReflection.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11ShaderReflection;
}
