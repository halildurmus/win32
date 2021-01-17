import 'signature.dart';

const windowsBuilds = <String, int>{
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
  final String comment;

  final int minimumWindowsVersion;
  final bool test;
  final Win32Signature signature;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'prototype': prototype.first,
        'dllLibrary': dllLibrary,
        'comment': comment
      };

  Win32Function.fromJson(Map<String, dynamic> json)
      : prototype = [json['prototype'] as String],
        dllLibrary = json['dllLibrary'] as String,
        comment = json['comment'] as String,
        minimumWindowsVersion = json['minimumWindowsVersion'] != null
            ? windowsBuilds[(json['minimumWindowsVersion'] as String)]!
            : 0,
        test = json['test'] as bool? ?? true,
        signature =
            Win32Signature.fromSyntaxString(json['prototype'] as String);
}
