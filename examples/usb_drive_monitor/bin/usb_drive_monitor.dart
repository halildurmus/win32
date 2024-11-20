import 'dart:io';

import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:usb_drive_monitor/usb_drive_monitor.dart';

void main() async {
  LeakTracker.enableInDebug();

  final monitor = UsbDriveMonitor();
  print('Starting USB drive monitor...');
  await monitor.start();

  final subscription = monitor.events.listen(
    (event) {
      switch (event) {
        case UsbDriveInserted():
          print(
            '[${event.timestamp.toIso8601String()}] '
            'Drive inserted: ${event.driveLetter}',
          );

        case UsbDriveRemoved():
          print(
            '[${event.timestamp.toIso8601String()}] '
            'Drive removed: ${event.driveLetter}',
          );
      }
    },
    onError: (error, stackTrace) {
      stderr
        ..writeln('Error: $error')
        ..writeln(stackTrace);
    },
  );

  print('Monitoring USB drive events...');
  print('Insert or remove a USB drive to trigger events.');
  print('Press ENTER to stop monitoring.');

  // Wait for user exit signal.
  await stdin.first;

  // Shutdown sequence.
  print('Stopping the monitor...');
  await subscription.cancel();
  await monitor.close();

  LeakTracker.verifyNoLeaksInDebug();
}
