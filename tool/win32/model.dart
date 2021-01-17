import 'dart:convert';
import 'dart:io';

// Mapping of the generic API name to the TypeDef
final prototypes = <String, TypeDef>{};

class TypeDef {
  final String exportName;
  final List<String> prototype;

  final String dllLibrary;
  final String comment;

  const TypeDef(this.exportName, this.dllLibrary, this.prototype, this.comment);

  Map<String, dynamic> toJson() => <String, dynamic>{
        'exportName': exportName,
        'prototype': prototype.first,
        'dllLibrary': dllLibrary,
        'comment': comment
      };

  TypeDef.fromJson(Map<String, dynamic> json)
      : exportName = json['exportName'] as String,
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
