import 'dart:collection';
import 'dart:convert';
import 'dart:io';

Map<String, String> loadMap(String filename) {
  final load = File('lib/src/data/$filename').readAsStringSync();
  final decoded = json.decode(load) as Map<String, dynamic>;
  final items =
      SplayTreeMap<String, String>((str1, str2) => str1.compareTo(str2));
  for (final item in decoded.keys) {
    items[item] = decoded[item] as String;
  }
  return items;
}

void saveMap(Map<String, String> map, String filename) {
  final encoder = const JsonEncoder.withIndent('    ');
  final file = encoder.convert(map);
  File('lib/src/data/$filename').writeAsStringSync(file);
}
