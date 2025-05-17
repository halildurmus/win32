import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/windows_metadata.dart';
import 'package:winmd/winmd.dart';

import '../../versions.dart';

void main() async {
  final index = await WindowsMetadataLoader().loadWinrtMetadata(
    version: winrtMetadataVersion,
  );

  group('GenericParam', () {
    test('IAsyncOperationWithProgress<TResult, TProgress>', () {
      final typeDef = index.findSingleType(
        'Windows.Foundation',
        'IAsyncOperationWithProgress`2',
      );
      final generics = typeDef.generics;
      check(generics.length).equals(2);
      final [tResult, tProgress] = generics;

      check(tResult.token).equals(0x2A000009);
      check(tResult.sequence).equals(0);
      check(tResult.flags).equals(GenericParamAttributes.none);
      check(tResult.variance).equals(Variance.none);
      check(tResult.specialConstraint).equals(SpecialConstraint.none);
      check(tResult.owner.name).equals('IAsyncOperationWithProgress`2');
      check(tResult.name).equals('TResult');
      check(tResult.constraints).isEmpty();

      check(tProgress.sequence).equals(1);
      check(tProgress.flags).equals(GenericParamAttributes.none);
      check(tProgress.variance).equals(Variance.none);
      check(tProgress.specialConstraint).equals(SpecialConstraint.none);
      check(tProgress.owner.name).equals('IAsyncOperationWithProgress`2');
      check(tProgress.name).equals('TProgress');
      check(tProgress.constraints).isEmpty();
    });
  });
}
