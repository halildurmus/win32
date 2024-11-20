// Example of using Windows speech client.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

const textToSpeak =
    'Dart is a portable, high-performance language from Google.';

void main() {
  CoInitializeEx(COINIT_MULTITHREADED);
  using((arena) {
    final speechVoice = arena.com<ISpeechVoice>(SpVoice);
    final tokens = arena.adopt(
      speechVoice.getVoices(BSTR(nullptr), BSTR(nullptr))!,
    );
    print('There are ${tokens.count} voices available for text-to-speech:');

    for (var i = 0; i < tokens.count; i++) {
      final token = arena.adopt(tokens.item(i)!);
      final pDescription = arena.using(token.getDescription(0), SysFreeString);
      final descriptionString = pDescription.toDartString();
      print('• Voice ${i + 1}: $descriptionString');
      final text = arena.bstr(textToSpeak);
      // Set the current voice for text-to-speech.
      speechVoice
        ..setVoice(token)
        ..speak(text, SVSFIsNotXML);
    }
  });
}
