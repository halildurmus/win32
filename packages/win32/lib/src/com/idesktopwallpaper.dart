// idesktopwallpaper.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../callbacks.dart';
import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../propertykey.dart';
import '../structs.g.dart';
import '../utils.dart';
import '../variant.dart';
import '../win32/ole32.g.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IDesktopWallpaper = '{b92b56a9-8b55-4e14-9a89-0199bbb6f93b}';

/// Provides methods for managing the desktop wallpaper.
///
/// {@category com}
class IDesktopWallpaper extends IUnknown {
  // vtable begins at 3, is 16 entries long.
  IDesktopWallpaper(super.ptr);

  factory IDesktopWallpaper.from(IUnknown interface) =>
      IDesktopWallpaper(interface.toInterface(IID_IDesktopWallpaper));

  int setWallpaper(Pointer<Utf16> monitorID, Pointer<Utf16> wallpaper) =>
      (ptr.ref.vtable + 3)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(
                  Pointer,
                  Pointer<Utf16> monitorID,
                  Pointer<Utf16> wallpaper,
                )
              >
            >
          >()
          .value
          .asFunction<
            int Function(
              Pointer,
              Pointer<Utf16> monitorID,
              Pointer<Utf16> wallpaper,
            )
          >()(ptr.ref.lpVtbl, monitorID, wallpaper);

  int getWallpaper(
    Pointer<Utf16> monitorID,
    Pointer<Pointer<Utf16>> wallpaper,
  ) => (ptr.ref.vtable + 4)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<Utf16> monitorID,
              Pointer<Pointer<Utf16>> wallpaper,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          Pointer<Utf16> monitorID,
          Pointer<Pointer<Utf16>> wallpaper,
        )
      >()(ptr.ref.lpVtbl, monitorID, wallpaper);

  int getMonitorDevicePathAt(
    int monitorIndex,
    Pointer<Pointer<Utf16>> monitorID,
  ) => (ptr.ref.vtable + 5)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Uint32 monitorIndex,
              Pointer<Pointer<Utf16>> monitorID,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          int monitorIndex,
          Pointer<Pointer<Utf16>> monitorID,
        )
      >()(ptr.ref.lpVtbl, monitorIndex, monitorID);

  int getMonitorDevicePathCount(Pointer<Uint32> count) => (ptr.ref.vtable + 6)
      .cast<
        Pointer<NativeFunction<Int32 Function(Pointer, Pointer<Uint32> count)>>
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Uint32> count)>()(
    ptr.ref.lpVtbl,
    count,
  );

  int getMonitorRECT(Pointer<Utf16> monitorID, Pointer<RECT> displayRect) =>
      (ptr.ref.vtable + 7)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(
                  Pointer,
                  Pointer<Utf16> monitorID,
                  Pointer<RECT> displayRect,
                )
              >
            >
          >()
          .value
          .asFunction<
            int Function(
              Pointer,
              Pointer<Utf16> monitorID,
              Pointer<RECT> displayRect,
            )
          >()(ptr.ref.lpVtbl, monitorID, displayRect);

  int setBackgroundColor(int color) => (ptr.ref.vtable + 8)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer, Uint32 color)>>>()
      .value
      .asFunction<int Function(Pointer, int color)>()(ptr.ref.lpVtbl, color);

  int getBackgroundColor(Pointer<Uint32> color) => (ptr.ref.vtable + 9)
      .cast<
        Pointer<NativeFunction<Int32 Function(Pointer, Pointer<Uint32> color)>>
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Uint32> color)>()(
    ptr.ref.lpVtbl,
    color,
  );

  int setPosition(int position) => (ptr.ref.vtable + 10)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer, Int32 position)>>>()
      .value
      .asFunction<int Function(Pointer, int position)>()(
    ptr.ref.lpVtbl,
    position,
  );

  int getPosition(Pointer<Int32> position) => (ptr.ref.vtable + 11)
      .cast<
        Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> position)>
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Int32> position)>()(
    ptr.ref.lpVtbl,
    position,
  );

  int setSlideshow(Pointer<COMObject> items) => (ptr.ref.vtable + 12)
      .cast<
        Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> items)>
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<COMObject> items)>()(
    ptr.ref.lpVtbl,
    items,
  );

  int getSlideshow(Pointer<Pointer<COMObject>> items) => (ptr.ref.vtable + 13)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(Pointer, Pointer<Pointer<COMObject>> items)
          >
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Pointer<COMObject>> items)>()(
    ptr.ref.lpVtbl,
    items,
  );

  int setSlideshowOptions(int options, int slideshowTick) =>
      (ptr.ref.vtable + 14)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(Pointer, Int32 options, Uint32 slideshowTick)
              >
            >
          >()
          .value
          .asFunction<int Function(Pointer, int options, int slideshowTick)>()(
        ptr.ref.lpVtbl,
        options,
        slideshowTick,
      );

  int getSlideshowOptions(
    Pointer<Int32> options,
    Pointer<Uint32> slideshowTick,
  ) => (ptr.ref.vtable + 15)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<Int32> options,
              Pointer<Uint32> slideshowTick,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          Pointer<Int32> options,
          Pointer<Uint32> slideshowTick,
        )
      >()(ptr.ref.lpVtbl, options, slideshowTick);

  int advanceSlideshow(Pointer<Utf16> monitorID, int direction) =>
      (ptr.ref.vtable + 16)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(
                  Pointer,
                  Pointer<Utf16> monitorID,
                  Int32 direction,
                )
              >
            >
          >()
          .value
          .asFunction<
            int Function(Pointer, Pointer<Utf16> monitorID, int direction)
          >()(ptr.ref.lpVtbl, monitorID, direction);

  int getStatus(Pointer<Int32> state) => (ptr.ref.vtable + 17)
      .cast<
        Pointer<NativeFunction<Int32 Function(Pointer, Pointer<Int32> state)>>
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Int32> state)>()(
    ptr.ref.lpVtbl,
    state,
  );

  int enable(int enable) => (ptr.ref.vtable + 18)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer, Int32 enable)>>>()
      .value
      .asFunction<int Function(Pointer, int enable)>()(ptr.ref.lpVtbl, enable);
}

/// @nodoc
const CLSID_DesktopWallpaper = '{c2cf3110-460e-4fc1-b9d0-8a1c0c9cc4bd}';

/// {@category com}
class DesktopWallpaper extends IDesktopWallpaper {
  DesktopWallpaper(super.ptr);

  factory DesktopWallpaper.createInstance() => DesktopWallpaper(
    COMObject.createFromID(CLSID_DesktopWallpaper, IID_IDesktopWallpaper),
  );
}
