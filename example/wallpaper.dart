// wallpaper.dart

// Shows retrieval of various information from the IDesktopWallpaper interface.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

DesktopWallpaper wallpaper;

void printWallpaper() {
  final pathPtr = allocate<IntPtr>();

  try {
    final hr = wallpaper.GetWallpaper(nullptr, pathPtr.cast());

    switch (hr) {
      case S_OK:
        final path =
            Pointer<Utf16>.fromAddress(pathPtr.value).unpackString(1024);
        print(
            path.isEmpty ? 'No wallpaper is set.' : 'Wallpaper path is: $path');
        break;

      case S_FALSE:
        print('Different monitors are displaying different wallpapers, or a '
            'slideshow is running.');
        break;

      default:
        throw WindowsException(hr);
    }
  } finally {
    free(pathPtr);
  }
}

void printBackgroundColor() {
  final colorPtr = allocate<Uint32>(); // COLORREF

  try {
    final hr = wallpaper.GetBackgroundColor(colorPtr);

    if (hr == S_OK) {
      final color = colorPtr.value;
      print('Background color is: RGB(${GetRValue(color)}, '
          '${GetGValue(color)}, ${GetBValue(color)})');
    } else {
      throw WindowsException(hr);
    }
  } finally {
    free(colorPtr);
  }
}

void main() {
  var hr = CoInitializeEx(
      nullptr, COINIT_APARTMENTTHREADED | COINIT_DISABLE_OLE1DDE);

  if (FAILED(hr)) {
    throw WindowsException(hr);
  }

  wallpaper = DesktopWallpaper.createInstance();

  try {
    printWallpaper();
    printBackgroundColor();
  } finally {
    free(wallpaper.ptr);
    CoUninitialize();
  }
}
