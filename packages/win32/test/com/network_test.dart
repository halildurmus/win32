@TestOn('windows')
library;

import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:ffi/ffi.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

import '../helpers.dart';

void main() {
  group('NetworkListManager', () {
    setUpAll(initializeCom);

    test('network is connected', () {
      final nlm = createInstance<INetworkListManager>(NetworkListManager);
      check(nlm.isConnected).isTrue();
    });

    test('network is connected to the internet', () {
      final nlm = createInstance<INetworkListManager>(NetworkListManager);
      check(nlm.isConnectedToInternet).isTrue();
    });

    test('can enumerate a connected network', () {
      final nlm = createInstance<INetworkListManager>(NetworkListManager);
      final netPtr = loggingCalloc<VTablePointer>();
      try {
        final networks = nlm.getNetworks(NLM_ENUM_NETWORK_CONNECTED);
        check(networks).isNotNull();
        networks!.next(1, netPtr, null);
        final network = INetwork(netPtr.value);
        check(network.isConnected).isTrue();
      } finally {
        free(netPtr);
      }
    });

    test('first network connection has a description', () {
      final nlm = createInstance<INetworkListManager>(NetworkListManager);
      final netPtr = loggingCalloc<VTablePointer>();
      try {
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
      } finally {
        free(netPtr);
      }
    });

    test('connected networks enumeration is consistent', () {
      final nlm = createInstance<INetworkListManager>(NetworkListManager);
      final netPtr = loggingCalloc<VTablePointer>();
      try {
        final networks = nlm.getNetworks(NLM_ENUM_NETWORK_CONNECTED);
        check(networks).isNotNull();

        final pceltFetched = loggingCalloc<Uint32>();
        var count = 0;
        while (true) {
          networks!.next(1, netPtr, pceltFetched);
          if (pceltFetched.value == 0) break;

          final network = INetwork(netPtr.value);
          // Ensure all enumerated networks are connected.
          check(network.isConnected).isTrue();
          count++;
        }

        // Assuming there is at least one connected network.
        check(count).isGreaterThan(0);
        free(pceltFetched);
      } finally {
        free(netPtr);
      }
    });

    test('network properties can be queried', () {
      final nlm = createInstance<INetworkListManager>(NetworkListManager);
      final netPtr = loggingCalloc<VTablePointer>();
      try {
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
      } finally {
        free(netPtr);
      }
    });
  });
}
