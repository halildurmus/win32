import 'package:meta/meta.dart';

import '../../common.dart';
import '../metadata_index.dart';
import '../metadata_table.dart';
import '../row.dart';
import 'event.dart';
import 'type_def.dart';

/// Represents a row in the `EventMap` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.12`.
///
/// The `EventMap` table has the following columns:
///  - **Parent** (TypeDef Table Index)
///  - **EventList** (Event Table Index)
final class EventMap extends Row {
  EventMap(super.metadataIndex, super.readerIndex, super.index);

  @override
  MetadataTable get table => MetadataTable.eventMap;

  @override
  int get token => (MetadataTableId.eventMap << 24) | index;

  /// The [TypeDef] that owns the [events].
  late final parent = readRow<TypeDef>(0);

  /// A list of [Event]s that belong to the type defined in [parent].
  late final events = getList<Event>(1).toList(growable: false);

  @override
  String toString() => 'EventMap(parent: $parent, events: $events)';
}

@internal
final class EventMapCompanion extends RowCompanion<EventMap> {
  const EventMapCompanion();

  @override
  EventMap Function(MetadataIndex, int, int) get constructor => EventMap.new;

  @override
  MetadataTable get table => MetadataTable.eventMap;
}
