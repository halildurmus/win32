// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'generic_param.dart';
import 'mixins/custom_attributes_mixin.dart';
import 'models/models.dart';
import 'scope.dart';
import 'token_object.dart';
import 'type_aliases.dart';
import 'type_def.dart';

/// A generic parameter constraint.
///
/// Each generic parameter can be constrained to derive from zero or one
/// classes, or to implement zero or more interfaces. This class implements a
/// single constraint. Generic constraints are described in §II.22.21 of the
/// ECMA-335 spec.
class GenericParamConstraint extends TokenObject with CustomAttributesMixin {
  GenericParamConstraint(
    super.scope,
    super.token,
    this._parentToken,
    this._constraintType,
  );

  final int _constraintType;
  final int _parentToken;

  /// Creates a generic parameter constraint object from a provided token.
  factory GenericParamConstraint.fromToken(Scope scope, int token) {
    assert(TokenType.fromToken(token) == TokenType.genericParamConstraint);

    return using((Arena arena) {
      final ptGenericParam = arena<mdGenericParam>();
      final ptkConstraintType = arena<mdToken>();

      final reader = scope.reader;
      final hr = reader.getGenericParamConstraintProps(
          token, ptGenericParam, ptkConstraintType);
      if (FAILED(hr)) throw WindowsException(hr);

      return GenericParamConstraint(
          scope, token, ptGenericParam.value, ptkConstraintType.value);
    });
  }

  /// The generic parameter that is constrained by this object.
  GenericParam get parent => GenericParam.fromToken(scope, _parentToken);

  /// The type of the constraint.
  ///
  /// For example, `class Foo<T> where T : System.Enum` has a constraintType
  /// that matches System.Enum).
  TypeDef get constraintType => TypeDef.fromToken(scope, _constraintType);
}
