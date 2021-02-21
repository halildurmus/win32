// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Checks for network connectivity

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'package:win32/win32.dart';

// TODO: Remove this from here
class NetworkListManager extends INetworkListManager {
  static const CLSID_NetworkListManager =
      '{DCB00C01-570F-4A9B-8D69-199FDBA5723B}';

  NetworkListManager(Pointer<COMObject> ptr) : super(ptr);

  factory NetworkListManager.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_NetworkListManager);
    final iid = calloc<GUID>()..ref.setGUID(IID_INetworkListManager);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return NetworkListManager(ptr);
    } finally {
      calloc.free(clsid);
      calloc.free(iid);
    }
  }
}

void main() {
  // Initialize COM
  var hr = CoInitializeEx(nullptr, COINIT_APARTMENTTHREADED);
  if (FAILED(hr)) {
    throw WindowsException(hr);
  }

  final netManager = NetworkListManager.createInstance();
  final nlmConnectivity = calloc<Uint32>();
  hr = netManager.GetConnectivity(nlmConnectivity);
  if (FAILED(hr)) {
    throw WindowsException(hr);
  }

  final connectivity = nlmConnectivity.value;
  var isInternetConnected = false;

  // These two options are not mutually exclusive
  if (connectivity & NLM_CONNECTIVITY.NLM_CONNECTIVITY_IPV4_INTERNET ==
      NLM_CONNECTIVITY.NLM_CONNECTIVITY_IPV4_INTERNET) {
    print('Connected to the Internet via IPv4.');
    isInternetConnected = true;
  }

  if (connectivity & NLM_CONNECTIVITY.NLM_CONNECTIVITY_IPV6_INTERNET ==
      NLM_CONNECTIVITY.NLM_CONNECTIVITY_IPV6_INTERNET) {
    print('Connected to the Internet via IPv6.');
    isInternetConnected = true;
  }

  if (!isInternetConnected) {
    print('Not connected to the Internet.');
  }

  calloc.free(nlmConnectivity);
  calloc.free(netManager.ptr);

  CoUninitialize();
}
