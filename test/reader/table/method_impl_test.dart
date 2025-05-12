import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/windows_metadata.dart';
import 'package:winmd/winmd.dart';

import '../../versions.dart';

void main() async {
  final index = await WindowsMetadataLoader().loadWinrtMetadata(
    version: winrtMetadataVersion,
  );

  group('MethodImpl', () {
    test('Calendar.Clone', () {
      final calendar = index.findSingleType(
        'Windows.Globalization',
        'Calendar',
      );
      final clone = calendar.methodImpls.first;
      check(clone.class$.namespace).equals('Windows.Globalization');
      check(clone.class$.name).equals('Calendar');
      check(clone.methodBody)
          .isA<MethodDefOrRefMethodDef>()
          .has((it) => it.name, 'name')
          .equals('Clone');
      check(clone.methodDeclaration).isA<MethodDefOrRefMemberRef>();
      final methodDeclaration =
          (clone.methodDeclaration as MethodDefOrRefMemberRef).value;
      check(methodDeclaration.parent).isA<MemberRefParentTypeRef>()
        ..has(
          (it) => it.value.namespace,
          'value.namespace',
        ).equals('Windows.Globalization')
        ..has((it) => it.value.name, 'value.name').equals('ICalendar');
      check(methodDeclaration.name).equals('Clone');
    });
  });
}
