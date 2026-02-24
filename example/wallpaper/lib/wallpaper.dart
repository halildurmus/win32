import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

class Wallpaper {
  static void set(File wallpaperFile) => using((arena) {
    final wallpaper = arena.com<IDesktopWallpaper>(DesktopWallpaper);
    final path = arena.pcwstr(wallpaperFile.path);
    wallpaper.setWallpaper(.new(nullptr), path);
  });
}
