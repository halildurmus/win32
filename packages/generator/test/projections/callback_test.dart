import 'package:checks/checks.dart';
import 'package:generator/generator.dart';
import 'package:meta/meta.dart';
import 'package:test/scaffolding.dart';

void main() {
  setUpAll(WindowsMetadata.load);

  group('CallbackProjection', () {
    testCallback('DRIVER_ADD_DEVICE', (projection) {
      check(projection.name).equals('DRIVER_ADD_DEVICE');
      check(projection.originalName).equals('DRIVER_ADD_DEVICE');
      check(projection.returnType.symbol).equals('Int32');
      check(projection.parameters.length).equals(2);
      check(
        projection.parameters.map((p) => '${p.type!.symbol} ${p.name}'),
      ).deepEquals([
        'Pointer<DRIVER_OBJECT> driverObject',
        'Pointer<DEVICE_OBJECT> physicalDeviceObject',
      ]);
    });

    testCallback('INIT_SECURITY_INTERFACE_W', (projection) {
      check(projection.name).equals('INIT_SECURITY_INTERFACE');
      check(projection.originalName).equals('INIT_SECURITY_INTERFACE_W');
      check(
        projection.returnType.symbol,
      ).equals('Pointer<SecurityFunctionTable>');
      check(projection.parameters).isEmpty();
    });

    testCallback('FONTENUMPROCW', (projection) {
      check(projection.name).equals('FONTENUMPROC');
      check(projection.originalName).equals('FONTENUMPROCW');
      check(projection.returnType.symbol).equals('Int32');
      check(projection.parameters.length).equals(4);
      check(
        projection.parameters.map((p) => '${p.type!.symbol} ${p.name}'),
      ).deepEquals([
        'Pointer<LOGFONT> param0',
        'Pointer<TEXTMETRIC> param1',
        'Uint32 param2',
        'LPARAM param3',
      ]);
    });

    testCallback('PROC', (projection) {
      check(projection.name).equals('PROC');
      check(projection.originalName).equals('PROC');
      check(projection.returnType.symbol).equals('Pointer');
      check(projection.parameters).isEmpty();
    });

    testCallback('WNDPROC', (projection) {
      check(projection.name).equals('WNDPROC');
      check(projection.originalName).equals('WNDPROC');
      check(projection.returnType.symbol).equals('LRESULT');
      check(projection.parameters.length).equals(4);
      check(
        projection.parameters.map((p) => '${p.type!.symbol} ${p.name}'),
      ).deepEquals([
        'HWND param0',
        'Uint32 param1',
        'WPARAM param2',
        'LPARAM param3',
      ]);
    });
  });
}

@isTest
void testCallback(
  String callbackName,
  void Function(CallbackProjection) projection,
) {
  test(callbackName, () {
    final typeDef = WindowsMetadata.findTypeDefByName(callbackName);
    projection(CallbackProjection(typeDef));
  });
}
