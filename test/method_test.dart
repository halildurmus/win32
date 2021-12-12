@TestOn('windows')

import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

void main() {
  test('Method properties 1', () {
    final typeDef = MetadataStore.getMetadataForType(
        'Windows.Foundation.Diagnostics.AsyncCausalityTracer');
    final method = typeDef!.findMethod('TraceSynchronousWorkCompletion')!;

    expect(method.toString(), equals('TraceSynchronousWorkCompletion'));
    expect(method.isHideBySig, isTrue);
    expect(method.isStatic, isTrue);
    expect(method.vTableLayout, equals(VtableLayout.reuseSlot));
    expect(method.isAbstract, isFalse);
    expect(method.isVirtual, isFalse);
  });

  test('Method properties 2', () {
    final typeDef = MetadataStore.getMetadataForType(
        'Windows.Foundation.Diagnostics.IAsyncCausalityTracerStatics');
    final method = typeDef!.findMethod('TraceSynchronousWorkCompletion')!;

    expect(method.isHideBySig, isTrue);
    expect(method.vTableLayout, equals(VtableLayout.newSlot));
    expect(method.isAbstract, isTrue);
    expect(method.isVirtual, isTrue);
  });
}
