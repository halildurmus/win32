import 'package:winmd/winmd.dart';

final scope = MetadataStore.getWin32Scope();

void printStruct(String typedef) =>
    print(TypePrinter.printStruct(scope[typedef]!, typedef.split('.').last));

// Union
// "CHAR_INFO": {
//     "namespace": "Windows.Win32.SystemServices.CHAR_INFO",
//     "comment": "Specifies a Unicode or ANSI character and its attributes. This structure is used by console functions to read from and write to a console screen buffer."
// },

// Bug: https://github.com/microsoft/win32metadata/issues/390
// 'Windows.Win32.SystemServices.STARTUPINFOEXW'

void main() {
  // printStruct('Windows.Win32.DisplayDevices.DEVMODEW');
  // printStruct('Windows.Win32.SystemServices.STARTUPINFOEXW');
  printStruct('Windows.Win32.SystemServices.CHAR_INFO');
}
