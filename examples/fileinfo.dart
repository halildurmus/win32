// File attribute information.

import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

/// Converts file attributes to a human-readable string.
String getAttributesString(int attributes) {
  final result = <String>[];
  if (attributes & FILE_ATTRIBUTE_READONLY != 0) result.add('Read-only');
  if (attributes & FILE_ATTRIBUTE_HIDDEN != 0) result.add('Hidden');
  if (attributes & FILE_ATTRIBUTE_SYSTEM != 0) result.add('System');
  if (attributes & FILE_ATTRIBUTE_DIRECTORY != 0) result.add('Directory');
  if (attributes & FILE_ATTRIBUTE_ARCHIVE != 0) result.add('Archive');
  if (attributes & FILE_ATTRIBUTE_NORMAL != 0) result.add('Normal');
  // There are many more attributes that could be added here, this is just an
  // example.
  return result.isEmpty ? 'None' : result.join(', ');
}

void main(List<String> args) {
  final path = args.isNotEmpty ? args[0] : Directory.current.path;
  print('Retrieving attribute information for path "$path"...\n');

  using((arena) {
    final lpFileInfo = arena<WIN32_FILE_ATTRIBUTE_DATA>();
    final lpFileName = arena.pcwstr(path);
    final Win32Result(:value, :error) = GetFileAttributesEx(
      lpFileName,
      GetFileExInfoStandard,
      lpFileInfo,
    );
    if (!value) {
      print('Failed to get file information: ${error.toHRESULT()}');
      return;
    }

    final info = lpFileInfo.ref;
    final attributes = info.dwFileAttributes;
    final isDirectory = attributes & FILE_ATTRIBUTE_DIRECTORY != 0;
    print('Attributes: ${getAttributesString(attributes)}');
    print('Creation Time: ${info.ftCreationTime.toDateTime()}');
    print('Last Access Time: ${info.ftLastAccessTime.toDateTime()}');
    print('Last Write Time: ${info.ftLastWriteTime.toDateTime()}');
    if (!isDirectory) {
      final sizeInBytes = (info.nFileSizeHigh << 32) | info.nFileSizeLow;
      print('Size: $sizeInBytes bytes');
    }
  });
}
