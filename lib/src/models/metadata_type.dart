// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

/// Represents different types of metadata used by this package.
enum MetadataType {
  /// Windows Win32 metadata.
  ///
  /// This metadata type is can be found in the package
  /// `Microsoft.Windows.SDK.Win32Metadata` on `NuGet.org`.
  win32('Windows.Win32.winmd', 'Microsoft.Windows.SDK.Win32Metadata'),

  /// Windows Runtime (WinRT) metadata.
  ///
  /// This metadata type is can be found in the package
  /// `Microsoft.Windows.SDK.Contracts` on `NuGet.org`.
  winrt('Windows.winmd', 'Microsoft.Windows.SDK.Contracts');

  /// The name of the metadata asset (e.g., `Windows.Win32.winmd`).
  final String assetName;

  /// The package name of the metadata at `NuGet.org` (e.g.,
  /// `Microsoft.Windows.SDK.Win32Metadata`).
  final String packageName;

  /// Creates a [MetadataType] with the specified [assetName] and [packageName].
  const MetadataType(this.assetName, this.packageName);

  /// Looks up a [MetadataType] by its [packageName].
  ///
  /// Throws an [ArgumentError] if the provided [packageName] is not found.
  factory MetadataType.fromPackageName(String packageName) =>
      MetadataType.values.firstWhere(
        (type) => type.packageName == packageName,
        orElse: () => throw ArgumentError.value(
          packageName,
          'packageName',
          'Invalid package name.',
        ),
      );
}
