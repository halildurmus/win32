@TestOn('windows')

import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

import '../../tool/projection/interface.dart';
import '../../tool/projection/method.dart';
import '../../tool/projection/property.dart';
import '../../tool/projection/type.dart';

void main() {
  final scope = MetadataStore.getWin32Scope();

  test('COM method strings are projected to Dart accurately', () {
    final iNetwork = scope
        .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;
    final setName = iNetwork.methods[1];
    final param = setName.parameters.first;
    final projection = TypeProjection(param.typeIdentifier);

    expect(projection.dartType, equals('Pointer<Utf16>'));
  });

  test('COM method string pointers are projected to Dart accurately', () {
    final iNetwork = scope
        .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;
    final getName = iNetwork.methods.first;
    final param = getName.parameters.first;
    final projection = TypeProjection(param.typeIdentifier);

    expect(projection.dartType, equals('Pointer<Pointer<Utf16>>'));
  });

  test('GUIDs are projected accurately', () {
    final iNetwork = scope
        .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;
    final getNetworkId = iNetwork.findMethod('GetNetworkId')!;
    final param = getNetworkId.parameters.first;
    final projection = TypeProjection(param.typeIdentifier);

    expect(projection.dartType, equals('Pointer<GUID>'));
    expect(projection.nativeType, equals('Pointer<GUID>'));
  });

  test('Enums like NLM_NETWORK_CATEGORY are projected accurately', () {
    final iNetwork = scope
        .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;
    final setCategory = iNetwork.findMethod('SetCategory')!;
    final param = setCategory.parameters.first;
    final projection = TypeProjection(param.typeIdentifier);

    expect(projection.dartType, equals('int'));
    expect(projection.nativeType, equals('Int32'));
  });

  test('Pointers to enums are projected accurately', () {
    final iNetwork = scope
        .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;
    final getCategory = iNetwork.findMethod('GetCategory')!;
    final param = getCategory.parameters.first;
    final projection = TypeProjection(param.typeIdentifier);

    expect(projection.dartType, equals('Pointer<Int32>'));
    expect(projection.nativeType, equals('Pointer<Int32>'));
  });

  test('Pointers to interfaces are projected accurately', () {
    final iNetwork = scope
        .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;
    final getNetworkConnections = iNetwork.findMethod('GetNetworkConnections')!;
    final param = getNetworkConnections.parameters.first;
    final projection = TypeProjection(param.typeIdentifier);

    expect(projection.dartType, equals('Pointer<Pointer<COMObject>>'));
    expect(projection.nativeType, equals('Pointer<Pointer<COMObject>>'));
  });

  test('Properties are projected accurately', () {
    final iNetwork = scope
        .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;
    final isConnected = iNetwork.findMethod('get_IsConnectedToInternet')!;
    final param = isConnected.parameters.first;
    final projection = TypeProjection(param.typeIdentifier);

    expect(projection.dartType, equals('Pointer<Int16>'));
    expect(projection.nativeType, equals('Pointer<Int16>'));
  });

  group('Projection of INetwork', () {
    test('Correct number of projected methods', () {
      final iNetwork = scope
          .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;

      final projection = InterfaceProjection(iNetwork);

      expect(projection.methodProjections.length, equals(13));
    });

    test('Correct number of parameters in a test method', () {
      final iNetwork = scope
          .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;

      final projection = InterfaceProjection(iNetwork);

      expect(projection.methodProjections.first.parameters.length, equals(1));
    });

    test('Property can be found in projection', () {
      final iNetwork = scope
          .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;

      final projection = InterfaceProjection(iNetwork);

      final isConnected = projection.methodProjections
          .indexWhere((method) => method.name == 'get_IsConnectedToInternet');
      expect(isConnected, isNot(-1));
    });

    test('isConnectedToInternet property is a property', () {
      final iNetwork = scope
          .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;

      final projection = InterfaceProjection(iNetwork);

      final isConnected = projection.methodProjections
          .firstWhere((method) => method.name == 'get_IsConnectedToInternet');
      expect(isConnected.method.isGetProperty, isTrue);
    });

    test('isConnectedToInternet property return is HRESULT', () {
      final iNetwork = scope
          .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;

      final projection = InterfaceProjection(iNetwork);

      final isConnected = projection.methodProjections
          .firstWhere((method) => method.name == 'get_IsConnectedToInternet');
      expect(isConnected.returnType.nativeType, equals('Int32'));
      expect(isConnected.returnType.dartType, equals('int'));
    });

    test('isConnectedToInternet property parameter is VARIANT_BOOL', () {
      final iNetwork = scope
          .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;

      final projection = InterfaceProjection(iNetwork);

      final isConnected = projection.methodProjections
          .firstWhere((method) => method.name == 'get_IsConnectedToInternet');
      expect(isConnected.parameters.length, equals(1));
      expect(isConnected.parameters.first.type.nativeType,
          equals('Pointer<Int16>'));
      expect(
          isConnected.parameters.first.type.dartType, equals('Pointer<Int16>'));
    });
  });

  test(
      'IEnumNetworkConnections.NewEnum projects the appropriate type for '
      'IEnumVARIANT*', () {
    final iEnumNetworkConnections = scope.findTypeDef(
        'Windows.Win32.Networking.NetworkListManager.IEnumNetworkConnections')!;
    final projection = InterfaceProjection(iEnumNetworkConnections);
    final newEnum = projection.methodProjections
        .firstWhere((method) => method.name == 'get__NewEnum');
    expect(newEnum.parameters.length, equals(1));
    expect(newEnum.parameters.first.type.nativeType,
        equals('Pointer<Pointer<COMObject>>'));
    expect(newEnum.parameters.first.type.dartType,
        equals('Pointer<Pointer<COMObject>>'));
  });

  test(
      'IApplicationActivationManager.ActivateApplication '
      'projects ACTIVATEOPTIONS as an enum', () {
    final iApplicationActivationManager = scope
        .findTypeDef('Windows.Win32.UI.Shell.IApplicationActivationManager')!;
    final activateApplication =
        iApplicationActivationManager.findMethod('ActivateApplication')!;
    final param = activateApplication.parameters[2];
    final projector = TypeProjection(param.typeIdentifier);

    expect(projector.isEnumType, equals(true));
    expect(projector.nativeType, equals('Int32'));
    expect(projector.dartType, equals('int'));
  });
  test('COM interfaces should be represented as Pointers', () {
    final iSpellChecker =
        scope.findTypeDef('Windows.Win32.Globalization.ISpellCheckerFactory')!;
    final createSpellChecker = iSpellChecker.findMethod('CreateSpellChecker')!;
    final type = createSpellChecker
        .parameters.last.typeIdentifier; // ISpellChecker **value
    final typeProjection = TypeProjection(type);

    expect(typeProjection.nativeType, equals('Pointer<Pointer<COMObject>>'));
    expect(typeProjection.dartType, equals('Pointer<Pointer<COMObject>>'));
  });

  test('Interfaces differentiate between methods and properties 1', () {
    final iEnumNetworkConnections = scope.findTypeDef(
        'Windows.Win32.Networking.NetworkListManager.IEnumNetworkConnections')!;
    final interfaceProjection = InterfaceProjection(iEnumNetworkConnections);
    final newEnum = interfaceProjection.methodProjections[0];
    expect(newEnum.name, equals('get__NewEnum'));
    expect(newEnum, isA<GetPropertyProjection>());
    expect(newEnum, isA<MethodProjection>());
  });

  test('Interfaces differentiate between methods and properties 2', () {
    final iEnumNetworkConnections = scope.findTypeDef(
        'Windows.Win32.Networking.NetworkListManager.IEnumNetworkConnections')!;
    final interfaceProjection = InterfaceProjection(iEnumNetworkConnections);
    final next = interfaceProjection.methodProjections[1];
    expect(next.name, equals('Next'));
    expect(next, isNot(isA<GetPropertyProjection>()));
    expect(next, isA<MethodProjection>());
  });
}
