import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'mixins/custom_attributes_mixin.dart';
import 'models/models.dart';
import 'scope.dart';
import 'token_object.dart';
import 'win32/win32.dart';

/// A module reference.
class ModuleRef extends TokenObject with CustomAttributesMixin {
  ModuleRef(super.scope, super.token, this.name);

  /// Creates a module object from a provided token.
  factory ModuleRef.fromToken(Scope scope, int token) {
    assert(
      TokenType.fromToken(token) == TokenType.moduleRef,
      'Token $token is not a ModuleRef token',
    );

    return using((arena) {
      final szName = arena<WCHAR>(stringBufferSize).cast<Utf16>();
      final pchName = arena<ULONG>();
      scope.reader.getModuleRefProps(token, szName, stringBufferSize, pchName);
      return ModuleRef(scope, token, szName.toDartString());
    });
  }

  /// The name of the module.
  final String name;

  @override
  String toString() => name;
}
