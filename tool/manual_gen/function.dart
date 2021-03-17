/// Maps between Windows versions and the corresponding build numbers
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
};

/// Converts to/from win32struct.json
class Win32Struct {
  final String namespace;
  final String comment;

  Map<String, dynamic> toJson() =>
      <String, dynamic>{'namespace': namespace, 'comment': comment};

  Win32Struct.fromJson(Map<String, dynamic> json)
      : assert(json['namespace'] != null),
        assert(json['comment'] != null),
        namespace = json['namespace'] as String,
        comment = json['comment'] as String;
}

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
