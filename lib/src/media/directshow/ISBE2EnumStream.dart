// ISBE2EnumStream.dart

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
import '../../media/directshow/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../media/directshow/ISBE2EnumStream.dart';

/// @nodoc
const IID_ISBE2EnumStream = '{F7611092-9FBC-46EC-A7C7-548EA78B71A4}';

/// {@category Interface}
/// {@category com}
class ISBE2EnumStream extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  ISBE2EnumStream(Pointer<COMObject> ptr) : super(ptr);

  int Next(
    int cRequest,
    Pointer<SBE2_STREAM_DESC> pStreamDesc,
    Pointer<Uint32> pcReceived,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cRequest,
            Pointer<SBE2_STREAM_DESC> pStreamDesc,
            Pointer<Uint32> pcReceived,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cRequest,
            Pointer<SBE2_STREAM_DESC> pStreamDesc,
            Pointer<Uint32> pcReceived,
          )>()(
        ptr.ref.lpVtbl,
        cRequest,
        pStreamDesc,
        pcReceived,
      );

  int Skip(
    int cRecords,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cRecords,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cRecords,
          )>()(
        ptr.ref.lpVtbl,
        cRecords,
      );

  int Reset() => ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int Clone(
    Pointer<Pointer<COMObject>> ppIEnumStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIEnumStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIEnumStream,
          )>()(
        ptr.ref.lpVtbl,
        ppIEnumStream,
      );
}
