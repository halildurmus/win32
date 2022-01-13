// IComActivityEvents.dart

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
import '../../system/componentservices/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IComActivityEvents = '{683130B0-2E50-11D2-98A5-00C04F8EE1C4}';

/// {@category Interface}
/// {@category com}
class IComActivityEvents extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IComActivityEvents(Pointer<COMObject> ptr) : super(ptr);

  int OnActivityCreate(
    Pointer<COMSVCSEVENTINFO> pInfo,
    Pointer<GUID> guidActivity,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Pointer<GUID> guidActivity,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Pointer<GUID> guidActivity,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        guidActivity,
      );

  int OnActivityDestroy(
    Pointer<COMSVCSEVENTINFO> pInfo,
    Pointer<GUID> guidActivity,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Pointer<GUID> guidActivity,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Pointer<GUID> guidActivity,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        guidActivity,
      );

  int OnActivityEnter(
    Pointer<COMSVCSEVENTINFO> pInfo,
    Pointer<GUID> guidCurrent,
    Pointer<GUID> guidEntered,
    int dwThread,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Pointer<GUID> guidCurrent,
            Pointer<GUID> guidEntered,
            Uint32 dwThread,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Pointer<GUID> guidCurrent,
            Pointer<GUID> guidEntered,
            int dwThread,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        guidCurrent,
        guidEntered,
        dwThread,
      );

  int OnActivityTimeout(
    Pointer<COMSVCSEVENTINFO> pInfo,
    Pointer<GUID> guidCurrent,
    Pointer<GUID> guidEntered,
    int dwThread,
    int dwTimeout,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Pointer<GUID> guidCurrent,
            Pointer<GUID> guidEntered,
            Uint32 dwThread,
            Uint32 dwTimeout,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Pointer<GUID> guidCurrent,
            Pointer<GUID> guidEntered,
            int dwThread,
            int dwTimeout,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        guidCurrent,
        guidEntered,
        dwThread,
        dwTimeout,
      );

  int OnActivityReenter(
    Pointer<COMSVCSEVENTINFO> pInfo,
    Pointer<GUID> guidCurrent,
    int dwThread,
    int dwCallDepth,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Pointer<GUID> guidCurrent,
            Uint32 dwThread,
            Uint32 dwCallDepth,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Pointer<GUID> guidCurrent,
            int dwThread,
            int dwCallDepth,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        guidCurrent,
        dwThread,
        dwCallDepth,
      );

  int OnActivityLeave(
    Pointer<COMSVCSEVENTINFO> pInfo,
    Pointer<GUID> guidCurrent,
    Pointer<GUID> guidLeft,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Pointer<GUID> guidCurrent,
            Pointer<GUID> guidLeft,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Pointer<GUID> guidCurrent,
            Pointer<GUID> guidLeft,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        guidCurrent,
        guidLeft,
      );

  int OnActivityLeaveSame(
    Pointer<COMSVCSEVENTINFO> pInfo,
    Pointer<GUID> guidCurrent,
    int dwCallDepth,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Pointer<GUID> guidCurrent,
            Uint32 dwCallDepth,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Pointer<GUID> guidCurrent,
            int dwCallDepth,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        guidCurrent,
        dwCallDepth,
      );
}
