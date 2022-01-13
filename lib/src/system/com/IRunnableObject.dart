// IRunnableObject.dart

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
import '../../system/com/IBindCtx.dart';

/// @nodoc
const IID_IRunnableObject = '{00000126-0000-0000-C000-000000000046}';

/// {@category Interface}
/// {@category com}
class IRunnableObject extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IRunnableObject(Pointer<COMObject> ptr) : super(ptr);

  int GetRunningClass(
    Pointer<GUID> lpClsid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> lpClsid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> lpClsid,
          )>()(
        ptr.ref.lpVtbl,
        lpClsid,
      );

  int Run(
    Pointer<COMObject> pbc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pbc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pbc,
          )>()(
        ptr.ref.lpVtbl,
        pbc,
      );

  int IsRunning() => ptr.ref.lpVtbl.value
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

  int LockRunning(
    int fLock,
    int fLastUnlockCloses,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fLock,
            Int32 fLastUnlockCloses,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fLock,
            int fLastUnlockCloses,
          )>()(
        ptr.ref.lpVtbl,
        fLock,
        fLastUnlockCloses,
      );

  int SetContainedObject(
    int fContained,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fContained,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fContained,
          )>()(
        ptr.ref.lpVtbl,
        fContained,
      );
}
