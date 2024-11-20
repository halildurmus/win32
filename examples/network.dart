// Get information about the network connections on the current device.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void main() {
  CoInitializeEx(COINIT_MULTITHREADED);

  final netManager = createInstance<INetworkListManager>(NetworkListManager);
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

  final enumerator = netManager.getNetworks(NLM_ENUM_NETWORK_ALL)!;
  print('\nNetworks (connected and disconnected) on this machine:');

  final elements = loggingCalloc<ULONG>();
  final netPtr = loggingCalloc<VTablePointer>();
  try {
    enumerator.next(1, netPtr, elements);
    while (elements.value == 1) {
      final network = INetwork(netPtr.value);
      final networkName = network.getDescription().toDartString();
      final isNetworkConnected = network.isConnected;
      print(
        '$networkName: ${isNetworkConnected ? 'connected' : 'disconnected'}',
      );
      enumerator.next(1, netPtr, elements);
    }
  } finally {
    free(netPtr);
    free(elements);
  }

  print('All done');
}
