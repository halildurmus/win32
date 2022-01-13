// IAMTVAudio.dart

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
import '../../media/directshow/IAMTunerNotification.dart';

/// @nodoc
const IID_IAMTVAudio = '{83EC1C30-23D1-11D1-99E6-00A0C9560266}';

/// {@category Interface}
/// {@category com}
class IAMTVAudio extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IAMTVAudio(Pointer<COMObject> ptr) : super(ptr);

  int GetHardwareSupportedTVAudioModes(
    Pointer<Int32> plModes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plModes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plModes,
          )>()(
        ptr.ref.lpVtbl,
        plModes,
      );

  int GetAvailableTVAudioModes(
    Pointer<Int32> plModes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plModes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plModes,
          )>()(
        ptr.ref.lpVtbl,
        plModes,
      );

  int get TVAudioMode {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plMode,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set TVAudioMode(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 lMode,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int lMode,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int RegisterNotificationCallBack(
    Pointer<COMObject> pNotify,
    int lEvents,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pNotify,
            Int32 lEvents,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pNotify,
            int lEvents,
          )>()(
        ptr.ref.lpVtbl,
        pNotify,
        lEvents,
      );

  int UnRegisterNotificationCallBack(
    Pointer<COMObject> pNotify,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pNotify,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pNotify,
          )>()(
        ptr.ref.lpVtbl,
        pNotify,
      );
}
