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

typedef _SetPosition_Native = Int32 Function(Pointer obj, Uint32 position);
typedef _SetPosition_Dart = int Function(Pointer obj, int position);

typedef _GetPosition_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> position);
typedef _GetPosition_Dart = int Function(Pointer obj, Pointer<Uint32> position);

typedef _SetSlideshow_Native = Int32 Function(Pointer obj, Pointer items);
typedef _SetSlideshow_Dart = int Function(Pointer obj, Pointer items);

typedef _GetSlideshow_Native = Int32 Function(
    Pointer obj, Pointer<Pointer> items);
typedef _GetSlideshow_Dart = int Function(Pointer obj, Pointer<Pointer> items);

typedef _SetSlideshowOptions_Native = Int32 Function(
    Pointer obj, Uint32 options, Uint32 slideshowTick);
typedef _SetSlideshowOptions_Dart = int Function(
    Pointer obj, int options, int slideshowTick);

typedef _GetSlideshowOptions_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> options, Pointer<Uint32> slideshowTick);
typedef _GetSlideshowOptions_Dart = int Function(
    Pointer obj, Pointer<Uint32> options, Pointer<Uint32> slideshowTick);

typedef _AdvanceSlideshow_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> monitorID, Uint32 direction);
typedef _AdvanceSlideshow_Dart = int Function(
    Pointer obj, Pointer<Utf16> monitorID, int direction);

typedef _GetStatus_Native = Int32 Function(Pointer obj, Pointer<Uint32> state);
typedef _GetStatus_Dart = int Function(Pointer obj, Pointer<Uint32> state);

typedef _Enable_Native = Int32 Function(Pointer obj, Int32 enable);
typedef _Enable_Dart = int Function(Pointer obj, int enable);

/// {@category Interface}
/// {@category com}
class IDesktopWallpaper extends IUnknown {
  // vtable begins at 3, ends at 18

  IDesktopWallpaper(Pointer<COMObject> ptr) : super(ptr);

  int SetWallpaper(Pointer<Utf16> monitorID, Pointer<Utf16> wallpaper) =>
      Pointer<NativeFunction<_SetWallpaper_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(3).value)
              .asFunction<_SetWallpaper_Dart>()(
          ptr.ref.lpVtbl, monitorID, wallpaper);

  int GetWallpaper(
          Pointer<Utf16> monitorID, Pointer<Pointer<Utf16>> wallpaper) =>
      Pointer<NativeFunction<_GetWallpaper_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(4).value)
              .asFunction<_GetWallpaper_Dart>()(
          ptr.ref.lpVtbl, monitorID, wallpaper);

  int GetMonitorDevicePathAt(
          int monitorIndex, Pointer<Pointer<Utf16>> monitorID) =>
      Pointer<NativeFunction<_GetMonitorDevicePathAt_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(5).value)
              .asFunction<_GetMonitorDevicePathAt_Dart>()(
          ptr.ref.lpVtbl, monitorIndex, monitorID);

  int GetMonitorDevicePathCount(Pointer<Uint32> count) =>
      Pointer<NativeFunction<_GetMonitorDevicePathCount_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(6).value)
          .asFunction<_GetMonitorDevicePathCount_Dart>()(ptr.ref.lpVtbl, count);

  int GetMonitorRECT(Pointer<Utf16> monitorID, Pointer<RECT> displayRect) =>
      Pointer<NativeFunction<_GetMonitorRECT_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(7).value)
              .asFunction<_GetMonitorRECT_Dart>()(
          ptr.ref.lpVtbl, monitorID, displayRect);

  int SetBackgroundColor(int color) =>
      Pointer<NativeFunction<_SetBackgroundColor_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(8).value)
          .asFunction<_SetBackgroundColor_Dart>()(ptr.ref.lpVtbl, color);

  int GetBackgroundColor(Pointer<Uint32> color) =>
      Pointer<NativeFunction<_GetBackgroundColor_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(9).value)
          .asFunction<_GetBackgroundColor_Dart>()(ptr.ref.lpVtbl, color);

  int SetPosition(int position) =>
      Pointer<NativeFunction<_SetPosition_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(10).value)
          .asFunction<_SetPosition_Dart>()(ptr.ref.lpVtbl, position);

  int GetPosition(Pointer<Uint32> position) =>
      Pointer<NativeFunction<_GetPosition_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(11).value)
          .asFunction<_GetPosition_Dart>()(ptr.ref.lpVtbl, position);

  int SetSlideshow(Pointer items) =>
      Pointer<NativeFunction<_SetSlideshow_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(12).value)
          .asFunction<_SetSlideshow_Dart>()(ptr.ref.lpVtbl, items);

  int GetSlideshow(Pointer<Pointer> items) =>
      Pointer<NativeFunction<_GetSlideshow_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(13).value)
          .asFunction<_GetSlideshow_Dart>()(ptr.ref.lpVtbl, items);

  int SetSlideshowOptions(int options, int slideshowTick) =>
      Pointer<NativeFunction<_SetSlideshowOptions_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(14).value)
              .asFunction<_SetSlideshowOptions_Dart>()(
          ptr.ref.lpVtbl, options, slideshowTick);

  int GetSlideshowOptions(
          Pointer<Uint32> options, Pointer<Uint32> slideshowTick) =>
      Pointer<NativeFunction<_GetSlideshowOptions_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(15).value)
              .asFunction<_GetSlideshowOptions_Dart>()(
          ptr.ref.lpVtbl, options, slideshowTick);

  int AdvanceSlideshow(Pointer<Utf16> monitorID, int direction) =>
      Pointer<NativeFunction<_AdvanceSlideshow_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(16).value)
              .asFunction<_AdvanceSlideshow_Dart>()(
          ptr.ref.lpVtbl, monitorID, direction);

  int GetStatus(Pointer<Uint32> state) =>
      Pointer<NativeFunction<_GetStatus_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(17).value)
          .asFunction<_GetStatus_Dart>()(ptr.ref.lpVtbl, state);

  int Enable(int enable) => Pointer<NativeFunction<_Enable_Native>>.fromAddress(
          ptr.ref.vtable.elementAt(18).value)
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
