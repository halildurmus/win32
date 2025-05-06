import 'dart:typed_data';

import 'package:meta/meta.dart';

import '../../common.dart';
import '../codes.dart';
import '../heap/metadata_heap.dart';
import '../helpers.dart';
import '../row.dart';
import '../table_stream.dart';

/// Represents a row in the `TypeRef` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.38`.
///
/// The `TypeRef` table has the following columns:
///  - **ResolutionScope** (ResolutionScope Coded Index)
///  - **TypeName** (String Heap Index)
///  - **TypeNamespace** (String Heap Index)
final class TypeRef implements Row {
  TypeRef({
    required this.resolutionScope,
    required this.name,
    required this.namespace,
  });

  ResolutionScope resolutionScope;
  final StringIndex name;
  final StringIndex namespace;

  @override
  void serialize(BytesBuilder buffer, TableStream stream) {
    buffer
      ..writeCodedIndex(resolutionScope, stream)
      ..writeHeapIndex(name, stream)
      ..writeHeapIndex(namespace, stream);
  }
}

@internal
final class TypeRefCompanion extends RowCompanion<TypeRef> {
  const TypeRefCompanion();

  @override
  MetadataTableId get tableId => MetadataTableId.typeRef;
}
