// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Contains the data classes for the representation of interfaces, methods and
// parameters, as well as the logic necessary to emit a Dart language
// representation (a projection) of the underlying API.

// These classes offer an intermediate format between the underlying Windows
// metadata, and the generated Dart code. Unlike the Windows Metadata database,
// they are designed for ease of serialization in Dart, requiring no further
// significant interpretation.

/// A parameter.
///
/// Parameters have a name, along with the Dart type and the FFI equivalent
/// type.
class ParameterProjection {
  final String dartType;
  final String name;
  final String nativeType;

  const ParameterProjection(this.name,
      {required this.nativeType, required this.dartType});

  @override
  String toString() => '$name (dart: $dartType, native: $nativeType)';
}

/// A method or a property.
///
/// Methods have names, a list of parameters, and may return a type.
class MethodProjection {
  late bool isGetProperty;
  late bool isSetProperty;
  late String name;
  List<ParameterProjection> parameters = <ParameterProjection>[];
  late String returnTypeDart;
  late String returnTypeNative;

  @override
  String toString() =>
      '$name (params: ${parameters.length}, returns: $returnTypeNative)';
}

/// The architecture used to represent a class.
enum SourceType { com, winrt, win32, unknown }

/// An interface or class.
///
/// Interfaces may have a unique GUID. They may be materialized as a class. They
/// have zero or more methods.
class ClassProjection {
  String? className;
  String? clsid;
  bool generateClass = false;
  String? iid;
  String inherits;
  final methods = <MethodProjection>[];
  String name;
  String shortNameWithGenericSpecifier;
  SourceType sourceType;
  int vtableStart;
  String namespace;

  @override
  String toString() =>
      '$name (methods: ${methods.length}, inherits: $inherits)';

  String get shortName => name.split('.').last.split('`').first;

  ClassProjection(
      {this.className,
      this.clsid,
      this.sourceType = SourceType.unknown,
      this.iid,
      required this.inherits,
      required this.name,
      this.vtableStart = 0,
      this.generateClass = false,
      String? fullyQualifiedName})
      : shortNameWithGenericSpecifier = name.split('.').last.split('`').first,
        namespace = fullyQualifiedName ?? name;
}
