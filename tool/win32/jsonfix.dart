import 'model.dart';

// import 'dart:convert';
// import 'dart:io';

// import 'model.dart';

// final newProtos = <String, TypeDefNew>{};

// class TypeDefNew {
//   final String apiName;
//   final List<String> prototype;

//   final String dllLibrary;
//   final String comment;

//   const TypeDefNew(this.apiName, this.dllLibrary, this.prototype, this.comment);

//   Map<String, dynamic> toJson() => <String, dynamic>{
//         'exportedFunction': apiName,
//         'prototype': prototype.first,
//         'dllLibrary': dllLibrary,
//         'comment': comment
//       };
// }

// void saveNewJson(String filename) {
//   final file = File(filename);
//   file.writeAsStringSync(json.encode(newProtos).replaceAll(r'\\n', r'\n'));
// }

// void main() {
//   loadJson('tool/win32/win32api.json');

// // Do the conversion
//   for (final protoKey in prototypes.keys) {
//     final proto = prototypes[protoKey]!;
//     newProtos[proto.neutralApiName] =
//         TypeDefNew(protoKey, proto.dllLibrary, proto.prototype, proto.comment);
//   }

//   saveNewJson('tool/win32/win32api2.json');
// }
void main() {
  loadJson('tool/win32/win32api.json');
  saveJson('tool/win32/win32api.json');
}
