import 'package:meta/meta.dart';

import '../../common.dart';
import '../metadata_index.dart';
import '../metadata_table.dart';
import '../row.dart';
import 'type_def.dart';

/// Represents a row in the `ClassLayout` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.8`.
///
/// The `ClassLayout` table has the following columns:
///  - **PackingSize** (2-byte constant)
///  - **ClassSize** (4-byte constant)
///  - **Parent** (TypeDef Table Index)
final class ClassLayout extends Row {
  ClassLayout(super.metadataIndex, super.readerIndex, super.index);

  @override
  MetadataTable get table => .classLayout;

  @override
  int get token => (MetadataTableId.classLayout << 24) | index;

  /// The packing size (byte alignment) for the class fields.
  ///
  /// Common values are 1, 2, 4, 8, or 16 bytes. This influences how fields are
  /// laid out in memory. If not specified, a platform default is assumed.
  late final int packingSize = readUint16(0);

  /// The total size, in bytes, of an instance of the class.
  late final int classSize = readUint32(1);

  /// The [TypeDef] representing the class whose layout is specified.
  late final TypeDef parent = readRow<TypeDef>(2);

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
  MetadataTable get table => .classLayout;
}
