// IDvdControl.dart

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

/// @nodoc
const IID_IDvdControl = '{A70EFE61-E2A3-11D0-A9BE-00AA0061BE93}';

/// {@category Interface}
/// {@category com}
class IDvdControl extends IUnknown {
  // vtable begins at 3, is 35 entries long.
  IDvdControl(Pointer<COMObject> ptr) : super(ptr);

  int TitlePlay(
    int ulTitle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulTitle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulTitle,
          )>()(
        ptr.ref.lpVtbl,
        ulTitle,
      );

  int ChapterPlay(
    int ulTitle,
    int ulChapter,
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
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulTitle,
            int ulChapter,
          )>()(
        ptr.ref.lpVtbl,
        ulTitle,
        ulChapter,
      );

  int TimePlay(
    int ulTitle,
    int bcdTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulTitle,
            Uint32 bcdTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulTitle,
            int bcdTime,
          )>()(
        ptr.ref.lpVtbl,
        ulTitle,
        bcdTime,
      );

  int StopForResume() => ptr.ref.lpVtbl.value
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

  int GoUp() => ptr.ref.lpVtbl.value
          .elementAt(7)
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

  int TimeSearch(
    int bcdTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 bcdTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bcdTime,
          )>()(
        ptr.ref.lpVtbl,
        bcdTime,
      );

  int ChapterSearch(
    int ulChapter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulChapter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulChapter,
          )>()(
        ptr.ref.lpVtbl,
        ulChapter,
      );

  int PrevPGSearch() => ptr.ref.lpVtbl.value
          .elementAt(10)
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

  int TopPGSearch() => ptr.ref.lpVtbl.value
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

  int NextPGSearch() => ptr.ref.lpVtbl.value
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

  int ForwardScan(
    double dwSpeed,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double dwSpeed,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double dwSpeed,
          )>()(
        ptr.ref.lpVtbl,
        dwSpeed,
      );

  int BackwardScan(
    double dwSpeed,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double dwSpeed,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double dwSpeed,
          )>()(
        ptr.ref.lpVtbl,
        dwSpeed,
      );

  int MenuCall(
    int MenuID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 MenuID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int MenuID,
          )>()(
        ptr.ref.lpVtbl,
        MenuID,
      );

  int Resume() => ptr.ref.lpVtbl.value
          .elementAt(16)
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

  int UpperButtonSelect() => ptr.ref.lpVtbl.value
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

  int LowerButtonSelect() => ptr.ref.lpVtbl.value
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

  int LeftButtonSelect() => ptr.ref.lpVtbl.value
          .elementAt(19)
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

  int RightButtonSelect() => ptr.ref.lpVtbl.value
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

  int ButtonActivate() => ptr.ref.lpVtbl.value
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

  int ButtonSelectAndActivate(
    int ulButton,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
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
          .elementAt(23)
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

  int PauseOn() => ptr.ref.lpVtbl.value
          .elementAt(24)
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

  int PauseOff() => ptr.ref.lpVtbl.value
          .elementAt(25)
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

  int MenuLanguageSelect(
    int Language,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
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

  int AudioStreamChange(
    int ulAudio,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulAudio,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulAudio,
          )>()(
        ptr.ref.lpVtbl,
        ulAudio,
      );

  int SubpictureStreamChange(
    int ulSubPicture,
    int bDisplay,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulSubPicture,
            Int32 bDisplay,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulSubPicture,
            int bDisplay,
          )>()(
        ptr.ref.lpVtbl,
        ulSubPicture,
        bDisplay,
      );

  int AngleChange(
    int ulAngle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulAngle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulAngle,
          )>()(
        ptr.ref.lpVtbl,
        ulAngle,
      );

  int ParentalLevelSelect(
    int ulParentalLevel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
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

  int ParentalCountrySelect(
    int wCountry,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wCountry,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wCountry,
          )>()(
        ptr.ref.lpVtbl,
        wCountry,
      );

  int KaraokeAudioPresentationModeChange(
    int ulMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
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

  int VideoModePreferrence(
    int ulPreferredDisplayMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
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

  int SetRoot(
    Pointer<Utf16> pszPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPath,
          )>()(
        ptr.ref.lpVtbl,
        pszPath,
      );

  int MouseActivate(
    POINT point,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
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

  int MouseSelect(
    POINT point,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
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

  int ChapterPlayAutoStop(
    int ulTitle,
    int ulChapter,
    int ulChaptersToPlay,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulTitle,
            Uint32 ulChapter,
            Uint32 ulChaptersToPlay,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulTitle,
            int ulChapter,
            int ulChaptersToPlay,
          )>()(
        ptr.ref.lpVtbl,
        ulTitle,
        ulChapter,
        ulChaptersToPlay,
      );
}
