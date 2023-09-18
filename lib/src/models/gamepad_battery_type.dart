// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

/// The type of battery.
enum GamepadBatteryType {
  /// The device is not connected.
  disconnected,

  /// The device is a wired device and does not have a battery.
  wired,

  /// The device has an alkaline battery.
  alkaline,

  /// The device has a nickel metal hydride battery.
  nickelMetalHydride,

  /// The device has an unknown battery type.
  unknown
}
