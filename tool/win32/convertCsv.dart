import 'dart:io';

import 'shared.dart';

void main() {
  loadCsv('tool/win32/win32api.csv');
  saveCsv('tool/win32/win32api.csv');
}

void saveCsv(String filename) {
  final file = File(filename);
  final buffer = StringBuffer();
  buffer.writeln(
      'ApiName, NeutralApiName, DllLibrary, WindowsPrototype, ReturnNative, ReturnDart, ParamCount, Param1Native, Param1Dart, Comment');

  for (final protoKey in prototypes.keys) {
    final proto = prototypes[protoKey]!;
    final fields = <String>[
      protoKey,
      proto.neutralApiName,
      proto.dllLibrary,
      '"${proto.prototype.first}"',
      proto.nativeReturn,
      proto.nativeParams.length.toString(),
    ];
    for (final key in proto.nativeParams.keys) {
      fields.add(key);
      fields.add(proto.nativeParams[key]!);
    }
    fields.add('"${proto.comment}"');
    buffer.writeln(fields.join(", "));
  }
  file.writeAsStringSync(buffer.toString());
}
