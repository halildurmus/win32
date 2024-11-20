import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void main() {
  CoInitializeEx(COINIT_MULTITHREADED);

  final method = b('GET');
  final url = b('https://dart.dev');
  final varFalse = Variant.bool$(false);
  final varEmpty = Variant()..vt = VT_ERROR;

  // Create an instance of IWinHttpRequest interface.
  final winHttpRequest = createInstance<IWinHttpRequest>(WinHttpRequest)
    ..open(method.ptr, url.ptr, varFalse.ref) // Open an HTTP connection.
    ..send(varEmpty.ref); // Send request.

  // Get response text.
  final responseText = winHttpRequest.responseText.toDartString();
  print(responseText);
}
