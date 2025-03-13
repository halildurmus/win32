// File attribute information

import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

double fileTimeToSeconds(FILETIME fileTime) =>
    ((fileTime.dwHighDateTime << 32) + fileTime.dwLowDateTime) / 10E6;

void main() {
  final filePath = Directory.current.path;

  print('Information for: $filePath\n');

  using((arena) {
    final info = arena<WIN32_FILE_ATTRIBUTE_DATA>(1);
    if (GetFileAttributesEx(
          filePath.toNativeUtf16(),
          GetFileExInfoStandard,
          info,
        ) ==
        FALSE) {
      print('Failed to get file information');
    }
    print('dwFileAttributes: ${info.ref.dwFileAttributes}');
    print('ftCreationTime: ${fileTimeToSeconds(info.ref.ftCreationTime)}');
    print('ftLastAccessTime: ${fileTimeToSeconds(info.ref.ftLastAccessTime)}');
    print('ftLastWriteTime: ${fileTimeToSeconds(info.ref.ftLastWriteTime)}');
    print('nFileSizeHigh: ${info.ref.nFileSizeHigh}');
    print('nFileSizeLow: ${info.ref.nFileSizeLow}');
  });
}
