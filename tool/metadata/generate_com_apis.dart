// generate_com_classes.dart

import 'dart:io';

import 'package:args/args.dart';
import 'package:winmd/winmd.dart';

late final Scope scope;

class COMType {
  final String typeName;
  final int vTableStart;
  final bool generateClass;

  const COMType(this.typeName,
      {this.vTableStart = 0, this.generateClass = false});
}

const interfacesToGenerate = <COMType>[
  COMType('Windows.Win32.Automation.IDispatch', vTableStart: 3),
  COMType('Windows.Win32.Automation.IEnumVARIANT', vTableStart: 3),
  COMType('Windows.Win32.Automation.IErrorInfo', vTableStart: 3),
  COMType('Windows.Win32.Automation.ISupportErrorInfo', vTableStart: 3),
  COMType('Windows.Win32.Com.IBindCtx', vTableStart: 3),
  COMType('Windows.Win32.Com.IClassFactory', vTableStart: 3),
  COMType('Windows.Win32.Com.IEnumMoniker', vTableStart: 3),
  COMType('Windows.Win32.Com.IEnumString', vTableStart: 3),
  COMType('Windows.Win32.Com.IMoniker', vTableStart: 8),
  COMType('Windows.Win32.Com.IPersist', vTableStart: 3),
  COMType('Windows.Win32.Com.IPersistStream', vTableStart: 4),
  COMType('Windows.Win32.Com.IProvideClassInfo', vTableStart: 3),
  COMType('Windows.Win32.Com.IRunningObjectTable', vTableStart: 3),
  COMType('Windows.Win32.Com.IUnknown'),
  COMType('Windows.Win32.Intl.IEnumSpellingError',
      vTableStart: 3, generateClass: true),
  COMType('Windows.Win32.Intl.ISpellChecker',
      vTableStart: 3, generateClass: true),
  COMType('Windows.Win32.Intl.ISpellCheckerChangedEventHandler',
      vTableStart: 3, generateClass: true),
  COMType('Windows.Win32.Intl.ISpellCheckerFactory',
      vTableStart: 3, generateClass: true),
  COMType('Windows.Win32.Intl.ISpellingError',
      vTableStart: 3, generateClass: true),
  COMType('Windows.Win32.NetworkListManager.IEnumNetworkConnections',
      vTableStart: 7),
  COMType('Windows.Win32.NetworkListManager.IEnumNetworks', vTableStart: 7),
  COMType('Windows.Win32.NetworkListManager.INetwork', vTableStart: 7),
  COMType('Windows.Win32.NetworkListManager.INetworkConnection',
      vTableStart: 7),
  COMType('Windows.Win32.NetworkListManager.INetworkListManager',
      vTableStart: 7, generateClass: true),
  COMType('Windows.Win32.Shell.IApplicationActivationManager',
      vTableStart: 3, generateClass: true),
  COMType('Windows.Win32.Shell.IDesktopWallpaper',
      vTableStart: 3, generateClass: true),
  COMType('Windows.Win32.Shell.IEnumIDList', vTableStart: 3),
  COMType('Windows.Win32.Shell.IFileDialog', vTableStart: 4),
  COMType('Windows.Win32.Shell.IFileDialog2', vTableStart: 27),
  COMType('Windows.Win32.Shell.IFileDialogCustomize', vTableStart: 3),
  COMType('Windows.Win32.Shell.IFileIsInUse', vTableStart: 3),
  COMType('Windows.Win32.Shell.IFileOpenDialog',
      vTableStart: 27, generateClass: true),
  COMType('Windows.Win32.Shell.IFileSaveDialog',
      vTableStart: 27, generateClass: true),
  COMType('Windows.Win32.Shell.IKnownFolder', vTableStart: 3),
  COMType('Windows.Win32.Shell.IKnownFolderManager',
      vTableStart: 3, generateClass: true),
  COMType('Windows.Win32.Shell.IModalWindow', vTableStart: 3),
  COMType('Windows.Win32.Shell.IShellFolder', vTableStart: 3),
  COMType('Windows.Win32.Shell.IShellItem', vTableStart: 3),
  COMType('Windows.Win32.Shell.IShellItem2', vTableStart: 8),
  COMType('Windows.Win32.Shell.IShellItemArray', vTableStart: 3),
  COMType('Windows.Win32.Shell.IShellItemFilter', vTableStart: 3),
  COMType('Windows.Win32.StructuredStorage.ISequentialStream', vTableStart: 3),
  COMType('Windows.Win32.StructuredStorage.IStream', vTableStart: 5),
  COMType('Windows.Win32.WinRT.IInspectable', vTableStart: 3),
  COMType('Windows.Win32.Wmi.IEnumWbemClassObject', vTableStart: 3),
  COMType('Windows.Win32.Wmi.IWbemClassObject', vTableStart: 3),
  COMType('Windows.Win32.Wmi.IWbemContext', vTableStart: 3),
  COMType('Windows.Win32.Wmi.IWbemLocator',
      vTableStart: 3, generateClass: true),
  COMType('Windows.Win32.Wmi.IWbemServices', vTableStart: 3),
];

void main(List<String> args) {
  scope =
      MetadataStore.getScopeForFile(File('tool/metadata/Windows.Win32.winmd'));

  final parser = ArgParser()
    ..addOption('classDirectory', defaultsTo: 'lib/src/generated')
    ..addOption('testDirectory', defaultsTo: 'test/com');

  final argResults = parser.parse(args);
  final classDirectory = Directory(argResults['classDirectory'] as String);
  final testDirectory = Directory(argResults['testDirectory'] as String);

  for (final type in interfacesToGenerate) {
    final mdTypeDef = scope.findTypeDef(type.typeName)!;

    var clsid = '';
    if (type.generateClass) {
      final typeNameAsList = type.typeName.split('.');
      final fullyQualifiedClassName =
          (typeNameAsList.sublist(0, typeNameAsList.length - 1)
                ..add(typeNameAsList.last.substring(1)))
              .join('.');
      clsid = scope.findTypeDef(fullyQualifiedClassName)?.guid ?? '';
    }

    final parentInterface = mdTypeDef.interfaces.isNotEmpty
        ? mdTypeDef.interfaces.first.typeName.split('.').last
        : '';

    final projection = ClassProjector(mdTypeDef).projection
      ..inherits = parentInterface
      ..vtableStart = type.vTableStart
      ..sourceType = SourceType.com
      ..generateClass = type.generateClass
      ..clsid = clsid
      ..className = type.typeName.split('.').last.substring(1);

    final dartClass = TypePrinter.printProjection(projection);

    final classOutputFilename = type.typeName.split('.').last;
    final outputFile =
        File('${classDirectory.uri.toFilePath()}$classOutputFilename.dart');

    print('Writing:    ${outputFile.path}');
    outputFile.writeAsStringSync(dartClass);

    final dartTests = TypePrinter.printTests(projection);

    final testOutputFilename = type.typeName.split('.').last;
    final testFile = File(
        '${testDirectory.uri.toFilePath()}${testOutputFilename}_test.dart');

    print('Writing:    ${testFile.path}');
    testFile.writeAsStringSync(dartTests);
  }
}
