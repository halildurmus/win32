import 'dart:ffi';
import 'dart:typed_data';

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

import '../helpers.dart';

void main() {
  group('Uint8ListToUint8Pointer extension', () {
    group('toNative', () {
      test('converts Uint8List to Pointer<Uint8>', () {
        final list = Uint8List.fromList(const [1, 2, 3, 4, 5]);
        final pointer = list.toNative();
        check(pointer.address).isNonZero();
        check(pointer.asTypedList(list.length)).deepEquals(list);
        free(pointer);
      });

      test('throws ArgumentError for empty Uint8List', () {
        final list = Uint8List(0);
        check(list.toNative).throws<ArgumentError>();
      });
    });
  });
}
