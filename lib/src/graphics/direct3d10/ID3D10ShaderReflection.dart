// ID3D10ShaderReflection.dart

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
import '../../graphics/direct3d10/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct3d10/ID3D10ShaderReflectionConstantBuffer.dart';

/// @nodoc
const IID_ID3D10ShaderReflection = '{D40E20B6-F8F7-42AD-AB20-4BAF8F15DFAA}';

/// {@category Interface}
/// {@category com}
class ID3D10ShaderReflection extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  ID3D10ShaderReflection(Pointer<COMObject> ptr) : super(ptr);

  int GetDesc(
    Pointer<D3D10_SHADER_DESC> pDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D10_SHADER_DESC> pDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D10_SHADER_DESC> pDesc,
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
    Pointer<D3D10_SHADER_INPUT_BIND_DESC> pDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ResourceIndex,
            Pointer<D3D10_SHADER_INPUT_BIND_DESC> pDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ResourceIndex,
            Pointer<D3D10_SHADER_INPUT_BIND_DESC> pDesc,
          )>()(
        ptr.ref.lpVtbl,
        ResourceIndex,
        pDesc,
      );

  int GetInputParameterDesc(
    int ParameterIndex,
    Pointer<D3D10_SIGNATURE_PARAMETER_DESC> pDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ParameterIndex,
            Pointer<D3D10_SIGNATURE_PARAMETER_DESC> pDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ParameterIndex,
            Pointer<D3D10_SIGNATURE_PARAMETER_DESC> pDesc,
          )>()(
        ptr.ref.lpVtbl,
        ParameterIndex,
        pDesc,
      );

  int GetOutputParameterDesc(
    int ParameterIndex,
    Pointer<D3D10_SIGNATURE_PARAMETER_DESC> pDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ParameterIndex,
            Pointer<D3D10_SIGNATURE_PARAMETER_DESC> pDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ParameterIndex,
            Pointer<D3D10_SIGNATURE_PARAMETER_DESC> pDesc,
          )>()(
        ptr.ref.lpVtbl,
        ParameterIndex,
        pDesc,
      );
}
