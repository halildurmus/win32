// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated).
//
// ignore_for_file: non_constant_identifier_names, unnecessary_ignore
// ignore_for_file: specify_nonobvious_property_types, unused_import

@TestOn('windows')
library;

import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:ffi/ffi.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

import '../../helpers.dart';

void main() {
  group('shell32.dll', () {
    test('CommandLineToArgv can be instantiated', () {
      check(_CommandLineToArgv).isA<Function>();
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
      check(_ShellExecuteEx).isA<Function>();
    });
    test('SHEmptyRecycleBin can be instantiated', () {
      check(_SHEmptyRecycleBin).isA<Function>();
    });
    test('SHFileOperation can be instantiated', () {
      check(_SHFileOperation).isA<Function>();
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

final _shell32 = DynamicLibrary.open('shell32.dll');

final _CommandLineToArgv = _shell32
    .lookupFunction<
      Pointer<Pointer<Utf16>> Function(Pointer<Utf16>, Pointer<Int32>),
      Pointer<Pointer<Utf16>> Function(Pointer<Utf16>, Pointer<Int32>)
    >('CommandLineToArgvW');

final _DragAcceptFiles = _shell32
    .lookupFunction<Void Function(Pointer, Int32), void Function(Pointer, int)>(
      'DragAcceptFiles',
    );

final _DragFinish = _shell32
    .lookupFunction<Void Function(Pointer), void Function(Pointer)>(
      'DragFinish',
    );

final _DragQueryFile = _shell32
    .lookupFunction<
      Uint32 Function(Pointer, Uint32, Pointer<Utf16>, Uint32),
      int Function(Pointer, int, Pointer<Utf16>, int)
    >('DragQueryFileW');

final _ExtractAssociatedIcon = _shell32
    .lookupFunction<
      Pointer Function(Pointer, Pointer<Utf16>, Pointer<Uint16>),
      Pointer Function(Pointer, Pointer<Utf16>, Pointer<Uint16>)
    >('ExtractAssociatedIconW');

final _FindExecutable = _shell32
    .lookupFunction<
      Pointer Function(Pointer<Utf16>, Pointer<Utf16>, Pointer<Utf16>),
      Pointer Function(Pointer<Utf16>, Pointer<Utf16>, Pointer<Utf16>)
    >('FindExecutableW');

final _SHBrowseForFolder = _shell32
    .lookupFunction<
      Pointer<ITEMIDLIST> Function(Pointer<BROWSEINFO>),
      Pointer<ITEMIDLIST> Function(Pointer<BROWSEINFO>)
    >('SHBrowseForFolderW');

final _SHCreateItemFromParsingName = _shell32
    .lookupFunction<
      Int32 Function(
        Pointer<Utf16>,
        VTablePointer,
        Pointer<GUID>,
        Pointer<Pointer>,
      ),
      int Function(
        Pointer<Utf16>,
        VTablePointer,
        Pointer<GUID>,
        Pointer<Pointer>,
      )
    >('SHCreateItemFromParsingName');

final _Shell_NotifyIcon = _shell32
    .lookupFunction<
      Int32 Function(Uint32, Pointer<NOTIFYICONDATA>),
      int Function(int, Pointer<NOTIFYICONDATA>)
    >('Shell_NotifyIconW');

final _ShellAbout = _shell32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Utf16>, Pointer<Utf16>, Pointer),
      int Function(Pointer, Pointer<Utf16>, Pointer<Utf16>, Pointer)
    >('ShellAboutW');

final _ShellExecute = _shell32
    .lookupFunction<
      Pointer Function(
        Pointer,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Int32,
      ),
      Pointer Function(
        Pointer,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer<Utf16>,
        int,
      )
    >('ShellExecuteW');

final _ShellExecuteEx = _shell32
    .lookupFunction<
      Int32 Function(Pointer<SHELLEXECUTEINFO>),
      int Function(Pointer<SHELLEXECUTEINFO>)
    >('ShellExecuteExW');

final _SHEmptyRecycleBin = _shell32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Utf16>, Uint32),
      int Function(Pointer, Pointer<Utf16>, int)
    >('SHEmptyRecycleBinW');

final _SHFileOperation = _shell32
    .lookupFunction<
      Int32 Function(Pointer<SHFILEOPSTRUCT>),
      int Function(Pointer<SHFILEOPSTRUCT>)
    >('SHFileOperationW');

final _SHFreeNameMappings = _shell32
    .lookupFunction<Void Function(Pointer), void Function(Pointer)>(
      'SHFreeNameMappings',
    );

final _SHGetDesktopFolder = _shell32
    .lookupFunction<
      Int32 Function(Pointer<VTablePointer>),
      int Function(Pointer<VTablePointer>)
    >('SHGetDesktopFolder');

final _SHGetDiskFreeSpaceEx = _shell32
    .lookupFunction<
      Int32 Function(
        Pointer<Utf16>,
        Pointer<Uint64>,
        Pointer<Uint64>,
        Pointer<Uint64>,
      ),
      int Function(
        Pointer<Utf16>,
        Pointer<Uint64>,
        Pointer<Uint64>,
        Pointer<Uint64>,
      )
    >('SHGetDiskFreeSpaceExW');

final _SHGetDriveMedia = _shell32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<Uint32>),
      int Function(Pointer<Utf16>, Pointer<Uint32>)
    >('SHGetDriveMedia');

final _SHGetFileInfo = _shell32
    .lookupFunction<
      IntPtr Function(
        Pointer<Utf16>,
        Uint32,
        Pointer<SHFILEINFO>,
        Uint32,
        Uint32,
      ),
      int Function(Pointer<Utf16>, int, Pointer<SHFILEINFO>, int, int)
    >('SHGetFileInfoW');

final _SHGetFolderPath = _shell32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Pointer, Uint32, Pointer<Utf16>),
      int Function(Pointer, int, Pointer, int, Pointer<Utf16>)
    >('SHGetFolderPathW');

final _SHGetKnownFolderPath = _shell32
    .lookupFunction<
      Int32 Function(Pointer<GUID>, Uint32, Pointer, Pointer<Pointer<Utf16>>),
      int Function(Pointer<GUID>, int, Pointer, Pointer<Pointer<Utf16>>)
    >('SHGetKnownFolderPath');

final _SHGetLocalizedName = _shell32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<Utf16>, Uint32, Pointer<Int32>),
      int Function(Pointer<Utf16>, Pointer<Utf16>, int, Pointer<Int32>)
    >('SHGetLocalizedName');

final _SHGetPathFromIDList = _shell32
    .lookupFunction<
      Int32 Function(Pointer<ITEMIDLIST>, Pointer<Utf16>),
      int Function(Pointer<ITEMIDLIST>, Pointer<Utf16>)
    >('SHGetPathFromIDListW');

final _SHQueryRecycleBin = _shell32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<SHQUERYRBINFO>),
      int Function(Pointer<Utf16>, Pointer<SHQUERYRBINFO>)
    >('SHQueryRecycleBinW');
