// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

void main() {
  test('Generic parameter has appropriate values', () async {
    final scope = await MetadataStore.loadWinRTMetadata();
    const interfaceName = 'Windows.Foundation.IAsyncOperationWithProgress`2';
    final typeDef = scope.findTypeDef(interfaceName);
    check(typeDef).isNotNull();
    check(typeDef!.genericParams.length).equals(2);

    final tresult = typeDef.genericParams.first;
    check(tresult.constraints.length).equals(0);
    check(tresult.customAttributes.length).equals(0);
    check(tresult.isGlobal).isFalse();
    check(tresult.name).equals('TResult');
    check(tresult.specialConstraints.defaultConstructor).isFalse();
    check(tresult.specialConstraints.noConstraints).isTrue();
    check(tresult.specialConstraints.notNullable).isFalse();
    check(tresult.specialConstraints.referenceType).isFalse();
    check(tresult.toString()).equals(tresult.name);
    check(tresult.variance).equals(Variance.nonvariant);

    check(tresult.parent).isA<TypeDef>();
    final parentObject = tresult.parent as TypeDef;
    check(parentObject.name).equals(interfaceName);

    MetadataStore.close();
  });
}
