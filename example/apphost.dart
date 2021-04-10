import 'dart:ffi';
import 'package:ffi/ffi.dart';

import 'package:win32/win32.dart';

void main() {
  CoInitializeEx(nullptr, COINIT_APARTMENTTHREADED);
  final appsFolder = calloc<GUID>()..ref.setGUID(FOLDERID_AppsFolder);
  final ppkf = calloc<COMObject>();

  final kfm = KnownFolderManager.createInstance();
  var hr = kfm.GetFolder(appsFolder, ppkf.cast());
  if (FAILED(hr)) {
    throw WindowsException(hr);
  }

  final ikf = IKnownFolder(ppkf);
  final ppszPath = calloc<Pointer<Utf16>>();
  hr = ikf.GetPath(0, ppszPath);
  if (FAILED(hr)) {
    throw WindowsException(hr);
  }
  print(ppszPath.value.toDartString());

//   final familyName =
//       'Microsoft.WindowsCalculator_8wekyb3d8bbwe'.toNativeUtf16();
//   final count = calloc<Uint32>();
//   final bufferLength = calloc<Uint32>();
//   final packageProperties = calloc<Uint32>();
//   final hr = FindPackagesByPackageFamily(
//       familyName, 0, count, nullptr, bufferLength, nullptr, packageProperties);
//   print(WindowsException(hr));
//   print(count.value);
// }
}
