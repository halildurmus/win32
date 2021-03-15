// generate_com_classes.dart

import 'dart:io';

import 'package:args/args.dart';
import 'package:winmd/winmd.dart';

late final Scope scope;

class COMType {
  final String typeName;
  final bool generateClass;

  const COMType(this.typeName, {this.generateClass = false});
}

const interfacesToGenerate = <COMType>[
  COMType('Windows.Win32.Automation.IDispatch'),
  COMType('Windows.Win32.Automation.IEnumVARIANT'),
  COMType('Windows.Win32.Automation.IErrorInfo'),
  COMType('Windows.Win32.Automation.ISupportErrorInfo'),
  COMType('Windows.Win32.Com.IBindCtx'),
  COMType('Windows.Win32.Com.IClassFactory'),
  COMType('Windows.Win32.Com.IConnectionPoint'),
  COMType('Windows.Win32.Com.IConnectionPointContainer'),
  COMType('Windows.Win32.Com.IEnumMoniker'),
  COMType('Windows.Win32.Com.IEnumString'),
  COMType('Windows.Win32.Com.IMoniker'),
  COMType('Windows.Win32.Com.IPersist'),
  COMType('Windows.Win32.Com.IPersistStream'),
  COMType('Windows.Win32.Com.IProvideClassInfo'),
  COMType('Windows.Win32.Com.IRunningObjectTable'),
  COMType('Windows.Win32.Com.IUnknown'),
  COMType('Windows.Win32.Intl.IEnumSpellingError', generateClass: true),
  COMType('Windows.Win32.Intl.ISpellChecker', generateClass: true),
  COMType('Windows.Win32.Intl.ISpellCheckerChangedEventHandler',
      generateClass: true),
  COMType('Windows.Win32.Intl.ISpellCheckerFactory', generateClass: true),
  COMType('Windows.Win32.Intl.ISpellingError', generateClass: true),
  COMType('Windows.Win32.NetworkListManager.IEnumNetworkConnections'),
  COMType('Windows.Win32.NetworkListManager.IEnumNetworks'),
  COMType('Windows.Win32.NetworkListManager.INetwork'),
  COMType('Windows.Win32.NetworkListManager.INetworkConnection'),
  COMType('Windows.Win32.NetworkListManager.INetworkListManager',
      generateClass: true),
  COMType('Windows.Win32.NetworkListManager.INetworkListManagerEvents'),
  COMType('Windows.Win32.Shell.IApplicationActivationManager',
      generateClass: true),
  COMType('Windows.Win32.Shell.IDesktopWallpaper', generateClass: true),
  COMType('Windows.Win32.Shell.IEnumIDList'),
  COMType('Windows.Win32.Shell.IFileDialog'),
  COMType('Windows.Win32.Shell.IFileDialog2'),
  COMType('Windows.Win32.Shell.IFileDialogCustomize'),
  COMType('Windows.Win32.Shell.IFileIsInUse'),
  COMType('Windows.Win32.Shell.IFileOpenDialog', generateClass: true),
  COMType('Windows.Win32.Shell.IFileSaveDialog', generateClass: true),
  COMType('Windows.Win32.Shell.IKnownFolder'),
  COMType('Windows.Win32.Shell.IKnownFolderManager', generateClass: true),
  COMType('Windows.Win32.Shell.IModalWindow'),
  COMType('Windows.Win32.Shell.IShellFolder'),
  COMType('Windows.Win32.Shell.IShellItem'),
  COMType('Windows.Win32.Shell.IShellItem2'),
  COMType('Windows.Win32.Shell.IShellItemArray'),
  COMType('Windows.Win32.Shell.IShellItemFilter'),
  COMType('Windows.Win32.StructuredStorage.ISequentialStream'),
  COMType('Windows.Win32.StructuredStorage.IStream'),
  COMType('Windows.Win32.WinRT.IInspectable'),
  COMType('Windows.Win32.Wmi.IEnumWbemClassObject'),
  COMType('Windows.Win32.Wmi.IWbemClassObject'),
  COMType('Windows.Win32.Wmi.IWbemContext'),
  COMType('Windows.Win32.Wmi.IWbemLocator', generateClass: true),
  COMType('Windows.Win32.Wmi.IWbemServices'),
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
  scope = MetadataStore.getWin32Scope();

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

    final classProjection = ClassProjector(mdTypeDef).projection
      ..inherits = parentInterface
      ..vtableStart = vTableStart(mdTypeDef)
      ..sourceType = SourceType.com
      ..generateClass = type.generateClass
      ..clsid = clsid
      ..className = type.typeName.split('.').last.substring(1);

    final dartClass = TypePrinter.printProjection(classProjection);

    final classOutputFilename = type.typeName.split('.').last;
    final outputFile =
        File('${classDirectory.uri.toFilePath()}$classOutputFilename.dart');

    print('Writing:    ${outputFile.path}');
    outputFile.writeAsStringSync(dartClass);

    final dartTests = TypePrinter.printTests(classProjection);

    final testOutputFilename = type.typeName.split('.').last;
    final testFile = File(
        '${testDirectory.uri.toFilePath()}${testOutputFilename}_test.dart');

    print('Writing:    ${testFile.path}');
    testFile.writeAsStringSync(dartTests);
  }
}
