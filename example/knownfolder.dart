// console.dart

// Shows usage of console APIs

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void main() {
  // Find user document folder
  final CSIDL_PERSONAL = 0x0005;
  final CSIDL_FLAG_CREATE = 0x8000;
  var path = allocate<Utf16>(count: MAX_PATH);
  final result =
      SHGetFolderPath(NULL, CSIDL_PERSONAL | CSIDL_FLAG_CREATE, NULL, 0, path);
  print(result.toString());
}
