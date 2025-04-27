import 'dart:typed_data';

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

void main() {
  group('BlobHeap', () {
    test('reads 1-byte encoded blob correctly', () {
      const header = [0x03]; // blob size encoded in 1 byte
      const payload = [0xDE, 0xAD, 0xBE];
      final bytes = Uint8List.fromList([0x00, ...header, ...payload]);
      final heap = BlobHeap(bytes);
      final blob = heap[1];
      check(blob).deepEquals([0xDE, 0xAD, 0xBE]);
    });

    test('reads 2-byte encoded blob correctly', () {
      const header = [0x81, 0x02]; // blob size encoded in 2 bytes
      final payload = List.generate(258, (i) => i & 0xFF);
      final bytes = Uint8List.fromList([0x00, ...header, ...payload]);
      final heap = BlobHeap(bytes);
      final blob = heap[1];
      check(blob).deepEquals(payload);
    });

    test('reads 4-byte encoded blob correctly', () {
      const header = [0xC0, 0x00, 0x00, 0x03]; // blob size encoded in 4 bytes
      const payload = [0x01, 0x02, 0x03];
      final bytes = Uint8List.fromList([0x00, ...header, ...payload]);
      final heap = BlobHeap(bytes);
      final blob = heap[1];
      check(blob).deepEquals(payload);
    });

    test('throws on invalid top bits', () {
      final bytes = Uint8List.fromList([0x00, 0xE0]);
      final heap = BlobHeap(bytes);
      check(() => heap[1]).throws()
        ..isA<WinmdException>()
        ..has(
          (e) => e.toString(),
          'message',
        ).contains('Invalid compressed integer encoding: 0xe0');
    });

    test('throws exception on truncated blob', () {
      final bytes = Uint8List.fromList([0x00, 0x83]);
      final heap = BlobHeap(bytes);
      check(() => heap[1]).throws().isA<WinmdException>();
    });
  });
}
