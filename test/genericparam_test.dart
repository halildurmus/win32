@TestOn('windows')

import 'package:test/test.dart';

import 'package:winmd/winmd.dart';

void main() {
  test('Generic parameter has appropriate values', () {
    const interfaceName = 'Windows.Foundation.IAsyncOperationWithProgress`2';

    final typeDef = MetadataStore.getMetadataForType(interfaceName)!;
    expect(typeDef.genericParams.length, equals(2));

    final tr = typeDef.genericParams.first;
    expect(tr.constraints.length, isZero);
    expect(tr.customAttributes.length, isZero);
    expect(tr.isGlobal, isFalse);
    expect(tr.specialConstraints.noConstraints, isTrue);
    expect(tr.specialConstraints.notNullable, isFalse);
    expect(tr.specialConstraints.referenceType, isFalse);
    expect(tr.specialConstraints.defaultConstructor, isFalse);
    expect(tr.variance, equals(Variance.nonvariant));
    expect(tr.name, equals('TResult'));
    expect(tr.toString(), tr.name);

    expect(tr.parent, isA<TypeDef>());
    final parentObject = tr.parent as TypeDef;
    expect(parentObject.name, equals(interfaceName));
  });
}
