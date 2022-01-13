// IDvdControl2.dart

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
import '../../media/directshow/IDvdCmd.dart';
import '../../foundation/structs.g.dart';
import '../../media/directshow/structs.g.dart';
import '../../media/directshow/IDvdState.dart';

/// @nodoc
const IID_IDvdControl2 = '{33BC7430-EEC0-11D2-8201-00A0C9D74842}';

/// {@category Interface}
/// {@category com}
class IDvdControl2 extends IUnknown {
  // vtable begins at 3, is 40 entries long.
  IDvdControl2(Pointer<COMObject> ptr) : super(ptr);

  int PlayTitle(
    int ulTitle,
    int dwFlags,
    Pointer<Pointer<COMObject>> ppCmd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulTitle,
            Uint32 dwFlags,
            Pointer<Pointer<COMObject>> ppCmd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulTitle,
            int dwFlags,
            Pointer<Pointer<COMObject>> ppCmd,
          )>()(
        ptr.ref.lpVtbl,
        ulTitle,
        dwFlags,
        ppCmd,
      );

  int PlayChapterInTitle(
    int ulTitle,
    int ulChapter,
    int dwFlags,
    Pointer<Pointer<COMObject>> ppCmd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulTitle,
            Uint32 ulChapter,
            Uint32 dwFlags,
            Pointer<Pointer<COMObject>> ppCmd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulTitle,
            int ulChapter,
            int dwFlags,
            Pointer<Pointer<COMObject>> ppCmd,
          )>()(
        ptr.ref.lpVtbl,
        ulTitle,
        ulChapter,
        dwFlags,
        ppCmd,
      );

  int PlayAtTimeInTitle(
    int ulTitle,
    Pointer<DVD_HMSF_TIMECODE> pStartTime,
    int dwFlags,
    Pointer<Pointer<COMObject>> ppCmd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulTitle,
            Pointer<DVD_HMSF_TIMECODE> pStartTime,
            Uint32 dwFlags,
            Pointer<Pointer<COMObject>> ppCmd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulTitle,
            Pointer<DVD_HMSF_TIMECODE> pStartTime,
            int dwFlags,
            Pointer<Pointer<COMObject>> ppCmd,
          )>()(
        ptr.ref.lpVtbl,
        ulTitle,
        pStartTime,
        dwFlags,
        ppCmd,
      );

  int Stop() => ptr.ref.lpVtbl.value
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

  int ReturnFromSubmenu(
    int dwFlags,
    Pointer<Pointer<COMObject>> ppCmd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<Pointer<COMObject>> ppCmd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<Pointer<COMObject>> ppCmd,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        ppCmd,
      );

  int PlayAtTime(
    Pointer<DVD_HMSF_TIMECODE> pTime,
    int dwFlags,
    Pointer<Pointer<COMObject>> ppCmd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DVD_HMSF_TIMECODE> pTime,
            Uint32 dwFlags,
            Pointer<Pointer<COMObject>> ppCmd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DVD_HMSF_TIMECODE> pTime,
            int dwFlags,
            Pointer<Pointer<COMObject>> ppCmd,
          )>()(
        ptr.ref.lpVtbl,
        pTime,
        dwFlags,
        ppCmd,
      );

  int PlayChapter(
    int ulChapter,
    int dwFlags,
    Pointer<Pointer<COMObject>> ppCmd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulChapter,
            Uint32 dwFlags,
            Pointer<Pointer<COMObject>> ppCmd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulChapter,
            int dwFlags,
            Pointer<Pointer<COMObject>> ppCmd,
          )>()(
        ptr.ref.lpVtbl,
        ulChapter,
        dwFlags,
        ppCmd,
      );

  int PlayPrevChapter(
    int dwFlags,
    Pointer<Pointer<COMObject>> ppCmd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<Pointer<COMObject>> ppCmd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<Pointer<COMObject>> ppCmd,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        ppCmd,
      );

  int ReplayChapter(
    int dwFlags,
    Pointer<Pointer<COMObject>> ppCmd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<Pointer<COMObject>> ppCmd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<Pointer<COMObject>> ppCmd,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        ppCmd,
      );

  int PlayNextChapter(
    int dwFlags,
    Pointer<Pointer<COMObject>> ppCmd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<Pointer<COMObject>> ppCmd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<Pointer<COMObject>> ppCmd,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        ppCmd,
      );

  int PlayForwards(
    double dSpeed,
    int dwFlags,
    Pointer<Pointer<COMObject>> ppCmd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double dSpeed,
            Uint32 dwFlags,
            Pointer<Pointer<COMObject>> ppCmd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double dSpeed,
            int dwFlags,
            Pointer<Pointer<COMObject>> ppCmd,
          )>()(
        ptr.ref.lpVtbl,
        dSpeed,
        dwFlags,
        ppCmd,
      );

  int PlayBackwards(
    double dSpeed,
    int dwFlags,
    Pointer<Pointer<COMObject>> ppCmd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double dSpeed,
            Uint32 dwFlags,
            Pointer<Pointer<COMObject>> ppCmd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double dSpeed,
            int dwFlags,
            Pointer<Pointer<COMObject>> ppCmd,
          )>()(
        ptr.ref.lpVtbl,
        dSpeed,
        dwFlags,
        ppCmd,
      );

  int ShowMenu(
    int MenuID,
    int dwFlags,
    Pointer<Pointer<COMObject>> ppCmd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 MenuID,
            Uint32 dwFlags,
            Pointer<Pointer<COMObject>> ppCmd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int MenuID,
            int dwFlags,
            Pointer<Pointer<COMObject>> ppCmd,
          )>()(
        ptr.ref.lpVtbl,
        MenuID,
        dwFlags,
        ppCmd,
      );

  int Resume(
    int dwFlags,
    Pointer<Pointer<COMObject>> ppCmd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<Pointer<COMObject>> ppCmd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<Pointer<COMObject>> ppCmd,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        ppCmd,
      );

  int SelectRelativeButton(
    int buttonDir,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 buttonDir,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int buttonDir,
          )>()(
        ptr.ref.lpVtbl,
        buttonDir,
      );

  int ActivateButton() => ptr.ref.lpVtbl.value
          .elementAt(18)
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

  int SelectButton(
    int ulButton,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulButton,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulButton,
          )>()(
        ptr.ref.lpVtbl,
        ulButton,
      );

  int SelectAndActivateButton(
    int ulButton,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulButton,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulButton,
          )>()(
        ptr.ref.lpVtbl,
        ulButton,
      );

  int StillOff() => ptr.ref.lpVtbl.value
          .elementAt(21)
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

  int Pause(
    int bState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bState,
          )>()(
        ptr.ref.lpVtbl,
        bState,
      );

  int SelectAudioStream(
    int ulAudio,
    int dwFlags,
    Pointer<Pointer<COMObject>> ppCmd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulAudio,
            Uint32 dwFlags,
            Pointer<Pointer<COMObject>> ppCmd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulAudio,
            int dwFlags,
            Pointer<Pointer<COMObject>> ppCmd,
          )>()(
        ptr.ref.lpVtbl,
        ulAudio,
        dwFlags,
        ppCmd,
      );

  int SelectSubpictureStream(
    int ulSubPicture,
    int dwFlags,
    Pointer<Pointer<COMObject>> ppCmd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulSubPicture,
            Uint32 dwFlags,
            Pointer<Pointer<COMObject>> ppCmd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulSubPicture,
            int dwFlags,
            Pointer<Pointer<COMObject>> ppCmd,
          )>()(
        ptr.ref.lpVtbl,
        ulSubPicture,
        dwFlags,
        ppCmd,
      );

  int SetSubpictureState(
    int bState,
    int dwFlags,
    Pointer<Pointer<COMObject>> ppCmd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bState,
            Uint32 dwFlags,
            Pointer<Pointer<COMObject>> ppCmd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bState,
            int dwFlags,
            Pointer<Pointer<COMObject>> ppCmd,
          )>()(
        ptr.ref.lpVtbl,
        bState,
        dwFlags,
        ppCmd,
      );

  int SelectAngle(
    int ulAngle,
    int dwFlags,
    Pointer<Pointer<COMObject>> ppCmd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulAngle,
            Uint32 dwFlags,
            Pointer<Pointer<COMObject>> ppCmd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulAngle,
            int dwFlags,
            Pointer<Pointer<COMObject>> ppCmd,
          )>()(
        ptr.ref.lpVtbl,
        ulAngle,
        dwFlags,
        ppCmd,
      );

  int SelectParentalLevel(
    int ulParentalLevel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulParentalLevel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulParentalLevel,
          )>()(
        ptr.ref.lpVtbl,
        ulParentalLevel,
      );

  int SelectParentalCountry(
    Pointer<Uint8> bCountry,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> bCountry,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> bCountry,
          )>()(
        ptr.ref.lpVtbl,
        bCountry,
      );

  int SelectKaraokeAudioPresentationMode(
    int ulMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulMode,
          )>()(
        ptr.ref.lpVtbl,
        ulMode,
      );

  int SelectVideoModePreference(
    int ulPreferredDisplayMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulPreferredDisplayMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulPreferredDisplayMode,
          )>()(
        ptr.ref.lpVtbl,
        ulPreferredDisplayMode,
      );

  int SetDVDDirectory(
    Pointer<Utf16> pszwPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszwPath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszwPath,
          )>()(
        ptr.ref.lpVtbl,
        pszwPath,
      );

  int ActivateAtPosition(
    POINT point,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            POINT point,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            POINT point,
          )>()(
        ptr.ref.lpVtbl,
        point,
      );

  int SelectAtPosition(
    POINT point,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            POINT point,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            POINT point,
          )>()(
        ptr.ref.lpVtbl,
        point,
      );

  int PlayChaptersAutoStop(
    int ulTitle,
    int ulChapter,
    int ulChaptersToPlay,
    int dwFlags,
    Pointer<Pointer<COMObject>> ppCmd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulTitle,
            Uint32 ulChapter,
            Uint32 ulChaptersToPlay,
            Uint32 dwFlags,
            Pointer<Pointer<COMObject>> ppCmd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulTitle,
            int ulChapter,
            int ulChaptersToPlay,
            int dwFlags,
            Pointer<Pointer<COMObject>> ppCmd,
          )>()(
        ptr.ref.lpVtbl,
        ulTitle,
        ulChapter,
        ulChaptersToPlay,
        dwFlags,
        ppCmd,
      );

  int AcceptParentalLevelChange(
    int bAccept,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bAccept,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bAccept,
          )>()(
        ptr.ref.lpVtbl,
        bAccept,
      );

  int SetOption(
    int flag,
    int fState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 flag,
            Int32 fState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int flag,
            int fState,
          )>()(
        ptr.ref.lpVtbl,
        flag,
        fState,
      );

  int SetState(
    Pointer<COMObject> pState,
    int dwFlags,
    Pointer<Pointer<COMObject>> ppCmd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pState,
            Uint32 dwFlags,
            Pointer<Pointer<COMObject>> ppCmd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pState,
            int dwFlags,
            Pointer<Pointer<COMObject>> ppCmd,
          )>()(
        ptr.ref.lpVtbl,
        pState,
        dwFlags,
        ppCmd,
      );

  int PlayPeriodInTitleAutoStop(
    int ulTitle,
    Pointer<DVD_HMSF_TIMECODE> pStartTime,
    Pointer<DVD_HMSF_TIMECODE> pEndTime,
    int dwFlags,
    Pointer<Pointer<COMObject>> ppCmd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulTitle,
            Pointer<DVD_HMSF_TIMECODE> pStartTime,
            Pointer<DVD_HMSF_TIMECODE> pEndTime,
            Uint32 dwFlags,
            Pointer<Pointer<COMObject>> ppCmd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulTitle,
            Pointer<DVD_HMSF_TIMECODE> pStartTime,
            Pointer<DVD_HMSF_TIMECODE> pEndTime,
            int dwFlags,
            Pointer<Pointer<COMObject>> ppCmd,
          )>()(
        ptr.ref.lpVtbl,
        ulTitle,
        pStartTime,
        pEndTime,
        dwFlags,
        ppCmd,
      );

  int SetGPRM(
    int ulIndex,
    int wValue,
    int dwFlags,
    Pointer<Pointer<COMObject>> ppCmd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulIndex,
            Uint16 wValue,
            Uint32 dwFlags,
            Pointer<Pointer<COMObject>> ppCmd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulIndex,
            int wValue,
            int dwFlags,
            Pointer<Pointer<COMObject>> ppCmd,
          )>()(
        ptr.ref.lpVtbl,
        ulIndex,
        wValue,
        dwFlags,
        ppCmd,
      );

  int SelectDefaultMenuLanguage(
    int Language,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(40)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Language,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Language,
          )>()(
        ptr.ref.lpVtbl,
        Language,
      );

  int SelectDefaultAudioLanguage(
    int Language,
    int audioExtension,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(41)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Language,
            Int32 audioExtension,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Language,
            int audioExtension,
          )>()(
        ptr.ref.lpVtbl,
        Language,
        audioExtension,
      );

  int SelectDefaultSubpictureLanguage(
    int Language,
    int subpictureExtension,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(42)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Language,
            Int32 subpictureExtension,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Language,
            int subpictureExtension,
          )>()(
        ptr.ref.lpVtbl,
        Language,
        subpictureExtension,
      );
}
