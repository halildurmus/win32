// Demonstrating capturing screenshots of all active displays.

import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:win32/win32.dart';

List<Display> enumerateDisplays() {
  final displays = <Display>[];

  final device = adaptiveCalloc<DISPLAY_DEVICE>()
    ..ref.cb = sizeOf<DISPLAY_DEVICE>();
  var index = 0;
  try {
    while (EnumDisplayDevices(null, index, device, 0)) {
      final DISPLAY_DEVICE(:DeviceName, :StateFlags) = device.ref;
      displays.add(Display(deviceName: DeviceName, stateFlags: StateFlags));
      index++;
    }

    return displays;
  } finally {
    free(device);
  }
}

final class Display {
  const Display({required this.deviceName, required this.stateFlags});

  final String deviceName;
  final int stateFlags;

  bool get isActive =>
      (stateFlags & DISPLAY_DEVICE_ACTIVE) == DISPLAY_DEVICE_ACTIVE;

  void captureToBmp(String path) {
    using((arena) {
      final hdcScreen = CreateDC(null, arena.pcwstr(deviceName), null, null);
      if (hdcScreen.isNull) {
        throw Exception(
          'Failed to create a device context (DC) for $deviceName',
        );
      }

      try {
        final bitmap = captureScreenBitmap(hdcScreen);
        try {
          writeBitmapToFile(
            path: path,
            hdc: hdcScreen,
            bitmap: bitmap,
            arena: arena,
          );
        } finally {
          bitmap.close();
        }
      } finally {
        DeleteDC(hdcScreen);
      }
    });
  }
}

HBITMAP captureScreenBitmap(HDC hdcScreen) {
  final width = GetDeviceCaps(hdcScreen, HORZRES);
  final height = GetDeviceCaps(hdcScreen, VERTRES);

  final hdcMem = CreateCompatibleDC(hdcScreen);
  if (hdcMem.isNull) {
    throw Exception('Failed to create a memory device context (DC)');
  }

  try {
    final bitmap = CreateCompatibleBitmap(hdcScreen, width, height);
    if (bitmap.isNull) throw Exception('Failed to create a compatible bitmap');

    SelectObject(hdcMem, HGDIOBJ(bitmap));

    final Win32Result(:value, :error) = BitBlt(
      hdcMem,
      0,
      0,
      width,
      height,
      hdcScreen,
      0,
      0,
      SRCCOPY,
    );

    if (!value) {
      bitmap.close();
      throw WindowsException(error.toHRESULT());
    }

    return bitmap;
  } finally {
    DeleteDC(hdcMem);
  }
}

void writeBitmapToFile({
  required String path,
  required HDC hdc,
  required HBITMAP bitmap,
  required Arena arena,
}) {
  final bmp = arena<BITMAP>();
  GetObject(HGDIOBJ(bitmap), sizeOf<BITMAP>(), bmp);

  final infoHeader = arena<BITMAPINFOHEADER>();
  infoHeader.ref
    ..biSize = sizeOf<BITMAPINFOHEADER>()
    ..biWidth = bmp.ref.bmWidth
    ..biHeight = bmp.ref.bmHeight
    ..biPlanes = 1
    ..biBitCount = 32
    ..biCompression = BI_RGB;

  final imageSize = bmp.ref.bmWidth * bmp.ref.bmHeight * 4; // 32-bit RGBA
  final pixels = arena<Uint8>(imageSize);

  final scanLines = GetDIBits(
    hdc,
    bitmap,
    0,
    bmp.ref.bmHeight,
    pixels,
    infoHeader.cast(),
    DIB_RGB_COLORS,
  );
  if (scanLines == 0) {
    throw Exception('GetDIBits failed to retrieve bitmap data');
  }

  final fileHeader = arena<BITMAPFILEHEADER>();
  fileHeader.ref
    ..bfType =
        0x4D42 // 'BM'
    ..bfOffBits = sizeOf<BITMAPFILEHEADER>() + sizeOf<BITMAPINFOHEADER>()
    ..bfSize = fileHeader.ref.bfOffBits + imageSize;

  final Win32Result(value: hFile, :error) = CreateFile(
    arena.pcwstr(path),
    GENERIC_WRITE,
    FILE_SHARE_NONE,
    nullptr,
    CREATE_ALWAYS,
    FILE_ATTRIBUTE_NORMAL,
    null,
  );
  if (hFile == INVALID_HANDLE_VALUE) throw WindowsException(error.toHRESULT());

  try {
    final written = arena<DWORD>();
    WriteFile(
      hFile,
      fileHeader.cast(),
      sizeOf<BITMAPFILEHEADER>(),
      written,
      nullptr,
    );
    WriteFile(
      hFile,
      infoHeader.cast(),
      sizeOf<BITMAPINFOHEADER>(),
      written,
      nullptr,
    );
    WriteFile(hFile, pixels, imageSize, written, nullptr);
  } finally {
    hFile.close();
  }
}

sealed class ScreenshotResult {
  const ScreenshotResult();
}

final class ScreenshotSuccess extends ScreenshotResult {
  const ScreenshotSuccess({required this.display, required this.path});

  final Display display;
  final String path;
}

final class ScreenshotFailure extends ScreenshotResult {
  const ScreenshotFailure({required this.display, required this.error});

  final Display display;
  final Object error;
}

final class ScreenshotCaptureOptions {
  const ScreenshotCaptureOptions({
    this.outputDirectory,
    this.fileNameBuilder,
    this.createOutputDirectory = true,
    this.overwriteExisting = true,
  });

  /// Output directory for captured screenshots.
  ///
  /// If omitted, defaults to the current working directory
  /// (`Directory.current`).
  final String? outputDirectory;

  /// Custom filename strategy (no path, just filename).
  ///
  /// Defaults to `display_<index + 1>.bmp`.
  final String Function(Display display, int index)? fileNameBuilder;

  /// Whether the output directory should be created automatically if it does
  /// not exist.
  final bool createOutputDirectory;

  /// Whether existing files may be overwritten.
  final bool overwriteExisting;
}

final class ScreenshotService {
  const ScreenshotService();

  List<ScreenshotResult> captureAll({
    ScreenshotCaptureOptions options = const ScreenshotCaptureOptions(),
  }) {
    final results = <ScreenshotResult>[];

    final outputDirPath = options.outputDirectory ?? Directory.current.path;
    final dir = Directory(outputDirPath);
    if (!dir.existsSync()) {
      if (!options.createOutputDirectory) {
        throw StateError('Output directory does not exist: $outputDirPath');
      }
      dir.createSync(recursive: true);
    }

    var index = 0;

    for (final display in enumerateDisplays()) {
      if (!display.isActive) continue;

      final fileName =
          options.fileNameBuilder?.call(display, index) ??
          'display_${index + 1}.bmp';
      final path = '${dir.path}\\$fileName';

      try {
        if (!options.overwriteExisting && File(path).existsSync()) {
          throw StateError('File already exists: $path');
        }

        display.captureToBmp(path);
        results.add(ScreenshotSuccess(display: display, path: path));
      } catch (e) {
        results.add(ScreenshotFailure(display: display, error: e));
      }

      index++;
    }

    return results;
  }
}

void main() {
  const service = ScreenshotService();
  final results = service.captureAll();
  for (final result in results) {
    switch (result) {
      case ScreenshotSuccess(:final display, :final path):
        print('[${display.deviceName}] Saved screenshot → $path');
      case ScreenshotFailure(:final display, :final error):
        print('[${display.deviceName}] Capturing screenshot failed → $error');
    }
  }
}
