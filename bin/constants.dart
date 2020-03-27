import 'dart:ffi';
import 'package:win32/win32.dart';

void main() {
  print('WNDCLASS has size: ${sizeOf<WNDCLASS>()}');
  print('MSG has size: ${sizeOf<MSG>()}');

  print('Pointer has size: ${sizeOf<Pointer<NativeFunction>>()}');
}
