import 'dart:typed_data';

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

void main() {
  group('StringHeap', () {
    test('reads null-terminated string correctly', () {
      // "Hello" + null terminator
      final bytes = Uint8List.fromList([0x00, 72, 101, 108, 108, 111, 0]);
      final heap = StringHeap(bytes);
      check(heap.count).equals(2);
      check(heap.strings)
        ..length.equals(2)
        ..first.isEmpty()
        ..last.equals('Hello');
      check(heap[1]).equals('Hello');
    });

    test('returns empty string for only null terminator', () {
      final bytes = Uint8List.fromList([0]);
      final heap = StringHeap(bytes);
      check(heap[0]).isEmpty();
    });

    test('asserts when accessing beyond bounds', () {
      final bytes = Uint8List.fromList([0x00, 65, 66, 0]); // "AB\0"
      final heap = StringHeap(bytes);
      // Offset out of range
      check(() => heap[4]).throws().isA<AssertionError>();
      // Missing null terminator case (truncated string)
      final incomplete = Uint8List.fromList([0x00, 67, 68]); // "CD" (no null)
      final heap2 = StringHeap(incomplete);
      check(() => heap2[1]).throws().isA<RangeError>();
    });
  });
}
