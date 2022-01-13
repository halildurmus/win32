// ICertEncodeDateArray.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IDispatch.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_ICertEncodeDateArray = '{2F9469A0-A470-11D0-8821-00A0C903B83C}';

/// {@category Interface}
/// {@category com}
class ICertEncodeDateArray extends IDispatch {
  // vtable begins at 7, is 6 entries long.
  ICertEncodeDateArray(Pointer<COMObject> ptr) : super(ptr);

  int Decode(
    Pointer<Utf16> strBinary,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strBinary,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strBinary,
          )>()(
        ptr.ref.lpVtbl,
        strBinary,
      );

  int GetCount(
    Pointer<Int32> pCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pCount,
          )>()(
        ptr.ref.lpVtbl,
        pCount,
      );

  int GetValue(
    int Index,
    Pointer<Double> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Index,
            Pointer<Double> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Double> pValue,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        pValue,
      );

  int Reset(
    int Count,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Count,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Count,
          )>()(
        ptr.ref.lpVtbl,
        Count,
      );

  int SetValue(
    int Index,
    double Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Index,
            Double Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            double Value,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        Value,
      );

  int Encode(
    Pointer<Pointer<Utf16>> pstrBinary,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pstrBinary,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pstrBinary,
          )>()(
        ptr.ref.lpVtbl,
        pstrBinary,
      );
}
