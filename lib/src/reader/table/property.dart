import 'package:meta/meta.dart';

import '../../attributes.dart';
import '../../common.dart';
import '../codes.dart';
import '../has_custom_attributes.dart';
import '../metadata_index.dart';
import '../metadata_table.dart';
import '../row.dart';
import 'constant.dart';
import 'method_semantics.dart';
import 'property_map.dart';
import 'type_def.dart';

/// Represents a row in the `Property` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.34`.
///
/// The `Property` table has the following columns:
///  - **Flags** (2-byte bitmask of PropertyAttributes)
///  - **Name** (String Heap Index)
///  - **Type** (Blob Heap Index)
final class Property extends Row with HasCustomAttributes {
  Property(super.metadataIndex, super.readerIndex, super.index);

  @override
  MetadataTable get table => MetadataTable.property;

  @override
  int get token => (MetadataTableId.property << 24) | index;

  /// The attributes of the property.
  late final flags = PropertyAttributes(readUint16(0));

  /// The name of the property.
  late final name = readString(1);

  /// The signature of the property's getter method, which defines its return
  /// type and parameters.
  late final signature = readBlob(2).readPropertySig();

  /// The constant associated with the parameter, if any.
  late final constant = getEqualRange<Constant>(
    1,
    HasConstant.property(this).encode(),
  ).firstOrNull;

  /// The method semantics associated with the property.
  late final methodSemantics = getEqualRange<MethodSemantics>(
    2,
    HasSemantics.property(this).encode(),
  ).toList(growable: false);

  /// The getter method of the property, if present.
  late final getter = methodSemantics
      .where(
        (semantics) => semantics.semantics == MethodSemanticsAttributes.getter,
      )
      .map((semantics) => semantics.method)
      .firstOrNull;

  /// The setter method of the property, if present.
  late final setter = methodSemantics
      .where(
        (semantics) => semantics.semantics == MethodSemanticsAttributes.setter,
      )
      .map((semantics) => semantics.method)
      .firstOrNull;

  /// The [TypeDef] that owns this property.
  late final parent = getParentRow<PropertyMap>(1).parent;

  @override
  String toString() => 'Property(name: $name)';
}

@internal
final class PropertyCompanion extends RowCompanion<Property> {
  const PropertyCompanion();

  @override
  Property Function(MetadataIndex, int, int) get constructor => Property.new;

  @override
  MetadataTable get table => MetadataTable.property;
}
