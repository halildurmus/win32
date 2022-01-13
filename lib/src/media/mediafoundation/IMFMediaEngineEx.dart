// IMFMediaEngineEx.dart

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

import '../../media/mediafoundation/IMFMediaEngine.dart';
import '../../media/mediafoundation/IMFByteStream.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IMFMediaEngineEx = '{83015EAD-B1E6-40D0-A98A-37145FFE1AD1}';

/// {@category Interface}
/// {@category com}
class IMFMediaEngineEx extends IMFMediaEngine {
  // vtable begins at 45, is 37 entries long.
  IMFMediaEngineEx(Pointer<COMObject> ptr) : super(ptr);

  int SetSourceFromByteStream(
    Pointer<COMObject> pByteStream,
    Pointer<Utf16> pURL,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(45)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pByteStream,
            Pointer<Utf16> pURL,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pByteStream,
            Pointer<Utf16> pURL,
          )>()(
        ptr.ref.lpVtbl,
        pByteStream,
        pURL,
      );

  int GetStatistics(
    int StatisticID,
    Pointer<PROPVARIANT> pStatistic,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(46)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 StatisticID,
            Pointer<PROPVARIANT> pStatistic,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int StatisticID,
            Pointer<PROPVARIANT> pStatistic,
          )>()(
        ptr.ref.lpVtbl,
        StatisticID,
        pStatistic,
      );

  int UpdateVideoStream(
    Pointer<MFVideoNormalizedRect> pSrc,
    Pointer<RECT> pDst,
    Pointer<MFARGB> pBorderClr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(47)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<MFVideoNormalizedRect> pSrc,
            Pointer<RECT> pDst,
            Pointer<MFARGB> pBorderClr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<MFVideoNormalizedRect> pSrc,
            Pointer<RECT> pDst,
            Pointer<MFARGB> pBorderClr,
          )>()(
        ptr.ref.lpVtbl,
        pSrc,
        pDst,
        pBorderClr,
      );

  double GetBalance() => ptr.ref.lpVtbl.value
          .elementAt(48)
          .cast<
              Pointer<
                  NativeFunction<
                      Double Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              double Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int SetBalance(
    double balance,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(49)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double balance,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double balance,
          )>()(
        ptr.ref.lpVtbl,
        balance,
      );

  int IsPlaybackRateSupported(
    double rate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(50)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double rate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double rate,
          )>()(
        ptr.ref.lpVtbl,
        rate,
      );

  int FrameStep(
    int Forward,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(51)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Forward,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Forward,
          )>()(
        ptr.ref.lpVtbl,
        Forward,
      );

  int GetResourceCharacteristics(
    Pointer<Uint32> pCharacteristics,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(52)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pCharacteristics,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pCharacteristics,
          )>()(
        ptr.ref.lpVtbl,
        pCharacteristics,
      );

  int GetPresentationAttribute(
    Pointer<GUID> guidMFAttribute,
    Pointer<PROPVARIANT> pvValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(53)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidMFAttribute,
            Pointer<PROPVARIANT> pvValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidMFAttribute,
            Pointer<PROPVARIANT> pvValue,
          )>()(
        ptr.ref.lpVtbl,
        guidMFAttribute,
        pvValue,
      );

  int GetNumberOfStreams(
    Pointer<Uint32> pdwStreamCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(54)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwStreamCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwStreamCount,
          )>()(
        ptr.ref.lpVtbl,
        pdwStreamCount,
      );

  int GetStreamAttribute(
    int dwStreamIndex,
    Pointer<GUID> guidMFAttribute,
    Pointer<PROPVARIANT> pvValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(55)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamIndex,
            Pointer<GUID> guidMFAttribute,
            Pointer<PROPVARIANT> pvValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamIndex,
            Pointer<GUID> guidMFAttribute,
            Pointer<PROPVARIANT> pvValue,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamIndex,
        guidMFAttribute,
        pvValue,
      );

  int GetStreamSelection(
    int dwStreamIndex,
    Pointer<Int32> pEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(56)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamIndex,
            Pointer<Int32> pEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamIndex,
            Pointer<Int32> pEnabled,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamIndex,
        pEnabled,
      );

  int SetStreamSelection(
    int dwStreamIndex,
    int Enabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(57)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamIndex,
            Int32 Enabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamIndex,
            int Enabled,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamIndex,
        Enabled,
      );

  int ApplyStreamSelections() => ptr.ref.lpVtbl.value
          .elementAt(58)
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

  int IsProtected(
    Pointer<Int32> pProtected,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(59)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pProtected,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pProtected,
          )>()(
        ptr.ref.lpVtbl,
        pProtected,
      );

  int InsertVideoEffect(
    Pointer<COMObject> pEffect,
    int fOptional,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(60)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pEffect,
            Int32 fOptional,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pEffect,
            int fOptional,
          )>()(
        ptr.ref.lpVtbl,
        pEffect,
        fOptional,
      );

  int InsertAudioEffect(
    Pointer<COMObject> pEffect,
    int fOptional,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(61)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pEffect,
            Int32 fOptional,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pEffect,
            int fOptional,
          )>()(
        ptr.ref.lpVtbl,
        pEffect,
        fOptional,
      );

  int RemoveAllEffects() => ptr.ref.lpVtbl.value
          .elementAt(62)
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

  int SetTimelineMarkerTimer(
    double timeToFire,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(63)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double timeToFire,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double timeToFire,
          )>()(
        ptr.ref.lpVtbl,
        timeToFire,
      );

  int GetTimelineMarkerTimer(
    Pointer<Double> pTimeToFire,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(64)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> pTimeToFire,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> pTimeToFire,
          )>()(
        ptr.ref.lpVtbl,
        pTimeToFire,
      );

  int CancelTimelineMarkerTimer() => ptr.ref.lpVtbl.value
          .elementAt(65)
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

  int IsStereo3D() => ptr.ref.lpVtbl.value
          .elementAt(66)
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

  int GetStereo3DFramePackingMode(
    Pointer<Int32> packMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(67)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> packMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> packMode,
          )>()(
        ptr.ref.lpVtbl,
        packMode,
      );

  int SetStereo3DFramePackingMode(
    int packMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(68)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 packMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int packMode,
          )>()(
        ptr.ref.lpVtbl,
        packMode,
      );

  int GetStereo3DRenderMode(
    Pointer<Int32> outputType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(69)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> outputType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> outputType,
          )>()(
        ptr.ref.lpVtbl,
        outputType,
      );

  int SetStereo3DRenderMode(
    int outputType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(70)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 outputType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int outputType,
          )>()(
        ptr.ref.lpVtbl,
        outputType,
      );

  int EnableWindowlessSwapchainMode(
    int fEnable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(71)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fEnable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fEnable,
          )>()(
        ptr.ref.lpVtbl,
        fEnable,
      );

  int GetVideoSwapchainHandle(
    Pointer<IntPtr> phSwapchain,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(72)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> phSwapchain,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> phSwapchain,
          )>()(
        ptr.ref.lpVtbl,
        phSwapchain,
      );

  int EnableHorizontalMirrorMode(
    int fEnable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(73)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fEnable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fEnable,
          )>()(
        ptr.ref.lpVtbl,
        fEnable,
      );

  int GetAudioStreamCategory(
    Pointer<Uint32> pCategory,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(74)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pCategory,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pCategory,
          )>()(
        ptr.ref.lpVtbl,
        pCategory,
      );

  int SetAudioStreamCategory(
    int category,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(75)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 category,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int category,
          )>()(
        ptr.ref.lpVtbl,
        category,
      );

  int GetAudioEndpointRole(
    Pointer<Uint32> pRole,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(76)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pRole,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pRole,
          )>()(
        ptr.ref.lpVtbl,
        pRole,
      );

  int SetAudioEndpointRole(
    int role,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(77)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 role,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int role,
          )>()(
        ptr.ref.lpVtbl,
        role,
      );

  int GetRealTimeMode(
    Pointer<Int32> pfEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(78)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfEnabled,
          )>()(
        ptr.ref.lpVtbl,
        pfEnabled,
      );

  int SetRealTimeMode(
    int fEnable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(79)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fEnable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fEnable,
          )>()(
        ptr.ref.lpVtbl,
        fEnable,
      );

  int SetCurrentTimeEx(
    double seekTime,
    int seekMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(80)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double seekTime,
            Int32 seekMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double seekTime,
            int seekMode,
          )>()(
        ptr.ref.lpVtbl,
        seekTime,
        seekMode,
      );

  int EnableTimeUpdateTimer(
    int fEnableTimer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(81)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fEnableTimer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fEnableTimer,
          )>()(
        ptr.ref.lpVtbl,
        fEnableTimer,
      );
}
