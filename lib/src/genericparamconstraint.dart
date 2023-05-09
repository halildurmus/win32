import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'enums.dart';
import 'genericparam.dart';
import 'mixins/customattributes_mixin.dart';
import 'scope.dart';
import 'token_object.dart';
import 'type_aliases.dart';
import 'typedef.dart';

/// A generic parameter constraint.
///
/// Each generic parameter can be constrained to derive from zero or one
/// classes, or to implement zero or more interfaces. This class implements a
/// single constraint. Generic constraints are described in §II.22.21 of the
/// ECMA-335 spec.
class GenericParamConstraint extends TokenObject with CustomAttributesMixin {
  final int _constraintType;
  final int _parentToken;

  GenericParamConstraint(
      super.scope, super.token, this._parentToken, this._constraintType);

  /// Creates a generic parameter constraint object from a provided token.
  factory GenericParamConstraint.fromToken(Scope scope, int token) {
    assert(TokenType.fromToken(token) == TokenType.genericParamConstraint);

    return using((Arena arena) {
      final ptGenericParam = arena<mdGenericParam>();
      final ptkConstraintType = arena<mdToken>();

      final reader = scope.reader;
      final hr = reader.getGenericParamConstraintProps(
          token, ptGenericParam, ptkConstraintType);

      if (SUCCEEDED(hr)) {
        return GenericParamConstraint(
            scope, token, ptGenericParam.value, ptkConstraintType.value);
      } else {
        throw WindowsException(hr);
      }
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
