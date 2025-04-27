import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

void main() {
  group('TableStream', () {
    test('has correct number of tables', () {
      final stream = TableStream.create();
      check(stream.tables.length).equals(19);
    });

    test('table has correct initial data', () {
      final stream = TableStream.create();
      final table = stream[TableIndex.typeSpec];
      check(table.offset).equals(0);
      check(table.rows).equals(0);
      check(table.width).equals(0);
      check(table.columns.length).equals(6);
    });
  });
}
