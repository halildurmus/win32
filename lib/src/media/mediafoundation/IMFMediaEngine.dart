// IMFMediaEngine.dart

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
import '../../media/mediafoundation/IMFMediaError.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/structs.g.dart';
import '../../media/mediafoundation/IMFMediaEngineSrcElements.dart';
import '../../media/mediafoundation/IMFMediaTimeRange.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IMFMediaEngine = '{98A1B0BB-03EB-4935-AE7C-93C1FA0E1C93}';

/// {@category Interface}
/// {@category com}
class IMFMediaEngine extends IUnknown {
  // vtable begins at 3, is 42 entries long.
  IMFMediaEngine(Pointer<COMObject> ptr) : super(ptr);

  int GetError(
    Pointer<Pointer<COMObject>> ppError,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppError,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppError,
          )>()(
        ptr.ref.lpVtbl,
        ppError,
      );

  int SetErrorCode(
    int error,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 error,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int error,
          )>()(
        ptr.ref.lpVtbl,
        error,
      );

  int SetSourceElements(
    Pointer<COMObject> pSrcElements,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSrcElements,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSrcElements,
          )>()(
        ptr.ref.lpVtbl,
        pSrcElements,
      );

  int SetSource(
    Pointer<Utf16> pUrl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pUrl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pUrl,
          )>()(
        ptr.ref.lpVtbl,
        pUrl,
      );

  int GetCurrentSource(
    Pointer<Pointer<Utf16>> ppUrl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppUrl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppUrl,
          )>()(
        ptr.ref.lpVtbl,
        ppUrl,
      );

  int GetNetworkState() => ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint16 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetPreload() => ptr.ref.lpVtbl.value
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

  int SetPreload(
    int Preload,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Preload,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Preload,
          )>()(
        ptr.ref.lpVtbl,
        Preload,
      );

  int GetBuffered(
    Pointer<Pointer<COMObject>> ppBuffered,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppBuffered,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppBuffered,
          )>()(
        ptr.ref.lpVtbl,
        ppBuffered,
      );

  int Load() => ptr.ref.lpVtbl.value
          .elementAt(12)
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

  int CanPlayType(
    Pointer<Utf16> type,
    Pointer<Int32> pAnswer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> type,
            Pointer<Int32> pAnswer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> type,
            Pointer<Int32> pAnswer,
          )>()(
        ptr.ref.lpVtbl,
        type,
        pAnswer,
      );

  int GetReadyState() => ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint16 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int IsSeeking() => ptr.ref.lpVtbl.value
          .elementAt(15)
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

  double GetCurrentTime() => ptr.ref.lpVtbl.value
          .elementAt(16)
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

  int SetCurrentTime(
    double seekTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double seekTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double seekTime,
          )>()(
        ptr.ref.lpVtbl,
        seekTime,
      );

  double GetStartTime() => ptr.ref.lpVtbl.value
          .elementAt(18)
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

  double GetDuration() => ptr.ref.lpVtbl.value
          .elementAt(19)
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

  int IsPaused() => ptr.ref.lpVtbl.value
          .elementAt(20)
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

  double GetDefaultPlaybackRate() => ptr.ref.lpVtbl.value
          .elementAt(21)
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

  int SetDefaultPlaybackRate(
    double Rate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double Rate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double Rate,
          )>()(
        ptr.ref.lpVtbl,
        Rate,
      );

  double GetPlaybackRate() => ptr.ref.lpVtbl.value
          .elementAt(23)
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

  int SetPlaybackRate(
    double Rate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double Rate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double Rate,
          )>()(
        ptr.ref.lpVtbl,
        Rate,
      );

  int GetPlayed(
    Pointer<Pointer<COMObject>> ppPlayed,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPlayed,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPlayed,
          )>()(
        ptr.ref.lpVtbl,
        ppPlayed,
      );

  int GetSeekable(
    Pointer<Pointer<COMObject>> ppSeekable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSeekable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSeekable,
          )>()(
        ptr.ref.lpVtbl,
        ppSeekable,
      );

  int IsEnded() => ptr.ref.lpVtbl.value
          .elementAt(27)
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

  int GetAutoPlay() => ptr.ref.lpVtbl.value
          .elementAt(28)
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

  int SetAutoPlay(
    int AutoPlay,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 AutoPlay,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int AutoPlay,
          )>()(
        ptr.ref.lpVtbl,
        AutoPlay,
      );

  int GetLoop() => ptr.ref.lpVtbl.value
          .elementAt(30)
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

  int SetLoop(
    int Loop,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Loop,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Loop,
          )>()(
        ptr.ref.lpVtbl,
        Loop,
      );

  int Play() => ptr.ref.lpVtbl.value
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

  int Pause() => ptr.ref.lpVtbl.value
          .elementAt(33)
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

  int GetMuted() => ptr.ref.lpVtbl.value
          .elementAt(34)
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

  int SetMuted(
    int Muted,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Muted,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Muted,
          )>()(
        ptr.ref.lpVtbl,
        Muted,
      );

  double GetVolume() => ptr.ref.lpVtbl.value
          .elementAt(36)
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

  int SetVolume(
    double Volume,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double Volume,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double Volume,
          )>()(
        ptr.ref.lpVtbl,
        Volume,
      );

  int HasVideo() => ptr.ref.lpVtbl.value
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

  int HasAudio() => ptr.ref.lpVtbl.value
          .elementAt(39)
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

  int GetNativeVideoSize(
    Pointer<Uint32> cx,
    Pointer<Uint32> cy,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(40)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> cx,
            Pointer<Uint32> cy,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> cx,
            Pointer<Uint32> cy,
          )>()(
        ptr.ref.lpVtbl,
        cx,
        cy,
      );

  int GetVideoAspectRatio(
    Pointer<Uint32> cx,
    Pointer<Uint32> cy,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(41)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> cx,
            Pointer<Uint32> cy,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> cx,
            Pointer<Uint32> cy,
          )>()(
        ptr.ref.lpVtbl,
        cx,
        cy,
      );

  int Shutdown() => ptr.ref.lpVtbl.value
          .elementAt(42)
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

  int TransferVideoFrame(
    Pointer<COMObject> pDstSurf,
    Pointer<MFVideoNormalizedRect> pSrc,
    Pointer<RECT> pDst,
    Pointer<MFARGB> pBorderClr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(43)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDstSurf,
            Pointer<MFVideoNormalizedRect> pSrc,
            Pointer<RECT> pDst,
            Pointer<MFARGB> pBorderClr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDstSurf,
            Pointer<MFVideoNormalizedRect> pSrc,
            Pointer<RECT> pDst,
            Pointer<MFARGB> pBorderClr,
          )>()(
        ptr.ref.lpVtbl,
        pDstSurf,
        pSrc,
        pDst,
        pBorderClr,
      );

  int OnVideoStreamTick(
    Pointer<Int64> pPts,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(44)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int64> pPts,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int64> pPts,
          )>()(
        ptr.ref.lpVtbl,
        pPts,
      );
}
