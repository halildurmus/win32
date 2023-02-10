@TestOn('windows')

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

void main() {
  test('Can find a COM interface in winmd', () {
    final scope = MetadataStore.getWin32Scope();
    final iNetwork = scope.typeDefs
        .firstWhere((typedef) => typedef.name.endsWith('INetwork'));

    check(iNetwork.isResolvedToken).isTrue;
  });

  test('Can find a COM interface in winmd by name', () {
    final scope = MetadataStore.getWin32Scope();
    final iNetwork = scope
        .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;

    check(iNetwork.isResolvedToken).isTrue;
  });

  group('INetwork tests', () {
    test('Can search for a COM interface in winmd', () {
      final scope = MetadataStore.getWin32Scope();
      final iNetwork = scope
          .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;
      check(iNetwork.isInterface).isTrue;
      check(iNetwork.isResolvedToken).isTrue;
    });

    test('INetwork inherits from IDispatch', () {
      final scope = MetadataStore.getWin32Scope();
      final iNetwork = scope
          .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;
      check(iNetwork.interfaces.first.name).endsWith('IDispatch');
    });

    test('Interface has expected number of methods', () {
      final scope = MetadataStore.getWin32Scope();
      final iNetwork = scope
          .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;
      check(iNetwork.methods.length).equals(13);
    });

    test('Interface has the right IID', () {
      final scope = MetadataStore.getWin32Scope();
      final iNetwork = scope
          .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;
      check(iNetwork.guid).equals('{dcb00002-570f-4a9b-8d69-199fdba5723b}');
    });

    test('COM methods are named correctly', () {
      final scope = MetadataStore.getWin32Scope();
      final iNetwork = scope
          .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;
      final getName = iNetwork.methods.first;

      check(getName.name).equals('GetName');
    });

    test('COM methods have right number of parameters', () {
      final scope = MetadataStore.getWin32Scope();
      final iNetwork = scope
          .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;
      final getName = iNetwork.methods.first;

      check(getName.parameters.length).equals(1);
    });

    test('COM methods return HRESULTs', () {
      final scope = MetadataStore.getWin32Scope();
      final iNetwork = scope
          .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;
      final getName = iNetwork.methods.first;

      check(getName.returnType.typeIdentifier.name).endsWith('HRESULT');
    });

    test('COM method string pointers are represented accurately', () {
      final scope = MetadataStore.getWin32Scope();
      final iNetwork = scope
          .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;
      final getName = iNetwork.methods.first;
      final param = getName.parameters.first;

      check(param.name).equals('pszNetworkName');
      check(param.typeIdentifier.baseType).equals(BaseType.pointerTypeModifier);
      check(param.typeIdentifier.typeArg).isNotNull;
      check(param.typeIdentifier.typeArg!.name).endsWith('BSTR');
      check(param.typeIdentifier.typeArg!.baseType)
          .equals(BaseType.valueTypeModifier);
    });

    test('COM method strings are represented accurately', () {
      final scope = MetadataStore.getWin32Scope();
      final iNetwork = scope
          .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;
      final setName = iNetwork.methods[1];
      final param = setName.parameters.first;

      check(param.name).equals('szNetworkNewName');
      check(param.typeIdentifier.baseType).equals(BaseType.valueTypeModifier);
      check(param.typeIdentifier.name).endsWith('BSTR');
      check(param.typeIdentifier.typeArg).isNull;
    });

    test('COM method parameters are represented accurately', () {
      final scope = MetadataStore.getWin32Scope();
      final iShellItem =
          scope.findTypeDef('Windows.Win32.UI.Shell.IShellItem')!;
      final getAttributes = iShellItem.findMethod('GetAttributes')!;
      check(getAttributes.parameters.length).equals(2);

      final sfgaoMask = getAttributes.parameters.first;
      check(sfgaoMask.name).equals('sfgaoMask');
      check(sfgaoMask.typeIdentifier.baseType)
          .equals(BaseType.valueTypeModifier);
      check(sfgaoMask.typeIdentifier.type!.name)
          .equals('Windows.Win32.System.SystemServices.SFGAO_FLAGS');

      final psfgaoAttribs = getAttributes.parameters.last;
      check(psfgaoAttribs.name).equals('psfgaoAttribs');
      check(psfgaoAttribs.typeIdentifier.baseType)
          .equals(BaseType.pointerTypeModifier);
      check(psfgaoAttribs.typeIdentifier.typeArg!.type!.name)
          .equals('Windows.Win32.System.SystemServices.SFGAO_FLAGS');
    });

    test('GUIDs are represented accurately', () {
      final scope = MetadataStore.getWin32Scope();
      final iNetwork = scope
          .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;
      final getNetworkId = iNetwork.findMethod('GetNetworkId')!;
      final param = getNetworkId.parameters.first;

      check(param.name).equals('pgdGuidNetworkId');
      check(param.typeIdentifier.baseType).equals(BaseType.pointerTypeModifier);
      check(param.typeIdentifier.typeArg).isNotNull;
      check(param.typeIdentifier.typeArg!.name).endsWith('Guid');
    });

    test('Properties are true for isGetProperty', () {
      final scope = MetadataStore.getWin32Scope();
      final iNetwork = scope
          .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;
      final isConnected = iNetwork.findMethod('get_IsConnectedToInternet')!;
      check(isConnected.isGetProperty).equals(true);
    });

    test('Properties are represented accurately', () {
      final scope = MetadataStore.getWin32Scope();
      final iNetwork = scope
          .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;
      final isConnected = iNetwork.findMethod('get_IsConnectedToInternet')!;
      final param = isConnected.parameters.first;

      check(param.name).equals('pbIsConnected');
      check(param.typeIdentifier.baseType).equals(BaseType.pointerTypeModifier);
      check(param.typeIdentifier.typeArg).isNotNull;
      check(param.typeIdentifier.typeArg?.baseType)
          .equals(BaseType.valueTypeModifier);
      check(param.typeIdentifier.typeArg?.type?.name)
          .equals('Windows.Win32.Foundation.VARIANT_BOOL');
    });
  });

  test('COM methods of form get_*** are not interpreted as properties', () {
    final scope = MetadataStore.getWin32Scope();
    final iksTopologyInfo =
        scope.findTypeDef('Windows.Win32.Media.DirectShow.IKsTopologyInfo')!;
    final getNodeName = iksTopologyInfo.findMethod('get_NodeName')!;
    check(getNodeName.isProperty).isFalse;
    check(getNodeName.isGetProperty).isFalse;
  });

  test('Multiple layers of interface inheritance are correct', () {
    final scope = MetadataStore.getWin32Scope();
    final iFactory2 = scope
        .findTypeDef('Windows.Win32.Graphics.DirectWrite.IDWriteFactory2')!;
    check(iFactory2.interfaces.length).equals(1);
    final iFactory1 = iFactory2.interfaces.first;
    check(iFactory1.name).endsWith('IDWriteFactory1');
    check(iFactory1.interfaces.length).equals(1);
    final iFactory = iFactory1.interfaces.first;
    check(iFactory.name).endsWith('IDWriteFactory');
    check(iFactory.interfaces.length).equals(1);
    final iUnknown = iFactory.interfaces.first;
    check(iUnknown.name).endsWith('IUnknown');
    check(iUnknown.interfaces.length).equals(0);
  });

  test(
      'IApplicationActivationManager.ActivateApplication '
      'recognizes ACTIVATEOPTIONS as an enum', () {
    final scope = MetadataStore.getWin32Scope();
    final iApplicationActivationManager = scope
        .findTypeDef('Windows.Win32.UI.Shell.IApplicationActivationManager')!;
    final activateApplication =
        iApplicationActivationManager.findMethod('ActivateApplication')!;
    final param = activateApplication.parameters[2];

    check(param.name).equals('options');
    check(param.typeIdentifier.name)
        .equals('Windows.Win32.UI.Shell.ACTIVATEOPTIONS');
    check(param.typeIdentifier.baseType).equals(BaseType.valueTypeModifier);
    check(param.typeIdentifier.type?.parent?.name).equals('System.Enum');
    check(param.typeIdentifier.typeArg).isNull;
    check(scope.enums.firstWhere((p) => p.name == param.typeIdentifier.name))
        .isNotNull;
  });

  test('Optional COM parameters', () {
    final scope = MetadataStore.getWin32Scope();
    final interface =
        scope.findTypeDef('Windows.Win32.Graphics.Direct3D12.ID3D12Device8')!;
    final method = interface.methods.first;
    final param = method.parameters.last;
    check(param.isOptional).isTrue;
    check(param.isOutParam).isTrue;
    check(param.isInParam).isFalse;
    check(param.hasDefault).isFalse;
    check(param.hasFieldMarshal).isFalse;

    check(param.parent).equals(method);
    check(param.toString()).equals('pResourceAllocationInfo1');
  });
}
