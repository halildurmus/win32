import 'dart:typed_data';

import 'package:meta/meta.dart';

import '../common.dart';
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
import 'table_stream.dart';

/// An abstract interface representing a serializable row in a metadata table.
abstract interface class Row {
  /// Serializes this row into the provided [buffer], using the given [stream]
  /// to resolve table-specific serialization behavior.
  void serialize(BytesBuilder buffer, TableStream stream);

  /// Retrieves the [RowCompanion] associated with the specified [T].
  @internal
  static RowCompanion<T> companion<T extends Row>() {
    final companion = _companions[T];
    if (companion == null) throw StateError('No companion found for $T.');
    return companion as RowCompanion<T>;
  }
}

@internal
abstract base class RowCompanion<T extends Row> {
  const RowCompanion();

  MetadataTableId get tableId;
}

const _companions = <Type, RowCompanion>{
  Assembly: AssemblyCompanion(),
  AssemblyOS: AssemblyOSCompanion(),
  AssemblyProcessor: AssemblyProcessorCompanion(),
  AssemblyRef: AssemblyRefCompanion(),
  AssemblyRefOS: AssemblyRefOSCompanion(),
  AssemblyRefProcessor: AssemblyRefProcessorCompanion(),
  ClassLayout: ClassLayoutCompanion(),
  Constant: ConstantCompanion(),
  CustomAttribute: CustomAttributeCompanion(),
  DeclSecurity: DeclSecurityCompanion(),
  EventMap: EventMapCompanion(),
  Event: EventCompanion(),
  ExportedType: ExportedTypeCompanion(),
  Field: FieldCompanion(),
  FieldLayout: FieldLayoutCompanion(),
  FieldMarshal: FieldMarshalCompanion(),
  FieldRVA: FieldRVACompanion(),
  File: FileCompanion(),
  GenericParam: GenericParamCompanion(),
  GenericParamConstraint: GenericParamConstraintCompanion(),
  ImplMap: ImplMapCompanion(),
  InterfaceImpl: InterfaceImplCompanion(),
  ManifestResource: ManifestResourceCompanion(),
  MemberRef: MemberRefCompanion(),
  MethodDef: MethodDefCompanion(),
  MethodImpl: MethodImplCompanion(),
  MethodSemantics: MethodSemanticsCompanion(),
  MethodSpec: MethodSpecCompanion(),
  Module: ModuleCompanion(),
  ModuleRef: ModuleRefCompanion(),
  NestedClass: NestedClassCompanion(),
  Param: ParamCompanion(),
  PropertyMap: PropertyMapCompanion(),
  Property: PropertyCompanion(),
  StandAloneSig: StandAloneSigCompanion(),
  TypeDef: TypeDefCompanion(),
  TypeRef: TypeRefCompanion(),
  TypeSpec: TypeSpecCompanion(),
};
