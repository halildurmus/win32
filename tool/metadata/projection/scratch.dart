import 'package:winmd/winmd.dart';

void main() {
  final scope = MetadataStore.getWin32Scope();

  final namespace = scope.findTypeDef('Windows.Win32.Gaming');
  print(namespace);
}
