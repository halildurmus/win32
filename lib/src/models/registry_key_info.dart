// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

/// Represents information about a Windows Registry key.
class RegistryKeyInfo {
  /// Creates an instance of [RegistryKeyInfo] with the specified attributes.
  const RegistryKeyInfo(
    this.className,
    this.subKeyCount,
    this.subKeyNameMaxLength,
    this.subKeyClassNameMaxLength,
    this.valuesCount,
    this.valueNameMaxLength,
    this.valueDataMaxSizeInBytes,
    this.securityDescriptorLength,
    this.lastWriteTime,
  );

  /// The class name of the Registry key.
  final String className;

  /// The number of subkeys under this Registry key.
  final int subKeyCount;

  /// The maximum length of subkey names.
  final int subKeyNameMaxLength;

  /// The maximum length of subkey class names.
  final int subKeyClassNameMaxLength;

  /// The number of values associated with this Registry key.
  final int valuesCount;

  /// The maximum length of value names.
  final int valueNameMaxLength;

  /// The maximum size of value data associated with this Registry key.
  final int valueDataMaxSizeInBytes;

  /// The length of the security descriptor associated with this Registry key.
  final int securityDescriptorLength;

  /// The date and time when this Registry key was last written to.
  final DateTime? lastWriteTime;
}
