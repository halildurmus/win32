// knownfolder.dart

// Shows usage of SHGetFolderPath to retrieve the user's home directory

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

void main() {
// Find user document folder -- new way
  final guidFolder = GUID.fromString(FOLDERID_Desktop);
  print('Looking for folder with ID: $guidFolder');

  var ptr = allocate<Uint16>(count: 1000);
  var ptrVoid = Pointer<Void>.fromAddress(ptr.address);
  final result = SHGetKnownFolderPath(guidFolder.addressOf, 0, NULL, ptrVoid);

  if (SUCCEEDED(result)) {
    final pszPath = Pointer<Utf16>.fromAddress(ptrVoid.address);
    print(fromUtf16(pszPath, MAX_PATH));

    CoTaskMemFree(ptrVoid);
  } else {
    if (result == E_FAIL) {
      print('SHGetKnownFolderPath returned error code E_FAIL');
    } else if (result == E_INVALIDARG) {
      print('SHGetKnownFolderPath returned error code E_INVALIDARG');
    } else {
      print(
          'SHGetKnownFolderPath returned error code 0x${result.toUnsigned(32).toRadixString(16)}');
    }
  }

  // final hresult =
  //     SHGetKnownFolderPath(FOLDERID_DOCUMENTS.addressOf, 0, NULL, ppszPath);
  // if (hresult == S_OK) {
  //   final pszPath = Pointer<Utf16>.fromAddress(ppszPath.address);
  //   print(fromUtf16(pszPath, MAX_PATH));
  // } else {
  //   print('COM error: 0x${hresult.toRadixString(16)}.');
  // }

  // // Find user document folder -- old way
  // final CSIDL_PERSONAL = 0x0005;
  // final CSIDL_FLAG_CREATE = 0x8000;
  // var path = allocate<Uint16>(count: MAX_PATH);
  // final result =
  //     SHGetFolderPath(NULL, CSIDL_PERSONAL | CSIDL_FLAG_CREATE, NULL, 0, path);
  // if (SUCCEEDED(result)) {
  //   print(fromUtf16(path, MAX_PATH));
  // } else {
  //   print(
  //       'SHGetFolderPath returned error code 0x${result.toUnsigned(32).toRadixString(16)}');
  // }
}
