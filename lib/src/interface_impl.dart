import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'mixins/mixins.dart';
import 'models/models.dart';
import 'scope.dart';
import 'token_object.dart';
import 'type_aliases.dart';
import 'type_def.dart';
import 'win32/win32.dart';

/// Records the interfaces a type implements explicitly.
class InterfaceImpl extends TokenObject with CustomAttributesMixin {
  InterfaceImpl(super.scope, super.token);

  TypeDef? _class;
  TypeDef? _interface;

  late final class_ =
      _class ??= _processInterfaceImplToken(reader, scope, token).class_;
  late final interface =
      _interface ??= _processInterfaceImplToken(reader, scope, token).interface;

  /// Whether the [interface] is the `default` interface for the [class_].
  bool get isDefault =>
      hasAttribute('Windows.Foundation.Metadata.DefaultAttribute');

  /// Converts an interface implementation token (0x09) into a tuple of [class_]
  /// and [interface].
  ({TypeDef class_, TypeDef interface}) _processInterfaceImplToken(
    IMetaDataImport2 reader,
    Scope scope,
    int token,
  ) {
    assert(
      TokenType.fromToken(token) == TokenType.interfaceImpl,
      'Token $token is not an interface implementation token',
    );

    return using((arena) {
      final ptkClass = arena<mdTypeDef>();
      final ptkIface = arena<mdToken>();

      reader.getInterfaceImplProps(token, ptkClass, ptkIface);

      final classToken = ptkClass.value;
      final interfaceToken = ptkIface.value;
      final class_ = TypeDef.fromToken(scope, classToken);
      final interface = TypeDef.fromToken(scope, interfaceToken);
      _class = class_;
      _interface = interface;
      return (class_: class_, interface: interface);
    });
  }
}
