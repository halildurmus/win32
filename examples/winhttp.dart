import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void main() {
  // Initialize COM
  CoInitializeEx(nullptr, COINIT_APARTMENTTHREADED);

  final method = BSTR.fromString('GET');
  final url = BSTR.fromString('https://dart.dev');

  final varFalse = calloc<VARIANT>();
  final varEmpty = calloc<VARIANT>();

  VariantInit(varFalse);
  varFalse.ref.vt = VT_BOOL;
  varFalse.ref.boolVal = false;

  VariantInit(varEmpty);
  varEmpty.ref.vt = VT_ERROR;

  try {
    // Create an instance of WinHttpRequest class
    final winHttpRequest = WinHttpRequest.createInstance();

    // Open an HTTP connection
    var hr = winHttpRequest.open(method.ptr, url.ptr, varFalse.ref);
    if (FAILED(hr)) throw WindowsException(hr);

    // Send request
    hr = winHttpRequest.send(varEmpty.ref);
    if (FAILED(hr)) throw WindowsException(hr);

    // Get response text
    final responseText = winHttpRequest.responseText.toDartString();
    print(responseText);
  } finally {
    VariantClear(varFalse);
    VariantClear(varEmpty);
    free(varFalse);
    free(varEmpty);
    method.free();
    url.free();
  }
}
