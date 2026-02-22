import 'dart:ffi';
import 'dart:typed_data';

import 'package:win32/win32.dart';

void main() {
  // 1. Create a unique GUID using the Windows API:
  var nativeGuid = CoCreateGuid();
  print(nativeGuid.ref);
  free(nativeGuid);

  // 2. Create a GUID from a string:
  print(GUID('{6B29FC40-CA47-1067-B31D-00DD010662DA}'));

  // 3. Create a GUID from individual components:
  print(
    GUID.fromComponents(
      0x6B29FC40,
      0xCA47,
      0x1067,
      Uint8List.fromList([0xB3, 0x1D, 0x00, 0xDD, 0x01, 0x06, 0x62, 0xDA]),
    ),
  );

  // 4. Convert a GUID to native GUID which can be passed to Windows APIs:
  final guid = GUID('{6B29FC40-CA47-1067-B31D-00DD010662DA}');
  nativeGuid = guid.toNative();
  print(nativeGuid.ref);
  free(nativeGuid);
}
