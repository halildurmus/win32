// generate_com_classes.dart

import 'dart:io';

import 'package:args/args.dart';
import 'package:winmd/winmd.dart';

const interfacesToGenerate = <String>[
  'Windows.Win32.Automation.IDispatch',
  'Windows.Win32.Automation.IEnumVARIANT',
  'Windows.Win32.Automation.IErrorInfo',
  'Windows.Win32.Automation.ISupportErrorInfo',
  'Windows.Win32.Com.IBindCtx',
  'Windows.Win32.Com.IClassFactory',
  'Windows.Win32.Com.IConnectionPoint',
  'Windows.Win32.Com.IConnectionPointContainer',
  'Windows.Win32.Com.IEnumMoniker',
  'Windows.Win32.Com.IEnumString',
  'Windows.Win32.Com.IMoniker',
  'Windows.Win32.Com.IPersist',
  'Windows.Win32.Com.IPersistStream',
  'Windows.Win32.Com.IProvideClassInfo',
  'Windows.Win32.Com.IRunningObjectTable',
  'Windows.Win32.Com.IUnknown',
  'Windows.Win32.Intl.IEnumSpellingError',
  'Windows.Win32.Intl.ISpellChecker',
  'Windows.Win32.Intl.ISpellCheckerChangedEventHandler',
  'Windows.Win32.Intl.ISpellCheckerFactory',
  'Windows.Win32.Intl.ISpellingError',
  'Windows.Win32.NetworkListManager.IEnumNetworkConnections',
  'Windows.Win32.NetworkListManager.IEnumNetworks',
  'Windows.Win32.NetworkListManager.INetwork',
  'Windows.Win32.NetworkListManager.INetworkConnection',
  'Windows.Win32.NetworkListManager.INetworkListManager',
  'Windows.Win32.NetworkListManager.INetworkListManagerEvents',
  'Windows.Win32.Shell.IApplicationActivationManager',
  'Windows.Win32.Shell.IDesktopWallpaper',
  'Windows.Win32.Shell.IEnumIDList',
  'Windows.Win32.Shell.IFileDialog',
  'Windows.Win32.Shell.IFileDialog2',
  'Windows.Win32.Shell.IFileDialogCustomize',
  'Windows.Win32.Shell.IFileIsInUse',
  'Windows.Win32.Shell.IFileOpenDialog',
  'Windows.Win32.Shell.IFileSaveDialog',
  'Windows.Win32.Shell.IKnownFolder',
  'Windows.Win32.Shell.IKnownFolderManager',
  'Windows.Win32.Shell.IModalWindow',
  'Windows.Win32.Shell.IShellFolder',
  'Windows.Win32.Shell.IShellItem',
  'Windows.Win32.Shell.IShellItem2',
  'Windows.Win32.Shell.IShellItemArray',
  'Windows.Win32.Shell.IShellItemFilter',
  'Windows.Win32.StructuredStorage.ISequentialStream',
  'Windows.Win32.StructuredStorage.IStream',
  'Windows.Win32.WinRT.IInspectable',
  'Windows.Win32.Wmi.IEnumWbemClassObject',
  'Windows.Win32.Wmi.IWbemClassObject',
  'Windows.Win32.Wmi.IWbemContext',
  'Windows.Win32.Wmi.IWbemLocator',
  'Windows.Win32.Wmi.IWbemServices',
];

int vTableStart(TypeDef? type) {
  if (type == null) {
    return 0;
  }

  if (type.isInterface && type.interfaces.isNotEmpty) {
    var sum = 0;

    for (final interface in type.interfaces) {
      sum += interface.methods.length + vTableStart(interface);
    }

    return sum;
  }

  return 0;
}

void main(List<String> args) {
  final scope = MetadataStore.getWin32Scope();

  final parser = ArgParser()
    ..addOption('classDirectory', defaultsTo: 'lib/src/com')
    ..addOption('testDirectory', defaultsTo: 'test/com');

  final argResults = parser.parse(args);
  final classDirectory = Directory(argResults['classDirectory'] as String);
  final testDirectory = Directory(argResults['testDirectory'] as String);

  for (final type in interfacesToGenerate) {
    final mdTypeDef = scope.findTypeDef(type)!;

    final typeNameAsList = type.split('.');
    final fullyQualifiedClassName =
        (typeNameAsList.sublist(0, typeNameAsList.length - 1)
              ..add(typeNameAsList.last.substring(1)))
            .join('.');
    final clsid = scope.findTypeDef(fullyQualifiedClassName)?.guid ?? '';

    final parentInterface = mdTypeDef.interfaces.isNotEmpty
        ? mdTypeDef.interfaces.first.typeName.split('.').last
        : '';

    final projection = ClassProjector(mdTypeDef).projection
      ..inherits = parentInterface
      ..vtableStart = vTableStart(mdTypeDef)
      ..sourceType = SourceType.com
      ..generateClass = clsid.isNotEmpty
      ..clsid = clsid
      ..className = type.split('.').last.substring(1);

    final dartClass = TypePrinter.printProjection(projection);

    final classOutputFilename = type.split('.').last;
    final outputFile =
        File('${classDirectory.uri.toFilePath()}$classOutputFilename.dart');

    print('Writing:    ${outputFile.path}');
    outputFile.writeAsStringSync(dartClass);

    final dartTests = TypePrinter.printTests(projection);

    final testOutputFilename = type.split('.').last;
    final testFile = File(
        '${testDirectory.uri.toFilePath()}${testOutputFilename}_test.dart');

    print('Writing:    ${testFile.path}');
    testFile.writeAsStringSync(dartTests);
  }
}
