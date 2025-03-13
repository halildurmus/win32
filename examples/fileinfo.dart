// File attribute information

import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

extension on FILETIME {
  DateTime toDateTime() {
    final microseconds = combineHighLow(dwHighDateTime, dwLowDateTime) ~/ 10;
    return DateTime.utc(1601, 1, 1).add(Duration(microseconds: microseconds));
  }
}

int combineHighLow(int high, int low) => (high << 32) | low;

/// Converts file attributes to a human-readable string.
String getAttributesString(int attributes) {
  final result = <String>[];
  if ((attributes & FILE_ATTRIBUTE_READONLY) != 0) result.add('Read-only');
  if ((attributes & FILE_ATTRIBUTE_HIDDEN) != 0) result.add('Hidden');
  if ((attributes & FILE_ATTRIBUTE_SYSTEM) != 0) result.add('System');
  if ((attributes & FILE_ATTRIBUTE_DIRECTORY) != 0) result.add('Directory');
  if ((attributes & FILE_ATTRIBUTE_ARCHIVE) != 0) result.add('Archive');
  if ((attributes & FILE_ATTRIBUTE_NORMAL) != 0) result.add('Normal');
  // There are many more attributes that could be added here, this is just an
  // example.
  return result.isEmpty ? 'None' : result.join(', ');
}

void main() {
  final filePath = Directory.current.path;

  print('Information for: $filePath\n');

  using((arena) {
    final lpFileInfo = arena<WIN32_FILE_ATTRIBUTE_DATA>();
    if (GetFileAttributesEx(
          filePath.toNativeUtf16(),
          GetFileExInfoStandard,
          lpFileInfo,
        ) ==
        FALSE) {
      print('Failed to get file information');
      return;
    }
    final info = lpFileInfo.ref;
    final attributes = info.dwFileAttributes;
    final isDirectory = (attributes & FILE_ATTRIBUTE_DIRECTORY) != 0;
    print('Attributes: ${getAttributesString(attributes)}');
    print('Creation Time: ${info.ftCreationTime.toDateTime()}');
    print('Last Access Time: ${info.ftLastAccessTime.toDateTime()}');
    print('Last Write Time: ${info.ftLastWriteTime.toDateTime()}');
    if (!isDirectory) {
      final sizeInBytes = combineHighLow(info.nFileSizeHigh, info.nFileSizeLow);
      print('Size: $sizeInBytes bytes');
    }
  });
}
