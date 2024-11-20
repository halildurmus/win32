import 'dart:collection';
import 'dart:convert';
import 'dart:io';

Map<String, String> loadMap(String filePath) {
  final load = File(filePath).readAsStringSync();
  final decoded = json.decode(load) as Map<String, dynamic>;
  final items = SplayTreeMap<String, String>((a, b) => a.compareTo(b));

  for (final item in decoded.keys) {
    items[item] = decoded[item] as String;
  }

  return items;
}

void saveMap(Map<String, String> map, String filePath) {
  const encoder = JsonEncoder.withIndent('  ');
  final file = encoder.convert(map);
  File(filePath).writeAsStringSync(file);
}
