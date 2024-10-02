// Play a sound

import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void main() {
  const logonSound = r'C:\Windows\Media\Windows Logon.wav';

  final file = File(logonSound).existsSync();

  if (!file) {
    print('WAV file missing.');
    exit(1);
  } else {
    final pszLogonSound = logonSound.toNativeUtf16();
    final result = PlaySound(
      pszLogonSound,
      NULL,
      SND_FLAGS.SND_FILENAME | SND_FLAGS.SND_SYNC,
    );

    if (result != TRUE) {
      print('Sound playback failed.');
    }
    free(pszLogonSound);
  }
}
