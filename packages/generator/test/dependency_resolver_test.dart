import 'package:checks/checks.dart';
import 'package:generator/generator.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('DependencyResolver', () {
    setUpAll(WindowsMetadata.load);

    group('resolve', () {
      test('resolves dependencies of a delegate', () {
        final typeDef = WindowsMetadata.findTypeDefByName('WNDENUMPROC');
        final deps = DependencyResolver.resolve(typeDef);
        check(deps)
          ..isNotEmpty()
          ..length.equals(7);
        check(deps.map((it) => it.name)).deepEquals([
          'HSTRING',
          'BOOL',
          'HRESULT',
          'HWND',
          'LPARAM',
          'TrustLevel',
          'IInspectable',
        ]);
      });

      test('resolves dependencies of a function', () {
        final typeDef = WindowsMetadata.findFunctionByName(
          'CoCreateInstanceEx',
        );
        final deps = DependencyResolver.resolve(typeDef);
        check(deps)
          ..isNotEmpty()
          ..length.equals(8);
        check(deps.map((it) => it.name)).deepEquals([
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
        final typeDef = WindowsMetadata.findTypeDefByName('IFileDialog');
        final deps = DependencyResolver.resolve(typeDef);
        check(deps)
          ..isNotEmpty()
          ..length.equals(30);
        check(deps.map((it) => it.name)).deepEquals([
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
        final typeDef = WindowsMetadata.findTypeDefByName('VARIANT');
        final deps = DependencyResolver.resolve(typeDef);
        check(deps)
          ..isNotEmpty()
          ..length.equals(49);
        check(deps.map((it) => it.name)).deepEquals([
          'LPEXCEPFINO_DEFERRED_FILLIN',
          'ADVANCED_FEATURE_FLAGS',
          'IMPLTYPEFLAGS',
          'IDLFLAGS',
          'DISPATCH_FLAGS',
          'PARAMFLAGS',
          'BSTR',
          'HSTRING',
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
          'TrustLevel',
          'IInspectable',
        ]);
      });
    });

    group('resolveMulti', () {
      test(
        'aggregates dependencies from multiple objects without duplication',
        () {
          final function = WindowsMetadata.findFunctionByName('CoGetMalloc');
          final interface = WindowsMetadata.findTypeDefByName('IMalloc');
          final deps = DependencyResolver.resolveMulti([function, interface]);
          check(deps)
            ..isNotEmpty()
            ..length.equals(2);
          check(deps.map((it) => it.name)).deepEquals(['HRESULT', 'IMalloc']);
        },
      );
    });
  });
}
