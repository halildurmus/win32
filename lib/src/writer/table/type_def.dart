import 'dart:typed_data';

import '../../attributes.dart';
import '../codes.dart';
import '../helpers.dart';
import '../index.dart';
import '../table.dart';
import '../table_stream.dart';

/// Represents a row in the `TypeDef` metadata table, describing a type defined
/// in the assembly.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.37`.
///
/// The `TypeDef` table has the following columns:
///  - **Flags** (4-byte bitmask of TypeAttributes)
///  - **TypeName** (String Heap Index)
///  - **TypeNamespace** (String Heap Index)
///  - **Extends** (TypeDefOrRef Coded Index)
///  - **FieldList** (Field Index)
///  - **MethodList** (MethodDef Index)
final class TypeDef implements Row {
  const TypeDef({
    required this.flags,
    required this.name,
    required this.namespace,
    required this.extends$,
    required this.fieldList,
    required this.methodList,
  });

  final TypeAttributes flags;
  final StringIndex name;
  final StringIndex namespace;
  final TypeDefOrRef extends$;
  final FieldIndex fieldList;
  final MethodDefIndex methodList;

  @override
  void serialize(BytesBuilder buffer, TableStream context) {
    buffer
      ..writeUint32(flags)
      ..writeHeapIndex(name.index, context.stringHeapSize)
      ..writeHeapIndex(namespace.index, context.stringHeapSize)
      ..writeCodedIndex(extends$.encode(), context.typeDefOrRef)
      ..writeTableIndex(fieldList.index, context.field.length)
      ..writeTableIndex(methodList.index, context.methodDef.length);
  }
}
