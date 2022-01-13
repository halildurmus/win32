// IMSVidWebDVD.dart

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

import '../../media/directshow/IMSVidPlayback.dart';
import '../../foundation/structs.g.dart';
import '../../media/directshow/structs.g.dart';
import '../../system/com/IDispatch.dart';
import '../../media/directshow/IMSVidRect.dart';

/// @nodoc
const IID_IMSVidWebDVD = '{CF45F88B-AC56-4EE2-A73A-ED04E2885D3C}';

/// {@category Interface}
/// {@category com}
class IMSVidWebDVD extends IMSVidPlayback {
  // vtable begins at 32, is 95 entries long.
  IMSVidWebDVD(Pointer<COMObject> ptr) : super(ptr);

  int OnDVDEvent(
    int lEvent,
    int lParam1,
    int lParam2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lEvent,
            IntPtr lParam1,
            IntPtr lParam2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lEvent,
            int lParam1,
            int lParam2,
          )>()(
        ptr.ref.lpVtbl,
        lEvent,
        lParam1,
        lParam2,
      );

  int PlayTitle(
    int lTitle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lTitle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lTitle,
          )>()(
        ptr.ref.lpVtbl,
        lTitle,
      );

  int PlayChapterInTitle(
    int lTitle,
    int lChapter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lTitle,
            Int32 lChapter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lTitle,
            int lChapter,
          )>()(
        ptr.ref.lpVtbl,
        lTitle,
        lChapter,
      );

  int PlayChapter(
    int lChapter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lChapter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lChapter,
          )>()(
        ptr.ref.lpVtbl,
        lChapter,
      );

  int PlayChaptersAutoStop(
    int lTitle,
    int lstrChapter,
    int lChapterCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lTitle,
            Int32 lstrChapter,
            Int32 lChapterCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lTitle,
            int lstrChapter,
            int lChapterCount,
          )>()(
        ptr.ref.lpVtbl,
        lTitle,
        lstrChapter,
        lChapterCount,
      );

  int PlayAtTime(
    Pointer<Utf16> strTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strTime,
          )>()(
        ptr.ref.lpVtbl,
        strTime,
      );

  int PlayAtTimeInTitle(
    int lTitle,
    Pointer<Utf16> strTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lTitle,
            Pointer<Utf16> strTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lTitle,
            Pointer<Utf16> strTime,
          )>()(
        ptr.ref.lpVtbl,
        lTitle,
        strTime,
      );

  int PlayPeriodInTitleAutoStop(
    int lTitle,
    Pointer<Utf16> strStartTime,
    Pointer<Utf16> strEndTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lTitle,
            Pointer<Utf16> strStartTime,
            Pointer<Utf16> strEndTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lTitle,
            Pointer<Utf16> strStartTime,
            Pointer<Utf16> strEndTime,
          )>()(
        ptr.ref.lpVtbl,
        lTitle,
        strStartTime,
        strEndTime,
      );

  int ReplayChapter() => ptr.ref.lpVtbl.value
          .elementAt(40)
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

  int PlayPrevChapter() => ptr.ref.lpVtbl.value
          .elementAt(41)
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

  int PlayNextChapter() => ptr.ref.lpVtbl.value
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

  int StillOff() => ptr.ref.lpVtbl.value
          .elementAt(43)
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

  int get_AudioLanguage(
    int lStream,
    int fFormat,
    Pointer<Pointer<Utf16>> strAudioLang,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(44)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lStream,
            Int16 fFormat,
            Pointer<Pointer<Utf16>> strAudioLang,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lStream,
            int fFormat,
            Pointer<Pointer<Utf16>> strAudioLang,
          )>()(
        ptr.ref.lpVtbl,
        lStream,
        fFormat,
        strAudioLang,
      );

  int ShowMenu(
    int MenuID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(45)
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
          .elementAt(46)
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

  int ReturnFromSubmenu() => ptr.ref.lpVtbl.value
          .elementAt(47)
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

  int get ButtonsAvailable {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(48)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get CurrentButton {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(49)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int SelectAndActivateButton(
    int lButton,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(50)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lButton,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lButton,
          )>()(
        ptr.ref.lpVtbl,
        lButton,
      );

  int ActivateButton() => ptr.ref.lpVtbl.value
          .elementAt(51)
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

  int SelectRightButton() => ptr.ref.lpVtbl.value
          .elementAt(52)
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

  int SelectLeftButton() => ptr.ref.lpVtbl.value
          .elementAt(53)
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

  int SelectLowerButton() => ptr.ref.lpVtbl.value
          .elementAt(54)
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

  int SelectUpperButton() => ptr.ref.lpVtbl.value
          .elementAt(55)
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

  int ActivateAtPosition(
    int xPos,
    int yPos,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(56)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 xPos,
            Int32 yPos,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int xPos,
            int yPos,
          )>()(
        ptr.ref.lpVtbl,
        xPos,
        yPos,
      );

  int SelectAtPosition(
    int xPos,
    int yPos,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(57)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 xPos,
            Int32 yPos,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int xPos,
            int yPos,
          )>()(
        ptr.ref.lpVtbl,
        xPos,
        yPos,
      );

  int get_ButtonAtPosition(
    int xPos,
    int yPos,
    Pointer<Int32> plButton,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(58)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 xPos,
            Int32 yPos,
            Pointer<Int32> plButton,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int xPos,
            int yPos,
            Pointer<Int32> plButton,
          )>()(
        ptr.ref.lpVtbl,
        xPos,
        yPos,
        plButton,
      );

  int get_NumberOfChapters(
    int lTitle,
    Pointer<Int32> pVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(59)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lTitle,
            Pointer<Int32> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lTitle,
            Pointer<Int32> pVal,
          )>()(
        ptr.ref.lpVtbl,
        lTitle,
        pVal,
      );

  Pointer<Utf16> get TotalTitleTime {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(60)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get TitlesAvailable {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(61)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get VolumesAvailable {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(62)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get CurrentVolume {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(63)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get CurrentDiscSide {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(64)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get CurrentDomain {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(65)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get CurrentChapter {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(66)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get CurrentTitle {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(67)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get CurrentTime {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(68)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int DVDTimeCode2bstr(
    int timeCode,
    Pointer<Pointer<Utf16>> pTimeStr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(69)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 timeCode,
            Pointer<Pointer<Utf16>> pTimeStr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int timeCode,
            Pointer<Pointer<Utf16>> pTimeStr,
          )>()(
        ptr.ref.lpVtbl,
        timeCode,
        pTimeStr,
      );

  Pointer<Utf16> get DVDDirectory {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(70)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set DVDDirectory(Pointer<Utf16> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(71)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<Utf16> newVal,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<Utf16> newVal,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int IsSubpictureStreamEnabled(
    int lstream,
    Pointer<Int16> fEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(72)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lstream,
            Pointer<Int16> fEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lstream,
            Pointer<Int16> fEnabled,
          )>()(
        ptr.ref.lpVtbl,
        lstream,
        fEnabled,
      );

  int IsAudioStreamEnabled(
    int lstream,
    Pointer<Int16> fEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(73)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lstream,
            Pointer<Int16> fEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lstream,
            Pointer<Int16> fEnabled,
          )>()(
        ptr.ref.lpVtbl,
        lstream,
        fEnabled,
      );

  int get CurrentSubpictureStream {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(74)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set CurrentSubpictureStream(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(75)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 newVal,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int newVal,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get_SubpictureLanguage(
    int lStream,
    Pointer<Pointer<Utf16>> strLanguage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(76)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lStream,
            Pointer<Pointer<Utf16>> strLanguage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lStream,
            Pointer<Pointer<Utf16>> strLanguage,
          )>()(
        ptr.ref.lpVtbl,
        lStream,
        strLanguage,
      );

  int get CurrentAudioStream {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(77)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set CurrentAudioStream(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(78)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 newVal,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int newVal,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get AudioStreamsAvailable {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(79)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get AnglesAvailable {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(80)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get CurrentAngle {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(81)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set CurrentAngle(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(82)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 newVal,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int newVal,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get SubpictureStreamsAvailable {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(83)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get SubpictureOn {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(84)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set SubpictureOn(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(85)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int16 newVal,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int newVal,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<Utf16> get DVDUniqueID {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(86)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int AcceptParentalLevelChange(
    int fAccept,
    Pointer<Utf16> strUserName,
    Pointer<Utf16> strPassword,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(87)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 fAccept,
            Pointer<Utf16> strUserName,
            Pointer<Utf16> strPassword,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fAccept,
            Pointer<Utf16> strUserName,
            Pointer<Utf16> strPassword,
          )>()(
        ptr.ref.lpVtbl,
        fAccept,
        strUserName,
        strPassword,
      );

  int NotifyParentalLevelChange(
    int newVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(88)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 newVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int newVal,
          )>()(
        ptr.ref.lpVtbl,
        newVal,
      );

  int SelectParentalCountry(
    int lCountry,
    Pointer<Utf16> strUserName,
    Pointer<Utf16> strPassword,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(89)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lCountry,
            Pointer<Utf16> strUserName,
            Pointer<Utf16> strPassword,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lCountry,
            Pointer<Utf16> strUserName,
            Pointer<Utf16> strPassword,
          )>()(
        ptr.ref.lpVtbl,
        lCountry,
        strUserName,
        strPassword,
      );

  int SelectParentalLevel(
    int lParentalLevel,
    Pointer<Utf16> strUserName,
    Pointer<Utf16> strPassword,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(90)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lParentalLevel,
            Pointer<Utf16> strUserName,
            Pointer<Utf16> strPassword,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lParentalLevel,
            Pointer<Utf16> strUserName,
            Pointer<Utf16> strPassword,
          )>()(
        ptr.ref.lpVtbl,
        lParentalLevel,
        strUserName,
        strPassword,
      );

  int get_TitleParentalLevels(
    int lTitle,
    Pointer<Int32> plParentalLevels,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(91)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lTitle,
            Pointer<Int32> plParentalLevels,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lTitle,
            Pointer<Int32> plParentalLevels,
          )>()(
        ptr.ref.lpVtbl,
        lTitle,
        plParentalLevels,
      );

  int get PlayerParentalCountry {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(92)
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

  int get PlayerParentalLevel {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(93)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plParentalLevel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plParentalLevel,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int Eject() => ptr.ref.lpVtbl.value
          .elementAt(94)
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

  int UOPValid(
    int lUOP,
    Pointer<Int16> pfValid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(95)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lUOP,
            Pointer<Int16> pfValid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lUOP,
            Pointer<Int16> pfValid,
          )>()(
        ptr.ref.lpVtbl,
        lUOP,
        pfValid,
      );

  int get_SPRM(
    int lIndex,
    Pointer<Int16> psSPRM,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(96)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lIndex,
            Pointer<Int16> psSPRM,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lIndex,
            Pointer<Int16> psSPRM,
          )>()(
        ptr.ref.lpVtbl,
        lIndex,
        psSPRM,
      );

  int get_GPRM(
    int lIndex,
    Pointer<Int16> psSPRM,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(97)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lIndex,
            Pointer<Int16> psSPRM,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lIndex,
            Pointer<Int16> psSPRM,
          )>()(
        ptr.ref.lpVtbl,
        lIndex,
        psSPRM,
      );

  int put_GPRM(
    int lIndex,
    int sValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(98)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lIndex,
            Int16 sValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lIndex,
            int sValue,
          )>()(
        ptr.ref.lpVtbl,
        lIndex,
        sValue,
      );

  int get_DVDTextStringType(
    int lLangIndex,
    int lStringIndex,
    Pointer<Int32> pType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(99)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lLangIndex,
            Int32 lStringIndex,
            Pointer<Int32> pType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lLangIndex,
            int lStringIndex,
            Pointer<Int32> pType,
          )>()(
        ptr.ref.lpVtbl,
        lLangIndex,
        lStringIndex,
        pType,
      );

  int get_DVDTextString(
    int lLangIndex,
    int lStringIndex,
    Pointer<Pointer<Utf16>> pstrText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(100)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lLangIndex,
            Int32 lStringIndex,
            Pointer<Pointer<Utf16>> pstrText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lLangIndex,
            int lStringIndex,
            Pointer<Pointer<Utf16>> pstrText,
          )>()(
        ptr.ref.lpVtbl,
        lLangIndex,
        lStringIndex,
        pstrText,
      );

  int get_DVDTextNumberOfStrings(
    int lLangIndex,
    Pointer<Int32> plNumOfStrings,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(101)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lLangIndex,
            Pointer<Int32> plNumOfStrings,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lLangIndex,
            Pointer<Int32> plNumOfStrings,
          )>()(
        ptr.ref.lpVtbl,
        lLangIndex,
        plNumOfStrings,
      );

  int get DVDTextNumberOfLanguages {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(102)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plNumOfLangs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plNumOfLangs,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get_DVDTextLanguageLCID(
    int lLangIndex,
    Pointer<Int32> lcid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(103)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lLangIndex,
            Pointer<Int32> lcid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lLangIndex,
            Pointer<Int32> lcid,
          )>()(
        ptr.ref.lpVtbl,
        lLangIndex,
        lcid,
      );

  int RegionChange() => ptr.ref.lpVtbl.value
          .elementAt(104)
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

  Pointer<COMObject> get DVDAdm {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(105)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int DeleteBookmark() => ptr.ref.lpVtbl.value
          .elementAt(106)
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

  int RestoreBookmark() => ptr.ref.lpVtbl.value
          .elementAt(107)
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

  int SaveBookmark() => ptr.ref.lpVtbl.value
          .elementAt(108)
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

  int SelectDefaultAudioLanguage(
    int lang,
    int ext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(109)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lang,
            Int32 ext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lang,
            int ext,
          )>()(
        ptr.ref.lpVtbl,
        lang,
        ext,
      );

  int SelectDefaultSubpictureLanguage(
    int lang,
    int ext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(110)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lang,
            Int32 ext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lang,
            int ext,
          )>()(
        ptr.ref.lpVtbl,
        lang,
        ext,
      );

  int get PreferredSubpictureStream {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(111)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get DefaultMenuLanguage {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(112)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> lang,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> lang,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set DefaultMenuLanguage(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(113)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 lang,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int lang,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get DefaultSubpictureLanguage {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(114)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> lang,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> lang,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get DefaultAudioLanguage {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(115)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> lang,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> lang,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get DefaultSubpictureLanguageExt {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(116)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> ext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> ext,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get DefaultAudioLanguageExt {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(117)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> ext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> ext,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get_LanguageFromLCID(
    int lcid,
    Pointer<Pointer<Utf16>> lang,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(118)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lcid,
            Pointer<Pointer<Utf16>> lang,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lcid,
            Pointer<Pointer<Utf16>> lang,
          )>()(
        ptr.ref.lpVtbl,
        lcid,
        lang,
      );

  int get KaraokeAudioPresentationMode {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(119)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set KaraokeAudioPresentationMode(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(120)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 newVal,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int newVal,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get_KaraokeChannelContent(
    int lStream,
    int lChan,
    Pointer<Int32> lContent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(121)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lStream,
            Int32 lChan,
            Pointer<Int32> lContent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lStream,
            int lChan,
            Pointer<Int32> lContent,
          )>()(
        ptr.ref.lpVtbl,
        lStream,
        lChan,
        lContent,
      );

  int get_KaraokeChannelAssignment(
    int lStream,
    Pointer<Int32> lChannelAssignment,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(122)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lStream,
            Pointer<Int32> lChannelAssignment,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lStream,
            Pointer<Int32> lChannelAssignment,
          )>()(
        ptr.ref.lpVtbl,
        lStream,
        lChannelAssignment,
      );

  int RestorePreferredSettings() => ptr.ref.lpVtbl.value
          .elementAt(123)
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

  int get_ButtonRect(
    int lButton,
    Pointer<Pointer<COMObject>> pRect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(124)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lButton,
            Pointer<Pointer<COMObject>> pRect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lButton,
            Pointer<Pointer<COMObject>> pRect,
          )>()(
        ptr.ref.lpVtbl,
        lButton,
        pRect,
      );

  Pointer<COMObject> get DVDScreenInMouseCoordinates {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(125)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppRect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppRect,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set DVDScreenInMouseCoordinates(Pointer<COMObject> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(126)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<COMObject> pRect,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<COMObject> pRect,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

/// @nodoc
const CLSID_MSVidWebDVD = '{011B3619-FE63-4814-8A84-15A194CE9CE3}';

/// {@category com}
class MSVidWebDVD extends IMSVidWebDVD {
  MSVidWebDVD(Pointer<COMObject> ptr) : super(ptr);

  factory MSVidWebDVD.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_MSVidWebDVD);
    final iid = calloc<GUID>()..ref.setGUID(IID_IMSVidWebDVD);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return MSVidWebDVD(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
