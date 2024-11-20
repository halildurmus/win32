// Demonstrates APIs for interacting with processes and getting logging data.

import 'dart:ffi';

import 'package:win32/win32.dart';

// https://stackoverflow.com/questions/36029230
/// Converts FILETIME format to seconds.
double fileTimeToSeconds(FILETIME fileTime) =>
    ((fileTime.dwHighDateTime << 32) + fileTime.dwLowDateTime) / 10E6;

/// Constructs a DateTime from SYSTEMTIME format.
DateTime systemTimeToDateTime(
  SYSTEMTIME systemTime, {
  bool convertToLocalTimeZone = true,
}) {
  final dateTime = DateTime.utc(
    systemTime.wYear,
    systemTime.wMonth,
    systemTime.wDay,
    systemTime.wHour,
    systemTime.wMinute,
    systemTime.wSecond,
    systemTime.wMilliseconds,
  );
  return convertToLocalTimeZone ? dateTime.toLocal() : dateTime;
}

void main() {
  final hProcess = GetCurrentProcess();
  final pCreationTime = loggingCalloc<FILETIME>();
  final pExitTime = loggingCalloc<FILETIME>();
  final pKernelTime = loggingCalloc<FILETIME>();
  final pUserTime = loggingCalloc<FILETIME>();
  final pCreationTimeAsSystemTime = loggingCalloc<SYSTEMTIME>();
  final pExitTimeAsSystemTime = loggingCalloc<SYSTEMTIME>();

  try {
    // Retrieve timing information for the current process
    GetProcessTimes(hProcess, pCreationTime, pExitTime, pKernelTime, pUserTime);

    // Convert process creation time to SYSTEMTIME format
    FileTimeToSystemTime(pCreationTime, pCreationTimeAsSystemTime);

    final processExited =
        pExitTime.ref.dwLowDateTime != 0 && pExitTime.ref.dwHighDateTime != 0;
    if (processExited) {
      // Convert process exit time to SYSTEMTIME format
      FileTimeToSystemTime(pExitTime, pExitTimeAsSystemTime);
    }

    final creationTime = systemTimeToDateTime(pCreationTimeAsSystemTime.ref);

    DateTime? exitTime;
    if (processExited) {
      exitTime = systemTimeToDateTime(pExitTimeAsSystemTime.ref);
    }

    print('Process creation time: $creationTime');
    print(
      processExited
          ? 'Process exit time: $exitTime'
          : 'Process has not exited!',
    );
    print('Process kernel time: ${fileTimeToSeconds(pKernelTime.ref)} seconds');
    print('Process user time: ${fileTimeToSeconds(pUserTime.ref)} seconds');
  } finally {
    free(pCreationTime);
    free(pExitTime);
    free(pKernelTime);
    free(pUserTime);
    free(pCreationTimeAsSystemTime);
    free(pExitTimeAsSystemTime);
  }
}
