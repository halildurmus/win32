import 'dart:collection';

import 'metadata_reader.dart';
import 'table_index.dart';

final class TableStream {
  const TableStream(this.tables);

  TableStream.create()
    : tables = UnmodifiableListView(
        List.generate(
          _totalTablesCount,
          (_) => TableData.empty(),
          growable: false,
        ),
      );

  final List<TableData> tables;

  /// The total number of tables exposed.
  static const _totalTablesCount = 19;

  @pragma('vm:prefer-inline')
  TableData operator [](TableIndex index) => tables[index];
}
