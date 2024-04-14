// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'custom_attributes_mixin.dart';

/// The architectures supported by a specific Win32 method or struct.
class Architecture {
  static const _x86 = 0x01;
  static const _x64 = 0x02;
  static const _arm64 = 0x04;

  final int _value;

  /// Creates an [Architecture] object.
  const Architecture(this._value);

  /// Returns an [Architecture] object that represents all supported
  /// architectures.
  factory Architecture.all() => const Architecture(_arm64 | _x64 | _x86);

  /// Returns true if this object is supported on Intel 32-bit architectures
  bool get x86 => _value & _x86 == _x86;

  /// Returns true if this object is supported on Intel 64-bit architectures
  bool get x64 => _value & _x64 == _x64;

  /// Returns true if this object is supported on ARM 64-bit architectures
  bool get arm64 => _value & _arm64 == _arm64;
}

/// Represents an object that may have an attribute for supported platform
/// architectures.
mixin SupportedArchitecturesMixin on CustomAttributesMixin {
  Architecture? _supportedArchitectures;

  /// Get platform architectures on which this type is supported.
  ///
  /// This property currently only supports Win32 metadata.
  Architecture get supportedArchitectures =>
      _supportedArchitectures ??= _calculateSupportedArchitectures();

  Architecture _calculateSupportedArchitectures() {
    final supportedArchAttr = findAttribute(
        'Windows.Win32.Foundation.Metadata.SupportedArchitectureAttribute');

    // By default, this attribute is missing and it is assumed that types
    // support all valid platform architectures.
    return supportedArchAttr == null
        ? Architecture.all()
        : Architecture(supportedArchAttr.parameters.first.value as int);
  }
}
