import 'package:winmd/winmd.dart';

void main() {
  final scope = MetadataStore.getWin32Scope();

  // Find a namesapce
  final struct = scope
      .findTypeDef('Windows.Win32.System.Com.StructuredStorage.PROPVARIANT')!;
  final field = struct.fields.first;

  // final typeDefs = struct.typeDefs;

  // final typeDef = typeDefs.fields.first; // anon union
  // print(typeDef.token.toRadixString(16));
  print(field);
}
