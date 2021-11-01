// IDesktopWallpaper.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../ole32.dart';
import '../structs.dart';
import '../structs.g.dart';
import '../utils.dart';

import 'IUnknown.dart';

/// @nodoc
const CLSID_DesktopWallpaper = '{C2CF3110-460E-4FC1-B9D0-8A1C0C9CC4BD}';

/// @nodoc
const IID_IDesktopWallpaper = '{B92B56A9-8B55-4E14-9A89-0199BBB6F93B}';

typedef _SetWallpaper_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> monitorID, Pointer<Utf16> wallpaper);
typedef _SetWallpaper_Dart = int Function(
    Pointer obj, Pointer<Utf16> monitorID, Pointer<Utf16> wallpaper);

typedef _GetWallpaper_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> monitorID, Pointer<Pointer<Utf16>> wallpaper);
typedef _GetWallpaper_Dart = int Function(
    Pointer obj, Pointer<Utf16> monitorID, Pointer<Pointer<Utf16>> wallpaper);

typedef _GetMonitorDevicePathAt_Native = Int32 Function(
    Pointer obj, Uint32 monitorIndex, Pointer<Pointer<Utf16>> monitorID);
typedef _GetMonitorDevicePathAt_Dart = int Function(
    Pointer obj, int monitorIndex, Pointer<Pointer<Utf16>> monitorID);

typedef _GetMonitorDevicePathCount_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> count);
typedef _GetMonitorDevicePathCount_Dart = int Function(
    Pointer obj, Pointer<Uint32> count);

typedef _GetMonitorRECT_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> monitorID, Pointer<RECT> displayRect);
typedef _GetMonitorRECT_Dart = int Function(
    Pointer obj, Pointer<Utf16> monitorID, Pointer<RECT> displayRect);

typedef _SetBackgroundColor_Native = Int32 Function(Pointer obj, Uint32 color);
typedef _SetBackgroundColor_Dart = int Function(Pointer obj, int color);

typedef _GetBackgroundColor_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> color);
typedef _GetBackgroundColor_Dart = int Function(
    Pointer obj, Pointer<Uint32> color);

typedef _SetPosition_Native = Int32 Function(Pointer obj, Int32 position);
typedef _SetPosition_Dart = int Function(Pointer obj, int position);

typedef _GetPosition_Native = Int32 Function(
    Pointer obj, Pointer<Int32> position);
typedef _GetPosition_Dart = int Function(Pointer obj, Pointer<Int32> position);

typedef _SetSlideshow_Native = Int32 Function(
    Pointer obj, Pointer<COMObject> items);
typedef _SetSlideshow_Dart = int Function(
    Pointer obj, Pointer<COMObject> items);

typedef _GetSlideshow_Native = Int32 Function(
    Pointer obj, Pointer<Pointer<COMObject>> items);
typedef _GetSlideshow_Dart = int Function(
    Pointer obj, Pointer<Pointer<COMObject>> items);

typedef _SetSlideshowOptions_Native = Int32 Function(
    Pointer obj, Int32 options, Uint32 slideshowTick);
typedef _SetSlideshowOptions_Dart = int Function(
    Pointer obj, int options, int slideshowTick);

typedef _GetSlideshowOptions_Native = Int32 Function(
    Pointer obj, Pointer<Int32> options, Pointer<Uint32> slideshowTick);
typedef _GetSlideshowOptions_Dart = int Function(
    Pointer obj, Pointer<Int32> options, Pointer<Uint32> slideshowTick);

typedef _AdvanceSlideshow_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> monitorID, Int32 direction);
typedef _AdvanceSlideshow_Dart = int Function(
    Pointer obj, Pointer<Utf16> monitorID, int direction);

typedef _GetStatus_Native = Int32 Function(Pointer obj, Pointer<Int32> state);
typedef _GetStatus_Dart = int Function(Pointer obj, Pointer<Int32> state);

typedef _Enable_Native = Int32 Function(Pointer obj, Int32 enable);
typedef _Enable_Dart = int Function(Pointer obj, int enable);

/// {@category Interface}
/// {@category com}
class IDesktopWallpaper extends IUnknown {
  // vtable begins at 3, ends at 18

  IDesktopWallpaper(Pointer<COMObject> ptr) : super(ptr);

  int SetWallpaper(Pointer<Utf16> monitorID, Pointer<Utf16> wallpaper) => ptr
      .ref.lpVtbl.value
      .elementAt(3)
      .cast<Pointer<NativeFunction<_SetWallpaper_Native>>>()
      .value
      .asFunction<_SetWallpaper_Dart>()(ptr.ref.lpVtbl, monitorID, wallpaper);

  int GetWallpaper(
          Pointer<Utf16> monitorID, Pointer<Pointer<Utf16>> wallpaper) =>
      ptr.ref.lpVtbl.value
              .elementAt(4)
              .cast<Pointer<NativeFunction<_GetWallpaper_Native>>>()
              .value
              .asFunction<_GetWallpaper_Dart>()(
          ptr.ref.lpVtbl, monitorID, wallpaper);

  int GetMonitorDevicePathAt(
          int monitorIndex, Pointer<Pointer<Utf16>> monitorID) =>
      ptr.ref.lpVtbl.value
              .elementAt(5)
              .cast<Pointer<NativeFunction<_GetMonitorDevicePathAt_Native>>>()
              .value
              .asFunction<_GetMonitorDevicePathAt_Dart>()(
          ptr.ref.lpVtbl, monitorIndex, monitorID);

  int GetMonitorDevicePathCount(Pointer<Uint32> count) => ptr.ref.lpVtbl.value
      .elementAt(6)
      .cast<Pointer<NativeFunction<_GetMonitorDevicePathCount_Native>>>()
      .value
      .asFunction<_GetMonitorDevicePathCount_Dart>()(ptr.ref.lpVtbl, count);

  int GetMonitorRECT(Pointer<Utf16> monitorID, Pointer<RECT> displayRect) =>
      ptr.ref.lpVtbl.value
              .elementAt(7)
              .cast<Pointer<NativeFunction<_GetMonitorRECT_Native>>>()
              .value
              .asFunction<_GetMonitorRECT_Dart>()(
          ptr.ref.lpVtbl, monitorID, displayRect);

  int SetBackgroundColor(int color) => ptr.ref.lpVtbl.value
      .elementAt(8)
      .cast<Pointer<NativeFunction<_SetBackgroundColor_Native>>>()
      .value
      .asFunction<_SetBackgroundColor_Dart>()(ptr.ref.lpVtbl, color);

  int GetBackgroundColor(Pointer<Uint32> color) => ptr.ref.lpVtbl.value
      .elementAt(9)
      .cast<Pointer<NativeFunction<_GetBackgroundColor_Native>>>()
      .value
      .asFunction<_GetBackgroundColor_Dart>()(ptr.ref.lpVtbl, color);

  int SetPosition(int position) => ptr.ref.lpVtbl.value
      .elementAt(10)
      .cast<Pointer<NativeFunction<_SetPosition_Native>>>()
      .value
      .asFunction<_SetPosition_Dart>()(ptr.ref.lpVtbl, position);

  int GetPosition(Pointer<Int32> position) => ptr.ref.lpVtbl.value
      .elementAt(11)
      .cast<Pointer<NativeFunction<_GetPosition_Native>>>()
      .value
      .asFunction<_GetPosition_Dart>()(ptr.ref.lpVtbl, position);

  int SetSlideshow(Pointer<COMObject> items) => ptr.ref.lpVtbl.value
      .elementAt(12)
      .cast<Pointer<NativeFunction<_SetSlideshow_Native>>>()
      .value
      .asFunction<_SetSlideshow_Dart>()(ptr.ref.lpVtbl, items);

  int GetSlideshow(Pointer<Pointer<COMObject>> items) => ptr.ref.lpVtbl.value
      .elementAt(13)
      .cast<Pointer<NativeFunction<_GetSlideshow_Native>>>()
      .value
      .asFunction<_GetSlideshow_Dart>()(ptr.ref.lpVtbl, items);

  int SetSlideshowOptions(int options, int slideshowTick) =>
      ptr.ref.lpVtbl.value
              .elementAt(14)
              .cast<Pointer<NativeFunction<_SetSlideshowOptions_Native>>>()
              .value
              .asFunction<_SetSlideshowOptions_Dart>()(
          ptr.ref.lpVtbl, options, slideshowTick);

  int GetSlideshowOptions(
          Pointer<Int32> options, Pointer<Uint32> slideshowTick) =>
      ptr.ref.lpVtbl.value
              .elementAt(15)
              .cast<Pointer<NativeFunction<_GetSlideshowOptions_Native>>>()
              .value
              .asFunction<_GetSlideshowOptions_Dart>()(
          ptr.ref.lpVtbl, options, slideshowTick);

  int AdvanceSlideshow(Pointer<Utf16> monitorID, int direction) =>
      ptr.ref.lpVtbl.value
              .elementAt(16)
              .cast<Pointer<NativeFunction<_AdvanceSlideshow_Native>>>()
              .value
              .asFunction<_AdvanceSlideshow_Dart>()(
          ptr.ref.lpVtbl, monitorID, direction);

  int GetStatus(Pointer<Int32> state) => ptr.ref.lpVtbl.value
      .elementAt(17)
      .cast<Pointer<NativeFunction<_GetStatus_Native>>>()
      .value
      .asFunction<_GetStatus_Dart>()(ptr.ref.lpVtbl, state);

  int Enable(int enable) => ptr.ref.lpVtbl.value
      .elementAt(18)
      .cast<Pointer<NativeFunction<_Enable_Native>>>()
      .value
      .asFunction<_Enable_Dart>()(ptr.ref.lpVtbl, enable);
}

/// {@category com}
class DesktopWallpaper extends IDesktopWallpaper {
  DesktopWallpaper(Pointer<COMObject> ptr) : super(ptr);

  factory DesktopWallpaper.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_DesktopWallpaper);
    final iid = calloc<GUID>()..ref.setGUID(IID_IDesktopWallpaper);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return DesktopWallpaper(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
