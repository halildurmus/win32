// IDvdInfo2.dart

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
import '../../media/directshow/IDvdState.dart';
import '../../media/directshow/IDvdCmd.dart';

/// @nodoc
const IID_IDvdInfo2 = '{34151510-EEC0-11D2-8201-00A0C9D74842}';

/// {@category Interface}
/// {@category com}
class IDvdInfo2 extends IUnknown {
  // vtable begins at 3, is 39 entries long.
  IDvdInfo2(Pointer<COMObject> ptr) : super(ptr);

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
    Pointer<DVD_PLAYBACK_LOCATION2> pLocation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DVD_PLAYBACK_LOCATION2> pLocation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DVD_PLAYBACK_LOCATION2> pLocation,
          )>()(
        ptr.ref.lpVtbl,
        pLocation,
      );

  int GetTotalTitleTime(
    Pointer<DVD_HMSF_TIMECODE> pTotalTime,
    Pointer<Uint32> ulTimeCodeFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DVD_HMSF_TIMECODE> pTotalTime,
            Pointer<Uint32> ulTimeCodeFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DVD_HMSF_TIMECODE> pTotalTime,
            Pointer<Uint32> ulTimeCodeFlags,
          )>()(
        ptr.ref.lpVtbl,
        pTotalTime,
        ulTimeCodeFlags,
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
    Pointer<Int32> pbIsDisabled,
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
            Pointer<Int32> pbIsDisabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulStreamsAvailable,
            Pointer<Uint32> pulCurrentStream,
            Pointer<Int32> pbIsDisabled,
          )>()(
        ptr.ref.lpVtbl,
        pulStreamsAvailable,
        pulCurrentStream,
        pbIsDisabled,
      );

  int GetCurrentUOPS(
    Pointer<Uint32> pulUOPs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulUOPs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulUOPs,
          )>()(
        ptr.ref.lpVtbl,
        pulUOPs,
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
    Pointer<DVD_MenuAttributes> pMenu,
    Pointer<DVD_TitleAttributes> pTitle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulTitle,
            Pointer<DVD_MenuAttributes> pMenu,
            Pointer<DVD_TitleAttributes> pTitle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulTitle,
            Pointer<DVD_MenuAttributes> pMenu,
            Pointer<DVD_TitleAttributes> pTitle,
          )>()(
        ptr.ref.lpVtbl,
        ulTitle,
        pMenu,
        pTitle,
      );

  int GetVMGAttributes(
    Pointer<DVD_MenuAttributes> pATR,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DVD_MenuAttributes> pATR,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DVD_MenuAttributes> pATR,
          )>()(
        ptr.ref.lpVtbl,
        pATR,
      );

  int GetCurrentVideoAttributes(
    Pointer<DVD_VideoAttributes> pATR,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DVD_VideoAttributes> pATR,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DVD_VideoAttributes> pATR,
          )>()(
        ptr.ref.lpVtbl,
        pATR,
      );

  int GetAudioAttributes(
    int ulStream,
    Pointer<DVD_AudioAttributes> pATR,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulStream,
            Pointer<DVD_AudioAttributes> pATR,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulStream,
            Pointer<DVD_AudioAttributes> pATR,
          )>()(
        ptr.ref.lpVtbl,
        ulStream,
        pATR,
      );

  int GetKaraokeAttributes(
    int ulStream,
    Pointer<DVD_KaraokeAttributes> pAttributes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulStream,
            Pointer<DVD_KaraokeAttributes> pAttributes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulStream,
            Pointer<DVD_KaraokeAttributes> pAttributes,
          )>()(
        ptr.ref.lpVtbl,
        ulStream,
        pAttributes,
      );

  int GetSubpictureAttributes(
    int ulStream,
    Pointer<DVD_SubpictureAttributes> pATR,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulStream,
            Pointer<DVD_SubpictureAttributes> pATR,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulStream,
            Pointer<DVD_SubpictureAttributes> pATR,
          )>()(
        ptr.ref.lpVtbl,
        ulStream,
        pATR,
      );

  int GetDVDVolumeInfo(
    Pointer<Uint32> pulNumOfVolumes,
    Pointer<Uint32> pulVolume,
    Pointer<Int32> pSide,
    Pointer<Uint32> pulNumOfTitles,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulNumOfVolumes,
            Pointer<Uint32> pulVolume,
            Pointer<Int32> pSide,
            Pointer<Uint32> pulNumOfTitles,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulNumOfVolumes,
            Pointer<Uint32> pulVolume,
            Pointer<Int32> pSide,
            Pointer<Uint32> pulNumOfTitles,
          )>()(
        ptr.ref.lpVtbl,
        pulNumOfVolumes,
        pulVolume,
        pSide,
        pulNumOfTitles,
      );

  int GetDVDTextNumberOfLanguages(
    Pointer<Uint32> pulNumOfLangs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulNumOfLangs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulNumOfLangs,
          )>()(
        ptr.ref.lpVtbl,
        pulNumOfLangs,
      );

  int GetDVDTextLanguageInfo(
    int ulLangIndex,
    Pointer<Uint32> pulNumOfStrings,
    Pointer<Uint32> pLangCode,
    Pointer<Int32> pbCharacterSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulLangIndex,
            Pointer<Uint32> pulNumOfStrings,
            Pointer<Uint32> pLangCode,
            Pointer<Int32> pbCharacterSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulLangIndex,
            Pointer<Uint32> pulNumOfStrings,
            Pointer<Uint32> pLangCode,
            Pointer<Int32> pbCharacterSet,
          )>()(
        ptr.ref.lpVtbl,
        ulLangIndex,
        pulNumOfStrings,
        pLangCode,
        pbCharacterSet,
      );

  int GetDVDTextStringAsNative(
    int ulLangIndex,
    int ulStringIndex,
    Pointer<Uint8> pbBuffer,
    int ulMaxBufferSize,
    Pointer<Uint32> pulActualSize,
    Pointer<Int32> pType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulLangIndex,
            Uint32 ulStringIndex,
            Pointer<Uint8> pbBuffer,
            Uint32 ulMaxBufferSize,
            Pointer<Uint32> pulActualSize,
            Pointer<Int32> pType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulLangIndex,
            int ulStringIndex,
            Pointer<Uint8> pbBuffer,
            int ulMaxBufferSize,
            Pointer<Uint32> pulActualSize,
            Pointer<Int32> pType,
          )>()(
        ptr.ref.lpVtbl,
        ulLangIndex,
        ulStringIndex,
        pbBuffer,
        ulMaxBufferSize,
        pulActualSize,
        pType,
      );

  int GetDVDTextStringAsUnicode(
    int ulLangIndex,
    int ulStringIndex,
    Pointer<Utf16> pchwBuffer,
    int ulMaxBufferSize,
    Pointer<Uint32> pulActualSize,
    Pointer<Int32> pType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulLangIndex,
            Uint32 ulStringIndex,
            Pointer<Utf16> pchwBuffer,
            Uint32 ulMaxBufferSize,
            Pointer<Uint32> pulActualSize,
            Pointer<Int32> pType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulLangIndex,
            int ulStringIndex,
            Pointer<Utf16> pchwBuffer,
            int ulMaxBufferSize,
            Pointer<Uint32> pulActualSize,
            Pointer<Int32> pType,
          )>()(
        ptr.ref.lpVtbl,
        ulLangIndex,
        ulStringIndex,
        pchwBuffer,
        ulMaxBufferSize,
        pulActualSize,
        pType,
      );

  int GetPlayerParentalLevel(
    Pointer<Uint32> pulParentalLevel,
    Pointer<Uint8> pbCountryCode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulParentalLevel,
            Pointer<Uint8> pbCountryCode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulParentalLevel,
            Pointer<Uint8> pbCountryCode,
          )>()(
        ptr.ref.lpVtbl,
        pulParentalLevel,
        pbCountryCode,
      );

  int GetNumberOfChapters(
    int ulTitle,
    Pointer<Uint32> pulNumOfChapters,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulTitle,
            Pointer<Uint32> pulNumOfChapters,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulTitle,
            Pointer<Uint32> pulNumOfChapters,
          )>()(
        ptr.ref.lpVtbl,
        ulTitle,
        pulNumOfChapters,
      );

  int GetTitleParentalLevels(
    int ulTitle,
    Pointer<Uint32> pulParentalLevels,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
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

  int GetDVDDirectory(
    Pointer<Utf16> pszwPath,
    int ulMaxSize,
    Pointer<Uint32> pulActualSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszwPath,
            Uint32 ulMaxSize,
            Pointer<Uint32> pulActualSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszwPath,
            int ulMaxSize,
            Pointer<Uint32> pulActualSize,
          )>()(
        ptr.ref.lpVtbl,
        pszwPath,
        ulMaxSize,
        pulActualSize,
      );

  int IsAudioStreamEnabled(
    int ulStreamNum,
    Pointer<Int32> pbEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulStreamNum,
            Pointer<Int32> pbEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulStreamNum,
            Pointer<Int32> pbEnabled,
          )>()(
        ptr.ref.lpVtbl,
        ulStreamNum,
        pbEnabled,
      );

  int GetDiscID(
    Pointer<Utf16> pszwPath,
    Pointer<Uint64> pullDiscID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszwPath,
            Pointer<Uint64> pullDiscID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszwPath,
            Pointer<Uint64> pullDiscID,
          )>()(
        ptr.ref.lpVtbl,
        pszwPath,
        pullDiscID,
      );

  int GetState(
    Pointer<Pointer<COMObject>> pStateData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pStateData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pStateData,
          )>()(
        ptr.ref.lpVtbl,
        pStateData,
      );

  int GetMenuLanguages(
    Pointer<Uint32> pLanguages,
    int ulMaxLanguages,
    Pointer<Uint32> pulActualLanguages,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pLanguages,
            Uint32 ulMaxLanguages,
            Pointer<Uint32> pulActualLanguages,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pLanguages,
            int ulMaxLanguages,
            Pointer<Uint32> pulActualLanguages,
          )>()(
        ptr.ref.lpVtbl,
        pLanguages,
        ulMaxLanguages,
        pulActualLanguages,
      );

  int GetButtonAtPosition(
    POINT point,
    Pointer<Uint32> pulButtonIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            POINT point,
            Pointer<Uint32> pulButtonIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            POINT point,
            Pointer<Uint32> pulButtonIndex,
          )>()(
        ptr.ref.lpVtbl,
        point,
        pulButtonIndex,
      );

  int GetCmdFromEvent(
    int lParam1,
    Pointer<Pointer<COMObject>> pCmdObj,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr lParam1,
            Pointer<Pointer<COMObject>> pCmdObj,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lParam1,
            Pointer<Pointer<COMObject>> pCmdObj,
          )>()(
        ptr.ref.lpVtbl,
        lParam1,
        pCmdObj,
      );

  int GetDefaultMenuLanguage(
    Pointer<Uint32> pLanguage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pLanguage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pLanguage,
          )>()(
        ptr.ref.lpVtbl,
        pLanguage,
      );

  int GetDefaultAudioLanguage(
    Pointer<Uint32> pLanguage,
    Pointer<Int32> pAudioExtension,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pLanguage,
            Pointer<Int32> pAudioExtension,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pLanguage,
            Pointer<Int32> pAudioExtension,
          )>()(
        ptr.ref.lpVtbl,
        pLanguage,
        pAudioExtension,
      );

  int GetDefaultSubpictureLanguage(
    Pointer<Uint32> pLanguage,
    Pointer<Int32> pSubpictureExtension,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pLanguage,
            Pointer<Int32> pSubpictureExtension,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pLanguage,
            Pointer<Int32> pSubpictureExtension,
          )>()(
        ptr.ref.lpVtbl,
        pLanguage,
        pSubpictureExtension,
      );

  int GetDecoderCaps(
    Pointer<DVD_DECODER_CAPS> pCaps,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DVD_DECODER_CAPS> pCaps,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DVD_DECODER_CAPS> pCaps,
          )>()(
        ptr.ref.lpVtbl,
        pCaps,
      );

  int GetButtonRect(
    int ulButton,
    Pointer<RECT> pRect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(40)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulButton,
            Pointer<RECT> pRect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulButton,
            Pointer<RECT> pRect,
          )>()(
        ptr.ref.lpVtbl,
        ulButton,
        pRect,
      );

  int IsSubpictureStreamEnabled(
    int ulStreamNum,
    Pointer<Int32> pbEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(41)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulStreamNum,
            Pointer<Int32> pbEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulStreamNum,
            Pointer<Int32> pbEnabled,
          )>()(
        ptr.ref.lpVtbl,
        ulStreamNum,
        pbEnabled,
      );
}
