// COM interfaces have a chain of inheritance, and the function vtable depends
// on this being calculated accurately. Test a variety of existing interfaces to
// make sure the algorithm matches a manual count.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

import '../tool/metadata/generate_com_apis.dart';

void main() {
  test('vTableStart', () {
    const testedTypes = <String, int>{
      'Windows.Win32.Automation.IDispatch': 3,
      'Windows.Win32.Automation.IEnumVARIANT': 3,
      'Windows.Win32.Automation.IErrorInfo': 3,
      'Windows.Win32.Automation.ISupportErrorInfo': 3,
      'Windows.Win32.Com.IBindCtx': 3,
      'Windows.Win32.Com.IClassFactory': 3,
      'Windows.Win32.Com.IEnumMoniker': 3,
      'Windows.Win32.Com.IEnumString': 3,
      'Windows.Win32.Com.IMoniker': 8,
      'Windows.Win32.Com.IPersist': 3,
      'Windows.Win32.Com.IPersistStream': 4,
      'Windows.Win32.Com.IProvideClassInfo': 3,
      'Windows.Win32.Com.IRunningObjectTable': 3,
      'Windows.Win32.Intl.IEnumSpellingError': 3,
      'Windows.Win32.Intl.ISpellChecker': 3,
      'Windows.Win32.Intl.ISpellCheckerChangedEventHandler': 3,
      'Windows.Win32.Intl.ISpellCheckerFactory': 3,
      'Windows.Win32.Intl.ISpellingError': 3,
      'Windows.Win32.NetworkListManager.IEnumNetworkConnections': 7,
      'Windows.Win32.NetworkListManager.IEnumNetworks': 7,
      'Windows.Win32.NetworkListManager.INetwork': 7,
      'Windows.Win32.NetworkListManager.INetworkConnection': 7,
      'Windows.Win32.NetworkListManager.INetworkListManager': 7,
      'Windows.Win32.Shell.IApplicationActivationManager': 3,
      'Windows.Win32.Shell.IDesktopWallpaper': 3,
      'Windows.Win32.Shell.IEnumIDList': 3,
      'Windows.Win32.Shell.IFileDialog': 4,
      'Windows.Win32.Shell.IFileDialog2': 27,
      'Windows.Win32.Shell.IFileDialogCustomize': 3,
      'Windows.Win32.Shell.IFileIsInUse': 3,
      'Windows.Win32.Shell.IFileOpenDialog': 27,
      'Windows.Win32.Shell.IFileSaveDialog': 27,
      'Windows.Win32.Shell.IKnownFolder': 3,
      'Windows.Win32.Shell.IKnownFolderManager': 3,
      'Windows.Win32.Shell.IModalWindow': 3,
      'Windows.Win32.Shell.IShellFolder': 3,
      'Windows.Win32.Shell.IShellItem': 3,
      'Windows.Win32.Shell.IShellItem2': 8,
      'Windows.Win32.Shell.IShellItemArray': 3,
      'Windows.Win32.Shell.IShellItemFilter': 3,
      'Windows.Win32.StructuredStorage.ISequentialStream': 3,
      'Windows.Win32.StructuredStorage.IStream': 5,
      'Windows.Win32.WinRT.IInspectable': 3,
      'Windows.Win32.Wmi.IEnumWbemClassObject': 3,
      'Windows.Win32.Wmi.IWbemClassObject': 3,
      'Windows.Win32.Wmi.IWbemContext': 3,
      'Windows.Win32.Wmi.IWbemLocator': 3,
      'Windows.Win32.Wmi.IWbemServices': 3,
    };

    final scope = MetadataStore.getWin32Scope();

    for (final type in testedTypes.keys) {
      final calculatedVTableStart = vTableStart(scope.findTypeDef(type));

      expect(calculatedVTableStart, equals(testedTypes[type]));
    }
  });
}
