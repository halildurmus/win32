import 'package:winmd/winmd.dart';

import 'type.dart';
import 'struct.dart';
import 'utils.dart';

/// Represents a Dart projection of a Struct typedef.
class NestedStructProjection extends StructProjection {
  final int suffix;
  late TypeDef rootType;

  NestedStructProjection(TypeDef typeDef, String structName, this.suffix)
      : super(typeDef, structName) {
    rootType = typeDef;
    while (rootType.enclosingClass != null) {
      rootType = rootType.enclosingClass!;
    }
  }

  String buildInstanceName(TypeDef typeDef, Field field) {
    var name = field.name;
    while (typeDef.enclosingClass != null) {
      final parentField = typeDef.enclosingClass!.fields
          .firstWhere((field) => (field.typeIdentifier.type == typeDef));
      name = '${parentField.name}.$name';
      typeDef = typeDef.enclosingClass!;
    }
    return name;
  }

  /// A nested type needs a way to access its members from the parent type. We
  /// do this through an extension that contains the field accessors.
  String get propertyAccessors {
    final parentName = mangleName(typeDef.enclosingClass!);
    final extensionName = suffix == 0
        ? '${parentName}_Extension'
        : '${parentName}_Extension_$suffix';
    final rootTypeName = safeName(lastComponent(rootType.name));

    final buffer = StringBuffer();
    buffer.writeln('extension $extensionName on $rootTypeName {');
    for (final field in typeDef.fields) {
      final instanceName = buildInstanceName(typeDef, field);
      final dartTypeProjection = TypeProjection(field.typeIdentifier).dartType;
      // TODO: Hack to work around the fact that Strings are projected as
      // Arrays. This is unlikely to survive.
      final mangledType =
          dartTypeProjection == 'Array<Uint16>' ? 'String' : dartTypeProjection;
      buffer.writeln('''
  $mangledType get ${field.name} => $instanceName;
  set ${field.name}($mangledType value) => $instanceName = value;
      ''');
    }
    buffer.writeln('}');
    return buffer.toString();
  }

  @override
  String toString() => '''
  ${super.toString()}
  $propertyAccessors
  ''';
}
