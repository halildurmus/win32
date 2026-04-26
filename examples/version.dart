// Demonstrates querying the running Windows version and comparing against
// well-known baselines.

import 'package:win32/win32.dart';

void main() {
  // Display the current version and edition, and compare against baselines.
  final current = OsVersion.current;
  print('Running on:     $current');
  print('Revision:       ${OsVersion.revision}');
  print('Server edition: ${OsVersion.isServer}');
  print('-' * 40);
  print('Windows 10 or later: ${current >= .win10}');
  print('Windows 11 or later: ${current >= .win11}');
  print('-' * 40);

  // Guard a feature that requires a minimum version.
  if (current >= .win10v1607) {
    // e.g., GetSystemCpuSetInformation API is available from 1607 onwards.
    print('GetSystemCpuSetInformation API: available');
  } else {
    print('GetSystemCpuSetInformation API: not available on this version');
  }
}
