import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/windows_metadata.dart';
import 'package:winmd/winmd.dart';

import '../../versions.dart';

void main() async {
  final metadata = MetadataLookup(
    await WindowsMetadataLoader().loadWin32Metadata(
      version: win32MetadataVersion,
    ),
  );

  group('Field', () {
    test('FOLDERID_AccountPictures', () {
      final field = metadata.findConstant(
        'Windows.Win32.UI.Shell',
        'FOLDERID_AccountPictures',
      );
      check(field.token).equals(0x0400BA08);
      check(
        field.flags,
      ).equals(FieldAttributes.public | FieldAttributes.static);
      check(field.fieldAccess).equals(FieldAccess.public);
      check(field.name).equals('FOLDERID_AccountPictures');
      check(
        field.signature,
      ).equals(const NamedValueType(TypeName('System', 'Guid')));
      check(field.hasAttribute('GuidAttribute')).isTrue();
      final constant = field.constant;
      check(constant).isNull();
      check(field.fieldMarshal).isNull();
      check(field.layout).isNull();
      check(field.parent.namespace).equals('Windows.Win32.UI.Shell');
      check(field.parent.name).equals('Apis');
    });

    test('PFD_LAYER_TYPE.PFD_UNDERLAY_PLANE', () {
      final typeDef = metadata.index.findSingleType(
        'Windows.Win32.Graphics.OpenGL',
        'PFD_LAYER_TYPE',
      );
      final field = typeDef.findField('PFD_UNDERLAY_PLANE');
      check(field.flags).equals(
        FieldAttributes.public |
            FieldAttributes.static |
            FieldAttributes.literal |
            FieldAttributes.hasDefault,
      );
      check(field.fieldAccess).equals(FieldAccess.public);
      check(field.name).equals('PFD_UNDERLAY_PLANE');
      check(field.signature).equals(
        const NamedValueType(
          TypeName('Windows.Win32.Graphics.OpenGL', 'PFD_LAYER_TYPE'),
        ),
      );
      final constant = field.constant;
      check(constant).isNotNull();
      check(constant!.type).isA<Int8Type>();
      check(constant.value).equals(const Int8Value(-1));
      check(field.fieldMarshal).isNull();
      final layout = field.layout;
      check(layout).isNull();
      check(field.parent.namespace).equals('Windows.Win32.Graphics.OpenGL');
      check(field.parent.name).equals('PFD_LAYER_TYPE');
    });

    test('STATUS_ACCESS_DENIED', () {
      final field = metadata.findConstant(
        'Windows.Win32.Foundation',
        'STATUS_ACCESS_DENIED',
      );
      check(field.flags).equals(
        FieldAttributes.public |
            FieldAttributes.static |
            FieldAttributes.literal |
            FieldAttributes.hasDefault,
      );
      check(field.fieldAccess).equals(FieldAccess.public);
      check(field.name).equals('STATUS_ACCESS_DENIED');
      check(field.signature).equals(
        const NamedValueType(TypeName('Windows.Win32.Foundation', 'NTSTATUS')),
      );
      final constant = field.constant;
      check(constant).isNotNull();
      check(constant!.type).isA<Int32Type>();
      check(constant.value).equals(const Int32Value(-1073741790));
      check(field.fieldMarshal).isNull();
      check(field.layout).isNull();
      check(field.parent.namespace).equals('Windows.Win32.Foundation');
      check(field.parent.name).equals('Apis');
    });

    test('VARIANT_TRUE', () {
      final field = metadata.findConstant(
        'Windows.Win32.Foundation',
        'VARIANT_TRUE',
      );
      check(field.flags).equals(
        FieldAttributes.public |
            FieldAttributes.static |
            FieldAttributes.literal |
            FieldAttributes.hasDefault,
      );
      check(field.fieldAccess).equals(FieldAccess.public);
      check(field.name).equals('VARIANT_TRUE');
      check(field.signature).equals(
        const NamedValueType(
          TypeName('Windows.Win32.Foundation', 'VARIANT_BOOL'),
        ),
      );
      final constant = field.constant;
      check(constant).isNotNull();
      check(constant!.type).isA<Int16Type>();
      check(constant.value).equals(const Int16Value(-1));
      check(field.fieldMarshal).isNull();
      check(field.layout).isNull();
      check(field.parent.namespace).equals('Windows.Win32.Foundation');
      check(field.parent.name).equals('Apis');
    });

    test('WHV_PARTITION_PROPERTY.ProcessorCount', () {
      final typeDef = metadata.findSingleType(
        'Windows.Win32.System.Hypervisor',
        'WHV_PARTITION_PROPERTY',
      );
      final field = typeDef.findField('ProcessorCount');
      check(field.flags).equals(FieldAttributes.public);
      check(field.fieldAccess).equals(FieldAccess.public);
      check(field.name).equals('ProcessorCount');
      check(field.signature).equals(const Uint32Type());
      check(field.constant).isNull();
      check(field.fieldMarshal).isNull();
      final layout = field.layout;
      check(layout).isNotNull();
      check(layout!.offset).equals(0);
      check(field.parent.namespace).equals('Windows.Win32.System.Hypervisor');
      check(field.parent.name).equals('WHV_PARTITION_PROPERTY');
    });
  });
}
