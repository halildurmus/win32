// knownfolder.dart

// Shows usage of shell APIs to retrieve user's home dir

import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

String fromUtf16(Pointer pointer, int length) {
  final buf = StringBuffer();
  final ptr = Pointer<Uint16>.fromAddress(pointer.address);

  for (var v = 0; v < length; v++) {
    final charCode = ptr.elementAt(v).value;
    if (charCode != 0) {
      buf.write(String.fromCharCode(charCode));
    } else {
      return buf.toString();
    }
  }
  return buf.toString();
}

/// Get the path for a known Windows folder, using the classic (deprecated) API
void getFolderPath() {
  var path = allocate<Uint16>(count: MAX_PATH);

  final result = SHGetFolderPath(NULL, CSIDL_MYDOCUMENTS, NULL, 0, path);

  if (SUCCEEDED(result)) {
    print('SHGetFolderPath returned ${fromUtf16(path, MAX_PATH)}');
  } else {
    print(
        'SHGetFolderPath returned error code 0x${result.toUnsigned(32).toRadixString(16)}');
  }
}

/// Get the path for a known Windows folder, using the modern API
void getKnownFolderPath() {
  // final guidFolder = GUID.fromString(FOLDERID_Documents);
  final guidMangled = GUID.fromString('{FDD39AD0-238F-46AF-C769-0348856CB4AD}');

  final buffer = allocate<Uint16>(count: MAX_PATH);
  final ptr = Pointer<Uint64>.fromAddress(buffer.address);

  final hr = SHGetKnownFolderPath(guidMangled.addressOf, 0, 0, ptr);

  if (SUCCEEDED(hr)) {
    final ptrResult = Pointer<Uint64>.fromAddress(ptr.address);
    print(
        'SHGetKnownFolderPath returned ${fromUtf16(Pointer<Uint16>.fromAddress(ptrResult.value), MAX_PATH)}');
    CoTaskMemFree(Pointer<Void>.fromAddress(ptr.address));
  } else {
    if (hr == E_FAIL) {
      print('SHGetKnownFolderPath returned error code E_FAIL');
    } else if (hr == E_INVALIDARG) {
      print('SHGetKnownFolderPath returned error code E_INVALIDARG');
    } else {
      print('SHGetKnownFolderPath returned error code '
          '0x${hr.toUnsigned(32).toRadixString(16)}');
    }
  }
}

void main() {
  // getFolderPath();
  // print('');
  getKnownFolderPath();
}
