/// Represents a NuGet package.
enum NuGetPackage {
  /// The [Windows Driver Kit (WDK) metadata](
  /// https://www.nuget.org/packages/Microsoft.Windows.WDK.Win32Metadata/)
  /// package.
  wdk._('microsoft.windows.wdk.win32metadata', 'Windows.Wdk.winmd'),

  /// The [Windows API metadata](
  /// https://www.nuget.org/packages/Microsoft.Windows.SDK.Win32Metadata/)
  /// package.
  win32._('microsoft.windows.sdk.win32metadata', 'Windows.Win32.winmd'),

  /// The [Windows API documentation metadata](
  /// https://www.nuget.org/packages/Microsoft.Windows.SDK.Win32Docs/)
  /// package.
  win32Docs._('microsoft.windows.sdk.win32docs', 'apidocs.msgpack'),

  /// The [Windows Runtime (WinRT) metadata](
  /// https://www.nuget.org/packages/Microsoft.Windows.SDK.Contracts/)
  /// package.
  winrt._('microsoft.windows.sdk.contracts', 'Windows.winmd');

  const NuGetPackage._(this.packageId, this.assetName);

  /// Retrieves a [NuGetPackage] based on the given NuGet [packageId].
  factory NuGetPackage.fromPackageId(String packageId) => switch (packageId) {
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
