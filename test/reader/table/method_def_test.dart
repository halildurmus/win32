import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/windows_metadata.dart';
import 'package:winmd/winmd.dart';

void main() async {
  final metadata = MetadataLookup(
    await WindowsMetadataLoader().loadAllMetadata(),
  );

  group('MethodDef', () {
    test('AsyncCausalityTracer.TraceSynchronousWorkCompletion', () {
      final typeDef = metadata.findSingleType(
        'Windows.Foundation.Diagnostics',
        'AsyncCausalityTracer',
      );
      final method = typeDef.findMethod('TraceSynchronousWorkCompletion');
      check(method.rva).equals(0);
      check(method.implFlags).equals(MethodImplAttributes.runtime);
      check(method.codeType).equals(CodeType.runtime);
      check(method.isManaged).isTrue();
      check(method.flags).equals(
        MethodAttributes.public |
            MethodAttributes.static |
            MethodAttributes.hideBySig,
      );
      check(method.memberAccess).equals(MemberAccess.public);
      check(method.vTableLayout).equals(VTableLayout.reuseSlot);
      check(method.name).equals('TraceSynchronousWorkCompletion');
      check(method.signature()).equals(
        const MethodSignature(
          flags: MethodCallFlags.default$,
          types: [
            NamedType(
              TypeName('Windows.Foundation.Diagnostics', 'CausalityTraceLevel'),
            ),
            NamedType(
              TypeName('Windows.Foundation.Diagnostics', 'CausalitySource'),
            ),
            NamedType(
              TypeName(
                'Windows.Foundation.Diagnostics',
                'CausalitySynchronousWork',
              ),
            ),
          ],
        ),
      );
      final params = method.params.toList();
      check(params.length).equals(3);
      check(params[0].flags).equals(ParamAttributes.in$);
      check(params[0].sequence).equals(1);
      check(params[0].name).equals('traceLevel');
      check(params[1].flags).equals(ParamAttributes.in$);
      check(params[1].sequence).equals(2);
      check(params[1].name).equals('source');
      check(params[2].flags).equals(ParamAttributes.in$);
      check(params[2].sequence).equals(3);
      check(params[2].name).equals('work');
      check(method.parent.name).equals('AsyncCausalityTracer');
      check(method.implMap).isNull();
      check(method.hasAttribute('DocumentationAttribute')).isFalse();
    });

    test('IAsyncCausalityTracerStatics.TraceSynchronousWorkCompletion', () {
      final typeDef = metadata.findSingleType(
        'Windows.Foundation.Diagnostics',
        'IAsyncCausalityTracerStatics',
      );
      final method = typeDef.findMethod('TraceSynchronousWorkCompletion');
      check(method.rva).equals(0);
      check(method.implFlags).equals(MethodImplAttributes.il);
      check(method.codeType).equals(CodeType.msil);
      check(method.isManaged).isTrue();
      check(method.flags).equals(
        MethodAttributes.public |
            MethodAttributes.virtual |
            MethodAttributes.hideBySig |
            MethodAttributes.abstract |
            MethodAttributes.newSlot,
      );
      check(method.memberAccess).equals(MemberAccess.public);
      check(method.vTableLayout).equals(VTableLayout.newSlot);
      check(method.name).equals('TraceSynchronousWorkCompletion');
      check(method.signature()).equals(
        const MethodSignature(
          types: [
            NamedType(
              TypeName('Windows.Foundation.Diagnostics', 'CausalityTraceLevel'),
            ),
            NamedType(
              TypeName('Windows.Foundation.Diagnostics', 'CausalitySource'),
            ),
            NamedType(
              TypeName(
                'Windows.Foundation.Diagnostics',
                'CausalitySynchronousWork',
              ),
            ),
          ],
        ),
      );
      final params = method.params.toList();
      check(params.length).equals(3);
      check(params[0].flags).equals(ParamAttributes.in$);
      check(params[0].sequence).equals(1);
      check(params[0].name).equals('traceLevel');
      check(params[1].flags).equals(ParamAttributes.in$);
      check(params[1].sequence).equals(2);
      check(params[1].name).equals('source');
      check(params[2].flags).equals(ParamAttributes.in$);
      check(params[2].sequence).equals(3);
      check(params[2].name).equals('work');
      check(method.parent.name).equals('IAsyncCausalityTracerStatics');
      check(method.implMap).isNull();
      check(method.hasAttribute('DocumentationAttribute')).isFalse();
    });

    test('DoDragDrop', () {
      final method = metadata.findFunction(
        'Windows.Win32.System.Ole',
        'DoDragDrop',
      );
      check(method.rva).equals(0);
      check(method.implFlags).equals(MethodImplAttributes.il);
      check(method.codeType).equals(CodeType.msil);
      check(method.isManaged).isTrue();
      check(method.flags).equals(
        MethodAttributes.public |
            MethodAttributes.static |
            MethodAttributes.hideBySig |
            MethodAttributes.pinvokeImpl,
      );
      check(method.memberAccess).equals(MemberAccess.public);
      check(method.vTableLayout).equals(VTableLayout.reuseSlot);
      check(method.name).equals('DoDragDrop');
      check(method.signature()).equals(
        const MethodSignature(
          flags: MethodCallFlags.default$,
          returnType: NamedType(
            TypeName('Windows.Win32.Foundation', 'HRESULT'),
          ),
          types: [
            NamedType(TypeName('Windows.Win32.System.Com', 'IDataObject')),
            NamedType(TypeName('Windows.Win32.System.Ole', 'IDropSource')),
            NamedType(TypeName('Windows.Win32.System.Ole', 'DROPEFFECT')),
            MutablePointerType(
              NamedType(TypeName('Windows.Win32.System.Ole', 'DROPEFFECT')),
              1,
            ),
          ],
        ),
      );
      final params = method.params.toList();
      check(params.length).equals(5);
      check(params[0].flags).equals(const ParamAttributes(0));
      check(params[0].sequence).equals(0);
      check(params[0].name).isEmpty();
      check(params[1].flags).equals(ParamAttributes.in$);
      check(params[1].sequence).equals(1);
      check(params[1].name).equals('pDataObj');
      check(params[2].flags).equals(ParamAttributes.in$);
      check(params[2].sequence).equals(2);
      check(params[2].name).equals('pDropSource');
      check(params[3].flags).equals(ParamAttributes.in$);
      check(params[3].sequence).equals(3);
      check(params[3].name).equals('dwOKEffects');
      check(params[4].flags).equals(ParamAttributes.out);
      check(params[4].sequence).equals(4);
      check(params[4].name).equals('pdwEffect');
      check(method.parent.namespace).equals('Windows.Win32.System.Ole');
      check(method.parent.name).equals('Apis');
      final implMap = method.implMap;
      check(implMap).isNotNull();
      check(implMap!.flags).equals(
        PInvokeAttributes.noMangle | PInvokeAttributes.callConvPlatformApi,
      );
      check(implMap.charSet).equals(CharSet.notSpecified);
      check(implMap.callingConvention).equals(CallingConvention.platformApi);
      check(implMap.memberForwarded.name).equals('DoDragDrop');
      check(implMap.importName).equals('DoDragDrop');
      check(implMap.importScope.name).equals('OLE32.dll');
      check(method.hasAttribute('DocumentationAttribute')).isTrue();
    });

    test('GetAltMonthNames', () {
      final method = metadata.findFunction(
        'Windows.Win32.System.Ole',
        'GetAltMonthNames',
      );
      check(method.rva).equals(0);
      check(method.implFlags).equals(MethodImplAttributes.il);
      check(method.codeType).equals(CodeType.msil);
      check(method.isManaged).isTrue();
      check(method.flags).equals(
        MethodAttributes.public |
            MethodAttributes.static |
            MethodAttributes.hideBySig |
            MethodAttributes.pinvokeImpl,
      );
      check(method.memberAccess).equals(MemberAccess.public);
      check(method.vTableLayout).equals(VTableLayout.reuseSlot);
      check(method.name).equals('GetAltMonthNames');
      check(method.signature()).equals(
        const MethodSignature(
          flags: MethodCallFlags.default$,
          returnType: NamedType(
            TypeName('Windows.Win32.Foundation', 'HRESULT'),
          ),
          types: [
            Uint32Type(),
            MutablePointerType(
              NamedType(TypeName('Windows.Win32.Foundation', 'PWSTR')),
              2,
            ),
          ],
        ),
      );
      final params = method.params.toList();
      check(params.length).equals(3);
      check(params[0].flags).equals(const ParamAttributes(0));
      check(params[0].sequence).equals(0);
      check(params[0].name).isEmpty();
      check(params[1].flags).equals(ParamAttributes.in$);
      check(params[1].sequence).equals(1);
      check(params[1].name).equals('lcid');
      check(params[2].flags).equals(ParamAttributes.out);
      check(params[2].sequence).equals(2);
      check(params[2].name).equals('prgp');
      check(method.parent.namespace).equals('Windows.Win32.System.Ole');
      check(method.parent.name).equals('Apis');
      final implMap = method.implMap;
      check(implMap).isNotNull();
      check(implMap!.flags).equals(
        PInvokeAttributes.noMangle | PInvokeAttributes.callConvPlatformApi,
      );
      check(implMap.charSet).equals(CharSet.notSpecified);
      check(implMap.callingConvention).equals(CallingConvention.platformApi);
      check(implMap.memberForwarded.name).equals('GetAltMonthNames');
      check(implMap.importName).equals('GetAltMonthNames');
      check(implMap.importScope.name).equals('OLEAUT32.dll');
      check(method.hasAttribute('DocumentationAttribute')).isTrue();
    });
  });
}
