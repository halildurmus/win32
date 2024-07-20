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

  final speechbasestream = ISpeechBaseStream(ptr);
  test('Can instantiate ISpeechBaseStream.putref_Format', () {
    expect(speechbasestream.putref_Format, isA<Function>());
  });
  test('Can instantiate ISpeechBaseStream.read', () {
    expect(speechbasestream.read, isA<Function>());
  });
  test('Can instantiate ISpeechBaseStream.write', () {
    expect(speechbasestream.write, isA<Function>());
  });
  test('Can instantiate ISpeechBaseStream.seek', () {
    expect(speechbasestream.seek, isA<Function>());
  });

  free(ptr);
}
