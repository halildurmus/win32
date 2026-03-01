import 'package:checks/checks.dart';
import 'package:generator/generator.dart';
import 'package:meta/meta.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart' as winmd;

void main() {
  setUpAll(WindowsMetadata.load);

  group('ComMethodProjection', () {
    testMethod('IDWriteFactory', 'CreateCustomRenderingParams', (projection) {
      check(projection.name).equals('createCustomRenderingParams');
      check(projection.originalName).equals('CreateCustomRenderingParams');
      check(projection.wrapperName).equals('_CreateCustomRenderingParamsFn');
      check(projection.hint).equals(.resultValue);
      check(projection.isNullable).isTrue();
      check(projection.returnType.symbol).equals('IDWriteRenderingParams?');
      check(projection.nativePrototype.accept(DartEmitter()).toString()).equals(
        'Int32 Function(VTablePointer, Float, Float, Float, Int32, '
        'Int32, Pointer<VTablePointer>)',
      );
      check(projection.dartPrototype.accept(DartEmitter()).toString()).equals(
        'int Function(VTablePointer, double, double, double, int, '
        'int, Pointer<VTablePointer>)',
      );
      check(
        projection.methodParameters.map(
          (p) => '${p.dartType.symbol} ${p.name}',
        ),
      ).deepEquals([
        'double gamma',
        'double enhancedContrast',
        'double clearTypeLevel',
        'DWRITE_PIXEL_GEOMETRY pixelGeometry',
        'DWRITE_RENDERING_MODE renderingMode',
      ]);
      check(
        projection.arguments.map((a) => a.accept(DartEmitter()).toString()),
      ).deepEquals([
        'ptr',
        'gamma',
        'enhancedContrast',
        'clearTypeLevel',
        'pixelGeometry',
        'renderingMode',
        'renderingParams',
      ]);
    });

    testMethod('IDWriteFactory1', 'CreateCustomRenderingParams', (projection) {
      check(projection.name).equals('createCustomRenderingParams2');
      check(projection.originalName).equals('CreateCustomRenderingParams');
      check(projection.wrapperName).equals('_CreateCustomRenderingParams2Fn');
      check(projection.hint).equals(.resultValue);
      check(projection.isNullable).isTrue();
      check(projection.returnType.symbol).equals('IDWriteRenderingParams1?');
      check(projection.nativePrototype.accept(DartEmitter()).toString()).equals(
        'Int32 Function(VTablePointer, Float, Float, Float, Float, '
        'Int32, Int32, Pointer<VTablePointer>)',
      );
      check(projection.dartPrototype.accept(DartEmitter()).toString()).equals(
        'int Function(VTablePointer, double, double, double, double, '
        'int, int, Pointer<VTablePointer>)',
      );
      check(
        projection.methodParameters.map(
          (p) => '${p.dartType.symbol} ${p.name}',
        ),
      ).deepEquals([
        'double gamma',
        'double enhancedContrast',
        'double enhancedContrastGrayscale',
        'double clearTypeLevel',
        'DWRITE_PIXEL_GEOMETRY pixelGeometry',
        'DWRITE_RENDERING_MODE renderingMode',
      ]);
      check(
        projection.arguments.map((a) => a.accept(DartEmitter()).toString()),
      ).deepEquals([
        'ptr',
        'gamma',
        'enhancedContrast',
        'enhancedContrastGrayscale',
        'clearTypeLevel',
        'pixelGeometry',
        'renderingMode',
        'renderingParams',
      ]);
    });

    testMethod('IDWriteFactory2', 'CreateCustomRenderingParams', (projection) {
      check(projection.name).equals('createCustomRenderingParams3');
      check(projection.originalName).equals('CreateCustomRenderingParams');
      check(projection.wrapperName).equals('_CreateCustomRenderingParams3Fn');
      check(projection.hint).equals(.resultValue);
      check(projection.isNullable).isTrue();
      check(projection.returnType.symbol).equals('IDWriteRenderingParams2?');
      check(projection.nativePrototype.accept(DartEmitter()).toString()).equals(
        'Int32 Function(VTablePointer, Float, Float, Float, Float, '
        'Int32, Int32, Int32, Pointer<VTablePointer>)',
      );
      check(projection.dartPrototype.accept(DartEmitter()).toString()).equals(
        'int Function(VTablePointer, double, double, double, double, '
        'int, int, int, Pointer<VTablePointer>)',
      );
      check(
        projection.methodParameters.map(
          (p) => '${p.dartType.symbol} ${p.name}',
        ),
      ).deepEquals([
        'double gamma',
        'double enhancedContrast',
        'double grayscaleEnhancedContrast',
        'double clearTypeLevel',
        'DWRITE_PIXEL_GEOMETRY pixelGeometry',
        'DWRITE_RENDERING_MODE renderingMode',
        'DWRITE_GRID_FIT_MODE gridFitMode',
      ]);
      check(
        projection.arguments.map((a) => a.accept(DartEmitter()).toString()),
      ).deepEquals([
        'ptr',
        'gamma',
        'enhancedContrast',
        'grayscaleEnhancedContrast',
        'clearTypeLevel',
        'pixelGeometry',
        'renderingMode',
        'gridFitMode',
        'renderingParams',
      ]);
    });

    testMethod('ISpVoice', 'Speak', (projection) {
      check(projection.name).equals('speak');
      check(projection.originalName).equals('Speak');
      check(projection.wrapperName).equals('_SpeakFn');
      check(projection.hint).equals(.resultVoid);
      check(projection.isNullable).isFalse();
      check(projection.returnType.symbol).equals('void');
      check(projection.nativePrototype.accept(DartEmitter()).toString()).equals(
        'Int32 Function(VTablePointer, Pointer<Utf16>, Uint32, Pointer<Uint32>)',
      );
      check(projection.dartPrototype.accept(DartEmitter()).toString()).equals(
        'int Function(VTablePointer, Pointer<Utf16>, int, Pointer<Uint32>)',
      );
      check(
        projection.methodParameters.map(
          (p) => '${p.dartType.symbol} ${p.name}',
        ),
      ).deepEquals([
        'PCWSTR? pwcs',
        'int dwFlags',
        'Pointer<Uint32>? pulStreamNumber',
      ]);
      check(
        projection.arguments.map((a) => a.accept(DartEmitter()).toString()),
      ).deepEquals([
        'ptr',
        'pwcs ?? nullptr',
        'dwFlags',
        'pulStreamNumber ?? nullptr',
      ]);
    });

    testMethod('IModalWindow', 'Show', (projection) {
      check(projection.name).equals('show');
      check(projection.originalName).equals('Show');
      check(projection.wrapperName).equals('_ShowFn');
      check(projection.hint).equals(.resultVoid);
      check(projection.isNullable).isFalse();
      check(projection.returnType.symbol).equals('void');
      check(
        projection.nativePrototype.accept(DartEmitter()).toString(),
      ).equals('Int32 Function(VTablePointer, Pointer)');
      check(
        projection.dartPrototype.accept(DartEmitter()).toString(),
      ).equals('int Function(VTablePointer, Pointer)');
      check(
        projection.methodParameters.map(
          (p) => '${p.dartType.symbol} ${p.name}',
        ),
      ).deepEquals(['HWND? hwndOwner']);
      check(
        projection.arguments.map((a) => a.accept(DartEmitter()).toString()),
      ).deepEquals(['ptr', 'hwndOwner ?? nullptr']);
    });

    testMethod('IShellFolder', 'ParseDisplayName', (projection) {
      check(projection.name).equals('parseDisplayName');
      check(projection.originalName).equals('ParseDisplayName');
      check(projection.wrapperName).equals('_ParseDisplayNameFn');
      check(projection.hint).equals(.resultVoid);
      check(projection.isNullable).isFalse();
      check(projection.returnType.symbol).equals('void');
      check(projection.nativePrototype.accept(DartEmitter()).toString()).equals(
        'Int32 Function(VTablePointer, Pointer, VTablePointer, '
        'Pointer<Utf16>, Pointer<Uint32>, Pointer<Pointer<ITEMIDLIST>>, '
        'Pointer<Uint32>)',
      );
      check(projection.dartPrototype.accept(DartEmitter()).toString()).equals(
        'int Function(VTablePointer, Pointer, VTablePointer, '
        'Pointer<Utf16>, Pointer<Uint32>, Pointer<Pointer<ITEMIDLIST>>, '
        'Pointer<Uint32>)',
      );
      check(
        projection.methodParameters.map(
          (p) => '${p.dartType.symbol} ${p.name}',
        ),
      ).deepEquals([
        'HWND hwnd',
        'IBindCtx? pbc',
        'PCWSTR pszDisplayName',
        'Pointer<Pointer<ITEMIDLIST>> ppidl',
        'Pointer<Uint32> pdwAttributes',
      ]);
      check(
        projection.arguments.map((a) => a.accept(DartEmitter()).toString()),
      ).deepEquals([
        'ptr',
        'hwnd',
        'pbc?.ptr ?? nullptr',
        'pszDisplayName',
        'nullptr',
        'ppidl',
        'pdwAttributes',
      ]);
    });

    testMethod('IInkStrokes', 'ToString', (projection) {
      check(projection.name).equals('toUtf16String');
      check(projection.originalName).equals('ToString');
      check(projection.wrapperName).equals('_ToUtf16StringFn');
      check(projection.hint).equals(.resultValue);
      check(projection.isNullable).isFalse();
      check(projection.returnType.symbol).equals('BSTR');
      check(
        projection.nativePrototype.accept(DartEmitter()).toString(),
      ).equals('Int32 Function(VTablePointer, Pointer<Pointer<Utf16>>)');
      check(
        projection.dartPrototype.accept(DartEmitter()).toString(),
      ).equals('int Function(VTablePointer, Pointer<Pointer<Utf16>>)');
      check(projection.methodParameters).isEmpty();
      check(
        projection.arguments.map((a) => a.accept(DartEmitter()).toString()),
      ).deepEquals(['ptr', 'toString']);
    });

    testMethod('IHTMLStyle', 'toString', (projection) {
      check(projection.name).equals('toUtf16String');
      check(projection.originalName).equals('toString');
      check(projection.wrapperName).equals('_toUtf16StringFn');
      check(projection.hint).equals(.resultValue);
      check(projection.isNullable).isFalse();
      check(projection.returnType.symbol).equals('BSTR');
      check(
        projection.nativePrototype.accept(DartEmitter()).toString(),
      ).equals('Int32 Function(VTablePointer, Pointer<Pointer<Utf16>>)');
      check(
        projection.dartPrototype.accept(DartEmitter()).toString(),
      ).equals('int Function(VTablePointer, Pointer<Pointer<Utf16>>)');
      check(projection.methodParameters).isEmpty();
      check(
        projection.arguments.map((a) => a.accept(DartEmitter()).toString()),
      ).deepEquals(['ptr', 'string']);
    });
  });
}

@isTest
void testMethod(
  String parent,
  String methodName,
  void Function(ComMethodProjection) projection,
) {
  test('$parent.$methodName', () {
    final typeDef = WindowsMetadata.findTypeDefByName(parent);
    final method = typeDef.findMethod(methodName);
    projection(.new(method));
  });
}
