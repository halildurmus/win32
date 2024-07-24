@TestOn('windows')
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';

import 'helpers.dart';

void main() {
  group('Network testing', () {
    setUpAll(initializeCOM);

    test('network is connected', () {
      final nlm = NetworkListManager.createInstance();
      expect(nlm.isConnected, equals(VARIANT_TRUE));
    });

    test('network is connected to the internet', () {
      final nlm = NetworkListManager.createInstance();
      expect(nlm.isConnectedToInternet, equals(VARIANT_TRUE));
    });

    test('can enumerate a network connection', () {
      final nlm = NetworkListManager.createInstance();
      final enumPtr = calloc<COMObject>();
      final netPtr = calloc<COMObject>();

      expect(
          nlm.getNetworks(
              NLM_ENUM_NETWORK.NLM_ENUM_NETWORK_CONNECTED, enumPtr.cast()),
          equals(S_OK));

      final enumerator = IEnumNetworks(enumPtr);
      expect(enumerator.next(1, netPtr.cast(), nullptr), equals(S_OK));

      final network = INetwork(netPtr);

      // network should be connected, given the filter
      expect(network.isConnected,
          anyOf(equals(VARIANT_TRUE), equals(VARIANT_FALSE)));
    });

    test('first network connection has a description', () {
      final nlm = NetworkListManager.createInstance();
      final enumPtr = calloc<COMObject>();
      final netPtr = calloc<COMObject>();
      final descPtr = calloc<Pointer<Utf16>>();

      expect(
          nlm.getNetworks(
              NLM_ENUM_NETWORK.NLM_ENUM_NETWORK_CONNECTED, enumPtr.cast()),
          equals(S_OK));

      final enumerator = IEnumNetworks(enumPtr);
      expect(enumerator.next(1, netPtr.cast(), nullptr), equals(S_OK));

      final network = INetwork(netPtr);
      expect(network.getDescription(descPtr), equals(S_OK));

      // This is a wireless network or Ethernet network name. Assume that it's
      // more than one character long, and test for that.
      expect(descPtr.value.length, greaterThan(1));

      SysFreeString(descPtr.value);
      free(descPtr);
    });

    tearDown(forceGC);
    tearDownAll(CoUninitialize);
  });
}
