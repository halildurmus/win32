import 'dart:typed_data';

import 'package:meta/meta.dart';

import '../../common.dart';
import '../helpers.dart';
import '../row.dart';
import '../table_stream.dart';
import 'index.dart';

/// Represents a row in the `FieldRVA` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.18`.
///
/// The `FieldRVA` table has the following columns:
///  - **RVA** (4-byte constant)
///  - **Field** (Field Table Index)
final class FieldRVA implements Row {
  const FieldRVA({required this.rva, required this.field});

  final int rva;
  final FieldIndex field;

  @override
  void serialize(BytesBuilder buffer, TableStream stream) {
    buffer
      ..writeUint32(rva)
      ..writeTableIndex(field, stream);
  }
}

@internal
final class FieldRVACompanion extends RowCompanion<FieldRVA> {
  const FieldRVACompanion();

  @override
  MetadataTableId get tableId => MetadataTableId.fieldRVA;
}
