import 'dart:typed_data';

import 'package:meta/meta.dart';

import '../../common.dart';
import '../helpers.dart';
import '../row.dart';
import '../table_stream.dart';
import 'index.dart';

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
final class AssemblyRefOS implements Row {
  const AssemblyRefOS({
    required this.assemblyRef,
    this.osPlatformId = 0,
    this.osMajorVersion = 0,
    this.osMinorVersion = 0,
  });

  final int osPlatformId;
  final int osMajorVersion;
  final int osMinorVersion;
  final AssemblyRefIndex assemblyRef;

  @override
  void serialize(BytesBuilder buffer, TableStream stream) {
    buffer
      ..writeUint32(osPlatformId)
      ..writeUint32(osMajorVersion)
      ..writeUint32(osMinorVersion)
      ..writeTableIndex(assemblyRef, stream);
  }
}

@internal
final class AssemblyRefOSCompanion extends RowCompanion<AssemblyRefOS> {
  const AssemblyRefOSCompanion();

  @override
  MetadataTableId get tableId => MetadataTableId.assemblyRefOS;
}
