// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Contains the data classes for the representation of interfaces, methods and
// parameters, as well as the logic necessary to emit a Dart language
// representation (a projection) of the underlying API.

enum SourceType { com, winrt, unknown }

class Parameter {
  late String name;
  late String nativeType;
  late String dartType;

  @override
  String toString() => '$name (dart: $dartType, native: $nativeType)';
}

class Method {
  late String name;
  late String returnTypeNative;
  late String returnTypeDart;
  final parameters = <Parameter>[];

  @override
  String toString() =>
      '$name (params: ${parameters.length}, returns: $returnTypeNative)';
}

class Interface {
  late SourceType sourceType;
  String? iid;
  late String name;
  bool generateClass = false;
  late String clsid;
  late String className;
  late String inherits;
  late int vtableStart;

  final methods = <Method>[];

  String get shortName => name.split('.').last;

  @override
  String toString() =>
      '$name (methods: ${methods.length}, inherits: $inherits)';
}
