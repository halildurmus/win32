import 'package:win32/win32.dart';
import 'package:winmd/winmd.dart';

void main() {
  final scope = MetadataStore.getWin32Scope();

  // Find a namesapce
  final struct =
      scope.findTypeDef('Windows.Win32.UI.Input.KeyboardAndMouse.INPUT')!;
  final unionField = struct.fields.last; // union
  print('Field: ${unionField.token.toHexString(32)}');

  print('Nested: ${struct.nestedTypeDefs}');

  final nestedUnion = struct.nestedTypeDefs
      .firstWhere((t) => t.name == unionField.typeIdentifier.name);
  print(nestedUnion);
  print('contains>');
  for (final field in nestedUnion.fields) {
    print(' - ${field.typeIdentifier.name} $field');
  }

  print(nestedUnion.isUnion);
  print(nestedUnion.parent?.name);
}
