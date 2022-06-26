// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common enumerations used in the Windows Runtime APIs.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names

import '../../winrt/foundation/winrt_enum.dart';

/// Specifies the status of an asynchronous operation.
///
/// {@category Enum}
enum AsyncStatus implements WinRTEnum {
  Started(0),
  Completed(1),
  Canceled(2),
  Error(3);

  @override
  final int value;

  const AsyncStatus(this.value);

  factory AsyncStatus.from(int value) =>
      AsyncStatus.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// Specifies property value types.
///
/// {@category Enum}
enum PropertyType implements WinRTEnum {
  Empty(0),
  UInt8(1),
  Int16(2),
  UInt16(3),
  Int32(4),
  UInt32(5),
  Int64(6),
  UInt64(7),
  Single(8),
  Double(9),
  Char16(10),
  Boolean(11),
  String(12),
  Inspectable(13),
  DateTime(14),
  TimeSpan(15),
  Guid(16),
  Point(17),
  Size(18),
  Rect(19),
  OtherType(20),
  UInt8Array(1025),
  Int16Array(1026),
  UInt16Array(1027),
  Int32Array(1028),
  UInt32Array(1029),
  Int64Array(1030),
  UInt64Array(1031),
  SingleArray(1032),
  DoubleArray(1033),
  Char16Array(1034),
  BooleanArray(1035),
  StringArray(1036),
  InspectableArray(1037),
  DateTimeArray(1038),
  TimeSpanArray(1039),
  GuidArray(1040),
  PointArray(1041),
  SizeArray(1042),
  RectArray(1043),
  OtherTypeArray(1044);

  @override
  final int value;

  const PropertyType(this.value);

  factory PropertyType.from(int value) =>
      PropertyType.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
