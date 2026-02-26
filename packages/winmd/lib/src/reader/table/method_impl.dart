import 'package:meta/meta.dart';

import '../../common.dart';
import '../codes.dart';
import '../metadata_index.dart';
import '../metadata_table.dart';
import '../row.dart';
import 'type_def.dart';

/// Represents a row in the `MethodImpl` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.27`.
///
/// The `MethodImpl` table has the following columns:
///  - **Class** (TypeDef Table Index)
///  - **MethodBody** (MethodDefOrRef Coded Index)
///  - **MethodDeclaration** (MethodDefOrRef Coded Index)
final class MethodImpl extends Row {
  MethodImpl(super.metadataIndex, super.readerIndex, super.index);

  @override
  MetadataTable get table => MetadataTable.methodImpl;

  @override
  int get token => (MetadataTableId.methodImpl << 24) | index;

  /// The [TypeDef] that contains the method implementation.
  late final TypeDef class$ = readRow<TypeDef>(0);

  /// The method body, which could either be a method definition or a reference
  /// to a method.
  late final MethodDefOrRef methodBody = decode<MethodDefOrRef>(1);

  /// The method declaration, referring to the method's signature and metadata.
  late final MethodDefOrRef methodDeclaration = decode<MethodDefOrRef>(2);

  @override
  String toString() =>
      'MethodImpl('
      'class\$: ${class$}, '
      'methodBody: $methodBody, '
      'methodDeclaration: $methodDeclaration)';
}

@internal
final class MethodImplCompanion extends RowCompanion<MethodImpl> {
  const MethodImplCompanion();

  @override
  MethodImpl Function(MetadataIndex, int, int) get constructor =>
      MethodImpl.new;

  @override
  MetadataTable get table => MetadataTable.methodImpl;
}
