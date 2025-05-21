import 'package:meta/meta.dart';

import '../../attributes.dart';
import '../../common.dart';
import '../blob.dart';
import '../has_custom_attributes.dart';
import '../metadata_index.dart';
import '../metadata_table.dart';
import '../row.dart';

/// Represents a row in the `File` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.19`.
///
/// The `File` table has the following columns:
///  - **Flags** (4-byte bitmask of FileAttributes)
///  - **Name** (String Heap Index)
///  - **HashValue** (Blob Heap Index)
final class File extends Row with HasCustomAttributes {
  File(super.metadataIndex, super.readerIndex, super.index);

  @override
  MetadataTable get table => MetadataTable.file;

  @override
  int get token => (MetadataTableId.file << 24) | index;

  /// The attributes of the file.
  late final flags = FileAttributes(readUint32(0));

  /// The name of the file.
  late final String name = readString(1);

  /// The hash value of the file.
  Blob get hashValue => readBlob(2);
}

@internal
final class FileCompanion extends RowCompanion<File> {
  const FileCompanion();

  @override
  File Function(MetadataIndex, int, int) get constructor => File.new;

  @override
  MetadataTable get table => MetadataTable.file;
}
