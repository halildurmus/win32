import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'mixins/mixins.dart';
import 'models/models.dart';
import 'scope.dart';
import 'token_object.dart';
import 'type_aliases.dart';
import 'type_def.dart';

/// Records the interfaces a type implements explicitly.
class InterfaceImpl extends TokenObject with CustomAttributesMixin {
  InterfaceImpl(super.scope, super.token)
      : _classInterfacePair =
            processInterfaceImplToken(scope.reader, scope, token);

  final ({TypeDef class_, TypeDef interface}) _classInterfacePair;

  TypeDef get class_ => _classInterfacePair.class_;

  TypeDef get interface => _classInterfacePair.interface;

  /// Whether the [interface] is the `default` interface for the [class_].
  bool get isDefault =>
      existsAttribute('Windows.Foundation.Metadata.DefaultAttribute');

  /// Converts an interface implementation token (0x09) into a tuple of [class_]
  /// and [interface].
  static ({TypeDef class_, TypeDef interface}) processInterfaceImplToken(
    IMetaDataImport2 reader,
    Scope scope,
    int token,
  ) {
    assert(TokenType.fromToken(token) == TokenType.interfaceImpl);

    return using((Arena arena) {
      final ptkClass = arena<mdTypeDef>();
      final ptkIface = arena<mdToken>();

      final hr = reader.getInterfaceImplProps(token, ptkClass, ptkIface);
      if (FAILED(hr)) throw WindowsException(hr);

      final classToken = ptkClass.value;
      final interfaceToken = ptkIface.value;
      return (
        class_: TypeDef.fromToken(scope, classToken),
        interface: TypeDef.fromToken(scope, interfaceToken)
      );
    });
  }
}
