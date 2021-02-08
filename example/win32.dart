import 'package:winmd/winmd.dart';

void main() {
  // Load WinMD metadata for Win32, as produced by the following utility:
  // https://github.com/microsoft/win32metadata
  final scope = WinmdStore.getScopeForFile('Windows.Win32.winmd');

  // Find the GDI API namesapce
  final gdiApi =
      scope.typeDefs.firstWhere((type) => type.typeName.endsWith('Gdi.Apis'));

  // Sort the functions alphabetically
  final sortedMethods = gdiApi.methods
    ..sort((a, b) => a.methodName.compareTo(b.methodName));

  // Find a specific function
  const funcName = 'AddFontResourceW';
  final winmdMethod = sortedMethods.firstWhere((m) => m.methodName == funcName);

  // Print out some information about it
  print('This method is token #${winmdMethod.token}');

  final params = winmdMethod.parameters
      .map((param) => '${param.typeIdentifier.nativeType} ${param.name!}')
      .join(', ');
  print('The parameters are:\n$params');
}
