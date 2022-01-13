// IPrinterScriptableSequentialStream.dart

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
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IPrinterScriptableSequentialStream =
    '{2072838A-316F-467A-A949-27F68C44A854}';

/// {@category Interface}
/// {@category com}
class IPrinterScriptableSequentialStream extends IDispatch {
  // vtable begins at 7, is 2 entries long.
  IPrinterScriptableSequentialStream(Pointer<COMObject> ptr) : super(ptr);

  int Read(
    int cbRead,
    Pointer<Pointer<COMObject>> ppArray,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 cbRead,
            Pointer<Pointer<COMObject>> ppArray,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cbRead,
            Pointer<Pointer<COMObject>> ppArray,
          )>()(
        ptr.ref.lpVtbl,
        cbRead,
        ppArray,
      );

  int Write(
    Pointer<COMObject> pArray,
    Pointer<Int32> pcbWritten,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pArray,
            Pointer<Int32> pcbWritten,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pArray,
            Pointer<Int32> pcbWritten,
          )>()(
        ptr.ref.lpVtbl,
        pArray,
        pcbWritten,
      );
}
