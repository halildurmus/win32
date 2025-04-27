/// Represents a NuGet package that provides Windows metadata (`.winmd`) files.
///
/// These metadata packages describe APIs exposed by Windows components,
/// including the Windows Driver Kit (WDK), traditional Win32 APIs, and the
/// Windows Runtime (WinRT).
enum WindowsMetadataPackage {
  /// The [Windows Driver Kit (WDK) metadata](
  /// https://www.nuget.org/packages/Microsoft.Windows.WDK.Win32Metadata/)
  /// package.
  wdk._('microsoft.windows.wdk.win32metadata', 'Windows.Wdk.winmd'),

  /// The [Windows API metadata](
  /// https://www.nuget.org/packages/Microsoft.Windows.SDK.Win32Metadata/)
  /// package.
  win32._('microsoft.windows.sdk.win32metadata', 'Windows.Win32.winmd'),

  /// The [Windows Runtime (WinRT) metadata](
  /// https://www.nuget.org/packages/Microsoft.Windows.SDK.Contracts/)
  /// package.
  winrt._('microsoft.windows.sdk.contracts', 'Windows.winmd');

  const WindowsMetadataPackage._(this.packageId, this.assetName);

  /// Retrieves a [WindowsMetadataPackage] based on the given NuGet [packageId].
  static WindowsMetadataPackage fromPackageId(String packageId) =>
      switch (packageId) {
        'microsoft.windows.wdk.win32metadata' => wdk,
        'microsoft.windows.sdk.win32metadata' => win32,
        'microsoft.windows.sdk.contracts' => winrt,
        _ => throw ArgumentError.value(
          packageId,
          'packageId',
          'Unknown package ID.',
        ),
      };

  /// The unique identifier of the NuGet package (e.g.,
  /// `microsoft.windows.sdk.win32metadata`).
  final String packageId;

  /// The name of the asset file within the NuGet package (e.g.,
  /// `Windows.Win32.winmd`).
  final String assetName;

  @override
  String toString() => packageId;
}
