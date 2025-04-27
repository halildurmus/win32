import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/windows_metadata.dart';
import 'package:winmd/winmd.dart';

void main() async {
  final index = ItemIndex(await WindowsMetadataLoader.loadWin32Metadata());

  group('Field', () {
    test('FOLDERID_AccountPictures', () {
      final field = index.getConstant(
        'Windows.Win32.UI.Shell',
        'FOLDERID_AccountPictures',
      );
      check(field).isNotNull();
      check(
        field!.flags,
      ).equals(FieldAttributes.public | FieldAttributes.static);
      check(field.fieldAccess).equals(FieldAccess.public);
      check(field.name).equals('FOLDERID_AccountPictures');
      check(field.type).equals(const NamedType(TypeName('System', 'Guid')));
      check(field.hasAttribute('GuidAttribute')).isTrue();
      final constant = field.constant;
      check(constant).isNull();
      check(field.layout).isNull();
    });

    test('PFD_LAYER_TYPE.PFD_UNDERLAY_PLANE', () {
      final typeDef = index.index.getSingleType(
        'Windows.Win32.Graphics.OpenGL',
        'PFD_LAYER_TYPE',
      );
      final field = typeDef.findField('PFD_UNDERLAY_PLANE');
      check(field).isNotNull();
      check(field!.flags).equals(
        FieldAttributes.public |
            FieldAttributes.static |
            FieldAttributes.literal |
            FieldAttributes.hasDefault,
      );
      check(field.fieldAccess).equals(FieldAccess.public);
      check(field.name).equals('PFD_UNDERLAY_PLANE');
      check(field.type).equals(
        const NamedType(
          TypeName('Windows.Win32.Graphics.OpenGL', 'PFD_LAYER_TYPE'),
        ),
      );
      final constant = field.constant;
      check(constant).isNotNull();
      check(constant!.type).isA<Int8Type>();
      check(constant.value).equals(const Int8Value(-1));
      final layout = field.layout;
      check(layout).isNull();
    });

    test('STATUS_ACCESS_DENIED', () {
      final field = index.getConstant(
        'Windows.Win32.Foundation',
        'STATUS_ACCESS_DENIED',
      );
      check(field).isNotNull();
      check(field!.flags).equals(
        FieldAttributes.public |
            FieldAttributes.static |
            FieldAttributes.literal |
            FieldAttributes.hasDefault,
      );
      check(field.fieldAccess).equals(FieldAccess.public);
      check(field.name).equals('STATUS_ACCESS_DENIED');
      check(field.type).equals(
        const NamedType(TypeName('Windows.Win32.Foundation', 'NTSTATUS')),
      );
      final constant = field.constant;
      check(constant).isNotNull();
      check(constant!.type).isA<Int32Type>();
      check(constant.value).equals(const Int32Value(-1073741790));
      check(field.layout).isNull();
    });

    test('VARIANT_TRUE', () {
      final field = index.getConstant(
        'Windows.Win32.Foundation',
        'VARIANT_TRUE',
      );
      check(field).isNotNull();
      check(field!.flags).equals(
        FieldAttributes.public |
            FieldAttributes.static |
            FieldAttributes.literal |
            FieldAttributes.hasDefault,
      );
      check(field.fieldAccess).equals(FieldAccess.public);
      check(field.name).equals('VARIANT_TRUE');
      check(field.type).equals(
        const NamedType(TypeName('Windows.Win32.Foundation', 'VARIANT_BOOL')),
      );
      final constant = field.constant;
      check(constant).isNotNull();
      check(constant!.type).isA<Int16Type>();
      check(constant.value).equals(const Int16Value(-1));
      check(field.layout).isNull();
    });

    test('WHV_PARTITION_PROPERTY.ProcessorCount', () {
      final typeDef = index.getSingleType(
        'Windows.Win32.System.Hypervisor',
        'WHV_PARTITION_PROPERTY',
      );
      final field = typeDef.findField('ProcessorCount');
      check(field).isNotNull();
      check(field!.flags).equals(FieldAttributes.public);
      check(field.fieldAccess).equals(FieldAccess.public);
      check(field.name).equals('ProcessorCount');
      check(field.type).isA<Uint32Type>();
      check(field.constant).isNull();
      final layout = field.layout;
      check(layout).isNotNull();
      check(layout!.offset).equals(0);
      check(layout.field.name).equals('ProcessorCount');
    });
  });
}
