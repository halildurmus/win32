import 'dart:collection';

import '../attributes.dart';
import '../exception.dart';
import 'metadata_index.dart';
import 'table/field.dart';
import 'table/method_def.dart';
import 'table/type_def.dart';
import 'type_category.dart';

/// An index over a [MetadataIndex] that allows for efficient lookups of
/// [constants], [functions], and [types] by their namespace and name.
final class EntityIndex {
  /// Creates a new [EntityIndex] from a [MetadataIndex].
  factory EntityIndex(MetadataIndex index) {
    final constants = HashMap<String, HashMap<String, Field>>();
    final functions = HashMap<String, HashMap<String, MethodDef>>();
    final types = HashMap<String, HashMap<String, List<TypeDef>>>();

    for (final (namespace, name, type) in index.namespaceTypeEntries) {
      types
          .putIfAbsent(namespace, HashMap<String, List<TypeDef>>.new)
          .putIfAbsent(name, () => [])
          .add(type);

      if (!type.flags.has(TypeAttributes.windowsRuntime)) {
        switch (type.category) {
          case TypeCategory.class$ when name == 'Apis':
            for (final method in type.methods) {
              functions
                  .putIfAbsent(namespace, HashMap<String, MethodDef>.new)
                  .putIfAbsent(method.name, () => method);
            }
            for (final field in type.fields) {
              constants
                  .putIfAbsent(namespace, HashMap<String, Field>.new)
                  .putIfAbsent(field.name, () => field);
            }

          case TypeCategory.enum$
              when !type.hasAttribute('ScopedEnumAttribute'):
            for (final field in type.fields) {
              if (field.flags.has(FieldAttributes.literal)) {
                constants
                    .putIfAbsent(namespace, HashMap<String, Field>.new)
                    .putIfAbsent(field.name, () => field);
              }
            }

          default:
        }
      }
    }

    return EntityIndex._(index, constants, functions, types);
  }

  const EntityIndex._(this.index, this.constants, this.functions, this.types);

  /// The [MetadataIndex] that this index is built from.
  final MetadataIndex index;

  /// A map of [Field]s indexed by their namespace and name.
  final HashMap<String, HashMap<String, Field>> constants;

  /// A map of [MethodDef]s indexed by their namespace and name.
  final HashMap<String, HashMap<String, MethodDef>> functions;

  /// A map of [TypeDef]s indexed by their namespace and name.
  final HashMap<String, HashMap<String, List<TypeDef>>> types;

  /// Finds a constant by its [namespace] and [name].
  ///
  /// Throws a [WinmdException] if the constant is not found.
  Field findConstant(String namespace, String name) =>
      constants[namespace]?[name] ??
      (throw WinmdException('Constant not found: $namespace.$name'));

  /// Attempts to find a constant by its [namespace] and [name].
  ///
  /// Returns `null` if the constant is not found.
  Field? tryFindConstant(String namespace, String name) =>
      constants[namespace]?[name];

  /// Finds a function by its [namespace] and [name].
  ///
  /// Throws a [WinmdException] if the function is not found.
  MethodDef findFunction(String namespace, String name) =>
      functions[namespace]?[name] ??
      (throw WinmdException('Function not found: $namespace.$name'));

  /// Attempts to find a function by its [namespace] and [name].
  ///
  /// Returns `null` if the function is not found.
  MethodDef? tryFindFunction(String namespace, String name) =>
      functions[namespace]?[name];

  /// Enumerates all [TypeDef] instances matching the given [namespace] and
  /// [name].
  Iterable<TypeDef> findTypes(String namespace, String name) =>
      types[namespace]?[name] ?? const Iterable.empty();

  /// Finds a single [TypeDef] matching the given [namespace] and [name].
  ///
  /// Throws a [WinmdException] if:
  /// - No types are found for the specified namespace and name.
  /// - More than one type is found, indicating ambiguity.
  TypeDef findSingleType(String namespace, String name) {
    final foundTypes = findTypes(namespace, name).toList();
    if (foundTypes.isEmpty) {
      throw WinmdException('Type not found: $namespace.$name');
    } else if (foundTypes.length > 1) {
      throw WinmdException('More than one type found: $namespace.$name');
    }
    return foundTypes[0];
  }

  /// Attempts to find a single [TypeDef] matching the given [namespace] and
  /// [name].
  ///
  /// Returns `null` if no types are found, or more than one type is found.
  TypeDef? tryFindSingleType(String namespace, String name) {
    final foundTypes = findTypes(namespace, name).toList();
    if (foundTypes.isEmpty || foundTypes.length > 1) return null;
    return foundTypes[0];
  }
}
