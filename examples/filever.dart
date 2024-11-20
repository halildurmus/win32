// File version information.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void main() {
  using((arena) {
    final lpFilename = arena.pcwstr('shell32.dll');
    final fviSize = GetFileVersionInfoSize(lpFilename, null).value;
    if (fviSize == 0) throw StateError('GetFileVersionInfoSize failed.');
    final pBlock = arena<BYTE>(fviSize);
    final lpFixedFileVersionInfo = arena<Pointer>();
    final uLen = arena<UINT>();

    if (!GetFileVersionInfo(lpFilename, fviSize, pBlock).value) {
      throw StateError('GetFileVersionInfo failed.');
    }

    final subBlock = arena.pcwstr(r'\');
    if (!VerQueryValue(pBlock, subBlock, lpFixedFileVersionInfo, uLen)) {
      throw StateError('VerQueryValue failed.');
    }

    final fixedFileVersionInfo = lpFixedFileVersionInfo.value
        .cast<VS_FIXEDFILEINFO>();
    print(
      'Version of shell32.dll: '
      '${HIWORD(fixedFileVersionInfo.ref.dwFileVersionMS)}.'
      '${LOWORD(fixedFileVersionInfo.ref.dwFileVersionMS)}.'
      '${HIWORD(fixedFileVersionInfo.ref.dwFileVersionLS)}.'
      '${LOWORD(fixedFileVersionInfo.ref.dwFileVersionLS)}',
    );
  });
}
