import 'win32api.dart';

void main() {
  final win32 = Win32API('tool/win32/win32api.json');

  win32.saveAsJson('tool/win32/win32api.json');
}
