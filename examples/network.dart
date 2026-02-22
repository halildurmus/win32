// Get information about the network connections on the current device.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void main() {
  CoInitializeEx(COINIT_MULTITHREADED);

  using((arena) {
    final netManager = arena.com<INetworkListManager>(NetworkListManager);
    final connectivity = netManager.getConnectivity();
    var isInternetConnected = false;

    // These two options are not mutually exclusive.
    if (connectivity & NLM_CONNECTIVITY_IPV4_INTERNET ==
        NLM_CONNECTIVITY_IPV4_INTERNET) {
      print('Connected to the Internet via IPv4.');
      isInternetConnected = true;
    }

    if (connectivity & NLM_CONNECTIVITY_IPV6_INTERNET ==
        NLM_CONNECTIVITY_IPV6_INTERNET) {
      print('Connected to the Internet via IPv6.');
      isInternetConnected = true;
    }

    if (!isInternetConnected) {
      print('Not connected to the Internet.');
    }

    final enumerator = arena.adopt(
      netManager.getNetworks(NLM_ENUM_NETWORK_ALL)!,
    );
    print('\nNetworks (connected and disconnected) on this machine:');

    final elements = arena<ULONG>();
    final netPtr = arena<VTablePointer>();
    enumerator.next(1, netPtr, elements);
    while (elements.value == 1) {
      final network = arena.adopt(INetwork(netPtr.value));
      final pszDescription = arena.using(network.getDescription(), free);
      final networkName = pszDescription.toDartString();
      final isNetworkConnected = network.isConnected;
      print(
        '$networkName: ${isNetworkConnected ? 'connected' : 'disconnected'}',
      );
      enumerator.next(1, netPtr, elements);
    }
  });
}
