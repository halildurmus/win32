import 'dart:typed_data';

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

void main() {
  group('GuidHeap', () {
    test('reads GUID from heap at correct offset', () {
      final data = Uint8List.fromList([
        // First GUID at offset 0
        0x33, 0x22, 0x11, 0x00, //
        0x55, 0x44, //
        0x77, 0x66, //
        0x88, 0x99, //
        0xaa, 0xbb, 0xcc, 0xdd, 0xee, 0xff, //
        // Second GUID at offset 16
        0xff, 0xff, 0xff, 0xff, //
        0xff, 0xff, //
        0xff, 0xff, //
        0xff, 0xff, //
        0xff, 0xff, 0xff, 0xff, 0xff, 0xff, //
      ]);
      final heap = GuidHeap(data);
      final firstGuid = heap[0];
      final secondGuid = heap[16];
      check(firstGuid.data1).equals(0x00112233);
      check(firstGuid.data2).equals(0x4455);
      check(firstGuid.data3).equals(0x6677);
      check(firstGuid.data4).deepEquals(
        Uint8List.fromList([
          0x88, 0x99, 0xaa, 0xbb, 0xcc, 0xdd, 0xee, 0xff, //
        ]),
      );
      check(secondGuid.data1).equals(0xffffffff);
      check(secondGuid.data2).equals(0xffff);
      check(secondGuid.data3).equals(0xffff);
      check(secondGuid.data4).deepEquals(
        Uint8List.fromList([
          0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, //
        ]),
      );
    });

    test('throws RangeError for out-of-bounds access', () {
      final heap = GuidHeap(Uint8List(16));
      check(() => heap[1]).throws().isA<RangeError>();
    });
  });
}
