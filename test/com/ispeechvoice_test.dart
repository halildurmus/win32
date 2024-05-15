// Copyright (c) 2020, Dart | Windows.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated)

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_local_variable

@TestOn('windows')
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';

void main() {
  final ptr = calloc<COMObject>();

  final speechvoice = ISpeechVoice(ptr);
  test('Can instantiate ISpeechVoice.putref_Voice', () {
    expect(speechvoice.putref_Voice, isA<Function>());
  });
  test('Can instantiate ISpeechVoice.putref_AudioOutput', () {
    expect(speechvoice.putref_AudioOutput, isA<Function>());
  });
  test('Can instantiate ISpeechVoice.putref_AudioOutputStream', () {
    expect(speechvoice.putref_AudioOutputStream, isA<Function>());
  });
  test('Can instantiate ISpeechVoice.speak', () {
    expect(speechvoice.speak, isA<Function>());
  });
  test('Can instantiate ISpeechVoice.speakStream', () {
    expect(speechvoice.speakStream, isA<Function>());
  });
  test('Can instantiate ISpeechVoice.pause', () {
    expect(speechvoice.pause, isA<Function>());
  });
  test('Can instantiate ISpeechVoice.resume', () {
    expect(speechvoice.resume, isA<Function>());
  });
  test('Can instantiate ISpeechVoice.skip', () {
    expect(speechvoice.skip, isA<Function>());
  });
  test('Can instantiate ISpeechVoice.getVoices', () {
    expect(speechvoice.getVoices, isA<Function>());
  });
  test('Can instantiate ISpeechVoice.getAudioOutputs', () {
    expect(speechvoice.getAudioOutputs, isA<Function>());
  });
  test('Can instantiate ISpeechVoice.waitUntilDone', () {
    expect(speechvoice.waitUntilDone, isA<Function>());
  });
  test('Can instantiate ISpeechVoice.speakCompleteEvent', () {
    expect(speechvoice.speakCompleteEvent, isA<Function>());
  });
  test('Can instantiate ISpeechVoice.isUISupported', () {
    expect(speechvoice.isUISupported, isA<Function>());
  });
  test('Can instantiate ISpeechVoice.displayUI', () {
    expect(speechvoice.displayUI, isA<Function>());
  });

  free(ptr);
}
