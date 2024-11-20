import 'dart:collection';

import 'package:winmd/winmd.dart';

import 'attributes.dart';
import 'extensions/field.dart';
import 'extensions/typedef.dart';
import 'windows_metadata.dart';

/// A utility class for resolving metadata dependencies between
/// [TokenObject] instances.
///
/// This class recursively traverses dependency trees for metadata objects,
/// identifying dependent types represented by [TypeDef]. It employs caching
/// and a breadth-first search strategy to optimize the resolution process.
final class DependencyResolver {
  /// A cache mapping token values to their resolved list of [TypeDef]
  /// dependencies.
  static final _resolvedDeps = <int, List<TypeDef>>{};

  /// Resolves the dependencies of the provided [object].
  ///
  /// This method initiates a breadth-first traversal starting with the given
  /// metadata object. It accumulates and returns an immutable, sorted list of
  /// [TypeDef] dependencies. The results are cached to prevent redundant
  /// processing.
  static List<TypeDef> resolve(TokenObject object) {
    // Types like System.Guid have no dependencies.
    if (object.token == 0) return const [];

    return _resolvedDeps.putIfAbsent(object.token, () {
      final deps = SplayTreeSet<TypeDef>((a, b) => a.token.compareTo(b.token));
      final visited = <int>{object.token};
      final queue = Queue<TokenObject>()..add(object);

      while (queue.isNotEmpty) {
        final current = queue.removeFirst();
        print('current: $current');
        final currentDeps = _resolve(current);
        print('currentDeps: $currentDeps');
        for (final dep in currentDeps) {
          // Skip types like System.Guid.
          if (dep.token == 0) continue;

          if (visited.add(dep.token)) {
            deps.add(dep);

            // Skip enums and wrapper structs.
            if (dep.isEnum || dep.isWrapperStruct) continue;

            queue.add(dep);
          }
        }
        print('queue: $queue\n');
      }

      return UnmodifiableListView(deps);
    });
  }

  /// Recursively resolves the direct dependencies of the given [object].
  ///
  /// This internal helper method inspects various aspects of the metadata
  /// object, such as return types, parameters, fields, and implemented
  /// interfaces to determine its direct dependencies.
  ///
  /// Special handling is provided for parameters and fields that have an
  /// associated enumeration (specified via the
  /// [Win32Attribute.associatedEnum]). In such cases, the corresponding
  /// [TypeDef] is retrieved and added to the dependency list.
  ///
  /// The method leverages the same caching mechanism as [resolve] to avoid
  /// redundant work.
  static List<TypeDef> _resolve(TokenObject object) {
    // Types like System.Guid have no dependencies.
    if (object.token == 0) return const [];

    return _resolvedDeps.putIfAbsent(object.token, () {
      final deps = SplayTreeSet<TypeDef>((a, b) => a.token.compareTo(b.token));

      void addType(TypeIdentifier typeIdentifier) {
        if (typeIdentifier.type case final typeDef? when typeDef.token != 0) {
          deps.add(typeDef);
        }
        var type = typeIdentifier.typeArg;
        while (type != null) {
          if (type.type case final typeDef? when typeDef.token != 0) {
            deps.add(typeDef);
          }
          type = type.typeArg;
        }
      }

      switch (object) {
        case Method():
          addType(object.returnType.typeIdentifier);
          for (final param in object.parameters) {
            if (param.attributeAsString(Win32Attribute.associatedEnum)
                case final name when name.isNotEmpty) {
              deps.add(WindowsMetadata.findTypeDef(name));
            } else {
              addType(param.typeIdentifier);
            }
          }

        case TypeDef():
          for (final field in object.fields) {
            print('field: $field');
            if (field.attributeAsString(Win32Attribute.associatedEnum)
                case final name when name.isNotEmpty) {
              deps.add(WindowsMetadata.findTypeDef(name));
            } else {
              if (field.isNested) {
                deps.addAll(_resolve(field.typeIdentifier.type!));
              } else {
                addType(field.typeIdentifier);
              }
            }
          }

          for (final interface in object.interfaces) {
            print('implements interface: $interface');
            deps.addAll(_resolve(interface));
          }

          for (final method in object.methods) {
            print('method: $method');
            deps.addAll(_resolve(method));
          }
      }

      return UnmodifiableListView(deps);
    });
  }

  /// Resolves dependencies for multiple [TokenObject] instances.
  ///
  /// This method iterates over a list of metadata objects and aggregates their
  /// dependencies by invoking the [resolve] method on each. The final result is
  /// an immutable, sorted list of all unique [TypeDef] dependencies across the
  /// provided objects.
  static List<TypeDef> resolveMulti(List<TokenObject> objects) {
    final deps = SplayTreeSet<TypeDef>((a, b) => a.token.compareTo(b.token));
    for (final object in objects) {
      deps.addAll(resolve(object));
    }
    return UnmodifiableListView(deps);
  }
}
