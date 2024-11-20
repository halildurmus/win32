// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated).
//
// ignore_for_file: non_constant_identifier_names, unnecessary_ignore
// ignore_for_file: unused_import

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
    test('DragAcceptFiles can be instantiated', () {
      check(_DragAcceptFiles).isA<Function>();
    });
    test('DragFinish can be instantiated', () {
      check(_DragFinish).isA<Function>();
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
    test('SHGetFolderPath can be instantiated', () {
      check(_SHGetFolderPath).isA<Function>();
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

@Native<Void Function(Pointer, Int32)>(symbol: 'DragAcceptFiles')
external void _DragAcceptFiles(Pointer hWnd, int fAccept);

@Native<Void Function(Pointer)>(symbol: 'DragFinish')
external void _DragFinish(Pointer hDrop);

@Native<Uint32 Function(Pointer, Uint32, Pointer<Utf16>, Uint32)>(
  symbol: 'DragQueryFileW',
)
external int _DragQueryFile(
  Pointer hDrop,
  int iFile,
  Pointer<Utf16> lpszFile,
  int cch,
);

@Native<Pointer Function(Pointer, Pointer<Utf16>, Pointer<Uint16>)>(
  symbol: 'ExtractAssociatedIconW',
)
external Pointer _ExtractAssociatedIcon(
  Pointer hInst,
  Pointer<Utf16> pszIconPath,
  Pointer<Uint16> piIcon,
);

@Native<Pointer Function(Pointer<Utf16>, Pointer<Utf16>, Pointer<Utf16>)>(
  symbol: 'FindExecutableW',
)
external Pointer _FindExecutable(
  Pointer<Utf16> lpFile,
  Pointer<Utf16> lpDirectory,
  Pointer<Utf16> lpResult,
);

@Native<Pointer<ITEMIDLIST> Function(Pointer<BROWSEINFO>)>(
  symbol: 'SHBrowseForFolderW',
)
external Pointer<ITEMIDLIST> _SHBrowseForFolder(Pointer<BROWSEINFO> lpbi);

@Native<
  Int32 Function(Pointer<Utf16>, VTablePointer, Pointer<GUID>, Pointer<Pointer>)
>(symbol: 'SHCreateItemFromParsingName')
external int _SHCreateItemFromParsingName(
  Pointer<Utf16> pszPath,
  VTablePointer pbc,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
);

@Native<Int32 Function(Uint32, Pointer<NOTIFYICONDATA>)>(
  symbol: 'Shell_NotifyIconW',
)
external int _Shell_NotifyIcon(int dwMessage, Pointer<NOTIFYICONDATA> lpData);

@Native<Int32 Function(Pointer, Pointer<Utf16>, Pointer<Utf16>, Pointer)>(
  symbol: 'ShellAboutW',
)
external int _ShellAbout(
  Pointer hWnd,
  Pointer<Utf16> szApp,
  Pointer<Utf16> szOtherStuff,
  Pointer hIcon,
);

@Native<
  Pointer Function(
    Pointer,
    Pointer<Utf16>,
    Pointer<Utf16>,
    Pointer<Utf16>,
    Pointer<Utf16>,
    Int32,
  )
>(symbol: 'ShellExecuteW')
external Pointer _ShellExecute(
  Pointer hwnd,
  Pointer<Utf16> lpOperation,
  Pointer<Utf16> lpFile,
  Pointer<Utf16> lpParameters,
  Pointer<Utf16> lpDirectory,
  int nShowCmd,
);

@Native<Int32 Function(Pointer, Pointer<Utf16>, Uint32)>(
  symbol: 'SHEmptyRecycleBinW',
)
external int _SHEmptyRecycleBin(
  Pointer hwnd,
  Pointer<Utf16> pszRootPath,
  int dwFlags,
);

@Native<Void Function(Pointer)>(symbol: 'SHFreeNameMappings')
external void _SHFreeNameMappings(Pointer hNameMappings);

@Native<Int32 Function(Pointer<VTablePointer>)>(symbol: 'SHGetDesktopFolder')
external int _SHGetDesktopFolder(Pointer<VTablePointer> ppshf);

@Native<
  Int32 Function(
    Pointer<Utf16>,
    Pointer<Uint64>,
    Pointer<Uint64>,
    Pointer<Uint64>,
  )
>(symbol: 'SHGetDiskFreeSpaceExW')
external int _SHGetDiskFreeSpaceEx(
  Pointer<Utf16> pszDirectoryName,
  Pointer<Uint64> pulFreeBytesAvailableToCaller,
  Pointer<Uint64> pulTotalNumberOfBytes,
  Pointer<Uint64> pulTotalNumberOfFreeBytes,
);

@Native<Int32 Function(Pointer<Utf16>, Pointer<Uint32>)>(
  symbol: 'SHGetDriveMedia',
)
external int _SHGetDriveMedia(
  Pointer<Utf16> pszDrive,
  Pointer<Uint32> pdwMediaContent,
);

@Native<
  IntPtr Function(Pointer<Utf16>, Uint32, Pointer<SHFILEINFO>, Uint32, Uint32)
>(symbol: 'SHGetFileInfoW')
external int _SHGetFileInfo(
  Pointer<Utf16> pszPath,
  int dwFileAttributes,
  Pointer<SHFILEINFO> psfi,
  int cbFileInfo,
  int uFlags,
);

@Native<Int32 Function(Pointer, Int32, Pointer, Uint32, Pointer<Utf16>)>(
  symbol: 'SHGetFolderPathW',
)
external int _SHGetFolderPath(
  Pointer hwnd,
  int csidl,
  Pointer hToken,
  int dwFlags,
  Pointer<Utf16> pszPath,
);

@Native<
  Int32 Function(Pointer<GUID>, Uint32, Pointer, Pointer<Pointer<Utf16>>)
>(symbol: 'SHGetKnownFolderPath')
external int _SHGetKnownFolderPath(
  Pointer<GUID> rfid,
  int dwFlags,
  Pointer hToken,
  Pointer<Pointer<Utf16>> ppszPath,
);

@Native<Int32 Function(Pointer<Utf16>, Pointer<Utf16>, Uint32, Pointer<Int32>)>(
  symbol: 'SHGetLocalizedName',
)
external int _SHGetLocalizedName(
  Pointer<Utf16> pszPath,
  Pointer<Utf16> pszResModule,
  int cch,
  Pointer<Int32> pidsRes,
);

@Native<Int32 Function(Pointer<ITEMIDLIST>, Pointer<Utf16>)>(
  symbol: 'SHGetPathFromIDListW',
)
external int _SHGetPathFromIDList(
  Pointer<ITEMIDLIST> pidl,
  Pointer<Utf16> pszPath,
);

@Native<Int32 Function(Pointer<Utf16>, Pointer<SHQUERYRBINFO>)>(
  symbol: 'SHQueryRecycleBinW',
)
external int _SHQueryRecycleBin(
  Pointer<Utf16> pszRootPath,
  Pointer<SHQUERYRBINFO> pSHQueryRBInfo,
);
