import '../../attributes.dart';
import '../../exception.dart';
import '../codes.dart';
import '../has_custom_attributes.dart';
import '../metadata_index.dart';
import '../row.dart';
import '../table_index.dart';
import '../type_category.dart';
import 'class_layout.dart';
import 'field.dart';
import 'generic_param.dart';
import 'interface_impl.dart';
import 'method_def.dart';
import 'nested_class.dart';

/// Contains the definitions of all types in the assembly.
///
/// The table has the following columns:
///  - Flags (4-byte bitmask of TypeAttributes)
///  - TypeName (String Heap Index)
///  - TypeNamespace (String Heap Index)
///  - Extends (TypeDefOrRef Coded Index)
///  - FieldList (Field Index)
///  - MethodList (MethodDef Index)
///
/// The table is defined in the section `§II.22.37` of the ECMA-335 standard.
final class TypeDef extends Row with HasCustomAttributes {
  TypeDef(super.metadataIndex, super.readerIndex, super.position);

  static const tableIndex = TableIndex.typeDef;

  @override
  TableIndex get table => tableIndex;

  late final flags = TypeAttributes(readUint(0));

  late final typeVisibility =
      TypeVisibility.values[flags & TypeAttributes.visibilityMask];

  late final typeLayout = switch (flags & TypeAttributes.layoutMask) {
    TypeAttributes.autoLayout => TypeLayout.auto,
    TypeAttributes.sequentialLayout => TypeLayout.sequential,
    TypeAttributes.explicitLayout => TypeLayout.explicit,
    _ => throw WinmdException(
      'Unknown type layout: ${flags & TypeAttributes.layoutMask}',
    ),
  };

  late final typeSemantics = switch (flags &
      TypeAttributes.classSemanticsMask) {
    TypeAttributes.class$ => TypeSemantics.class$,
    TypeAttributes.interface => TypeSemantics.interface,
    _ => throw WinmdException(
      'Unknown type semantics: ${flags & TypeAttributes.classSemanticsMask}',
    ),
  };

  late final stringFormat = switch (flags & TypeAttributes.stringFormatMask) {
    TypeAttributes.ansiClass => StringFormat.ansi,
    TypeAttributes.unicodeClass => StringFormat.unicode,
    TypeAttributes.autoClass => StringFormat.auto,
    TypeAttributes.customFormatClass => StringFormat.custom,
    _ => throw WinmdException(
      'Unknown string format: ${flags & TypeAttributes.stringFormatMask}',
    ),
  };

  late final name = readString(1);

  late final namespace = readString(2);

  late final extends$ = () {
    if (readUint(3) == 0) return null;
    return decode<TypeDefOrRef>(3);
  }();

  late final fields = getList<Field>(4);

  late final methods = getList<MethodDef>(5);

  late final generics = getEqualRange<GenericParam>(
    2,
    TypeOrMethodDef.typeDef(this).encode(),
  );

  late final interfaceImpls = getEqualRange<InterfaceImpl>(0, position + 1);

  late final classLayout = getEqualRange<ClassLayout>(
    2,
    position + 1,
  ).firstOrNull;

  late final nested = getEqualRange<NestedClass>(1, position + 1).firstOrNull;

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
  Field? findField(String name) =>
      fields.where((f) => f.name == name).firstOrNull;

  MethodDef? findMethod(String name) =>
      methods.where((m) => m.name == name).firstOrNull;
}

final class TypeDefCompanion extends RowCompanion<TypeDef> {
  const TypeDefCompanion();

  @override
  TypeDef Function(MetadataIndex, int, int) get constructor => TypeDef.new;

  @override
  TableIndex get table => TypeDef.tableIndex;
}
