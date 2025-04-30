import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/windows_metadata.dart';
import 'package:winmd/winmd.dart';

import '../../versions.dart';

void main() async {
  final metadata = MetadataLookup(
    await WindowsMetadataLoader.loadWin32Metadata(
      version: win32MetadataVersion,
    ),
  );

  group('Constant', () {
    test('Int8', () {
      final field = metadata.findConstant(
        'Windows.Win32.Graphics.OpenGL',
        'PFD_UNDERLAY_PLANE',
      );
      final constant = field.constant;
      check(constant).isNotNull();
      check(constant!.type).isA<Int8Type>();
      check(constant.parent.name).equals('PFD_UNDERLAY_PLANE');
      check(constant.value).equals(const Int8Value(-1));
    });

    test('Uint8', () {
      final field = metadata.findConstant(
        'Windows.Win32.System.WinRT.Metadata',
        'ELEMENT_TYPE_STRING',
      );
      final constant = field.constant;
      check(constant).isNotNull();
      check(constant!.type).isA<Uint8Type>();
      check(constant.parent.name).equals('ELEMENT_TYPE_STRING');
      check(constant.value).equals(const Uint8Value(14));
    });

    test('Int16', () {
      final field = metadata.findConstant(
        'Windows.Win32.Foundation',
        'VARIANT_TRUE',
      );
      final constant = field.constant;
      check(constant).isNotNull();
      check(constant!.type).isA<Int16Type>();
      check(constant.parent.name).equals('VARIANT_TRUE');
      check(constant.value).equals(const Int16Value(-1));
    });

    test('Uint16', () {
      final field = metadata.findConstant(
        'Windows.Win32.System.Variant',
        'VT_VARIANT',
      );
      final constant = field.constant;
      check(constant).isNotNull();
      check(constant!.type).isA<Uint16Type>();
      check(constant.parent.name).equals('VT_VARIANT');
      check(constant.value).equals(const Uint16Value(12));
    });

    test('Int32', () {
      final field = metadata.findConstant(
        'Windows.Win32.Foundation',
        'STATUS_ACCESS_DENIED',
      );
      final constant = field.constant;
      check(constant).isNotNull();
      check(constant!.type).isA<Int32Type>();
      check(constant.parent.name).equals('STATUS_ACCESS_DENIED');
      check(constant.value).equals(const Int32Value(-1073741790));
    });

    test('Uint32', () {
      final field = metadata.findConstant(
        'Windows.Win32.Media.Audio',
        'MIXERCONTROL_CONTROLTYPE_DECIBELS',
      );
      final constant = field.constant;
      check(constant).isNotNull();
      check(constant!.type).isA<Uint32Type>();
      check(constant.parent.name).equals('MIXERCONTROL_CONTROLTYPE_DECIBELS');
      check(constant.value).equals(const Uint32Value(805568512));
    });

    test('Int64', () {
      final field = metadata.findConstant(
        'Windows.Win32.System.WinRT.Metadata',
        'sdExecute',
      );
      final constant = field.constant;
      check(constant).isNotNull();
      check(constant!.type).isA<Int64Type>();
      check(constant.parent.name).equals('sdExecute');
      check(constant.value).equals(const Int64Value(1610612768));
    });

    test('Uint64', () {
      final field = metadata.findConstant('Windows.Win32.System.Com', 'MAXLSN');
      final constant = field.constant;
      check(constant).isNotNull();
      check(constant!.type).isA<Uint64Type>();
      check(constant.parent.name).equals('MAXLSN');
      check(constant.value).equals(const Uint64Value(9223372036854775807));
    });

    test('Float32', () {
      final field = metadata.findConstant(
        'Windows.Win32.Graphics.Direct3D11',
        'D3D11_MIP_LOD_BIAS_MIN',
      );
      final constant = field.constant;
      check(constant).isNotNull();
      check(constant!.type).isA<Float32Type>();
      check(constant.parent.name).equals('D3D11_MIP_LOD_BIAS_MIN');
      check(constant.value).equals(const Float32Value(-16));
    });

    test('Float64', () {
      final field = metadata.findConstant(
        'Windows.Win32.Media.Audio.Apo',
        'AUDIO_MIN_FRAMERATE',
      );
      final constant = field.constant;
      check(constant).isNotNull();
      check(constant!.type).isA<Float64Type>();
      check(constant.parent.name).equals('AUDIO_MIN_FRAMERATE');
      check(constant.value).equals(const Float64Value(10));
    });

    test('Utf16String', () {
      final field = metadata.findConstant(
        'Windows.Win32.Security.Cryptography',
        'CRYPT_OID_REGPATH',
      );
      final constant = field.constant;
      check(constant).isNotNull();
      check(constant!.type).isA<StringType>();
      check(constant.parent.name).equals('CRYPT_OID_REGPATH');
      check(
        constant.value,
      ).equals(const Utf16StringValue(r'Software\Microsoft\Cryptography\OID'));
    });
  });
}
