// IMFAsyncResult.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFAsyncResult = '{AC6B7889-0740-4D51-8619-905994A55CC6}';

/// {@category Interface}
/// {@category com}
class IMFAsyncResult extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IMFAsyncResult(Pointer<COMObject> ptr) : super(ptr);

  int GetState(
    Pointer<Pointer<COMObject>> ppunkState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppunkState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppunkState,
          )>()(
        ptr.ref.lpVtbl,
        ppunkState,
      );

  int GetStatus() => ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int SetStatus(
    int hrStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hrStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hrStatus,
          )>()(
        ptr.ref.lpVtbl,
        hrStatus,
      );

  int GetObject(
    Pointer<Pointer<COMObject>> ppObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppObject,
          )>()(
        ptr.ref.lpVtbl,
        ppObject,
      );

  Pointer<COMObject> GetStateNoAddRef() => ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Pointer<COMObject> Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              Pointer<COMObject> Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
