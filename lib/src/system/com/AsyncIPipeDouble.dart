// AsyncIPipeDouble.dart

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
const IID_AsyncIPipeDouble = '{DB2F3ACF-2F86-11D1-8E04-00C04FB9989A}';

/// {@category Interface}
/// {@category com}
class AsyncIPipeDouble extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  AsyncIPipeDouble(Pointer<COMObject> ptr) : super(ptr);

  int Begin_Pull(
    int cRequest,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cRequest,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cRequest,
          )>()(
        ptr.ref.lpVtbl,
        cRequest,
      );

  int Finish_Pull(
    Pointer<Double> buf,
    Pointer<Uint32> pcReturned,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> buf,
            Pointer<Uint32> pcReturned,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> buf,
            Pointer<Uint32> pcReturned,
          )>()(
        ptr.ref.lpVtbl,
        buf,
        pcReturned,
      );

  int Begin_Push(
    Pointer<Double> buf,
    int cSent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> buf,
            Uint32 cSent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> buf,
            int cSent,
          )>()(
        ptr.ref.lpVtbl,
        buf,
        cSent,
      );

  int Finish_Push() => ptr.ref.lpVtbl.value
          .elementAt(6)
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
