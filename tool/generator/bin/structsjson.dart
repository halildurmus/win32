import 'dart:collection';
import 'dart:convert';
import 'dart:io';

import 'package:generator/generator.dart';

void main() {
  final load = File('structs.json').readAsStringSync();
  final decoded = json.decode(load) as Map<String, dynamic>;
  final structs = SplayTreeMap<String, String>(
      (str1, str2) => lastComponent(str1).compareTo(lastComponent(str2)));
  for (final item in decoded.keys) {
    structs[item] = decoded[item] as String;
  }
  saveJson(structs, 'structs2.json');
  print(structs.length);
}

void saveJson(Map<String, String> structs, String filename) {
  final encoder = const JsonEncoder.withIndent('    ');
  final file = encoder.convert(structs);
  File(filename).writeAsStringSync(file);
}
