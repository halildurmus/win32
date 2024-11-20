// Capture a multiple display screenshots.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void main() {
  for (final display in Displays.all()) {
    if (display.isConnected) {
      display.saveScreenshot('${display.name}.bmp');
    }
  }
}

class Displays {
  static Iterable<Display> all() sync* {
    final device = loggingCalloc<DISPLAY_DEVICE>()
      ..ref.cb = sizeOf<DISPLAY_DEVICE>();
    var deviceIndex = 0;

    try {
      while (EnumDisplayDevices(null, deviceIndex, device, 0)) {
        yield Display(device.ref.DeviceName, device.ref.StateFlags);
        deviceIndex++;
      }
    } finally {
      free(device);
    }
  }
}

class Display {
  Display(this.rawName, this._stateFlags);

  final String rawName;

  void saveScreenshot(String fileName) {
    final hdcScreen = _createDC();
    final hbmScreen = _createScreenshot(hdcScreen);

    BmpFile(hdcScreen, hbmScreen).save(fileName);

    ReleaseDC(null, hdcScreen);
    DeleteObject(hbmScreen);
  }

  int _createDC() {
    final device = w(rawName);
    return CreateDC(null, device.ptr, null, null);
  }

  int _createScreenshot(int hdcScreen) {
    final hdcMemDC = CreateCompatibleDC(hdcScreen);

    final width = GetDeviceCaps(hdcScreen, HORZRES);
    final height = GetDeviceCaps(hdcScreen, VERTRES);

    try {
      final hbmScreen = CreateCompatibleBitmap(hdcScreen, width, height);
      SelectObject(hdcMemDC, hbmScreen);
      BitBlt(hdcMemDC, 0, 0, width, height, hdcScreen, 0, 0, SRCCOPY);
      return hbmScreen;
    } finally {
      DeleteObject(hdcMemDC);
    }
  }

  String get name => rawName.replaceAll(RegExp(r'[^a-zA-Z\d]'), '');

  final int _stateFlags;

  bool get isConnected =>
      (_stateFlags & DISPLAY_DEVICE_ACTIVE) == DISPLAY_DEVICE_ACTIVE;
}

class BmpFile {
  BmpFile(this.hdcScreen, this.hbmScreen);

  final int hdcScreen;
  final int hbmScreen;

  void save(String fileName) {
    using((arena) {
      final bmpStructure = _prepareBmpBinary(arena);
      _writeFile(arena, fileName, bmpStructure);
    });
  }

  BmpBinary _prepareBmpBinary(Arena arena) {
    final bmpScreen = arena<BITMAP>();
    GetObject(hbmScreen, sizeOf<BITMAP>(), bmpScreen);

    final bitmapInfoHeader = arena<BITMAPINFOHEADER>();
    bitmapInfoHeader.ref
      ..biSize = sizeOf<BITMAPINFOHEADER>()
      ..biWidth = bmpScreen.ref.bmWidth
      ..biHeight = bmpScreen.ref.bmHeight
      ..biPlanes = 1
      ..biBitCount = 32
      ..biCompression = BI_RGB;

    final dwBmpSize =
        ((bmpScreen.ref.bmWidth * bitmapInfoHeader.ref.biBitCount + 31) /
                32 *
                4 *
                bmpScreen.ref.bmHeight)
            .toInt();

    final lpBitmap = arena<BYTE>(dwBmpSize);

    GetDIBits(
      hdcScreen,
      hbmScreen,
      0,
      bmpScreen.ref.bmHeight,
      lpBitmap,
      bitmapInfoHeader.cast(),
      DIB_RGB_COLORS,
    );

    final bitmapFileHeader = arena<BITMAPFILEHEADER>();
    final dwSizeOfDIB =
        dwBmpSize + sizeOf<BITMAPFILEHEADER>() + sizeOf<BITMAPINFOHEADER>();
    bitmapFileHeader.ref.bfOffBits =
        sizeOf<BITMAPFILEHEADER>() + sizeOf<BITMAPINFOHEADER>();

    bitmapFileHeader.ref.bfSize = dwSizeOfDIB;
    bitmapFileHeader.ref.bfType = 0x4D42; // BM

    return (dwBmpSize, bitmapFileHeader, bitmapInfoHeader, lpBitmap);
  }

  void _writeFile(Arena arena, String fileName, BmpBinary bmpFileStructure) {
    final lpFileName = w(fileName);
    final hFile = CreateFile(
      lpFileName.ptr,
      GENERIC_WRITE,
      FILE_SHARE_NONE,
      null,
      CREATE_ALWAYS,
      FILE_ATTRIBUTE_NORMAL,
      null,
    );

    final dwBytesWritten = arena<DWORD>();
    final (dwBmpSize, bitmapFileHeader, bitmapInfoHeader, lpBitmap) =
        bmpFileStructure;

    WriteFile(
      hFile,
      bitmapFileHeader.cast(),
      sizeOf<BITMAPFILEHEADER>(),
      dwBytesWritten,
      null,
    );
    WriteFile(
      hFile,
      bitmapInfoHeader.cast(),
      sizeOf<BITMAPINFOHEADER>(),
      dwBytesWritten,
      null,
    );
    WriteFile(hFile, lpBitmap, dwBmpSize, dwBytesWritten, null);

    CloseHandle(hFile);
  }
}

typedef BmpBinary = (
  int dwBmpSize,
  Pointer<BITMAPFILEHEADER> bitmapFileHeader,
  Pointer<BITMAPINFOHEADER> bitmapInfoHeader,
  Pointer<Uint8> lpBitmap,
);
