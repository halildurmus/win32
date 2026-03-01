import 'dart:typed_data';

import 'package:meta/meta.dart';

import '../../common.dart';
import '../helpers.dart';
import '../row.dart';
import '../table_stream.dart';
import 'index.dart';

/// Represents a row in the `EventMap` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.12`.
///
/// The `EventMap` table has the following columns:
///  - **Parent** (TypeDef Table Index)
///  - **EventList** (Event Table Index)
final class EventMap implements Row {
  const EventMap({required this.parent, required this.eventList});

  final TypeDefIndex parent;
  final EventIndex eventList;

  @override
  void serialize(BytesBuilder buffer, TableStream stream) {
    buffer
      ..writeTableIndex(parent, stream)
      ..writeTableIndex(eventList, stream);
  }
}

@internal
final class EventMapCompanion extends RowCompanion<EventMap> {
  const EventMapCompanion();

  @override
  MetadataTableId get tableId => .eventMap;
}
