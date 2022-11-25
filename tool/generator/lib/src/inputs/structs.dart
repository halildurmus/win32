import 'dart:collection';
import 'dart:convert';
import 'dart:io';

Map<String, String> loadStructsFromJson(String filename) {
  final load = File('lib/src/data/$filename').readAsStringSync();
  final decoded = json.decode(load) as Map<String, dynamic>;
  final structs =
      SplayTreeMap<String, String>((str1, str2) => str1.compareTo(str2));
  for (final item in decoded.keys) {
    structs[item] = decoded[item] as String;
  }
  return structs;
}

void saveStructsToJson(Map<String, String> structs, String filename) {
  final encoder = const JsonEncoder.withIndent('    ');
  final file = encoder.convert(structs);
  File('lib/src/data/$filename').writeAsStringSync(file);
}
