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

  /// Enumerates all `Assembly` rows.
  Iterable<int> get assembly =>
      Iterable.generate(this[MetadataTable.assembly].rows);

  /// Enumerates all `AssemblyOS` rows.
  Iterable<int> get assemblyOS =>
      Iterable.generate(this[MetadataTable.assemblyOS].rows);

  /// Enumerates all `AssemblyProcessor` rows.
  Iterable<int> get assemblyProcessor =>
      Iterable.generate(this[MetadataTable.assemblyProcessor].rows);

  /// Enumerates all `AssemblyRef` rows.
  Iterable<int> get assemblyRef =>
      Iterable.generate(this[MetadataTable.assemblyRef].rows);

  /// Enumerates all `AssemblyRefOS` rows.
  Iterable<int> get assemblyRefOS =>
      Iterable.generate(this[MetadataTable.assemblyRefOS].rows);

  /// Enumerates all `AssemblyRefProcessor` rows.
  Iterable<int> get assemblyRefProcessor =>
      Iterable.generate(this[MetadataTable.assemblyRefProcessor].rows);

  /// Enumerates all `ClassLayout` rows.
  Iterable<int> get classLayout =>
      Iterable.generate(this[MetadataTable.classLayout].rows);

  /// Enumerates all `Constant` rows.
  Iterable<int> get constant =>
      Iterable.generate(this[MetadataTable.constant].rows);

  /// Enumerates all `CustomAttribute` rows.
  Iterable<int> get customAttribute =>
      Iterable.generate(this[MetadataTable.customAttribute].rows);

  /// Enumerates all `DeclSecurity` rows.
  Iterable<int> get declSecurity =>
      Iterable.generate(this[MetadataTable.declSecurity].rows);

  /// Enumerates all `Event` rows.
  Iterable<int> get event => Iterable.generate(this[MetadataTable.event].rows);

  /// Enumerates all `EventMap` rows.
  Iterable<int> get eventMap =>
      Iterable.generate(this[MetadataTable.eventMap].rows);

  /// Enumerates all `ExportedType` rows.
  Iterable<int> get exportedType =>
      Iterable.generate(this[MetadataTable.exportedType].rows);

  /// Enumerates all `Field` rows.
  Iterable<int> get field => Iterable.generate(this[MetadataTable.field].rows);

  /// Enumerates all `FieldLayout` rows.
  Iterable<int> get fieldLayout =>
      Iterable.generate(this[MetadataTable.fieldLayout].rows);

  /// Enumerates all `FieldMarshal` rows.
  Iterable<int> get fieldMarshal =>
      Iterable.generate(this[MetadataTable.fieldMarshal].rows);

  /// Enumerates all `FieldRVA` rows.
  Iterable<int> get fieldRVA =>
      Iterable.generate(this[MetadataTable.fieldRVA].rows);

  /// Enumerates all `File` rows.
  Iterable<int> get file => Iterable.generate(this[MetadataTable.file].rows);

  /// Enumerates all `GenericParam` rows.
  Iterable<int> get genericParam =>
      Iterable.generate(this[MetadataTable.genericParam].rows);

  /// Enumerates all `GenericParamConstraint` rows.
  Iterable<int> get genericParamConstraint =>
      Iterable.generate(this[MetadataTable.genericParamConstraint].rows);

  /// Enumerates all `ImplMap` rows.
  Iterable<int> get implMap =>
      Iterable.generate(this[MetadataTable.implMap].rows);

  /// Enumerates all `InterfaceImpl` rows.
  Iterable<int> get interfaceImpl =>
      Iterable.generate(this[MetadataTable.interfaceImpl].rows);

  /// Enumerates all `ManifestResource` rows.
  Iterable<int> get manifestResource =>
      Iterable.generate(this[MetadataTable.manifestResource].rows);

  /// Enumerates all `MemberRef` rows.
  Iterable<int> get memberRef =>
      Iterable.generate(this[MetadataTable.memberRef].rows);

  /// Enumerates all `MethodDef` rows.
  Iterable<int> get methodDef =>
      Iterable.generate(this[MetadataTable.methodDef].rows);

  /// Enumerates all `MethodImpl` rows.
  Iterable<int> get methodImpl =>
      Iterable.generate(this[MetadataTable.methodImpl].rows);

  /// Enumerates all `MethodSemantics` rows.
  Iterable<int> get methodSemantics =>
      Iterable.generate(this[MetadataTable.methodSemantics].rows);

  /// Enumerates all `MethodSpec` rows.
  Iterable<int> get methodSpec =>
      Iterable.generate(this[MetadataTable.methodSpec].rows);

  /// Enumerates all `Module` rows.
  Iterable<int> get module =>
      Iterable.generate(this[MetadataTable.module].rows);

  /// Enumerates all `ModuleRef` rows.
  Iterable<int> get moduleRef =>
      Iterable.generate(this[MetadataTable.moduleRef].rows);

  /// Enumerates all `NestedClass` rows.
  Iterable<int> get nestedClass =>
      Iterable.generate(this[MetadataTable.nestedClass].rows);

  /// Enumerates all `Param` rows.
  Iterable<int> get param => Iterable.generate(this[MetadataTable.param].rows);

  /// Enumerates all `Property` rows.
  Iterable<int> get property =>
      Iterable.generate(this[MetadataTable.property].rows);

  /// Enumerates all `PropertyMap` rows.
  Iterable<int> get propertyMap =>
      Iterable.generate(this[MetadataTable.propertyMap].rows);

  /// Enumerates all `StandAloneSig` rows.
  Iterable<int> get standAloneSig =>
      Iterable.generate(this[MetadataTable.standAloneSig].rows);

  /// Enumerates all `TypeDef` rows.
  Iterable<int> get typeDef =>
      Iterable.generate(this[MetadataTable.typeDef].rows);

  /// Enumerates all `TypeRef` rows.
  Iterable<int> get typeRef =>
      Iterable.generate(this[MetadataTable.typeRef].rows);

  /// Enumerates all `TypeSpec` rows.
  Iterable<int> get typeSpec =>
      Iterable.generate(this[MetadataTable.typeSpec].rows);
}
