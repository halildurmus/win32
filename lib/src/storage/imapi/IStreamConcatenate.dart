// IStreamConcatenate.dart

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

import '../../system/com/IStream.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IStreamConcatenate = '{27354146-7F64-5B0F-8F00-5D77AFBE261E}';

/// {@category Interface}
/// {@category com}
class IStreamConcatenate extends IStream {
  // vtable begins at 14, is 4 entries long.
  IStreamConcatenate(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<COMObject> stream1,
    Pointer<COMObject> stream2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> stream1,
            Pointer<COMObject> stream2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> stream1,
            Pointer<COMObject> stream2,
          )>()(
        ptr.ref.lpVtbl,
        stream1,
        stream2,
      );

  int Initialize2(
    Pointer<Pointer<COMObject>> streams,
    int streamCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> streams,
            Uint32 streamCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> streams,
            int streamCount,
          )>()(
        ptr.ref.lpVtbl,
        streams,
        streamCount,
      );

  int Append(
    Pointer<COMObject> stream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> stream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> stream,
          )>()(
        ptr.ref.lpVtbl,
        stream,
      );

  int Append2(
    Pointer<Pointer<COMObject>> streams,
    int streamCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> streams,
            Uint32 streamCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> streams,
            int streamCount,
          )>()(
        ptr.ref.lpVtbl,
        streams,
        streamCount,
      );
}
