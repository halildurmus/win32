// IAudioEndpointVolume.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../media/audio/endpoints/IAudioEndpointVolumeCallback.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IAudioEndpointVolume = '{5CDF2C82-841E-4546-9722-0CF74078229A}';

/// {@category Interface}
/// {@category com}
class IAudioEndpointVolume extends IUnknown {
  // vtable begins at 3, is 18 entries long.
  IAudioEndpointVolume(Pointer<COMObject> ptr) : super(ptr);

  int RegisterControlChangeNotify(
    Pointer<COMObject> pNotify,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int UnregisterControlChangeNotify(
    Pointer<COMObject> pNotify,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int GetChannelCount(
    Pointer<Uint32> pnChannelCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pnChannelCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pnChannelCount,
          )>()(
        ptr.ref.lpVtbl,
        pnChannelCount,
      );

  int SetMasterVolumeLevel(
    double fLevelDB,
    Pointer<GUID> pguidEventContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float fLevelDB,
            Pointer<GUID> pguidEventContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double fLevelDB,
            Pointer<GUID> pguidEventContext,
          )>()(
        ptr.ref.lpVtbl,
        fLevelDB,
        pguidEventContext,
      );

  int SetMasterVolumeLevelScalar(
    double fLevel,
    Pointer<GUID> pguidEventContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float fLevel,
            Pointer<GUID> pguidEventContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double fLevel,
            Pointer<GUID> pguidEventContext,
          )>()(
        ptr.ref.lpVtbl,
        fLevel,
        pguidEventContext,
      );

  int GetMasterVolumeLevel(
    Pointer<Float> pfLevelDB,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> pfLevelDB,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> pfLevelDB,
          )>()(
        ptr.ref.lpVtbl,
        pfLevelDB,
      );

  int GetMasterVolumeLevelScalar(
    Pointer<Float> pfLevel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> pfLevel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> pfLevel,
          )>()(
        ptr.ref.lpVtbl,
        pfLevel,
      );

  int SetChannelVolumeLevel(
    int nChannel,
    double fLevelDB,
    Pointer<GUID> pguidEventContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 nChannel,
            Float fLevelDB,
            Pointer<GUID> pguidEventContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nChannel,
            double fLevelDB,
            Pointer<GUID> pguidEventContext,
          )>()(
        ptr.ref.lpVtbl,
        nChannel,
        fLevelDB,
        pguidEventContext,
      );

  int SetChannelVolumeLevelScalar(
    int nChannel,
    double fLevel,
    Pointer<GUID> pguidEventContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 nChannel,
            Float fLevel,
            Pointer<GUID> pguidEventContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nChannel,
            double fLevel,
            Pointer<GUID> pguidEventContext,
          )>()(
        ptr.ref.lpVtbl,
        nChannel,
        fLevel,
        pguidEventContext,
      );

  int GetChannelVolumeLevel(
    int nChannel,
    Pointer<Float> pfLevelDB,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 nChannel,
            Pointer<Float> pfLevelDB,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nChannel,
            Pointer<Float> pfLevelDB,
          )>()(
        ptr.ref.lpVtbl,
        nChannel,
        pfLevelDB,
      );

  int GetChannelVolumeLevelScalar(
    int nChannel,
    Pointer<Float> pfLevel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 nChannel,
            Pointer<Float> pfLevel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nChannel,
            Pointer<Float> pfLevel,
          )>()(
        ptr.ref.lpVtbl,
        nChannel,
        pfLevel,
      );

  int SetMute(
    int bMute,
    Pointer<GUID> pguidEventContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bMute,
            Pointer<GUID> pguidEventContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bMute,
            Pointer<GUID> pguidEventContext,
          )>()(
        ptr.ref.lpVtbl,
        bMute,
        pguidEventContext,
      );

  int GetMute(
    Pointer<Int32> pbMute,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbMute,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbMute,
          )>()(
        ptr.ref.lpVtbl,
        pbMute,
      );

  int GetVolumeStepInfo(
    Pointer<Uint32> pnStep,
    Pointer<Uint32> pnStepCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pnStep,
            Pointer<Uint32> pnStepCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pnStep,
            Pointer<Uint32> pnStepCount,
          )>()(
        ptr.ref.lpVtbl,
        pnStep,
        pnStepCount,
      );

  int VolumeStepUp(
    Pointer<GUID> pguidEventContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidEventContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidEventContext,
          )>()(
        ptr.ref.lpVtbl,
        pguidEventContext,
      );

  int VolumeStepDown(
    Pointer<GUID> pguidEventContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidEventContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidEventContext,
          )>()(
        ptr.ref.lpVtbl,
        pguidEventContext,
      );

  int QueryHardwareSupport(
    Pointer<Uint32> pdwHardwareSupportMask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwHardwareSupportMask,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwHardwareSupportMask,
          )>()(
        ptr.ref.lpVtbl,
        pdwHardwareSupportMask,
      );

  int GetVolumeRange(
    Pointer<Float> pflVolumeMindB,
    Pointer<Float> pflVolumeMaxdB,
    Pointer<Float> pflVolumeIncrementdB,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> pflVolumeMindB,
            Pointer<Float> pflVolumeMaxdB,
            Pointer<Float> pflVolumeIncrementdB,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> pflVolumeMindB,
            Pointer<Float> pflVolumeMaxdB,
            Pointer<Float> pflVolumeIncrementdB,
          )>()(
        ptr.ref.lpVtbl,
        pflVolumeMindB,
        pflVolumeMaxdB,
        pflVolumeIncrementdB,
      );
}
