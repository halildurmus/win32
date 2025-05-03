import 'package:meta/meta.dart';

import '../metadata_index.dart';
import '../metadata_table.dart';
import '../row.dart';

/// Represents a row in the `AssemblyOS` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.3`.
///
/// The `AssemblyOS` table has the following columns:
///  - **OSPlatformID** (4-byte value)
///  - **OSMajorVersion** (4-byte value)
///  - **OSMinorVersion** (4-byte value)
final class AssemblyOS extends Row {
  AssemblyOS(super.metadataIndex, super.readerIndex, super.index);

  @override
  MetadataTable get table => MetadataTable.assemblyOS;

  /// The identifier of the target operating system platform.
  late final osPlatformId = readUint32(0);

  /// The major version number of the target operating system.
  late final osMajorVersion = readUint32(1);

  /// The minor version number of the target operating system.
  late final osMinorVersion = readUint32(2);

  @override
  String toString() =>
      'AssemblyOS(osPlatformId: $osPlatformId, '
      'osMajorVersion: $osMajorVersion, osMinorVersion: $osMinorVersion)';
}

@internal
final class AssemblyOSCompanion extends RowCompanion<AssemblyOS> {
  const AssemblyOSCompanion();

  @override
  AssemblyOS Function(MetadataIndex, int, int) get constructor =>
      AssemblyOS.new;

  @override
  MetadataTable get table => MetadataTable.assemblyOS;
}
