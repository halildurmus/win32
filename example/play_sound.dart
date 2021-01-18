// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Play a sound
// Example comes from:
//   https://docs.microsoft.com/en-us/windows/win32/gdi/capturing-an-image

import 'dart:io';

import 'package:win32/win32.dart';

void main() {
  const logonSound = r'C:\Windows\Media\Windows Logon.wav';

  final file = File(logonSound).existsSync();
  if (!file) {
    print('WAV file missing.');
    exit(1);
  } else {
    final result = PlaySound(TEXT(logonSound), NULL, SND_FILENAME | SND_SYNC);

    if (result != TRUE) {
      print('Sound playback failed.');
    }
  }
}
