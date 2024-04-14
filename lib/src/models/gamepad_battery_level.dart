// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

/// The charge state of the battery.
///
/// This value is only valid for wireless devices with a known battery type.
enum GamepadBatteryLevel {
  /// The charge state is empty.
  empty,

  /// The charge state is low.
  low,

  /// The charge state is medium.
  medium,

  /// The charge state is full.
  full,

  /// The charge state is unknown.
  unknown
}
