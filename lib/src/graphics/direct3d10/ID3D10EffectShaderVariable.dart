// ID3D10EffectShaderVariable.dart

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

import '../../graphics/direct3d10/ID3D10EffectVariable.dart';
import '../../graphics/direct3d10/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct3d10/ID3D10VertexShader.dart';
import '../../graphics/direct3d10/ID3D10GeometryShader.dart';
import '../../graphics/direct3d10/ID3D10PixelShader.dart';

/// @nodoc
const IID_ID3D10EffectShaderVariable = '{80849279-C799-4797-8C33-0407A07D9E06}';

/// {@category Interface}
/// {@category com}
class ID3D10EffectShaderVariable extends ID3D10EffectVariable {
  // vtable begins at 25, is 6 entries long.
  ID3D10EffectShaderVariable(Pointer<COMObject> ptr) : super(ptr);

  int GetShaderDesc(
    int ShaderIndex,
    Pointer<D3D10_EFFECT_SHADER_DESC> pDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ShaderIndex,
            Pointer<D3D10_EFFECT_SHADER_DESC> pDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ShaderIndex,
            Pointer<D3D10_EFFECT_SHADER_DESC> pDesc,
          )>()(
        ptr.ref.lpVtbl,
        ShaderIndex,
        pDesc,
      );

  int GetVertexShader(
    int ShaderIndex,
    Pointer<Pointer<COMObject>> ppVS,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ShaderIndex,
            Pointer<Pointer<COMObject>> ppVS,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ShaderIndex,
            Pointer<Pointer<COMObject>> ppVS,
          )>()(
        ptr.ref.lpVtbl,
        ShaderIndex,
        ppVS,
      );

  int GetGeometryShader(
    int ShaderIndex,
    Pointer<Pointer<COMObject>> ppGS,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ShaderIndex,
            Pointer<Pointer<COMObject>> ppGS,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ShaderIndex,
            Pointer<Pointer<COMObject>> ppGS,
          )>()(
        ptr.ref.lpVtbl,
        ShaderIndex,
        ppGS,
      );

  int GetPixelShader(
    int ShaderIndex,
    Pointer<Pointer<COMObject>> ppPS,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ShaderIndex,
            Pointer<Pointer<COMObject>> ppPS,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ShaderIndex,
            Pointer<Pointer<COMObject>> ppPS,
          )>()(
        ptr.ref.lpVtbl,
        ShaderIndex,
        ppPS,
      );

  int GetInputSignatureElementDesc(
    int ShaderIndex,
    int Element,
    Pointer<D3D10_SIGNATURE_PARAMETER_DESC> pDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ShaderIndex,
            Uint32 Element,
            Pointer<D3D10_SIGNATURE_PARAMETER_DESC> pDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ShaderIndex,
            int Element,
            Pointer<D3D10_SIGNATURE_PARAMETER_DESC> pDesc,
          )>()(
        ptr.ref.lpVtbl,
        ShaderIndex,
        Element,
        pDesc,
      );

  int GetOutputSignatureElementDesc(
    int ShaderIndex,
    int Element,
    Pointer<D3D10_SIGNATURE_PARAMETER_DESC> pDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ShaderIndex,
            Uint32 Element,
            Pointer<D3D10_SIGNATURE_PARAMETER_DESC> pDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ShaderIndex,
            int Element,
            Pointer<D3D10_SIGNATURE_PARAMETER_DESC> pDesc,
          )>()(
        ptr.ref.lpVtbl,
        ShaderIndex,
        Element,
        pDesc,
      );
}
