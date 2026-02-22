import 'package:checks/checks.dart';
import 'package:generator/generator.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart' as winmd;

void main() {
  setUpAll(WindowsMetadata.load);

  group('Param', () {
    test('isComOutPtr', () {
      final coCreateInstance = WindowsMetadata.findFunctionByName(
        'CoCreateInstance',
      );
      final ppv = coCreateInstance.findParameter('ppv');
      check(ppv.isComOutPtr).isTrue();

      final coGetMalloc = WindowsMetadata.findFunctionByName('CoGetMalloc');
      final ppMalloc = coGetMalloc.findParameter('ppMalloc');
      check(ppMalloc.isComOutPtr).isFalse();
    });

    test('isNullable', () {
      final coCreateInstance = WindowsMetadata.findFunctionByName(
        'CoCreateInstance',
      );
      final rclsid = coCreateInstance.findParameter('rclsid');
      check(rclsid.isNullable).isFalse();
      final pUnkOuter = coCreateInstance.findParameter('pUnkOuter');
      check(pUnkOuter.isNullable).isTrue();

      final coRegisterClassObject = WindowsMetadata.findFunctionByName(
        'CoRegisterClassObject',
      );
      final pUnk = coRegisterClassObject.findParameter('pUnk');
      check(pUnk.isNullable).isTrue();
    });

    test('isReserved', () {
      final coInitEx = WindowsMetadata.findFunctionByName('CoInitializeEx');

      final pvReserved = coInitEx.parameters.first;
      check(pvReserved.isReserved).isTrue();

      final dwCoInit = coInitEx.parameters.last;
      check(dwCoInit.isReserved).isFalse();
    });

    test('isRetVal', () {
      final coCreateGuid = WindowsMetadata.findFunctionByName('CoCreateGuid');
      final pGuid = coCreateGuid.findParameter('pguid');
      check(pGuid.isRetVal).isTrue();

      final coCreateInstance = WindowsMetadata.findFunctionByName(
        'CoCreateInstance',
      );
      final ppv = coCreateInstance.findParameter('ppv');
      check(ppv.isRetVal).isFalse();
    });
  });
}
