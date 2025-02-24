import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../generic_param.dart';
import '../token_object.dart';
import '../type_aliases.dart';
import '../win32/win32.dart';

/// Represents an object that contains generic parameters.
mixin GenericParamsMixin on TokenObject {
  /// Returns a list of generic parameters on this object.
  List<GenericParam> get genericParams {
    final params = <GenericParam>[];

    using((arena) {
      final phEnum = arena<HCORENUM>();
      final rGenericParams = arena<ULONG>();
      final pcGenericParams = arena<ULONG>();
      while (true) {
        try {
          reader.enumGenericParams(
            phEnum,
            token,
            rGenericParams,
            1,
            pcGenericParams,
          );
          if (pcGenericParams.value == 0) break;
          final genericParamToken = rGenericParams.value;
          params.add(GenericParam.fromToken(scope, genericParamToken));
        } on WindowsException {
          break;
        }
      }
      reader.closeEnum(phEnum.value);
    });

    return params;
  }
}
