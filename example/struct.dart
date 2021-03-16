import 'package:winmd/winmd.dart';

// .class public sequential ansi sealed beforefieldinit Windows.Win32.SystemServices.PROCESS_INFORMATION
// 	extends [netstandard]System.ValueType
// {
// 	// Fields
// 	.field public valuetype [Windows.Win32.winmd]Windows.Win32.SystemServices.HANDLE hProcess
// 	.field public valuetype [Windows.Win32.winmd]Windows.Win32.SystemServices.HANDLE hThread
// 	.field public uint32 dwProcessId
// 	.field public uint32 dwThreadId

// } // end of class Windows.Win32.SystemServices.PROCESS_INFORMATION

// .class public sequential ansi sealed beforefieldinit Windows.Win32.Gdi.XFORM
// 	extends [netstandard]System.ValueType
// {
// 	// Fields
// 	.field public float32 eM11
// 	.field public float32 eM12
// 	.field public float32 eM21
// 	.field public float32 eM22
// 	.field public float32 eDx
// 	.field public float32 eDy

// } // end of class Windows.Win32.Gdi.XFORM

void printStruct(TypeDef typedef) {
  print('class ${typedef.typeName.split('.').last} extends Struct {');

  for (final field in typedef.fields) {
    final nativeType = TypeProjector(field.typeIdentifier).nativeType;
    final dartType = TypeProjector(field.typeIdentifier).dartType;
    print('  @$nativeType() external $dartType ${field.name};');
  }
  print('}\n');
}

void main() {
  final scope = MetadataStore.getWin32Scope();
  printStruct(scope['Windows.Win32.Gdi.XFORM']!);
  printStruct(scope['Windows.Win32.SystemServices.PROCESS_INFORMATION']!);
  printStruct(scope['Windows.Win32.SystemServices.STARTUPINFOW']!);
}
