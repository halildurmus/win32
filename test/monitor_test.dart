@TestOn('windows')
library;

import 'package:checks/checks.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:test/scaffolding.dart';
import 'package:win32_registry/win32_registry.dart';

void main() {
  setUpAll(LeakTracker.enableInDebug);

  setUp(LeakTracker.reset);

  tearDown(LeakTracker.verifyNoLeaksInDebug);

  group('RegistryChangeMonitor', () {
    Future<void> runScenario({
      required bool includeSubkeys,
      required bool expectSubkeyEvent,
    }) async {
      const keyPath = 'Win32RegistryMonitorTestKey';
      const subkeyPath = 'Win32RegistryMonitorTestSubkey';

      final key = CURRENT_USER.create(keyPath);
      final subkey = key.create(subkeyPath);
      final monitor = RegistryChangeMonitor(
        key,
        includeSubkeys: includeSubkeys,
      );

      addTearDown(() async {
        await monitor.close();
        subkey.close();
        key.close();
        CURRENT_USER.removeSubkey(keyPath);
      });

      await monitor.start();
      final events = monitor.events;

      final received = <RegistryChangeEvent>[];
      final sub = events.listen(received.add);
      addTearDown(sub.cancel);

      const stringValue = RegistryValue.string('Some text here.');

      // ── change main key (1)
      {
        final next = events.first;
        key.setValue('StringValue', stringValue);
        await next;
      }

      check(received.length).equals(1);

      // ── change main key (2)
      {
        final next = events.first;
        key.setValue('IntValue', const .dword(1234));
        await next;
      }

      check(received.length).equals(2);

      // ── change subkey
      {
        var fired = false;
        final subListener = events.listen((_) => fired = true);

        subkey.setValue('SubValue', stringValue);

        await Future<void>.delayed(const Duration(milliseconds: 20));
        await subListener.cancel();

        check(fired).equals(expectSubkeyEvent);
      }
    }

    test('emits only for direct key changes', () async {
      await runScenario(includeSubkeys: false, expectSubkeyEvent: false);
    });

    test('emits for subkey changes when enabled', () async {
      await runScenario(includeSubkeys: true, expectSubkeyEvent: true);
    });
  });
}
