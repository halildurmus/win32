import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/windows_metadata.dart';
import 'package:winmd/winmd.dart';

import '../../versions.dart';

void main() async {
  final index = await WindowsMetadataLoader().loadWin32Metadata(
    version: win32MetadataVersion,
  );

  group('MemberRef', () {
    test('SupportedArchitectureAttribute', () {
      final typeDef = index
          .findTypes(
            'Windows.Win32.Devices.DeviceAndDriverInstallation',
            'SP_DEVICE_INTERFACE_DATA',
          )
          .first;
      final attribute = typeDef.findAttribute('SupportedArchitectureAttribute');
      check(attribute.type).isA<CustomAttributeTypeMemberRef>();
      final memberRef = (attribute.type as CustomAttributeTypeMemberRef).value;
      check(memberRef.token).equals(0x0A000013);
      check(memberRef.parent).isA<MemberRefParentTypeRef>();
      check(
        (memberRef.parent as MemberRefParentTypeRef).value.name,
      ).equals('SupportedArchitectureAttribute');
      check(memberRef.name).equals('.ctor');
      check(memberRef.signature()).equals(
        const MethodRefSig(
          callingConvention: CallingConvention.HASTHIS,
          types: [
            NamedValueType(
              TypeName('Windows.Win32.Foundation.Metadata', 'Architecture'),
            ),
          ],
        ),
      );
    });
  });
}
