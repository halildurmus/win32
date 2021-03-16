import 'package:winmd/winmd.dart';

final scope = MetadataStore.getWin32Scope();

void printStruct(String typedef) =>
    print(TypePrinter.printStruct(scope[typedef]!, typedef.split('.').last));

void main() {
  // printStruct('Windows.Win32.Gdi.XFORM');
  // printStruct('Windows.Win32.SystemServices.PROCESS_INFORMATION');
  printStruct('Windows.Win32.SystemServices.STARTUPINFOW');
}
