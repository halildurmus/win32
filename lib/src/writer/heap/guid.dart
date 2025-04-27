import 'dart:collection';
import 'dart:typed_data';

import '../../guid.dart';
import '../id.dart';
import 'heap.dart';

final class GuidHeap extends Heap<Guid, GuidId> {
  const GuidHeap(super.map, super.buffer);

  GuidHeap.empty() : super(HashMap(), BytesBuilder());

  @override
  GuidId insert(Guid value) {
    if (map[value] case final value?) return value;
    final position = GuidId((buffer.length ~/ 16) + 1);
    map[value] = position;
    buffer.add(value.toBytes());
    return position;
  }
}
