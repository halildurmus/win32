import 'package:winmd/winmd.dart';

void main() async {
  // Load the Win32 metadata
  final scope = await MetadataStore.loadWin32Scope();

  // Find a namesapce
  final struct =
      scope.findTypeDef(
        'Windows.Win32.NetworkManagement.WiFi.WLAN_RAW_DATA_LIST',
      )!;
  final unionField = struct.fields.last; // union
  final unionFieldType = unionField.typeIdentifier.typeArg?.type;
  print('unionField: $unionFieldType | isNested: ${unionFieldType?.isNested}');
  print('Field token: 0x${unionField.token.toRadixString(16)}');

  MetadataStore.close();
}
