import 'package:winmd/winmd.dart';

import '../extensions/method.dart';
import '../extensions/string.dart';
import '../extensions/typedef.dart';

/// Utility class for resolving lookup keys for different API elements.
abstract final class DocsKeyResolver {
  /// Resolves a list of possible lookup keys for the given [tokenObject].
  static List<String> resolve(TokenObject tokenObject) => switch (tokenObject) {
    Field() => _resolveForConstant(tokenObject),
    Method() =>
      tokenObject.parent.isInterface
          ? _resolveForMethod(tokenObject)
          : _resolveForFunction(tokenObject),
    TypeDef() => _resolveForTypeDef(tokenObject),
    _ => const [],
  };

  static List<String> _resolveForConstant(Field field) => [
    field.name.safeIdentifier,
    field.name,
  ];

  static List<String> _resolveForFunction(Method method) => [
    method.nameWithoutEncoding.safeTypeName,
    method.name,
    method.nameWithoutEncoding,
  ];

  static List<String> _resolveForMethod(Method method) => [
    '${method.parent.safeIdentifier}.${method.camelCasedUniqueName}',
    '${method.parent.simpleName}.${method.name}',
    '${method.parent.nameWithoutEncoding.lastComponent}.${method.name}',
  ];

  static List<String> _resolveForTypeDef(TypeDef typeDef) => [
    typeDef.safeTypeName,
    typeDef.simpleName,
    typeDef.nameWithoutEncoding.lastComponent,
  ];
}
