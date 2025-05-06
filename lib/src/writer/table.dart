import 'dart:typed_data';

import 'row.dart';
import 'table_stream.dart';

/// A strongly-typed table of rows used for metadata serialization.
///
/// Each [Table] contains a list of [Row]s of a specific type [T], and provides
/// methods to add rows and serialize the table into a binary format.
final class Table<T extends Row> {
  /// The list of rows in the table.
  final rows = <T>[];

  /// Adds a single [row] to the table.
  void add(T row) => rows.add(row);

  /// Adds all rows from the given [iterable] to the table.
  void addAll(Iterable<T> iterable) => rows.addAll(iterable);

  /// The number of rows currently in the table.
  int get length => rows.length;

  /// Whether the [rows] has no rows.
  bool get isEmpty => rows.isEmpty;

  /// Whether the [rows] has at least one row.
  bool get isNotEmpty => rows.isNotEmpty;

  /// Serializes all rows in the table into the provided [buffer], using the
  /// given [stream] for row-specific serialization logic.
  void serialize(BytesBuilder buffer, TableStream stream) {
    for (final row in rows) {
      row.serialize(buffer, stream);
    }
  }
}
