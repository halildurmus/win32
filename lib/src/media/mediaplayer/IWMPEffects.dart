// IWMPEffects.dart

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
import '../../media/mediaplayer/structs.g.dart';
import '../../graphics/gdi/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMPEffects = '{D3984C13-C3CB-48E2-8BE5-5168340B4F35}';

/// {@category Interface}
/// {@category com}
class IWMPEffects extends IUnknown {
  // vtable begins at 3, is 11 entries long.
  IWMPEffects(Pointer<COMObject> ptr) : super(ptr);

  int Render(
    Pointer<TimedLevel> pLevels,
    int hdc,
    Pointer<RECT> prc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<TimedLevel> pLevels,
            IntPtr hdc,
            Pointer<RECT> prc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<TimedLevel> pLevels,
            int hdc,
            Pointer<RECT> prc,
          )>()(
        ptr.ref.lpVtbl,
        pLevels,
        hdc,
        prc,
      );

  int MediaInfo(
    int lChannelCount,
    int lSampleRate,
    Pointer<Utf16> bstrTitle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lChannelCount,
            Int32 lSampleRate,
            Pointer<Utf16> bstrTitle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lChannelCount,
            int lSampleRate,
            Pointer<Utf16> bstrTitle,
          )>()(
        ptr.ref.lpVtbl,
        lChannelCount,
        lSampleRate,
        bstrTitle,
      );

  int GetCapabilities(
    Pointer<Uint32> pdwCapabilities,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwCapabilities,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwCapabilities,
          )>()(
        ptr.ref.lpVtbl,
        pdwCapabilities,
      );

  int GetTitle(
    Pointer<Pointer<Utf16>> bstrTitle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> bstrTitle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> bstrTitle,
          )>()(
        ptr.ref.lpVtbl,
        bstrTitle,
      );

  int GetPresetTitle(
    int nPreset,
    Pointer<Pointer<Utf16>> bstrPresetTitle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 nPreset,
            Pointer<Pointer<Utf16>> bstrPresetTitle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nPreset,
            Pointer<Pointer<Utf16>> bstrPresetTitle,
          )>()(
        ptr.ref.lpVtbl,
        nPreset,
        bstrPresetTitle,
      );

  int GetPresetCount(
    Pointer<Int32> pnPresetCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pnPresetCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pnPresetCount,
          )>()(
        ptr.ref.lpVtbl,
        pnPresetCount,
      );

  int SetCurrentPreset(
    int nPreset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 nPreset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nPreset,
          )>()(
        ptr.ref.lpVtbl,
        nPreset,
      );

  int GetCurrentPreset(
    Pointer<Int32> pnPreset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pnPreset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pnPreset,
          )>()(
        ptr.ref.lpVtbl,
        pnPreset,
      );

  int DisplayPropertyPage(
    int hwndOwner,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwndOwner,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwndOwner,
          )>()(
        ptr.ref.lpVtbl,
        hwndOwner,
      );

  int GoFullscreen(
    int fFullScreen,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fFullScreen,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fFullScreen,
          )>()(
        ptr.ref.lpVtbl,
        fFullScreen,
      );

  int RenderFullScreen(
    Pointer<TimedLevel> pLevels,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<TimedLevel> pLevels,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<TimedLevel> pLevels,
          )>()(
        ptr.ref.lpVtbl,
        pLevels,
      );
}
