import 'package:meta/meta.dart';

import '../../attributes.dart';
import '../codes.dart';
import '../has_custom_attributes.dart';
import '../metadata_index.dart';
import '../metadata_table.dart';
import '../row.dart';
import 'type_def.dart';

/// Represents a row in the `ExportedType` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.14`.
///
/// The `ExportedType` table has the following columns:
///  - **Flags** (4-byte bitmask of TypeAttributes)
///  - **TypeDefId** (TypeDef Table Index)
///  - **TypeName** (String Heap Index)
///  - **TypeNamespace** (String Heap Index)
///  - **Implementation** (Implementation Coded Index)
final class ExportedType extends Row with HasCustomAttributes {
  ExportedType(super.metadataIndex, super.readerIndex, super.index);

  @override
  MetadataTable get table => MetadataTable.exportedType;

  /// The attributes of the exported type.
  late final flags = TypeAttributes(readUint32(0));

  /// The exported type.
  late final typeDefId = () {
    if (readUint(1) == 0) return null;
    return readRow<TypeDef>(1);
  }();

  /// The name of the exported type.
  late final name = readString(2);

  /// The namespace of the exported type.
  late final namespace = readString(3);

  /// The source of the exported type.
  late final implementation = decode<Implementation>(4);

  @override
  String toString() => 'ExportedType($namespace.$name)';
}

@internal
final class ExportedTypeCompanion extends RowCompanion<ExportedType> {
  const ExportedTypeCompanion();

  @override
  ExportedType Function(MetadataIndex, int, int) get constructor =>
      ExportedType.new;

  @override
  MetadataTable get table => MetadataTable.exportedType;
}
