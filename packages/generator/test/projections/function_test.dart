import 'package:checks/checks.dart';
import 'package:generator/generator.dart';
import 'package:meta/meta.dart';
import 'package:test/scaffolding.dart';

void main() {
  setUpAll(WindowsMetadata.load);

  group('FunctionProjection', () {
    testFunction('NtQueryObject', (projection) {
      check(projection.name).equals('NtQueryObject');
      check(projection.originalName).equals('NtQueryObject');
      check(projection.wrapperName).equals('_NtQueryObject');
      check(projection.library).equals('ntdll');
      check(projection.hint).equals(ReturnHint.none);
      check(projection.isNullable).isFalse();
      check(projection.returnType.symbol).equals('NTSTATUS');
      check(projection.nativePrototype.accept(DartEmitter()).toString()).equals(
        'Int32 Function(HANDLE, Int32, Pointer, Uint32, Pointer<Uint32>)',
      );
      check(
        projection.dartPrototype.accept(DartEmitter()).toString(),
      ).equals('int Function(int, int, Pointer, int, Pointer<Uint32>)');
      check(
        projection.methodParameters.map(
          (p) => '${p.dartType.symbol} ${p.name}',
        ),
      ).deepEquals([
        'int? handle',
        'OBJECT_INFORMATION_CLASS objectInformationClass',
        'Pointer? objectInformation',
        'int objectInformationLength',
        'Pointer<Uint32>? returnLength',
      ]);
      check(
        projection.arguments.map((a) => a.accept(DartEmitter()).toString()),
      ).deepEquals([
        'handle ?? NULL',
        'objectInformationClass',
        'objectInformation ?? nullptr',
        'objectInformationLength',
        'returnLength ?? nullptr',
      ]);
      check(projection.category).equals('ntdll');
    });

    testFunction('midiConnect', (projection) {
      check(projection.name).equals('midiConnect');
      check(projection.originalName).equals('midiConnect');
      check(projection.wrapperName).equals('_midiConnect');
      check(projection.library).equals('winmm');
      check(projection.hint).equals(ReturnHint.none);
      check(projection.isNullable).isFalse();
      check(projection.returnType.symbol).equals('int');
      check(
        projection.nativePrototype.accept(DartEmitter()).toString(),
      ).equals('Uint32 Function(HMIDI, HMIDIOUT, Pointer)');
      check(
        projection.dartPrototype.accept(DartEmitter()).toString(),
      ).equals('int Function(int, int, Pointer)');
      check(
        projection.methodParameters.map(
          (p) => '${p.dartType.symbol} ${p.name}',
        ),
      ).deepEquals(['int hmi', 'int hmo']);
      check(
        projection.arguments.map((a) => a.accept(DartEmitter()).toString()),
      ).deepEquals(['hmi', 'hmo', 'nullptr']);
      check(projection.category).equals('winmm');
    });

    testFunction('CoCreateInstanceEx', (projection) {
      check(projection.name).equals('CoCreateInstanceEx');
      check(projection.originalName).equals('CoCreateInstanceEx');
      check(projection.wrapperName).equals('_CoCreateInstanceEx');
      check(projection.library).equals('ole32');
      check(projection.hint).equals(ReturnHint.resultVoid);
      check(projection.isNullable).isFalse();
      check(projection.returnType.symbol).equals('void');
      check(projection.nativePrototype.accept(DartEmitter()).toString()).equals(
        'Int32 Function(Pointer<GUID>, VTablePointer, Uint32, '
        'Pointer<COSERVERINFO>, Uint32, Pointer<MULTI_QI>)',
      );
      check(projection.dartPrototype.accept(DartEmitter()).toString()).equals(
        'int Function(Pointer<GUID>, VTablePointer, int, '
        'Pointer<COSERVERINFO>, int, Pointer<MULTI_QI>)',
      );
      check(
        projection.methodParameters.map(
          (p) => '${p.dartType.symbol} ${p.name}',
        ),
      ).deepEquals([
        'Pointer<GUID> clsid',
        'IUnknown? punkOuter',
        'CLSCTX dwClsCtx',
        'Pointer<COSERVERINFO>? pServerInfo',
        'int dwCount',
        'Pointer<MULTI_QI> pResults',
      ]);
      check(
        projection.arguments.map((a) => a.accept(DartEmitter()).toString()),
      ).deepEquals([
        'clsid',
        'punkOuter?.ptr ?? nullptr',
        'dwClsCtx',
        'pServerInfo ?? nullptr',
        'dwCount',
        'pResults',
      ]);
      check(projection.category).equals('ole32');
    });

    testFunction('CoInitializeEx', (projection) {
      check(projection.name).equals('CoInitializeEx');
      check(projection.originalName).equals('CoInitializeEx');
      check(projection.wrapperName).equals('_CoInitializeEx');
      check(projection.library).equals('ole32');
      check(projection.hint).equals(ReturnHint.none);
      check(projection.isNullable).isFalse();
      check(projection.returnType.symbol).equals('HRESULT');
      check(
        projection.nativePrototype.accept(DartEmitter()).toString(),
      ).equals('Int32 Function(Pointer, Uint32)');
      check(
        projection.dartPrototype.accept(DartEmitter()).toString(),
      ).equals('int Function(Pointer, int)');
      check(
        projection.methodParameters.map(
          (p) => '${p.dartType.symbol} ${p.name}',
        ),
      ).deepEquals(['COINIT dwCoInit']);
      check(
        projection.arguments.map((a) => a.accept(DartEmitter()).toString()),
      ).deepEquals(['nullptr', 'dwCoInit']);
      check(projection.category).equals('ole32');
    });

    testFunction('WindowsConcatString', (projection) {
      check(projection.name).equals('WindowsConcatString');
      check(projection.originalName).equals('WindowsConcatString');
      check(projection.wrapperName).equals('_WindowsConcatString');
      check(projection.library).equals('api_ms_win_core_winrt_string_l1_1_0');
      check(projection.hint).equals(ReturnHint.resultValue);
      check(projection.isNullable).isFalse();
      check(projection.returnType.symbol).equals('int');
      check(
        projection.nativePrototype.accept(DartEmitter()).toString(),
      ).equals('Int32 Function(HSTRING, HSTRING, Pointer<HSTRING>)');
      check(
        projection.dartPrototype.accept(DartEmitter()).toString(),
      ).equals('int Function(int, int, Pointer<HSTRING>)');
      check(
        projection.methodParameters.map(
          (p) => '${p.dartType.symbol} ${p.name}',
        ),
      ).deepEquals(['int? string1', 'int? string2']);
      check(
        projection.arguments.map((a) => a.accept(DartEmitter()).toString()),
      ).deepEquals(['string1 ?? NULL', 'string2 ?? NULL', 'newString']);
      check(projection.category).equals('winrt');
    });

    testFunction('ChooseFontW', (projection) {
      check(projection.name).equals('ChooseFont');
      check(projection.originalName).equals('ChooseFontW');
      check(projection.wrapperName).equals('_ChooseFont');
      check(projection.library).equals('comdlg32');
      check(projection.hint).equals(ReturnHint.returnBoolean);
      check(projection.isNullable).isFalse();
      check(projection.returnType.symbol).equals('bool');
      check(
        projection.nativePrototype.accept(DartEmitter()).toString(),
      ).equals('BOOL Function(Pointer<CHOOSEFONT>)');
      check(
        projection.dartPrototype.accept(DartEmitter()).toString(),
      ).equals('int Function(Pointer<CHOOSEFONT>)');
      check(
        projection.methodParameters.map(
          (p) => '${p.dartType.symbol} ${p.name}',
        ),
      ).deepEquals(['Pointer<CHOOSEFONT> param0']);
      check(
        projection.arguments.map((a) => a.accept(DartEmitter()).toString()),
      ).deepEquals(['param0']);
      check(projection.category).equals('comdlg32');
    });
  });
}

@isTest
void testFunction(
  String functionName,
  void Function(FunctionProjection) projection,
) {
  test(functionName, () {
    final function = WindowsMetadata.findFunctionByName(functionName);
    projection(FunctionProjection(function));
  });
}
