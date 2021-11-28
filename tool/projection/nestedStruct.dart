import 'package:winmd/winmd.dart';

import '../v3/exclusions.dart';
import 'type.dart';
import 'struct.dart';
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

  // TODO: Presumably the typeDef here is optional and can be replaced with
  // field.parent.
  String buildInstanceName(TypeDef typeDef, Field field) {
    var name = safeName(field.name);
    while (typeDef.enclosingClass != null) {
      final parentField = typeDef.enclosingClass!.fields
          .firstWhere((field) => (field.typeIdentifier.type == typeDef));
      name = '${parentField.name}.$name';
      typeDef = typeDef.enclosingClass!;
    }
    return name;
  }

  @override
  String get classPreamble {
    // TODO: Remove this, I think?
    final packingAlignment = rootType.classLayout.packingAlignment;
    if (packingAlignment != null &&
        packingAlignment > 0 &&
        !ignorePackingDirectives.contains(typeDef.name)) {
      return '@Packed($packingAlignment)';
    } else {
      return '';
    }
  }

  /// A nested type needs a way to access its members from the parent type. We
  /// do this through an extension that contains the field accessors.
  String get propertyAccessors {
    final parentName = mangleName(typeDef.enclosingClass!).substring(1);
    final extensionName = suffix == 0
        ? '${parentName}_Extension'
        : '${parentName}_Extension_$suffix';
    final rootTypeName = safeName(shortenTypeDef(rootType));

    final buffer = StringBuffer();
    buffer.writeln('extension $extensionName on $rootTypeName {');
    for (final field in typeDef.fields) {
      final instanceName = buildInstanceName(typeDef, field);
      final dartTypeProjection = field.typeIdentifier.type?.isNested == true
          ? TypeProjection(field.typeIdentifier).dartType
          : stripLeadingUnderscores(
              TypeProjection(field.typeIdentifier).dartType);
      // TODO: Hack to work around the fact that Strings are projected as
      // Arrays. This is unlikely to survive.
      final mangledType =
          dartTypeProjection == 'Array<Uint16>' ? 'String' : dartTypeProjection;

      final safeFieldName = safeName(field.name);
      buffer.writeln('''
  $mangledType get $safeFieldName => this.$instanceName;
  set $safeFieldName($mangledType value) => this.$instanceName = value;
      ''');
    }
    buffer.writeln('}');
    return buffer.toString();
  }

  String get rootPackingPreamble =>
      rootTypePackingAlignment > 0 ? '@Packed($rootTypePackingAlignment)' : '';

  @override
  String toString() => '''
  $rootPackingPreamble
  ${super.toString()}
  $propertyAccessors
  ''';
}
