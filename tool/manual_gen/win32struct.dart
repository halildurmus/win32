import 'dart:convert';
import 'dart:io';

Map<String, String> loadStructsFromJson() {
  final jsonFile = File('tool/manual_gen/win32struct.json').readAsStringSync();
  final decodedJson = json.decode(jsonFile) as Map<String, dynamic>;
  final structs = decodedJson.map(
    (key, dynamic value) => MapEntry(key, value!.toString()),
  );
  return structs;
}
