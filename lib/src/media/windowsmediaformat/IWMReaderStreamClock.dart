// IWMReaderStreamClock.dart

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
const IID_IWMReaderStreamClock = '{96406BED-2B2B-11D3-B36B-00C04F6108FF}';

/// {@category Interface}
/// {@category com}
class IWMReaderStreamClock extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IWMReaderStreamClock(Pointer<COMObject> ptr) : super(ptr);

  int GetTime(
    Pointer<Uint64> pcnsNow,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> pcnsNow,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> pcnsNow,
          )>()(
        ptr.ref.lpVtbl,
        pcnsNow,
      );

  int SetTimer(
    int cnsWhen,
    Pointer pvParam,
    Pointer<Uint32> pdwTimerId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 cnsWhen,
            Pointer pvParam,
            Pointer<Uint32> pdwTimerId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cnsWhen,
            Pointer pvParam,
            Pointer<Uint32> pdwTimerId,
          )>()(
        ptr.ref.lpVtbl,
        cnsWhen,
        pvParam,
        pdwTimerId,
      );

  int KillTimer(
    int dwTimerId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwTimerId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwTimerId,
          )>()(
        ptr.ref.lpVtbl,
        dwTimerId,
      );
}
