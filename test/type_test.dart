@TestOn('windows')

import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

void main() {
  final scope = MetadataStore.getWin32Scope();

  test('NonClosableHandle should be projected as an IntPtr', () {
    final typedef = scope['Windows.Win32.SystemServices.Apis']!;
    final api = typedef.findMethod('GetCurrentProcess')!;
    final returnType = api.returnType.typeIdentifier;

    expect(returnType.corType, equals(CorElementType.ELEMENT_TYPE_VALUETYPE));
    expect(returnType.name,
        equals('Windows.Win32.SystemServices.NonClosableHandle'));

    final valueTypedef = scope[returnType.name]!;
    expect(valueTypedef.fields.first.typeIdentifier.corType,
        equals(CorElementType.ELEMENT_TYPE_I));

    final projection = TypeProjector(returnType);
    expect(projection.dartType, equals('int'));
    expect(projection.nativeType, equals('IntPtr'));
  });
}
