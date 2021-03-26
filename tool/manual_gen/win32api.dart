import 'dart:collection';
import 'dart:convert';
import 'dart:io';

import 'function.dart';

/// The collection of all C-style Windows API functions and structs that are
/// exposed through this Dart library.
class Win32API {
  /// Maps from an API to its metadata.
  final functions = SplayTreeMap<String, Win32Function>(
      (str1, str2) => str1.toLowerCase().compareTo(str2.toLowerCase()));

  /// Maps from a Struct to its metadata
  final structs = SplayTreeMap<String, Win32Struct>(
      (str1, str2) => str1.toLowerCase().compareTo(str2.toLowerCase()));

  // Serializes to JSON.
  void saveAsJson({String? apiFile, String? structFile}) {
    if (apiFile != null) {
      final file = File(apiFile);
      const encoder = JsonEncoder.withIndent('    ');

      // Don't double-escape newlines.
      final fileContents = encoder.convert(functions).replaceAll(r'\\n', r'\n');
      file.writeAsStringSync(fileContents);
    }

    if (structFile != null) {
      final file = File(structFile);
      const encoder = JsonEncoder.withIndent('    ');

      // Don't double-escape newlines.
      final fileContents = encoder.convert(structs).replaceAll(r'\\n', r'\n');
      file.writeAsStringSync(fileContents);
    }
  }

  Win32API({String? apiFile, String? structFile}) {
    if (apiFile != null) {
      final file = File(apiFile);
      final fileContents = file.readAsStringSync().replaceAll(r'\n', r'\\n');

      final decoded = json.decode(fileContents) as Map<String, dynamic>;
      for (final api in decoded.keys) {
        functions[api] =
            Win32Function.fromJson(decoded[api] as Map<String, dynamic>);
      }
      if (structFile != null) {
        final file = File(structFile);
        final fileContents = file.readAsStringSync().replaceAll(r'\n', r'\\n');

        final decoded = json.decode(fileContents) as Map<String, dynamic>;
        for (final api in decoded.keys) {
          structs[api] =
              Win32Struct.fromJson(decoded[api] as Map<String, dynamic>);
        }
      }
    }
  }
}

// Roundtrip load and save to make sure that the JSON file is ordered.
void main() {
  final win32 = Win32API(
      apiFile: 'tool/manual_gen/win32api.json',
      structFile: 'tool/manual_gen/win32struct.json');
  win32.saveAsJson(
      apiFile: 'tool/manual_gen/win32api.json',
      structFile: 'tool/manual_gen/win32struct.json');
}
