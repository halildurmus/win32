@TestOn('windows')

import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

import '../../tool/metadata/projection/classprojector.dart';
import '../../tool/metadata/projection/typeprojector.dart';

void main() {
  final scope = MetadataStore.getWin32Scope();

  test('COM method strings are projected to Dart accurately', () {
    final iNetwork = scope
        .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;
    final setName = iNetwork.methods[1];
    final param = setName.parameters.first;
    final projection = TypeProjector(param.typeIdentifier);

    expect(projection.dartType, equals('Pointer<Utf16>'));
  });

  test('COM method string pointers are projected to Dart accurately', () {
    final iNetwork = scope
        .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;
    final getName = iNetwork.methods.first;
    final param = getName.parameters.first;
    final projection = TypeProjector(param.typeIdentifier);

    expect(projection.dartType, equals('Pointer<Pointer<Utf16>>'));
  });

  test('GUIDs are projected accurately', () {
    final iNetwork = scope
        .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;
    final getNetworkId = iNetwork.findMethod('GetNetworkId')!;
    final param = getNetworkId.parameters.first;
    final projection = TypeProjector(param.typeIdentifier);

    expect(projection.dartType, equals('Pointer<GUID>'));
    expect(projection.nativeType, equals('Pointer<GUID>'));
  });

  test('Enums like NLM_NETWORK_CATEGORY are projected accurately', () {
    final iNetwork = scope
        .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;
    final setCategory = iNetwork.findMethod('SetCategory')!;
    final param = setCategory.parameters.first;
    final projection = TypeProjector(param.typeIdentifier);

    expect(projection.dartType, equals('int'));
    expect(projection.nativeType, equals('Uint32'));
  });

  test('Pointers to enums are projected accurately', () {
    final iNetwork = scope
        .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;
    final getCategory = iNetwork.findMethod('GetCategory')!;
    final param = getCategory.parameters.first;
    final projection = TypeProjector(param.typeIdentifier);

    expect(projection.dartType, equals('Pointer<Uint32>'));
    expect(projection.nativeType, equals('Pointer<Uint32>'));
  });

  test('Pointers to interfaces are projected accurately', () {
    final iNetwork = scope
        .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;
    final getNetworkConnections = iNetwork.findMethod('GetNetworkConnections')!;
    final param = getNetworkConnections.parameters.first;
    final projection = TypeProjector(param.typeIdentifier);

    expect(projection.dartType, equals('Pointer<Pointer>'));
    expect(projection.nativeType, equals('Pointer<Pointer>'));
  });

  test('Properties are projected accurately', () {
    final iNetwork = scope
        .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;
    final isConnected = iNetwork.findMethod('get_IsConnectedToInternet')!;
    final param = isConnected.parameters.first;
    final projection = TypeProjector(param.typeIdentifier);

    expect(projection.dartType, equals('Pointer<Int16>'));
    expect(projection.nativeType, equals('Pointer<Int16>'));
  });

  group('Projection of INetwork', () {
    test('Correct number of projected methods', () {
      final iNetwork = scope
          .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;

      final projection = ClassProjector(iNetwork).projection;

      expect(projection.methods.length, equals(13));
    });

    test('Correct number of parameters in a test method', () {
      final iNetwork = scope
          .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;

      final projection = ClassProjector(iNetwork).projection;

      expect(projection.methods.first.parameters.length, equals(1));
    });

    test('Property can be found in projection', () {
      final iNetwork = scope
          .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;

      final projection = ClassProjector(iNetwork).projection;

      final isConnected = projection.methods
          .indexWhere((method) => (method.name == 'get_IsConnectedToInternet'));
      expect(isConnected, isNot(-1));
    });

    test('isConnectedToInternet property is a property', () {
      final iNetwork = scope
          .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;

      final projection = ClassProjector(iNetwork).projection;

      final isConnected = projection.methods
          .firstWhere((method) => (method.name == 'get_IsConnectedToInternet'));
      expect(isConnected.isGetProperty, isTrue);
    });

    test('isConnectedToInternet property return is HRESULT', () {
      final iNetwork = scope
          .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;

      final projection = ClassProjector(iNetwork).projection;

      final isConnected = projection.methods
          .firstWhere((method) => (method.name == 'get_IsConnectedToInternet'));
      expect(isConnected.returnTypeNative, equals('Int32'));
      expect(isConnected.returnTypeDart, equals('int'));
    });

    test('isConnectedToInternet property parameter is VARIANT_BOOL', () {
      final iNetwork = scope
          .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;

      final projection = ClassProjector(iNetwork).projection;

      final isConnected = projection.methods
          .firstWhere((method) => (method.name == 'get_IsConnectedToInternet'));
      expect(isConnected.parameters.length, equals(1));
      expect(isConnected.parameters.first.nativeType, equals('Int16'));
      expect(isConnected.parameters.first.dartType, equals('int'));
    });
  });

  test('IEnumNetworkConnections.NewEnum projects a Pointer', () {
    final iEnumNetworkConnections = scope.findTypeDef(
        'Windows.Win32.Networking.NetworkListManager.IEnumNetworkConnections')!;
    final projection = ClassProjector(iEnumNetworkConnections).projection;
    final newEnum = projection.methods
        .firstWhere((method) => (method.name == 'get__NewEnum'));
    expect(newEnum.parameters.length, equals(1));
    expect(newEnum.parameters.first.nativeType, equals('Pointer'));
    expect(newEnum.parameters.first.dartType, equals('Pointer'));
  });

  test(
      'IApplicationActivationManager.ActivateApplication '
      'projects ACTIVATEOPTIONS as an enum', () {
    final iApplicationActivationManager = scope
        .findTypeDef('Windows.Win32.UI.Shell.IApplicationActivationManager')!;
    final activateApplication =
        iApplicationActivationManager.findMethod('ActivateApplication')!;
    final param = activateApplication.parameters[2];
    final projector = TypeProjector(param.typeIdentifier);

    expect(projector.isTypeAnEnum, equals(true));
    expect(projector.nativeType, equals('Uint32'));
    expect(projector.dartType, equals('int'));
  });
  test('COM interfaces should be represented as Pointers', () {
    final iSpellChecker =
        scope.findTypeDef('Windows.Win32.Globalization.ISpellCheckerFactory')!;
    final createSpellChecker = iSpellChecker.findMethod('CreateSpellChecker')!;
    final type = createSpellChecker
        .parameters.last.typeIdentifier; // ISpellChecker **value
    final typeProjection = TypeProjector(type);

    expect(typeProjection.nativeType, equals('Pointer<ISpellChecker>'));
    expect(typeProjection.dartType, equals('Pointer<ISpellChecker>'));
  });
}
