import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/windows_metadata.dart';
import 'package:winmd/winmd.dart';

void main() async {
  final index = ItemIndex(await WindowsMetadataLoader.loadAllMetadata());

  group('TypeRef', () {
    test('System.Attribute', () {
      final typeDef = index.getSingleType(
        'Windows.Foundation.Metadata',
        'ActivatableAttribute',
      );
      check(typeDef.extends$).isNotNull().isA<TypeDefOrRefTypeRef>();
      final extends$ = (typeDef.extends$! as TypeDefOrRefTypeRef).value;
      check(extends$.scope).isA<ResolutionScopeAssemblyRef>();
      final scope = (extends$.scope as ResolutionScopeAssemblyRef).value;
      check(scope.name).equals('mscorlib');
      check(extends$.namespace).equals('System');
      check(extends$.name).equals('Attribute');
    });

    test('System.Enum', () {
      final typeDef = index.getSingleType('Windows.Globalization', 'DayOfWeek');
      check(typeDef.extends$).isNotNull().isA<TypeDefOrRefTypeRef>();
      final extends$ = (typeDef.extends$! as TypeDefOrRefTypeRef).value;
      check(extends$.scope).isA<ResolutionScopeAssemblyRef>();
      final scope = (extends$.scope as ResolutionScopeAssemblyRef).value;
      check(scope.name).equals('mscorlib');
      check(extends$.namespace).equals('System');
      check(extends$.name).equals('Enum');
    });

    test('System.MulticastDelegate', () {
      final typeDef = index.getSingleType(
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
      final typeDef = index.getSingleType('Windows.Globalization', 'Calendar');
      check(typeDef.extends$).isNotNull().isA<TypeDefOrRefTypeRef>();
      final extends$ = (typeDef.extends$! as TypeDefOrRefTypeRef).value;
      check(extends$.scope).isA<ResolutionScopeAssemblyRef>();
      final scope = (extends$.scope as ResolutionScopeAssemblyRef).value;
      check(scope.name).equals('mscorlib');
      check(extends$.namespace).equals('System');
      check(extends$.name).equals('Object');
    });

    test('System.ValueType', () {
      final typeDef = index.getSingleType('Windows.Foundation', 'Point');
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
