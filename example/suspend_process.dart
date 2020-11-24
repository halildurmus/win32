import 'dart:io';

import 'package:win32/src/kernel32.dart';
import 'package:win32/src/ntdll.dart';
import 'package:win32/win32.dart';

void main() {
  // Get the process id (pid) of the process you wish to suspend.
  final pid = getPid();

  // Get the handle to the process.
  final processHandle = OpenProcess(PROCESS_ALL_ACCESS, FALSE, pid);

  // Suspend the process.
  NtSuspendProcess(processHandle);
  print('Process suspended.\nWaiting 10 seconds.');

  // Give a chance for you to see the process is suspended / unresponsive.
  sleep(Duration(seconds: 10));

  // Resume the process.
  NtResumeProcess(processHandle);
  print('Process resumed.');
}

int getPid() {
  // Example pid.
  // To test, replace with the pid of an application running on your system.
  const pid = 14176;
  return pid;
}
