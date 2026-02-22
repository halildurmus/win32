import 'package:winmd/winmd.dart';

import '../extensions/method_def.dart';
import '../extensions/string.dart';
import '../extensions/type_def.dart';

/// Utility class for resolving lookup keys for different API elements.
abstract final class DocsKeyResolver {
  /// Resolves a list of possible lookup keys for the given [row].
  static List<String> resolve(Row row) => switch (row) {
    Field() => _resolveForConstant(row),
    MethodDef() =>
      row.parent.isInterface
          ? _resolveForMethod(row)
          : _resolveForFunction(row),
    TypeDef() => _resolveForTypeDef(row),
    _ => const [],
  };

  static List<String> _resolveForConstant(Field field) => [
    field.name.safeIdentifier,
    field.name,
  ];

  static List<String> _resolveForFunction(MethodDef method) => [
    method.nameWithoutEncoding.safeTypeName,
    method.name,
    method.nameWithoutEncoding,
  ];

  static List<String> _resolveForMethod(MethodDef method) => [
    '${method.parent.safeIdentifier}.${method.camelCasedUniqueName}',
    '${method.parent.name}.${method.name}',
    '${method.parent.nameWithoutEncoding.lastComponent}.${method.name}',
  ];

  static List<String> _resolveForTypeDef(TypeDef typeDef) => [
    typeDef.safeTypeName,
    typeDef.name,
    typeDef.nameWithoutEncoding.lastComponent,
  ];
}
