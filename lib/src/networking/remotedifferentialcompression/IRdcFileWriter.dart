// IRdcFileWriter.dart

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

import '../../networking/remotedifferentialcompression/IRdcFileReader.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IRdcFileWriter = '{96236A75-9DBC-11DA-9E3F-0011114AE311}';

/// {@category Interface}
/// {@category com}
class IRdcFileWriter extends IRdcFileReader {
  // vtable begins at 6, is 3 entries long.
  IRdcFileWriter(Pointer<COMObject> ptr) : super(ptr);

  int Write(
    int offsetFileStart,
    int bytesToWrite,
    Pointer<Uint8> buffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 offsetFileStart,
            Uint32 bytesToWrite,
            Pointer<Uint8> buffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int offsetFileStart,
            int bytesToWrite,
            Pointer<Uint8> buffer,
          )>()(
        ptr.ref.lpVtbl,
        offsetFileStart,
        bytesToWrite,
        buffer,
      );

  int Truncate() => ptr.ref.lpVtbl.value
          .elementAt(7)
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

  int DeleteOnClose() => ptr.ref.lpVtbl.value
          .elementAt(8)
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
}
