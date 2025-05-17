import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/windows_metadata.dart';
import 'package:winmd/winmd.dart';

import '../../versions.dart';

void main() async {
  final metadata = MetadataLookup(
    await WindowsMetadataLoader().loadAllMetadata(versions: metadataVersions),
  );

  group('TypeRef', () {
    test('System.Attribute', () {
      final typeDef = metadata.findSingleType(
        'Windows.Foundation.Metadata',
        'ActivatableAttribute',
      );
      check(typeDef.extends$).isNotNull().isA<TypeDefOrRefTypeRef>();
      final extends$ = (typeDef.extends$! as TypeDefOrRefTypeRef).value;
      check(extends$.token).equals(0x01001071);
      check(extends$.scope).isA<ResolutionScopeAssemblyRef>();
      final scope = (extends$.scope as ResolutionScopeAssemblyRef).value;
      check(scope.name).equals('mscorlib');
      check(extends$.namespace).equals('System');
      check(extends$.name).equals('Attribute');
    });

    test('System.Enum', () {
      final typeDef = metadata.findSingleType(
        'Windows.Globalization',
        'DayOfWeek',
      );
      check(typeDef.extends$).isNotNull().isA<TypeDefOrRefTypeRef>();
      final extends$ = (typeDef.extends$! as TypeDefOrRefTypeRef).value;
      check(extends$.scope).isA<ResolutionScopeAssemblyRef>();
      final scope = (extends$.scope as ResolutionScopeAssemblyRef).value;
      check(scope.name).equals('mscorlib');
      check(extends$.namespace).equals('System');
      check(extends$.name).equals('Enum');
    });

    test('System.MulticastDelegate', () {
      final typeDef = metadata.findSingleType(
        'Windows.Foundation',
        'AsyncActionCompletedHandler',
      );
      check(typeDef.extends$).isNotNull().isA<TypeDefOrRefTypeRef>();
      final extends$ = (typeDef.extends$! as TypeDefOrRefTypeRef).value;
      check(extends$.scope).isA<ResolutionScopeAssemblyRef>();
      final scope = (extends$.scope as ResolutionScopeAssemblyRef).value;
      check(scope.name).equals('mscorlib');
      check(extends$.namespace).equals('System');
      check(extends$.name).equals('MulticastDelegate');
    });

    test('System.Object', () {
      final typeDef = metadata.findSingleType(
        'Windows.Globalization',
        'Calendar',
      );
      check(typeDef.extends$).isNotNull().isA<TypeDefOrRefTypeRef>();
      final extends$ = (typeDef.extends$! as TypeDefOrRefTypeRef).value;
      check(extends$.scope).isA<ResolutionScopeAssemblyRef>();
      final scope = (extends$.scope as ResolutionScopeAssemblyRef).value;
      check(scope.name).equals('mscorlib');
      check(extends$.namespace).equals('System');
      check(extends$.name).equals('Object');
    });

    test('System.ValueType', () {
      final typeDef = metadata.findSingleType('Windows.Foundation', 'Point');
      check(typeDef.extends$).isNotNull().isA<TypeDefOrRefTypeRef>();
      final extends$ = (typeDef.extends$! as TypeDefOrRefTypeRef).value;
      check(extends$.scope).isA<ResolutionScopeAssemblyRef>();
      final scope = (extends$.scope as ResolutionScopeAssemblyRef).value;
      check(scope.name).equals('mscorlib');
      check(extends$.namespace).equals('System');
      check(extends$.name).equals('ValueType');
    });
  });
}
