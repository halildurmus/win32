import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

// https://stackoverflow.com/questions/36029230
double fileTimeToSeconds(FILETIME fileTime) =>
    // 4294967296 represents the value of 2^32
    (fileTime.dwHighDateTime * 4294967296 + fileTime.dwLowDateTime) / 10E6;

void main() {
  final hProcess = GetCurrentProcess();
  final pCreationTime = calloc<FILETIME>();
  final pExitTime = calloc<FILETIME>();
  final pKernelTime = calloc<FILETIME>();
  final pUserTime = calloc<FILETIME>();
  final pCreationTimeAsSystemTime = calloc<SYSTEMTIME>();
  final pExitTimeAsSystemTime = calloc<SYSTEMTIME>();
  int result;

  try {
    // Retrieve timing information for the current process
    result = GetProcessTimes(
        hProcess, pCreationTime, pExitTime, pKernelTime, pUserTime);
    if (result == FALSE) {
      throw WindowsException(result);
    }

    // Convert process creation time to SYSTEMTIME format
    result = FileTimeToSystemTime(pCreationTime, pCreationTimeAsSystemTime);
    if (result == FALSE) {
      throw WindowsException(result);
    }

    // Convert process exit time to SYSTEMTIME format
    result = FileTimeToSystemTime(pExitTime, pExitTimeAsSystemTime);
    if (result == FALSE) {
      throw WindowsException(result);
    }

    // Construct a DateTime from SYSTEMTIME format
    final creationTime = DateTime.utc(
      pCreationTimeAsSystemTime.ref.wYear,
      pCreationTimeAsSystemTime.ref.wMonth,
      pCreationTimeAsSystemTime.ref.wDay,
      pCreationTimeAsSystemTime.ref.wHour,
      pCreationTimeAsSystemTime.ref.wMinute,
      pCreationTimeAsSystemTime.ref.wSecond,
      pCreationTimeAsSystemTime.ref.wMilliseconds,
    ).toLocal();

    final exitTime = DateTime.utc(
      pExitTimeAsSystemTime.ref.wYear,
      pExitTimeAsSystemTime.ref.wMonth,
      pExitTimeAsSystemTime.ref.wDay,
      pExitTimeAsSystemTime.ref.wHour,
      pExitTimeAsSystemTime.ref.wMinute,
      pExitTimeAsSystemTime.ref.wSecond,
      pExitTimeAsSystemTime.ref.wMilliseconds,
    ).toLocal();

    print('Process creation time: $creationTime');
    final processExited =
        pExitTime.ref.dwLowDateTime != 0 && pExitTime.ref.dwHighDateTime != 0;
    print(processExited
        ? 'Process exit time: $exitTime'
        : 'Process has not exited!');
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
