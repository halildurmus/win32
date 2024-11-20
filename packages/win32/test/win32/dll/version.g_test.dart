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
import 'package:win32/src/_internal/version.g.dart';
import 'package:win32/win32.dart';

import '../../helpers.dart';

void main() {
  group('version.dll', () {
    test('GetFileVersionInfo can be instantiated', () {
      check(GetFileVersionInfoW_Wrapper).isA<Function>();
    });
    test('GetFileVersionInfoEx can be instantiated', () {
      check(GetFileVersionInfoExW_Wrapper).isA<Function>();
    });
    test('GetFileVersionInfoSize can be instantiated', () {
      check(GetFileVersionInfoSizeW_Wrapper).isA<Function>();
    });
    test('GetFileVersionInfoSizeEx can be instantiated', () {
      check(GetFileVersionInfoSizeExW_Wrapper).isA<Function>();
    });
    test('VerFindFile can be instantiated', () {
      check(_VerFindFile).isA<Function>();
    });
    test('VerInstallFile can be instantiated', () {
      check(_VerInstallFile).isA<Function>();
    });
    test('VerQueryValue can be instantiated', () {
      check(_VerQueryValue).isA<Function>();
    });
  });
}

@Native<
  Uint32 Function(
    Uint32,
    PCWSTR,
    PCWSTR,
    PCWSTR,
    PWSTR,
    Pointer<Uint32>,
    PWSTR,
    Pointer<Uint32>,
  )
>(symbol: 'VerFindFileW')
external int _VerFindFile(
  int uFlags,
  PCWSTR szFileName,
  PCWSTR szWinDir,
  PCWSTR szAppDir,
  PWSTR szCurDir,
  Pointer<Uint32> puCurDirLen,
  PWSTR szDestDir,
  Pointer<Uint32> puDestDirLen,
);

@Native<
  Uint32 Function(
    Uint32,
    PCWSTR,
    PCWSTR,
    PCWSTR,
    PCWSTR,
    PCWSTR,
    PWSTR,
    Pointer<Uint32>,
  )
>(symbol: 'VerInstallFileW')
external int _VerInstallFile(
  int uFlags,
  PCWSTR szSrcFileName,
  PCWSTR szDestFileName,
  PCWSTR szSrcDir,
  PCWSTR szDestDir,
  PCWSTR szCurDir,
  PWSTR szTmpFile,
  Pointer<Uint32> puTmpFileLen,
);

@Native<BOOL Function(Pointer, PCWSTR, Pointer<Pointer>, Pointer<Uint32>)>(
  symbol: 'VerQueryValueW',
)
external int _VerQueryValue(
  Pointer pBlock,
  PCWSTR lpSubBlock,
  Pointer<Pointer> lplpBuffer,
  Pointer<Uint32> puLen,
);
