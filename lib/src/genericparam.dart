import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'base.dart';
import 'com/constants.dart';
import 'enums.dart';
import 'genericparamconstraint.dart';
import 'method.dart';
import 'mixins/customattributes_mixin.dart';
import 'scope.dart';
import 'type_aliases.dart';
import 'typedef.dart';
import 'utils/exception.dart';

/// Indicates the kind of variance for a delegate / interface generic parameter.
enum Variance { nonvariant, covariant, contravariant }

/// Identifies special constraints on a generic parameter.
class SpecialConstraints {
  final int _attributes;

  const SpecialConstraints(this._attributes);

  bool get noConstraints =>
      _attributes == CorGenericParamAttr.gpNoSpecialConstraint;

  bool get referenceType =>
      _attributes & CorGenericParamAttr.gpReferenceTypeConstraint ==
      CorGenericParamAttr.gpReferenceTypeConstraint;

  bool get notNullable =>
      _attributes & CorGenericParamAttr.gpNotNullableValueTypeConstraint ==
      CorGenericParamAttr.gpNotNullableValueTypeConstraint;

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

  GenericParam(Scope scope, int token, this.sequence, this._attributes,
      this._parentToken, this.name)
      : super(scope, token);

  /// Creates a generic parameter object from a provided token.
  factory GenericParam.fromToken(Scope scope, int token) {
    final pulParamSeq = calloc<ULONG>();
    final pdwParamFlags = calloc<DWORD>();
    final ptOwner = calloc<mdToken>();
    final reserved = calloc<DWORD>();
    final wzName = wsalloc(MAX_STRING_SIZE);
    final pchName = calloc<ULONG>();

    try {
      final reader = scope.reader;
      final hr = reader.GetGenericParamProps(token, pulParamSeq, pdwParamFlags,
          ptOwner, reserved, wzName, MAX_STRING_SIZE, pchName);

      if (SUCCEEDED(hr)) {
        return GenericParam(scope, token, pulParamSeq.value,
            pdwParamFlags.value, ptOwner.value, wzName.toDartString());
      } else {
        throw WindowsException(hr);
      }
    } finally {
      free(pulParamSeq);
      free(pdwParamFlags);
      free(ptOwner);
      free(reserved);
      free(wzName);
      free(pchName);
    }
  }

  @override
  String toString() => name;

  /// The object representing the owner of the parameter.
  ///
  /// The object is a [TokenObject], which may either be a [TypeDef] or a
  /// [Method]. You can use the [TokenObject.tokenType] property to identify the
  /// parent type.
  TokenObject get parent {
    if (tokenType == TokenType.TypeDef) {
      return TypeDef.fromToken(scope, _parentToken);
    }

    if (tokenType == TokenType.MethodDef) {
      return Method.fromToken(scope, _parentToken);
    }

    throw WinmdException('Unrecognized parent token.');
  }

  /// Returns the parameter variance.
  Variance get variance {
    switch (_attributes & CorGenericParamAttr.gpVarianceMask) {
      case CorGenericParamAttr.gpNonVariant:
        return Variance.nonvariant;
      case CorGenericParamAttr.gpCovariant:
        return Variance.covariant;
      case CorGenericParamAttr.gpContravariant:
        return Variance.contravariant;
      default:
        throw WinmdException('Unrecognized variance type.');
    }
  }

  /// Returns a list of the constraints on the generic parameter.
  List<GenericParamConstraint> get constraints {
    if (_constraints.isEmpty) {
      final phEnum = calloc<HCORENUM>();
      final rGenericParamConstraints = calloc<mdGenericParam>();
      final pcGenericParamConstraints = calloc<ULONG>();

      try {
        var hr = reader.EnumGenericParamConstraints(phEnum, token,
            rGenericParamConstraints, 1, pcGenericParamConstraints);
        while (hr == S_OK) {
          final gpcToken = rGenericParamConstraints.value;

          _constraints.add(GenericParamConstraint.fromToken(scope, gpcToken));
          hr = reader.EnumGenericParamConstraints(phEnum, token,
              rGenericParamConstraints, 1, pcGenericParamConstraints);
        }
      } finally {
        reader.CloseEnum(phEnum.value);
        free(phEnum);
        free(rGenericParamConstraints);
        free(pcGenericParamConstraints);
      }
    }
    return _constraints;
  }

  /// Returns special constraints that exist on a generic parameter.
  SpecialConstraints get specialConstraints => SpecialConstraints(
      _attributes & CorGenericParamAttr.gpSpecialConstraintMask);
}
