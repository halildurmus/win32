import 'dart:io';

import 'package:winmd/winmd.dart';

const namespaces = [
  'Windows.Win32.Gdi',
  'Windows.Win32.Kernel',
  'Windows.Win32.KeyboardAndMouseInput'
];

void main() {
  final scope = MetadataStore.getScopeForFile('tool/win32/Windows.Win32.winmd');

  for (final namespace in namespaces) {
    final folderName = namespace.split('.').last.toLowerCase();

    final filteredEnums =
        scope.enums.where((typedef) => typedef.typeName.startsWith(namespace));

    final writer =
        File('lib/src/$folderName/enums.dart').openSync(mode: FileMode.write);

    final enumsLength = filteredEnums.length;
    print('There are $enumsLength enums in $namespace.');
    final buffer = StringBuffer();

    for (final enumClass in filteredEnums) {
      // Get the enum name
      var dartClass = enumClass.typeName.split('.').last;

      // Dart treats types beginning with _ as private to the library
      while (dartClass.startsWith('_')) {
        dartClass = dartClass.substring(1);
      }

      // Some weirdness in Win32 metadata, see:
      // https://github.com/microsoft/win32metadata/issues/297
      if (dartClass.startsWith('MIDL___')) {
        continue;
      }

      buffer.writeln('/// {@category Enum}');
      buffer.writeln('class $dartClass {');

      // The first field is always the special field _value
      for (final field in enumClass.fields.keys.skip(1)) {
        buffer.writeln('  static const ${field} = ${enumClass.fields[field]};');
      }

      buffer.writeln('}\n');
    }
    writer.writeStringSync(buffer.toString());
  }
}
