import 'package:meta/meta.dart';

import '../../common.dart';
import '../metadata_index.dart';
import '../metadata_table.dart';
import '../row.dart';
import 'assembly_ref.dart';

/// Represents a row in the `AssemblyRefOS` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.6`.
///
/// The `AssemblyRefOS` table has the following columns:
///  - **OSPlatformID** (4-byte value)
///  - **OSMajorVersion** (4-byte value)
///  - **OSMinorVersion** (4-byte value)
///  - **AssemblyRef** (AssemblyRef Table Index)
final class AssemblyRefOS extends Row {
  AssemblyRefOS(super.metadataIndex, super.readerIndex, super.index);

  @override
  MetadataTable get table => MetadataTable.assemblyRefOS;

  @override
  int get token => (MetadataTableId.assemblyRefOS << 24) | index;

  /// Always returns zero, per ECMA-335 `§II.22.6`.
  int get osPlatformId => 0;

  /// Always returns zero, per ECMA-335 `§II.22.6`.
  int get osMajorVersion => 0;

  /// Always returns zero, per ECMA-335 `§II.22.6`.
  int get osMinorVersion => 0;

  /// Always returns null, per ECMA-335 `§II.22.6`.
  AssemblyRef? get assemblyRef => null;

  @override
  String toString() =>
      'AssemblyRefOS(osPlatformId: $osPlatformId, '
      'osMajorVersion: $osMajorVersion, osMinorVersion: $osMinorVersion, '
      'assemblyRef: $assemblyRef)';
}

@internal
final class AssemblyRefOSCompanion extends RowCompanion<AssemblyRefOS> {
  const AssemblyRefOSCompanion();

  @override
  AssemblyRefOS Function(MetadataIndex, int, int) get constructor =>
      AssemblyRefOS.new;

  @override
  MetadataTable get table => MetadataTable.assemblyRefOS;
}
