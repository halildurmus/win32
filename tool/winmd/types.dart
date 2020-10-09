// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Contains the data classes for the representation of interfaces, methods and
// parameters, as well as the logic necessary to emit a Dart language
// representation (a projection) of the underlying API.

enum SourceType { com, winrt, unknown }

class Parameter {
  String? name;
  String? nativeType;
  String? dartType;

  @override
  String toString() => '$name (dart: $dartType, native: $nativeType)';
}

class Method {
  late String name;
  String? returnTypeNative;
  String? returnTypeDart;
  final parameters = <Parameter>[];

  @override
  String toString() =>
      '$name (params: ${parameters.length}, returns: $returnTypeNative)';
}

class Interface {
  SourceType? sourceType;
  String? iid;
  String? name;
  bool generateClass = false;
  String? clsid;
  String? className;
  String? inherits;
  int? vtableStart;

  final methods = <Method>[];

  String get shortName => name!.split('.').last;

  @override
  String toString() =>
      '$name (methods: ${methods.length}, inherits: $inherits)';
}
