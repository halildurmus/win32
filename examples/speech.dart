// Example of using Windows speech client.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

const textToSpeak =
    'Dart is a portable, high-performance language from Google.';

void main() {
  CoInitializeEx(COINIT_MULTITHREADED);

  final speechVoice = createInstance<ISpeechVoice>(SpVoice);
  final tokens = speechVoice.getVoices(nullptr, nullptr)!;
  print('There are ${tokens.count} voices available for text-to-speech:');

  for (var i = 0; i < tokens.count; i++) {
    final token = tokens.item(i)!;
    final description = token.getDescription(0).toDartString();
    print(' - Voice ${i + 1}: $description');
    final text = b(textToSpeak);
    // Set the current voice for text-to-speech.
    speechVoice
      ..setVoice(token)
      ..speak(text.ptr, SVSFIsNotXML);
  }
}
