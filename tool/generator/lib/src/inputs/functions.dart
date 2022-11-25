import 'dart:collection';
import 'dart:convert';
import 'dart:io';

/// Maps between Windows versions and the corresponding build numbers
///
/// Details from:
/// https://docs.microsoft.com/en-us/windows/release-health/release-information
const windowsBuilds = <String, int>{
  'WIN8': 9200,
  'WIN81': 9600,
  'WIN10_TH1': 10240, // 1507
  'WIN10_TH2': 10586, // 1511
  'WIN10_RS1': 14393, // 1607
  'WIN10_RS2': 15063, // 1703
  'WIN10_RS3': 16299, // 1709
  'WIN10_RS4': 17134, // 1803
  'WIN10_RS5': 17763, // 1809
  'WIN10_19H1': 18362, // 1903
  'WIN10_19H2': 18363, // 1909
  'WIN10_20H1': 19041, // 2004
  'WIN10_20H2': 19042,
  'WIN10_21H1': 19043,
  'WIN10_21H2': 19044,
  'WIN10_22H2': 19045,
  'WIN2022': 20348, // Windows Server 2022 LTSC
  'WIN11_21H2': 22000,
  'WIN11_22H2': 22621,
};

/// Converts to/from functions.json
class Win32Function {
  final String prototype;
  final String comment;
  final String functionSymbol;

  final String category;
  final bool _isCustomCategorySet;

  final int minimumWindowsVersion;
  final bool test;

  static String functionNameFromPrototype(String prototype) {
    final funcPreamble = prototype.split('(').first;
    final firstSpace = funcPreamble.lastIndexOf(' ');
    return funcPreamble.substring(firstSpace + 1);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'prototype': prototype,
        'comment': comment,
        if (_isCustomCategorySet) 'category': category,
        if (minimumWindowsVersion != 0)
          'minimumWindowsVersion': windowsBuilds.keys.firstWhere(
              (build) => windowsBuilds[build] == minimumWindowsVersion),
        if (!test) 'test': false
      };

  Win32Function.fromJson(Map<String, dynamic> json)
      : assert(json['prototype'] != null),
        assert(json['comment'] != null),
        prototype = json['prototype'] as String,
        functionSymbol = functionNameFromPrototype(json['prototype'] as String),
        comment = json['comment'] as String,
        category = json['category'] != null ? json['category'] as String : '',
        _isCustomCategorySet = json['category'] != null,
        minimumWindowsVersion = json['minimumWindowsVersion'] != null
            ? windowsBuilds[(json['minimumWindowsVersion'] as String)]!
            : 0,
        test = json['test'] as bool? ?? true;
}

SplayTreeMap<String, Win32Function> loadFunctionsFromJson() {
  final jsonFile = File('lib/src/data/functions.json')
      .readAsStringSync()
      .replaceAll(r'\n', r'\\n');
  final decodedJson = json.decode(jsonFile) as Map<String, dynamic>;
  final functions = SplayTreeMap<String, Win32Function>(
      (str1, str2) => str1.toLowerCase().compareTo(str2.toLowerCase()));

  for (final api in decodedJson.keys) {
    functions[api] =
        Win32Function.fromJson(decodedJson[api] as Map<String, dynamic>);
  }
  return functions;
}

void saveFunctionsToJson(SplayTreeMap<String, Win32Function> functions) {
  final encoder = const JsonEncoder.withIndent('    ');
  final outputText = encoder.convert(functions).replaceAll(r'\\n', r'\n');
  File('lib/src/data/functions.json').writeAsStringSync(outputText);
}
