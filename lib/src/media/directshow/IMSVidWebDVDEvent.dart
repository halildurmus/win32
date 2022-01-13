// IMSVidWebDVDEvent.dart

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

import '../../media/directshow/IMSVidPlaybackEvent.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IMSVidWebDVDEvent = '{B4F7A674-9B83-49CB-A357-C63B871BE958}';

/// {@category Interface}
/// {@category com}
class IMSVidWebDVDEvent extends IMSVidPlaybackEvent {
  // vtable begins at 8, is 23 entries long.
  IMSVidWebDVDEvent(Pointer<COMObject> ptr) : super(ptr);

  int DVDNotify(
    int lEventCode,
    VARIANT lParam1,
    VARIANT lParam2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lEventCode,
            VARIANT lParam1,
            VARIANT lParam2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lEventCode,
            VARIANT lParam1,
            VARIANT lParam2,
          )>()(
        ptr.ref.lpVtbl,
        lEventCode,
        lParam1,
        lParam2,
      );

  int PlayForwards(
    int bEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 bEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bEnabled,
          )>()(
        ptr.ref.lpVtbl,
        bEnabled,
      );

  int PlayBackwards(
    int bEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 bEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bEnabled,
          )>()(
        ptr.ref.lpVtbl,
        bEnabled,
      );

  int ShowMenu(
    int MenuID,
    int bEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 MenuID,
            Int16 bEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int MenuID,
            int bEnabled,
          )>()(
        ptr.ref.lpVtbl,
        MenuID,
        bEnabled,
      );

  int Resume(
    int bEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 bEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bEnabled,
          )>()(
        ptr.ref.lpVtbl,
        bEnabled,
      );

  int SelectOrActivateButton(
    int bEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 bEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bEnabled,
          )>()(
        ptr.ref.lpVtbl,
        bEnabled,
      );

  int StillOff(
    int bEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 bEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bEnabled,
          )>()(
        ptr.ref.lpVtbl,
        bEnabled,
      );

  int PauseOn(
    int bEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 bEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bEnabled,
          )>()(
        ptr.ref.lpVtbl,
        bEnabled,
      );

  int ChangeCurrentAudioStream(
    int bEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 bEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bEnabled,
          )>()(
        ptr.ref.lpVtbl,
        bEnabled,
      );

  int ChangeCurrentSubpictureStream(
    int bEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 bEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bEnabled,
          )>()(
        ptr.ref.lpVtbl,
        bEnabled,
      );

  int ChangeCurrentAngle(
    int bEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 bEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bEnabled,
          )>()(
        ptr.ref.lpVtbl,
        bEnabled,
      );

  int PlayAtTimeInTitle(
    int bEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 bEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bEnabled,
          )>()(
        ptr.ref.lpVtbl,
        bEnabled,
      );

  int PlayAtTime(
    int bEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 bEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bEnabled,
          )>()(
        ptr.ref.lpVtbl,
        bEnabled,
      );

  int PlayChapterInTitle(
    int bEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 bEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bEnabled,
          )>()(
        ptr.ref.lpVtbl,
        bEnabled,
      );

  int PlayChapter(
    int bEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 bEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bEnabled,
          )>()(
        ptr.ref.lpVtbl,
        bEnabled,
      );

  int ReplayChapter(
    int bEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 bEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bEnabled,
          )>()(
        ptr.ref.lpVtbl,
        bEnabled,
      );

  int PlayNextChapter(
    int bEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 bEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bEnabled,
          )>()(
        ptr.ref.lpVtbl,
        bEnabled,
      );

  int Stop(
    int bEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 bEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bEnabled,
          )>()(
        ptr.ref.lpVtbl,
        bEnabled,
      );

  int ReturnFromSubmenu(
    int bEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 bEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bEnabled,
          )>()(
        ptr.ref.lpVtbl,
        bEnabled,
      );

  int PlayTitle(
    int bEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 bEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bEnabled,
          )>()(
        ptr.ref.lpVtbl,
        bEnabled,
      );

  int PlayPrevChapter(
    int bEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 bEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bEnabled,
          )>()(
        ptr.ref.lpVtbl,
        bEnabled,
      );

  int ChangeKaraokePresMode(
    int bEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 bEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bEnabled,
          )>()(
        ptr.ref.lpVtbl,
        bEnabled,
      );

  int ChangeVideoPresMode(
    int bEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 bEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bEnabled,
          )>()(
        ptr.ref.lpVtbl,
        bEnabled,
      );
}
