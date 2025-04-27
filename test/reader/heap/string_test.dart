import 'dart:typed_data';

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

void main() {
  group('StringHeap', () {
    test('reads null-terminated string at offset 0', () {
      // "Hello" + null terminator
      final bytes = Uint8List.fromList([72, 101, 108, 108, 111, 0]);
      final heap = StringHeap(bytes);
      check(heap[0]).equals('Hello');
    });

    test('reads string at non-zero offset', () {
      // Padding + "World" + null terminator
      final bytes = Uint8List.fromList([0, 0, 87, 111, 114, 108, 100, 0]);
      final heap = StringHeap(bytes);
      check(heap[2]).equals('World');
    });

    test('returns empty string for only null terminator', () {
      final bytes = Uint8List.fromList([0]);
      final heap = StringHeap(bytes);
      check(heap[0]).isEmpty();
    });

    test('asserts when accessing beyond bounds', () {
      final bytes = Uint8List.fromList([65, 66, 0]); // "AB\0"
      final heap = StringHeap(bytes);
      // Offset out of range
      check(() => heap[4]).throws().isA<AssertionError>();
      // Missing null terminator case (truncated string)
      final incomplete = Uint8List.fromList([67, 68]); // "CD" (no null)
      final heap2 = StringHeap(incomplete);
      check(() => heap2[0]).throws().isA<RangeError>();
    });
  });
}
