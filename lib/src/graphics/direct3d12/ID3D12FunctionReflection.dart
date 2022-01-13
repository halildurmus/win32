// ID3D12FunctionReflection.dart

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

import '../../graphics/direct3d12/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct3d12/ID3D12ShaderReflectionConstantBuffer.dart';
import '../../graphics/direct3d12/ID3D12ShaderReflectionVariable.dart';
import '../../graphics/direct3d12/ID3D12FunctionParameterReflection.dart';

/// @nodoc
const IID_ID3D12FunctionReflection = '{1108795C-2772-4BA9-B2A8-D464DC7E2799}';

/// {@category Interface}
/// {@category com}
class ID3D12FunctionReflection {
  // vtable begins at 0, is 7 entries long.
  Pointer<COMObject> ptr;

  ID3D12FunctionReflection(this.ptr);

  int GetDesc(
    Pointer<D3D12_FUNCTION_DESC> pDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(0)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D12_FUNCTION_DESC> pDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D12_FUNCTION_DESC> pDesc,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
      );

  Pointer<COMObject> GetConstantBufferByIndex(
    int BufferIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(1)
          .cast<
              Pointer<
                  NativeFunction<
                      Pointer<COMObject> Function(
            Pointer,
            Uint32 BufferIndex,
          )>>>()
          .value
          .asFunction<
              Pointer<COMObject> Function(
            Pointer,
            int BufferIndex,
          )>()(
        ptr.ref.lpVtbl,
        BufferIndex,
      );

  Pointer<COMObject> GetConstantBufferByName(
    Pointer<Utf8> Name,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(2)
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
    Pointer<D3D12_SHADER_INPUT_BIND_DESC> pDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ResourceIndex,
            Pointer<D3D12_SHADER_INPUT_BIND_DESC> pDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ResourceIndex,
            Pointer<D3D12_SHADER_INPUT_BIND_DESC> pDesc,
          )>()(
        ptr.ref.lpVtbl,
        ResourceIndex,
        pDesc,
      );

  Pointer<COMObject> GetVariableByName(
    Pointer<Utf8> Name,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
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
    Pointer<D3D12_SHADER_INPUT_BIND_DESC> pDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> Name,
            Pointer<D3D12_SHADER_INPUT_BIND_DESC> pDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> Name,
            Pointer<D3D12_SHADER_INPUT_BIND_DESC> pDesc,
          )>()(
        ptr.ref.lpVtbl,
        Name,
        pDesc,
      );

  Pointer<COMObject> GetFunctionParameter(
    int ParameterIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Pointer<COMObject> Function(
            Pointer,
            Int32 ParameterIndex,
          )>>>()
          .value
          .asFunction<
              Pointer<COMObject> Function(
            Pointer,
            int ParameterIndex,
          )>()(
        ptr.ref.lpVtbl,
        ParameterIndex,
      );
}
