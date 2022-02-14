import 'package:winmd/winmd.dart';

import 'safenames.dart';
import 'struct.dart';
import 'type.dart';
import 'utils.dart';

/// A struct or union that is nested in an enclosing class.
///
/// This class has additional support to create extensions so that the nested
/// types can be accessed from the top-most class. This is necessary for
/// anonymous nested types, of which there are many in more complex Win32
/// structs.
class NestedStructProjection extends StructProjection {
  final int suffix;
  final int rootTypePackingAlignment;
  final TypeDef rootType;

  NestedStructProjection(TypeDef typeDef, String structName,
      {required this.suffix, required this.rootTypePackingAlignment})
      : rootType = _getRootTypeDef(typeDef),
        super(typeDef, structName);

  /// Finds the topmost [TypeDef] in the nested tree. This is the one that
  /// should be extended.
  static TypeDef _getRootTypeDef(TypeDef typeDef) {
    var rootType = typeDef;
    while (rootType.enclosingClass != null) {
      rootType = rootType.enclosingClass!;
    }
    return rootType;
  }

  String _instanceName(Field field) {
    // Walk up the tree and append each item, making sure along the way that
    // each identifier is valid.
    var typeDef = field.parent;
    var name = safeIdentifierForString(field.name);

    while (typeDef.enclosingClass != null) {
      final parentField = typeDef.enclosingClass!.fields
          .firstWhere((field) => field.typeIdentifier.type == typeDef);
      final parentName = safeIdentifierForString(parentField.name);
      name = '$parentName.$name';
      typeDef = typeDef.enclosingClass!;
    }
    return name;
  }

  /// A nested type needs a way to access its members from the parent type. We
  /// do this through an extension that contains the field accessors.
  String get propertyAccessors {
    final parentName = mangleName(typeDef.enclosingClass!).substring(1);
    final extensionName = stripLeadingUnderscores(suffix == 0
        ? '${parentName}_Extension'
        : '${parentName}_Extension_$suffix');
    final rootTypeName = stripLeadingUnderscores(
        stripAnsiUnicodeSuffix(lastComponent(rootType.name)));

    final buffer = StringBuffer()
      ..writeln('extension $extensionName on $rootTypeName {');
    for (final field in typeDef.fields) {
      final instanceName = _instanceName(field);
      final dartTypeProjection = field.typeIdentifier.type?.isNested == true
          ? TypeProjection(field.typeIdentifier).dartType
          : stripLeadingUnderscores(
              TypeProjection(field.typeIdentifier).dartType);

      // TODO: Need to figure out why this is needed at all. Shouldn't the type
      // projection figure out the difference here?
      final typeIsString = (dartTypeProjection == 'Array<Uint16>') &&
          (field.typeIdentifier.typeArg!.baseType == BaseType.Char);
      final fieldType = typeIsString ? 'String' : dartTypeProjection;

      final safeFieldName = safeIdentifierForString(field.name);
      buffer.writeln('''
  $fieldType get $safeFieldName => this.$instanceName;
  set $safeFieldName($fieldType value) => this.$instanceName = value;
      ''');
    }
    buffer.writeln('}');
    return buffer.toString();
  }

  String get rootPackingPreamble =>
      rootTypePackingAlignment > 0 ? '@Packed($rootTypePackingAlignment)' : '';

  @override
  String toString() {
    final superString = super.toString();

    return '''
  ${superString.contains('@Packed(') ? '' : rootPackingPreamble}
  ${super.toString()}
  $propertyAccessors
  ''';
  }
}
