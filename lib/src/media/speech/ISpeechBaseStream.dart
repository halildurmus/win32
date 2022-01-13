// ISpeechBaseStream.dart

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

import '../../system/com/IDispatch.dart';
import '../../media/speech/ISpeechAudioFormat.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';
import '../../media/speech/structs.g.dart';

/// @nodoc
const IID_ISpeechBaseStream = '{6450336F-7D49-4CED-8097-49D6DEE37294}';

/// {@category Interface}
/// {@category com}
class ISpeechBaseStream extends IDispatch {
  // vtable begins at 7, is 5 entries long.
  ISpeechBaseStream(Pointer<COMObject> ptr) : super(ptr);

  Pointer<COMObject> get Format {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> AudioFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> AudioFormat,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int putref_Format(
    Pointer<COMObject> AudioFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> AudioFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> AudioFormat,
          )>()(
        ptr.ref.lpVtbl,
        AudioFormat,
      );

  int Read(
    Pointer<VARIANT> Buffer,
    int NumberOfBytes,
    Pointer<Int32> BytesRead,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> Buffer,
            Int32 NumberOfBytes,
            Pointer<Int32> BytesRead,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> Buffer,
            int NumberOfBytes,
            Pointer<Int32> BytesRead,
          )>()(
        ptr.ref.lpVtbl,
        Buffer,
        NumberOfBytes,
        BytesRead,
      );

  int Write(
    VARIANT Buffer,
    Pointer<Int32> BytesWritten,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT Buffer,
            Pointer<Int32> BytesWritten,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT Buffer,
            Pointer<Int32> BytesWritten,
          )>()(
        ptr.ref.lpVtbl,
        Buffer,
        BytesWritten,
      );

  int Seek(
    VARIANT Position,
    int Origin,
    Pointer<VARIANT> NewPosition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT Position,
            Uint32 Origin,
            Pointer<VARIANT> NewPosition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT Position,
            int Origin,
            Pointer<VARIANT> NewPosition,
          )>()(
        ptr.ref.lpVtbl,
        Position,
        Origin,
        NewPosition,
      );
}
