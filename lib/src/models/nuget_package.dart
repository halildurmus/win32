// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

/// Represents a NuGet package.
final class NuGetPackage {
  /// Creates an instance of [NuGetPackage] with the specified [name],
  /// [version], and [path].
  const NuGetPackage({
    required this.name,
    required this.version,
    required this.path,
  });

  /// The name of the NuGet package.
  final String name;

  /// The version of the NuGet package.
  final String version;

  /// The directory path where the NuGet package is located.
  final String path;

  /// Returns a formatted string representation of the NuGet package.
  ///
  /// The format of the string is as follows: `name@version (path)`.
  ///
  /// Example:
  ///
  /// ```dart
  /// final package = NuGetPackage(
  ///     name: 'example', version: '1.0.0', path: '/path/to/package');
  /// print(package.toString()); // Output: 'example@1.0.0 (/path/to/package)'
  /// ```
  @override
  String toString() => '$name@$version ($path)';
}
