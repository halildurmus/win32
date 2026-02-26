import 'dart:io';

import 'package:win32_clipboard/win32_clipboard.dart';

void main() async {
  final monitor = ClipboardChangeMonitor();
  print('Starting clipboard change monitor...');
  await monitor.start();

  final subscription = monitor.onTextChanged.listen(
    (text) => print('Clipboard changed: "$text"'),
    onError: (error, stackTrace) {
      stderr
        ..writeln('Error: $error')
        ..writeln(stackTrace);
    },
  );

  print('Monitoring clipboard for text changes...');
  print('Copy some text to the clipboard to trigger events.');
  print('Press ENTER to stop monitoring.');

  // Wait for user exit signal.
  await stdin.first;

  // Shutdown sequence.
  print('Stopping the monitor...');
  await subscription.cancel();
  await monitor.close();
  print('Done.');
}
