@TestOn('windows')

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';

int testFunction() {
  throw FormatException();
}

void main() {
  test('GUID creation', () {
    final guid = GUID.allocate();
    final hresult = CoCreateGuid(guid.addressOf);
    expect(hresult, equals(S_OK));

    final guid2 = GUID.fromString(guid.toString());
    expect(guid.toString(), equals(guid2.toString()));
  });

  test('GUID creation failure', () {
    expect(() => GUID.fromString('{X161CA9B-9409-4A77-7327-8B8D3363C6B9}'),
        throwsFormatException);
  });
}
