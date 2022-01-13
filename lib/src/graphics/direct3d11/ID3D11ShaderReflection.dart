// ID3D11ShaderReflection.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../guid.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../utils.dart';

import '../../system/com/IUnknown.dart';
import '../../graphics/direct3d11/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct3d11/ID3D11ShaderReflectionConstantBuffer.dart';
import '../../graphics/direct3d11/ID3D11ShaderReflectionVariable.dart';
import '../../graphics/direct3d/structs.g.dart';

/// @nodoc
const IID_ID3D11ShaderReflection = '{8D536CA1-0CCA-4956-A837-786963755584}';

/// {@category Interface}
/// {@category com}
class ID3D11ShaderReflection extends IUnknown {
  // vtable begins at 3, is 19 entries long.
  ID3D11ShaderReflection(Pointer<COMObject> ptr) : super(ptr);

  int GetDesc(
    Pointer<D3D11_SHADER_DESC> pDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D11_SHADER_DESC> pDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D11_SHADER_DESC> pDesc,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
      );

  Pointer<COMObject> GetConstantBufferByIndex(
    int Index,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Pointer<COMObject> Function(
            Pointer,
            Uint32 Index,
          )>>>()
          .value
          .asFunction<
              Pointer<COMObject> Function(
            Pointer,
            int Index,
          )>()(
        ptr.ref.lpVtbl,
        Index,
      );

  Pointer<COMObject> GetConstantBufferByName(
    Pointer<Utf8> Name,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Pointer<COMObject> Function(
            Pointer,
            Pointer<Utf8> Name,
          )>>>()
          .value
          .asFunction<
              Pointer<COMObject> Function(
            Pointer,
            Pointer<Utf8> Name,
          )>()(
        ptr.ref.lpVtbl,
        Name,
      );

  int GetResourceBindingDesc(
    int ResourceIndex,
    Pointer<D3D11_SHADER_INPUT_BIND_DESC> pDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ResourceIndex,
            Pointer<D3D11_SHADER_INPUT_BIND_DESC> pDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ResourceIndex,
            Pointer<D3D11_SHADER_INPUT_BIND_DESC> pDesc,
          )>()(
        ptr.ref.lpVtbl,
        ResourceIndex,
        pDesc,
      );

  int GetInputParameterDesc(
    int ParameterIndex,
    Pointer<D3D11_SIGNATURE_PARAMETER_DESC> pDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ParameterIndex,
            Pointer<D3D11_SIGNATURE_PARAMETER_DESC> pDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ParameterIndex,
            Pointer<D3D11_SIGNATURE_PARAMETER_DESC> pDesc,
          )>()(
        ptr.ref.lpVtbl,
        ParameterIndex,
        pDesc,
      );

  int GetOutputParameterDesc(
    int ParameterIndex,
    Pointer<D3D11_SIGNATURE_PARAMETER_DESC> pDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ParameterIndex,
            Pointer<D3D11_SIGNATURE_PARAMETER_DESC> pDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ParameterIndex,
            Pointer<D3D11_SIGNATURE_PARAMETER_DESC> pDesc,
          )>()(
        ptr.ref.lpVtbl,
        ParameterIndex,
        pDesc,
      );

  int GetPatchConstantParameterDesc(
    int ParameterIndex,
    Pointer<D3D11_SIGNATURE_PARAMETER_DESC> pDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ParameterIndex,
            Pointer<D3D11_SIGNATURE_PARAMETER_DESC> pDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ParameterIndex,
            Pointer<D3D11_SIGNATURE_PARAMETER_DESC> pDesc,
          )>()(
        ptr.ref.lpVtbl,
        ParameterIndex,
        pDesc,
      );

  Pointer<COMObject> GetVariableByName(
    Pointer<Utf8> Name,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Pointer<COMObject> Function(
            Pointer,
            Pointer<Utf8> Name,
          )>>>()
          .value
          .asFunction<
              Pointer<COMObject> Function(
            Pointer,
            Pointer<Utf8> Name,
          )>()(
        ptr.ref.lpVtbl,
        Name,
      );

  int GetResourceBindingDescByName(
    Pointer<Utf8> Name,
    Pointer<D3D11_SHADER_INPUT_BIND_DESC> pDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> Name,
            Pointer<D3D11_SHADER_INPUT_BIND_DESC> pDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> Name,
            Pointer<D3D11_SHADER_INPUT_BIND_DESC> pDesc,
          )>()(
        ptr.ref.lpVtbl,
        Name,
        pDesc,
      );

  int GetMovInstructionCount() => ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetMovcInstructionCount() => ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetConversionInstructionCount() => ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetBitwiseInstructionCount() => ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetGSInputPrimitive() => ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int IsSampleFrequencyShader() => ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetNumInterfaceSlots() => ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetMinFeatureLevel(
    Pointer<Int32> pLevel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pLevel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pLevel,
          )>()(
        ptr.ref.lpVtbl,
        pLevel,
      );

  int GetThreadGroupSize(
    Pointer<Uint32> pSizeX,
    Pointer<Uint32> pSizeY,
    Pointer<Uint32> pSizeZ,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
            Pointer<Uint32> pSizeX,
            Pointer<Uint32> pSizeY,
            Pointer<Uint32> pSizeZ,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pSizeX,
            Pointer<Uint32> pSizeY,
            Pointer<Uint32> pSizeZ,
          )>()(
        ptr.ref.lpVtbl,
        pSizeX,
        pSizeY,
        pSizeZ,
      );

  int GetRequiresFlags() => ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint64 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
