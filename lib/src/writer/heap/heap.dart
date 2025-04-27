import 'dart:collection';
import 'dart:typed_data';

import '../helpers.dart';

abstract class Heap<K, V> {
  const Heap(this.map, this.buffer);

  final HashMap<K, V> map;
  final BytesBuilder buffer;

  V insert(K value);

  Uint8List toBytes() => buffer.takeBytes().toBytesPadded();
}
