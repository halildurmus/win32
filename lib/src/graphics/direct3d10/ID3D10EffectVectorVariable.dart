// ID3D10EffectVectorVariable.dart

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
const IID_ID3D10EffectVectorVariable = '{62B98C44-1F82-4C67-BCD0-72CF8F217E81}';

/// {@category Interface}
/// {@category com}
class ID3D10EffectVectorVariable extends ID3D10EffectVariable {
  // vtable begins at 25, is 12 entries long.
  ID3D10EffectVectorVariable(Pointer<COMObject> ptr) : super(ptr);

  int SetBoolVector(
    Pointer<Int32> pData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pData,
          )>()(
        ptr.ref.lpVtbl,
        pData,
      );

  int SetIntVector(
    Pointer<Int32> pData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pData,
          )>()(
        ptr.ref.lpVtbl,
        pData,
      );

  int SetFloatVector(
    Pointer<Float> pData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
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

  int GetBoolVector(
    Pointer<Int32> pData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pData,
          )>()(
        ptr.ref.lpVtbl,
        pData,
      );

  int GetIntVector(
    Pointer<Int32> pData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pData,
          )>()(
        ptr.ref.lpVtbl,
        pData,
      );

  int GetFloatVector(
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

  int SetBoolVectorArray(
    Pointer<Int32> pData,
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
            Pointer<Int32> pData,
            Uint32 Offset,
            Uint32 Count,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pData,
            int Offset,
            int Count,
          )>()(
        ptr.ref.lpVtbl,
        pData,
        Offset,
        Count,
      );

  int SetIntVectorArray(
    Pointer<Int32> pData,
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
            Pointer<Int32> pData,
            Uint32 Offset,
            Uint32 Count,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pData,
            int Offset,
            int Count,
          )>()(
        ptr.ref.lpVtbl,
        pData,
        Offset,
        Count,
      );

  int SetFloatVectorArray(
    Pointer<Float> pData,
    int Offset,
    int Count,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
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

  int GetBoolVectorArray(
    Pointer<Int32> pData,
    int Offset,
    int Count,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pData,
            Uint32 Offset,
            Uint32 Count,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pData,
            int Offset,
            int Count,
          )>()(
        ptr.ref.lpVtbl,
        pData,
        Offset,
        Count,
      );

  int GetIntVectorArray(
    Pointer<Int32> pData,
    int Offset,
    int Count,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pData,
            Uint32 Offset,
            Uint32 Count,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pData,
            int Offset,
            int Count,
          )>()(
        ptr.ref.lpVtbl,
        pData,
        Offset,
        Count,
      );

  int GetFloatVectorArray(
    Pointer<Float> pData,
    int Offset,
    int Count,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
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
