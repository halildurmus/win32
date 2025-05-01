import 'dart:typed_data';

import '../../attributes.dart';
import '../helpers.dart';
import '../index.dart';
import '../table.dart';
import '../table_stream.dart';

/// Represents a row in the `Assembly` metadata table, describing an assembly
/// manifest.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.8`.
///
/// The `Assembly` table has the following columns:
///  - **HashAlgId** (4-byte value)
///  - **MajorVersion** (2-byte value)
///  - **MinorVersion** (2-byte value)
///  - **BuildNumber** (2-byte value)
///  - **RevisionNumber** (2-byte value)
///  - **Flags** (4-byte value, AssemblyFlags)
///  - **PublicKeyOrToken** (Blob Heap Index)
///  - **Name** (String Heap Index)
///  - **Culture** (String Heap Index)
final class Assembly implements Row {
  const Assembly({
    this.hashAlgId = AssemblyHashAlgorithm.none,
    this.majorVersion = 0,
    this.minorVersion = 0,
    this.buildNumber = 0,
    this.revisionNumber = 0,
    this.flags = const AssemblyFlags(0),
    this.publicKey = const BlobIndex(0),
    this.name = const StringIndex(0),
    this.culture = const StringIndex(0),
  });

  final AssemblyHashAlgorithm hashAlgId;
  final int majorVersion;
  final int minorVersion;
  final int buildNumber;
  final int revisionNumber;
  final AssemblyFlags flags;
  final BlobIndex publicKey;
  final StringIndex name;
  final StringIndex culture;

  @override
  void serialize(BytesBuilder buffer, TableStream context) {
    buffer
      ..writeUint32(hashAlgId)
      ..writeUint16(majorVersion)
      ..writeUint16(minorVersion)
      ..writeUint16(buildNumber)
      ..writeUint16(revisionNumber)
      ..writeUint32(flags)
      ..writeHeapIndex(publicKey.index, context.blobHeapSize)
      ..writeHeapIndex(name.index, context.stringHeapSize)
      ..writeHeapIndex(culture.index, context.stringHeapSize);
  }
}
