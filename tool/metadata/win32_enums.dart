import 'dart:io';

import 'package:win32/win32.dart';
import 'package:winmd/winmd.dart';

List<String> namespaces = [];

void initNamespaces(Scope scope) {
  // Use a Set to avoid duplication
  final namespaceSet = <String>{};

  final scope = MetadataStore.getWin32Scope();
  for (final td in scope.typeDefs) {
    if (td.typeName.startsWith('Windows.Win32')) {
      final namespace = td.typeName.split('.')[2];
      namespaceSet.add('Windows.Win32.$namespace');
    }
  }
  namespaces = namespaceSet.toList()..sort((a, b) => a.compareTo(b));
}

String processEnumeration(Enumeration enumClass) {
  final buffer = StringBuffer();

  // Get the enum name
  var dartClass = enumClass.typeName.split('.').last;

  // Dart treats types beginning with _ as private to the library
  while (dartClass.startsWith('_')) {
    dartClass = dartClass.substring(1);
  }

  buffer.writeln('/// {@category Enum}');
  buffer.writeln('class $dartClass {');

  // The first field is always the special field _value
  for (final field in enumClass.fields.skip(1)) {
    // if (field.startsWith('_')) continue;

    final value = field.value.toHexString(32);
    buffer.writeln('  static const ${field.name} = $value;');
  }

  buffer.writeln('}\n');

  return buffer.toString();
}

void main() {
  final scope = MetadataStore.getWin32Scope();
  initNamespaces(scope);

  for (final namespace in namespaces) {
    final folderName = namespace.split('.').last.toLowerCase();

    final filteredEnums = scope.enums
        .where((typedef) => typedef.typeName.startsWith(namespace))
        .toList()
          ..sort((a, b) => a.typeName.compareTo(b.typeName));

    if (filteredEnums.isNotEmpty) {
      Directory('lib/src/$folderName').createSync();

      final writer =
          File('lib/src/$folderName/enums.dart').openSync(mode: FileMode.write);

      final enumsLength = filteredEnums.length;
      print('Processing $enumsLength enums in $namespace');
      final buffer = StringBuffer();

      for (final enumClass in filteredEnums) {
        buffer.write(processEnumeration(enumClass));
      }
      writer.writeStringSync(buffer.toString());
    }
  }
}
