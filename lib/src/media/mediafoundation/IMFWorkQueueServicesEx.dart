// IMFWorkQueueServicesEx.dart

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

import '../../media/mediafoundation/IMFWorkQueueServices.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/IMFAsyncCallback.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IMFWorkQueueServicesEx = '{96BF961B-40FE-42F1-BA9D-320238B49700}';

/// {@category Interface}
/// {@category com}
class IMFWorkQueueServicesEx extends IMFWorkQueueServices {
  // vtable begins at 15, is 3 entries long.
  IMFWorkQueueServicesEx(Pointer<COMObject> ptr) : super(ptr);

  int GetTopologyWorkQueueMMCSSPriority(
    int dwTopologyWorkQueueId,
    Pointer<Int32> plPriority,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwTopologyWorkQueueId,
            Pointer<Int32> plPriority,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwTopologyWorkQueueId,
            Pointer<Int32> plPriority,
          )>()(
        ptr.ref.lpVtbl,
        dwTopologyWorkQueueId,
        plPriority,
      );

  int BeginRegisterPlatformWorkQueueWithMMCSSEx(
    int dwPlatformWorkQueue,
    Pointer<Utf16> wszClass,
    int dwTaskId,
    int lPriority,
    Pointer<COMObject> pCallback,
    Pointer<COMObject> pState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwPlatformWorkQueue,
            Pointer<Utf16> wszClass,
            Uint32 dwTaskId,
            Int32 lPriority,
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
            int lPriority,
            Pointer<COMObject> pCallback,
            Pointer<COMObject> pState,
          )>()(
        ptr.ref.lpVtbl,
        dwPlatformWorkQueue,
        wszClass,
        dwTaskId,
        lPriority,
        pCallback,
        pState,
      );

  int GetPlatformWorkQueueMMCSSPriority(
    int dwPlatformWorkQueueId,
    Pointer<Int32> plPriority,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwPlatformWorkQueueId,
            Pointer<Int32> plPriority,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwPlatformWorkQueueId,
            Pointer<Int32> plPriority,
          )>()(
        ptr.ref.lpVtbl,
        dwPlatformWorkQueueId,
        plPriority,
      );
}
