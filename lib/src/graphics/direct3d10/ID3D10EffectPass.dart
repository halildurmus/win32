// ID3D10EffectPass.dart

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
import '../../graphics/direct3d10/structs.g.dart';
import '../../graphics/direct3d10/ID3D10EffectVariable.dart';

/// @nodoc
const IID_ID3D10EffectPass = '{5CFBEB89-1A06-46E0-B282-E3F9BFA36A54}';

/// {@category Interface}
/// {@category com}
class ID3D10EffectPass {
  // vtable begins at 0, is 9 entries long.
  Pointer<COMObject> ptr;

  ID3D10EffectPass(this.ptr);

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

  int GetDesc(
    Pointer<D3D10_PASS_DESC> pDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(1)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D10_PASS_DESC> pDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D10_PASS_DESC> pDesc,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
      );

  int GetVertexShaderDesc(
    Pointer<D3D10_PASS_SHADER_DESC> pDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(2)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D10_PASS_SHADER_DESC> pDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D10_PASS_SHADER_DESC> pDesc,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
      );

  int GetGeometryShaderDesc(
    Pointer<D3D10_PASS_SHADER_DESC> pDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D10_PASS_SHADER_DESC> pDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D10_PASS_SHADER_DESC> pDesc,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
      );

  int GetPixelShaderDesc(
    Pointer<D3D10_PASS_SHADER_DESC> pDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D10_PASS_SHADER_DESC> pDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D10_PASS_SHADER_DESC> pDesc,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
      );

  Pointer<COMObject> GetAnnotationByIndex(
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

  Pointer<COMObject> GetAnnotationByName(
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

  int Apply(
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
      );

  int ComputeStateBlockMask(
    Pointer<D3D10_STATE_BLOCK_MASK> pStateBlockMask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D10_STATE_BLOCK_MASK> pStateBlockMask,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D10_STATE_BLOCK_MASK> pStateBlockMask,
          )>()(
        ptr.ref.lpVtbl,
        pStateBlockMask,
      );
}
