@TestOn('windows')

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';

final distributionName = 'Debian';
final distributionTargz = r'D:\Debian.tar.gz'; // must be exists, generate with wsl.exe --export
final userTest = 'usertest';
final userID = 3333;

void main() {
  if (isWindowsRuntimeAvailable()) {
    test('Check for the absence of a distribution', () {
      final returnCode = WslIsDistributionRegistered(TEXT(distributionName));
      expect(returnCode, equals(false));
    });

    test('Register a distribution', () {
      final returnCode = WslRegisterDistribution(TEXT(distributionName), TEXT(distributionTargz));
      expect(returnCode, equals(S_OK));
    });

    test('Create user', () async {
      final exitCode = calloc<DWORD>();

      final returnCode = WslLaunchInteractive(TEXT(distributionName), TEXT('useradd $userTest -u$userID && exit \$?'), false, exitCode);
      expect((returnCode), equals(S_OK));
      expect((exitCode.value), equals(S_OK));

      free(exitCode);
    });

    test('Change default user', () {
      final wslDistributionFlags = calloc<WSL_DISTRIBUTION_FLAGS>()..ref.value = WSL_DISTRIBUTION_FLAGS.DEFAULT;
      wslDistributionFlags.ref.ENABLE_DRIVE_MOUNTING = false;

      final returnCode = WslConfigureDistribution(TEXT(distributionName), userID, wslDistributionFlags.ref);
      expect((returnCode), equals(S_OK));

      free(wslDistributionFlags);
    });

    test('Simple launch', () {
      final process = calloc<HANDLE>();

      final returnCode = WslLaunch(TEXT(distributionName), TEXT(''), false, -1, -1, -1, process);
      expect((returnCode), equals(S_OK));

      free(process);
    });

    test('Get distribution configuration', () {
      final distributionVersion = calloc<Uint32>();
      final defaultUID = calloc<Uint32>();
      final wslDistributionFlags = calloc<WSL_DISTRIBUTION_FLAGS>();
      final defaultEnvironmentVariables = calloc<Pointer<Utf8>>();
      final defaultEnvironmentVariableCount = calloc<Uint32>();

      final returnCode = WslGetDistributionConfiguration(
          TEXT(distributionName), distributionVersion, defaultUID, wslDistributionFlags, defaultEnvironmentVariables, defaultEnvironmentVariableCount);
      expect(returnCode, equals(S_OK));
      expect(defaultUID.value, equals(userID));
      expect(wslDistributionFlags.ref.NONE, equals(false));
      expect(wslDistributionFlags.ref.APPEND_NT_PATH, equals(true));
      expect(wslDistributionFlags.ref.ENABLE_DRIVE_MOUNTING, equals(false));
      expect(wslDistributionFlags.ref.ENABLE_INTEROP, equals(true));

      free(distributionVersion);
      free(defaultUID);
      free(wslDistributionFlags);
      free(defaultEnvironmentVariables);
      free(defaultEnvironmentVariableCount);
    });

    test('Unregister distribution', () {
      final returnCode = WslUnregisterDistribution(TEXT(distributionName));
      expect(returnCode, equals(S_OK));
    });
  }
}
