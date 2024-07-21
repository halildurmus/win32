// ispeechbasestream.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../callbacks.dart';
import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../propertykey.dart';
import '../structs.g.dart';
import '../utils.dart';
import '../variant.dart';
import '../win32/ole32.g.dart';
import 'idispatch.dart';
import 'iunknown.dart';

/// @nodoc
const IID_ISpeechBaseStream = '{6450336f-7d49-4ced-8097-49d6dee37294}';

/// The ISpeechBaseStream automation interface defines properties and
/// methods for manipulating data streams.
///
/// {@category com}
class ISpeechBaseStream extends IDispatch {
  // vtable begins at 7, is 5 entries long.
  ISpeechBaseStream(super.ptr);

  factory ISpeechBaseStream.from(IUnknown interface) =>
      ISpeechBaseStream(interface.toInterface(IID_ISpeechBaseStream));

  Pointer<COMObject> get format {
    final retValuePtr = calloc<COMObject>();

    final hr = (ptr.ref.vtable + 7)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(Pointer, Pointer<COMObject> AudioFormat)>>>()
        .value
        .asFunction<
            int Function(Pointer,
                Pointer<COMObject> AudioFormat)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  int putref_Format(Pointer<COMObject> AudioFormat) => (ptr.ref.vtable + 8)
      .cast<
          Pointer<
              NativeFunction<
                  Int32 Function(Pointer, Pointer<COMObject> AudioFormat)>>>()
      .value
      .asFunction<
          int Function(Pointer,
              Pointer<COMObject> AudioFormat)>()(ptr.ref.lpVtbl, AudioFormat);

  int
      read(Pointer<VARIANT> Buffer, int NumberOfBytes,
              Pointer<Int32> BytesRead) =>
          (ptr
                          .ref.vtable +
                      9)
                  .cast<
                      Pointer<
                          NativeFunction<
                              Int32 Function(
                                  Pointer,
                                  Pointer<VARIANT> Buffer,
                                  Int32 NumberOfBytes,
                                  Pointer<Int32> BytesRead)>>>()
                  .value
                  .asFunction<
                      int Function(Pointer, Pointer<VARIANT> Buffer,
                          int NumberOfBytes, Pointer<Int32> BytesRead)>()(
              ptr.ref.lpVtbl, Buffer, NumberOfBytes, BytesRead);

  int write(VARIANT Buffer, Pointer<Int32> BytesWritten) =>
      (ptr.ref.vtable + 10)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, VARIANT Buffer,
                              Pointer<Int32> BytesWritten)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer, VARIANT Buffer, Pointer<Int32> BytesWritten)>()(
          ptr.ref.lpVtbl, Buffer, BytesWritten);

  int seek(VARIANT Position, int Origin, Pointer<VARIANT> NewPosition) => (ptr
                  .ref.vtable +
              11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, VARIANT Position, Uint32 Origin,
                          Pointer<VARIANT> NewPosition)>>>()
          .value
          .asFunction<
              int Function(Pointer, VARIANT Position, int Origin,
                  Pointer<VARIANT> NewPosition)>()(
      ptr.ref.lpVtbl, Position, Origin, NewPosition);
}
