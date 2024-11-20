// Demonstrates querying desktop wallpaper configuration using the
// IDesktopWallpaper COM interface.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

final class DesktopWallpaperInfo {
  DesktopWallpaperInfo(this._wallpaper);

  final IDesktopWallpaper _wallpaper;

  /// Returns the global wallpaper path, if one is in use.
  ///
  /// If the desktop is configured with per-monitor wallpapers or a slideshow,
  /// this will return `null`.
  String? get globalWallpaper {
    final ptr = _wallpaper.getWallpaper(PCWSTR(nullptr));
    final path = ptr.toDartString();
    free(ptr);
    return path.isEmpty ? null : path;
  }

  /// Returns the wallpaper path for each monitor.
  Map<String, String> get perMonitorWallpapers {
    final result = <String, String>{};
    final count = _wallpaper.getMonitorDevicePathCount();

    for (var i = 0; i < count; i++) {
      final monitorId = _wallpaper.getMonitorDevicePathAt(i);
      final wallpaper = _wallpaper.getWallpaper(PCWSTR(monitorId));
      final id = monitorId.toDartString();
      final path = wallpaper.toDartString();
      free(monitorId);
      free(wallpaper);

      if (path.isNotEmpty) {
        result[id] = path;
      }
    }

    return result;
  }

  /// Returns the desktop background color as (R, G, B).
  ({int r, int g, int b}) get backgroundColor {
    final color = _wallpaper.getBackgroundColor();
    return (r: GetRValue(color), g: GetGValue(color), b: GetBValue(color));
  }
}

void main() {
  CoInitializeEx(COINIT_MULTITHREADED);

  using((arena) {
    final wallpaper = arena.com<IDesktopWallpaper>(DesktopWallpaper);
    final info = DesktopWallpaperInfo(wallpaper);
    print('Desktop wallpaper information:\n');

    final global = info.globalWallpaper;
    if (global != null) {
      print('Global wallpaper:');
      print('  $global\n');
    } else {
      print(
        'No single global wallpaper detected '
        '(per-monitor wallpapers or slideshow in use).\n',
      );

      final perMonitor = info.perMonitorWallpapers;
      if (perMonitor.isEmpty) {
        print('No per-monitor wallpapers reported.');
      } else {
        print('Per-monitor wallpapers:');
        for (final entry in perMonitor.entries) {
          print('  ${entry.key}');
          print('    ${entry.value}');
        }
      }
      print('');
    }

    final color = info.backgroundColor;
    print(
      'Background color: '
      'RGB(${color.r}, ${color.g}, ${color.b})',
    );
  });
}
