import 'package:meta/meta.dart';

import '../../attributes.dart';
import '../../exception.dart';
import '../codes.dart';
import '../has_custom_attributes.dart';
import '../metadata_index.dart';
import '../metadata_table.dart';
import '../row.dart';
import '../type_category.dart';
import 'class_layout.dart';
import 'field.dart';
import 'generic_param.dart';
import 'interface_impl.dart';
import 'method_def.dart';
import 'nested_class.dart';

/// Represents a row in the `TypeDef` metadata table, describing a type defined
/// in the assembly.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.37`.
///
/// The `TypeDef` table has the following columns:
///  - **Flags** (4-byte bitmask of TypeAttributes)
///  - **TypeName** (String Heap Index)
///  - **TypeNamespace** (String Heap Index)
///  - **Extends** (TypeDefOrRef Coded Index)
///  - **FieldList** (Field Index)
///  - **MethodList** (MethodDef Index)
final class TypeDef extends Row with HasCustomAttributes {
  TypeDef(super.metadataIndex, super.readerIndex, super.index);

  @override
  MetadataTable get table => MetadataTable.typeDef;

  /// Type attributes that represents various attributes of the type, such as
  /// visibility, layout, and semantics.
  late final flags = TypeAttributes(readUint(0));

  /// The visibility of the type.
  late final typeVisibility =
      TypeVisibility.values[flags & TypeAttributes.visibilityMask];

  /// The layout of the type.
  late final typeLayout = switch (flags & TypeAttributes.layoutMask) {
    TypeAttributes.autoLayout => TypeLayout.auto,
    TypeAttributes.sequentialLayout => TypeLayout.sequential,
    TypeAttributes.explicitLayout => TypeLayout.explicit,
    _ => throw WinmdException(
      'Unknown type layout: ${flags & TypeAttributes.layoutMask}',
    ),
  };

  /// The semantics of the type.
  late final typeSemantics = switch (flags &
      TypeAttributes.classSemanticsMask) {
    TypeAttributes.class$ => TypeSemantics.class$,
    TypeAttributes.interface => TypeSemantics.interface,
    _ => throw WinmdException(
      'Unknown type semantics: ${flags & TypeAttributes.classSemanticsMask}',
    ),
  };

  /// The string format used by the type.
  late final stringFormat = switch (flags & TypeAttributes.stringFormatMask) {
    TypeAttributes.ansiClass => StringFormat.ansi,
    TypeAttributes.unicodeClass => StringFormat.unicode,
    TypeAttributes.autoClass => StringFormat.auto,
    TypeAttributes.customFormatClass => StringFormat.custom,
    _ => throw WinmdException(
      'Unknown string format: ${flags & TypeAttributes.stringFormatMask}',
    ),
  };

  /// The name of the type.
  late final name = readString(1);

  /// The namespace of the type.
  late final namespace = readString(2);

  /// The type that the current type extends, or `null` if there is no base
  /// type.
  late final extends$ = () {
    if (readUint(3) == 0) return null;
    return decode<TypeDefOrRef>(3);
  }();

  /// The list of fields defined in the type, if any.
  late final fields = getList<Field>(4);

  /// The list of methods defined in the type, if any.
  late final methods = getList<MethodDef>(5);

  /// The list of generic parameters defined for the type, if any.
  late final generics = getEqualRange<GenericParam>(
    2,
    TypeOrMethodDef.typeDef(this).encode(),
  );

  /// The list of interfaces implemented by the type, if any.
  late final interfaceImpls = getEqualRange<InterfaceImpl>(0, index + 1);

  /// The class layout associated with the type, if any.
  late final classLayout = getEqualRange<ClassLayout>(2, index + 1).firstOrNull;

  /// The nested class associated with the type, if any.
  late final nested = getEqualRange<NestedClass>(1, index + 1).firstOrNull;

  /// The category of the type, which could be a class, interface, enum, struct,
  /// delegate, or attribute.
  late final category = () {
    final extends$ = this.extends$;
    if (extends$ == null) return TypeCategory.interface;
    if (extends$.namespace != 'System') return TypeCategory.class$;
    return switch (extends$.name) {
      'Enum' => TypeCategory.enum$,
      'MulticastDelegate' => TypeCategory.delegate,
      'ValueType' => TypeCategory.struct,
      'Attribute' => TypeCategory.attribute,
      _ => TypeCategory.class$,
    };
  }();

  @override
  String toString() => 'TypeDef($namespace.$name)';
}

extension TypeDefExtension on TypeDef {
  /// Finds a field by its [name].
  ///
  /// Throws a [WinmdException] if the field is not found.
  Field findField(String name) =>
      fields.where((f) => f.name == name).firstOrNull ??
      (throw WinmdException('Field "$name" not found in $this'));

  /// Attempts to find a field by its [name].
  ///
  /// Returns `null` if the field is not found.
  Field? tryFindField(String name) =>
      fields.where((f) => f.name == name).firstOrNull;

  /// Finds a method by its [name].
  ///
  /// Throws a [WinmdException] if the method is not found.
  MethodDef findMethod(String name) =>
      methods.where((m) => m.name == name).firstOrNull ??
      (throw WinmdException('Method "$name" not found in $this'));

  /// Attempts to find a method by its [name].
  ///
  /// Returns `null` if the method is not found.
  MethodDef? tryFindMethod(String name) =>
      methods.where((m) => m.name == name).firstOrNull;
}

@internal
final class TypeDefCompanion extends RowCompanion<TypeDef> {
  const TypeDefCompanion();

  @override
  TypeDef Function(MetadataIndex, int, int) get constructor => TypeDef.new;

  @override
  MetadataTable get table => MetadataTable.typeDef;
}
