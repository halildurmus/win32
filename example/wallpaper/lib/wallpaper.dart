import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

class Wallpaper {
  static void set(File wallpaperFile) {
    final wallpaper = DesktopWallpaper.createInstance();

    using((arena) {
      final pathPtr = wallpaperFile.path.toNativeUtf16(allocator: arena);
      final hr = wallpaper.setWallpaper(nullptr, pathPtr);
      if (FAILED(hr)) throw WindowsException(hr);
    });
  }
}
