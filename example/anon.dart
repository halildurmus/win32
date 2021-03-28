import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:winmd/winmd.dart';

void main() {
  final scope = MetadataStore.getWin32Scope();
  final typedef = scope['Windows.Win32.FileSystem.Apis']!;
  final api = typedef.findMethod('SetFilePointerEx')!;
  final param = api.parameters[1];

  const anonStruct = 0x010007f0;
  final reader = typedef.reader;

  final anon = TypeDef.fromTypeDefToken(reader, anonStruct);

  print(anon.fields.length);

  print(param);
  final projector = TypeProjector(param.typeIdentifier);
  print(projector.nativeType);

  // expect(param.name, equals('liDistanceToMove'));
  // expect(param.typeIdentifier.corType,
  //     equals(CorElementType.ELEMENT_TYPE_VALUETYPE));
}
