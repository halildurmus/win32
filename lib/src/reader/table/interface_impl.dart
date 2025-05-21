import 'package:meta/meta.dart';

import '../../common.dart';
import '../../metadata_type.dart';
import '../../type_name.dart';
import '../codes.dart';
import '../has_custom_attributes.dart';
import '../metadata_index.dart';
import '../metadata_table.dart';
import '../row.dart';
import 'type_def.dart';

/// Represents a row in the `InterfaceImpl` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.23`.
///
/// The `InterfaceImpl` table has the following columns:
///  - **Class** (TypeDef Table Index)
///  - **Interface** (TypeDefOrRef Coded Index)
final class InterfaceImpl extends Row with HasCustomAttributes {
  InterfaceImpl(super.metadataIndex, super.readerIndex, super.index);

  @override
  MetadataTable get table => MetadataTable.interfaceImpl;

  @override
  int get token => (MetadataTableId.interfaceImpl << 24) | index;

  /// The type that implements the interface.
  late final TypeDef class$ = readRow<TypeDef>(0);

  /// Returns the interface type implemented by [class$].
  late final NamedClassType interface = switch (decode<TypeDefOrRef>(1)) {
    TypeDefOrRefTypeDef(:final value) => NamedClassType(
      TypeName(value.namespace, value.name),
    ),
    TypeDefOrRefTypeRef(:final value) => NamedClassType(
      TypeName(value.namespace, value.name),
    ),
    TypeDefOrRefTypeSpec(:final value) => value.signature as NamedClassType,
  };

  @override
  String toString() => 'InterfaceImpl(class\$: ${class$})';
}

@internal
final class InterfaceImplCompanion extends RowCompanion<InterfaceImpl> {
  const InterfaceImplCompanion();

  @override
  InterfaceImpl Function(MetadataIndex, int, int) get constructor =>
      InterfaceImpl.new;

  @override
  MetadataTable get table => MetadataTable.interfaceImpl;
}
