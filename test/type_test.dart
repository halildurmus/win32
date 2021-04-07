@TestOn('windows')

import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

void main() {
  final scope = MetadataStore.getWin32Scope();

  test('NonClosableHandle should be projected as an IntPtr', () {
    final typedef = scope.findTypeDef('Windows.Win32.SystemServices.Apis')!;
    final api = typedef.findMethod('GetCurrentProcess')!;
    final returnType = api.returnType.typeIdentifier;

    expect(returnType.corType, equals(CorElementType.ELEMENT_TYPE_VALUETYPE));
    expect(returnType.name,
        equals('Windows.Win32.SystemServices.NonClosableHandle'));

    final valueTypedef = scope.findTypeDef(returnType.name)!;
    expect(valueTypedef.fields.first.typeIdentifier.corType,
        equals(CorElementType.ELEMENT_TYPE_I));

    final projection = TypeProjector(returnType);
    expect(projection.dartType, equals('int'));
    expect(projection.nativeType, equals('IntPtr'));
  });

  test('LARGE_INTEGER should be projected as an Int64', () {
    final typedef = scope.findTypeDef('Windows.Win32.FileSystem.Apis')!;
    final api = typedef.findMethod('SetFilePointerEx')!;
    final param = api.parameters[1];

    expect(param.name, equals('liDistanceToMove'));
    expect(param.typeIdentifier.corType,
        equals(CorElementType.ELEMENT_TYPE_VALUETYPE));

    final projection = TypeProjector(param.typeIdentifier);
    expect(projection.nativeType, equals('Int64'));
    expect(projection.dartType, equals('int'));
  });
}
