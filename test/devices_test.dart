@TestOn('windows')

import 'dart:ffi';
import 'package:ffi/ffi.dart';

import 'package:test/test.dart';
import 'package:win32/win32.dart';

void main() {
  test('Volume management API', () {
    final volumeNamePtr =
        allocate<Uint16>(count: MAX_PATH).cast<Utf16>().cast<Utf16>();

    final hFindVolume = FindFirstVolume(volumeNamePtr, MAX_PATH);
    expect(hFindVolume, isNot(INVALID_HANDLE_VALUE));

    final volume = volumeNamePtr.unpackString(MAX_PATH);

    expect(volume, startsWith('\\\\?\\'));
  });
}
