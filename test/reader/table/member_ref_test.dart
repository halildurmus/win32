import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/windows_metadata.dart';
import 'package:winmd/winmd.dart';

void main() async {
  final index = await WindowsMetadataLoader.loadWin32Metadata();

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
      check(memberRef.parent.name).equals('SupportedArchitectureAttribute');
      check(memberRef.name).equals('.ctor');
      check(memberRef.signature()).equals(
        const MethodSignature(
          types: [
            NamedType(
              TypeName('Windows.Win32.Foundation.Metadata', 'Architecture'),
            ),
          ],
        ),
      );
    });
  });
}
