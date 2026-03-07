import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

import '../../shared_setup.dart';

void main() {
  late MetadataIndex index;

  setUpAll(() async {
    index = await fixtures.loadWin32Metadata();
  });

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
      check(memberRef.signature).equals(
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
