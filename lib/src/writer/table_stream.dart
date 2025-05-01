import 'dart:typed_data';

import '../common.dart';
import 'helpers.dart';
import 'table.dart';
import 'table/assembly.dart';
import 'table/assembly_ref.dart';
import 'table/class_layout.dart';
import 'table/constant.dart';
import 'table/custom_attribute.dart';
import 'table/field.dart';
import 'table/field_layout.dart';
import 'table/generic_param.dart';
import 'table/impl_map.dart';
import 'table/interface_impl.dart';
import 'table/member_ref.dart';
import 'table/method_def.dart';
import 'table/module.dart';
import 'table/module_ref.dart';
import 'table/nested_class.dart';
import 'table/param.dart';
import 'table/type_def.dart';
import 'table/type_ref.dart';
import 'table/type_spec.dart';

/// Represents the `#~` metadata stream as specified in ECMA-335 `§II.24.2.6`.
final class TableStream {
  /// The `Assembly` table.
  final assembly = Table<Assembly>();

  /// The `AssemblyRef` table.
  final assemblyRef = Table<AssemblyRef>();

  /// The `CustomAttribute` table.
  final customAttribute = Table<CustomAttribute>();

  /// The `ClassLayout` table.
  final classLayout = Table<ClassLayout>();

  /// The `Constant` table.
  final constant = Table<Constant>();

  /// The `Field` table.
  final field = Table<Field>();

  /// The `FieldLayout` table.
  final fieldLayout = Table<FieldLayout>();

  /// The `GenericParam` table.
  final genericParam = Table<GenericParam>();

  /// The `ImplMap` table.
  final implMap = Table<ImplMap>();

  /// The `InterfaceImpl` table.
  final interfaceImpl = Table<InterfaceImpl>();

  /// The `MemberRef` table.
  final memberRef = Table<MemberRef>();

  /// The `MethodDef` table.
  final methodDef = Table<MethodDef>();

  /// The `Module` table.
  final module = Table<ModuleRecord>();

  /// The `ModuleRef` table.
  final moduleRef = Table<ModuleRef>();

  /// The `NestedClass` table.
  final nestedClass = Table<NestedClass>();

  /// The `Param` table.
  final param = Table<Param>();

  /// The `TypeDef` table.
  final typeDef = Table<TypeDef>();

  /// The `TypeRef` table.
  final typeRef = Table<TypeRef>();

  /// The `TypeSpec` table.
  final typeSpec = Table<TypeSpec>();

  /// Size of each coded index for the `ResolutionScope`.
  late final resolutionScope = codedIndexSize([
    module.length,
    moduleRef.length,
    assemblyRef.length,
    typeRef.length,
  ]);

  /// Size of each coded index for the `TypeDefOrRef`.
  late final typeDefOrRef = codedIndexSize([
    typeDef.length,
    typeRef.length,
    typeSpec.length,
  ]);

  /// Size of each coded index for the `HasConstant`.
  late final hasConstant = codedIndexSize([field.length, param.length, 0]);

  /// Size of each coded index for the `TypeOrMethodDef`.
  late final typeOrMethodDef = codedIndexSize([
    typeDef.length,
    methodDef.length,
  ]);

  /// Size of each coded index for the `MemberRefParent`.
  late final memberRefParent = codedIndexSize([
    typeDef.length,
    typeRef.length,
    moduleRef.length,
    methodDef.length,
    typeSpec.length,
  ]);

  /// Size of each coded index for the `CustomAttributeType`.
  late final customAttributeType = codedIndexSize([
    methodDef.length,
    memberRef.length,
    0,
    0,
    0,
  ]);

  /// Size of each coded index for the `HasCustomAttribute`.
  late final hasCustomAttribute = codedIndexSize([
    methodDef.length,
    field.length,
    typeRef.length,
    typeDef.length,
    param.length,
    interfaceImpl.length,
    memberRef.length,
    module.length,
    0,
    0,
    0,
    moduleRef.length,
    typeSpec.length,
    0,
    assemblyRef.length,
    0,
    0,
    0,
    genericParam.length,
    0,
    0,
  ]);

  /// Size of each coded index for the `MemberForwarded`.
  late final memberForwarded = codedIndexSize([field.length, methodDef.length]);

  /// Size of the `#Blob` heap in bytes.
  late final int blobHeapSize;

  /// Size of the `#GUID` heap in bytes.
  late final int guidHeapSize;

  /// Size of the `#Strings` heap in bytes.
  late final int stringHeapSize;

  /// Sets the sizes of the heaps used for index calculation.
  ///
  /// These values determine whether 2- or 4-byte indexes are used for each heap.
  void setHeapSizes({
    required int blobHeapSize,
    required int guidHeapSize,
    required int stringHeapSize,
  }) {
    this.blobHeapSize = blobHeapSize;
    this.guidHeapSize = guidHeapSize;
    this.stringHeapSize = stringHeapSize;
  }

  /// Bitmask indicating the heap sizes.
  int get _heapSizesBitmask =>
      (stringHeapSize < 0x10000 ? 0 : 1) |
      (guidHeapSize < 0x10000 ? 0 : 2) |
      (blobHeapSize < 0x10000 ? 0 : 4);

  /// Serializes the metadata tables to a `#~` stream.
  Uint8List toBytes() {
    final buffer = BytesBuilder()
      // Write the header.
      ..writeUint32(0) // Reserved, always 0
      ..addByte(2) // MajorVersion, shall be 2
      ..addByte(0) // MinorVersion, shall be 0
      ..addByte(_heapSizesBitmask) // HeapSizes
      ..addByte(1) // Reserved, always 1
      ..writeUint64(_validTablesBitmask) // Valid
      ..writeUint64(_sortedTablesBitmask) // Sorted
      // Write row counts (in table order).
      ..writeUint32(module.length)
      ..writeUint32(typeRef.length)
      ..writeUint32(typeDef.length)
      ..writeUint32(field.length)
      ..writeUint32(methodDef.length)
      ..writeUint32(param.length)
      ..writeUint32(interfaceImpl.length)
      ..writeUint32(memberRef.length)
      ..writeUint32(constant.length)
      ..writeUint32(customAttribute.length)
      ..writeUint32(classLayout.length)
      ..writeUint32(fieldLayout.length)
      ..writeUint32(moduleRef.length)
      ..writeUint32(typeSpec.length)
      ..writeUint32(implMap.length)
      ..writeUint32(assembly.length)
      ..writeUint32(assemblyRef.length)
      ..writeUint32(nestedClass.length)
      ..writeUint32(genericParam.length);
    // Write each table’s rows (in the same order as the row counts).
    module.serialize(buffer, this);
    typeRef.serialize(buffer, this);
    typeDef.serialize(buffer, this);
    field.serialize(buffer, this);
    methodDef.serialize(buffer, this);
    param.serialize(buffer, this);
    interfaceImpl.serialize(buffer, this);
    memberRef.serialize(buffer, this);
    constant.serialize(buffer, this);
    customAttribute.serialize(buffer, this);
    classLayout.serialize(buffer, this);
    fieldLayout.serialize(buffer, this);
    moduleRef.serialize(buffer, this);
    typeSpec.serialize(buffer, this);
    implMap.serialize(buffer, this);
    assembly.serialize(buffer, this);
    assemblyRef.serialize(buffer, this);
    nestedClass.serialize(buffer, this);
    genericParam.serialize(buffer, this);
    return buffer.takeBytes().toBytesPadded();
  }

  /// Bitmask indicating which metadata tables are present.
  static const _validTablesBitmask =
      (1 << MetadataTableId.module) |
      (1 << MetadataTableId.typeRef) |
      (1 << MetadataTableId.typeDef) |
      (1 << MetadataTableId.field) |
      (1 << MetadataTableId.methodDef) |
      (1 << MetadataTableId.param) |
      (1 << MetadataTableId.interfaceImpl) |
      (1 << MetadataTableId.memberRef) |
      (1 << MetadataTableId.constant) |
      (1 << MetadataTableId.customAttribute) |
      (1 << MetadataTableId.classLayout) |
      (1 << MetadataTableId.fieldLayout) |
      (1 << MetadataTableId.moduleRef) |
      (1 << MetadataTableId.typeSpec) |
      (1 << MetadataTableId.implMap) |
      (1 << MetadataTableId.assembly) |
      (1 << MetadataTableId.assemblyRef) |
      (1 << MetadataTableId.nestedClass) |
      (1 << MetadataTableId.genericParam);

  /// Bitmask indicating which metadata tables are sorted.
  static const _sortedTablesBitmask =
      (1 << MetadataTableId.classLayout) |
      (1 << MetadataTableId.constant) |
      (1 << MetadataTableId.customAttribute) |
      (1 << MetadataTableId.fieldLayout) |
      (1 << MetadataTableId.genericParam) |
      (1 << MetadataTableId.implMap) |
      (1 << MetadataTableId.nestedClass);
}
