import 'dart:convert';
import 'dart:io';

final prototypes = <String, TypeDef>{};

class TypeDef {
  final String neutralApiName;
  final List<String> prototype;

  final String dllLibrary;
  final String comment;

  const TypeDef(
      this.neutralApiName, this.dllLibrary, this.prototype, this.comment);

  Map<String, dynamic> toJson() => <String, dynamic>{
        'neutralApiName': neutralApiName,
        'prototype': prototype.first,
        'dllLibrary': dllLibrary,
        'comment': comment
      };

  TypeDef.fromJson(Map<String, dynamic> json)
      : neutralApiName = json['neutralApiName'] as String,
        prototype = [json['prototype'] as String],
        dllLibrary = json['dllLibrary'] as String,
        comment = json['comment'] as String;
}

void saveJson(String filename) {
  final file = File(filename);
  file.writeAsStringSync(json.encode(prototypes).replaceAll(r'\\n', r'\n'));
}

void loadJson(String filename) {
  final file = File(filename);
  final fileContents = file.readAsStringSync().replaceAll(r'\n', r'\\n');

  final decoded = json.decode(fileContents) as Map<String, dynamic>;
  for (final api in decoded.keys) {
    prototypes[api] = TypeDef.fromJson(decoded[api] as Map<String, dynamic>);
  }
}
