// ID3D10EffectVariable.dart

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

import '../../foundation/structs.g.dart';
import '../../graphics/direct3d10/ID3D10EffectType.dart';
import '../../graphics/direct3d10/structs.g.dart';
import '../../graphics/direct3d10/ID3D10EffectVariable.dart';
import '../../graphics/direct3d10/ID3D10EffectConstantBuffer.dart';
import '../../graphics/direct3d10/ID3D10EffectScalarVariable.dart';
import '../../graphics/direct3d10/ID3D10EffectVectorVariable.dart';
import '../../graphics/direct3d10/ID3D10EffectMatrixVariable.dart';
import '../../graphics/direct3d10/ID3D10EffectStringVariable.dart';
import '../../graphics/direct3d10/ID3D10EffectShaderResourceVariable.dart';
import '../../graphics/direct3d10/ID3D10EffectRenderTargetViewVariable.dart';
import '../../graphics/direct3d10/ID3D10EffectDepthStencilViewVariable.dart';
import '../../graphics/direct3d10/ID3D10EffectShaderVariable.dart';
import '../../graphics/direct3d10/ID3D10EffectBlendVariable.dart';
import '../../graphics/direct3d10/ID3D10EffectDepthStencilVariable.dart';
import '../../graphics/direct3d10/ID3D10EffectRasterizerVariable.dart';
import '../../graphics/direct3d10/ID3D10EffectSamplerVariable.dart';

/// @nodoc
const IID_ID3D10EffectVariable = '{AE897105-00E6-45BF-BB8E-281DD6DB8E1B}';

/// {@category Interface}
/// {@category com}
class ID3D10EffectVariable {
  // vtable begins at 0, is 25 entries long.
  Pointer<COMObject> ptr;

  ID3D10EffectVariable(this.ptr);

  int IsValid() => ptr.ref.lpVtbl.value
          .elementAt(0)
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

  Pointer<COMObject> GetType() => ptr.ref.lpVtbl.value
          .elementAt(1)
          .cast<
              Pointer<
                  NativeFunction<
                      Pointer<COMObject> Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              Pointer<COMObject> Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetDesc(
    Pointer<D3D10_EFFECT_VARIABLE_DESC> pDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(2)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D10_EFFECT_VARIABLE_DESC> pDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D10_EFFECT_VARIABLE_DESC> pDesc,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
      );

  Pointer<COMObject> GetAnnotationByIndex(
    int Index,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
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

  Pointer<COMObject> GetAnnotationByName(
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

  Pointer<COMObject> GetMemberByIndex(
    int Index,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
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

  Pointer<COMObject> GetMemberByName(
    Pointer<Utf8> Name,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
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

  Pointer<COMObject> GetMemberBySemantic(
    Pointer<Utf8> Semantic,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Pointer<COMObject> Function(
            Pointer,
            Pointer<Utf8> Semantic,
          )>>>()
          .value
          .asFunction<
              Pointer<COMObject> Function(
            Pointer,
            Pointer<Utf8> Semantic,
          )>()(
        ptr.ref.lpVtbl,
        Semantic,
      );

  Pointer<COMObject> GetElement(
    int Index,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
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

  Pointer<COMObject> GetParentConstantBuffer() => ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Pointer<COMObject> Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              Pointer<COMObject> Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  Pointer<COMObject> AsScalar() => ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Pointer<COMObject> Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              Pointer<COMObject> Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  Pointer<COMObject> AsVector() => ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Pointer<COMObject> Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              Pointer<COMObject> Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  Pointer<COMObject> AsMatrix() => ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Pointer<COMObject> Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              Pointer<COMObject> Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  Pointer<COMObject> AsString() => ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Pointer<COMObject> Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              Pointer<COMObject> Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  Pointer<COMObject> AsShaderResource() => ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Pointer<COMObject> Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              Pointer<COMObject> Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  Pointer<COMObject> AsRenderTargetView() => ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Pointer<COMObject> Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              Pointer<COMObject> Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  Pointer<COMObject> AsDepthStencilView() => ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Pointer<COMObject> Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              Pointer<COMObject> Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  Pointer<COMObject> AsConstantBuffer() => ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Pointer<COMObject> Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              Pointer<COMObject> Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  Pointer<COMObject> AsShader() => ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Pointer<COMObject> Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              Pointer<COMObject> Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  Pointer<COMObject> AsBlend() => ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Pointer<COMObject> Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              Pointer<COMObject> Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  Pointer<COMObject> AsDepthStencil() => ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Pointer<COMObject> Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              Pointer<COMObject> Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  Pointer<COMObject> AsRasterizer() => ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Pointer<COMObject> Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              Pointer<COMObject> Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  Pointer<COMObject> AsSampler() => ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Pointer<COMObject> Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              Pointer<COMObject> Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int SetRawValue(
    Pointer pData,
    int Offset,
    int ByteCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer pData,
            Uint32 Offset,
            Uint32 ByteCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pData,
            int Offset,
            int ByteCount,
          )>()(
        ptr.ref.lpVtbl,
        pData,
        Offset,
        ByteCount,
      );

  int GetRawValue(
    Pointer pData,
    int Offset,
    int ByteCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer pData,
            Uint32 Offset,
            Uint32 ByteCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pData,
            int Offset,
            int ByteCount,
          )>()(
        ptr.ref.lpVtbl,
        pData,
        Offset,
        ByteCount,
      );
}
