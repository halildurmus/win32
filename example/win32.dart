import 'package:winmd/winmd.dart';

void main() {
  // Load WinMD metadata
  final scope = WinmdStore.getScopeForFile('example/Windows.Win32.winmd');

  //  Find all namespaces containing 'GDI'
  final gdiTypes = scope.typeDefs
      .where((type) => type.typeName.toLowerCase().contains('gdi'));

  final gdiApi = scope.typeDefs
      .firstWhere((type) => type.typeName == 'Windows.Win32.Gdi.Apis');
  print(gdiApi.typeName);

  gdiApi.methods.forEach((method) => print(method.methodName));
}
