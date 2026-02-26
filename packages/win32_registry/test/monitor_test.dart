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

  const keyPath = 'Win32RegistryMonitorTestKey';
  const subkeyPath = 'Win32RegistryMonitorTestSubkey';
  const stringValue = RegistryValue.string('Hello, world!');

  /// Opens [keyPath] + [subkeyPath] under CURRENT_USER, creates [monitor],
  /// and registers teardowns so every test cleans up automatically.
  Future<({RegistryKey key, RegistryKey subkey, RegistryChangeMonitor monitor})>
  setup({RegistryChangeMonitor? Function(RegistryKey)? buildMonitor}) async {
    final key = CURRENT_USER.create(keyPath);
    final subkey = key.create(subkeyPath);
    final monitor =
        (buildMonitor ?? RegistryChangeMonitor.new)(key) ??
        RegistryChangeMonitor(key);

    addTearDown(() async {
      await monitor.close();
      subkey.close();
      key.close();
      CURRENT_USER.removeSubkey(keyPath);
    });

    return (key: key, subkey: subkey, monitor: monitor);
  }

  /// Waits for the next event on [events], triggers [action], then awaits it.
  Future<void> awaitChange(
    Stream<RegistryChangeEvent> events,
    void Function() action,
  ) async {
    final next = events.first;
    action();
    await next;
  }

  group('RegistryChangeMonitor', () {
    Future<void> runScenario({
      required bool includeSubkeys,
      required bool expectSubkeyEvent,
    }) async {
      final (:key, :subkey, :monitor) = await setup(
        buildMonitor: (k) =>
            RegistryChangeMonitor(k, includeSubkeys: includeSubkeys),
      );
      await monitor.start();

      final received = <RegistryChangeEvent>[];
      final events = monitor.events;
      addTearDown(events.listen(received.add).cancel);

      await awaitChange(events, () => key.setValue('StringValue', stringValue));
      check(received.length).equals(1);

      await awaitChange(
        events,
        () => key.setValue('IntValue', const RegistryValue.dword(1234)),
      );
      check(received.length).equals(2);

      var subkeyFired = false;
      addTearDown(events.listen((_) => subkeyFired = true).cancel);
      subkey.setValue('SubValue', stringValue);
      await Future.delayed(const Duration(milliseconds: 20));
      check(subkeyFired).equals(expectSubkeyEvent);
    }

    test('emits only for direct key changes', () async {
      await runScenario(includeSubkeys: false, expectSubkeyEvent: false);
    });

    test('emits for subkey changes when enabled', () async {
      await runScenario(includeSubkeys: true, expectSubkeyEvent: true);
    });

    group('lifecycle', () {
      test('does not emit after monitor is stopped', () async {
        final (:key, subkey: _, :monitor) = await setup();
        await monitor.start();
        await monitor.stop();

        var emitted = false;
        addTearDown(monitor.events.listen((_) => emitted = true).cancel);

        key.setValue('StringValue', stringValue);
        await Future.delayed(const Duration(milliseconds: 100));

        check(emitted).isFalse();
      });

      test('can be restarted and resumes emitting', () async {
        final (:key, subkey: _, :monitor) = await setup();
        await monitor.start();
        await monitor.stop();
        await monitor.start();

        final received = <RegistryChangeEvent>[];
        final events = monitor.events;
        addTearDown(events.listen(received.add).cancel);

        await awaitChange(
          events,
          () => key.setValue('StringValue', stringValue),
        );
        check(received.length).equals(1);
      });
    });
  });
}
