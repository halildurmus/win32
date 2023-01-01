// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common enumerations used in the Windows Runtime APIs.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names

import '../../foundation/winrt_enum.dart';

/// Indicates the requested accuracy level for the location data that the
/// application uses.
///
/// {@category Enum}
enum PositionAccuracy implements WinRTEnum {
  default_(0),
  high(1);

  @override
  final int value;

  const PositionAccuracy(this.value);

  factory PositionAccuracy.from(int value) =>
      PositionAccuracy.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// Indicates the ability of the Geolocator object to provide location data.
///
/// {@category Enum}
enum PositionStatus implements WinRTEnum {
  ready(0),
  initializing(1),
  noData(2),
  disabled(3),
  notInitialized(4),
  notAvailable(5);

  @override
  final int value;

  const PositionStatus(this.value);

  factory PositionStatus.from(int value) =>
      PositionStatus.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
