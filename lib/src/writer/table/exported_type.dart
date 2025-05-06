import 'dart:typed_data';

import 'package:meta/meta.dart';

import '../../attributes.dart';
import '../../common.dart';
import '../codes.dart';
import '../heap/metadata_heap.dart';
import '../helpers.dart';
import '../row.dart';
import '../table_stream.dart';
import 'index.dart';

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
final class ExportedType implements Row {
  const ExportedType({
    required this.typeDefId,
    required this.implementation,
    this.flags = const TypeAttributes(0),
    this.typeName = const StringIndex(0),
    this.typeNamespace = const StringIndex(0),
  });

  final TypeAttributes flags;
  final TypeDefIndex typeDefId;
  final StringIndex typeName;
  final StringIndex typeNamespace;
  final Implementation implementation;

  @override
  void serialize(BytesBuilder buffer, TableStream stream) {
    buffer
      ..writeUint32(flags)
      ..writeTableIndex(typeDefId, stream)
      ..writeHeapIndex(typeName, stream)
      ..writeHeapIndex(typeNamespace, stream)
      ..writeCodedIndex(implementation, stream);
  }
}

@internal
final class ExportedTypeCompanion extends RowCompanion<ExportedType> {
  const ExportedTypeCompanion();

  @override
  MetadataTableId get tableId => MetadataTableId.exportedType;
}
