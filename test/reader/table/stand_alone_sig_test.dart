import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';
import 'package:winmd/writer.dart';

void main() {
  group('StandAloneSig', () {
    test('LocalVarSig', () {
      final writer = MetadataWriter(name: 'MyMetadata')
        ..writeStandAloneSig(
          signature: const StandAloneSignature.localVar([
            Int32Type(),
            StringType(),
          ]),
        );
      final reader = MetadataReader.read(writer.toBytes());
      final index = MetadataIndex.fromReader(reader);
      final localVarSig = index.standAloneSig.first;
      check(
        localVarSig.signature,
      ).equals(const LocalVarSig([Int32Type(), StringType()]));
    });

    test('StandAloneMethodSig', () {
      final writer = MetadataWriter(name: 'MyMetadata')
        ..writeStandAloneSig(
          signature: const StandAloneSignature.method(
            returnType: BoolType(),
            types: [Int32Type(), StringType()],
          ),
        );
      final reader = MetadataReader.read(writer.toBytes());
      final index = MetadataIndex.fromReader(reader);
      final methodSig = index.standAloneSig.first;
      check(methodSig.signature).equals(
        const StandAloneMethodSig(
          returnType: BoolType(),
          types: [Int32Type(), StringType()],
        ),
      );
    });
  });
}
