// IAMTimecodeReader.dart

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
import '../../foundation/structs.g.dart';
import '../../media/structs.g.dart';

/// @nodoc
const IID_IAMTimecodeReader = '{9B496CE1-811B-11CF-8C77-00AA006B6814}';

/// {@category Interface}
/// {@category com}
class IAMTimecodeReader extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IAMTimecodeReader(Pointer<COMObject> ptr) : super(ptr);

  int GetTCRMode(
    int Param,
    Pointer<Int32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Param,
            Pointer<Int32> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Param,
            Pointer<Int32> pValue,
          )>()(
        ptr.ref.lpVtbl,
        Param,
        pValue,
      );

  int SetTCRMode(
    int Param,
    int Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Param,
            Int32 Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Param,
            int Value,
          )>()(
        ptr.ref.lpVtbl,
        Param,
        Value,
      );

  set VITCLine(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(5)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 Line,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int Line,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get VITCLine {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pLine,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pLine,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int GetTimecode(
    Pointer<TIMECODE_SAMPLE> pTimecodeSample,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<TIMECODE_SAMPLE> pTimecodeSample,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<TIMECODE_SAMPLE> pTimecodeSample,
          )>()(
        ptr.ref.lpVtbl,
        pTimecodeSample,
      );
}
