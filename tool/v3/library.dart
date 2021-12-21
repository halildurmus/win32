import 'dart:io';

import 'generate.dart';

const libraryHeader = '''
// ignore_for_file: directives_ordering
''';

const libraryDefaultExports = '''
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

/// A mapping of feature areas to export statements
final exports = <String, List<String>>{};

/// For a given Win32 namespace, return its top-level feature area.
///
/// For example, `Windows.Win32.Media.Audio.DirectMusic` resolves to `Media`.
String featureArea(String namespace) => namespace.split('.')[2];

/// Add a new export to the exports map.
void addExport(String featureArea, String export) {
  if (!exports.containsKey(featureArea)) {
    exports[featureArea] = [export];
  } else {
    exports[featureArea]!.add(export);
  }
}

/// For each namespace, add all generated .dart files in the directory
void generateLibraryExport(List<String> namespaces) {
  for (final namespace in namespaces) {
    final area = featureArea(namespace);
    final directory = Directory(folderForNamespace(namespace));

    final relativePath = folderForNamespace(namespace).substring(4);
    for (final file in directory.listSync()) {
      if (file.existsSync() && file.uri.toFilePath().endsWith('.dart')) {
        final export = "export '$relativePath/${file.path.split('\\').last}';";
        addExport(area, export);
      }
    }
  }

  /// Write a separate export for each feature area
  for (final featureArea in exports.keys) {
    final exportFile = [
      libraryHeader,
      'library $featureArea;',
      libraryDefaultExports,
      ...exports[featureArea]!
    ].join('\n');

    File('lib/$featureArea.dart')
        .writeAsStringSync(formatter.format(exportFile));
  }
}
