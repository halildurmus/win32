// Parse the Windows Metadata for a COM type and generate a Dart wrapper

import 'package:winmd/winmd.dart';

void main() async {
  // Load the Win32 metadata
  final scope = await MetadataStore.loadWin32Metadata();

  // A COM interface
  const typeToGenerate = 'Windows.Win32.Networking.NetworkListManager.INetwork';

  // Find the TypeDef for this interface
  final typeDef = scope.findTypeDef(typeToGenerate)!;

  // Create a Dart projection
  print('$typeToGenerate contains the following methods:');

  for (final method in typeDef.methods) {
    print('  ${method.name}');
  }

  MetadataStore.close();
}
