// IRdcFileReader.dart

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

/// @nodoc
const IID_IRdcFileReader = '{96236A74-9DBC-11DA-9E3F-0011114AE311}';

/// {@category Interface}
/// {@category com}
class IRdcFileReader extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IRdcFileReader(Pointer<COMObject> ptr) : super(ptr);

  int GetFileSize(
    Pointer<Uint64> fileSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> fileSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> fileSize,
          )>()(
        ptr.ref.lpVtbl,
        fileSize,
      );

  int Read(
    int offsetFileStart,
    int bytesToRead,
    Pointer<Uint32> bytesActuallyRead,
    Pointer<Uint8> buffer,
    Pointer<Int32> eof,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 offsetFileStart,
            Uint32 bytesToRead,
            Pointer<Uint32> bytesActuallyRead,
            Pointer<Uint8> buffer,
            Pointer<Int32> eof,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int offsetFileStart,
            int bytesToRead,
            Pointer<Uint32> bytesActuallyRead,
            Pointer<Uint8> buffer,
            Pointer<Int32> eof,
          )>()(
        ptr.ref.lpVtbl,
        offsetFileStart,
        bytesToRead,
        bytesActuallyRead,
        buffer,
        eof,
      );

  int GetFilePosition(
    Pointer<Uint64> offsetFromStart,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> offsetFromStart,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> offsetFromStart,
          )>()(
        ptr.ref.lpVtbl,
        offsetFromStart,
      );
}

/// @nodoc
const CLSID_RdcFileReader = '{96236A89-9DBC-11DA-9E3F-0011114AE311}';

/// {@category com}
class RdcFileReader extends IRdcFileReader {
  RdcFileReader(Pointer<COMObject> ptr) : super(ptr);

  factory RdcFileReader.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_RdcFileReader);
    final iid = calloc<GUID>()..ref.setGUID(IID_IRdcFileReader);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return RdcFileReader(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
