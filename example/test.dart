import 'package:winmd/winmd.dart';

void main() {
  final scope = MetadataStore.getWin32Scope();
  final delegates = scope.delegates.where((element) =>
      element.typeName.startsWith('Windows.Win32.WindowsAndMessaging'));

  for (final d in delegates.take(50)) {
    print(d.typeName);
  }
}
