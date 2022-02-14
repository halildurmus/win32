import 'dart:io';

import 'package:dart_style/dart_style.dart';
import 'package:winmd/winmd.dart';

import '../projection/class.dart';
import '../projection/interface.dart';
import '../projection/utils.dart';

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
  'Windows.Win32.System.Com.ISequentialStream',
  'Windows.Win32.System.Com.IStream',
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
  'Windows.Win32.System.Ole.IProvideClassInfo',
  'Windows.Win32.System.Com.IRunningObjectTable',
  'Windows.Win32.System.Com.IUri',
  'Windows.Win32.System.Com.IDispatch',
  'Windows.Win32.System.Ole.IEnumVARIANT',
  'Windows.Win32.System.Com.IErrorInfo',
  'Windows.Win32.System.Com.ISupportErrorInfo',
  'Windows.Win32.System.Com.ITypeInfo',
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
void generateComApis() {
  final scope = MetadataStore.getWin32Scope();

  final classDirectory = Directory('lib/src/com');

  for (final interface in interfacesToGenerate) {
    final typeDef = scope.findTypeDef(interface);
    if (typeDef == null) throw Exception("Can't find $interface");

    var interfaceProjection = InterfaceProjection(typeDef);

    // In v2, we put classes and interfaces in the same file.
    final className = ClassProjection.generateClassName(typeDef);
    if (scope.findTypeDef(className) != null) {
      interfaceProjection = ClassProjection.fromInterface(typeDef);
    }

    final dartClass = interfaceProjection.toString();

    final classOutputFilename =
        stripAnsiUnicodeSuffix(interface.split('.').last);
    final outputFile =
        File('${classDirectory.uri.toFilePath()}$classOutputFilename.dart');

    print('Writing:    ${outputFile.path}');
    outputFile.writeAsStringSync(DartFormatter().format(dartClass));

    // TODO: Add tests back in
    //   final dartTests = TypePrinter.printTests(classProjection);

    //   final testFile = File(
    //       '${testDirectory.uri.toFilePath()}${classOutputFilename}_test.dart');

    //   print('Writing:    ${testFile.path}');
    //   testFile.writeAsStringSync(dartTests);
  }
}
