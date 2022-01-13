// IMAPIProgress.dart

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
const IID_IMAPIProgress = 'null';

/// {@category Interface}
/// {@category com}
class IMAPIProgress extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IMAPIProgress(Pointer<COMObject> ptr) : super(ptr);

  int Progress(
    int ulValue,
    int ulCount,
    int ulTotal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulValue,
            Uint32 ulCount,
            Uint32 ulTotal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulValue,
            int ulCount,
            int ulTotal,
          )>()(
        ptr.ref.lpVtbl,
        ulValue,
        ulCount,
        ulTotal,
      );

  int GetFlags(
    Pointer<Uint32> lpulFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> lpulFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> lpulFlags,
          )>()(
        ptr.ref.lpVtbl,
        lpulFlags,
      );

  int GetMax(
    Pointer<Uint32> lpulMax,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> lpulMax,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> lpulMax,
          )>()(
        ptr.ref.lpVtbl,
        lpulMax,
      );

  int GetMin(
    Pointer<Uint32> lpulMin,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> lpulMin,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> lpulMin,
          )>()(
        ptr.ref.lpVtbl,
        lpulMin,
      );

  int SetLimits(
    Pointer<Uint32> lpulMin,
    Pointer<Uint32> lpulMax,
    Pointer<Uint32> lpulFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> lpulMin,
            Pointer<Uint32> lpulMax,
            Pointer<Uint32> lpulFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> lpulMin,
            Pointer<Uint32> lpulMax,
            Pointer<Uint32> lpulFlags,
          )>()(
        ptr.ref.lpVtbl,
        lpulMin,
        lpulMax,
        lpulFlags,
      );
}
