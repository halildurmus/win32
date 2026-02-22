@TestOn('windows')
library;

import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

import '../helpers.dart';

void main() {
  setUpAll(LeakTracker.enableInDebug);

  setUp(LeakTracker.reset);

  tearDown(LeakTracker.verifyNoLeaksInDebug);

  group('NetworkListManager', () {
    setUpAll(initializeCom);

    test('network is connected', () {
      final nlm = createInstance<INetworkListManager>(NetworkListManager);
      check(nlm.isConnected).isTrue();
      check(nlm.release()).isZero();
    });

    test('network is connected to the internet', () {
      final nlm = createInstance<INetworkListManager>(NetworkListManager);
      check(nlm.isConnectedToInternet).isTrue();
      check(nlm.release()).isZero();
    });

    test('can enumerate a connected network', () {
      using((arena) {
        final nlm = arena.com<INetworkListManager>(NetworkListManager);
        final netPtr = arena<VTablePointer>();
        final networks = nlm.getNetworks(NLM_ENUM_NETWORK_CONNECTED);
        check(networks).isNotNull();
        networks!.next(1, netPtr, null);
        final network = INetwork(netPtr.value);
        check(network.isConnected).isTrue();
        check(network.release()).isZero();
        check(networks.release()).isZero();
      });
    });

    test('first network connection has a description', () {
      using((arena) {
        final nlm = arena.com<INetworkListManager>(NetworkListManager);
        final netPtr = arena<VTablePointer>();
        final networks = nlm.getNetworks(NLM_ENUM_NETWORK_CONNECTED);
        check(networks).isNotNull();
        networks!.next(1, netPtr, null);
        final network = INetwork(netPtr.value);
        final description = network.getDescription();
        check(description.isNull).isFalse();
        final descString = description.toDartString();

        // This is a wireless network or Ethernet network name. Assume that it's
        // more than one character long, and test for that.
        check(descString.length).isGreaterThan(1);

        SysFreeString(description);
        check(network.release()).isZero();
        check(networks.release()).isZero();
      });
    });

    test('connected networks enumeration is consistent', () {
      using((arena) {
        final nlm = arena.com<INetworkListManager>(NetworkListManager);
        final netPtr = arena<VTablePointer>();
        final networks = nlm.getNetworks(NLM_ENUM_NETWORK_CONNECTED);
        check(networks).isNotNull();

        final pceltFetched = arena<Uint32>();
        var count = 0;
        while (true) {
          networks!.next(1, netPtr, pceltFetched);
          if (pceltFetched.value == 0) break;

          final network = INetwork(netPtr.value);
          // Ensure all enumerated networks are connected.
          check(network.isConnected).isTrue();
          check(network.release()).isZero();
          count++;
        }

        check(networks.release()).isZero();

        // Assuming there is at least one connected network.
        check(count).isGreaterThan(0);
      });
    });

    test('network properties can be queried', () {
      using((arena) {
        final nlm = arena.com<INetworkListManager>(NetworkListManager);
        final netPtr = arena<VTablePointer>();
        final networks = nlm.getNetworks(NLM_ENUM_NETWORK_CONNECTED);
        check(networks).isNotNull();

        networks!.next(1, netPtr, null);
        final network = INetwork(netPtr.value);

        // Query network name.
        final name = network.getName();
        check(name.isNull).isFalse();
        check(name.toDartString().length).isGreaterThan(1);
        SysFreeString(name);

        // Query network category.
        final category = network.getCategory();
        check(category).isIn([
          NLM_NETWORK_CATEGORY_PUBLIC,
          NLM_NETWORK_CATEGORY_PRIVATE,
          NLM_NETWORK_CATEGORY_DOMAIN_AUTHENTICATED,
        ]);

        check(network.release()).isZero();
        check(networks.release()).isZero();
      });
    });
  });
}
