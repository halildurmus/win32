import 'dart:collection';

import '../attributes.dart';
import '../exception.dart';
import 'metadata_index.dart';
import 'table/field.dart';
import 'table/method_def.dart';
import 'table/type_def.dart';
import 'type_category.dart';

sealed class Item {
  const Item();

  const factory Item.constant(Field field) = ConstantItem;

  const factory Item.function(MethodDef method) = FunctionItem;

  const factory Item.type(TypeDef type) = TypeItem;

  String get name;
}

final class ConstantItem extends Item {
  const ConstantItem(this.field);

  final Field field;

  @override
  String get name => field.name;
}

final class FunctionItem extends Item {
  const FunctionItem(this.method);

  final MethodDef method;

  @override
  String get name => method.name;
}

final class TypeItem extends Item {
  const TypeItem(this.type);

  final TypeDef type;

  @override
  String get name => type.name;
}

final class ItemIndex {
  factory ItemIndex(MetadataIndex index) {
    final items = HashMap<String, HashMap<String, List<Item>>>();

    for (final (namespace, name, type) in index.namespaceTypeEntries) {
      _insert(items, namespace, name, Item.type(type));

      if (!type.flags.has(TypeAttributes.windowsRuntime)) {
        switch (type.category) {
          case TypeCategory.class$ when name == 'Apis':
            for (final method in type.methods) {
              _insert(items, namespace, method.name, Item.function(method));
            }
            for (final field in type.fields) {
              _insert(items, namespace, field.name, Item.constant(field));
            }

          case TypeCategory.enum$
              when !type.hasAttribute('ScopedEnumAttribute'):
            for (final field in type.fields) {
              if (field.flags.has(FieldAttributes.literal)) {
                _insert(items, namespace, field.name, Item.constant(field));
              }
            }

          default:
        }
      }
    }

    return ItemIndex._(index, items);
  }

  const ItemIndex._(this.index, this.items);

  final MetadataIndex index;
  final HashMap<String, HashMap<String, List<Item>>> items;

  Field? getConstant(String namespace, String name) {
    final item = items[namespace]?[name]
        ?.whereType<ConstantItem>()
        .singleOrNull;
    return item?.field;
  }

  MethodDef? getFunction(String namespace, String name) {
    final item = items[namespace]?[name]
        ?.whereType<FunctionItem>()
        .singleOrNull;
    return item?.method;
  }

  Iterable<TypeDef> getType(String namespace, String name) =>
      items[namespace]?[name]?.whereType<TypeItem>().map((m) => m.type) ??
      const Iterable.empty();

  TypeDef getSingleType(String namespace, String name) {
    final results = getType(namespace, name).toList();
    if (results.isEmpty) {
      throw WinmdException('Type not found: $namespace.$name');
    } else if (results.length > 1) {
      throw WinmdException('More than one type found: $namespace.$name');
    }
    return results[0];
  }

  static void _insert(
    HashMap<String, HashMap<String, List<Item>>> items,
    String namespace,
    String name,
    Item item,
  ) {
    items
        .putIfAbsent(namespace, HashMap<String, List<Item>>.new)
        .putIfAbsent(name, () => [])
        .add(item);
  }
}
