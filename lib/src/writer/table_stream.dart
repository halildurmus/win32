import 'dart:collection';
import 'dart:typed_data';

import '../common.dart';
import 'coded_index_sizes.dart';
import 'helpers.dart';
import 'row.dart';
import 'table.dart';
import 'table/assembly.dart';
import 'table/assembly_os.dart';
import 'table/assembly_processor.dart';
import 'table/assembly_ref.dart';
import 'table/assembly_ref_os.dart';
import 'table/assembly_ref_processor.dart';
import 'table/class_layout.dart';
import 'table/constant.dart';
import 'table/custom_attribute.dart';
import 'table/decl_security.dart';
import 'table/event.dart';
import 'table/event_map.dart';
import 'table/exported_type.dart';
import 'table/field.dart';
import 'table/field_layout.dart';
import 'table/field_marshal.dart';
import 'table/field_rva.dart';
import 'table/file.dart';
import 'table/generic_param.dart';
import 'table/generic_param_constraint.dart';
import 'table/impl_map.dart';
import 'table/interface_impl.dart';
import 'table/manifest_resource.dart';
import 'table/member_ref.dart';
import 'table/method_def.dart';
import 'table/method_impl.dart';
import 'table/method_semantics.dart';
import 'table/method_spec.dart';
import 'table/module.dart';
import 'table/module_ref.dart';
import 'table/nested_class.dart';
import 'table/param.dart';
import 'table/property.dart';
import 'table/property_map.dart';
import 'table/stand_alone_sig.dart';
import 'table/type_def.dart';
import 'table/type_ref.dart';
import 'table/type_spec.dart';

/// Represents the `#~` metadata stream as specified in ECMA-335 `§II.24.2.6`.
final class TableStream {
  /// Creates an empty [TableStream].
  ///
  /// Initializes all tables up front to ensure a consistent, non-growable map
  /// of known tables.
  TableStream()
    : tables = UnmodifiableMapView({
        MetadataTableId.module: Table<Module>(),
        MetadataTableId.typeRef: Table<TypeRef>(),
        MetadataTableId.typeDef: Table<TypeDef>(),
        MetadataTableId.field: Table<Field>(),
        MetadataTableId.methodDef: Table<MethodDef>(),
        MetadataTableId.param: Table<Param>(),
        MetadataTableId.interfaceImpl: Table<InterfaceImpl>(),
        MetadataTableId.memberRef: Table<MemberRef>(),
        MetadataTableId.constant: Table<Constant>(),
        MetadataTableId.customAttribute: Table<CustomAttribute>(),
        MetadataTableId.fieldMarshal: Table<FieldMarshal>(),
        MetadataTableId.declSecurity: Table<DeclSecurity>(),
        MetadataTableId.classLayout: Table<ClassLayout>(),
        MetadataTableId.fieldLayout: Table<FieldLayout>(),
        MetadataTableId.standAloneSig: Table<StandAloneSig>(),
        MetadataTableId.eventMap: Table<EventMap>(),
        MetadataTableId.event: Table<Event>(),
        MetadataTableId.propertyMap: Table<PropertyMap>(),
        MetadataTableId.property: Table<Property>(),
        MetadataTableId.methodSemantics: Table<MethodSemantics>(),
        MetadataTableId.methodImpl: Table<MethodImpl>(),
        MetadataTableId.moduleRef: Table<ModuleRef>(),
        MetadataTableId.typeSpec: Table<TypeSpec>(),
        MetadataTableId.implMap: Table<ImplMap>(),
        MetadataTableId.fieldRVA: Table<FieldRVA>(),
        MetadataTableId.assembly: Table<Assembly>(),
        MetadataTableId.assemblyProcessor: Table<AssemblyProcessor>(),
        MetadataTableId.assemblyOS: Table<AssemblyOS>(),
        MetadataTableId.assemblyRef: Table<AssemblyRef>(),
        MetadataTableId.assemblyRefProcessor: Table<AssemblyRefProcessor>(),
        MetadataTableId.assemblyRefOS: Table<AssemblyRefOS>(),
        MetadataTableId.file: Table<File>(),
        MetadataTableId.exportedType: Table<ExportedType>(),
        MetadataTableId.manifestResource: Table<ManifestResource>(),
        MetadataTableId.nestedClass: Table<NestedClass>(),
        MetadataTableId.genericParam: Table<GenericParam>(),
        MetadataTableId.methodSpec: Table<MethodSpec>(),
        MetadataTableId.genericParamConstraint: Table<GenericParamConstraint>(),
      });

  /// The tables contained within this stream.
  final Map<MetadataTableId, Table> tables;

  /// Returns the [Table] associated with the given [MetadataTableId].
  @pragma('vm:prefer-inline')
  Table operator [](MetadataTableId table) => tables[table]!;

  /// Returns the [Table] associated with the type specified by [T].
  @pragma('vm:prefer-inline')
  Table<T> get<T extends Row>() {
    final companion = Row.companion<T>();
    return tables[companion.tableId]! as Table<T>;
  }

  /// The sizes of the coded indexes used in this stream.
  late final codedIndexSizes = CodedIndexSizes(this);

  /// Size of the `#Blob` heap in bytes.
  late final int blobHeapSize;

  /// Size of the `#GUID` heap in bytes.
  late final int guidHeapSize;

  /// Size of the `#Strings` heap in bytes.
  late final int stringHeapSize;

  /// Size of the `#US` heap in bytes.
  late final int userStringHeapSize;

  /// Sets the sizes of the heaps used for index calculation.
  ///
  /// These values determine whether 2- or 4-byte indexes are used for each
  /// heap.
  void setHeapSizes({
    required int blobHeapSize,
    required int guidHeapSize,
    required int stringHeapSize,
    required int userStringHeapSize,
  }) {
    this.blobHeapSize = blobHeapSize;
    this.guidHeapSize = guidHeapSize;
    this.stringHeapSize = stringHeapSize;
    this.userStringHeapSize = userStringHeapSize;
  }

  /// Serializes the metadata tables to a `#~` stream.
  Uint8List toBytes() {
    // Determine the tables with non-empty rows for serialization.
    final presentTables = tables.entries.where((e) => e.value.isNotEmpty);

    int calculateHeapSizesBitmask() =>
        (stringHeapSize < 0x10000 ? 0 : 1) |
        (guidHeapSize < 0x10000 ? 0 : 2) |
        (blobHeapSize < 0x10000 ? 0 : 4);

    int calculateValidTablesBitmask() {
      var bitmask = 0;
      for (final MapEntry(key: tableId) in presentTables) {
        bitmask |= 1 << tableId;
      }
      return bitmask;
    }

    int calculateSortedTablesBitmask() {
      var bitmask = 0;
      for (final MapEntry(key: tableId) in presentTables) {
        if (_tablesRequiringPrimaryKeySort.contains(tableId)) {
          bitmask |= 1 << tableId;
        }
      }
      return bitmask;
    }

    final buffer = BytesBuilder(copy: false)
      // Write the header.
      ..writeUint32(0) // Reserved, always 0
      ..addByte(2) // MajorVersion, shall be 2
      ..addByte(0) // MinorVersion, shall be 0
      ..addByte(calculateHeapSizesBitmask()) // HeapSizes
      ..addByte(1) // Reserved, always 1
      ..writeUint64(calculateValidTablesBitmask()) // Valid
      ..writeUint64(calculateSortedTablesBitmask()); // Sorted

    // Write row counts.
    for (final MapEntry(value: table) in presentTables) {
      buffer.writeUint32(table.length);
    }

    // Write rows.
    for (final MapEntry(value: table) in presentTables) {
      table.serialize(buffer, this);
    }

    return buffer.takeBytes().toBytesPadded();
  }

  /// The tables that are required to be sorted by a primary key before
  /// serialization as specified in ECMA-335 `§II.22`.
  static const Set<MetadataTableId> _tablesRequiringPrimaryKeySort = {
    // |---------------------------------------|--------------------|
    // |                Table                  | Primary Key Column |
    // |---------------------------------------|--------------------|
    MetadataTableId.classLayout, //            | Parent             |
    MetadataTableId.constant, //               | Parent             |
    MetadataTableId.customAttribute, //        | Parent             |
    MetadataTableId.declSecurity, //           | Parent             |
    MetadataTableId.fieldLayout, //            | Field              |
    MetadataTableId.fieldMarshal, //           | Parent             |
    MetadataTableId.fieldRVA, //               | Field              |
    MetadataTableId.genericParam, //           | Owner              |
    MetadataTableId.genericParamConstraint, // | Owner              |
    MetadataTableId.implMap, //                | MemberForwarded    |
    MetadataTableId.interfaceImpl, //          | Class              |
    MetadataTableId.methodImpl, //             | Class              |
    MetadataTableId.methodSemantics, //        | Association        |
    MetadataTableId.nestedClass, //            | NestedClass        |
    // |---------------------------------------|--------------------|
  };
}
