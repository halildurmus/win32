import 'dart:collection';

import '../attributes.dart';
import '../exception.dart';
import 'metadata_index.dart';
import 'table/field.dart';
import 'table/method_def.dart';
import 'table/type_def.dart';
import 'type_category.dart';

/// Provides fast, structured access to [constantIndex], [functionIndex], and
/// [typeIndex] within a [MetadataIndex], enabling efficient lookup by namespace
/// and name or by name alone.
final class MetadataLookup {
  /// Creates a new [MetadataLookup] from a [MetadataIndex].
  factory MetadataLookup(MetadataIndex index) {
    final constants = HashMap<String, HashMap<String, Field>>();
    final functions = HashMap<String, HashMap<String, MethodDef>>();
    final types = HashMap<String, HashMap<String, List<TypeDef>>>();

    for (final (namespace, name, type) in index.namespaceTypeEntries) {
      types
          .putIfAbsent(namespace, HashMap.new)
          .putIfAbsent(name, () => [])
          .add(type);

      if (!type.flags.has(TypeAttributes.windowsRuntime)) {
        switch (type.category) {
          case TypeCategory.class$ when name == 'Apis':
            for (final method in type.methods) {
              functions
                  .putIfAbsent(namespace, HashMap.new)
                  .putIfAbsent(method.name, () => method);
            }
            for (final field in type.fields) {
              constants
                  .putIfAbsent(namespace, HashMap.new)
                  .putIfAbsent(field.name, () => field);
            }

          case TypeCategory.enum$
              when !type.hasAttribute('ScopedEnumAttribute'):
            for (final field in type.fields) {
              if (field.flags.has(FieldAttributes.literal)) {
                constants
                    .putIfAbsent(namespace, HashMap.new)
                    .putIfAbsent(field.name, () => field);
              }
            }

          default:
        }
      }
    }

    return MetadataLookup._(index, constants, functions, types);
  }

  MetadataLookup._(
    this.index,
    this.constantIndex,
    this.functionIndex,
    this.typeIndex,
  ) : _cachedConstantsByName = HashMap(),
      _cachedFunctionsByName = HashMap(),
      _cachedTypesByName = HashMap();

  /// The underlying [MetadataIndex] from which this lookup was created.
  final MetadataIndex index;

  /// A map of [Field]s indexed by their namespace and name.
  final HashMap<String, HashMap<String, Field>> constantIndex;

  /// A map of [MethodDef]s indexed by their namespace and name.
  final HashMap<String, HashMap<String, MethodDef>> functionIndex;

  /// A map of [TypeDef]s indexed by their namespace and name.
  final HashMap<String, HashMap<String, List<TypeDef>>> typeIndex;

  final HashMap<String, Field> _cachedConstantsByName;
  final HashMap<String, MethodDef> _cachedFunctionsByName;
  final HashMap<String, List<TypeDef>> _cachedTypesByName;

  /// Finds a constant by its [namespace] and [name].
  ///
  /// Throws a [WinmdException] if the constant is not found.
  Field findConstant(String namespace, String name) =>
      constantIndex[namespace]?[name] ??
      (throw WinmdException('Constant not found: $namespace.$name'));

  /// Finds a constant by its [name] across all namespaces.
  ///
  /// Throws a [WinmdException] if the constant is not found.
  Field findConstantByName(String name) => _cachedConstantsByName.putIfAbsent(
    name,
    () => constantIndex.values
        .expand((namespace) => namespace.values)
        .firstWhere(
          (field) => field.name == name,
          orElse: () => throw WinmdException('Constant not found: $name'),
        ),
  );

  /// Attempts to find a constant by its [namespace] and [name].
  ///
  /// Returns `null` if the constant is not found.
  Field? tryFindConstant(String namespace, String name) =>
      constantIndex[namespace]?[name];

  /// Attempts to find a constant by its [name] across all namespaces.
  Field? tryFindConstantByName(String name) {
    if (_cachedConstantsByName[name] case final constant?) return constant;

    final constant = constantIndex.values
        .expand((namespace) => namespace.values)
        .where((field) => field.name == name)
        .firstOrNull;
    if (constant != null) {
      _cachedConstantsByName[name] = constant;
    }

    return constant;
  }

  /// Finds a function by its [namespace] and [name].
  ///
  /// Throws a [WinmdException] if the function is not found.
  MethodDef findFunction(String namespace, String name) =>
      functionIndex[namespace]?[name] ??
      (throw WinmdException('Function not found: $namespace.$name'));

  /// Finds a function by its [name] across all namespaces.
  MethodDef findFunctionByName(String name) =>
      _cachedFunctionsByName.putIfAbsent(
        name,
        () => functionIndex.values
            .expand((namespace) => namespace.values)
            .firstWhere(
              (method) => method.name == name,
              orElse: () => throw WinmdException('Function not found: $name'),
            ),
      );

  /// Attempts to find a function by its [namespace] and [name].
  ///
  /// Returns `null` if the function is not found.
  MethodDef? tryFindFunction(String namespace, String name) =>
      functionIndex[namespace]?[name];

  /// Attempts to find a function by its [name] across all namespaces.
  MethodDef? tryFindFunctionByName(String name) {
    if (_cachedFunctionsByName[name] case final function?) return function;

    final function = functionIndex.values
        .expand((namespace) => namespace.values)
        .where((method) => method.name == name)
        .firstOrNull;
    if (function != null) {
      _cachedFunctionsByName[name] = function;
    }

    return function;
  }

  /// Enumerates all [TypeDef] instances matching the given [namespace] and
  /// [name].
  Iterable<TypeDef> findTypes(String namespace, String name) =>
      typeIndex[namespace]?[name] ?? const Iterable.empty();

  /// Finds all [TypeDef] instances matching the [name] across all namespaces.
  Iterable<TypeDef> findTypesByName(String name) =>
      _cachedTypesByName.putIfAbsent(
        name,
        () => typeIndex.values
            .expand((namespace) => namespace.values)
            .expand((typeList) => typeList)
            .where((type) => type.name == name)
            .toList(growable: false),
      );

  /// Finds a single [TypeDef] matching the given [namespace] and [name].
  ///
  /// Throws a [WinmdException] if:
  /// - No types are found for the specified namespace and name.
  /// - More than one type is found, indicating ambiguity.
  TypeDef findSingleType(String namespace, String name) {
    final types = findTypes(namespace, name).toList();
    if (types.isEmpty) {
      throw WinmdException('Type not found: $namespace.$name');
    } else if (types.length > 1) {
      throw WinmdException('More than one type found: $namespace.$name');
    }
    return types[0];
  }

  /// Finds a single [TypeDef] matching the given [name] across all namespaces.
  ///
  /// Throws a [WinmdException] if:
  /// - No types are found for the specified name.
  /// - More than one type is found, indicating ambiguity.
  TypeDef findSingleTypeByName(String name) {
    final types = findTypesByName(name).toList(growable: false);
    if (types.isEmpty) {
      throw WinmdException('Type not found: $name');
    } else if (types.length > 1) {
      throw WinmdException('More than one type found: $name');
    }
    return types[0];
  }

  /// Attempts to find a single [TypeDef] matching the given [namespace] and
  /// [name].
  ///
  /// Returns `null` if no types are found, or more than one type is found.
  TypeDef? tryFindSingleType(String namespace, String name) {
    final types = findTypes(namespace, name).toList(growable: false);
    if (types.isEmpty || types.length > 1) return null;
    return types[0];
  }

  /// Attempts to find a single [TypeDef] matching the given [name] across all
  /// namespaces.
  ///
  /// Returns `null` if no types are found, or more than one type is found.
  TypeDef? tryFindSingleTypeByName(String name) {
    final types = findTypesByName(name).toList(growable: false);
    if (types.isEmpty || types.length > 1) return null;
    return types[0];
  }

  @override
  String toString() => 'MetadataLookup(index: $index)';
}
