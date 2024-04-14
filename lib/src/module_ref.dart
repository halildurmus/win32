// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'mixins/custom_attributes_mixin.dart';
import 'models/models.dart';
import 'scope.dart';
import 'token_object.dart';

/// A module reference.
class ModuleRef extends TokenObject with CustomAttributesMixin {
  ModuleRef(super.scope, super.token, this.name);

  final String name;

  /// Creates a module object from a provided token.
  factory ModuleRef.fromToken(Scope scope, int token) {
    assert(TokenType.fromToken(token) == TokenType.moduleRef);

    return using((Arena arena) {
      final szName = arena<WCHAR>(stringBufferSize).cast<Utf16>();
      final pchName = arena<ULONG>();

      final reader = scope.reader;
      final hr =
          reader.getModuleRefProps(token, szName, stringBufferSize, pchName);
      if (FAILED(hr)) throw WindowsException(hr);
      return ModuleRef(scope, token, szName.toDartString());
    });
  }

  @override
  String toString() => name;
}
