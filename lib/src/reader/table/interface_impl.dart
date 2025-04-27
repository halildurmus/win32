import '../../metadata_type.dart';
import '../codes.dart';
import '../has_custom_attributes.dart';
import '../metadata_index.dart';
import '../row.dart';
import '../table_index.dart';
import 'type_def.dart';

/// Records the interfaces a type implements explicitly.
///
/// The table has the following columns:
///  - Class (TypeDef Index)
///  - Interface (TypeDefOrRef Coded Index)
///
/// The table is defined in the section `§II.22.23` of the ECMA-335 standard.
final class InterfaceImpl extends Row with HasCustomAttributes {
  InterfaceImpl(super.metadataIndex, super.readerIndex, super.position);

  static const tableIndex = TableIndex.interfaceImpl;

  @override
  TableIndex get table => tableIndex;

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
  TableIndex get table => InterfaceImpl.tableIndex;
}
