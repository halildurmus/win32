import 'dart:io';

import 'package:win32_registry/win32_registry.dart';

void main() async {
  const subkeyPath = r'Software\Win32Registry';
  final key = CURRENT_USER.create(subkeyPath)
    ..setValue(
      'String',
      const .string(
        'The human race has one really effective weapon, and that is laughter.',
      ),
    );

  final monitor = RegistryChangeMonitor(key);
  print('Starting registry change monitor...');
  await monitor.start();

  final subscription = monitor.events.listen(
    (_) => print('Registry key changed.'),
    onError: (error, stackTrace) {
      stderr
        ..writeln('Error: $error')
        ..writeln(stackTrace);
    },
  );

  print('Monitoring: HKEY_CURRENT_USER\\$subkeyPath');
  print('Modify this key using RegEdit or code to trigger events.');
  print('Press ENTER to stop monitoring.');

  // Wait for user exit signal.
  await stdin.first;

  // Shutdown sequence.
  print('Stopping the monitor...');
  await subscription.cancel();
  await monitor.close();

  key.close();
  CURRENT_USER.removeSubkey(subkeyPath);
  print('Done.');
}
