// Parse the Windows Metadata for a WinRT type and generate a Dart wrapper

import 'package:winmd/winmd.dart';

void main() async {
  // Load the WinRT metadata
  final scope = await MetadataStore.loadWinRTMetadata();

  // A Windows Runtime class
  const typeToGenerate = 'Windows.Media.Playback.MediaPlayer';

  // Find the TypeDef for this class
  final typeDef = scope.findTypeDef(typeToGenerate)!;

  // Create a Dart projection
  print('$typeToGenerate contains the following methods:');

  for (final method in typeDef.methods) {
    print('  ${method.name}');
  }

  MetadataStore.close();
}
