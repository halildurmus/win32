import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'IUnknown.dart';
import 'combase.dart';
import 'comerrors.dart';

import '../constants.dart';
import '../macros.dart';
import '../structs.dart';
import '../win32.dart';

const CLSID_DesktopWallpaper = '{C2CF3110-460E-4fc1-B9D0-8A1C0C9CC4BD}';
const IID_IDesktopWallpaper = '{B92B56A9-8B55-4E14-9A89-0199BBB6F93B}';

typedef SetWallpaper_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> monitorID, Pointer<Utf16> wallpaper);
typedef SetWallpaper_Dart = int Function(
    Pointer obj, Pointer<Utf16> monitorID, Pointer<Utf16> wallpaper);

typedef GetWallpaper_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> monitorID, Pointer<Utf16> wallpaper);
typedef GetWallpaper_Dart = int Function(
    Pointer obj, Pointer<Utf16> monitorID, Pointer<Utf16> wallpaper);

typedef GetMonitorDevicePathAt_Native = Int32 Function(
    Pointer obj, Uint32 monitorIndex, Pointer<Utf16> monitorID);
typedef GetMonitorDevicePathAt_Dart = int Function(
    Pointer obj, int monitorIndex, Pointer<Utf16> monitorID);

typedef GetMonitorDevicePathCount_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> count);
typedef GetMonitorDevicePathCount_Dart = int Function(
    Pointer obj, Pointer<Uint32> count);

typedef GetMonitorRECT_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> monitorID, Pointer<RECT> displayRect);
typedef GetMonitorRECT_Dart = int Function(
    Pointer obj, Pointer<Utf16> monitorID, Pointer<RECT> displayRect);

typedef SetBackgroundColor_Native = Int32 Function(Pointer obj, Uint32 color);
typedef SetBackgroundColor_Dart = int Function(Pointer obj, int color);

typedef GetBackgroundColor_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> color);
typedef GetBackgroundColor_Dart = int Function(
    Pointer obj, Pointer<Uint32> color);

typedef SetPosition_Native = Int32 Function(Pointer obj, Uint32 position);
typedef SetPosition_Dart = int Function(Pointer obj, int position);

typedef GetPosition_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> position);
typedef GetPosition_Dart = int Function(Pointer obj, Pointer<Uint32> position);

typedef SetSlideshow_Native = Int32 Function(
    Pointer obj, Pointer<COMObject> items);
typedef SetSlideshow_Dart = int Function(Pointer obj, Pointer<COMObject> items);

typedef GetSlideshow_Native = Int32 Function(
    Pointer obj, Pointer<COMObject> items);
typedef GetSlideshow_Dart = int Function(Pointer obj, Pointer<COMObject> items);

typedef SetSlideshowOptions_Native = Int32 Function(
    Pointer obj, Uint32 options, Uint32 slideshowTick);
typedef SetSlideshowOptions_Dart = int Function(
    Pointer obj, int options, int slideshowTick);

typedef GetSlideshowOptions_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> options, Pointer<Uint32> slideshowTick);
typedef GetSlideshowOptions_Dart = int Function(
    Pointer obj, Pointer<Uint32> options, Pointer<Uint32> slideshowTick);

typedef AdvanceSlideshow_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> monitorID, Uint32 direction);
typedef AdvanceSlideshow_Dart = int Function(
    Pointer obj, Pointer<Utf16> monitorID, int direction);

typedef GetStatus_Native = Int32 Function(Pointer obj, Pointer<Uint32> state);
typedef GetStatus_Dart = int Function(Pointer obj, Pointer<Uint32> state);

typedef Enable_Native = Int32 Function(Pointer obj, Int32 enable);
typedef Enable_Dart = int Function(Pointer obj, int enable);

class IDesktopWallpaper extends IUnknown {
  // vtable begins at 3, ends at 18

  @override
  Pointer<COMObject> ptr;

  IDesktopWallpaper(this.ptr) : super(ptr);

  int SetWallpaper(Pointer<Utf16> monitorID, Pointer<Utf16> wallpaper) =>
      Pointer<NativeFunction<SetWallpaper_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(3).value)
              .asFunction<SetWallpaper_Dart>()(
          ptr.ref.lpVtbl, monitorID, wallpaper);

  int GetWallpaper(Pointer<Utf16> monitorID, Pointer<Utf16> wallpaper) =>
      Pointer<NativeFunction<GetWallpaper_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(4).value)
              .asFunction<GetWallpaper_Dart>()(
          ptr.ref.lpVtbl, monitorID, wallpaper);

  int GetMonitorDevicePathAt(int monitorIndex, Pointer<Utf16> monitorID) =>
      Pointer<NativeFunction<GetMonitorDevicePathAt_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(5).value)
              .asFunction<GetMonitorDevicePathAt_Dart>()(
          ptr.ref.lpVtbl, monitorIndex, monitorID);

  int GetMonitorDevicePathCount(Pointer<Uint32> count) =>
      Pointer<NativeFunction<GetMonitorDevicePathCount_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(6).value)
          .asFunction<GetMonitorDevicePathCount_Dart>()(ptr.ref.lpVtbl, count);

  int GetMonitorRECT(Pointer<Utf16> monitorID, Pointer<RECT> displayRect) =>
      Pointer<NativeFunction<GetMonitorRECT_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(7).value)
              .asFunction<GetMonitorRECT_Dart>()(
          ptr.ref.lpVtbl, monitorID, displayRect);

  int SetBackgroundColor(int color) =>
      Pointer<NativeFunction<SetBackgroundColor_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(8).value)
          .asFunction<SetBackgroundColor_Dart>()(ptr.ref.lpVtbl, color);

  int GetBackgroundColor(Pointer<Uint32> color) =>
      Pointer<NativeFunction<GetBackgroundColor_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(9).value)
          .asFunction<GetBackgroundColor_Dart>()(ptr.ref.lpVtbl, color);

  int SetPosition(int position) =>
      Pointer<NativeFunction<SetPosition_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(10).value)
          .asFunction<SetPosition_Dart>()(ptr.ref.lpVtbl, position);

  int GetPosition(Pointer<Uint32> position) =>
      Pointer<NativeFunction<GetPosition_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(11).value)
          .asFunction<GetPosition_Dart>()(ptr.ref.lpVtbl, position);

  int SetSlideshow(Pointer<COMObject> items) =>
      Pointer<NativeFunction<SetSlideshow_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(12).value)
          .asFunction<SetSlideshow_Dart>()(ptr.ref.lpVtbl, items);

  int GetSlideshow(Pointer<COMObject> items) =>
      Pointer<NativeFunction<GetSlideshow_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(13).value)
          .asFunction<GetSlideshow_Dart>()(ptr.ref.lpVtbl, items);

  int SetSlideshowOptions(int options, int slideshowTick) =>
      Pointer<NativeFunction<SetSlideshowOptions_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(14).value)
              .asFunction<SetSlideshowOptions_Dart>()(
          ptr.ref.lpVtbl, options, slideshowTick);

  int GetSlideshowOptions(
          Pointer<Uint32> options, Pointer<Uint32> slideshowTick) =>
      Pointer<NativeFunction<GetSlideshowOptions_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(15).value)
              .asFunction<GetSlideshowOptions_Dart>()(
          ptr.ref.lpVtbl, options, slideshowTick);

  int AdvanceSlideshow(Pointer<Utf16> monitorID, int direction) =>
      Pointer<NativeFunction<AdvanceSlideshow_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(16).value)
              .asFunction<AdvanceSlideshow_Dart>()(
          ptr.ref.lpVtbl, monitorID, direction);

  int GetStatus(Pointer<Uint32> state) =>
      Pointer<NativeFunction<GetStatus_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(17).value)
          .asFunction<GetStatus_Dart>()(ptr.ref.lpVtbl, state);

  int Enable(int enable) => Pointer<NativeFunction<Enable_Native>>.fromAddress(
          ptr.ref.vtable.elementAt(18).value)
      .asFunction<Enable_Dart>()(ptr.ref.lpVtbl, enable);
}

class DesktopWallpaper extends IDesktopWallpaper {
  @override
  Pointer<COMObject> ptr;

  factory DesktopWallpaper.createInstance() {
    final ptr = COMObject.allocate().addressOf;

    var hr = CoCreateInstance(
        GUID.fromString(CLSID_DesktopWallpaper).addressOf,
        nullptr,
        CLSCTX_ALL,
        GUID.fromString(IID_IDesktopWallpaper).addressOf,
        ptr.cast());

    if (!SUCCEEDED(hr)) throw COMException(hr);
    return DesktopWallpaper(ptr);
  }

  DesktopWallpaper(this.ptr) : super(ptr);
}
