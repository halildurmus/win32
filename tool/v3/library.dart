import 'dart:io';

import 'generate.dart';

const win32FileHeader = '''
// ignore_for_file: directives_ordering

library new_win32;

export 'src/constants_new.dart';
export 'src/exceptions.dart';
export 'src/macros.dart';
export 'src/types.dart';
export 'src/utils.dart';

export 'src/extensions/dialogs.dart';
export 'src/extensions/int_to_hexstring.dart';
export 'src/extensions/list_to_blob.dart';
export 'src/extensions/set_ansi.dart';
export 'src/extensions/set_string.dart';
export 'src/extensions/set_string_array.dart';
export 'src/extensions/unpack_utf16.dart';
''';

void generateLibraryExport(List<String> namespaces) {
  final buffer = StringBuffer();
  buffer.writeln(win32FileHeader);
  for (final namespace in namespaces) {
    final directory = Directory(folderForNamespace(namespace));

    final relativePath = folderForNamespace(namespace).substring(4);
    for (final file in directory.listSync()) {
      if (file.existsSync() && file.uri.toFilePath().endsWith('.dart')) {
        buffer
            .writeln("  export '$relativePath/${file.path.split('\\').last}';");
      }
    }
  }

  final libraryFile = formatter.format(buffer.toString());
  File('lib/new_win32.dart').writeAsStringSync(libraryFile);
}
