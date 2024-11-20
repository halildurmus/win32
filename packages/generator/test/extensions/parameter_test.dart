@TestOn('windows')
library;

import 'package:checks/checks.dart';
import 'package:generator/generator.dart';
import 'package:test/scaffolding.dart';

void main() {
  setUpAll(WindowsMetadata.load);

  group('Parameter', () {
    test('isComOutPtr', () {
      final coCreateInstance = WindowsMetadata.function('CoCreateInstance');
      final ppv = coCreateInstance.parameter('ppv');
      check(ppv.isComOutPtr).isTrue();

      final coGetMalloc = WindowsMetadata.function('CoGetMalloc');
      final ppMalloc = coGetMalloc.parameter('ppMalloc');
      check(ppMalloc.isComOutPtr).isFalse();
    });

    test('isNullable', () {
      final coCreateInstance = WindowsMetadata.function('CoCreateInstance');
      final rclsid = coCreateInstance.parameter('rclsid');
      check(rclsid.isNullable).isFalse();
      final pUnkOuter = coCreateInstance.parameter('pUnkOuter');
      check(pUnkOuter.isNullable).isTrue();

      final coRegisterClassObject = WindowsMetadata.function(
        'CoRegisterClassObject',
      );
      final pUnk = coRegisterClassObject.parameter('pUnk');
      check(pUnk.isNullable).isTrue();
    });

    test('isReserved', () {
      final coInitEx = WindowsMetadata.function('CoInitializeEx');

      final pvReserved = coInitEx.parameters.first;
      check(pvReserved.isReserved).isTrue();

      final dwCoInit = coInitEx.parameters.last;
      check(dwCoInit.isReserved).isFalse();
    });

    test('isRetVal', () {
      final coCreateGuid = WindowsMetadata.function('CoCreateGuid');
      final pGuid = coCreateGuid.parameter('pguid');
      check(pGuid.isRetVal).isTrue();

      final coCreateInstance = WindowsMetadata.function('CoCreateInstance');
      final ppv = coCreateInstance.parameter('ppv');
      check(ppv.isRetVal).isFalse();
    });
  });

  tearDownAll(WindowsMetadata.close);
}
