// IWMWriterFileSink2.dart

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

import '../../media/windowsmediaformat/IWMWriterFileSink.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMWriterFileSink2 = '{14282BA7-4AEF-4205-8CE5-C229035A05BC}';

/// {@category Interface}
/// {@category com}
class IWMWriterFileSink2 extends IWMWriterFileSink {
  // vtable begins at 9, is 7 entries long.
  IWMWriterFileSink2(Pointer<COMObject> ptr) : super(ptr);

  int Start(
    int cnsStartTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 cnsStartTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cnsStartTime,
          )>()(
        ptr.ref.lpVtbl,
        cnsStartTime,
      );

  int Stop(
    int cnsStopTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 cnsStopTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cnsStopTime,
          )>()(
        ptr.ref.lpVtbl,
        cnsStopTime,
      );

  int IsStopped(
    Pointer<Int32> pfStopped,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfStopped,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfStopped,
          )>()(
        ptr.ref.lpVtbl,
        pfStopped,
      );

  int GetFileDuration(
    Pointer<Uint64> pcnsDuration,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> pcnsDuration,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> pcnsDuration,
          )>()(
        ptr.ref.lpVtbl,
        pcnsDuration,
      );

  int GetFileSize(
    Pointer<Uint64> pcbFile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> pcbFile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> pcbFile,
          )>()(
        ptr.ref.lpVtbl,
        pcbFile,
      );

  int Close() => ptr.ref.lpVtbl.value
          .elementAt(14)
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

  int IsClosed(
    Pointer<Int32> pfClosed,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfClosed,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfClosed,
          )>()(
        ptr.ref.lpVtbl,
        pfClosed,
      );
}
