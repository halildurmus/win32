// This file defines the specific versions of Windows metadata packages used
// during testing. These constants ensure consistent and reproducible test
// results by locking the test environment to known versions of the Windows
// Driver Kit (WDK), Win32 API, and Windows Runtime (WinRT) metadata.

import 'package:winmd/windows_metadata.dart';

/// The version of the [Windows Driver Kit (WDK) metadata](
/// https://www.nuget.org/packages/Microsoft.Windows.WDK.Win32Metadata/)
/// package.
const wdkMetadataVersion = '0.13.25-experimental';

/// The version of the [Windows API metadata](
/// https://www.nuget.org/packages/Microsoft.Windows.SDK.Win32Metadata/)
/// package.
const win32MetadataVersion = '63.0.31-preview';

/// The version of the [Windows Runtime (WinRT) metadata](
/// https://www.nuget.org/packages/Microsoft.Windows.SDK.Contracts/)
/// package.
const winrtMetadataVersion = '10.0.26100.1742';

const metadataVersions = WindowsMetadataVersions(
  wdk: wdkMetadataVersion,
  win32: win32MetadataVersion,
  winrt: winrtMetadataVersion,
);
