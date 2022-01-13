// IRTCClient.dart

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
import '../../system/realtimecommunications/structs.g.dart';
import '../../system/realtimecommunications/IRTCProfile.dart';
import '../../system/realtimecommunications/IRTCSession.dart';
import '../../specialTypes.dart';
import '../../media/directshow/IVideoWindow.dart';

/// @nodoc
const IID_IRTCClient = '{07829E45-9A34-408E-A011-BDDF13487CD1}';

/// {@category Interface}
/// {@category com}
class IRTCClient extends IUnknown {
  // vtable begins at 3, is 42 entries long.
  IRTCClient(Pointer<COMObject> ptr) : super(ptr);

  int Initialize() => ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int Shutdown() => ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int PrepareForShutdown() => ptr.ref.lpVtbl.value
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

  set EventFilter(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 lFilter,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int lFilter,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get EventFilter {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plFilter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plFilter,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int SetPreferredMediaTypes(
    int lMediaTypes,
    int fPersistent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lMediaTypes,
            Int16 fPersistent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lMediaTypes,
            int fPersistent,
          )>()(
        ptr.ref.lpVtbl,
        lMediaTypes,
        fPersistent,
      );

  int get PreferredMediaTypes {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plMediaTypes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plMediaTypes,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get MediaCapabilities {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plMediaTypes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plMediaTypes,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int CreateSession(
    int enType,
    Pointer<Utf16> bstrLocalPhoneURI,
    Pointer<COMObject> pProfile,
    int lFlags,
    Pointer<Pointer<COMObject>> ppSession,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 enType,
            Pointer<Utf16> bstrLocalPhoneURI,
            Pointer<COMObject> pProfile,
            Int32 lFlags,
            Pointer<Pointer<COMObject>> ppSession,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int enType,
            Pointer<Utf16> bstrLocalPhoneURI,
            Pointer<COMObject> pProfile,
            int lFlags,
            Pointer<Pointer<COMObject>> ppSession,
          )>()(
        ptr.ref.lpVtbl,
        enType,
        bstrLocalPhoneURI,
        pProfile,
        lFlags,
        ppSession,
      );

  set ListenForIncomingSessions(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(12)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 enListen,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int enListen,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get ListenForIncomingSessions {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> penListen,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> penListen,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get_NetworkAddresses(
    int fTCP,
    int fExternal,
    Pointer<VARIANT> pvAddresses,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 fTCP,
            Int16 fExternal,
            Pointer<VARIANT> pvAddresses,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fTCP,
            int fExternal,
            Pointer<VARIANT> pvAddresses,
          )>()(
        ptr.ref.lpVtbl,
        fTCP,
        fExternal,
        pvAddresses,
      );

  int put_Volume(
    int enDevice,
    int lVolume,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 enDevice,
            Int32 lVolume,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int enDevice,
            int lVolume,
          )>()(
        ptr.ref.lpVtbl,
        enDevice,
        lVolume,
      );

  int get_Volume(
    int enDevice,
    Pointer<Int32> plVolume,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 enDevice,
            Pointer<Int32> plVolume,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int enDevice,
            Pointer<Int32> plVolume,
          )>()(
        ptr.ref.lpVtbl,
        enDevice,
        plVolume,
      );

  int put_AudioMuted(
    int enDevice,
    int fMuted,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 enDevice,
            Int16 fMuted,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int enDevice,
            int fMuted,
          )>()(
        ptr.ref.lpVtbl,
        enDevice,
        fMuted,
      );

  int get_AudioMuted(
    int enDevice,
    Pointer<Int16> pfMuted,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 enDevice,
            Pointer<Int16> pfMuted,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int enDevice,
            Pointer<Int16> pfMuted,
          )>()(
        ptr.ref.lpVtbl,
        enDevice,
        pfMuted,
      );

  int get_IVideoWindow(
    int enDevice,
    Pointer<Pointer<COMObject>> ppIVideoWindow,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 enDevice,
            Pointer<Pointer<COMObject>> ppIVideoWindow,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int enDevice,
            Pointer<Pointer<COMObject>> ppIVideoWindow,
          )>()(
        ptr.ref.lpVtbl,
        enDevice,
        ppIVideoWindow,
      );

  int put_PreferredAudioDevice(
    int enDevice,
    Pointer<Utf16> bstrDeviceName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 enDevice,
            Pointer<Utf16> bstrDeviceName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int enDevice,
            Pointer<Utf16> bstrDeviceName,
          )>()(
        ptr.ref.lpVtbl,
        enDevice,
        bstrDeviceName,
      );

  int get_PreferredAudioDevice(
    int enDevice,
    Pointer<Pointer<Utf16>> pbstrDeviceName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 enDevice,
            Pointer<Pointer<Utf16>> pbstrDeviceName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int enDevice,
            Pointer<Pointer<Utf16>> pbstrDeviceName,
          )>()(
        ptr.ref.lpVtbl,
        enDevice,
        pbstrDeviceName,
      );

  int put_PreferredVolume(
    int enDevice,
    int lVolume,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 enDevice,
            Int32 lVolume,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int enDevice,
            int lVolume,
          )>()(
        ptr.ref.lpVtbl,
        enDevice,
        lVolume,
      );

  int get_PreferredVolume(
    int enDevice,
    Pointer<Int32> plVolume,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 enDevice,
            Pointer<Int32> plVolume,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int enDevice,
            Pointer<Int32> plVolume,
          )>()(
        ptr.ref.lpVtbl,
        enDevice,
        plVolume,
      );

  set PreferredAEC(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(24)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int16 bEnable,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int bEnable,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get PreferredAEC {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pbEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pbEnabled,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set PreferredVideoDevice(Pointer<Utf16> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(26)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<Utf16> bstrDeviceName,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<Utf16> bstrDeviceName,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<Utf16> get PreferredVideoDevice {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrDeviceName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrDeviceName,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get ActiveMedia {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plMediaType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plMediaType,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set MaxBitrate(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(29)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 lMaxBitrate,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int lMaxBitrate,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get MaxBitrate {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plMaxBitrate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plMaxBitrate,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set TemporalSpatialTradeOff(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(31)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 lValue,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int lValue,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get TemporalSpatialTradeOff {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plValue,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get NetworkQuality {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plNetworkQuality,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plNetworkQuality,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int StartT120Applet(
    int enApplet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 enApplet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int enApplet,
          )>()(
        ptr.ref.lpVtbl,
        enApplet,
      );

  int StopT120Applets() => ptr.ref.lpVtbl.value
          .elementAt(35)
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

  int get_IsT120AppletRunning(
    int enApplet,
    Pointer<Int16> pfRunning,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 enApplet,
            Pointer<Int16> pfRunning,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int enApplet,
            Pointer<Int16> pfRunning,
          )>()(
        ptr.ref.lpVtbl,
        enApplet,
        pfRunning,
      );

  Pointer<Utf16> get LocalUserURI {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrUserURI,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrUserURI,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set LocalUserURI(Pointer<Utf16> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(38)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<Utf16> bstrUserURI,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<Utf16> bstrUserURI,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<Utf16> get LocalUserName {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrUserName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrUserName,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set LocalUserName(Pointer<Utf16> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(40)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<Utf16> bstrUserName,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<Utf16> bstrUserName,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int PlayRing(
    int enType,
    int bPlay,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(41)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 enType,
            Int16 bPlay,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int enType,
            int bPlay,
          )>()(
        ptr.ref.lpVtbl,
        enType,
        bPlay,
      );

  int SendDTMF(
    int enDTMF,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(42)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 enDTMF,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int enDTMF,
          )>()(
        ptr.ref.lpVtbl,
        enDTMF,
      );

  int InvokeTuningWizard(
    int hwndParent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(43)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwndParent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwndParent,
          )>()(
        ptr.ref.lpVtbl,
        hwndParent,
      );

  int get IsTuned {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(44)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pfTuned,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pfTuned,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}

/// @nodoc
const CLSID_RTCClient = '{7A42EA29-A2B7-40C4-B091-F6F024AA89BE}';

/// {@category com}
class RTCClient extends IRTCClient {
  RTCClient(Pointer<COMObject> ptr) : super(ptr);

  factory RTCClient.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_RTCClient);
    final iid = calloc<GUID>()..ref.setGUID(IID_IRTCClient);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return RTCClient(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
