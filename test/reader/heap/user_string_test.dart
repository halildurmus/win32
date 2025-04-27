import 'dart:typed_data';

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

void main() {
  group('UserStringHeap', () {
    test('decodes 1-byte encoded UTF-16 string correctly', () {
      const header = [0x05]; // blob size encoded in 1 byte
      const payload = [0x68, 0x00, 0x69, 0x00]; // "hi"
      final bytes = Uint8List.fromList([0x00, ...header, ...payload, 0x00]);
      final heap = UserStringHeap(bytes);
      check(heap[1]).equals('hi');
    });

    test('decodes 2-byte encoded UTF-16 string correctly', () {
      const header = [0x81, 0x03]; // blob size encoded in 2 bytes
      final payload = List.generate(258, (i) => i.isOdd ? 0 : 0x41);
      final bytes = Uint8List.fromList([0x00, ...header, ...payload, 0x00]);
      final heap = UserStringHeap(bytes);
      final str = heap[1];
      check(str).equals('A' * 129);
    });

    test('decodes 4-byte encoded UTF-16 string correctly', () {
      const header = [0xC0, 0x00, 0x00, 0x05]; // blob size encoded in 4 bytes
      const payload = [0x41, 0x00, 0x42, 0x00]; // "AB"
      final bytes = Uint8List.fromList([0x00, ...header, ...payload, 0x00]);
      final heap = UserStringHeap(bytes);
      final str = heap[1];
      check(str).equals('AB');
    });

    test('returns empty string for size = 0', () {
      final heap = UserStringHeap(Uint8List.fromList([0x00, 0x00]));
      check(heap[1]).isEmpty();
    });

    test('throws on unexpected initial byte value', () {
      final bytes = Uint8List.fromList([0x00, 0xFF]); // 0b111xxxxx = invalid
      final heap = UserStringHeap(bytes);
      check(() => heap[1]).throws<WinmdException>();
    });

    test('asserts on even final string size (should be odd)', () {
      // If length doesn't include the terminator, it becomes even (invalid).
      // Here we simulate a malformed header of 0x04 (claims
      // size 4 bytes: 2 chars, no terminator).
      const header = [0x04];
      const payload = [0x68, 0x00, 0x69, 0x00]; // "hi"
      final bytes = Uint8List.fromList([0x00, ...header, ...payload]);
      final heap = UserStringHeap(bytes);
      check(() => heap[1]).throws<AssertionError>();
    });
  });
}
