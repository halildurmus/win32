import 'dart:convert';
import 'dart:io';

import 'versioned_apis.dart';

// Mapping of the generic API name to the TypeDef
final prototypes = <String, TypeDef>{};

class TypeDef {
  final List<String> prototype;

  final String dllLibrary;
  final String comment;

  final int minimumWindowsVersion;
  final bool test;

  const TypeDef(this.dllLibrary, this.prototype, this.comment,
      {this.minimumWindowsVersion = 0, this.test = true});

  Map<String, dynamic> toJson() => <String, dynamic>{
        'prototype': prototype.first,
        'dllLibrary': dllLibrary,
        'comment': comment
      };

  TypeDef.fromJson(Map<String, dynamic> json)
      : prototype = [json['prototype'] as String],
        dllLibrary = json['dllLibrary'] as String,
        comment = json['comment'] as String,
        minimumWindowsVersion = json['minimumWindowsVersion'] != null
            ? windowsBuilds[(json['minimumWindowsVersion'] as String)]!
            : 0,
        test = json['test'] as bool? ?? true;
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
