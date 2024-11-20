// File version information.

import 'dart:ffi';

import 'package:win32/win32.dart';

void main() {
  final lpFilename = w('shell32.dll');
  final fviSize = GetFileVersionInfoSize(lpFilename.ptr, null);
  if (fviSize == 0) throw StateError('GetFileVersionInfoSize failed.');
  final pBlock = loggingCalloc<BYTE>(fviSize);
  final lpFixedFileVersionInfo = loggingCalloc<Pointer>();
  final uLen = loggingCalloc<UINT>();

  try {
    if (!GetFileVersionInfo(lpFilename.ptr, fviSize, pBlock)) {
      throw StateError('GetFileVersionInfo failed.');
    }

    final subBlock = w(r'\');
    if (!VerQueryValue(pBlock, subBlock.ptr, lpFixedFileVersionInfo, uLen)) {
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
  } finally {
    free(pBlock);
    free(lpFixedFileVersionInfo);
    free(uLen);
  }
}
