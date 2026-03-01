// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Dart representation of a COM interface.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:meta/meta.dart';

import '../bstr.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../enums.g.dart';
import '../exception.dart';
import '../extensions/pointer.dart';
import '../guid.dart';
import '../hresult.dart';
import '../hstring.dart';
import '../macros.dart';
import '../ntstatus.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../rpc_status.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'interface.g.dart';
import 'ishellitemarray.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IDesktopWallpaper = GUID.fromComponents(
  0xb92b56a9,
  0x8b55,
  0x4e14,
  .fromList(const [0x9a, 0x89, 0x1, 0x99, 0xbb, 0xb6, 0xf9, 0x3b]),
);

/// Provides methods for managing the desktop wallpaper.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nn-shobjidl_core-idesktopwallpaper>.
///
/// {@category com}
class IDesktopWallpaper extends IUnknown implements ComInterface {
  /// Creates a new instance of [IDesktopWallpaper] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IDesktopWallpaper]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  IDesktopWallpaper(super.ptr)
    : _vtable = ptr.value.cast<IDesktopWallpaperVtbl>().ref;

  /// Creates a new instance of [IDesktopWallpaper] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IDesktopWallpaper] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IDesktopWallpaper.from(IUnknown interface) =>
      interface.queryInterface();

  final IDesktopWallpaperVtbl _vtable;
  late final _SetWallpaperFn =
      _vtable.SetWallpaper.asFunction<
        int Function(VTablePointer, Pointer<Utf16>, Pointer<Utf16>)
      >();
  late final _GetWallpaperFn =
      _vtable.GetWallpaper.asFunction<
        int Function(VTablePointer, Pointer<Utf16>, Pointer<Pointer<Utf16>>)
      >();
  late final _GetMonitorDevicePathAtFn =
      _vtable.GetMonitorDevicePathAt.asFunction<
        int Function(VTablePointer, int, Pointer<Pointer<Utf16>>)
      >();
  late final _GetMonitorDevicePathCountFn =
      _vtable.GetMonitorDevicePathCount.asFunction<
        int Function(VTablePointer, Pointer<Uint32>)
      >();
  late final _GetMonitorRECTFn =
      _vtable.GetMonitorRECT.asFunction<
        int Function(VTablePointer, Pointer<Utf16>, Pointer<RECT>)
      >();
  late final _SetBackgroundColorFn =
      _vtable.SetBackgroundColor.asFunction<int Function(VTablePointer, int)>();
  late final _GetBackgroundColorFn =
      _vtable.GetBackgroundColor.asFunction<
        int Function(VTablePointer, Pointer<Uint32>)
      >();
  late final _SetPositionFn =
      _vtable.SetPosition.asFunction<int Function(VTablePointer, int)>();
  late final _GetPositionFn = _vtable
      .GetPosition.asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _SetSlideshowFn = _vtable
      .SetSlideshow.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _GetSlideshowFn =
      _vtable.GetSlideshow.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _SetSlideshowOptionsFn = _vtable
      .SetSlideshowOptions.asFunction<int Function(VTablePointer, int, int)>();
  late final _GetSlideshowOptionsFn =
      _vtable.GetSlideshowOptions.asFunction<
        int Function(VTablePointer, Pointer<Int32>, Pointer<Uint32>)
      >();
  late final _AdvanceSlideshowFn =
      _vtable.AdvanceSlideshow.asFunction<
        int Function(VTablePointer, Pointer<Utf16>, int)
      >();
  late final _GetStatusFn = _vtable
      .GetStatus.asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _EnableFn =
      _vtable.Enable.asFunction<int Function(VTablePointer, int)>();

  /// Sets the desktop wallpaper.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-idesktopwallpaper-setwallpaper>.
  @pragma('vm:prefer-inline')
  void setWallpaper(PCWSTR monitorID, PCWSTR wallpaper) {
    final hr$ = HRESULT(_SetWallpaperFn(ptr, monitorID, wallpaper));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets the current desktop wallpaper.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-idesktopwallpaper-getwallpaper>.
  PWSTR getWallpaper(PCWSTR monitorID) {
    final wallpaper = adaptiveCalloc<Pointer<Utf16>>();
    final hr$ = HRESULT(_GetWallpaperFn(ptr, monitorID, wallpaper));
    if (hr$.isError) {
      free(wallpaper);
      throw WindowsException(hr$);
    }
    final result$ = wallpaper.value;
    free(wallpaper);
    return .new(result$);
  }

  /// Retrieves the unique ID of one of the system's monitors.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-idesktopwallpaper-getmonitordevicepathat>.
  PWSTR getMonitorDevicePathAt(int monitorIndex) {
    final monitorID = adaptiveCalloc<Pointer<Utf16>>();
    final hr$ = HRESULT(
      _GetMonitorDevicePathAtFn(ptr, monitorIndex, monitorID),
    );
    if (hr$.isError) {
      free(monitorID);
      throw WindowsException(hr$);
    }
    final result$ = monitorID.value;
    free(monitorID);
    return .new(result$);
  }

  /// Retrieves the number of monitors that are associated with the system.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-idesktopwallpaper-getmonitordevicepathcount>.
  int getMonitorDevicePathCount() {
    final count = adaptiveCalloc<Uint32>();
    final hr$ = HRESULT(_GetMonitorDevicePathCountFn(ptr, count));
    if (hr$.isError) {
      free(count);
      throw WindowsException(hr$);
    }
    final result$ = count.value;
    free(count);
    return result$;
  }

  /// Retrieves the display rectangle of the specified monitor.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-idesktopwallpaper-getmonitorrect>.
  Pointer<RECT> getMonitorRECT(PCWSTR monitorID) {
    final displayRect = adaptiveCalloc<RECT>();
    final hr$ = HRESULT(_GetMonitorRECTFn(ptr, monitorID, displayRect));
    if (hr$.isError) {
      free(displayRect);
      throw WindowsException(hr$);
    }
    return displayRect;
  }

  /// Sets the color that is visible on the desktop when no image is displayed
  /// or when the desktop background has been disabled.
  ///
  /// This color is also used as a border when the desktop wallpaper does not
  /// fill the entire screen.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-idesktopwallpaper-setbackgroundcolor>.
  @pragma('vm:prefer-inline')
  void setBackgroundColor(COLORREF color) {
    final hr$ = HRESULT(_SetBackgroundColorFn(ptr, color));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves the color that is visible on the desktop when no image is
  /// displayed or when the desktop background has been disabled.
  ///
  /// This color is also used as a border when the desktop wallpaper does not
  /// fill the entire screen.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-idesktopwallpaper-getbackgroundcolor>.
  COLORREF getBackgroundColor() {
    final color = adaptiveCalloc<Uint32>();
    final hr$ = HRESULT(_GetBackgroundColorFn(ptr, color));
    if (hr$.isError) {
      free(color);
      throw WindowsException(hr$);
    }
    final result$ = color.value;
    free(color);
    return .new(result$);
  }

  /// Sets the display option for the desktop wallpaper image, determining
  /// whether the image should be centered, tiled, or stretched.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-idesktopwallpaper-setposition>.
  @pragma('vm:prefer-inline')
  void setPosition(DESKTOP_WALLPAPER_POSITION position) {
    final hr$ = HRESULT(_SetPositionFn(ptr, position));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves the current display value for the desktop background image.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-idesktopwallpaper-getposition>.
  DESKTOP_WALLPAPER_POSITION getPosition() {
    final position = adaptiveCalloc<Int32>();
    final hr$ = HRESULT(_GetPositionFn(ptr, position));
    if (hr$.isError) {
      free(position);
      throw WindowsException(hr$);
    }
    final result$ = position.value;
    free(position);
    return .new(result$);
  }

  /// Specifies the images to use for the desktop wallpaper slideshow.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-idesktopwallpaper-setslideshow>.
  @pragma('vm:prefer-inline')
  void setSlideshow(IShellItemArray? items) {
    final hr$ = HRESULT(_SetSlideshowFn(ptr, items?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets the path to the directory where the slideshow images are stored.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-idesktopwallpaper-getslideshow>.
  IShellItemArray? getSlideshow() {
    final items = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetSlideshowFn(ptr, items));
    if (hr$.isError) {
      free(items);
      throw WindowsException(hr$);
    }
    final result$ = items.value;
    free(items);
    if (result$.isNull) return null;
    return .new(result$);
  }

  /// Sets the desktop wallpaper slideshow settings for shuffle and timing.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-idesktopwallpaper-setslideshowoptions>.
  @pragma('vm:prefer-inline')
  void setSlideshowOptions(
    DESKTOP_SLIDESHOW_OPTIONS options,
    int slideshowTick,
  ) {
    final hr$ = HRESULT(_SetSlideshowOptionsFn(ptr, options, slideshowTick));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets the current desktop wallpaper slideshow settings for shuffle and
  /// timing.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-idesktopwallpaper-getslideshowoptions>.
  @pragma('vm:prefer-inline')
  void getSlideshowOptions(
    Pointer<Int32> options,
    Pointer<Uint32> slideshowTick,
  ) {
    final hr$ = HRESULT(_GetSlideshowOptionsFn(ptr, options, slideshowTick));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Switches the wallpaper on a specified monitor to the next image in the
  /// slideshow.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-idesktopwallpaper-advanceslideshow>.
  @pragma('vm:prefer-inline')
  void advanceSlideshow(
    PCWSTR monitorID,
    DESKTOP_SLIDESHOW_DIRECTION direction,
  ) {
    final hr$ = HRESULT(_AdvanceSlideshowFn(ptr, monitorID, direction));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets the current status of the slideshow.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-idesktopwallpaper-getstatus>.
  DESKTOP_SLIDESHOW_STATE getStatus() {
    final state = adaptiveCalloc<Int32>();
    final hr$ = HRESULT(_GetStatusFn(ptr, state));
    if (hr$.isError) {
      free(state);
      throw WindowsException(hr$);
    }
    final result$ = state.value;
    free(state);
    return .new(result$);
  }

  /// Enables or disables the desktop background.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-idesktopwallpaper-enable>.
  @pragma('vm:prefer-inline')
  void enable(bool enable) {
    final hr$ = HRESULT(_EnableFn(ptr, enable ? TRUE : FALSE));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IDesktopWallpaper(ptr: $ptr)';
}

/// @nodoc
base class IDesktopWallpaperVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Utf16> monitorID,
        Pointer<Utf16> wallpaper,
      )
    >
  >
  SetWallpaper;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Utf16> monitorID,
        Pointer<Pointer<Utf16>> wallpaper,
      )
    >
  >
  GetWallpaper;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 monitorIndex,
        Pointer<Pointer<Utf16>> monitorID,
      )
    >
  >
  GetMonitorDevicePathAt;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Uint32> count)>
  >
  GetMonitorDevicePathCount;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Utf16> monitorID,
        Pointer<RECT> displayRect,
      )
    >
  >
  GetMonitorRECT;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Uint32 color)>
  >
  SetBackgroundColor;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Uint32> color)>
  >
  GetBackgroundColor;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 position)>
  >
  SetPosition;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> position)>
  >
  GetPosition;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer items)>
  >
  SetSlideshow;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> items)
    >
  >
  GetSlideshow;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Int32 options, Uint32 slideshowTick)
    >
  >
  SetSlideshowOptions;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Int32> options,
        Pointer<Uint32> slideshowTick,
      )
    >
  >
  GetSlideshowOptions;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Utf16> monitorID,
        Int32 direction,
      )
    >
  >
  AdvanceSlideshow;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> state)>
  >
  GetStatus;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 enable)>
  >
  Enable;
}

@internal
final class IDesktopWallpaperCompanion extends ComCompanion<IDesktopWallpaper> {
  const IDesktopWallpaperCompanion();

  @pragma('vm:prefer-inline')
  @override
  IDesktopWallpaper Function(VTablePointer) get fromPointer =>
      IDesktopWallpaper.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IDesktopWallpaper;
}
