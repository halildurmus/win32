// IMFWorkQueueServices.dart

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
import '../../media/mediafoundation/IMFAsyncCallback.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/IMFAsyncResult.dart';

/// @nodoc
const IID_IMFWorkQueueServices = '{35FE1BB8-A3A9-40FE-BBEC-EB569C9CCCA3}';

/// {@category Interface}
/// {@category com}
class IMFWorkQueueServices extends IUnknown {
  // vtable begins at 3, is 12 entries long.
  IMFWorkQueueServices(Pointer<COMObject> ptr) : super(ptr);

  int BeginRegisterTopologyWorkQueuesWithMMCSS(
    Pointer<COMObject> pCallback,
    Pointer<COMObject> pState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pCallback,
            Pointer<COMObject> pState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pCallback,
            Pointer<COMObject> pState,
          )>()(
        ptr.ref.lpVtbl,
        pCallback,
        pState,
      );

  int EndRegisterTopologyWorkQueuesWithMMCSS(
    Pointer<COMObject> pResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pResult,
          )>()(
        ptr.ref.lpVtbl,
        pResult,
      );

  int BeginUnregisterTopologyWorkQueuesWithMMCSS(
    Pointer<COMObject> pCallback,
    Pointer<COMObject> pState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pCallback,
            Pointer<COMObject> pState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pCallback,
            Pointer<COMObject> pState,
          )>()(
        ptr.ref.lpVtbl,
        pCallback,
        pState,
      );

  int EndUnregisterTopologyWorkQueuesWithMMCSS(
    Pointer<COMObject> pResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pResult,
          )>()(
        ptr.ref.lpVtbl,
        pResult,
      );

  int GetTopologyWorkQueueMMCSSClass(
    int dwTopologyWorkQueueId,
    Pointer<Utf16> pwszClass,
    Pointer<Uint32> pcchClass,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwTopologyWorkQueueId,
            Pointer<Utf16> pwszClass,
            Pointer<Uint32> pcchClass,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwTopologyWorkQueueId,
            Pointer<Utf16> pwszClass,
            Pointer<Uint32> pcchClass,
          )>()(
        ptr.ref.lpVtbl,
        dwTopologyWorkQueueId,
        pwszClass,
        pcchClass,
      );

  int GetTopologyWorkQueueMMCSSTaskId(
    int dwTopologyWorkQueueId,
    Pointer<Uint32> pdwTaskId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwTopologyWorkQueueId,
            Pointer<Uint32> pdwTaskId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwTopologyWorkQueueId,
            Pointer<Uint32> pdwTaskId,
          )>()(
        ptr.ref.lpVtbl,
        dwTopologyWorkQueueId,
        pdwTaskId,
      );

  int BeginRegisterPlatformWorkQueueWithMMCSS(
    int dwPlatformWorkQueue,
    Pointer<Utf16> wszClass,
    int dwTaskId,
    Pointer<COMObject> pCallback,
    Pointer<COMObject> pState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwPlatformWorkQueue,
            Pointer<Utf16> wszClass,
            Uint32 dwTaskId,
            Pointer<COMObject> pCallback,
            Pointer<COMObject> pState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwPlatformWorkQueue,
            Pointer<Utf16> wszClass,
            int dwTaskId,
            Pointer<COMObject> pCallback,
            Pointer<COMObject> pState,
          )>()(
        ptr.ref.lpVtbl,
        dwPlatformWorkQueue,
        wszClass,
        dwTaskId,
        pCallback,
        pState,
      );

  int EndRegisterPlatformWorkQueueWithMMCSS(
    Pointer<COMObject> pResult,
    Pointer<Uint32> pdwTaskId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pResult,
            Pointer<Uint32> pdwTaskId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pResult,
            Pointer<Uint32> pdwTaskId,
          )>()(
        ptr.ref.lpVtbl,
        pResult,
        pdwTaskId,
      );

  int BeginUnregisterPlatformWorkQueueWithMMCSS(
    int dwPlatformWorkQueue,
    Pointer<COMObject> pCallback,
    Pointer<COMObject> pState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwPlatformWorkQueue,
            Pointer<COMObject> pCallback,
            Pointer<COMObject> pState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwPlatformWorkQueue,
            Pointer<COMObject> pCallback,
            Pointer<COMObject> pState,
          )>()(
        ptr.ref.lpVtbl,
        dwPlatformWorkQueue,
        pCallback,
        pState,
      );

  int EndUnregisterPlatformWorkQueueWithMMCSS(
    Pointer<COMObject> pResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pResult,
          )>()(
        ptr.ref.lpVtbl,
        pResult,
      );

  int GetPlaftormWorkQueueMMCSSClass(
    int dwPlatformWorkQueueId,
    Pointer<Utf16> pwszClass,
    Pointer<Uint32> pcchClass,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwPlatformWorkQueueId,
            Pointer<Utf16> pwszClass,
            Pointer<Uint32> pcchClass,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwPlatformWorkQueueId,
            Pointer<Utf16> pwszClass,
            Pointer<Uint32> pcchClass,
          )>()(
        ptr.ref.lpVtbl,
        dwPlatformWorkQueueId,
        pwszClass,
        pcchClass,
      );

  int GetPlatformWorkQueueMMCSSTaskId(
    int dwPlatformWorkQueueId,
    Pointer<Uint32> pdwTaskId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwPlatformWorkQueueId,
            Pointer<Uint32> pdwTaskId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwPlatformWorkQueueId,
            Pointer<Uint32> pdwTaskId,
          )>()(
        ptr.ref.lpVtbl,
        dwPlatformWorkQueueId,
        pdwTaskId,
      );
}
