// IMFMediaEventQueue.dart

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
import '../../media/mediafoundation/IMFMediaEvent.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/IMFAsyncCallback.dart';
import '../../specialTypes.dart';
import '../../media/mediafoundation/IMFAsyncResult.dart';

/// @nodoc
const IID_IMFMediaEventQueue = '{36F846FC-2256-48B6-B58E-E2B638316581}';

/// {@category Interface}
/// {@category com}
class IMFMediaEventQueue extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IMFMediaEventQueue(Pointer<COMObject> ptr) : super(ptr);

  int GetEvent(
    int dwFlags,
    Pointer<Pointer<COMObject>> ppEvent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<Pointer<COMObject>> ppEvent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<Pointer<COMObject>> ppEvent,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        ppEvent,
      );

  int BeginGetEvent(
    Pointer<COMObject> pCallback,
    Pointer<COMObject> punkState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pCallback,
            Pointer<COMObject> punkState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pCallback,
            Pointer<COMObject> punkState,
          )>()(
        ptr.ref.lpVtbl,
        pCallback,
        punkState,
      );

  int EndGetEvent(
    Pointer<COMObject> pResult,
    Pointer<Pointer<COMObject>> ppEvent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pResult,
            Pointer<Pointer<COMObject>> ppEvent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pResult,
            Pointer<Pointer<COMObject>> ppEvent,
          )>()(
        ptr.ref.lpVtbl,
        pResult,
        ppEvent,
      );

  int QueueEvent(
    Pointer<COMObject> pEvent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pEvent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pEvent,
          )>()(
        ptr.ref.lpVtbl,
        pEvent,
      );

  int QueueEventParamVar(
    int met,
    Pointer<GUID> guidExtendedType,
    int hrStatus,
    Pointer<PROPVARIANT> pvValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 met,
            Pointer<GUID> guidExtendedType,
            Int32 hrStatus,
            Pointer<PROPVARIANT> pvValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int met,
            Pointer<GUID> guidExtendedType,
            int hrStatus,
            Pointer<PROPVARIANT> pvValue,
          )>()(
        ptr.ref.lpVtbl,
        met,
        guidExtendedType,
        hrStatus,
        pvValue,
      );

  int QueueEventParamUnk(
    int met,
    Pointer<GUID> guidExtendedType,
    int hrStatus,
    Pointer<COMObject> pUnk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 met,
            Pointer<GUID> guidExtendedType,
            Int32 hrStatus,
            Pointer<COMObject> pUnk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int met,
            Pointer<GUID> guidExtendedType,
            int hrStatus,
            Pointer<COMObject> pUnk,
          )>()(
        ptr.ref.lpVtbl,
        met,
        guidExtendedType,
        hrStatus,
        pUnk,
      );

  int Shutdown() => ptr.ref.lpVtbl.value
          .elementAt(9)
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
