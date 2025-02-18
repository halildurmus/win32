// Example of using Windows speech client.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

const textToSpeak =
    'Dart is a portable, high-performance language from Google.';

void main() {
  CoInitializeEx(nullptr, COINIT_APARTMENTTHREADED);

  final speechEngine = SpVoice.createInstance();
  final pText = textToSpeak.toNativeUtf16();
  speechEngine.speak(pText, SPF_IS_NOT_XML, nullptr);

  free(pText);
}
