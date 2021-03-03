@TestOn('windows')

import 'package:test/test.dart';
import 'package:winmd/winmd.dart';
import 'package:win32/win32.dart';

void main() {
  if (isWindowsRuntimeAvailable()) {
    final scope = MetadataStore.getScopeForFile('bin/Windows.Win32.winmd');
    test('Can find a COM interface in winmd', () {
      final iNetwork = scope.typeDefs
          .firstWhere((typedef) => typedef.typeName.endsWith('INetwork'));

      expect(iNetwork.isValidToken, isTrue);
    });

    test('Can find a COM interface in winmd by name', () {
      final iNetwork =
          scope.findTypeDef('Windows.Win32.NetworkListManager.INetwork')!;

      expect(iNetwork.isValidToken, isTrue);
    });

    group('INetwork tests', () {
      final iNetwork =
          scope.findTypeDef('Windows.Win32.NetworkListManager.INetwork')!;

      test('Can search for a COM interface in winmd', () {
        expect(iNetwork.isInterface, isTrue);
        expect(iNetwork.isValidToken, isTrue);
      });

      test('INetwork inherits from IDispatch', () {
        expect(iNetwork.interfaces.first.typeName, endsWith('IDispatch'));
      });

      test('Interface has expected number of methods', () {
        expect(iNetwork.methods.length, equals(13));
      });

      test('Interface has the right IID', () {
        expect(iNetwork.guid, equals('{DCB00002-570F-4A9B-8D69-199FDBA5723B}'));
      });

      test('COM methods are named correctly', () {
        final getName = iNetwork.methods.first;

        expect(getName.methodName, equals('GetName'));
      });

      test('COM methods have right number of parameters', () {
        final getName = iNetwork.methods.first;

        expect(getName.parameters.length, equals(1));
      });

      test('COM methods return HRESULTs', () {
        final getName = iNetwork.methods.first;

        expect(getName.returnType.typeIdentifier.name, endsWith('HRESULT'));
      });

      test('COM method string pointers are represented accurately', () {
        final getName = iNetwork.methods.first;
        final param = getName.parameters.first;

        expect(param.name, equals('pszNetworkName'));
        expect(param.typeIdentifier.corType,
            equals(CorElementType.ELEMENT_TYPE_PTR));
        expect(param.typeIdentifier.typeArgs.length, equals(1));
        expect(param.typeIdentifier.typeArgs.first.name, endsWith('BSTR'));
        expect(param.typeIdentifier.typeArgs.first.corType,
            equals(CorElementType.ELEMENT_TYPE_VALUETYPE));
      });

      test('COM method string pointers are projected to Dart accurately', () {
        final getName = iNetwork.methods.first;
        final param = getName.parameters.first;
        final projection = TypeProjector(param.typeIdentifier);

        expect(projection.dartType, equals('Pointer<Pointer<Utf16>>'));
      });

      test('COM method strings are represented accurately', () {
        final setName = iNetwork.methods[1];
        final param = setName.parameters.first;

        expect(param.name, equals('szNetworkNewName'));
        expect(param.typeIdentifier.corType,
            equals(CorElementType.ELEMENT_TYPE_VALUETYPE));
        expect(param.typeIdentifier.name, endsWith('BSTR'));
        expect(param.typeIdentifier.typeArgs.length, isZero);
      });

      test('COM method strings are projected to Dart accurately', () {
        final setName = iNetwork.methods[1];
        final param = setName.parameters.first;
        final projection = TypeProjector(param.typeIdentifier);

        expect(projection.dartType, equals('Pointer<Utf16>'));
      });

      test('GUIDs are represented accurately', () {
        final getNetworkId = iNetwork.findMethod('GetNetworkId')!;
        final param = getNetworkId.parameters.first;

        expect(param.name, equals('pgdGuidNetworkId'));
        expect(param.typeIdentifier.corType,
            equals(CorElementType.ELEMENT_TYPE_PTR));
        expect(param.typeIdentifier.typeArgs.length, equals(1));
        expect(param.typeIdentifier.typeArgs.first.name, endsWith('Guid'));
      });

      test('GUIDs are projected accurately', () {
        final getNetworkId = iNetwork.findMethod('GetNetworkId')!;
        final param = getNetworkId.parameters.first;
        final projection = TypeProjector(param.typeIdentifier);

        expect(projection.dartType, equals('Pointer<GUID>'));
        expect(projection.nativeType, equals('Pointer<GUID>'));
      });

      test('Enums like NLM_NETWORK_CATEGORY are projected accurately', () {
        final setCategory = iNetwork.findMethod('SetCategory')!;
        final param = setCategory.parameters.first;
        final projection = TypeProjector(param.typeIdentifier);

        expect(projection.dartType, equals('int'));
        expect(projection.nativeType, equals('Uint32'));
      });

      test('Pointers to enums are projected accurately', () {
        final getCategory = iNetwork.findMethod('GetCategory')!;
        final param = getCategory.parameters.first;
        final projection = TypeProjector(param.typeIdentifier);

        expect(projection.dartType, equals('Pointer<Uint32>'));
        expect(projection.nativeType, equals('Pointer<Uint32>'));
      });

      test('Pointers to interfaces are projected accurately', () {
        final getNetworkConnections =
            iNetwork.findMethod('GetNetworkConnections')!;
        final param = getNetworkConnections.parameters.first;
        final projection = TypeProjector(param.typeIdentifier);

        expect(projection.dartType, equals('Pointer<Pointer>'));
        expect(projection.nativeType, equals('Pointer<Pointer>'));
      });

      test('Properties are represented accurately', () {
        final isConnected = iNetwork.findMethod('get_IsConnectedToInternet')!;
        expect(isConnected.isGetProperty, equals(true));
      }, skip: 'https://github.com/microsoft/win32metadata/issues/270');

      test('Properties are represented accurately', () {
        final isConnected = iNetwork.findMethod('get_IsConnectedToInternet')!;
        final param = isConnected.parameters.first;

        expect(param.name, equals('pbIsConnected'));
        expect(param.typeIdentifier.corType,
            equals(CorElementType.ELEMENT_TYPE_PTR));
        expect(param.typeIdentifier.typeArgs.length, equals(1));
        expect(param.typeIdentifier.typeArgs.first.corType,
            equals(CorElementType.ELEMENT_TYPE_I2));
      });

      test('Properties are projected accurately', () {
        final isConnected = iNetwork.findMethod('get_IsConnectedToInternet')!;
        final param = isConnected.parameters.first;
        final projection = TypeProjector(param.typeIdentifier);

        expect(projection.dartType, equals('Pointer<Int16>'));
        expect(projection.nativeType, equals('Pointer<Int16>'));
      });
    });

    group('Projection of INetwork', () {
      final iNetwork =
          scope.findTypeDef('Windows.Win32.NetworkListManager.INetwork')!;
      final projection = ClassProjector(iNetwork).projection;

      test('Correct number of projected methods', () {
        expect(projection.methods.length, equals(13));
      });

      test('Correct number of parameters in a test method', () {
        expect(projection.methods.first.parameters.length, equals(1));
      });

      test('Property can be found in projection', () {
        final isConnected = projection.methods.indexWhere(
            (method) => (method.name == 'get_IsConnectedToInternet'));
        expect(isConnected, isNot(-1));
      });

      test('isConnectedToInternet property is a property', () {
        final isConnected = projection.methods.firstWhere(
            (method) => (method.name == 'get_IsConnectedToInternet'));
        expect(isConnected.isGetProperty, isTrue);
      });

      test('isConnectedToInternet property return is HRESULT', () {
        final isConnected = projection.methods.firstWhere(
            (method) => (method.name == 'get_IsConnectedToInternet'));
        expect(isConnected.returnTypeNative, equals('Int32'));
        expect(isConnected.returnTypeDart, equals('int'));
      });

      test('isConnectedToInternet property parameter is VARIANT_BOOL', () {
        final isConnected = projection.methods.firstWhere(
            (method) => (method.name == 'get_IsConnectedToInternet'));
        expect(isConnected.parameters.length, equals(1));
        expect(isConnected.parameters.first.nativeType, equals('Int16'));
        expect(isConnected.parameters.first.dartType, equals('int'));
      });
    });

    group('Other projection tests', () {
      test('IEnumNetworkConnections.NewEnum returns a Pointer', () {
        final iEnumNetworkConnections = scope.findTypeDef(
            'Windows.Win32.NetworkListManager.IEnumNetworkConnections')!;
        final projection = ClassProjector(iEnumNetworkConnections).projection;
        final newEnum = projection.methods
            .firstWhere((method) => (method.name == 'get__NewEnum'));
        expect(newEnum.parameters.length, equals(1));
        expect(newEnum.parameters.first.nativeType, equals('Pointer'));
        expect(newEnum.parameters.first.dartType, equals('Pointer'));
      });
    });
  }
}
