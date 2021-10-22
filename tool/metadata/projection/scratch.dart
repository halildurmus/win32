import 'package:winmd/winmd.dart';

void main() {
  final namespaceSet = <String>{};

  final scope = MetadataStore.getWin32Scope();
  for (final td in scope.typeDefs) {
    if (td.name.startsWith('Windows.Win32')) {
      final namespace = td.name.split('.').skip(2).toList()..removeLast();
      namespaceSet.add('Windows.Win32.${namespace.join('.')}');
    }
  }
  print(namespaceSet.length);
}
