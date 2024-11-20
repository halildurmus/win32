import 'package:checks/checks.dart';
import 'package:generator/generator.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart' as winmd;

void main() {
  setUpAll(WindowsMetadata.load);

  group('MethodDef', () {
    test('camelCasedUniqueName', () {
      final services = WindowsMetadata.findTypeDefByName('IUPnPServices');

      final method1 = services.findMethod('get_Count');
      check(method1.camelCasedUniqueName).equals('count');

      final method2 = services.findMethod('get_Item');
      check(method2.camelCasedUniqueName).equals('item');

      final container = WindowsMetadata.findTypeDefByName(
        'ITuningSpaceContainer',
      );

      final method3 = container.findMethod('put_MaxCount');
      check(method3.camelCasedUniqueName).equals('maxCount');

      final method4 = container.findMethod('put_Item');
      check(method4.camelCasedUniqueName).equals('setItem');
    });

    test('canBeProjectedAsGetter', () {
      final services = WindowsMetadata.findTypeDefByName('IUPnPServices');

      final method1 = services.findMethod('get_Count');
      check(method1.canBeProjectedAsGetter).isTrue();

      final method2 = services.findMethod('get_Item');
      check(method2.canBeProjectedAsGetter).isFalse();
    });

    test('canBeProjectedAsSetter', () {
      final container = WindowsMetadata.findTypeDefByName(
        'ITuningSpaceContainer',
      );

      final method1 = container.findMethod('put_MaxCount');
      check(method1.canBeProjectedAsSetter).isTrue();

      final method2 = container.findMethod('put_Item');
      check(method2.canBeProjectedAsSetter).isFalse();
    });

    test('isObsolete', () {
      final getVersion = WindowsMetadata.findFunctionByName('GetVersion');
      check(getVersion.isObsolete).isTrue();

      final getTickCount = WindowsMetadata.findFunctionByName('GetTickCount');
      check(getTickCount.isObsolete).isFalse();
    });

    test('isQuery', () {
      final coCreateInstance = WindowsMetadata.findFunctionByName(
        'CoCreateInstance',
      );
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

      final coCreateInstanceEx = WindowsMetadata.findFunctionByName(
        'CoCreateInstanceEx',
      );
      check(coCreateInstanceEx.isQuery).isNull();
    });

    test('isRetVal', () {
      final coCreateGuid = WindowsMetadata.findFunctionByName('CoCreateGuid');
      check(coCreateGuid.isRetVal).isTrue();

      final coCreateInstance = WindowsMetadata.findFunctionByName(
        'CoCreateInstance',
      );
      check(coCreateInstance.isRetVal).isFalse();
    });

    test('nameWithoutEncoding', () {
      final method1 = WindowsMetadata.findFunctionByName('EndMenu');
      check(method1.nameWithoutEncoding).equals('EndMenu');

      final method2 = WindowsMetadata.findFunctionByName('GetClassNameA');
      check(method2.nameWithoutEncoding).equals('GetClassName');

      final method3 = WindowsMetadata.findFunctionByName('GetClassNameW');
      check(method3.nameWithoutEncoding).equals('GetClassName');

      final method4 = WindowsMetadata.findFunctionByName('CommandLineToArgvW');
      check(method4.nameWithoutEncoding).equals('CommandLineToArgv');
    });

    test('supportsLastError', () {
      final credRead = WindowsMetadata.findFunctionByName('CredReadW');
      check(credRead.supportsLastError).isTrue();

      final coCreateGuid = WindowsMetadata.findFunctionByName('CoCreateGuid');
      check(coCreateGuid.supportsLastError).isFalse();
    });

    test('uniqueName', () {
      final idWriteFactory = WindowsMetadata.findTypeDefByName(
        'IDWriteFactory',
      );
      final createCustomRenderingParams = idWriteFactory.findMethod(
        'CreateCustomRenderingParams',
      );
      check(
        createCustomRenderingParams.uniqueName,
      ).equals('CreateCustomRenderingParams');

      final idWriteFactory2 = WindowsMetadata.findTypeDefByName(
        'IDWriteFactory2',
      );
      final createCustomRenderingParams2 = idWriteFactory2.findMethod(
        'CreateCustomRenderingParams',
      );
      check(
        createCustomRenderingParams2.uniqueName,
      ).equals('CreateCustomRenderingParams2');

      final ipmTaskInfo = WindowsMetadata.findTypeDefByName('IPMTaskInfo');
      final runtimeType = ipmTaskInfo.findMethod('get_RuntimeType');
      check(runtimeType.uniqueName).equals(r'get_RuntimeType$');

      final inkStrokes = WindowsMetadata.findTypeDefByName('IInkStrokes');
      final toString1 = inkStrokes.findMethod('ToString');
      check(toString1.uniqueName).equals('ToUtf16String');

      final ihtmlDialog = WindowsMetadata.findTypeDefByName('IHTMLDialog');
      final toString2 = ihtmlDialog.findMethod('toString');
      check(toString2.uniqueName).equals('toUtf16String');
    });
  });
}
