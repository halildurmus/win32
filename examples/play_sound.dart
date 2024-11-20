// Play a sound.

import 'dart:io';

import 'package:win32/win32.dart';

void main() {
  const logonSoundPath = r'C:\Windows\Media\Windows Logon.wav';
  final file = File(logonSoundPath).existsSync();
  if (!file) {
    print(r'C:\Windows\Media\Windows Logon.wav not found.');
    exit(1);
  }

  final sound = w(logonSoundPath);
  if (!PlaySound(sound.ptr, null, SND_FILENAME | SND_SYNC)) {
    print('Sound playback failed.');
  }
}
