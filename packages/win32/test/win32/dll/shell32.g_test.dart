// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated).
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: non_constant_identifier_names, unused_import,
// ignore_for_file: unused_local_variable

@TestOn('windows')
library;

import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:ffi/ffi.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/src/_internal/shell32.g.dart';
import 'package:win32/win32.dart';

import '../../helpers.dart';

void main() {
  group('shell32.dll', () {
    test('CommandLineToArgv can be instantiated', () {
      check(CommandLineToArgvW_Wrapper).isA<Function>();
    });
    test('DragQueryFile can be instantiated', () {
      check(_DragQueryFile).isA<Function>();
    });
    test('ExtractAssociatedIcon can be instantiated', () {
      check(_ExtractAssociatedIcon).isA<Function>();
    });
    test('FindExecutable can be instantiated', () {
      check(_FindExecutable).isA<Function>();
    });
    test('SHBrowseForFolder can be instantiated', () {
      check(_SHBrowseForFolder).isA<Function>();
    });
    test('SHCreateItemFromParsingName can be instantiated', () {
      check(_SHCreateItemFromParsingName).isA<Function>();
    });
    test('Shell_NotifyIcon can be instantiated', () {
      check(_Shell_NotifyIcon).isA<Function>();
    });
    test('ShellAbout can be instantiated', () {
      check(_ShellAbout).isA<Function>();
    });
    test('ShellExecute can be instantiated', () {
      check(_ShellExecute).isA<Function>();
    });
    test('ShellExecuteEx can be instantiated', () {
      check(ShellExecuteExW_Wrapper).isA<Function>();
    });
    test('SHEmptyRecycleBin can be instantiated', () {
      check(_SHEmptyRecycleBin).isA<Function>();
    });
    test('SHFileOperation can be instantiated', () {
      check(SHFileOperationW_Wrapper).isA<Function>();
    });
    test('SHFreeNameMappings can be instantiated', () {
      check(_SHFreeNameMappings).isA<Function>();
    });
    test('SHGetDesktopFolder can be instantiated', () {
      check(_SHGetDesktopFolder).isA<Function>();
    });
    test('SHGetDiskFreeSpaceEx can be instantiated', () {
      check(_SHGetDiskFreeSpaceEx).isA<Function>();
    });
    test('SHGetDriveMedia can be instantiated', () {
      check(_SHGetDriveMedia).isA<Function>();
    });
    test('SHGetFileInfo can be instantiated', () {
      check(_SHGetFileInfo).isA<Function>();
    });
    test('SHGetKnownFolderPath can be instantiated', () {
      check(_SHGetKnownFolderPath).isA<Function>();
    });
    test('SHGetLocalizedName can be instantiated', () {
      check(_SHGetLocalizedName).isA<Function>();
    });
    test('SHGetPathFromIDList can be instantiated', () {
      check(_SHGetPathFromIDList).isA<Function>();
    });
    test('SHQueryRecycleBin can be instantiated', () {
      check(_SHQueryRecycleBin).isA<Function>();
    });
  });
}

@Native<Uint32 Function(HDROP, Uint32, PWSTR, Uint32)>(symbol: 'DragQueryFileW')
external int _DragQueryFile(int hDrop, int iFile, PWSTR lpszFile, int cch);

@Native<HICON Function(HINSTANCE, PWSTR, Pointer<Uint16>)>(
  symbol: 'ExtractAssociatedIconW',
)
external int _ExtractAssociatedIcon(
  int hInst,
  PWSTR pszIconPath,
  Pointer<Uint16> piIcon,
);

@Native<HINSTANCE Function(PCWSTR, PCWSTR, PWSTR)>(symbol: 'FindExecutableW')
external int _FindExecutable(PCWSTR lpFile, PCWSTR lpDirectory, PWSTR lpResult);

@Native<Pointer<ITEMIDLIST> Function(Pointer<BROWSEINFO>)>(
  symbol: 'SHBrowseForFolderW',
)
external Pointer<ITEMIDLIST> _SHBrowseForFolder(Pointer<BROWSEINFO> lpbi);

@Native<Int32 Function(PCWSTR, VTablePointer, Pointer<GUID>, Pointer<Pointer>)>(
  symbol: 'SHCreateItemFromParsingName',
)
external int _SHCreateItemFromParsingName(
  PCWSTR pszPath,
  VTablePointer pbc,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
);

@Native<BOOL Function(Uint32, Pointer<NOTIFYICONDATA>)>(
  symbol: 'Shell_NotifyIconW',
)
external int _Shell_NotifyIcon(int dwMessage, Pointer<NOTIFYICONDATA> lpData);

@Native<Int32 Function(HWND, PCWSTR, PCWSTR, HICON)>(symbol: 'ShellAboutW')
external int _ShellAbout(
  int hWnd,
  PCWSTR szApp,
  PCWSTR szOtherStuff,
  int hIcon,
);

@Native<HINSTANCE Function(HWND, PCWSTR, PCWSTR, PCWSTR, PCWSTR, Int32)>(
  symbol: 'ShellExecuteW',
)
external int _ShellExecute(
  int hwnd,
  PCWSTR lpOperation,
  PCWSTR lpFile,
  PCWSTR lpParameters,
  PCWSTR lpDirectory,
  int nShowCmd,
);

@Native<Int32 Function(HWND, PCWSTR, Uint32)>(symbol: 'SHEmptyRecycleBinW')
external int _SHEmptyRecycleBin(int hwnd, PCWSTR pszRootPath, int dwFlags);

@Native<Void Function(HANDLE)>(symbol: 'SHFreeNameMappings')
external void _SHFreeNameMappings(int hNameMappings);

@Native<Int32 Function(Pointer<VTablePointer>)>(symbol: 'SHGetDesktopFolder')
external int _SHGetDesktopFolder(Pointer<VTablePointer> ppshf);

@Native<
  BOOL Function(PCWSTR, Pointer<Uint64>, Pointer<Uint64>, Pointer<Uint64>)
>(symbol: 'SHGetDiskFreeSpaceExW')
external int _SHGetDiskFreeSpaceEx(
  PCWSTR pszDirectoryName,
  Pointer<Uint64> pulFreeBytesAvailableToCaller,
  Pointer<Uint64> pulTotalNumberOfBytes,
  Pointer<Uint64> pulTotalNumberOfFreeBytes,
);

@Native<Int32 Function(PCWSTR, Pointer<Uint32>)>(symbol: 'SHGetDriveMedia')
external int _SHGetDriveMedia(PCWSTR pszDrive, Pointer<Uint32> pdwMediaContent);

@Native<IntPtr Function(PCWSTR, Uint32, Pointer<SHFILEINFO>, Uint32, Uint32)>(
  symbol: 'SHGetFileInfoW',
)
external int _SHGetFileInfo(
  PCWSTR pszPath,
  int dwFileAttributes,
  Pointer<SHFILEINFO> psfi,
  int cbFileInfo,
  int uFlags,
);

@Native<Int32 Function(Pointer<GUID>, Uint32, HANDLE, Pointer<PWSTR>)>(
  symbol: 'SHGetKnownFolderPath',
)
external int _SHGetKnownFolderPath(
  Pointer<GUID> rfid,
  int dwFlags,
  int hToken,
  Pointer<PWSTR> ppszPath,
);

@Native<Int32 Function(PCWSTR, PWSTR, Uint32, Pointer<Int32>)>(
  symbol: 'SHGetLocalizedName',
)
external int _SHGetLocalizedName(
  PCWSTR pszPath,
  PWSTR pszResModule,
  int cch,
  Pointer<Int32> pidsRes,
);

@Native<BOOL Function(Pointer<ITEMIDLIST>, PWSTR)>(
  symbol: 'SHGetPathFromIDListW',
)
external int _SHGetPathFromIDList(Pointer<ITEMIDLIST> pidl, PWSTR pszPath);

@Native<Int32 Function(PCWSTR, Pointer<SHQUERYRBINFO>)>(
  symbol: 'SHQueryRecycleBinW',
)
external int _SHQueryRecycleBin(
  PCWSTR pszRootPath,
  Pointer<SHQUERYRBINFO> pSHQueryRBInfo,
);
