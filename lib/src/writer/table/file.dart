import 'dart:typed_data';

import 'package:meta/meta.dart';

import '../../attributes.dart';
import '../../common.dart';
import '../heap/metadata_heap.dart';
import '../helpers.dart';
import '../row.dart';
import '../table_stream.dart';

/// Represents a row in the `File` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.19`.
///
/// The `File` table has the following columns:
///  - **Flags** (4-byte bitmask of FileAttributes)
///  - **Name** (String Heap Index)
///  - **HashValue** (Blob Heap Index)
final class File implements Row {
  const File({
    required this.name,
    required this.hashValue,
    this.flags = const FileAttributes(0),
  });

  final FileAttributes flags;
  final StringIndex name;
  final BlobIndex hashValue;

  @override
  void serialize(BytesBuilder buffer, TableStream stream) {
    buffer
      ..writeUint32(flags)
      ..writeHeapIndex(name, stream)
      ..writeHeapIndex(hashValue, stream);
  }
}

@internal
final class FileCompanion extends RowCompanion<File> {
  const FileCompanion();

  @override
  MetadataTableId get tableId => MetadataTableId.file;
}
