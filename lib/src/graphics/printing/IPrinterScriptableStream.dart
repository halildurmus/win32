// IPrinterScriptableStream.dart

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

import '../../graphics/printing/IPrinterScriptableSequentialStream.dart';
import '../../foundation/structs.g.dart';
import '../../system/com/structs.g.dart';

/// @nodoc
const IID_IPrinterScriptableStream = '{7EDF9A92-4750-41A5-A17F-879A6F4F7DCB}';

/// {@category Interface}
/// {@category com}
class IPrinterScriptableStream extends IPrinterScriptableSequentialStream {
  // vtable begins at 9, is 3 entries long.
  IPrinterScriptableStream(Pointer<COMObject> ptr) : super(ptr);

  int Commit() => ptr.ref.lpVtbl.value
          .elementAt(9)
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

  int Seek(
    int lOffset,
    int streamSeek,
    Pointer<Int32> plPosition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lOffset,
            Uint32 streamSeek,
            Pointer<Int32> plPosition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lOffset,
            int streamSeek,
            Pointer<Int32> plPosition,
          )>()(
        ptr.ref.lpVtbl,
        lOffset,
        streamSeek,
        plPosition,
      );

  int SetSize(
    int lSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lSize,
          )>()(
        ptr.ref.lpVtbl,
        lSize,
      );
}
