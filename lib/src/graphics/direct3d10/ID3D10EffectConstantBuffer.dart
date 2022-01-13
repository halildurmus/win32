// ID3D10EffectConstantBuffer.dart

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
import '../../graphics/direct3d10/ID3D10Buffer.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct3d10/ID3D10ShaderResourceView.dart';

/// @nodoc
const IID_ID3D10EffectConstantBuffer = '{56648F4D-CC8B-4444-A5AD-B5A3D76E91B3}';

/// {@category Interface}
/// {@category com}
class ID3D10EffectConstantBuffer extends ID3D10EffectVariable {
  // vtable begins at 25, is 4 entries long.
  ID3D10EffectConstantBuffer(Pointer<COMObject> ptr) : super(ptr);

  int SetConstantBuffer(
    Pointer<COMObject> pConstantBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pConstantBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pConstantBuffer,
          )>()(
        ptr.ref.lpVtbl,
        pConstantBuffer,
      );

  int GetConstantBuffer(
    Pointer<Pointer<COMObject>> ppConstantBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppConstantBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppConstantBuffer,
          )>()(
        ptr.ref.lpVtbl,
        ppConstantBuffer,
      );

  int SetTextureBuffer(
    Pointer<COMObject> pTextureBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pTextureBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pTextureBuffer,
          )>()(
        ptr.ref.lpVtbl,
        pTextureBuffer,
      );

  int GetTextureBuffer(
    Pointer<Pointer<COMObject>> ppTextureBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppTextureBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppTextureBuffer,
          )>()(
        ptr.ref.lpVtbl,
        ppTextureBuffer,
      );
}
