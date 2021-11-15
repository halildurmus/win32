import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';
import 'package:winmd/winmd.dart';

void main() {
  final scope = MetadataStore.getWin32Scope();

  // Find a namesapce
  final struct = scope
      .findTypeDef('Windows.Win32.System.Com.StructuredStorage.PROPVARIANT')!;
  final field = struct.fields.first;
  final fieldType = field.typeIdentifier.name;
  print(fieldType);
  final szTypeDef = fieldType.toNativeUtf16();

  final ptkTypeDef = calloc<mdTypeDef>();
  final hr =
      scope.reader.FindTypeDefByName(szTypeDef, field.parent.token, ptkTypeDef);
  if (SUCCEEDED(hr)) {
    print(ptkTypeDef.value.toHexString(32));
  }

  final nestedType = scope.findTypeDefByToken(ptkTypeDef.value);

  print('found: $nestedType');
}
