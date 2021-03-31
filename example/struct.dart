import 'package:winmd/winmd.dart';

final scope = MetadataStore.getWin32Scope();

void printStruct(String typedef) =>
    print(TypePrinter.printStruct(scope[typedef]!, typedef.split('.').last));

// Things that don't work

// Union
// "CHAR_INFO": {
//     "namespace": "Windows.Win32.SystemServices.CHAR_INFO",
//     "comment": "Specifies a Unicode or ANSI character and its attributes. This structure is used by console functions to read from and write to a console screen buffer."
// },

// Contains a STARTUPINFOW (not a STARTUPINFO)
// "STARTUPINFOEXW": {
//     "namespace": "Windows.Win32.SystemServices.STARTUPINFOEXW",
//     "comment": "Specifies the window station, desktop, standard handles, and attributes for a new process. It is used with the CreateProcess and CreateProcessAsUser functions."
// },

void main() {
  printStruct('Windows.Win32.DisplayDevices.DEVMODEW');
  // printStruct('Windows.Win32.SystemServices.STARTUPINFOEXW');
  // printStruct('Windows.Win32.SystemServices.CHAR_INFO');
}
