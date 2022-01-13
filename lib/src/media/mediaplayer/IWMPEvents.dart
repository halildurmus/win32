// IWMPEvents.dart

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
import '../../system/com/IDispatch.dart';
import '../../media/mediaplayer/structs.g.dart';

/// @nodoc
const IID_IWMPEvents = '{19A6627B-DA9E-47C1-BB23-00B5E668236A}';

/// {@category Interface}
/// {@category com}
class IWMPEvents extends IUnknown {
  // vtable begins at 3, is 45 entries long.
  IWMPEvents(Pointer<COMObject> ptr) : super(ptr);

  void OpenStateChange(
    int NewState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Int32 NewState,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int NewState,
          )>()(
        ptr.ref.lpVtbl,
        NewState,
      );

  void PlayStateChange(
    int NewState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Int32 NewState,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int NewState,
          )>()(
        ptr.ref.lpVtbl,
        NewState,
      );

  void AudioLanguageChange(
    int LangID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Int32 LangID,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int LangID,
          )>()(
        ptr.ref.lpVtbl,
        LangID,
      );

  void StatusChange() => ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  void ScriptCommand(
    Pointer<Utf16> scType,
    Pointer<Utf16> Param,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Utf16> scType,
            Pointer<Utf16> Param,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Utf16> scType,
            Pointer<Utf16> Param,
          )>()(
        ptr.ref.lpVtbl,
        scType,
        Param,
      );

  void NewStream() => ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  void Disconnect(
    int Result,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Int32 Result,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int Result,
          )>()(
        ptr.ref.lpVtbl,
        Result,
      );

  void Buffering(
    int Start,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Int16 Start,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int Start,
          )>()(
        ptr.ref.lpVtbl,
        Start,
      );

  void Error() => ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  void Warning(
    int WarningType,
    int Param,
    Pointer<Utf16> Description,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Int32 WarningType,
            Int32 Param,
            Pointer<Utf16> Description,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int WarningType,
            int Param,
            Pointer<Utf16> Description,
          )>()(
        ptr.ref.lpVtbl,
        WarningType,
        Param,
        Description,
      );

  void EndOfStream(
    int Result,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Int32 Result,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int Result,
          )>()(
        ptr.ref.lpVtbl,
        Result,
      );

  void PositionChange(
    double oldPosition,
    double newPosition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Double oldPosition,
            Double newPosition,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            double oldPosition,
            double newPosition,
          )>()(
        ptr.ref.lpVtbl,
        oldPosition,
        newPosition,
      );

  void MarkerHit(
    int MarkerNum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Int32 MarkerNum,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int MarkerNum,
          )>()(
        ptr.ref.lpVtbl,
        MarkerNum,
      );

  void DurationUnitChange(
    int NewDurationUnit,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Int32 NewDurationUnit,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int NewDurationUnit,
          )>()(
        ptr.ref.lpVtbl,
        NewDurationUnit,
      );

  void CdromMediaChange(
    int CdromNum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Int32 CdromNum,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int CdromNum,
          )>()(
        ptr.ref.lpVtbl,
        CdromNum,
      );

  void PlaylistChange(
    Pointer<COMObject> Playlist,
    int change,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> Playlist,
            Int32 change,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> Playlist,
            int change,
          )>()(
        ptr.ref.lpVtbl,
        Playlist,
        change,
      );

  void CurrentPlaylistChange(
    int change,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Int32 change,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int change,
          )>()(
        ptr.ref.lpVtbl,
        change,
      );

  void CurrentPlaylistItemAvailable(
    Pointer<Utf16> bstrItemName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Utf16> bstrItemName,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Utf16> bstrItemName,
          )>()(
        ptr.ref.lpVtbl,
        bstrItemName,
      );

  void MediaChange(
    Pointer<COMObject> Item,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> Item,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> Item,
          )>()(
        ptr.ref.lpVtbl,
        Item,
      );

  void CurrentMediaItemAvailable(
    Pointer<Utf16> bstrItemName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Utf16> bstrItemName,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Utf16> bstrItemName,
          )>()(
        ptr.ref.lpVtbl,
        bstrItemName,
      );

  void CurrentItemChange(
    Pointer<COMObject> pdispMedia,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pdispMedia,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pdispMedia,
          )>()(
        ptr.ref.lpVtbl,
        pdispMedia,
      );

  void MediaCollectionChange() => ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  void MediaCollectionAttributeStringAdded(
    Pointer<Utf16> bstrAttribName,
    Pointer<Utf16> bstrAttribVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Utf16> bstrAttribName,
            Pointer<Utf16> bstrAttribVal,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Utf16> bstrAttribName,
            Pointer<Utf16> bstrAttribVal,
          )>()(
        ptr.ref.lpVtbl,
        bstrAttribName,
        bstrAttribVal,
      );

  void MediaCollectionAttributeStringRemoved(
    Pointer<Utf16> bstrAttribName,
    Pointer<Utf16> bstrAttribVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Utf16> bstrAttribName,
            Pointer<Utf16> bstrAttribVal,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Utf16> bstrAttribName,
            Pointer<Utf16> bstrAttribVal,
          )>()(
        ptr.ref.lpVtbl,
        bstrAttribName,
        bstrAttribVal,
      );

  void MediaCollectionAttributeStringChanged(
    Pointer<Utf16> bstrAttribName,
    Pointer<Utf16> bstrOldAttribVal,
    Pointer<Utf16> bstrNewAttribVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Utf16> bstrAttribName,
            Pointer<Utf16> bstrOldAttribVal,
            Pointer<Utf16> bstrNewAttribVal,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Utf16> bstrAttribName,
            Pointer<Utf16> bstrOldAttribVal,
            Pointer<Utf16> bstrNewAttribVal,
          )>()(
        ptr.ref.lpVtbl,
        bstrAttribName,
        bstrOldAttribVal,
        bstrNewAttribVal,
      );

  void PlaylistCollectionChange() => ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  void PlaylistCollectionPlaylistAdded(
    Pointer<Utf16> bstrPlaylistName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Utf16> bstrPlaylistName,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Utf16> bstrPlaylistName,
          )>()(
        ptr.ref.lpVtbl,
        bstrPlaylistName,
      );

  void PlaylistCollectionPlaylistRemoved(
    Pointer<Utf16> bstrPlaylistName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Utf16> bstrPlaylistName,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Utf16> bstrPlaylistName,
          )>()(
        ptr.ref.lpVtbl,
        bstrPlaylistName,
      );

  void PlaylistCollectionPlaylistSetAsDeleted(
    Pointer<Utf16> bstrPlaylistName,
    int varfIsDeleted,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Utf16> bstrPlaylistName,
            Int16 varfIsDeleted,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Utf16> bstrPlaylistName,
            int varfIsDeleted,
          )>()(
        ptr.ref.lpVtbl,
        bstrPlaylistName,
        varfIsDeleted,
      );

  void ModeChange(
    Pointer<Utf16> ModeName,
    int NewValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Utf16> ModeName,
            Int16 NewValue,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Utf16> ModeName,
            int NewValue,
          )>()(
        ptr.ref.lpVtbl,
        ModeName,
        NewValue,
      );

  void MediaError(
    Pointer<COMObject> pMediaObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pMediaObject,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pMediaObject,
          )>()(
        ptr.ref.lpVtbl,
        pMediaObject,
      );

  void OpenPlaylistSwitch(
    Pointer<COMObject> pItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pItem,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pItem,
          )>()(
        ptr.ref.lpVtbl,
        pItem,
      );

  void DomainChange(
    Pointer<Utf16> strDomain,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Utf16> strDomain,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Utf16> strDomain,
          )>()(
        ptr.ref.lpVtbl,
        strDomain,
      );

  void SwitchedToPlayerApplication() => ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  void SwitchedToControl() => ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  void PlayerDockedStateChange() => ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  void PlayerReconnect() => ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  void Click(
    int nButton,
    int nShiftState,
    int fX,
    int fY,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(40)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Int16 nButton,
            Int16 nShiftState,
            Int32 fX,
            Int32 fY,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int nButton,
            int nShiftState,
            int fX,
            int fY,
          )>()(
        ptr.ref.lpVtbl,
        nButton,
        nShiftState,
        fX,
        fY,
      );

  void DoubleClick(
    int nButton,
    int nShiftState,
    int fX,
    int fY,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(41)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Int16 nButton,
            Int16 nShiftState,
            Int32 fX,
            Int32 fY,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int nButton,
            int nShiftState,
            int fX,
            int fY,
          )>()(
        ptr.ref.lpVtbl,
        nButton,
        nShiftState,
        fX,
        fY,
      );

  void KeyDown(
    int nKeyCode,
    int nShiftState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(42)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Int16 nKeyCode,
            Int16 nShiftState,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int nKeyCode,
            int nShiftState,
          )>()(
        ptr.ref.lpVtbl,
        nKeyCode,
        nShiftState,
      );

  void KeyPress(
    int nKeyAscii,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(43)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Int16 nKeyAscii,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int nKeyAscii,
          )>()(
        ptr.ref.lpVtbl,
        nKeyAscii,
      );

  void KeyUp(
    int nKeyCode,
    int nShiftState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(44)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Int16 nKeyCode,
            Int16 nShiftState,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int nKeyCode,
            int nShiftState,
          )>()(
        ptr.ref.lpVtbl,
        nKeyCode,
        nShiftState,
      );

  void MouseDown(
    int nButton,
    int nShiftState,
    int fX,
    int fY,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(45)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Int16 nButton,
            Int16 nShiftState,
            Int32 fX,
            Int32 fY,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int nButton,
            int nShiftState,
            int fX,
            int fY,
          )>()(
        ptr.ref.lpVtbl,
        nButton,
        nShiftState,
        fX,
        fY,
      );

  void MouseMove(
    int nButton,
    int nShiftState,
    int fX,
    int fY,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(46)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Int16 nButton,
            Int16 nShiftState,
            Int32 fX,
            Int32 fY,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int nButton,
            int nShiftState,
            int fX,
            int fY,
          )>()(
        ptr.ref.lpVtbl,
        nButton,
        nShiftState,
        fX,
        fY,
      );

  void MouseUp(
    int nButton,
    int nShiftState,
    int fX,
    int fY,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(47)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Int16 nButton,
            Int16 nShiftState,
            Int32 fX,
            Int32 fY,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int nButton,
            int nShiftState,
            int fX,
            int fY,
          )>()(
        ptr.ref.lpVtbl,
        nButton,
        nShiftState,
        fX,
        fY,
      );
}
