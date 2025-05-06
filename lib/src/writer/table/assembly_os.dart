import 'dart:typed_data';

import 'package:meta/meta.dart';

import '../../common.dart';
import '../helpers.dart';
import '../row.dart';
import '../table_stream.dart';

/// Represents a row in the `AssemblyOS` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.3`.
///
/// The `AssemblyOS` table has the following columns:
///  - **OSPlatformID** (4-byte value)
///  - **OSMajorVersion** (4-byte value)
///  - **OSMinorVersion** (4-byte value)
final class AssemblyOS implements Row {
  const AssemblyOS({
    this.osPlatformId = 0,
    this.osMajorVersion = 0,
    this.osMinorVersion = 0,
  });

  final int osPlatformId;
  final int osMajorVersion;
  final int osMinorVersion;

  @override
  void serialize(BytesBuilder buffer, TableStream stream) {
    buffer
      ..writeUint32(osPlatformId)
      ..writeUint32(osMajorVersion)
      ..writeUint32(osMinorVersion);
  }
}

@internal
final class AssemblyOSCompanion extends RowCompanion<AssemblyOS> {
  const AssemblyOSCompanion();

  @override
  MetadataTableId get tableId => MetadataTableId.assemblyOS;
}
