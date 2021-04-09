import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import '../base.dart';
import '../genericparam.dart';
import '../win32.dart';

mixin GenericParamsMixin on TokenObject {
  List<GenericParam> get genericParams {
    final params = <GenericParam>[];

    final phEnum = calloc<HCORENUM>();
    final rGenericParams = calloc<ULONG>();
    final pcGenericParams = calloc<ULONG>();

    try {
      var hr = reader.EnumGenericParams(
          phEnum, token, rGenericParams, 1, pcGenericParams);
      while (hr == S_OK) {
        final token = rGenericParams.value;

        params.add(GenericParam.fromToken(reader, token));
        hr = reader.EnumGenericParams(
            phEnum, token, rGenericParams, 1, pcGenericParams);
      }
      return params;
    } finally {
      reader.CloseEnum(phEnum.value);
      free(phEnum);
      free(rGenericParams);
      free(pcGenericParams);
    }
  }
}
