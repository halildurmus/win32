import '../common.dart';
import 'table_stream.dart';

/// Computes coded index sizes for metadata tables as per ECMA-335 `§II.24.2.6`.
final class CodedIndexSizes {
  /// Creates a new [CodedIndexSizes] instance for the given [tableStream].
  CodedIndexSizes(TableStream tableStream)
    : customAttributeType = codedIndexSize([
        0,
        tableStream[MetadataTableId.methodDef].length,
        tableStream[MetadataTableId.memberRef].length,
        0,
        0,
      ]),
      hasConstant = codedIndexSize([
        tableStream[MetadataTableId.field].length,
        tableStream[MetadataTableId.param].length,
        tableStream[MetadataTableId.property].length,
      ]),
      hasCustomAttribute = codedIndexSize([
        tableStream[MetadataTableId.methodDef].length,
        tableStream[MetadataTableId.field].length,
        tableStream[MetadataTableId.typeRef].length,
        tableStream[MetadataTableId.typeDef].length,
        tableStream[MetadataTableId.param].length,
        tableStream[MetadataTableId.interfaceImpl].length,
        tableStream[MetadataTableId.memberRef].length,
        tableStream[MetadataTableId.module].length,
        tableStream[MetadataTableId.property].length,
        tableStream[MetadataTableId.event].length,
        tableStream[MetadataTableId.standAloneSig].length,
        tableStream[MetadataTableId.moduleRef].length,
        tableStream[MetadataTableId.typeSpec].length,
        tableStream[MetadataTableId.assembly].length,
        tableStream[MetadataTableId.assemblyRef].length,
        tableStream[MetadataTableId.file].length,
        tableStream[MetadataTableId.exportedType].length,
        tableStream[MetadataTableId.manifestResource].length,
        tableStream[MetadataTableId.genericParam].length,
        tableStream[MetadataTableId.genericParamConstraint].length,
        tableStream[MetadataTableId.methodSpec].length,
      ]),
      hasDeclSecurity = codedIndexSize([
        tableStream[MetadataTableId.typeDef].length,
        tableStream[MetadataTableId.methodDef].length,
        tableStream[MetadataTableId.assembly].length,
      ]),
      hasFieldMarshal = codedIndexSize([
        tableStream[MetadataTableId.field].length,
        tableStream[MetadataTableId.param].length,
      ]),
      hasSemantics = codedIndexSize([
        tableStream[MetadataTableId.event].length,
        tableStream[MetadataTableId.property].length,
      ]),
      implementation = codedIndexSize([
        tableStream[MetadataTableId.file].length,
        tableStream[MetadataTableId.assemblyRef].length,
        tableStream[MetadataTableId.exportedType].length,
      ]),
      memberForwarded = codedIndexSize([
        tableStream[MetadataTableId.field].length,
        tableStream[MetadataTableId.methodDef].length,
      ]),
      memberRefParent = codedIndexSize([
        tableStream[MetadataTableId.typeDef].length,
        tableStream[MetadataTableId.typeRef].length,
        tableStream[MetadataTableId.moduleRef].length,
        tableStream[MetadataTableId.methodDef].length,
        tableStream[MetadataTableId.typeSpec].length,
      ]),
      methodDefOrRef = codedIndexSize([
        tableStream[MetadataTableId.methodDef].length,
        tableStream[MetadataTableId.memberRef].length,
      ]),
      resolutionScope = codedIndexSize([
        tableStream[MetadataTableId.module].length,
        tableStream[MetadataTableId.moduleRef].length,
        tableStream[MetadataTableId.assemblyRef].length,
        tableStream[MetadataTableId.typeRef].length,
      ]),
      typeDefOrRef = codedIndexSize([
        tableStream[MetadataTableId.typeDef].length,
        tableStream[MetadataTableId.typeRef].length,
        tableStream[MetadataTableId.typeSpec].length,
      ]),
      typeOrMethodDef = codedIndexSize([
        tableStream[MetadataTableId.typeDef].length,
        tableStream[MetadataTableId.methodDef].length,
      ]);

  /// The size of the `CustomAttributeType` coded index.
  final int customAttributeType;

  /// The size of the `HasConstant` coded index.
  final int hasConstant;

  /// The size of the `HasCustomAttribute` coded index.
  final int hasCustomAttribute;

  /// The size of the `HasDeclSecurity` coded index.
  final int hasDeclSecurity;

  /// The size of the `HasFieldMarshal` coded index.
  final int hasFieldMarshal;

  /// The size of the `HasSemantics` coded index.
  final int hasSemantics;

  /// The size of the `Implementation` coded index.
  final int implementation;

  /// The size of the `MemberForwarded` coded index.
  final int memberForwarded;

  /// The size of the `MemberRefParent` coded index.
  final int memberRefParent;

  /// The size of the `MethodDefOrRef` coded index.
  final int methodDefOrRef;

  /// The size of the `ResolutionScope` coded index.
  final int resolutionScope;

  /// The size of the `TypeDefOrRef` coded index.
  final int typeDefOrRef;

  /// The size of the `TypeOrMethodDef` coded index.
  final int typeOrMethodDef;
}
