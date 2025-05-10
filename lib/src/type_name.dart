import 'dart:collection';

import 'common.dart';
import 'metadata_type.dart';

/// Represents a fully qualified type name within a metadata context,
/// optionally including generic type parameters.
final class TypeName {
  /// Creates a [TypeName] with the given [namespace], [name], and optional
  /// [generics].
  const TypeName(this.namespace, this.name, {List<MetadataType>? generics})
    : _generics = generics ?? const [];

  /// The namespace part of the type name.
  final String namespace;

  /// The simple name part of the type.
  final String name;

  final List<MetadataType> _generics;

  /// The list of generic type arguments for this type, if any.
  List<MetadataType> get generics => UnmodifiableListView(_generics);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TypeName &&
          namespace == other.namespace &&
          name == other.name &&
          listEqual(_generics, other._generics);

  @override
  int get hashCode => Object.hash(namespace, name, Object.hashAll(_generics));

  @override
  String toString() =>
      'TypeName($namespace.$name'
      '${_generics.isNotEmpty ? ', generics: $_generics' : ''})';
}
