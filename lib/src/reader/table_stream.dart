import 'dart:collection';

import 'metadata_reader.dart';
import 'metadata_table.dart';

/// Provides access to a fixed set of metadata tables within a metadata stream.
///
/// Each table contains structured records used to describe types, methods,
/// fields, and other program elements.
final class TableStream {
  /// Creates an empty [TableStream].
  ///
  /// Initializes all tables up front to ensure a consistent, non-growable list
  /// of known tables.
  TableStream()
    : tables = UnmodifiableListView(
        List.generate(
          MetadataTable.values.length,
          (_) => TableData.empty(),
          growable: false,
        ),
      );

  /// The list of tables contained within this stream.
  final List<TableData> tables;

  /// Returns the [TableData] associated with the given [MetadataTable].
  @pragma('vm:prefer-inline')
  TableData operator [](MetadataTable table) => tables[table.index];
}
