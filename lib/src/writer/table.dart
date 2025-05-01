import 'dart:typed_data';

import 'table_stream.dart';

/// An abstract interface representing a serializable row in a metadata table.
// ignore: one_member_abstracts
abstract interface class Row {
  /// Serializes this row into the provided [buffer], using the given [context]
  /// to resolve table-specific serialization behavior.
  void serialize(BytesBuilder buffer, TableStream context);
}

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

  /// Serializes all rows in the table into the provided [buffer], using the
  /// given [context] for row-specific serialization logic.
  void serialize(BytesBuilder buffer, TableStream context) {
    for (final row in rows) {
      row.serialize(buffer, context);
    }
  }
}
