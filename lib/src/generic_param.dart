// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'generic_param_constraint.dart';
import 'method.dart';
import 'mixins/custom_attributes_mixin.dart';
import 'models/models.dart';
import 'scope.dart';
import 'token_object.dart';
import 'type_aliases.dart';
import 'type_def.dart';

/// Identifies special constraints on a generic parameter.
class SpecialConstraints {
  const SpecialConstraints(this._attributes);

  final int _attributes;

  /// Indicates that no constraint applies to the Type parameter.
  bool get noConstraints =>
      _attributes == CorGenericParamAttr.gpNoSpecialConstraint;

  /// Indicates that the Type parameter must be a reference type.
  bool get referenceType =>
      _attributes & CorGenericParamAttr.gpReferenceTypeConstraint ==
      CorGenericParamAttr.gpReferenceTypeConstraint;

  /// Indicates that the Type parameter must be a value type that cannot be a
  /// null value.
  bool get notNullable =>
      _attributes & CorGenericParamAttr.gpNotNullableValueTypeConstraint ==
      CorGenericParamAttr.gpNotNullableValueTypeConstraint;

  /// Indicates that the Type parameter must have a default public constructor
  /// that takes no parameters.
  bool get defaultConstructor =>
      _attributes & CorGenericParamAttr.gpDefaultConstructorConstraint ==
      CorGenericParamAttr.gpDefaultConstructorConstraint;
}

/// A generic parameter.
///
/// Generic parameters belong to [Method]s or [TypeDef]s and contain
/// [GenericParamConstraint]s.
class GenericParam extends TokenObject with CustomAttributesMixin {
  final String name;
  final int sequence;

  final int _attributes;
  final _constraints = <GenericParamConstraint>[];
  final int _parentToken;

  GenericParam(super.scope, super.token, this.sequence, this._attributes,
      this._parentToken, this.name);

  /// Creates a generic parameter object from a provided token.
  factory GenericParam.fromToken(Scope scope, int token) {
    assert(TokenType.fromToken(token) == TokenType.genericParam);

    return using((Arena arena) {
      final pulParamSeq = arena<ULONG>();
      final pdwParamFlags = arena<DWORD>();
      final ptOwner = arena<mdToken>();
      final reserved = arena<DWORD>();
      final wzName = arena<WCHAR>(stringBufferSize).cast<Utf16>();
      final pchName = arena<ULONG>();

      final reader = scope.reader;
      final hr = reader.getGenericParamProps(token, pulParamSeq, pdwParamFlags,
          ptOwner, reserved, wzName, stringBufferSize, pchName);
      if (FAILED(hr)) throw WindowsException(hr);

      return GenericParam(scope, token, pulParamSeq.value, pdwParamFlags.value,
          ptOwner.value, wzName.toDartString());
    });
  }

  @override
  String toString() => name;

  /// The object representing the owner of the parameter.
  ///
  /// The object is a [TokenObject], which may either be a [TypeDef] or a
  /// [Method]. You can use the [TokenObject.tokenType] property to identify the
  /// parent type.
  TokenObject get parent => switch (TokenType.fromToken(_parentToken)) {
        TokenType.typeDef => TypeDef.fromToken(scope, _parentToken),
        TokenType.methodDef => Method.fromToken(scope, _parentToken),
        _ => throw const WinmdException('Unrecognized parent token.'),
      };

  /// Returns the parameter variance.
  Variance get variance =>
      switch (_attributes & CorGenericParamAttr.gpVarianceMask) {
        CorGenericParamAttr.gpNonVariant => Variance.nonvariant,
        CorGenericParamAttr.gpCovariant => Variance.covariant,
        CorGenericParamAttr.gpContravariant => Variance.contravariant,
        _ => throw const WinmdException('Unrecognized variance type.')
      };

  /// Returns a list of the constraints on the generic parameter.
  List<GenericParamConstraint> get constraints {
    if (_constraints.isNotEmpty) return _constraints;

    using((Arena arena) {
      final phEnum = arena<HCORENUM>();
      final rGenericParamConstraints = arena<mdGenericParam>();
      final pcGenericParamConstraints = arena<ULONG>();

      var hr = reader.enumGenericParamConstraints(phEnum, token,
          rGenericParamConstraints, 1, pcGenericParamConstraints);
      while (hr == S_OK) {
        final gpcToken = rGenericParamConstraints.value;
        final constraint = GenericParamConstraint.fromToken(scope, gpcToken);
        _constraints.add(constraint);
        hr = reader.enumGenericParamConstraints(phEnum, token,
            rGenericParamConstraints, 1, pcGenericParamConstraints);
      }
      reader.closeEnum(phEnum.value);
    });

    return _constraints;
  }

  /// Returns special constraints that exist on a generic parameter.
  SpecialConstraints get specialConstraints => SpecialConstraints(
      _attributes & CorGenericParamAttr.gpSpecialConstraintMask);
}
