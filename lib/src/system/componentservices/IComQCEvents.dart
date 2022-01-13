// IComQCEvents.dart

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
const IID_IComQCEvents = '{683130B2-2E50-11D2-98A5-00C04F8EE1C4}';

/// {@category Interface}
/// {@category com}
class IComQCEvents extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IComQCEvents(Pointer<COMObject> ptr) : super(ptr);

  int OnQCRecord(
    Pointer<COMSVCSEVENTINFO> pInfo,
    int objid,
    Pointer<Utf16> szQueue,
    Pointer<GUID> guidMsgId,
    Pointer<GUID> guidWorkFlowId,
    int msmqhr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Uint64 objid,
            Pointer<Utf16> szQueue,
            Pointer<GUID> guidMsgId,
            Pointer<GUID> guidWorkFlowId,
            Int32 msmqhr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            int objid,
            Pointer<Utf16> szQueue,
            Pointer<GUID> guidMsgId,
            Pointer<GUID> guidWorkFlowId,
            int msmqhr,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        objid,
        szQueue,
        guidMsgId,
        guidWorkFlowId,
        msmqhr,
      );

  int OnQCQueueOpen(
    Pointer<COMSVCSEVENTINFO> pInfo,
    Pointer<Utf16> szQueue,
    int QueueID,
    int hr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Pointer<Utf16> szQueue,
            Uint64 QueueID,
            Int32 hr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Pointer<Utf16> szQueue,
            int QueueID,
            int hr,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        szQueue,
        QueueID,
        hr,
      );

  int OnQCReceive(
    Pointer<COMSVCSEVENTINFO> pInfo,
    int QueueID,
    Pointer<GUID> guidMsgId,
    Pointer<GUID> guidWorkFlowId,
    int hr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Uint64 QueueID,
            Pointer<GUID> guidMsgId,
            Pointer<GUID> guidWorkFlowId,
            Int32 hr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            int QueueID,
            Pointer<GUID> guidMsgId,
            Pointer<GUID> guidWorkFlowId,
            int hr,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        QueueID,
        guidMsgId,
        guidWorkFlowId,
        hr,
      );

  int OnQCReceiveFail(
    Pointer<COMSVCSEVENTINFO> pInfo,
    int QueueID,
    int msmqhr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Uint64 QueueID,
            Int32 msmqhr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            int QueueID,
            int msmqhr,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        QueueID,
        msmqhr,
      );

  int OnQCMoveToReTryQueue(
    Pointer<COMSVCSEVENTINFO> pInfo,
    Pointer<GUID> guidMsgId,
    Pointer<GUID> guidWorkFlowId,
    int RetryIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Pointer<GUID> guidMsgId,
            Pointer<GUID> guidWorkFlowId,
            Uint32 RetryIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Pointer<GUID> guidMsgId,
            Pointer<GUID> guidWorkFlowId,
            int RetryIndex,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        guidMsgId,
        guidWorkFlowId,
        RetryIndex,
      );

  int OnQCMoveToDeadQueue(
    Pointer<COMSVCSEVENTINFO> pInfo,
    Pointer<GUID> guidMsgId,
    Pointer<GUID> guidWorkFlowId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Pointer<GUID> guidMsgId,
            Pointer<GUID> guidWorkFlowId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Pointer<GUID> guidMsgId,
            Pointer<GUID> guidWorkFlowId,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        guidMsgId,
        guidWorkFlowId,
      );

  int OnQCPlayback(
    Pointer<COMSVCSEVENTINFO> pInfo,
    int objid,
    Pointer<GUID> guidMsgId,
    Pointer<GUID> guidWorkFlowId,
    int hr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Uint64 objid,
            Pointer<GUID> guidMsgId,
            Pointer<GUID> guidWorkFlowId,
            Int32 hr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            int objid,
            Pointer<GUID> guidMsgId,
            Pointer<GUID> guidWorkFlowId,
            int hr,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        objid,
        guidMsgId,
        guidWorkFlowId,
        hr,
      );
}
