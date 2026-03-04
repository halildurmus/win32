import 'dart:collection';

import '../attributes.dart';
import '../exception.dart';
import 'metadata_index.dart';
import 'table/field.dart';
import 'table/method_def.dart';
import 'table/type_def.dart';

/// Provides fast, structured access to [constantIndex], [functionIndex], and
/// [typeIndex] within a [MetadataIndex], enabling efficient lookup by namespace
/// and name or by name alone.
final class MetadataLookup {
  /// Creates a new [MetadataLookup] from a [MetadataIndex].
  factory MetadataLookup(MetadataIndex index) {
    final constants = HashMap<String, HashMap<String, Field>>();
    final functions = HashMap<String, HashMap<String, MethodDef>>();
    final types = HashMap<String, HashMap<String, List<TypeDef>>>();
    final constantsByName = HashMap<String, Field>();
    final functionsByName = HashMap<String, MethodDef>();
    final typesByName = HashMap<String, List<TypeDef>>();

    for (final (namespace, name, type) in index.namespaceTypeEntries) {
      types
          .putIfAbsent(namespace, HashMap.new)
          .putIfAbsent(name, () => [])
          .add(type);
      typesByName.putIfAbsent(name, () => []).add(type);

      if (!type.flags.has(TypeAttributes.windowsRuntime)) {
        switch (type.category) {
          case .class$ when name == 'Apis':
            for (final method in type.methods) {
              functions
                  .putIfAbsent(namespace, HashMap.new)
                  .putIfAbsent(method.name, () => method);
              functionsByName.putIfAbsent(method.name, () => method);
            }
            for (final field in type.fields) {
              constants
                  .putIfAbsent(namespace, HashMap.new)
                  .putIfAbsent(field.name, () => field);
              constantsByName.putIfAbsent(field.name, () => field);
            }

          case .enum$ when !type.hasAttribute('ScopedEnumAttribute'):
            for (final field in type.fields) {
              if (field.flags.has(FieldAttributes.literal)) {
                constants
                    .putIfAbsent(namespace, HashMap.new)
                    .putIfAbsent(field.name, () => field);
                constantsByName.putIfAbsent(field.name, () => field);
              }
            }

          default:
        }
      }
    }

    return MetadataLookup._(
      index,
      constants,
      functions,
      types,
      constantsByName,
      functionsByName,
      typesByName,
    );
  }

  MetadataLookup._(
    this.index,
    this.constantIndex,
    this.functionIndex,
    this.typeIndex,
    this._constantsByName,
    this._functionsByName,
    this._typesByName,
  );

  /// The underlying [MetadataIndex] from which this lookup was created.
  final MetadataIndex index;

  /// A map of [Field]s indexed by their namespace and name.
  final HashMap<String, HashMap<String, Field>> constantIndex;

  /// A map of [MethodDef]s indexed by their namespace and name.
  final HashMap<String, HashMap<String, MethodDef>> functionIndex;

  /// A map of [TypeDef]s indexed by their namespace and name.
  final HashMap<String, HashMap<String, List<TypeDef>>> typeIndex;

  final HashMap<String, Field> _constantsByName;
  final HashMap<String, MethodDef> _functionsByName;
  final HashMap<String, List<TypeDef>> _typesByName;

  /// Finds a constant by its [namespace] and [name].
  ///
  /// Throws a [WinmdException] if the constant is not found.
  Field findConstant(String namespace, String name) =>
      constantIndex[namespace]?[name] ??
      (throw WinmdException('Constant not found: $namespace.$name'));

  /// Finds a constant by its [name] across all namespaces.
  ///
  /// Throws a [WinmdException] if the constant is not found.
  Field findConstantByName(String name) =>
      _constantsByName[name] ??
      (throw WinmdException('Constant not found: $name'));

  /// Attempts to find a constant by its [namespace] and [name].
  ///
  /// Returns `null` if the constant is not found.
  Field? tryFindConstant(String namespace, String name) =>
      constantIndex[namespace]?[name];

  /// Attempts to find a constant by its [name] across all namespaces.
  Field? tryFindConstantByName(String name) => _constantsByName[name];

  /// Finds a function by its [namespace] and [name].
  ///
  /// Throws a [WinmdException] if the function is not found.
  MethodDef findFunction(String namespace, String name) =>
      functionIndex[namespace]?[name] ??
      (throw WinmdException('Function not found: $namespace.$name'));

  /// Finds a function by its [name] across all namespaces.
  MethodDef findFunctionByName(String name) =>
      _functionsByName[name] ??
      (throw WinmdException('Function not found: $name'));

  /// Attempts to find a function by its [namespace] and [name].
  ///
  /// Returns `null` if the function is not found.
  MethodDef? tryFindFunction(String namespace, String name) =>
      functionIndex[namespace]?[name];

  /// Attempts to find a function by its [name] across all namespaces.
  MethodDef? tryFindFunctionByName(String name) => _functionsByName[name];

  /// Enumerates all [TypeDef] instances matching the given [namespace] and
  /// [name].
  Iterable<TypeDef> findTypes(String namespace, String name) =>
      typeIndex[namespace]?[name] ?? const .empty();

  /// Finds all [TypeDef] instances matching the [name] across all namespaces.
  Iterable<TypeDef> findTypesByName(String name) =>
      _typesByName[name] ?? const .empty();

  /// Finds a single [TypeDef] matching the given [namespace] and [name].
  ///
  /// Throws a [WinmdException] if:
  /// - No types are found for the specified namespace and name.
  /// - More than one type is found, indicating ambiguity.
  TypeDef findSingleType(String namespace, String name) {
    final list = typeIndex[namespace]?[name];
    if (list == null || list.isEmpty) {
      throw WinmdException('Type not found: $namespace.$name');
    } else if (list.length > 1) {
      throw WinmdException('More than one type found: $namespace.$name');
    }
    return list[0];
  }

  /// Finds a single [TypeDef] matching the given [name] across all namespaces.
  ///
  /// Throws a [WinmdException] if:
  /// - No types are found for the specified name.
  /// - More than one type is found, indicating ambiguity.
  TypeDef findSingleTypeByName(String name) {
    final list = _typesByName[name];
    if (list == null || list.isEmpty) {
      throw WinmdException('Type not found: $name');
    } else if (list.length > 1) {
      throw WinmdException('More than one type found: $name');
    }
    return list[0];
  }

  /// Attempts to find a single [TypeDef] matching the given [namespace] and
  /// [name].
  ///
  /// Returns `null` if no types are found, or more than one type is found.
  TypeDef? tryFindSingleType(String namespace, String name) {
    final list = typeIndex[namespace]?[name];
    if (list == null || list.isEmpty || list.length > 1) return null;
    return list[0];
  }

  /// Attempts to find a single [TypeDef] matching the given [name] across all
  /// namespaces.
  ///
  /// Returns `null` if no types are found, or more than one type is found.
  TypeDef? tryFindSingleTypeByName(String name) {
    final list = _typesByName[name];
    if (list == null || list.isEmpty || list.length > 1) return null;
    return list[0];
  }

  @override
  String toString() => 'MetadataLookup(index: $index)';
}
