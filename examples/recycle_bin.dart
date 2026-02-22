// Explores the Windows Recycle Bin.

import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

class RecycleBinInfo {
  const RecycleBinInfo(this.itemCount, this.totalSizeInBytes);

  final int itemCount;
  final int totalSizeInBytes;
}

RecycleBinInfo queryRecycleBin(String rootPath) => using((arena) {
  final pSHQueryRBInfo = arena<SHQUERYRBINFO>()
    ..ref.cbSize = sizeOf<SHQUERYRBINFO>();
  SHQueryRecycleBin(arena.pcwstr(rootPath), pSHQueryRBInfo);
  final SHQUERYRBINFO(:i64NumItems, :i64Size) = pSHQueryRBInfo.ref;
  return RecycleBinInfo(i64NumItems, i64Size);
});

String getTempFileName() => using((arena) {
  final lpTempFileName = arena.pwstrBuffer(MAX_PATH);
  final pathName = arena.pcwstr('.');
  final prefixString = arena.pcwstr('dart');
  final Win32Result(:value, :error) = GetTempFileName(
    pathName,
    prefixString,
    0,
    lpTempFileName,
  );
  if (value == 0) throw WindowsException(error.toHRESULT());
  return lpTempFileName.toDartString();
});

void recycleFile(String file) {
  using((arena) {
    final hwnd = GetActiveWindow();
    final pFrom = [file].toPwstr(allocator: arena);
    final lpFileOp = arena<SHFILEOPSTRUCT>();
    lpFileOp.ref
      ..hwnd = hwnd
      ..wFunc = FO_DELETE
      ..pFrom = pFrom
      ..pTo = PWSTR(nullptr)
      ..fFlags = FOF_ALLOWUNDO;
    final Win32Result(:value, :error) = SHFileOperation(lpFileOp);
    if (value != 0) throw WindowsException(error.toHRESULT());
  });
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
