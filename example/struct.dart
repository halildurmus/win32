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

// Array
// "SYSTEM_BATTERY_STATE": {
//     "namespace": "Windows.Win32.SystemServices.SYSTEM_BATTERY_STATE",
//     "comment": "Contains information about the current state of the system battery."
// },

// [6, 20, 8, 1, 1, 16, 1, 0]
// xx array i4 dims1 num1 size16 lonum1 lo0

void main() {
  // printStruct('Windows.Win32.Gdi.XFORM');
  printStruct('Windows.Win32.Gdi.DESIGNVECTOR');
  // printStruct('Windows.Win32.SystemServices.PROCESS_INFORMATION');
  // printStruct('Windows.Win32.SystemServices.STARTUPINFOEXW');
  // printStruct('Windows.Win32.StructuredStorage.STATSTG');
  // printStruct('Windows.Win32.SystemServices.POWERBROADCAST_SETTING');
  // printStruct('Windows.Win32.SystemServices.SYSTEM_BATTERY_STATE');
}
