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

typedef SetBackgroundColor_Native = Int32 Function(Pointer obj, Uint32 color);
typedef SetBackgroundColor_Dart = int Function(Pointer obj, int color);

typedef GetBackgroundColor_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> color);
typedef GetBackgroundColor_Dart = int Function(
    Pointer obj, Pointer<Uint32> color);

typedef SetPosition_Native = Int32 Function(Pointer obj, Int32 position);
typedef SetPosition_Dart = int Function(Pointer obj, int position);

typedef GetPosition_Native = Int32 Function(
    Pointer obj, Pointer<Int32> position);
typedef GetPosition_Dart = int Function(Pointer obj, Pointer<Int32> position);

typedef GetStatus_Native = Int32 Function(Pointer obj, Pointer<Int32> state);
typedef GetStatus_Dart = int Function(Pointer obj, Pointer<Int32> state);

typedef Enable_Native = Int32 Function(Pointer obj, Int32 enable);
typedef Enable_Dart = int Function(Pointer obj, int enable);

class IDesktopWallpaper extends IUnknown {
  // vtable begins at 3, ends at 18

  @override
  Pointer<COMObject> ptr;

  IDesktopWallpaper(this.ptr) : super(ptr);

  int SetWallpaper(
          int hwndOwner, Pointer<Utf16> monitorID, Pointer<Utf16> wallpaper) =>
      Pointer<NativeFunction<SetWallpaper_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(3).value)
              .asFunction<SetWallpaper_Dart>()(
          ptr.ref.lpVtbl, monitorID, wallpaper);

  int GetWallpaper(
          int hwndOwner, Pointer<Utf16> monitorID, Pointer<Utf16> wallpaper) =>
      Pointer<NativeFunction<GetWallpaper_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(4).value)
              .asFunction<GetWallpaper_Dart>()(
          ptr.ref.lpVtbl, monitorID, wallpaper);

  int SetBackgroundColor(int hwndOwner, Pointer<Utf16> monitorID, int color) =>
      Pointer<NativeFunction<SetBackgroundColor_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(8).value)
          .asFunction<SetBackgroundColor_Dart>()(ptr.ref.lpVtbl, color);

  int GetBackgroundColor(
          int hwndOwner, Pointer<Utf16> monitorID, Pointer<Uint32> color) =>
      Pointer<NativeFunction<GetBackgroundColor_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(9).value)
          .asFunction<GetBackgroundColor_Dart>()(ptr.ref.lpVtbl, color);

  int SetPosition(int hwndOwner, int position) =>
      Pointer<NativeFunction<SetPosition_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(10).value)
          .asFunction<SetPosition_Dart>()(ptr.ref.lpVtbl, position);

  int GetPosition(int hwndOwner, Pointer<Int32> position) =>
      Pointer<NativeFunction<GetPosition_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(11).value)
          .asFunction<GetPosition_Dart>()(ptr.ref.lpVtbl, position);

  int GetStatus(int hwndOwner, Pointer<Int32> state) =>
      Pointer<NativeFunction<GetStatus_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(17).value)
          .asFunction<GetStatus_Dart>()(ptr.ref.lpVtbl, state);

  int Enable(int hwndOwner, int enable) =>
      Pointer<NativeFunction<Enable_Native>>.fromAddress(
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
