// Demonstrates APIs for interacting with processes and getting logging data.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void main() {
  using((arena) {
    final hProcess = GetCurrentProcess();
    final pCreationTime = arena<FILETIME>();
    final pExitTime = arena<FILETIME>();
    final pKernelTime = arena<FILETIME>();
    final pUserTime = arena<FILETIME>();
    final pCreationTimeAsSystemTime = arena<SYSTEMTIME>();
    final pExitTimeAsSystemTime = arena<SYSTEMTIME>();

    // Retrieve timing information for the current process.
    GetProcessTimes(hProcess, pCreationTime, pExitTime, pKernelTime, pUserTime);

    // Convert process creation time to SYSTEMTIME format.
    FileTimeToSystemTime(pCreationTime, pCreationTimeAsSystemTime);

    final processExited =
        pExitTime.ref.dwLowDateTime != 0 && pExitTime.ref.dwHighDateTime != 0;
    if (processExited) {
      // Convert process exit time to SYSTEMTIME format.
      FileTimeToSystemTime(pExitTime, pExitTimeAsSystemTime);
    }

    final creationTime = pCreationTimeAsSystemTime.ref.toDateTime();
    DateTime? exitTime;
    if (processExited) {
      exitTime = pExitTimeAsSystemTime.ref.toDateTime();
    }
    final kernelTime = pKernelTime.ref.toDuration();
    final userTime = pUserTime.ref.toDuration();

    print('Process creation time: $creationTime');
    print(
      processExited
          ? 'Process exit time: $exitTime'
          : 'Process has not exited!',
    );
    print('Process kernel time: $kernelTime');
    print('Process user time: $userTime');
  });
}
