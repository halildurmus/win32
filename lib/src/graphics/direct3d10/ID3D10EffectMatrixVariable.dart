// ID3D10EffectMatrixVariable.dart

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
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID3D10EffectMatrixVariable = '{50666C24-B82F-4EED-A172-5B6E7E8522E0}';

/// {@category Interface}
/// {@category com}
class ID3D10EffectMatrixVariable extends ID3D10EffectVariable {
  // vtable begins at 25, is 8 entries long.
  ID3D10EffectMatrixVariable(Pointer<COMObject> ptr) : super(ptr);

  int SetMatrix(
    Pointer<Float> pData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> pData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> pData,
          )>()(
        ptr.ref.lpVtbl,
        pData,
      );

  int GetMatrix(
    Pointer<Float> pData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> pData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> pData,
          )>()(
        ptr.ref.lpVtbl,
        pData,
      );

  int SetMatrixArray(
    Pointer<Float> pData,
    int Offset,
    int Count,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> pData,
            Uint32 Offset,
            Uint32 Count,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> pData,
            int Offset,
            int Count,
          )>()(
        ptr.ref.lpVtbl,
        pData,
        Offset,
        Count,
      );

  int GetMatrixArray(
    Pointer<Float> pData,
    int Offset,
    int Count,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> pData,
            Uint32 Offset,
            Uint32 Count,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> pData,
            int Offset,
            int Count,
          )>()(
        ptr.ref.lpVtbl,
        pData,
        Offset,
        Count,
      );

  int SetMatrixTranspose(
    Pointer<Float> pData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> pData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> pData,
          )>()(
        ptr.ref.lpVtbl,
        pData,
      );

  int GetMatrixTranspose(
    Pointer<Float> pData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> pData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> pData,
          )>()(
        ptr.ref.lpVtbl,
        pData,
      );

  int SetMatrixTransposeArray(
    Pointer<Float> pData,
    int Offset,
    int Count,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> pData,
            Uint32 Offset,
            Uint32 Count,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> pData,
            int Offset,
            int Count,
          )>()(
        ptr.ref.lpVtbl,
        pData,
        Offset,
        Count,
      );

  int GetMatrixTransposeArray(
    Pointer<Float> pData,
    int Offset,
    int Count,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> pData,
            Uint32 Offset,
            Uint32 Count,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> pData,
            int Offset,
            int Count,
          )>()(
        ptr.ref.lpVtbl,
        pData,
        Offset,
        Count,
      );
}
