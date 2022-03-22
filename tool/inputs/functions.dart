import 'dart:collection';
import 'dart:convert';
import 'dart:io';

/// DLL libraries and API sets for which we will generate FFI bindings. These
/// are the only ones we cover; anything missing here won't be generated.
const dllLibraries = [
  // API sets
  'api-ms-win-core-winrt-l1-1-0', 'api-ms-win-core-winrt-string-l1-1-0',
  'api-ms-win-wsl-api-l1-1-0',

  // DLLs
  'advapi32', 'bthprops', 'bluetoothapis', 'comctl32', 'comdlg32', 'dbghelp',
  'dwmapi', 'dxva2',
  'gdi32', 'kernel32', 'kernelbase', 'magnification', 'ole32', 'oleaut32',
  'powrprof', 'rometadata', 'scarddlg', 'shcore', 'shell32', 'spoolss',
  'user32', 'uxtheme', 'version', 'xinput1_4', 'winmm', 'winscard',
  'winspool', 'wlanapi', 'ws2_32'
];

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
  'WIN11_21H2': 22000,
};

/// Converts to/from win32api.json
class Win32Function {
  final List<String> prototype;

  final String dllLibrary;
  final bool _isApiSet;
  final String comment;
  final String category;
  final bool _isCustomCategorySet;

  final int minimumWindowsVersion;
  final bool test;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'prototype': prototype.first,
        if (!_isApiSet) 'dllLibrary': dllLibrary,
        if (_isApiSet) 'apiSet': dllLibrary,
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
        prototype = [json['prototype'] as String],
        dllLibrary = json['dllLibrary'] != null
            ? json['dllLibrary'] as String
            : json['apiSet'] as String,
        _isApiSet = json['dllLibrary'] == null,
        comment = json['comment'] as String,
        category = json['category'] != null
            ? json['category'] as String
            : json['dllLibrary'] as String,
        _isCustomCategorySet = json['category'] != null,
        minimumWindowsVersion = json['minimumWindowsVersion'] != null
            ? windowsBuilds[(json['minimumWindowsVersion'] as String)]!
            : 0,
        test = json['test'] as bool? ?? true;
}

SplayTreeMap<String, Win32Function> loadFunctionsFromJson() {
  final jsonFile = File('tool/inputs/functions.json')
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
