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

/// Represents a row in the `TypeDef` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.37`.
///
/// The `TypeDef` table has the following columns:
///  - **Flags** (4-byte bitmask of TypeAttributes)
///  - **TypeName** (String Heap Index)
///  - **TypeNamespace** (String Heap Index)
///  - **Extends** (TypeDefOrRef Coded Index)
///  - **FieldList** (Field Table Index)
///  - **MethodList** (MethodDef Table Index)
final class TypeDef implements Row {
  const TypeDef({
    required this.name,
    required this.extends$,
    required this.fieldList,
    required this.methodList,
    this.flags = const TypeAttributes(0),
    this.namespace = const StringIndex(0),
  });

  final TypeAttributes flags;
  final StringIndex name;
  final StringIndex namespace;
  final TypeDefOrRef extends$;
  final FieldIndex fieldList;
  final MethodDefIndex methodList;

  @override
  void serialize(BytesBuilder buffer, TableStream stream) {
    buffer
      ..writeUint32(flags)
      ..writeHeapIndex(name, stream)
      ..writeHeapIndex(namespace, stream)
      ..writeCodedIndex(extends$, stream)
      ..writeTableIndex(fieldList, stream)
      ..writeTableIndex(methodList, stream);
  }
}

@internal
final class TypeDefCompanion extends RowCompanion<TypeDef> {
  const TypeDefCompanion();

  @override
  MetadataTableId get tableId => MetadataTableId.typeDef;
}
