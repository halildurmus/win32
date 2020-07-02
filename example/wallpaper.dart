// wallpaper.dart

// Shows retrieval of basic information from the IDesktopWallpaper interface.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void main() {
  var hr = CoInitializeEx(
      nullptr, COINIT_APARTMENTTHREADED | COINIT_DISABLE_OLE1DDE);

  if (FAILED(hr)) {
    throw WindowsException(hr);
  }

  final wallpaper = DesktopWallpaper.createInstance();

  final colorPtr = allocate<Uint32>(); // COLORREF

  try {
    hr = wallpaper.GetBackgroundColor(colorPtr);

    if (hr != S_OK) {
      throw WindowsException(hr);
    } else {
      final color = colorPtr.value;
      print('Background color is: RGB(${GetRValue(color)}, '
          '${GetGValue(color)}, ${GetBValue(color)})');
    }
  } finally {
    free(colorPtr);
    free(wallpaper.ptr);

    CoUninitialize();
  }
}
