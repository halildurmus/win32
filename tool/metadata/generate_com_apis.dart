// generate_com_classes.dart

import 'dart:io';

import 'package:args/args.dart';
import 'package:winmd/winmd.dart';

import 'projection/classprojector.dart';
import 'projection/data_classes.dart';
import 'projection/typeprinter.dart';

const interfacesToGenerate = <String>[
  'Windows.Win32.Globalization.IEnumSpellingError',
  'Windows.Win32.Globalization.ISpellChecker',
  'Windows.Win32.Globalization.ISpellCheckerChangedEventHandler',
  'Windows.Win32.Globalization.ISpellCheckerFactory',
  'Windows.Win32.Globalization.ISpellingError',
  'Windows.Win32.Networking.NetworkListManager.IEnumNetworkConnections',
  'Windows.Win32.Networking.NetworkListManager.IEnumNetworks',
  'Windows.Win32.Networking.NetworkListManager.INetwork',
  'Windows.Win32.Networking.NetworkListManager.INetworkConnection',
  'Windows.Win32.Networking.NetworkListManager.INetworkListManager',
  'Windows.Win32.Networking.NetworkListManager.INetworkListManagerEvents',
  'Windows.Win32.Storage.Packaging.Appx.IAppxFactory',
  'Windows.Win32.Storage.Packaging.Appx.IAppxFile',
  'Windows.Win32.Storage.Packaging.Appx.IAppxFilesEnumerator',
  'Windows.Win32.Storage.Packaging.Appx.IAppxManifestApplication',
  'Windows.Win32.Storage.Packaging.Appx.IAppxManifestApplicationsEnumerator',
  'Windows.Win32.Storage.Packaging.Appx.IAppxManifestOSPackageDependency',
  'Windows.Win32.Storage.Packaging.Appx.IAppxManifestPackageDependenciesEnumerator',
  'Windows.Win32.Storage.Packaging.Appx.IAppxManifestPackageDependency',
  'Windows.Win32.Storage.Packaging.Appx.IAppxManifestPackageId',
  'Windows.Win32.Storage.Packaging.Appx.IAppxManifestProperties',
  'Windows.Win32.Storage.Packaging.Appx.IAppxManifestReader',
  'Windows.Win32.Storage.Packaging.Appx.IAppxManifestReader2',
  'Windows.Win32.Storage.Packaging.Appx.IAppxManifestReader3',
  'Windows.Win32.Storage.Packaging.Appx.IAppxManifestReader4',
  'Windows.Win32.Storage.Packaging.Appx.IAppxManifestReader5',
  'Windows.Win32.Storage.Packaging.Appx.IAppxManifestReader6',
  'Windows.Win32.Storage.Packaging.Appx.IAppxManifestReader7',
  'Windows.Win32.Storage.Packaging.Appx.IAppxPackageReader',
  'Windows.Win32.Storage.StructuredStorage.ISequentialStream',
  'Windows.Win32.Storage.StructuredStorage.IStream',
  'Windows.Win32.System.Com.IBindCtx',
  'Windows.Win32.System.Com.IClassFactory',
  'Windows.Win32.System.Com.IConnectionPoint',
  'Windows.Win32.System.Com.IConnectionPointContainer',
  'Windows.Win32.System.Com.IEnumMoniker',
  'Windows.Win32.System.Com.IEnumString',
  'Windows.Win32.System.Com.IMoniker',
  'Windows.Win32.System.Com.IPersist',
  'Windows.Win32.System.Com.IPersistFile',
  'Windows.Win32.System.Com.IPersistMemory',
  'Windows.Win32.System.Com.IPersistStream',
  'Windows.Win32.System.Com.IProvideClassInfo',
  'Windows.Win32.System.Com.IRunningObjectTable',
  'Windows.Win32.System.Com.IUri',
  'Windows.Win32.System.OleAutomation.IDispatch',
  'Windows.Win32.System.OleAutomation.IEnumVARIANT',
  'Windows.Win32.System.OleAutomation.IErrorInfo',
  'Windows.Win32.System.OleAutomation.ISupportErrorInfo',
  'Windows.Win32.System.OleAutomation.ITypeInfo',
  'Windows.Win32.System.WinRT.IInspectable',
  'Windows.Win32.System.Wmi.IEnumWbemClassObject',
  'Windows.Win32.System.Wmi.IWbemClassObject',
  'Windows.Win32.System.Wmi.IWbemContext',
  'Windows.Win32.System.Wmi.IWbemLocator',
  'Windows.Win32.System.Wmi.IWbemServices',
  'Windows.Win32.UI.Shell.IApplicationActivationManager',
  'Windows.Win32.UI.Shell.IDesktopWallpaper',
  'Windows.Win32.UI.Shell.IEnumIDList',
  'Windows.Win32.UI.Shell.IEnumResources',
  'Windows.Win32.UI.Shell.IFileDialog',
  'Windows.Win32.UI.Shell.IFileDialog2',
  'Windows.Win32.UI.Shell.IFileDialogCustomize',
  'Windows.Win32.UI.Shell.IFileIsInUse',
  'Windows.Win32.UI.Shell.IFileOpenDialog',
  'Windows.Win32.UI.Shell.IFileSaveDialog',
  'Windows.Win32.UI.Shell.IKnownFolder',
  'Windows.Win32.UI.Shell.IKnownFolderManager',
  'Windows.Win32.UI.Shell.IModalWindow',
  'Windows.Win32.UI.Shell.IShellFolder',
  'Windows.Win32.UI.Shell.IShellItem',
  'Windows.Win32.UI.Shell.IShellItem2',
  'Windows.Win32.UI.Shell.IShellItemArray',
  'Windows.Win32.UI.Shell.IShellItemFilter',
  'Windows.Win32.UI.Shell.IShellItemResources',
  'Windows.Win32.UI.Shell.IShellLinkDataList',
  'Windows.Win32.UI.Shell.IShellLinkDual',
  'Windows.Win32.UI.Shell.IShellLinkW',
  'Windows.Win32.UI.Shell.IShellService',
  'Windows.Win32.UI.Shell.IVirtualDesktopManager',
];

/// Take a fully-qualified interface name (e.g.
/// `Windows.Win32.UI.Shell.IShellLinkW`) and return the corresponding classname
/// (e.g. `Windows.Win32.UI.Shell.ShellLink`).
String classNameForInterfaceName(String interfaceName) {
  final interfaceNameAsList = interfaceName.split('.');

  // Strip off the 'I' from the last component
  final fullyQualifiedClassName =
      (interfaceNameAsList.sublist(0, interfaceNameAsList.length - 1)
            ..add(interfaceNameAsList.last.substring(1)))
          .join('.');

  // If class has a 'W' suffix, erase it.
  return removeUnicodeSuffix(fullyQualifiedClassName);
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
    final mdTypeDef = scope.findTypeDef(type);

    if (mdTypeDef == null) throw Exception("Can't find $type");

    final clsid =
        scope.findTypeDef(classNameForInterfaceName(type))?.guid ?? '';

    final parentInterface = mdTypeDef.interfaces.isNotEmpty
        ? mdTypeDef.interfaces.first.name.split('.').last
        : '';

    final classProjection = ClassProjector(mdTypeDef).projection
      ..inherits = parentInterface
      // ..vtableStart = vTableStart(mdTypeDef)
      ..sourceType = SourceType.com
      ..generateClass = clsid.isNotEmpty
      ..clsid = clsid
      ..className = removeUnicodeSuffix(type.split('.').last.substring(1));

    final dartClass = TypePrinter.printProjection(classProjection);

    final classOutputFilename = removeUnicodeSuffix(type.split('.').last);
    final outputFile =
        File('${classDirectory.uri.toFilePath()}$classOutputFilename.dart');

    print('Writing:    ${outputFile.path}');
    outputFile.writeAsStringSync(dartClass);

    final dartTests = TypePrinter.printTests(classProjection);

    final testFile = File(
        '${testDirectory.uri.toFilePath()}${classOutputFilename}_test.dart');

    print('Writing:    ${testFile.path}');
    testFile.writeAsStringSync(dartTests);
  }
}
