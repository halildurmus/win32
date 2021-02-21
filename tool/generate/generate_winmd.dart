// generate_winmd.dart

import 'dart:io';
import 'package:winmd/winmd.dart';

class COMType {
  final String typeName;
  final String inheritsFrom;
  final int vTableStart;

  const COMType(this.typeName, this.inheritsFrom, this.vTableStart);
}

const typesToGenerate = <COMType>[
  COMType('Windows.Win32.Com.IUnknown', '', 0),
  COMType('Windows.Win32.Automation.IErrorInfo', 'IUnknown', 3),
  COMType('Windows.Win32.WinRT.IInspectable', 'IUnknown', 3),
  COMType('Windows.Win32.NetworkListManager.INetwork', 'IDispatch', 7),
  COMType(
      'Windows.Win32.NetworkListManager.INetworkListManager', 'IDispatch', 7),
];

void main(List<String> args) {
  final scope = MetadataStore.getScopeForFile('tool/win32/Windows.Win32.winmd');

  final outputDirectory = (args.length == 1)
      ? Directory(args.first)
      : Directory('lib/src/generated');

  for (final type in typesToGenerate) {
    final mdTypeDef = scope.findTypeDef(type.typeName)!;

    final projection = TypeBuilder.projectWindowsType(mdTypeDef);
    projection.inherits = type.inheritsFrom;
    projection.vtableStart = type.vTableStart;
    projection.sourceType = SourceType.com;
    final dartClass = TypePrinter.printType(projection);

    final outputFilename = type.typeName.split('.').last;
    final outputFile =
        File('${outputDirectory.uri.toFilePath()}$outputFilename.dart');

    print('Writing:    ${outputFile.path}');
    outputFile.writeAsStringSync(dartClass);
  }
}
