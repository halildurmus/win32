import 'dart:convert';
import 'dart:io';
import 'model.dart';

final newProtos = <String, TypeDefNew>{};

// The JSON format we want to get to
class TypeDefNew {
  final List<String> prototype;
  final String dllLibrary;
  final String comment;

  const TypeDefNew(this.dllLibrary, this.prototype, this.comment);

  Map<String, dynamic> toJson() => <String, dynamic>{
        'prototype': prototype.first,
        'dllLibrary': dllLibrary,
        'comment': comment
      };
}

void saveNewJson(String filename) {
  final file = File(filename);
  file.writeAsStringSync(json.encode(newProtos).replaceAll(r'\\n', r'\n'));
}

void main() {
  loadJson('tool/win32/win32api.json');

// Do the conversion
  for (final protoKey in prototypes.keys) {
    final proto = prototypes[protoKey]!;
    newProtos[protoKey] =
        TypeDefNew(proto.dllLibrary, proto.prototype, proto.comment);
  }

  saveNewJson('tool/win32/win32api.json');
}
