// IMFPMediaPlayer.dart

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
import '../../specialTypes.dart';
import '../../media/mediafoundation/structs.g.dart';
import '../../media/mediafoundation/IMFPMediaItem.dart';

/// @nodoc
const IID_IMFPMediaPlayer = '{A714590A-58AF-430A-85BF-44F5EC838D85}';

/// {@category Interface}
/// {@category com}
class IMFPMediaPlayer extends IUnknown {
  // vtable begins at 3, is 36 entries long.
  IMFPMediaPlayer(Pointer<COMObject> ptr) : super(ptr);

  int Play() => ptr.ref.lpVtbl.value
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

  int Pause() => ptr.ref.lpVtbl.value
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

  int Stop() => ptr.ref.lpVtbl.value
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

  int FrameStep() => ptr.ref.lpVtbl.value
          .elementAt(6)
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

  int SetPosition(
    Pointer<GUID> guidPositionType,
    Pointer<PROPVARIANT> pvPositionValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidPositionType,
            Pointer<PROPVARIANT> pvPositionValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidPositionType,
            Pointer<PROPVARIANT> pvPositionValue,
          )>()(
        ptr.ref.lpVtbl,
        guidPositionType,
        pvPositionValue,
      );

  int GetPosition(
    Pointer<GUID> guidPositionType,
    Pointer<PROPVARIANT> pvPositionValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidPositionType,
            Pointer<PROPVARIANT> pvPositionValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidPositionType,
            Pointer<PROPVARIANT> pvPositionValue,
          )>()(
        ptr.ref.lpVtbl,
        guidPositionType,
        pvPositionValue,
      );

  int GetDuration(
    Pointer<GUID> guidPositionType,
    Pointer<PROPVARIANT> pvDurationValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidPositionType,
            Pointer<PROPVARIANT> pvDurationValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidPositionType,
            Pointer<PROPVARIANT> pvDurationValue,
          )>()(
        ptr.ref.lpVtbl,
        guidPositionType,
        pvDurationValue,
      );

  int SetRate(
    double flRate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float flRate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double flRate,
          )>()(
        ptr.ref.lpVtbl,
        flRate,
      );

  int GetRate(
    Pointer<Float> pflRate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> pflRate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> pflRate,
          )>()(
        ptr.ref.lpVtbl,
        pflRate,
      );

  int GetSupportedRates(
    int fForwardDirection,
    Pointer<Float> pflSlowestRate,
    Pointer<Float> pflFastestRate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fForwardDirection,
            Pointer<Float> pflSlowestRate,
            Pointer<Float> pflFastestRate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fForwardDirection,
            Pointer<Float> pflSlowestRate,
            Pointer<Float> pflFastestRate,
          )>()(
        ptr.ref.lpVtbl,
        fForwardDirection,
        pflSlowestRate,
        pflFastestRate,
      );

  int GetState(
    Pointer<Int32> peState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> peState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> peState,
          )>()(
        ptr.ref.lpVtbl,
        peState,
      );

  int CreateMediaItemFromURL(
    Pointer<Utf16> pwszURL,
    int fSync,
    int dwUserData,
    Pointer<Pointer<COMObject>> ppMediaItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszURL,
            Int32 fSync,
            IntPtr dwUserData,
            Pointer<Pointer<COMObject>> ppMediaItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszURL,
            int fSync,
            int dwUserData,
            Pointer<Pointer<COMObject>> ppMediaItem,
          )>()(
        ptr.ref.lpVtbl,
        pwszURL,
        fSync,
        dwUserData,
        ppMediaItem,
      );

  int CreateMediaItemFromObject(
    Pointer<COMObject> pIUnknownObj,
    int fSync,
    int dwUserData,
    Pointer<Pointer<COMObject>> ppMediaItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIUnknownObj,
            Int32 fSync,
            IntPtr dwUserData,
            Pointer<Pointer<COMObject>> ppMediaItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIUnknownObj,
            int fSync,
            int dwUserData,
            Pointer<Pointer<COMObject>> ppMediaItem,
          )>()(
        ptr.ref.lpVtbl,
        pIUnknownObj,
        fSync,
        dwUserData,
        ppMediaItem,
      );

  int SetMediaItem(
    Pointer<COMObject> pIMFPMediaItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIMFPMediaItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIMFPMediaItem,
          )>()(
        ptr.ref.lpVtbl,
        pIMFPMediaItem,
      );

  int ClearMediaItem() => ptr.ref.lpVtbl.value
          .elementAt(17)
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

  int GetMediaItem(
    Pointer<Pointer<COMObject>> ppIMFPMediaItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIMFPMediaItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIMFPMediaItem,
          )>()(
        ptr.ref.lpVtbl,
        ppIMFPMediaItem,
      );

  int GetVolume(
    Pointer<Float> pflVolume,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> pflVolume,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> pflVolume,
          )>()(
        ptr.ref.lpVtbl,
        pflVolume,
      );

  int SetVolume(
    double flVolume,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float flVolume,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double flVolume,
          )>()(
        ptr.ref.lpVtbl,
        flVolume,
      );

  int GetBalance(
    Pointer<Float> pflBalance,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> pflBalance,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> pflBalance,
          )>()(
        ptr.ref.lpVtbl,
        pflBalance,
      );

  int SetBalance(
    double flBalance,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float flBalance,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double flBalance,
          )>()(
        ptr.ref.lpVtbl,
        flBalance,
      );

  int GetMute(
    Pointer<Int32> pfMute,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfMute,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfMute,
          )>()(
        ptr.ref.lpVtbl,
        pfMute,
      );

  int SetMute(
    int fMute,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fMute,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fMute,
          )>()(
        ptr.ref.lpVtbl,
        fMute,
      );

  int GetNativeVideoSize(
    Pointer<SIZE> pszVideo,
    Pointer<SIZE> pszARVideo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SIZE> pszVideo,
            Pointer<SIZE> pszARVideo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SIZE> pszVideo,
            Pointer<SIZE> pszARVideo,
          )>()(
        ptr.ref.lpVtbl,
        pszVideo,
        pszARVideo,
      );

  int GetIdealVideoSize(
    Pointer<SIZE> pszMin,
    Pointer<SIZE> pszMax,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SIZE> pszMin,
            Pointer<SIZE> pszMax,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SIZE> pszMin,
            Pointer<SIZE> pszMax,
          )>()(
        ptr.ref.lpVtbl,
        pszMin,
        pszMax,
      );

  int SetVideoSourceRect(
    Pointer<MFVideoNormalizedRect> pnrcSource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<MFVideoNormalizedRect> pnrcSource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<MFVideoNormalizedRect> pnrcSource,
          )>()(
        ptr.ref.lpVtbl,
        pnrcSource,
      );

  int GetVideoSourceRect(
    Pointer<MFVideoNormalizedRect> pnrcSource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<MFVideoNormalizedRect> pnrcSource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<MFVideoNormalizedRect> pnrcSource,
          )>()(
        ptr.ref.lpVtbl,
        pnrcSource,
      );

  int SetAspectRatioMode(
    int dwAspectRatioMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwAspectRatioMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwAspectRatioMode,
          )>()(
        ptr.ref.lpVtbl,
        dwAspectRatioMode,
      );

  int GetAspectRatioMode(
    Pointer<Uint32> pdwAspectRatioMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwAspectRatioMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwAspectRatioMode,
          )>()(
        ptr.ref.lpVtbl,
        pdwAspectRatioMode,
      );

  int GetVideoWindow(
    Pointer<IntPtr> phwndVideo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> phwndVideo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> phwndVideo,
          )>()(
        ptr.ref.lpVtbl,
        phwndVideo,
      );

  int UpdateVideo() => ptr.ref.lpVtbl.value
          .elementAt(32)
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

  int SetBorderColor(
    int Clr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Clr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Clr,
          )>()(
        ptr.ref.lpVtbl,
        Clr,
      );

  int GetBorderColor(
    Pointer<Uint32> pClr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pClr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pClr,
          )>()(
        ptr.ref.lpVtbl,
        pClr,
      );

  int InsertEffect(
    Pointer<COMObject> pEffect,
    int fOptional,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
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

  int RemoveEffect(
    Pointer<COMObject> pEffect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pEffect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pEffect,
          )>()(
        ptr.ref.lpVtbl,
        pEffect,
      );

  int RemoveAllEffects() => ptr.ref.lpVtbl.value
          .elementAt(37)
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
          .elementAt(38)
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
