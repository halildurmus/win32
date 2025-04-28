import 'package:meta/meta.dart';

import '../metadata_index.dart';
import '../metadata_table.dart';
import '../row.dart';
import 'type_def.dart';

/// Represents a row in the `ClassLayout` metadata table, describing layout
/// constraints for a class type.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.8`.
///
/// The `ClassLayout` table has the following columns:
///  - **PackingSize** (2-byte constant)
///  - **ClassSize** (4-byte constant)
///  - **Parent** (TypeDef Index)
final class ClassLayout extends Row {
  ClassLayout(super.metadataIndex, super.readerIndex, super.position);

  @override
  MetadataTable get table => MetadataTable.classLayout;

  /// The packing size (byte alignment) for the class fields.
  ///
  /// Common values are 1, 2, 4, 8, or 16 bytes. This influences how fields are
  /// laid out in memory. If not specified, a platform default is assumed.
  late final packingSize = readUint(0);

  /// The total size, in bytes, of an instance of the class.
  late final classSize = readUint(1);

  /// The [TypeDef] representing the class whose layout is specified.
  late final parent = readRow<TypeDef>(2);

  @override
  String toString() =>
      'ClassLayout(packingSize: $packingSize, classSize: $classSize)';
}

@internal
final class ClassLayoutCompanion extends RowCompanion<ClassLayout> {
  const ClassLayoutCompanion();

  @override
  ClassLayout Function(MetadataIndex, int, int) get constructor =>
      ClassLayout.new;

  @override
  MetadataTable get table => MetadataTable.classLayout;
}
