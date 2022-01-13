// ID3D10EffectScalarVariable.dart

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
const IID_ID3D10EffectScalarVariable = '{00E48F7B-D2C8-49E8-A86C-022DEE53431F}';

/// {@category Interface}
/// {@category com}
class ID3D10EffectScalarVariable extends ID3D10EffectVariable {
  // vtable begins at 25, is 12 entries long.
  ID3D10EffectScalarVariable(Pointer<COMObject> ptr) : super(ptr);

  int SetFloat(
    double Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double Value,
          )>()(
        ptr.ref.lpVtbl,
        Value,
      );

  int GetFloat(
    Pointer<Float> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> pValue,
          )>()(
        ptr.ref.lpVtbl,
        pValue,
      );

  int SetFloatArray(
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

  int GetFloatArray(
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

  int SetInt(
    int Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Value,
          )>()(
        ptr.ref.lpVtbl,
        Value,
      );

  int GetInt(
    Pointer<Int32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pValue,
          )>()(
        ptr.ref.lpVtbl,
        pValue,
      );

  int SetIntArray(
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

  int GetIntArray(
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

  int SetBool(
    int Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Value,
          )>()(
        ptr.ref.lpVtbl,
        Value,
      );

  int GetBool(
    Pointer<Int32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pValue,
          )>()(
        ptr.ref.lpVtbl,
        pValue,
      );

  int SetBoolArray(
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

  int GetBoolArray(
    Pointer<Int32> pData,
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
}
