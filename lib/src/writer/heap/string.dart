import 'dart:collection';
import 'dart:convert';
import 'dart:typed_data';

import '../id.dart';
import 'heap.dart';

final class StringHeap extends Heap<String, StringId> {
  const StringHeap(super.map, super.buffer);

  StringHeap.empty() : super(HashMap(), BytesBuilder()) {
    buffer.addByte(0x00); // Add an empty string.
  }

  @override
  StringId insert(String value) {
    if (value.isEmpty) return const StringId(0);
    if (map[value] case final value?) return value;
    final position = StringId(buffer.length);
    map[value] = position;
    buffer
      ..add(utf8.encode(value))
      ..addByte(0x00);
    return position;
  }
}
