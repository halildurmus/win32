import 'dart:typed_data';

import 'package:meta/meta.dart';

import '../../attributes.dart';
import '../../common.dart';
import '../codes.dart';
import '../heap/metadata_heap.dart';
import '../helpers.dart';
import '../row.dart';
import '../table_stream.dart';

/// Represents a row in the `Event` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.13`.
///
/// The `Event` table has the following columns:
///  - **EventFlags** (2-byte bitmask of EventAttributes)
///  - **Name** (String Heap Index)
///  - **EventType** (TypeDefOrRef Coded Index)
final class Event implements Row {
  const Event({
    required this.name,
    this.eventFlags = const EventAttributes(0),
    this.eventType = TypeDefOrRef.none,
  });

  final EventAttributes eventFlags;
  final StringIndex name;
  final TypeDefOrRef eventType;

  @override
  void serialize(BytesBuilder buffer, TableStream stream) {
    buffer
      ..writeUint16(eventFlags)
      ..writeHeapIndex(name, stream)
      ..writeCodedIndex(eventType, stream);
  }
}

@internal
final class EventCompanion extends RowCompanion<Event> {
  const EventCompanion();

  @override
  MetadataTableId get tableId => MetadataTableId.event;
}
