import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void main() {
  print('Type the audio file path.');
  final file = stdin.readLineSync();
  if (file != null && File(file).existsSync()) {
    final result =
        PlaySound(Utf16.toUtf16(file), NULL, SND_FILENAME | SND_ASYNC);
    print('Press any button to continue');
    stdin
        .readByteSync(); // This is needed since we are using the SND_ASNYC flag and the PlaySound function returns immediately, to avoid this behavior use SND_SYNC instead (default)
    print('Result: $result');
  }
}
