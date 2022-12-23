@TestOn('windows')

import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

void main() {
  test('Can find a COM interface in winmd', () {
    final scope = MetadataStore.getWin32Scope();
    final iNetwork = scope.typeDefs
        .firstWhere((typedef) => typedef.name.endsWith('INetwork'));

    expect(iNetwork.isResolvedToken, isTrue);
  });

  test('Can find a COM interface in winmd by name', () {
    final scope = MetadataStore.getWin32Scope();
    final iNetwork = scope
        .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;

    expect(iNetwork.isResolvedToken, isTrue);
  });

  group('INetwork tests', () {
    test('Can search for a COM interface in winmd', () {
      final scope = MetadataStore.getWin32Scope();
      final iNetwork = scope
          .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;
      expect(iNetwork.isInterface, isTrue);
      expect(iNetwork.isResolvedToken, isTrue);
    });

    test('INetwork inherits from IDispatch', () {
      final scope = MetadataStore.getWin32Scope();
      final iNetwork = scope
          .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;
      expect(iNetwork.interfaces.first.name, endsWith('IDispatch'));
    });

    test('Interface has expected number of methods', () {
      final scope = MetadataStore.getWin32Scope();
      final iNetwork = scope
          .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;
      expect(iNetwork.methods.length, equals(13));
    });

    test('Interface has the right IID', () {
      final scope = MetadataStore.getWin32Scope();
      final iNetwork = scope
          .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;
      expect(iNetwork.guid, equals('{dcb00002-570f-4a9b-8d69-199fdba5723b}'));
    });

    test('COM methods are named correctly', () {
      final scope = MetadataStore.getWin32Scope();
      final iNetwork = scope
          .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;
      final getName = iNetwork.methods.first;

      expect(getName.name, equals('GetName'));
    });

    test('COM methods have right number of parameters', () {
      final scope = MetadataStore.getWin32Scope();
      final iNetwork = scope
          .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;
      final getName = iNetwork.methods.first;

      expect(getName.parameters.length, equals(1));
    });

    test('COM methods return HRESULTs', () {
      final scope = MetadataStore.getWin32Scope();
      final iNetwork = scope
          .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;
      final getName = iNetwork.methods.first;

      expect(getName.returnType.typeIdentifier.name, endsWith('HRESULT'));
    });

    test('COM method string pointers are represented accurately', () {
      final scope = MetadataStore.getWin32Scope();
      final iNetwork = scope
          .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;
      final getName = iNetwork.methods.first;
      final param = getName.parameters.first;

      expect(param.name, equals('pszNetworkName'));
      expect(
          param.typeIdentifier.baseType, equals(BaseType.pointerTypeModifier));
      expect(param.typeIdentifier.typeArg, isNotNull);
      expect(param.typeIdentifier.typeArg?.name, endsWith('BSTR'));
      expect(param.typeIdentifier.typeArg?.baseType,
          equals(BaseType.valueTypeModifier));
    });

    test('COM method strings are represented accurately', () {
      final scope = MetadataStore.getWin32Scope();
      final iNetwork = scope
          .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;
      final setName = iNetwork.methods[1];
      final param = setName.parameters.first;

      expect(param.name, equals('szNetworkNewName'));
      expect(param.typeIdentifier.baseType, equals(BaseType.valueTypeModifier));
      expect(param.typeIdentifier.name, endsWith('BSTR'));
      expect(param.typeIdentifier.typeArg, isNull);
    });

    test('COM method parameters are represented accurately', () {
      final scope = MetadataStore.getWin32Scope();
      final iShellItem =
          scope.findTypeDef('Windows.Win32.UI.Shell.IShellItem')!;
      final getAttributes = iShellItem.findMethod('GetAttributes')!;
      expect(getAttributes.parameters.length, equals(2));

      final sfgaoMask = getAttributes.parameters.first;
      expect(sfgaoMask.name, equals('sfgaoMask'));
      expect(sfgaoMask.typeIdentifier.baseType,
          equals(BaseType.valueTypeModifier));
      expect(sfgaoMask.typeIdentifier.type!.name,
          equals('Windows.Win32.System.SystemServices.SFGAO_FLAGS'));

      final psfgaoAttribs = getAttributes.parameters.last;
      expect(psfgaoAttribs.name, equals('psfgaoAttribs'));
      expect(psfgaoAttribs.typeIdentifier.baseType,
          equals(BaseType.pointerTypeModifier));
      expect(psfgaoAttribs.typeIdentifier.typeArg!.type!.name,
          equals('Windows.Win32.System.SystemServices.SFGAO_FLAGS'));
    });

    test('GUIDs are represented accurately', () {
      final scope = MetadataStore.getWin32Scope();
      final iNetwork = scope
          .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;
      final getNetworkId = iNetwork.findMethod('GetNetworkId')!;
      final param = getNetworkId.parameters.first;

      expect(param.name, equals('pgdGuidNetworkId'));
      expect(
          param.typeIdentifier.baseType, equals(BaseType.pointerTypeModifier));
      expect(param.typeIdentifier.typeArg, isNotNull);
      expect(param.typeIdentifier.typeArg?.name, endsWith('Guid'));
    });

    test('Properties are true for isGetProperty', () {
      final scope = MetadataStore.getWin32Scope();
      final iNetwork = scope
          .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;
      final isConnected = iNetwork.findMethod('get_IsConnectedToInternet')!;
      expect(isConnected.isGetProperty, equals(true));
    });

    test('Properties are represented accurately', () {
      final scope = MetadataStore.getWin32Scope();
      final iNetwork = scope
          .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;
      final isConnected = iNetwork.findMethod('get_IsConnectedToInternet')!;
      final param = isConnected.parameters.first;

      expect(param.name, equals('pbIsConnected'));
      expect(
          param.typeIdentifier.baseType, equals(BaseType.pointerTypeModifier));
      expect(param.typeIdentifier.typeArg, isNotNull);
      expect(param.typeIdentifier.typeArg?.baseType,
          equals(BaseType.valueTypeModifier));
      expect(param.typeIdentifier.typeArg?.type?.name,
          equals('Windows.Win32.Foundation.VARIANT_BOOL'));
    });
  });

  test('COM methods of form get_*** are not interpreted as properties', () {
    final scope = MetadataStore.getWin32Scope();
    final iksTopologyInfo =
        scope.findTypeDef('Windows.Win32.Media.DirectShow.IKsTopologyInfo')!;
    final getNodeName = iksTopologyInfo.findMethod('get_NodeName')!;
    expect(getNodeName.isProperty, isFalse);
    expect(getNodeName.isGetProperty, isFalse);
  });

  test('Multiple layers of interface inheritance are correct', () {
    final scope = MetadataStore.getWin32Scope();
    final iFactory2 = scope
        .findTypeDef('Windows.Win32.Graphics.DirectWrite.IDWriteFactory2')!;
    expect(iFactory2.interfaces.length, equals(1));
    final iFactory1 = iFactory2.interfaces.first;
    expect(iFactory1.name, endsWith('IDWriteFactory1'));
    expect(iFactory1.interfaces.length, equals(1));
    final iFactory = iFactory1.interfaces.first;
    expect(iFactory.name, endsWith('IDWriteFactory'));
    expect(iFactory.interfaces.length, equals(1));
    final iUnknown = iFactory.interfaces.first;
    expect(iUnknown.name, endsWith('IUnknown'));
    expect(iUnknown.interfaces.length, isZero);
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

    expect(param.name, equals('options'));
    expect(param.typeIdentifier.name,
        equals('Windows.Win32.UI.Shell.ACTIVATEOPTIONS'));
    expect(param.typeIdentifier.baseType, equals(BaseType.valueTypeModifier));
    expect(param.typeIdentifier.type?.parent?.name, equals('System.Enum'));
    expect(param.typeIdentifier.typeArg, isNull);
    expect(scope.enums.firstWhere((p) => p.name == param.typeIdentifier.name),
        isNotNull);
  });

  test('Optional COM parameters', () {
    final scope = MetadataStore.getWin32Scope();
    final interface =
        scope.findTypeDef('Windows.Win32.Graphics.Direct3D12.ID3D12Device8')!;
    final method = interface.methods.first;
    final param = method.parameters.last;
    expect(param.isOptional, isTrue);
    expect(param.isOutParam, isTrue);
    expect(param.isInParam, isFalse);
    expect(param.hasDefault, isFalse);
    expect(param.hasFieldMarshal, isFalse);

    expect(param.parent, equals(method));
    expect(param.toString(), equals('pResourceAllocationInfo1'));
  });
}
