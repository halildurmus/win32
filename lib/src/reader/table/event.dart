import 'package:meta/meta.dart';

import '../../attributes.dart';
import '../../common.dart';
import '../../metadata_type.dart';
import '../../type_name.dart';
import '../codes.dart';
import '../has_custom_attributes.dart';
import '../metadata_index.dart';
import '../metadata_table.dart';
import '../row.dart';
import 'event_map.dart';
import 'method_semantics.dart';
import 'type_def.dart';

/// Represents a row in the `Event` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.13`.
///
/// The `Event` table has the following columns:
///  - **EventFlags** (2-byte bitmask of EventAttributes)
///  - **Name** (String Heap Index)
///  - **EventType** (TypeDefOrRef Coded Index)
final class Event extends Row with HasCustomAttributes {
  Event(super.metadataIndex, super.readerIndex, super.index);

  @override
  MetadataTable get table => MetadataTable.event;

  @override
  int get token => (MetadataTableId.event << 24) | index;

  /// The attributes of the event.
  late final eventFlags = EventAttributes(readUint16(0));

  /// The name of the event.
  late final name = readString(1);

  /// The type of the event, if any.
  late final eventType = () {
    if (readUint(2) == 0) return null;
    return switch (decode<TypeDefOrRef>(2)) {
      TypeDefOrRefTypeDef(:final value) => NamedClassType(
        TypeName(value.namespace, value.name),
      ),
      TypeDefOrRefTypeRef(:final value) => NamedClassType(
        TypeName(value.namespace, value.name),
      ),
      TypeDefOrRefTypeSpec(:final value) => value.signature as NamedClassType,
    };
  }();

  /// The method semantics associated with the event.
  late final methodSemantics = getEqualRange<MethodSemantics>(
    2,
    HasSemantics.event(this).encode(),
  ).toList(growable: false);

  /// The `add_` method of the event.
  late final add = methodSemantics
      .firstWhere(
        (semantics) => semantics.semantics == MethodSemanticsAttributes.addOn,
      )
      .method;

  /// The `remove_` method of the event.
  late final remove = methodSemantics
      .firstWhere(
        (semantics) =>
            semantics.semantics == MethodSemanticsAttributes.removeOn,
      )
      .method;

  /// The `raise_` method of the event, if present.
  late final raise = methodSemantics
      .where(
        (semantics) => semantics.semantics == MethodSemanticsAttributes.fire,
      )
      .map((semantics) => semantics.method)
      .firstOrNull;

  /// The [TypeDef] that owns this event.
  late final parent = getParentRow<EventMap>(1).parent;

  @override
  String toString() => 'Event(name: $name)';
}

@internal
final class EventCompanion extends RowCompanion<Event> {
  const EventCompanion();

  @override
  Event Function(MetadataIndex, int, int) get constructor => Event.new;

  @override
  MetadataTable get table => MetadataTable.event;
}
