import '../../metadata_type.dart';
import '../codes.dart';
import '../has_custom_attributes.dart';
import '../metadata_index.dart';
import '../metadata_table.dart';
import '../row.dart';
import 'type_def.dart';

/// Records the interfaces a type implements explicitly.
///
/// The table has the following columns:
///  - Class (TypeDef Index)
///  - Interface (TypeDefOrRef Coded Index)
///
/// The table is defined in ECMA-335 `§II.22.23`.
final class InterfaceImpl extends Row with HasCustomAttributes {
  InterfaceImpl(super.metadataIndex, super.readerIndex, super.position);

  @override
  MetadataTable get table => MetadataTable.interfaceImpl;

  late final class$ = readRow<TypeDef>(0);

  MetadataType interface([List<MetadataType> generics = const []]) =>
      decode<TypeDefOrRef>(1).type(generics);

  @override
  String toString() =>
      'InterfaceImpl(class\$: ${class$}, interface: ${interface()})';
}

final class InterfaceImplCompanion extends RowCompanion<InterfaceImpl> {
  const InterfaceImplCompanion();

  @override
  InterfaceImpl Function(MetadataIndex, int, int) get constructor =>
      InterfaceImpl.new;

  @override
  MetadataTable get table => MetadataTable.interfaceImpl;
}
