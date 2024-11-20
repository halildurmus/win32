@TestOn('windows')
library;

import 'package:checks/checks.dart';
import 'package:generator/generator.dart';
import 'package:test/scaffolding.dart';

void main() {
  setUpAll(WindowsMetadata.load);

  group('Method', () {
    test('camelCasedUniqueName', () {
      final services = WindowsMetadata.typeDef('IUPnPServices');

      final method1 = services.method('get_Count');
      check(method1.camelCasedUniqueName).equals('count');

      final method2 = services.method('get_Item');
      check(method2.camelCasedUniqueName).equals('item');

      final container = WindowsMetadata.typeDef('ITuningSpaceContainer');

      final method3 = container.method('put_MaxCount');
      check(method3.camelCasedUniqueName).equals('maxCount');

      final method4 = container.method('put_Item');
      check(method4.camelCasedUniqueName).equals('setItem');
    });

    test('canBeProjectedAsGetter', () {
      final services = WindowsMetadata.typeDef('IUPnPServices');

      final method1 = services.method('get_Count');
      check(method1.canBeProjectedAsGetter).isTrue();

      final method2 = services.method('get_Item');
      check(method2.canBeProjectedAsGetter).isFalse();
    });

    test('canBeProjectedAsSetter', () {
      final container = WindowsMetadata.typeDef('ITuningSpaceContainer');

      final method1 = container.method('put_MaxCount');
      check(method1.canBeProjectedAsSetter).isTrue();

      final method2 = container.method('put_Item');
      check(method2.canBeProjectedAsSetter).isFalse();
    });

    test('isObsolete', () {
      final getVersion = WindowsMetadata.function('GetVersion');
      check(getVersion.isObsolete).isTrue();

      final getTickCount = WindowsMetadata.function('GetTickCount');
      check(getTickCount.isObsolete).isFalse();
    });

    test('isQuery', () {
      final coCreateInstance = WindowsMetadata.function('CoCreateInstance');
      check(coCreateInstance.isQuery).isNotNull()
        ..has(
          (it) => it.guid,
          'guid',
        ).has((it) => it.name, 'name').equals('riid')
        ..has((it) => it.guidIdx, 'guidIdx').equals(3)
        ..has(
          (it) => it.object,
          'object',
        ).has((it) => it.name, 'name').equals('ppv')
        ..has((it) => it.objectIdx, 'objectIdx').equals(4);

      final coCreateInstanceEx = WindowsMetadata.function('CoCreateInstanceEx');
      check(coCreateInstanceEx.isQuery).isNull();
    });

    test('isRetVal', () {
      final coCreateGuid = WindowsMetadata.function('CoCreateGuid');
      check(coCreateGuid.isRetVal).isTrue();

      final coCreateInstance = WindowsMetadata.function('CoCreateInstance');
      check(coCreateInstance.isRetVal).isFalse();
    });

    test('nameWithoutEncoding', () {
      final method1 = WindowsMetadata.function('EndMenu');
      check(method1.nameWithoutEncoding).equals('EndMenu');

      final method2 = WindowsMetadata.function('GetClassNameA');
      check(method2.nameWithoutEncoding).equals('GetClassName');

      final method3 = WindowsMetadata.function('GetClassNameW');
      check(method3.nameWithoutEncoding).equals('GetClassName');

      final method4 = WindowsMetadata.function('CommandLineToArgvW');
      check(method4.nameWithoutEncoding).equals('CommandLineToArgv');
    });

    test('supportsLastError', () {
      final credRead = WindowsMetadata.function('CredReadW');
      check(credRead.supportsLastError).isTrue();

      final coCreateGuid = WindowsMetadata.function('CoCreateGuid');
      check(coCreateGuid.supportsLastError).isFalse();
    });

    test('uniqueName', () {
      final idWriteFactory = WindowsMetadata.typeDef('IDWriteFactory');
      final createCustomRenderingParams = idWriteFactory.method(
        'CreateCustomRenderingParams',
      );
      check(
        createCustomRenderingParams.uniqueName,
      ).equals('CreateCustomRenderingParams');

      final idWriteFactory2 = WindowsMetadata.typeDef('IDWriteFactory2');
      final createCustomRenderingParams2 = idWriteFactory2.method(
        'CreateCustomRenderingParams',
      );
      check(
        createCustomRenderingParams2.uniqueName,
      ).equals('CreateCustomRenderingParams2');

      final ipmTaskInfo = WindowsMetadata.typeDef('IPMTaskInfo');
      final runtimeType = ipmTaskInfo.method('get_RuntimeType');
      check(runtimeType.uniqueName).equals(r'get_RuntimeType$');

      final inkStrokes = WindowsMetadata.typeDef('IInkStrokes');
      final toString1 = inkStrokes.method('ToString');
      check(toString1.uniqueName).equals('ToUtf16String');

      final ihtmlDialog = WindowsMetadata.typeDef('IHTMLDialog');
      final toString2 = ihtmlDialog.method('toString');
      check(toString2.uniqueName).equals('toUtf16String');
    });
  });

  tearDownAll(WindowsMetadata.close);
}
