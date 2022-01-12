// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

const distributionName = 'Ubuntu';
const distributionTargz =
    r'D:\Debian.tar.gz'; // must be exists, generate with wsl.exe --export
const userTest = 'usertest';
const userID = 3333;

/// Check whether a distribution exists
bool isDistributionRegistered(String distributionName) {
  final pDistributionName = distributionName.toNativeUtf16();
  try {
    return WslIsDistributionRegistered(TEXT(distributionName)) == TRUE;
  } finally {
    free(pDistributionName);
  }
}

void main() {
  print(isDistributionRegistered(distributionName));
  // returnCode =
  //     WslRegisterDistribution(TEXT(distributionName), TEXT(distributionTargz));
  // returnCode = WslLaunchInteractive(TEXT(distributionName),
  //     TEXT('useradd $userTest -u$userID && exit \$?'), false, exitCode);
  // var wslDistributionFlags = calloc<WSL_DISTRIBUTION_FLAGS>()
  //   ..ref.value = WSL_DISTRIBUTION_FLAGS.DEFAULT;
  // wslDistributionFlags.ref.ENABLE_DRIVE_MOUNTING = false;
  // returnCode = WslConfigureDistribution(
  //     TEXT(distributionName), userID, wslDistributionFlags.ref);
  // final process = calloc<HANDLE>();

  // returnCode =
  //     WslLaunch(TEXT(distributionName), TEXT(''), false, -1, -1, -1, process);

  // final distributionVersion = calloc<Uint32>();
  // final defaultUID = calloc<Uint32>();
  // wslDistributionFlags = calloc<WSL_DISTRIBUTION_FLAGS>();
  // final defaultEnvironmentVariables = calloc<Pointer<Utf8>>();
  // final defaultEnvironmentVariableCount = calloc<Uint32>();

  // returnCode = WslGetDistributionConfiguration(
  //     TEXT(distributionName),
  //     distributionVersion,
  //     defaultUID,
  //     wslDistributionFlags,
  //     defaultEnvironmentVariables,
  //     defaultEnvironmentVariableCount);

  // returnCode = WslUnregisterDistribution(TEXT(distributionName));
}
