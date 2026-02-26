import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/windows_metadata.dart';
import 'package:winmd/winmd.dart';

import '../../versions.dart';

void main() async {
  final index = await WindowsMetadataLoader().loadWin32Metadata(
    version: win32MetadataVersion,
  );

  group('Assembly', () {
    test('Windows.Win32.winmd', () {
      check(index.assembly.length).equals(1);
      final assembly = index.assembly.first;
      check(assembly.token).equals(0x20000000);
      check(assembly.majorVersion).equals(0);
      check(assembly.minorVersion).equals(0);
      check(assembly.buildNumber).equals(0);
      check(assembly.revisionNumber).equals(0);
      check(assembly.flags).equals(const AssemblyFlags(0));
      check(assembly.publicKey).isNull();
      check(assembly.name).equals('Windows.Win32.winmd');
      check(assembly.culture).isNull();
      check(assembly.version).equals('0.0.0.0');
    });
  });
}
