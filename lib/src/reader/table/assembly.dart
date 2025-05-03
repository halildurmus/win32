import 'package:meta/meta.dart';

import '../../attributes.dart';
import '../../culture.dart';
import '../blob.dart';
import '../has_custom_attributes.dart';
import '../metadata_index.dart';
import '../metadata_table.dart';
import '../row.dart';

/// Represents a row in the `Assembly` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.2`.
///
/// The `Assembly` table has the following columns:
///  - **HashAlgId** (4-byte value, AssemblyHashAlgorithm)
///  - **MajorVersion** (2-byte value)
///  - **MinorVersion** (2-byte value)
///  - **BuildNumber** (2-byte value)
///  - **RevisionNumber** (2-byte value)
///  - **Flags** (4-byte value, AssemblyFlags)
///  - **PublicKey** (Blob Heap Index)
///  - **Name** (String Heap Index)
///  - **Culture** (String Heap Index)
final class Assembly extends Row with HasCustomAttributes {
  Assembly(super.metadataIndex, super.readerIndex, super.index);

  @override
  MetadataTable get table => MetadataTable.assembly;

  /// The hash algorithm used to compute the hash value of the assembly.
  late final hashAlgId = AssemblyHashAlgorithm(readUint32(0));

  /// The major version of the assembly.
  late final majorVersion = readUint16(1);

  /// The minor version of the assembly.
  late final minorVersion = readUint16(1, 2);

  /// The build number of the assembly.
  late final buildNumber = readUint16(1, 4);

  /// The revision number of the assembly.
  late final revisionNumber = readUint16(1, 6);

  /// The flags associated with the assembly.
  late final flags = AssemblyFlags(readUint32(2));

  /// The public key identifying the assembly, if available.
  Blob? get publicKey {
    final blob = readBlob(3);
    if (blob.isEmpty) return null;
    return blob;
  }

  /// The name of the assembly.
  late final name = readString(4);

  /// The culture supported by the assembly, if specified.
  late final culture = () {
    final culture = readString(5);
    if (culture.isEmpty) return null;
    return Culture(culture);
  }();

  /// The version of the assembly in `Major.Minor.Build.Revision` format (e.g.,
  /// `4.0.0.0`).
  late final version =
      '$majorVersion.$minorVersion.$buildNumber.$revisionNumber';

  @override
  String toString() =>
      'Assembly(name: $name, version: $version, '
      'hashAlgId: $hashAlgId)';
}

@internal
final class AssemblyCompanion extends RowCompanion<Assembly> {
  const AssemblyCompanion();

  @override
  Assembly Function(MetadataIndex, int, int) get constructor => Assembly.new;

  @override
  MetadataTable get table => MetadataTable.assembly;
}
