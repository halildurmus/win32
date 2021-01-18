import 'dart:collection';
import 'dart:convert';
import 'dart:io';

import 'function.dart';

/// The collection of all C-style Windows API functions that are exposed through
/// this Dart library.
class Win32API {
  /// Maps from an API name to its metadata
  final functions = SplayTreeMap<String, Win32Function>(
      (str1, str2) => str1.toLowerCase().compareTo(str2.toLowerCase()));
  // final functions = <String, Win32Function>{};

  // Serializes to JSON.
  void saveAsJson(String filename) {
    final file = File(filename);
    const encoder = JsonEncoder.withIndent('    ');

    // Don't double-escape newlines.
    final fileContents = encoder.convert(functions).replaceAll(r'\\n', r'\n');
    file.writeAsStringSync(fileContents);
  }

  Win32API(String filename) {
    final file = File(filename);
    final fileContents = file.readAsStringSync().replaceAll(r'\n', r'\\n');

    final decoded = json.decode(fileContents) as Map<String, dynamic>;
    for (final api in decoded.keys) {
      functions[api] =
          Win32Function.fromJson(decoded[api] as Map<String, dynamic>);
    }
  }
}
