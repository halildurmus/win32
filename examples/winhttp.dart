// Demonstrates performing an HTTP GET request using WinHTTP via the
// IWinHttpRequest COM interface.

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void main() {
  CoInitializeEx(COINIT_MULTITHREADED);

  using((arena) {
    final method = arena.bstr('GET');
    final url = arena.bstr('https://dart.dev');
    final varFalse = arena.using(Variant.bool$(false), (v) => v.free());
    final varEmpty = arena.using(Variant()..vt = VT_ERROR, (v) => v.free());
    final request = arena.com<IWinHttpRequest>(WinHttpRequest)
      ..open(method, url, varFalse.ref)
      ..send(varEmpty.ref);
    final bstrResponse = request.responseText;
    final responseText = bstrResponse.toDartString();
    SysFreeString(bstrResponse);
    print(responseText);
  });
}
