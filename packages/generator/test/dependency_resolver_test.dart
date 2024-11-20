@TestOn('windows')
library;

import 'package:checks/checks.dart';
import 'package:generator/generator.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

void main() {
  group('DependencyResolver', () {
    setUpAll(WindowsMetadata.load);

    group('resolve', () {
      test('returns empty list for token 0', () {
        final object = TypeDef(WindowsMetadata.win32);
        final deps = DependencyResolver.resolve(object);
        check(deps).isEmpty();
      });

      test('resolves dependencies of a delegate', () {
        final method = WindowsMetadata.findTypeDef('WNDENUMPROC');
        final deps = DependencyResolver.resolve(method);
        check(deps)
          ..isNotEmpty()
          ..length.equals(3);
        check(
          deps.map((it) => it.simpleName),
        ).deepEquals(['BOOL', 'HWND', 'LPARAM']);
      });

      test('resolves dependencies of a function', () {
        final method = WindowsMetadata.findFunction('CoCreateInstanceEx');
        final deps = DependencyResolver.resolve(method);
        check(deps)
          ..isNotEmpty()
          ..length.equals(8);
        check(deps.map((it) => it.simpleName)).deepEquals([
          'HRESULT',
          'PWSTR',
          'COAUTHIDENTITY',
          'COAUTHINFO',
          'CLSCTX',
          'IUnknown',
          'COSERVERINFO',
          'MULTI_QI',
        ]);
      });

      test('resolves dependencies of an interface', () {
        final method = WindowsMetadata.findTypeDef('IFileDialog');
        final deps = DependencyResolver.resolve(method);
        check(deps)
          ..isNotEmpty()
          ..length.equals(30);
        check(deps.map((it) => it.simpleName)).deepEquals([
          'ROT_FLAGS',
          'STGM',
          'SFGAO_FLAGS',
          'BOOL',
          'HRESULT',
          'HWND',
          'PWSTR',
          'STGC',
          'STATFLAG',
          'IUnknown',
          'IEnumString',
          'STATSTG',
          'STREAM_SEEK',
          'LOCKTYPE',
          'IStream',
          'BIND_OPTS',
          'IBindCtx',
          'IEnumMoniker',
          'IRunningObjectTable',
          'IMoniker',
          'FILETIME',
          'COMDLG_FILTERSPEC',
          'SIGDN',
          'IShellItem',
          'FDE_OVERWRITE_RESPONSE',
          'FDE_SHAREVIOLATION_RESPONSE',
          'FDAP',
          'IFileDialogEvents',
          'FILEOPENDIALOGOPTIONS',
          'IShellItemFilter',
        ]);
      });

      test('resolves dependencies of a struct', () {
        final method = WindowsMetadata.findTypeDef('VARIANT');
        final deps = DependencyResolver.resolve(method);
        check(deps)
          ..isNotEmpty()
          ..length.equals(46);
        check(deps.map((it) => it.simpleName)).deepEquals([
          'LPEXCEPFINO_DEFERRED_FILLIN',
          'ADVANCED_FEATURE_FLAGS',
          'IMPLTYPEFLAGS',
          'IDLFLAGS',
          'DISPATCH_FLAGS',
          'PARAMFLAGS',
          'BSTR',
          'BOOL',
          'VARIANT_BOOL',
          'HRESULT',
          'PSTR',
          'PWSTR',
          'CHAR',
          'DECIMAL',
          'CY',
          'VARENUM',
          'IUnknown',
          'ARRAYDESC',
          'PARAMDESCEX',
          'PARAMDESC',
          'IRecordInfo',
          'SAFEARRAYBOUND',
          'SAFEARRAY',
          'TYPEKIND',
          'TYPEDESC',
          'IDLDESC',
          'ELEMDESC',
          'TYPEATTR',
          'DISPPARAMS',
          'EXCEPINFO',
          'CALLCONV',
          'FUNCKIND',
          'INVOKEKIND',
          'FUNCDESC',
          'VARKIND',
          'VARDESC',
          'FUNCFLAGS',
          'VARFLAGS',
          'IDispatch',
          'DESCKIND',
          'BINDPTR',
          'ITypeComp',
          'ITypeInfo',
          'SYSKIND',
          'TLIBATTR',
          'ITypeLib',
        ]);
      });
    });

    group('resolveMulti', () {
      test(
        'aggregates dependencies from multiple objects without duplication',
        () {
          final object1 = WindowsMetadata.findFunction('CoGetMalloc');
          final object2 = WindowsMetadata.findTypeDef('IMalloc');
          final deps = DependencyResolver.resolveMulti([object1, object2]);
          check(deps)
            ..isNotEmpty()
            ..length.equals(2);
          check(
            deps.map((it) => it.simpleName),
          ).deepEquals(['HRESULT', 'IMalloc']);
        },
      );
    });

    tearDownAll(WindowsMetadata.close);
  });
}
