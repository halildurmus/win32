// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Contains the data classes for the representation of interfaces, methods and
// parameters, as well as the logic necessary to emit a Dart language
// representation (a projection) of the underlying API.

enum SourceType { com, winrt, win32, unknown }

class ParameterProjection {
  final String name;
  final String nativeType;
  final String dartType;

  const ParameterProjection(this.name,
      {required this.nativeType, required this.dartType});

  @override
  String toString() => '$name (dart: $dartType, native: $nativeType)';
}

class MethodProjection {
  late String name;
  late bool isGetProperty;
  late bool isSetProperty;
  late String returnTypeNative;
  late String returnTypeDart;
  List<ParameterProjection> parameters = <ParameterProjection>[];

  @override
  String toString() =>
      '$name (params: ${parameters.length}, returns: $returnTypeNative)';
}

class ClassProjection {
  late SourceType sourceType;
  String? iid;
  late String name;
  late String shortNameWithGenericSpecifier;
  bool generateClass = false;
  late String clsid;
  late String className;
  late String inherits;
  late int vtableStart;

  final methods = <MethodProjection>[];

  String get shortName => name.split('.').last.split('`').first;

  @override
  String toString() =>
      '$name (methods: ${methods.length}, inherits: $inherits)';
}
