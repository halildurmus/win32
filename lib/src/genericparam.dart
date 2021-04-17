import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'base.dart';
import 'com/IMetaDataImport2.dart';
import 'constants.dart';
import 'genericparamconstraint.dart';
import 'method.dart';
import 'mixins/customattributes_mixin.dart';
import 'type_aliases.dart';
import 'typedef.dart';
import 'utils.dart';

enum Variance { nonvariant, covariant, contravariant }

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

class GenericParam extends TokenObject with CustomAttributesMixin {
  final String paramName;
  final int paramSequence;

  final int _attributes;
  final _constraints = <GenericParamConstraint>[];
  final int _parentToken;

  GenericParam(IMetaDataImport2 reader, int token, this.paramSequence,
      this._attributes, this._parentToken, this.paramName)
      : super(reader, token);

  factory GenericParam.fromToken(IMetaDataImport2 reader, int token) {
    final pulParamSeq = calloc<ULONG>();
    final pdwParamFlags = calloc<DWORD>();
    final ptOwner = calloc<mdToken>();
    final reserved = calloc<DWORD>();
    final wzName = stralloc(MAX_STRING_SIZE);
    final pchName = calloc<ULONG>();

    try {
      final hr = reader.GetGenericParamProps(token, pulParamSeq, pdwParamFlags,
          ptOwner, reserved, wzName, MAX_STRING_SIZE, pchName);

      if (SUCCEEDED(hr)) {
        return GenericParam(reader, token, pulParamSeq.value,
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

  /// The object representing the owner of the parameter.
  ///
  /// The object is a [TokenObject], which may either be a [TypeDef] or a
  /// [Method]. You can use the [TokenObject.tokenType] property to identify the
  /// parent type.
  TokenObject get parent {
    if (tokenType == TokenType.TypeDef) {
      return TypeDef.fromToken(reader, _parentToken);
    }

    if (tokenType == TokenType.MethodDef) {
      return Method.fromToken(reader, _parentToken);
    }

    throw WinmdException('Unrecognized parent token.');
  }

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

          _constraints.add(GenericParamConstraint.fromToken(reader, gpcToken));
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

  SpecialConstraints get specialConstraints => SpecialConstraints(
      _attributes & CorGenericParamAttr.gpSpecialConstraintMask);
}
