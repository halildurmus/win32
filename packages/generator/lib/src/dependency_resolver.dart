import 'dart:collection';

import 'package:winmd/winmd.dart' as winmd;

import 'attributes.dart';
import 'extensions/field.dart';
import 'extensions/method_def.dart';
import 'extensions/param.dart';
import 'extensions/type_def.dart';
import 'interop_type.dart';
import 'windows_metadata.dart';

/// A utility class for resolving metadata dependencies between [winmd.Row]
/// instances.
///
/// This class recursively traverses dependency trees for metadata objects,
/// identifying dependent types represented by [winmd.TypeDef]. It employs caching
/// and a breadth-first search strategy to optimize the resolution process.
final class DependencyResolver {
  /// A cache mapping token values to their resolved list of [winmd.TypeDef]
  /// dependencies.
  static final _resolvedDeps = <int, List<winmd.TypeDef>>{};

  /// Resolves the dependencies of the provided [row].
  ///
  /// This method initiates a breadth-first traversal starting with the given
  /// metadata row. It accumulates and returns an immutable, sorted list of
  /// [winmd.TypeDef] dependencies. The results are cached to prevent redundant
  /// processing.
  static List<winmd.TypeDef> resolve(winmd.Row row) =>
      _resolvedDeps.putIfAbsent(row.index, () {
        final deps = SplayTreeSet<winmd.TypeDef>(
          (a, b) => a.index.compareTo(b.index),
        );
        final visited = <int>{row.index};
        final queue = Queue<winmd.Row>()..add(row);

        while (queue.isNotEmpty) {
          final current = queue.removeFirst();
          // print('current: $current');
          final currentDeps = _resolve(current);
          // print('currentDeps: $currentDeps');
          for (final type in currentDeps) {
            if (visited.add(type.index)) {
              deps.add(type);

              // Skip enums and wrapper structs.
              if (type.isEnum || type.isWrapperStruct) continue;

              queue.add(type);
            }
          }
          // print('queue: $queue\n');
        }

        return UnmodifiableListView(deps);
      });

  /// Recursively resolves the direct dependencies of the given [row].
  ///
  /// This internal helper method inspects various aspects of the metadata
  /// object, such as return types, parameters, fields, and implemented
  /// interfaces to determine its direct dependencies.
  ///
  /// Special handling is provided for parameters and fields that have an
  /// associated enumeration (specified via the
  /// [Win32Attribute.associatedEnum]). In such cases, the corresponding
  /// [winmd.TypeDef] is retrieved and added to the dependency list.
  ///
  /// The method leverages the same caching mechanism as [resolve] to avoid
  /// redundant work.
  static List<winmd.TypeDef> _resolve(
    winmd.Row row,
  ) => _resolvedDeps.putIfAbsent(row.index, () {
    final deps = SplayTreeSet<winmd.TypeDef>(
      (a, b) => a.index.compareTo(b.index),
    );

    void addType(InteropType type) {
      for (
        InteropType? current = type;
        current != null;
        current = current.tryDeref()
      ) {
        if (current case ArrayType(:final element)) {
          addType(element);
          break;
        }

        if (current case TypeDefType(:final typeDef)) {
          if (typeDef.isNested) {
            deps.addAll(_resolve(typeDef));
          } else {
            deps.add(typeDef);
          }
          break;
        }

        if (current case BOOLType()) {
          deps.add(
            WindowsMetadata.findTypeDef('Windows.Win32.Foundation', 'BOOL'),
          );
          break;
        }

        if (current case BOOLEANType()) {
          deps.add(
            WindowsMetadata.findTypeDef('Windows.Win32.Foundation', 'BOOLEAN'),
          );
          break;
        }

        if (current case BSTRType()) {
          deps.add(
            WindowsMetadata.findTypeDef('Windows.Win32.Foundation', 'BSTR'),
          );
          break;
        }

        if (current case DEVPROPKEYType()) {
          deps.add(
            WindowsMetadata.findTypeDef(
              'Windows.Win32.Foundation',
              'DEVPROPKEY',
            ),
          );
          break;
        }

        if (current case HRESULTType()) {
          deps.add(
            WindowsMetadata.findTypeDef('Windows.Win32.Foundation', 'HRESULT'),
          );
          break;
        }

        if (current case IUnknownType()) {
          deps.add(
            WindowsMetadata.findTypeDef('Windows.Win32.System.Com', 'IUnknown'),
          );
          break;
        }

        if (current case NTSTATUSType()) {
          deps.add(
            WindowsMetadata.findTypeDef('Windows.Win32.Foundation', 'NTSTATUS'),
          );
          break;
        }

        if (current case ObjectType()) {
          deps.add(
            WindowsMetadata.findTypeDef(
              'Windows.Win32.System.WinRT',
              'IInspectable',
            ),
          );
          break;
        }

        if (current case PROPERTYKEYType()) {
          deps.add(
            WindowsMetadata.findTypeDef(
              'Windows.Win32.Foundation',
              'PROPERTYKEY',
            ),
          );
          break;
        }

        if (current case PROPVARIANTType()) {
          deps.add(
            WindowsMetadata.findTypeDef(
              'Windows.Win32.System.Com.StructuredStorage',
              'PROPVARIANT',
            ),
          );
          break;
        }

        if (current case PSTRType()) {
          deps.add(
            WindowsMetadata.findTypeDef('Windows.Win32.Foundation', 'PSTR'),
          );
          break;
        }

        if (current case PWSTRType()) {
          deps.add(
            WindowsMetadata.findTypeDef('Windows.Win32.Foundation', 'PWSTR'),
          );
          break;
        }

        if (current case SID_IDENTIFIER_AUTHORITYType()) {
          deps.add(
            WindowsMetadata.findTypeDef(
              'Windows.Win32.Security',
              'SID_IDENTIFIER_AUTHORITY',
            ),
          );
          break;
        }

        if (current case StringType()) {
          deps.add(
            WindowsMetadata.findTypeDef(
              'Windows.Win32.System.WinRT',
              'HSTRING',
            ),
          );
          break;
        }

        if (current case VARIANTType()) {
          deps.add(
            WindowsMetadata.findTypeDef(
              'Windows.Win32.System.Variant',
              'VARIANT',
            ),
          );
          break;
        }

        if (current case VARIANT_BOOLType()) {
          deps.add(
            WindowsMetadata.findTypeDef(
              'Windows.Win32.Foundation',
              'VARIANT_BOOL',
            ),
          );
          break;
        }
      }
    }

    switch (row) {
      case winmd.MethodDef():
        addType(row.returnType);
        for (final param in row.params) {
          if (param.attributeAsString(Win32Attribute.associatedEnum)
              case final name?) {
            final namespace = row.parent.namespace;
            deps.add(WindowsMetadata.findTypeDef(namespace, name));
          } else {
            addType(param.type);
          }
        }

      case winmd.TypeDef():
        for (final field in row.fields) {
          if (field.attributeAsString(Win32Attribute.associatedEnum)
              case final name?) {
            final namespace = row.namespace;
            deps.add(WindowsMetadata.findTypeDef(namespace, name));
          } else {
            addType(field.type);
          }
        }

        for (final winmd.InterfaceImpl(:interface) in row.interfaceImpls) {
          final typeDef = WindowsMetadata.findTypeDef(
            interface.namespace,
            interface.name,
          );
          deps.addAll(_resolve(typeDef));
        }

        for (final method in row.methods) {
          deps.addAll(_resolve(method));
        }
    }

    return UnmodifiableListView(deps);
  });

  /// Resolves dependencies for multiple [winmd.Row] instances.
  ///
  /// This method iterates over a list of metadata objects and aggregates their
  /// dependencies by invoking the [resolve] method on each. The final result is
  /// an immutable, sorted list of all unique [winmd.TypeDef] dependencies
  /// across the provided objects.
  static List<winmd.TypeDef> resolveMulti(List<winmd.Row> rows) {
    final deps = SplayTreeSet<winmd.TypeDef>(
      (a, b) => a.index.compareTo(b.index),
    );
    for (final row in rows) {
      deps.addAll(resolve(row));
    }
    return UnmodifiableListView(deps);
  }
}
