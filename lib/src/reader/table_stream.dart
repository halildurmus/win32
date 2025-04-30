import 'dart:collection';

import 'metadata_reader.dart';
import 'metadata_table.dart';

/// Provides access to a fixed set of metadata tables within a metadata stream.
///
/// Each table contains structured records used to describe types, methods,
/// fields, and other program elements.
final class TableStream {
  /// Creates an empty [TableStream].
  ///
  /// Initializes all tables up front to ensure a consistent, non-growable list
  /// of known tables.
  TableStream()
    : tables = UnmodifiableListView(
        List.generate(
          MetadataTable.values.length,
          (_) => TableData.empty(),
          growable: false,
        ),
      );

  /// The list of tables contained within this stream.
  final List<TableData> tables;

  /// Returns the [TableData] associated with the given [MetadataTable].
  @pragma('vm:prefer-inline')
  TableData operator [](MetadataTable table) => tables[table.index];

  /// Enumerates all `AssemblyRef` rows.
  Iterable<int> get assemblyRefs =>
      Iterable.generate(this[MetadataTable.assemblyRef].rows);

  /// Enumerates all `ClassLayout` rows.
  Iterable<int> get classLayouts =>
      Iterable.generate(this[MetadataTable.classLayout].rows);

  /// Enumerates all `Constant` rows.
  Iterable<int> get constants =>
      Iterable.generate(this[MetadataTable.constant].rows);

  /// Enumerates all `CustomAttribute` rows.
  Iterable<int> get customAttributes =>
      Iterable.generate(this[MetadataTable.customAttribute].rows);

  /// Enumerates all `Field` rows.
  Iterable<int> get fields => Iterable.generate(this[MetadataTable.field].rows);

  /// Enumerates all `FieldLayout` rows.
  Iterable<int> get fieldLayouts =>
      Iterable.generate(this[MetadataTable.fieldLayout].rows);

  /// Enumerates all `GenericParam` rows.
  Iterable<int> get genericParams =>
      Iterable.generate(this[MetadataTable.genericParam].rows);

  /// Enumerates all `GenericParamConstraint` rows.
  Iterable<int> get genericParamConstraints =>
      Iterable.generate(this[MetadataTable.genericParamConstraint].rows);

  /// Enumerates all `ImplMap` rows.
  Iterable<int> get implMaps =>
      Iterable.generate(this[MetadataTable.implMap].rows);

  /// Enumerates all `InterfaceImpl` rows.
  Iterable<int> get interfaceImpls =>
      Iterable.generate(this[MetadataTable.interfaceImpl].rows);

  /// Enumerates all `MemberRef` rows.
  Iterable<int> get memberRefs =>
      Iterable.generate(this[MetadataTable.memberRef].rows);

  /// Enumerates all `MethodDef` rows.
  Iterable<int> get methodDefs =>
      Iterable.generate(this[MetadataTable.methodDef].rows);

  /// Enumerates all `Module` rows.
  Iterable<int> get modules =>
      Iterable.generate(this[MetadataTable.module].rows);

  /// Enumerates all `ModuleRef` rows.
  Iterable<int> get moduleRefs =>
      Iterable.generate(this[MetadataTable.moduleRef].rows);

  /// Enumerates all `NestedClass` rows.
  Iterable<int> get nestedClasses =>
      Iterable.generate(this[MetadataTable.nestedClass].rows);

  /// Enumerates all `Param` rows.
  Iterable<int> get params => Iterable.generate(this[MetadataTable.param].rows);

  /// Enumerates all `TypeDef` rows.
  Iterable<int> get typeDefs =>
      Iterable.generate(this[MetadataTable.typeDef].rows);

  /// Enumerates all `TypeRef` rows.
  Iterable<int> get typeRefs =>
      Iterable.generate(this[MetadataTable.typeRef].rows);

  /// Enumerates all `TypeSpec` rows.
  Iterable<int> get typeSpecs =>
      Iterable.generate(this[MetadataTable.typeSpec].rows);
}
