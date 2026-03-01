import '../common.dart';
import 'table_stream.dart';

/// Computes coded index sizes for metadata tables as per ECMA-335 `§II.24.2.6`.
final class CodedIndexSizes {
  /// Creates a new [CodedIndexSizes] instance for the given [tableStream].
  CodedIndexSizes(TableStream tableStream)
    : customAttributeType = codedIndexSize([
        0,
        tableStream[.methodDef].length,
        tableStream[.memberRef].length,
        0,
        0,
      ]),
      hasConstant = codedIndexSize([
        tableStream[.field].length,
        tableStream[.param].length,
        tableStream[.property].length,
      ]),
      hasCustomAttribute = codedIndexSize([
        tableStream[.methodDef].length,
        tableStream[.field].length,
        tableStream[.typeRef].length,
        tableStream[.typeDef].length,
        tableStream[.param].length,
        tableStream[.interfaceImpl].length,
        tableStream[.memberRef].length,
        tableStream[.module].length,
        tableStream[.property].length,
        tableStream[.event].length,
        tableStream[.standAloneSig].length,
        tableStream[.moduleRef].length,
        tableStream[.typeSpec].length,
        tableStream[.assembly].length,
        tableStream[.assemblyRef].length,
        tableStream[.file].length,
        tableStream[.exportedType].length,
        tableStream[.manifestResource].length,
        tableStream[.genericParam].length,
        tableStream[.genericParamConstraint].length,
        tableStream[.methodSpec].length,
      ]),
      hasDeclSecurity = codedIndexSize([
        tableStream[.typeDef].length,
        tableStream[.methodDef].length,
        tableStream[.assembly].length,
      ]),
      hasFieldMarshal = codedIndexSize([
        tableStream[.field].length,
        tableStream[.param].length,
      ]),
      hasSemantics = codedIndexSize([
        tableStream[.event].length,
        tableStream[.property].length,
      ]),
      implementation = codedIndexSize([
        tableStream[.file].length,
        tableStream[.assemblyRef].length,
        tableStream[.exportedType].length,
      ]),
      memberForwarded = codedIndexSize([
        tableStream[.field].length,
        tableStream[.methodDef].length,
      ]),
      memberRefParent = codedIndexSize([
        tableStream[.typeDef].length,
        tableStream[.typeRef].length,
        tableStream[.moduleRef].length,
        tableStream[.methodDef].length,
        tableStream[.typeSpec].length,
      ]),
      methodDefOrRef = codedIndexSize([
        tableStream[.methodDef].length,
        tableStream[.memberRef].length,
      ]),
      resolutionScope = codedIndexSize([
        tableStream[.module].length,
        tableStream[.moduleRef].length,
        tableStream[.assemblyRef].length,
        tableStream[.typeRef].length,
      ]),
      typeDefOrRef = codedIndexSize([
        tableStream[.typeDef].length,
        tableStream[.typeRef].length,
        tableStream[.typeSpec].length,
      ]),
      typeOrMethodDef = codedIndexSize([
        tableStream[.typeDef].length,
        tableStream[.methodDef].length,
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
