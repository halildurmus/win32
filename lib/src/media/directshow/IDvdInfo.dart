// IDvdInfo.dart

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
import '../../media/directshow/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDvdInfo = '{A70EFE60-E2A3-11D0-A9BE-00AA0061BE93}';

/// {@category Interface}
/// {@category com}
class IDvdInfo extends IUnknown {
  // vtable begins at 3, is 23 entries long.
  IDvdInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetCurrentDomain(
    Pointer<Int32> pDomain,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pDomain,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pDomain,
          )>()(
        ptr.ref.lpVtbl,
        pDomain,
      );

  int GetCurrentLocation(
    Pointer<DVD_PLAYBACK_LOCATION> pLocation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DVD_PLAYBACK_LOCATION> pLocation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DVD_PLAYBACK_LOCATION> pLocation,
          )>()(
        ptr.ref.lpVtbl,
        pLocation,
      );

  int GetTotalTitleTime(
    Pointer<Uint32> pulTotalTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulTotalTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulTotalTime,
          )>()(
        ptr.ref.lpVtbl,
        pulTotalTime,
      );

  int GetCurrentButton(
    Pointer<Uint32> pulButtonsAvailable,
    Pointer<Uint32> pulCurrentButton,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulButtonsAvailable,
            Pointer<Uint32> pulCurrentButton,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulButtonsAvailable,
            Pointer<Uint32> pulCurrentButton,
          )>()(
        ptr.ref.lpVtbl,
        pulButtonsAvailable,
        pulCurrentButton,
      );

  int GetCurrentAngle(
    Pointer<Uint32> pulAnglesAvailable,
    Pointer<Uint32> pulCurrentAngle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulAnglesAvailable,
            Pointer<Uint32> pulCurrentAngle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulAnglesAvailable,
            Pointer<Uint32> pulCurrentAngle,
          )>()(
        ptr.ref.lpVtbl,
        pulAnglesAvailable,
        pulCurrentAngle,
      );

  int GetCurrentAudio(
    Pointer<Uint32> pulStreamsAvailable,
    Pointer<Uint32> pulCurrentStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulStreamsAvailable,
            Pointer<Uint32> pulCurrentStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulStreamsAvailable,
            Pointer<Uint32> pulCurrentStream,
          )>()(
        ptr.ref.lpVtbl,
        pulStreamsAvailable,
        pulCurrentStream,
      );

  int GetCurrentSubpicture(
    Pointer<Uint32> pulStreamsAvailable,
    Pointer<Uint32> pulCurrentStream,
    Pointer<Int32> pIsDisabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulStreamsAvailable,
            Pointer<Uint32> pulCurrentStream,
            Pointer<Int32> pIsDisabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulStreamsAvailable,
            Pointer<Uint32> pulCurrentStream,
            Pointer<Int32> pIsDisabled,
          )>()(
        ptr.ref.lpVtbl,
        pulStreamsAvailable,
        pulCurrentStream,
        pIsDisabled,
      );

  int GetCurrentUOPS(
    Pointer<Uint32> pUOP,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pUOP,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pUOP,
          )>()(
        ptr.ref.lpVtbl,
        pUOP,
      );

  int GetAllSPRMs(
    Pointer<Pointer<Uint16>> pRegisterArray,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Uint16>> pRegisterArray,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Uint16>> pRegisterArray,
          )>()(
        ptr.ref.lpVtbl,
        pRegisterArray,
      );

  int GetAllGPRMs(
    Pointer<Pointer<Uint16>> pRegisterArray,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Uint16>> pRegisterArray,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Uint16>> pRegisterArray,
          )>()(
        ptr.ref.lpVtbl,
        pRegisterArray,
      );

  int GetAudioLanguage(
    int ulStream,
    Pointer<Uint32> pLanguage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulStream,
            Pointer<Uint32> pLanguage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulStream,
            Pointer<Uint32> pLanguage,
          )>()(
        ptr.ref.lpVtbl,
        ulStream,
        pLanguage,
      );

  int GetSubpictureLanguage(
    int ulStream,
    Pointer<Uint32> pLanguage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulStream,
            Pointer<Uint32> pLanguage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulStream,
            Pointer<Uint32> pLanguage,
          )>()(
        ptr.ref.lpVtbl,
        ulStream,
        pLanguage,
      );

  int GetTitleAttributes(
    int ulTitle,
    Pointer<DVD_ATR> pATR,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulTitle,
            Pointer<DVD_ATR> pATR,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulTitle,
            Pointer<DVD_ATR> pATR,
          )>()(
        ptr.ref.lpVtbl,
        ulTitle,
        pATR,
      );

  int GetVMGAttributes(
    Pointer<DVD_ATR> pATR,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DVD_ATR> pATR,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DVD_ATR> pATR,
          )>()(
        ptr.ref.lpVtbl,
        pATR,
      );

  int GetCurrentVideoAttributes(
    Pointer<Pointer<Uint8>> pATR,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Uint8>> pATR,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Uint8>> pATR,
          )>()(
        ptr.ref.lpVtbl,
        pATR,
      );

  int GetCurrentAudioAttributes(
    Pointer<Pointer<Uint8>> pATR,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Uint8>> pATR,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Uint8>> pATR,
          )>()(
        ptr.ref.lpVtbl,
        pATR,
      );

  int GetCurrentSubpictureAttributes(
    Pointer<Pointer<Uint8>> pATR,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Uint8>> pATR,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Uint8>> pATR,
          )>()(
        ptr.ref.lpVtbl,
        pATR,
      );

  int GetCurrentVolumeInfo(
    Pointer<Uint32> pulNumOfVol,
    Pointer<Uint32> pulThisVolNum,
    Pointer<Int32> pSide,
    Pointer<Uint32> pulNumOfTitles,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulNumOfVol,
            Pointer<Uint32> pulThisVolNum,
            Pointer<Int32> pSide,
            Pointer<Uint32> pulNumOfTitles,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulNumOfVol,
            Pointer<Uint32> pulThisVolNum,
            Pointer<Int32> pSide,
            Pointer<Uint32> pulNumOfTitles,
          )>()(
        ptr.ref.lpVtbl,
        pulNumOfVol,
        pulThisVolNum,
        pSide,
        pulNumOfTitles,
      );

  int GetDVDTextInfo(
    Pointer<Uint8> pTextManager,
    int ulBufSize,
    Pointer<Uint32> pulActualSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pTextManager,
            Uint32 ulBufSize,
            Pointer<Uint32> pulActualSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pTextManager,
            int ulBufSize,
            Pointer<Uint32> pulActualSize,
          )>()(
        ptr.ref.lpVtbl,
        pTextManager,
        ulBufSize,
        pulActualSize,
      );

  int GetPlayerParentalLevel(
    Pointer<Uint32> pulParentalLevel,
    Pointer<Uint32> pulCountryCode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulParentalLevel,
            Pointer<Uint32> pulCountryCode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulParentalLevel,
            Pointer<Uint32> pulCountryCode,
          )>()(
        ptr.ref.lpVtbl,
        pulParentalLevel,
        pulCountryCode,
      );

  int GetNumberOfChapters(
    int ulTitle,
    Pointer<Uint32> pulNumberOfChapters,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulTitle,
            Pointer<Uint32> pulNumberOfChapters,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulTitle,
            Pointer<Uint32> pulNumberOfChapters,
          )>()(
        ptr.ref.lpVtbl,
        ulTitle,
        pulNumberOfChapters,
      );

  int GetTitleParentalLevels(
    int ulTitle,
    Pointer<Uint32> pulParentalLevels,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulTitle,
            Pointer<Uint32> pulParentalLevels,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulTitle,
            Pointer<Uint32> pulParentalLevels,
          )>()(
        ptr.ref.lpVtbl,
        ulTitle,
        pulParentalLevels,
      );

  int GetRoot(
    Pointer<Utf8> pRoot,
    int ulBufSize,
    Pointer<Uint32> pulActualSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> pRoot,
            Uint32 ulBufSize,
            Pointer<Uint32> pulActualSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> pRoot,
            int ulBufSize,
            Pointer<Uint32> pulActualSize,
          )>()(
        ptr.ref.lpVtbl,
        pRoot,
        ulBufSize,
        pulActualSize,
      );
}
