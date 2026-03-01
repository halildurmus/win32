import 'dart:collection';

import '../exception.dart';
import 'metadata_reader.dart';
import 'metadata_table.dart';
import 'table/assembly.dart';
import 'table/assembly_os.dart';
import 'table/assembly_processor.dart';
import 'table/assembly_ref.dart';
import 'table/assembly_ref_os.dart';
import 'table/assembly_ref_processor.dart';
import 'table/class_layout.dart';
import 'table/constant.dart';
import 'table/custom_attribute.dart';
import 'table/decl_security.dart';
import 'table/event.dart';
import 'table/event_map.dart';
import 'table/exported_type.dart';
import 'table/field.dart';
import 'table/field_layout.dart';
import 'table/field_marshal.dart';
import 'table/field_rva.dart';
import 'table/file.dart';
import 'table/generic_param.dart';
import 'table/generic_param_constraint.dart';
import 'table/impl_map.dart';
import 'table/interface_impl.dart';
import 'table/manifest_resource.dart';
import 'table/member_ref.dart';
import 'table/method_def.dart';
import 'table/method_impl.dart';
import 'table/method_semantics.dart';
import 'table/method_spec.dart';
import 'table/module.dart';
import 'table/module_ref.dart';
import 'table/nested_class.dart';
import 'table/param.dart';
import 'table/property.dart';
import 'table/property_map.dart';
import 'table/stand_alone_sig.dart';
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
    const nestedClassTable = MetadataTable.nestedClass;
    const typeDefTable = MetadataTable.typeDef;

    for (var readerIndex = 0; readerIndex < readers.length; readerIndex++) {
      final reader = readers[readerIndex];
      final tableStream = reader.tableStream;

      for (final typeDefIndex in tableStream.typeDef) {
        final namespace = reader.readString(typeDefIndex, typeDefTable, 2);

        // Skips `<Module>` as well as nested types.
        if (namespace.isEmpty) continue;

        final name = reader.readString(typeDefIndex, typeDefTable, 1);
        namespaceToTypeMap
            .putIfAbsent(namespace, HashMap.new)
            .putIfAbsent(name, () => [])
            .add(.new(readerIndex, typeDefIndex));
      }

      for (final nestedClass in tableStream.nestedClass) {
        final inner = reader.readUint(nestedClass, nestedClassTable, 0) - 1;
        final outer = reader.readUint(nestedClass, nestedClassTable, 1) - 1;
        nestedTypeMap
            .putIfAbsent(.new(readerIndex, outer), () => [])
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
      (types) => types.map((e) => .new(this, e.readerIndex, e.typeDefIndex)),
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
        (e) => (namespace, name, .new(this, e.readerIndex, e.typeDefIndex)),
      );
    });
  });

  /// Enumerates the nested types defined under the given [parent] type.
  Iterable<TypeDef> nestedTypes(TypeDef parent) =>
      _nestedTypeMap[_ReaderAndTypeDefIndex(parent.readerIndex, parent.index)]
          ?.map((index) => .new(this, parent.readerIndex, index)) ??
      const Iterable.empty();

  /// Enumerates all [TypeDef] instances matching the given [namespace] and
  /// [name].
  Iterable<TypeDef> findTypes(String namespace, String name) =>
      _namespaceToTypeMap[namespace]?[name]?.map(
        (e) => .new(this, e.readerIndex, e.typeDefIndex),
      ) ??
      const .empty();

  /// Finds a single [TypeDef] matching the given [namespace] and [name].
  ///
  /// Throws a [WinmdException] if:
  /// - No types are found for the specified namespace and name.
  /// - More than one type is found, indicating ambiguity.
  TypeDef findSingleType(String namespace, String name) {
    final types = findTypes(namespace, name).toList(growable: false);
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
    final types = findTypes(namespace, name).toList(growable: false);
    if (types.isEmpty || types.length > 1) return null;
    return types[0];
  }

  /// Enumerates all [Assembly] entries across all readers.
  Iterable<Assembly> get assembly => readers.indexed.expand(
    (e) => e.$2.tableStream.assembly.map((index) => .new(this, e.$1, index)),
  );

  /// Enumerates all [AssemblyOS] entries across all readers.
  Iterable<AssemblyOS> get assemblyOS => readers.indexed.expand(
    (e) => e.$2.tableStream.assemblyOS.map((index) => .new(this, e.$1, index)),
  );

  /// Enumerates all [AssemblyProcessor] entries across all readers.
  Iterable<AssemblyProcessor> get assemblyProcessor => readers.indexed.expand(
    (e) => e.$2.tableStream.assemblyProcessor.map(
      (index) => .new(this, e.$1, index),
    ),
  );

  /// Enumerates all [AssemblyRef] entries across all readers.
  Iterable<AssemblyRef> get assemblyRef => readers.indexed.expand(
    (e) => e.$2.tableStream.assemblyRef.map((index) => .new(this, e.$1, index)),
  );

  /// Enumerates all [AssemblyRefOS] entries across all readers.
  Iterable<AssemblyRefOS> get assemblyRefOS => readers.indexed.expand(
    (e) =>
        e.$2.tableStream.assemblyRefOS.map((index) => .new(this, e.$1, index)),
  );

  /// Enumerates all [AssemblyRefProcessor] entries across all readers.
  Iterable<AssemblyRefProcessor> get assemblyRefProcessor =>
      readers.indexed.expand(
        (e) => e.$2.tableStream.assemblyRefProcessor.map(
          (index) => .new(this, e.$1, index),
        ),
      );

  /// Enumerates all [ClassLayout] entries across all readers.
  Iterable<ClassLayout> get classLayout => readers.indexed.expand(
    (e) => e.$2.tableStream.classLayout.map((index) => .new(this, e.$1, index)),
  );

  /// Enumerates all [Constant] entries across all readers.
  Iterable<Constant> get constant => readers.indexed.expand(
    (e) => e.$2.tableStream.constant.map((index) => .new(this, e.$1, index)),
  );

  /// Enumerates all [CustomAttribute] entries across all readers.
  Iterable<CustomAttribute> get customAttribute => readers.indexed.expand(
    (e) => e.$2.tableStream.customAttribute.map(
      (index) => .new(this, e.$1, index),
    ),
  );

  /// Enumerates all [DeclSecurity] entries across all readers.
  Iterable<DeclSecurity> get declSecurity => readers.indexed.expand(
    (e) =>
        e.$2.tableStream.declSecurity.map((index) => .new(this, e.$1, index)),
  );

  /// Enumerates all [Event] entries across all readers.
  Iterable<Event> get event => readers.indexed.expand(
    (e) => e.$2.tableStream.event.map((index) => .new(this, e.$1, index)),
  );

  /// Enumerates all [EventMap] entries across all readers.
  Iterable<EventMap> get eventMap => readers.indexed.expand(
    (e) => e.$2.tableStream.eventMap.map((index) => .new(this, e.$1, index)),
  );

  /// Enumerates all [ExportedType] entries across all readers.
  Iterable<ExportedType> get exportedType => readers.indexed.expand(
    (e) =>
        e.$2.tableStream.exportedType.map((index) => .new(this, e.$1, index)),
  );

  /// Enumerates all [Field] entries across all readers.
  Iterable<Field> get field => readers.indexed.expand(
    (e) => e.$2.tableStream.field.map((index) => .new(this, e.$1, index)),
  );

  /// Enumerates all [FieldLayout] entries across all readers.
  Iterable<FieldLayout> get fieldLayout => readers.indexed.expand(
    (e) => e.$2.tableStream.fieldLayout.map((index) => .new(this, e.$1, index)),
  );

  /// Enumerates all [FieldMarshal] entries across all readers.
  Iterable<FieldMarshal> get fieldMarshal => readers.indexed.expand(
    (e) =>
        e.$2.tableStream.fieldMarshal.map((index) => .new(this, e.$1, index)),
  );

  /// Enumerates all [FieldRVA] entries across all readers.
  Iterable<FieldRVA> get fieldRVA => readers.indexed.expand(
    (e) => e.$2.tableStream.fieldRVA.map((index) => .new(this, e.$1, index)),
  );

  /// Enumerates all [File] entries across all readers.
  Iterable<File> get file => readers.indexed.expand(
    (e) => e.$2.tableStream.file.map((index) => .new(this, e.$1, index)),
  );

  /// Enumerates all [GenericParam] entries across all readers.
  Iterable<GenericParam> get genericParam => readers.indexed.expand(
    (e) =>
        e.$2.tableStream.genericParam.map((index) => .new(this, e.$1, index)),
  );

  /// Enumerates all [GenericParamConstraint] entries across all readers.
  Iterable<GenericParamConstraint> get genericParamConstraint =>
      readers.indexed.expand(
        (e) => e.$2.tableStream.genericParamConstraint.map(
          (index) => .new(this, e.$1, index),
        ),
      );

  /// Enumerates all [ImplMap] entries across all readers.
  Iterable<ImplMap> get implMap => readers.indexed.expand(
    (e) => e.$2.tableStream.implMap.map((index) => .new(this, e.$1, index)),
  );

  /// Enumerates all [InterfaceImpl] entries across all readers.
  Iterable<InterfaceImpl> get interfaceImpl => readers.indexed.expand(
    (e) =>
        e.$2.tableStream.interfaceImpl.map((index) => .new(this, e.$1, index)),
  );

  /// Enumerates all [ManifestResource] entries across all readers.
  Iterable<ManifestResource> get manifestResource => readers.indexed.expand(
    (e) => e.$2.tableStream.manifestResource.map(
      (index) => .new(this, e.$1, index),
    ),
  );

  /// Enumerates all [MemberRef] entries across all readers.
  Iterable<MemberRef> get memberRef => readers.indexed.expand(
    (e) => e.$2.tableStream.memberRef.map((index) => .new(this, e.$1, index)),
  );

  /// Enumerates all [MethodDef] entries across all readers.
  Iterable<MethodDef> get methodDef => readers.indexed.expand(
    (e) => e.$2.tableStream.methodDef.map((index) => .new(this, e.$1, index)),
  );

  /// Enumerates all [MethodImpl] entries across all readers.
  Iterable<MethodImpl> get methodImpl => readers.indexed.expand(
    (e) => e.$2.tableStream.methodImpl.map((index) => .new(this, e.$1, index)),
  );

  /// Enumerates all [MethodSemantics] entries across all readers.
  Iterable<MethodSemantics> get methodSemantics => readers.indexed.expand(
    (e) => e.$2.tableStream.methodSemantics.map(
      (index) => .new(this, e.$1, index),
    ),
  );

  /// Enumerates all [MethodSpec] entries across all readers.
  Iterable<MethodSpec> get methodSpec => readers.indexed.expand(
    (e) => e.$2.tableStream.methodSpec.map((index) => .new(this, e.$1, index)),
  );

  /// Enumerates all [Module] entries across all readers.
  Iterable<Module> get module => readers.indexed.expand(
    (e) => e.$2.tableStream.module.map((index) => .new(this, e.$1, index)),
  );

  /// Enumerates all [ModuleRef] entries across all readers.
  Iterable<ModuleRef> get moduleRef => readers.indexed.expand(
    (e) => e.$2.tableStream.moduleRef.map((index) => .new(this, e.$1, index)),
  );

  /// Enumerates all [NestedClass] entries across all readers.
  Iterable<NestedClass> get nestedClass => readers.indexed.expand(
    (e) => e.$2.tableStream.nestedClass.map((index) => .new(this, e.$1, index)),
  );

  /// Enumerates all [Param] entries across all readers.
  Iterable<Param> get param => readers.indexed.expand(
    (e) => e.$2.tableStream.param.map((index) => .new(this, e.$1, index)),
  );

  /// Enumerates all [Property] entries across all readers.
  Iterable<Property> get property => readers.indexed.expand(
    (e) => e.$2.tableStream.property.map((index) => .new(this, e.$1, index)),
  );

  /// Enumerates all [PropertyMap] entries across all readers.
  Iterable<PropertyMap> get propertyMap => readers.indexed.expand(
    (e) => e.$2.tableStream.propertyMap.map((index) => .new(this, e.$1, index)),
  );

  /// Enumerates all [StandAloneSig] entries across all readers.
  Iterable<StandAloneSig> get standAloneSig => readers.indexed.expand(
    (e) =>
        e.$2.tableStream.standAloneSig.map((index) => .new(this, e.$1, index)),
  );

  /// Enumerates all [TypeDef] entries across all readers.
  Iterable<TypeDef> get typeDef => readers.indexed.expand(
    (e) => e.$2.tableStream.typeDef.map((index) => .new(this, e.$1, index)),
  );

  /// Enumerates all [TypeRef] entries across all readers.
  Iterable<TypeRef> get typeRef => readers.indexed.expand(
    (e) => e.$2.tableStream.typeRef.map((index) => .new(this, e.$1, index)),
  );

  /// Enumerates all [TypeSpec] entries across all readers.
  Iterable<TypeSpec> get typeSpec => readers.indexed.expand(
    (e) => e.$2.tableStream.typeSpec.map((index) => .new(this, e.$1, index)),
  );

  @override
  String toString() =>
      'MetadataIndex(readers: ${readers.length}, '
      'namespaces: ${_namespaceToTypeMap.length})';
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
