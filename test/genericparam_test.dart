@TestOn('windows')

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';

import 'package:winmd/winmd.dart';

void main() {
  test('Generic parameter has appropriate values', () {
    const interfaceName = 'Windows.Foundation.IAsyncOperationWithProgress`2';

    final typeDef = MetadataStore.getMetadataForType(interfaceName)!;
    check(typeDef.genericParams.length).equals(2);

    final tr = typeDef.genericParams.first;
    check(tr.constraints.length).equals(0);
    check(tr.customAttributes.length).equals(0);
    check(tr.isGlobal).isFalse();
    check(tr.specialConstraints.noConstraints).isTrue();
    check(tr.specialConstraints.notNullable).isFalse();
    check(tr.specialConstraints.referenceType).isFalse();
    check(tr.specialConstraints.defaultConstructor).isFalse();
    check(tr.variance).equals(Variance.nonvariant);
    check(tr.name).equals('TResult');
    check(tr.toString()).equals(tr.name);

    check(tr.parent).isA<TypeDef>();
    final parentObject = tr.parent as TypeDef;
    check(parentObject.name).equals(interfaceName);
  });
}
