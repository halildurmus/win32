import 'dart:typed_data';

import '../codes.dart';
import '../helpers.dart';
import '../index.dart';
import '../table.dart';
import '../table_stream.dart';

/// Represents a row in the `TypeRef` metadata table, describing a reference to
/// a type.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.38`.
///
/// The `TypeRef` table has the following columns:
///  - **ResolutionScope** (ResolutionScope Coded Index)
///  - **TypeName** (String Heap Index)
///  - **TypeNamespace** (String Heap Index)
final class TypeRef implements Row {
  const TypeRef({
    required this.resolutionScope,
    required this.name,
    required this.namespace,
  });

  final ResolutionScope resolutionScope;
  final StringIndex name;
  final StringIndex namespace;

  @override
  void serialize(BytesBuilder buffer, TableStream context) {
    buffer
      ..writeCodedIndex(resolutionScope.encode(), context.resolutionScope)
      ..writeHeapIndex(name.index, context.stringHeapSize)
      ..writeHeapIndex(namespace.index, context.stringHeapSize);
  }
}
