import 'signature.dart';

const windowsBuilds = <String, int>{
  'WIN8': 9200,
  'WIN10_TH1': 10240,
  'WIN10_TH2': 10586,
  'WIN10_RS1': 14393,
  'WIN10_RS2': 15063,
  'WIN10_RS3': 16299,
  'WIN10_RS4': 17134,
  'WIN10_RS5': 17763,
  'WIN10_19H1': 18362,
  'WIN10_19H2': 18363,
  'WIN10_20H1': 19041,
  'WIN10_20H2': 19042,
};

class Win32Function {
  final List<String> prototype;

  final String dllLibrary;
  final bool _isApiSet;
  final String comment;
  final String category;
  final bool _isCustomCategorySet;

  final int minimumWindowsVersion;
  final bool test;
  final Win32Signature signature;

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
        test = json['test'] as bool? ?? true,
        signature =
            Win32Signature.fromSyntaxString(json['prototype'] as String);
}
