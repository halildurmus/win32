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
          (_) => .empty(),
          growable: false,
        ),
      );

  /// The list of tables contained within this stream.
  final List<TableData> tables;

  /// Returns the [TableData] associated with the given [MetadataTable].
  @pragma('vm:prefer-inline')
  TableData operator [](MetadataTable table) => tables[table.index];

  /// Enumerates all `Assembly` rows.
  Iterable<int> get assembly => .generate(this[.assembly].rows);

  /// Enumerates all `AssemblyOS` rows.
  Iterable<int> get assemblyOS => .generate(this[.assemblyOS].rows);

  /// Enumerates all `AssemblyProcessor` rows.
  Iterable<int> get assemblyProcessor =>
      .generate(this[.assemblyProcessor].rows);

  /// Enumerates all `AssemblyRef` rows.
  Iterable<int> get assemblyRef => .generate(this[.assemblyRef].rows);

  /// Enumerates all `AssemblyRefOS` rows.
  Iterable<int> get assemblyRefOS => .generate(this[.assemblyRefOS].rows);

  /// Enumerates all `AssemblyRefProcessor` rows.
  Iterable<int> get assemblyRefProcessor =>
      .generate(this[.assemblyRefProcessor].rows);

  /// Enumerates all `ClassLayout` rows.
  Iterable<int> get classLayout => .generate(this[.classLayout].rows);

  /// Enumerates all `Constant` rows.
  Iterable<int> get constant => .generate(this[.constant].rows);

  /// Enumerates all `CustomAttribute` rows.
  Iterable<int> get customAttribute => .generate(this[.customAttribute].rows);

  /// Enumerates all `DeclSecurity` rows.
  Iterable<int> get declSecurity => .generate(this[.declSecurity].rows);

  /// Enumerates all `Event` rows.
  Iterable<int> get event => .generate(this[.event].rows);

  /// Enumerates all `EventMap` rows.
  Iterable<int> get eventMap => .generate(this[.eventMap].rows);

  /// Enumerates all `ExportedType` rows.
  Iterable<int> get exportedType => .generate(this[.exportedType].rows);

  /// Enumerates all `Field` rows.
  Iterable<int> get field => .generate(this[.field].rows);

  /// Enumerates all `FieldLayout` rows.
  Iterable<int> get fieldLayout => .generate(this[.fieldLayout].rows);

  /// Enumerates all `FieldMarshal` rows.
  Iterable<int> get fieldMarshal => .generate(this[.fieldMarshal].rows);

  /// Enumerates all `FieldRVA` rows.
  Iterable<int> get fieldRVA => .generate(this[.fieldRVA].rows);

  /// Enumerates all `File` rows.
  Iterable<int> get file => .generate(this[.file].rows);

  /// Enumerates all `GenericParam` rows.
  Iterable<int> get genericParam => .generate(this[.genericParam].rows);

  /// Enumerates all `GenericParamConstraint` rows.
  Iterable<int> get genericParamConstraint =>
      .generate(this[.genericParamConstraint].rows);

  /// Enumerates all `ImplMap` rows.
  Iterable<int> get implMap => .generate(this[.implMap].rows);

  /// Enumerates all `InterfaceImpl` rows.
  Iterable<int> get interfaceImpl => .generate(this[.interfaceImpl].rows);

  /// Enumerates all `ManifestResource` rows.
  Iterable<int> get manifestResource => .generate(this[.manifestResource].rows);

  /// Enumerates all `MemberRef` rows.
  Iterable<int> get memberRef => .generate(this[.memberRef].rows);

  /// Enumerates all `MethodDef` rows.
  Iterable<int> get methodDef => .generate(this[.methodDef].rows);

  /// Enumerates all `MethodImpl` rows.
  Iterable<int> get methodImpl => .generate(this[.methodImpl].rows);

  /// Enumerates all `MethodSemantics` rows.
  Iterable<int> get methodSemantics => .generate(this[.methodSemantics].rows);

  /// Enumerates all `MethodSpec` rows.
  Iterable<int> get methodSpec => .generate(this[.methodSpec].rows);

  /// Enumerates all `Module` rows.
  Iterable<int> get module => .generate(this[.module].rows);

  /// Enumerates all `ModuleRef` rows.
  Iterable<int> get moduleRef => .generate(this[.moduleRef].rows);

  /// Enumerates all `NestedClass` rows.
  Iterable<int> get nestedClass => .generate(this[.nestedClass].rows);

  /// Enumerates all `Param` rows.
  Iterable<int> get param => .generate(this[.param].rows);

  /// Enumerates all `Property` rows.
  Iterable<int> get property => .generate(this[.property].rows);

  /// Enumerates all `PropertyMap` rows.
  Iterable<int> get propertyMap => .generate(this[.propertyMap].rows);

  /// Enumerates all `StandAloneSig` rows.
  Iterable<int> get standAloneSig => .generate(this[.standAloneSig].rows);

  /// Enumerates all `TypeDef` rows.
  Iterable<int> get typeDef => .generate(this[.typeDef].rows);

  /// Enumerates all `TypeRef` rows.
  Iterable<int> get typeRef => .generate(this[.typeRef].rows);

  /// Enumerates all `TypeSpec` rows.
  Iterable<int> get typeSpec => .generate(this[.typeSpec].rows);
}
