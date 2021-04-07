import 'dart:ffi';
import 'package:ffi/ffi.dart';

import 'package:win32/win32.dart';

void main() {
  final familyName =
      'Microsoft.WindowsCalculator_8wekyb3d8bbwe'.toNativeUtf16();
  final count = calloc<Uint32>();
  final bufferLength = calloc<Uint32>();
  final packageProperties = calloc<Uint32>();
  final hr = FindPackagesByPackageFamily(
      familyName, 0, count, nullptr, bufferLength, nullptr, packageProperties);
  print(WindowsException(hr));
  print(count.value);
}
