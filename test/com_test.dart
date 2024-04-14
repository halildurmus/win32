// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

void main() {
  late Scope win32Scope;

  setUpAll(() async {
    win32Scope = await MetadataStore.loadWin32Metadata();
  });

  test('Can find a COM interface in winmd', () {
    final typeDef = win32Scope.typeDefs
        .where((typedef) => typedef.name.endsWith('INetwork'))
        .firstOrNull;
    check(typeDef).isNotNull();
    check(typeDef!.isResolvedToken).isTrue();
  });

  test('Can find a COM interface in winmd by name', () {
    final typeDef = win32Scope
        .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork');
    check(typeDef).isNotNull();
    check(typeDef!.isResolvedToken).isTrue();
  });

  group('INetwork tests', () {
    test('Can search for a COM interface in winmd', () {
      final typeDef = win32Scope
          .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork');
      check(typeDef).isNotNull();
      check(typeDef!.isInterface).isTrue();
      check(typeDef.isResolvedToken).isTrue();
    });

    test('INetwork inherits from IDispatch', () {
      final typeDef = win32Scope
          .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork');
      check(typeDef).isNotNull();
      check(typeDef!.interfaces.first.name).endsWith('IDispatch');
    });

    test('Interface has expected number of methods', () {
      final typeDef = win32Scope
          .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork');
      check(typeDef).isNotNull();
      check(typeDef!.methods.length).equals(13);
    });

    test('Interface has the right IID', () {
      final typeDef = win32Scope
          .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork');
      check(typeDef).isNotNull();
      check(typeDef!.guid).equals('{dcb00002-570f-4a9b-8d69-199fdba5723b}');
    });

    test('COM methods are named correctly', () {
      final typeDef = win32Scope
          .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork');
      check(typeDef).isNotNull();
      final getNameMethod = typeDef!.methods.first;
      check(getNameMethod.name).equals('GetName');
    });

    test('COM methods have right number of parameters', () {
      final typeDef = win32Scope
          .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork');
      check(typeDef).isNotNull();
      final getNameMethod = typeDef!.methods.first;
      check(getNameMethod.parameters.length).equals(1);
    });

    test('COM methods return HRESULTs', () {
      final typeDef = win32Scope
          .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork');
      check(typeDef).isNotNull();
      final getNameMethod = typeDef!.methods.first;
      check(getNameMethod.returnType.typeIdentifier.name).endsWith('HRESULT');
    });

    test('COM method string pointers are represented accurately', () {
      final typeDef = win32Scope
          .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork');
      check(typeDef).isNotNull();
      final getNameMethod = typeDef!.methods.first;
      final param = getNameMethod.parameters.first;
      check(param.name).equals('pszNetworkName');
      check(param.typeIdentifier.baseType).equals(BaseType.pointerTypeModifier);
      check(param.typeIdentifier.typeArg).isNotNull();
      check(param.typeIdentifier.typeArg!.name).endsWith('BSTR');
      check(param.typeIdentifier.typeArg!.baseType)
          .equals(BaseType.valueTypeModifier);
    });

    test('COM method strings are represented accurately', () {
      final typeDef = win32Scope
          .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork');
      check(typeDef).isNotNull();
      final setNameMethod = typeDef!.methods[1];
      final param = setNameMethod.parameters.first;
      check(param.name).equals('szNetworkNewName');
      check(param.typeIdentifier.baseType).equals(BaseType.valueTypeModifier);
      check(param.typeIdentifier.name).endsWith('BSTR');
      check(param.typeIdentifier.typeArg).isNull();
    });

    test('COM method parameters are represented accurately', () {
      final typeDef =
          win32Scope.findTypeDef('Windows.Win32.UI.Shell.IShellItem');
      check(typeDef).isNotNull();
      final getAttributesMethod = typeDef!.findMethod('GetAttributes');
      check(getAttributesMethod).isNotNull();
      check(getAttributesMethod!.parameters.length).equals(2);
      final [sfgaoMask, psfgaoAttribs] = getAttributesMethod.parameters;

      check(sfgaoMask.name).equals('sfgaoMask');
      check(sfgaoMask.typeIdentifier.baseType)
          .equals(BaseType.valueTypeModifier);
      check(sfgaoMask.typeIdentifier.type!.name)
          .equals('Windows.Win32.System.SystemServices.SFGAO_FLAGS');

      check(psfgaoAttribs.name).equals('psfgaoAttribs');
      check(psfgaoAttribs.typeIdentifier.baseType)
          .equals(BaseType.pointerTypeModifier);
      check(psfgaoAttribs.typeIdentifier.typeArg!.type!.name)
          .equals('Windows.Win32.System.SystemServices.SFGAO_FLAGS');
    });

    test('GUIDs are represented accurately', () {
      final typeDef = win32Scope
          .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork');
      check(typeDef).isNotNull();
      final getNetworkIdMethod = typeDef!.findMethod('GetNetworkId')!;
      final param = getNetworkIdMethod.parameters.first;
      check(param.name).equals('pgdGuidNetworkId');
      check(param.typeIdentifier.baseType).equals(BaseType.pointerTypeModifier);
      check(param.typeIdentifier.typeArg).isNotNull();
      check(param.typeIdentifier.typeArg!.name).endsWith('Guid');
    });

    test('Properties are true for isGetProperty', () {
      final typeDef = win32Scope
          .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork');
      check(typeDef).isNotNull();
      final isConnectedMethod =
          typeDef!.findMethod('get_IsConnectedToInternet');
      check(isConnectedMethod).isNotNull();
      check(isConnectedMethod!.isGetProperty).equals(true);
    });

    test('Properties are represented accurately', () {
      final typeDef = win32Scope
          .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork');
      check(typeDef).isNotNull();
      final isConnectedMethod =
          typeDef!.findMethod('get_IsConnectedToInternet');
      check(isConnectedMethod).isNotNull();
      final param = isConnectedMethod!.parameters.first;
      check(param.name).equals('pbIsConnected');
      check(param.typeIdentifier.baseType).equals(BaseType.pointerTypeModifier);
      check(param.typeIdentifier.typeArg).isNotNull();
      check(param.typeIdentifier.typeArg?.baseType)
          .equals(BaseType.valueTypeModifier);
      check(param.typeIdentifier.typeArg?.type?.name)
          .equals('Windows.Win32.Foundation.VARIANT_BOOL');
    });
  });

  test('COM methods of form get_*** are not interpreted as properties', () {
    final typeDef = win32Scope
        .findTypeDef('Windows.Win32.Media.KernelStreaming.IKsTopologyInfo');
    check(typeDef).isNotNull();
    final getNodeNameMethod = typeDef!.findMethod('get_NodeName')!;
    check(getNodeNameMethod.isProperty).isFalse();
    check(getNodeNameMethod.isGetProperty).isFalse();
  });

  test('Multiple layers of interface inheritance are correct', () {
    final typeDef = win32Scope
        .findTypeDef('Windows.Win32.Graphics.DirectWrite.IDWriteFactory2');
    check(typeDef).isNotNull();
    check(typeDef!.interfaces.length).equals(1);
    final iFactory1 = typeDef.interfaces.first;
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
    final typeDef = win32Scope
        .findTypeDef('Windows.Win32.UI.Shell.IApplicationActivationManager');
    check(typeDef).isNotNull();
    final activateApplicationMethod =
        typeDef!.findMethod('ActivateApplication');
    check(activateApplicationMethod).isNotNull();
    final param = activateApplicationMethod!.parameters[2];
    check(param.name).equals('options');
    check(param.typeIdentifier.name)
        .equals('Windows.Win32.UI.Shell.ACTIVATEOPTIONS');
    check(param.typeIdentifier.baseType).equals(BaseType.valueTypeModifier);
    check(param.typeIdentifier.type?.parent?.name).equals('System.Enum');
    check(param.typeIdentifier.typeArg).isNull();
    check(win32Scope.enums
        .firstWhere((p) => p.name == param.typeIdentifier.name)).isNotNull();
  });

  test('Optional COM parameters', () {
    final typeDef = win32Scope
        .findTypeDef('Windows.Win32.Graphics.Direct3D12.ID3D12Device8');
    check(typeDef).isNotNull();
    final method = typeDef!.methods.first;
    final param = method.parameters.last;
    check(param.hasDefault).isFalse();
    check(param.hasFieldMarshal).isFalse();
    check(param.isInParam).isFalse();
    check(param.isOptional).isTrue();
    check(param.isOutParam).isTrue();
    check(param.parent).equals(method);
    check(param.toString()).equals('pResourceAllocationInfo1');
  });

  tearDownAll(MetadataStore.close);
}
