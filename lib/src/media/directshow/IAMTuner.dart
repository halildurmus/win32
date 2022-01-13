// IAMTuner.dart

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
import '../../media/directshow/structs.g.dart';
import '../../media/directshow/IAMTunerNotification.dart';

/// @nodoc
const IID_IAMTuner = '{211A8761-03AC-11D1-8D13-00AA00BD8339}';

/// {@category Interface}
/// {@category com}
class IAMTuner extends IUnknown {
  // vtable begins at 3, is 15 entries long.
  IAMTuner(Pointer<COMObject> ptr) : super(ptr);

  int put_Channel(
    int lChannel,
    int lVideoSubChannel,
    int lAudioSubChannel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lChannel,
            Int32 lVideoSubChannel,
            Int32 lAudioSubChannel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lChannel,
            int lVideoSubChannel,
            int lAudioSubChannel,
          )>()(
        ptr.ref.lpVtbl,
        lChannel,
        lVideoSubChannel,
        lAudioSubChannel,
      );

  int get_Channel(
    Pointer<Int32> plChannel,
    Pointer<Int32> plVideoSubChannel,
    Pointer<Int32> plAudioSubChannel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plChannel,
            Pointer<Int32> plVideoSubChannel,
            Pointer<Int32> plAudioSubChannel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plChannel,
            Pointer<Int32> plVideoSubChannel,
            Pointer<Int32> plAudioSubChannel,
          )>()(
        ptr.ref.lpVtbl,
        plChannel,
        plVideoSubChannel,
        plAudioSubChannel,
      );

  int ChannelMinMax(
    Pointer<Int32> lChannelMin,
    Pointer<Int32> lChannelMax,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> lChannelMin,
            Pointer<Int32> lChannelMax,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> lChannelMin,
            Pointer<Int32> lChannelMax,
          )>()(
        ptr.ref.lpVtbl,
        lChannelMin,
        lChannelMax,
      );

  set CountryCode(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 lCountryCode,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int lCountryCode,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get CountryCode {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plCountryCode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plCountryCode,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set TuningSpace(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(8)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 lTuningSpace,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int lTuningSpace,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get TuningSpace {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plTuningSpace,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plTuningSpace,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int Logon(
    int hCurrentUser,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hCurrentUser,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hCurrentUser,
          )>()(
        ptr.ref.lpVtbl,
        hCurrentUser,
      );

  int Logout() => ptr.ref.lpVtbl.value
          .elementAt(11)
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

  int SignalPresent(
    Pointer<Int32> plSignalStrength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plSignalStrength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plSignalStrength,
          )>()(
        ptr.ref.lpVtbl,
        plSignalStrength,
      );

  set Mode(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(13)
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

  int get Mode {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(14)
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

  int GetAvailableModes(
    Pointer<Int32> plModes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
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

  int RegisterNotificationCallBack(
    Pointer<COMObject> pNotify,
    int lEvents,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
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
          .elementAt(17)
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
