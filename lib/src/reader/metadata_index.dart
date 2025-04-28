import 'dart:collection';

import '../common.dart';
import '../exception.dart';
import 'metadata_reader.dart';
import 'metadata_table.dart';
import 'table/assembly_ref.dart';
import 'table/field.dart';
import 'table/method_def.dart';
import 'table/module.dart';
import 'table/type_def.dart';

final class MetadataIndex {
  factory MetadataIndex.fromReader(MetadataReader reader) =>
      MetadataIndex.fromReaders([reader]);

  factory MetadataIndex.fromReaders(List<MetadataReader> readers) {
    final types =
        HashMap<String, HashMap<String, List<_ReaderAndTypeDefIndex>>>();
    final nested = HashMap<_ReaderAndTypeDefIndex, List<int>>();
    const typeDefTable = MetadataTable.typeDef;

    for (var readerIndex = 0; readerIndex < readers.length; readerIndex++) {
      final reader = readers[readerIndex];

      for (final typeDefIndex in reader.typeDefs) {
        final namespace = reader.readString(typeDefIndex, typeDefTable, 2);

        // Skips `<Module>` as well as nested types.
        if (namespace.isEmpty) continue;

        final name = reader.readString(typeDefIndex, typeDefTable, 1);
        final trimmedName = trimTick(name);
        types
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
        nested
            .putIfAbsent(_ReaderAndTypeDefIndex(readerIndex, outer), () => [])
            .add(inner);
      }
    }

    return MetadataIndex._(UnmodifiableListView(readers), types, nested);
  }

  const MetadataIndex._(this.readers, this._types, this._nested);

  final List<MetadataReader> readers;
  final HashMap<String, HashMap<String, List<_ReaderAndTypeDefIndex>>> _types;
  final HashMap<_ReaderAndTypeDefIndex, List<int>> _nested;

  Iterable<(String namespace, String name, TypeDef typeDef)> get iter =>
      _types.entries.expand((e) {
        final namespace = e.key;
        return e.value.entries.expand((e) {
          final name = e.key;
          return e.value.map(
            (e) =>
                (namespace, name, TypeDef(this, e.readerIndex, e.typeDefIndex)),
          );
        });
      });

  /// Enumerates all `TypeDef` instances.
  Iterable<TypeDef> get types => _types.values.expand(
    (namespace) => namespace.values.expand(
      (types) => types.map((e) => TypeDef(this, e.readerIndex, e.typeDefIndex)),
    ),
  );

  /// Enumerates `TypeDef` instances for a given `namespace` and `name`.
  Iterable<TypeDef> getType(String namespace, String name) =>
      _types[namespace]?[name]?.map(
        (e) => TypeDef(this, e.readerIndex, e.typeDefIndex),
      ) ??
      const Iterable.empty();

  /// Ensures a single `TypeDef` exists, otherwise throws an exception.
  TypeDef getSingleType(String namespace, String name) {
    final results = getType(namespace, name).toList();
    if (results.isEmpty) {
      throw WinmdException('Type not found: $namespace.$name');
    } else if (results.length > 1) {
      throw WinmdException('More than one type found: $namespace.$name');
    }
    return results[0];
  }

  /// Enumerates nested types.
  Iterable<TypeDef> nested(TypeDef typeDef) =>
      _nested[_ReaderAndTypeDefIndex(typeDef.readerIndex, typeDef.position)]
          ?.map((position) => TypeDef(this, typeDef.readerIndex, position)) ??
      const Iterable.empty();

  Iterable<AssemblyRef> get assemblyRefs => readers.indexed.expand(
    (e) =>
        e.$2.assemblyRefs.map((position) => AssemblyRef(this, e.$1, position)),
  );

  Iterable<Field> get fields => readers.indexed.expand(
    (e) => e.$2.fields.map((position) => Field(this, e.$1, position)),
  );

  Iterable<MethodDef> get methodDefs => readers.indexed.expand(
    (e) => e.$2.methodDefs.map((position) => MethodDef(this, e.$1, position)),
  );

  Iterable<Module> get modules => readers.indexed.expand(
    (e) => e.$2.modules.map((position) => Module(this, e.$1, position)),
  );

  Iterable<TypeDef> get typeDefs => readers.indexed.expand(
    (e) => e.$2.typeDefs.map((position) => TypeDef(this, e.$1, position)),
  );

  @override
  String toString() =>
      'MetadataIndex(types: ${_types.length}, nested: ${_nested.length})';
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
