import 'package:win32_registry/win32_registry.dart';

void main() async {
  final hkcu = Registry.currentUser;
  const subkeyName = 'DemoTestKey';
  final subkey = hkcu.createKey(subkeyName);

  const string = RegistryValue.string(
    'TestString',
    'The human race has one really effective weapon, and that is laughter.',
  );
  subkey.createValue(string);

  // Subscribe to the onChanged stream to monitor changes to the subkey.
  final subscription = subkey.onChanged().listen(
    (_) => print('Subkey changed.'),
    cancelOnError: true,
  );

  print('Monitoring registry key changes for 30 seconds...');
  // Now, make a change to the subkey in RegEdit to trigger the onChanged event.
  // For example, change the value of the "TestString" value in the subkey or
  // add a new value to the subkey.

  // Stop monitoring after 30 seconds.
  await Future.delayed(const Duration(seconds: 30), () async {
    await subscription.cancel();
    subkey.close();
    hkcu
      ..deleteKey(subkeyName)
      ..close();
    print('Stopped monitoring.');
  });
}
