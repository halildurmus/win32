// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

/// Represents the trust level of an activatable class.
///
/// {@category enum}
enum TrustLevel {
  /// The component has access to resources that are not protected.
  baseTrust(0),

  /// The component has access to resources requested in the app manifest and
  /// approved by the user.
  partialTrust(1),

  /// The component requires the full privileges of the user.
  fullTrust(2);

  final int value;

  const TrustLevel(this.value);

  factory TrustLevel.from(int value) =>
      TrustLevel.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
