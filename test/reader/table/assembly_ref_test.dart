import 'dart:typed_data';

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/windows_metadata.dart';
import 'package:winmd/winmd.dart';

void main() async {
  final index = await WindowsMetadataLoader.loadWin32Metadata();

  group('AssemblyRef', () {
    test('netstandard', () {
      check(index.assemblyRefs.length).isGreaterOrEqual(4);
      final assemblyRef = index.assemblyRefs.first;
      check(assemblyRef.majorVersion).equals(2);
      check(assemblyRef.minorVersion).equals(1);
      check(assemblyRef.buildNumber).equals(0);
      check(assemblyRef.revisionNumber).equals(0);
      check(assemblyRef.flags).equals(const AssemblyFlags(0));
      check(assemblyRef.publicKeyOrToken)
          .isNotNull()
          .has((it) => it.slice, 'slice')
          .deepEquals(
            Uint8List.fromList([
              0xCC, 0x7B, 0x13, 0xFF, 0xCD, 0x2D, 0xDD, 0x51, //
            ]),
          );
      check(assemblyRef.name).equals('netstandard');
      check(assemblyRef.culture).isNull();
      check(assemblyRef.hashValue).isNull();
      check(assemblyRef.version).equals('2.1.0.0');
    });
  });
}
