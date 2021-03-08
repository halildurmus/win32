import 'dart:io';

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

void main() {
  final scope = MetadataStore.getScopeForFile(File('bin/Windows.Win32.winmd'));
  final typedef =
      scope.findTypeDef('Windows.Win32.SystemServices.PROCESS_INFORMATION')!;
  print(typedef.fields.length);

  for (final field in typedef.fields) {
    final nativeType = TypeProjector(field.typeIdentifier).nativeType;
    print('${field.name} $nativeType');
  }
}
