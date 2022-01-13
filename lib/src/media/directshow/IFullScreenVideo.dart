// IFullScreenVideo.dart

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

/// @nodoc
const IID_IFullScreenVideo = 'null';

/// {@category Interface}
/// {@category com}
class IFullScreenVideo extends IUnknown {
  // vtable begins at 3, is 17 entries long.
  IFullScreenVideo(Pointer<COMObject> ptr) : super(ptr);

  int CountModes(
    Pointer<Int32> pModes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pModes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pModes,
          )>()(
        ptr.ref.lpVtbl,
        pModes,
      );

  int GetModeInfo(
    int Mode,
    Pointer<Int32> pWidth,
    Pointer<Int32> pHeight,
    Pointer<Int32> pDepth,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Mode,
            Pointer<Int32> pWidth,
            Pointer<Int32> pHeight,
            Pointer<Int32> pDepth,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Mode,
            Pointer<Int32> pWidth,
            Pointer<Int32> pHeight,
            Pointer<Int32> pDepth,
          )>()(
        ptr.ref.lpVtbl,
        Mode,
        pWidth,
        pHeight,
        pDepth,
      );

  int GetCurrentMode(
    Pointer<Int32> pMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pMode,
          )>()(
        ptr.ref.lpVtbl,
        pMode,
      );

  int IsModeAvailable(
    int Mode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Mode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Mode,
          )>()(
        ptr.ref.lpVtbl,
        Mode,
      );

  int IsModeEnabled(
    int Mode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Mode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Mode,
          )>()(
        ptr.ref.lpVtbl,
        Mode,
      );

  int SetEnabled(
    int Mode,
    int bEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Mode,
            Int32 bEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Mode,
            int bEnabled,
          )>()(
        ptr.ref.lpVtbl,
        Mode,
        bEnabled,
      );

  int GetClipFactor(
    Pointer<Int32> pClipFactor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pClipFactor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pClipFactor,
          )>()(
        ptr.ref.lpVtbl,
        pClipFactor,
      );

  int SetClipFactor(
    int ClipFactor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 ClipFactor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ClipFactor,
          )>()(
        ptr.ref.lpVtbl,
        ClipFactor,
      );

  int SetMessageDrain(
    int hwnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwnd,
          )>()(
        ptr.ref.lpVtbl,
        hwnd,
      );

  int GetMessageDrain(
    Pointer<IntPtr> hwnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> hwnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> hwnd,
          )>()(
        ptr.ref.lpVtbl,
        hwnd,
      );

  int SetMonitor(
    int Monitor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Monitor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Monitor,
          )>()(
        ptr.ref.lpVtbl,
        Monitor,
      );

  int GetMonitor(
    Pointer<Int32> Monitor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> Monitor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> Monitor,
          )>()(
        ptr.ref.lpVtbl,
        Monitor,
      );

  int HideOnDeactivate(
    int Hide,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Hide,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Hide,
          )>()(
        ptr.ref.lpVtbl,
        Hide,
      );

  int IsHideOnDeactivate() => ptr.ref.lpVtbl.value
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

  int SetCaption(
    Pointer<Utf16> strCaption,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strCaption,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strCaption,
          )>()(
        ptr.ref.lpVtbl,
        strCaption,
      );

  int GetCaption(
    Pointer<Pointer<Utf16>> pstrCaption,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pstrCaption,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pstrCaption,
          )>()(
        ptr.ref.lpVtbl,
        pstrCaption,
      );

  int SetDefault() => ptr.ref.lpVtbl.value
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
}
