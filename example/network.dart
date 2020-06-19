// network.dart

// Checks for network connectivity

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'package:win32/win32.dart';

void main() {
  // Initialize COM
  var hr = CoInitializeEx(nullptr, COINIT_APARTMENTTHREADED);
  if (FAILED(hr)) {
    throw WindowsException(hr);
  }

  final netManager = NetworkListManager.createInstance();
  final nlmConnectivity = allocate<Uint32>();
  hr = netManager.GetConnectivity(nlmConnectivity);
  if (FAILED(hr)) {
    throw WindowsException(hr);
  }

  final connectivity = nlmConnectivity.value;

  // These two options are not mutually exclusive
  if (connectivity & NLM_CONNECTIVITY.NLM_CONNECTIVITY_IPV4_INTERNET ==
      NLM_CONNECTIVITY.NLM_CONNECTIVITY_IPV4_INTERNET) {
    print('Connected to the Internet via IPv4.');
  }
  if (connectivity & NLM_CONNECTIVITY.NLM_CONNECTIVITY_IPV6_INTERNET ==
      NLM_CONNECTIVITY.NLM_CONNECTIVITY_IPV6_INTERNET) {
    print('Connected to the Internet via IPv6.');
  }

  free(nlmConnectivity);
  free(netManager.ptr);

  CoUninitialize();
}
