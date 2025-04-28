import '../metadata_index.dart';
import '../metadata_table.dart';
import '../row.dart';
import 'type_def.dart';

/// Contains the layout information for a class.
///
/// The table has the following columns:
///  - PackingSize (2-byte constant)
///  - ClassSize (4-byte constant)
///  - Parent (TypeDef Index)
///
/// The table is defined in ECMA-335 `§II.22.8`.
final class ClassLayout extends Row {
  ClassLayout(super.metadataIndex, super.readerIndex, super.position);

  @override
  MetadataTable get table => MetadataTable.classLayout;

  /// The pack size of the class.
  ///
  /// If specified, this contains one of the values 1, 2, 4, 8, or 16,
  /// representing the packing alignment of the class. If null, no packing
  /// alignment is specified.
  late final packingSize = readUint(0);

  /// The size in bytes of the class represented.
  late final classSize = readUint(1);

  /// The parent TypeDef of this layout.
  late final parent = readRow<TypeDef>(2);

  @override
  String toString() =>
      'ClassLayout(packingSize: $packingSize, classSize: $classSize)';
}

final class ClassLayoutCompanion extends RowCompanion<ClassLayout> {
  const ClassLayoutCompanion();

  @override
  ClassLayout Function(MetadataIndex, int, int) get constructor =>
      ClassLayout.new;

  @override
  MetadataTable get table => MetadataTable.classLayout;
}
