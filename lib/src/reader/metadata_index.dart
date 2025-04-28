import 'dart:collection';

import '../common.dart';
import '../exception.dart';
import 'metadata_reader.dart';
import 'metadata_table.dart';
import 'table/assembly_ref.dart';
import 'table/class_layout.dart';
import 'table/constant.dart';
import 'table/custom_attribute.dart';
import 'table/field.dart';
import 'table/field_layout.dart';
import 'table/generic_param.dart';
import 'table/generic_param_constraint.dart';
import 'table/impl_map.dart';
import 'table/interface_impl.dart';
import 'table/member_ref.dart';
import 'table/method_def.dart';
import 'table/module.dart';
import 'table/module_ref.dart';
import 'table/nested_class.dart';
import 'table/param.dart';
import 'table/type_def.dart';
import 'table/type_ref.dart';
import 'table/type_spec.dart';

/// An index over one or more [MetadataReader] instances, allowing efficient
/// lookup and traversal of metadata types.
///
/// [MetadataIndex] provides access to namespace/type mappings, nested type
/// relationships, and methods for looking up types by their namespace and name.
final class MetadataIndex {
  /// Creates a [MetadataIndex] from a single [MetadataReader].
  factory MetadataIndex.fromReader(MetadataReader reader) =>
      MetadataIndex.fromReaders([reader]);

  /// Creates a [MetadataIndex] from a list of [MetadataReader]s.
  ///
  /// This constructor scans each reader and builds internal lookup structures
  /// for type definitions and nested types. If multiple readers are provided,
  /// they are indexed by order of appearance.
  factory MetadataIndex.fromReaders(List<MetadataReader> readers) {
    final namespaceToTypeMap =
        HashMap<String, HashMap<String, List<_ReaderAndTypeDefIndex>>>();
    final nestedTypeMap = HashMap<_ReaderAndTypeDefIndex, List<int>>();
    const typeDefTable = MetadataTable.typeDef;

    for (var readerIndex = 0; readerIndex < readers.length; readerIndex++) {
      final reader = readers[readerIndex];

      for (final typeDefIndex in reader.typeDefs) {
        final namespace = reader.readString(typeDefIndex, typeDefTable, 2);

        // Skips `<Module>` as well as nested types.
        if (namespace.isEmpty) continue;

        final name = reader.readString(typeDefIndex, typeDefTable, 1);
        final trimmedName = trimTick(name);
        namespaceToTypeMap
            .putIfAbsent(
              namespace,
              HashMap<String, List<_ReaderAndTypeDefIndex>>.new,
            )
            .putIfAbsent(trimmedName, () => [])
            .add(_ReaderAndTypeDefIndex(readerIndex, typeDefIndex));
      }

      for (final nestedClass in reader.nestedClasses) {
        final inner = reader.readUint(nestedClass, typeDefTable, 0);
        final outer = reader.readUint(nestedClass, typeDefTable, 1);
        nestedTypeMap
            .putIfAbsent(_ReaderAndTypeDefIndex(readerIndex, outer), () => [])
            .add(inner);
      }
    }

    return MetadataIndex._(
      UnmodifiableListView(readers),
      namespaceToTypeMap,
      nestedTypeMap,
    );
  }

  const MetadataIndex._(
    this.readers,
    this._namespaceToTypeMap,
    this._nestedTypeMap,
  );

  /// The list of metadata readers contributing to this index.
  final List<MetadataReader> readers;

  final HashMap<String, HashMap<String, List<_ReaderAndTypeDefIndex>>>
  _namespaceToTypeMap;
  final HashMap<_ReaderAndTypeDefIndex, List<int>> _nestedTypeMap;

  /// Enumerates all [TypeDef]s available in this index.
  Iterable<TypeDef> get allTypes => _namespaceToTypeMap.values.expand(
    (namespace) => namespace.values.expand(
      (types) => types.map((e) => TypeDef(this, e.readerIndex, e.typeDefIndex)),
    ),
  );

  /// Enumerates all (namespace, name, type) triples available in this index.
  ///
  /// This allows efficient iteration over all types along with their
  /// corresponding namespace and unqualified name.
  Iterable<(String namespace, String name, TypeDef typeDef)>
  get namespaceTypeEntries => _namespaceToTypeMap.entries.expand((e) {
    final namespace = e.key;
    return e.value.entries.expand((e) {
      final name = e.key;
      return e.value.map(
        (e) => (namespace, name, TypeDef(this, e.readerIndex, e.typeDefIndex)),
      );
    });
  });

  /// Enumerates the nested types defined under the given [parent] [TypeDef].
  Iterable<TypeDef> nestedTypes(TypeDef parent) =>
      _nestedTypeMap[_ReaderAndTypeDefIndex(
            parent.readerIndex,
            parent.position,
          )]
          ?.map((position) => TypeDef(this, parent.readerIndex, position)) ??
      const Iterable.empty();

  /// Enumerates all [TypeDef] instances matching the given [namespace] and
  /// [name].
  Iterable<TypeDef> findTypes(String namespace, String name) =>
      _namespaceToTypeMap[namespace]?[name]?.map(
        (e) => TypeDef(this, e.readerIndex, e.typeDefIndex),
      ) ??
      const Iterable.empty();

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

  /// Attempts to find a single [TypeDef] matching the given [namespace] and
  /// [name].
  ///
  /// Returns `null` if no types are found, or more than one type is found.
  TypeDef? tryFindSingleType(String namespace, String name) {
    final types = findTypes(namespace, name).toList();
    if (types.isEmpty || types.length > 1) return null;
    return types[0];
  }

  /// Enumerates all [AssemblyRef] entries across all readers.
  Iterable<AssemblyRef> get assemblyRefs => readers.indexed.expand(
    (e) =>
        e.$2.assemblyRefs.map((position) => AssemblyRef(this, e.$1, position)),
  );

  /// Enumerates all [ClassLayout] entries across all readers.
  Iterable<ClassLayout> get classLayouts => readers.indexed.expand(
    (e) =>
        e.$2.classLayouts.map((position) => ClassLayout(this, e.$1, position)),
  );

  /// Enumerates all [Constant] entries across all readers.
  Iterable<Constant> get constants => readers.indexed.expand(
    (e) => e.$2.constants.map((position) => Constant(this, e.$1, position)),
  );

  /// Enumerates all [CustomAttribute] entries across all readers.
  Iterable<CustomAttribute> get customAttributes => readers.indexed.expand(
    (e) => e.$2.customAttributes.map(
      (position) => CustomAttribute(this, e.$1, position),
    ),
  );

  /// Enumerates all [Field] entries across all readers.
  Iterable<Field> get fields => readers.indexed.expand(
    (e) => e.$2.fields.map((position) => Field(this, e.$1, position)),
  );

  /// Enumerates all [FieldLayout] entries across all readers.
  Iterable<FieldLayout> get fieldLayouts => readers.indexed.expand(
    (e) =>
        e.$2.fieldLayouts.map((position) => FieldLayout(this, e.$1, position)),
  );

  /// Enumerates all [GenericParam] entries across all readers.
  Iterable<GenericParam> get genericParams => readers.indexed.expand(
    (e) => e.$2.genericParams.map(
      (position) => GenericParam(this, e.$1, position),
    ),
  );

  /// Enumerates all [GenericParamConstraint] entries across all readers.
  Iterable<GenericParamConstraint> get genericParamConstraints =>
      readers.indexed.expand(
        (e) => e.$2.genericParamConstraints.map(
          (position) => GenericParamConstraint(this, e.$1, position),
        ),
      );

  /// Enumerates all [ImplMap] entries across all readers.
  Iterable<ImplMap> get implMaps => readers.indexed.expand(
    (e) => e.$2.implMaps.map((position) => ImplMap(this, e.$1, position)),
  );

  /// Enumerates all [InterfaceImpl] entries across all readers.
  Iterable<InterfaceImpl> get interfaceImpls => readers.indexed.expand(
    (e) => e.$2.interfaceImpls.map(
      (position) => InterfaceImpl(this, e.$1, position),
    ),
  );

  /// Enumerates all [MemberRef] entries across all readers.
  Iterable<MemberRef> get memberRefs => readers.indexed.expand(
    (e) => e.$2.memberRefs.map((position) => MemberRef(this, e.$1, position)),
  );

  /// Enumerates all [MethodDef] entries across all readers.
  Iterable<MethodDef> get methodDefs => readers.indexed.expand(
    (e) => e.$2.methodDefs.map((position) => MethodDef(this, e.$1, position)),
  );

  /// Enumerates all [Module] entries across all readers.
  Iterable<Module> get modules => readers.indexed.expand(
    (e) => e.$2.modules.map((position) => Module(this, e.$1, position)),
  );

  /// Enumerates all [ModuleRef] entries across all readers.
  Iterable<ModuleRef> get moduleRefs => readers.indexed.expand(
    (e) => e.$2.moduleRefs.map((position) => ModuleRef(this, e.$1, position)),
  );

  /// Enumerates all [NestedClass] entries across all readers.
  Iterable<NestedClass> get nestedClasses => readers.indexed.expand(
    (e) =>
        e.$2.nestedClasses.map((position) => NestedClass(this, e.$1, position)),
  );

  /// Enumerates all [Param] entries across all readers.
  Iterable<Param> get params => readers.indexed.expand(
    (e) => e.$2.params.map((position) => Param(this, e.$1, position)),
  );

  /// Enumerates all [TypeDef] entries across all readers.
  Iterable<TypeDef> get typeDefs => readers.indexed.expand(
    (e) => e.$2.typeDefs.map((position) => TypeDef(this, e.$1, position)),
  );

  /// Enumerates all [TypeRef] entries across all readers.
  Iterable<TypeRef> get typeRefs => readers.indexed.expand(
    (e) => e.$2.typeRefs.map((position) => TypeRef(this, e.$1, position)),
  );

  /// Enumerates all [TypeSpec] entries across all readers.
  Iterable<TypeSpec> get typeSpecs => readers.indexed.expand(
    (e) => e.$2.typeSpecs.map((position) => TypeSpec(this, e.$1, position)),
  );

  @override
  String toString() =>
      'MetadataIndex(readers: ${readers.length}, '
      'namespaces: ${_namespaceToTypeMap.length}, '
      'nested types: ${_nestedTypeMap.length})';
}

final class _ReaderAndTypeDefIndex {
  const _ReaderAndTypeDefIndex(this.readerIndex, this.typeDefIndex);

  final int readerIndex;
  final int typeDefIndex;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is _ReaderAndTypeDefIndex &&
          readerIndex == other.readerIndex &&
          typeDefIndex == other.typeDefIndex;

  @override
  int get hashCode => Object.hash(readerIndex, typeDefIndex);
}
