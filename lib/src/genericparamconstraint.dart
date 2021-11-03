import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'base.dart';
import 'genericparam.dart';
import 'mixins/customattributes_mixin.dart';
import 'scope.dart';
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
      Scope scope, int token, this._parentToken, this._constraintType)
      : super(scope, token);

  /// Creates a generic parameter constraint object from a provided token.
  factory GenericParamConstraint.fromToken(Scope scope, int token) =>
      using((Arena arena) {
        final ptGenericParam = arena<mdGenericParam>();
        final ptkConstraintType = arena<mdToken>();

        final reader = scope.reader;
        final hr = reader.GetGenericParamConstraintProps(
            token, ptGenericParam, ptkConstraintType);

        if (SUCCEEDED(hr)) {
          return GenericParamConstraint(
              scope, token, ptGenericParam.value, ptkConstraintType.value);
        } else {
          throw WindowsException(hr);
        }
      });

  /// The generic parameter that is constrained by this object.
  GenericParam get parent => GenericParam.fromToken(scope, _parentToken);

  /// The type of the constraint.
  ///
  /// For example, `class Foo<T> where T : System.Enum` has a constraintType
  /// that matches System.Enum).
  TypeDef get constraintType => TypeDef.fromToken(scope, _constraintType);
}
