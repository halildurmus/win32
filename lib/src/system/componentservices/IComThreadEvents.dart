// IComThreadEvents.dart

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
const IID_IComThreadEvents = '{683130A5-2E50-11D2-98A5-00C04F8EE1C4}';

/// {@category Interface}
/// {@category com}
class IComThreadEvents extends IUnknown {
  // vtable begins at 3, is 11 entries long.
  IComThreadEvents(Pointer<COMObject> ptr) : super(ptr);

  int OnThreadStart(
    Pointer<COMSVCSEVENTINFO> pInfo,
    int ThreadID,
    int dwThread,
    int dwTheadCnt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Uint64 ThreadID,
            Uint32 dwThread,
            Uint32 dwTheadCnt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            int ThreadID,
            int dwThread,
            int dwTheadCnt,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        ThreadID,
        dwThread,
        dwTheadCnt,
      );

  int OnThreadTerminate(
    Pointer<COMSVCSEVENTINFO> pInfo,
    int ThreadID,
    int dwThread,
    int dwTheadCnt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Uint64 ThreadID,
            Uint32 dwThread,
            Uint32 dwTheadCnt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            int ThreadID,
            int dwThread,
            int dwTheadCnt,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        ThreadID,
        dwThread,
        dwTheadCnt,
      );

  int OnThreadBindToApartment(
    Pointer<COMSVCSEVENTINFO> pInfo,
    int ThreadID,
    int AptID,
    int dwActCnt,
    int dwLowCnt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Uint64 ThreadID,
            Uint64 AptID,
            Uint32 dwActCnt,
            Uint32 dwLowCnt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            int ThreadID,
            int AptID,
            int dwActCnt,
            int dwLowCnt,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        ThreadID,
        AptID,
        dwActCnt,
        dwLowCnt,
      );

  int OnThreadUnBind(
    Pointer<COMSVCSEVENTINFO> pInfo,
    int ThreadID,
    int AptID,
    int dwActCnt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Uint64 ThreadID,
            Uint64 AptID,
            Uint32 dwActCnt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            int ThreadID,
            int AptID,
            int dwActCnt,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        ThreadID,
        AptID,
        dwActCnt,
      );

  int OnThreadWorkEnque(
    Pointer<COMSVCSEVENTINFO> pInfo,
    int ThreadID,
    int MsgWorkID,
    int QueueLen,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Uint64 ThreadID,
            Uint64 MsgWorkID,
            Uint32 QueueLen,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            int ThreadID,
            int MsgWorkID,
            int QueueLen,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        ThreadID,
        MsgWorkID,
        QueueLen,
      );

  int OnThreadWorkPrivate(
    Pointer<COMSVCSEVENTINFO> pInfo,
    int ThreadID,
    int MsgWorkID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Uint64 ThreadID,
            Uint64 MsgWorkID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            int ThreadID,
            int MsgWorkID,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        ThreadID,
        MsgWorkID,
      );

  int OnThreadWorkPublic(
    Pointer<COMSVCSEVENTINFO> pInfo,
    int ThreadID,
    int MsgWorkID,
    int QueueLen,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Uint64 ThreadID,
            Uint64 MsgWorkID,
            Uint32 QueueLen,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            int ThreadID,
            int MsgWorkID,
            int QueueLen,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        ThreadID,
        MsgWorkID,
        QueueLen,
      );

  int OnThreadWorkRedirect(
    Pointer<COMSVCSEVENTINFO> pInfo,
    int ThreadID,
    int MsgWorkID,
    int QueueLen,
    int ThreadNum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Uint64 ThreadID,
            Uint64 MsgWorkID,
            Uint32 QueueLen,
            Uint64 ThreadNum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            int ThreadID,
            int MsgWorkID,
            int QueueLen,
            int ThreadNum,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        ThreadID,
        MsgWorkID,
        QueueLen,
        ThreadNum,
      );

  int OnThreadWorkReject(
    Pointer<COMSVCSEVENTINFO> pInfo,
    int ThreadID,
    int MsgWorkID,
    int QueueLen,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Uint64 ThreadID,
            Uint64 MsgWorkID,
            Uint32 QueueLen,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            int ThreadID,
            int MsgWorkID,
            int QueueLen,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        ThreadID,
        MsgWorkID,
        QueueLen,
      );

  int OnThreadAssignApartment(
    Pointer<COMSVCSEVENTINFO> pInfo,
    Pointer<GUID> guidActivity,
    int AptID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Pointer<GUID> guidActivity,
            Uint64 AptID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Pointer<GUID> guidActivity,
            int AptID,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        guidActivity,
        AptID,
      );

  int OnThreadUnassignApartment(
    Pointer<COMSVCSEVENTINFO> pInfo,
    int AptID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Uint64 AptID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            int AptID,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        AptID,
      );
}
