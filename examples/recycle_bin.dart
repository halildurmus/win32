// Explores the Windows Recycle Bin.

// ignore_for_file: constant_identifier_names

import 'dart:ffi';
import 'dart:io';

import 'package:win32/win32.dart';

class RecycleBinInfo {
  const RecycleBinInfo(this.itemCount, this.totalSizeInBytes);

  final int itemCount;
  final int totalSizeInBytes;
}

RecycleBinInfo queryRecycleBin(String rootPath) {
  final pSHQueryRBInfo = loggingCalloc<SHQUERYRBINFO>()
    ..ref.cbSize = sizeOf<SHQUERYRBINFO>();

  try {
    final pszRootPath = w(rootPath);
    SHQueryRecycleBin(pszRootPath.ptr, pSHQueryRBInfo);
    return RecycleBinInfo(
      pSHQueryRBInfo.ref.i64NumItems,
      pSHQueryRBInfo.ref.i64Size,
    );
  } finally {
    free(pSHQueryRBInfo);
  }
}

String getTempFileName() {
  final lpTempFileName = Pwstr.allocate(MAX_PATH);
  final pathName = w('.');
  final prefixString = w('dart');
  final result = GetTempFileName(
    pathName.ptr,
    prefixString.ptr,
    0,
    lpTempFileName.ptr,
  );
  if (result == 0) throw StateError('Unable to create filename');
  return lpTempFileName.toDartString();
}

bool recycleFile(String file) {
  final hwnd = GetActiveWindow();
  final pFrom = [file].toPWSTR();
  final lpFileOp = loggingCalloc<SHFILEOPSTRUCT>();
  lpFileOp.ref
    ..hwnd = hwnd
    ..wFunc = FO_DELETE
    ..pFrom = pFrom
    ..pTo = nullptr
    ..fFlags = FOF_ALLOWUNDO;

  try {
    final result = SHFileOperation(lpFileOp);
    return result == 0;
  } finally {
    free(pFrom);
    free(lpFileOp);
  }
}

void main(List<String> args) {
  final info = queryRecycleBin(r'c:\');
  print(
    'There are ${info.itemCount} items with a total size of '
    '${info.totalSizeInBytes} bytes in the '
    'Recycle Bin on the C: drive.',
  );

  final tempFile = getTempFileName();
  print('Creating temporary file $tempFile');
  File(
    tempFile,
  ).writeAsStringSync('With time involved, everything is temporary.');

  print('Sending temporary file $tempFile to the Recycle Bin.');
  recycleFile(tempFile);

  final newInfo = queryRecycleBin(r'c:\');
  print(
    'There now are ${newInfo.itemCount} items with a total size of '
    '${newInfo.totalSizeInBytes} bytes in the '
    'Recycle Bin on the C: drive.',
  );
}
