// ISyncMgrEventStore.dart

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
import '../../ui/shell/IEnumSyncMgrEvents.dart';
import '../../foundation/structs.g.dart';
import '../../ui/shell/ISyncMgrEvent.dart';

/// @nodoc
const IID_ISyncMgrEventStore = '{37E412F9-016E-44C2-81FF-DB3ADD774266}';

/// {@category Interface}
/// {@category com}
class ISyncMgrEventStore extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  ISyncMgrEventStore(Pointer<COMObject> ptr) : super(ptr);

  int GetEventEnumerator(
    Pointer<Pointer<COMObject>> ppenum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppenum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppenum,
          )>()(
        ptr.ref.lpVtbl,
        ppenum,
      );

  int GetEventCount(
    Pointer<Uint32> pcEvents,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcEvents,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcEvents,
          )>()(
        ptr.ref.lpVtbl,
        pcEvents,
      );

  int GetEvent(
    Pointer<GUID> rguidEventID,
    Pointer<Pointer<COMObject>> ppEvent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rguidEventID,
            Pointer<Pointer<COMObject>> ppEvent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rguidEventID,
            Pointer<Pointer<COMObject>> ppEvent,
          )>()(
        ptr.ref.lpVtbl,
        rguidEventID,
        ppEvent,
      );

  int RemoveEvent(
    Pointer<GUID> pguidEventIDs,
    int cEvents,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidEventIDs,
            Uint32 cEvents,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidEventIDs,
            int cEvents,
          )>()(
        ptr.ref.lpVtbl,
        pguidEventIDs,
        cEvents,
      );
}
