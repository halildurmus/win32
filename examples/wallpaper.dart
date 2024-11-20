// Shows retrieval of various information from the IDesktopWallpaper interface.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

late IDesktopWallpaper wallpaper;

void printWallpaper() {
  try {
    final path = wallpaper.getWallpaper(nullptr).toDartString();
    print('Wallpaper path is: $path');
  } on WindowsException catch (_) {
    print(
      'Different monitors are displaying different wallpapers, or a '
      'slideshow is running.',
    );
    rethrow;
  }
}

void printBackgroundColor() {
  final color = wallpaper.getBackgroundColor();
  print(
    'Background color is: RGB(${GetRValue(color)}, '
    '${GetGValue(color)}, ${GetBValue(color)})',
  );
}

void main() {
  CoInitializeEx(COINIT_MULTITHREADED);
  wallpaper = createInstance(DesktopWallpaper);
  printWallpaper();
  printBackgroundColor();
}
