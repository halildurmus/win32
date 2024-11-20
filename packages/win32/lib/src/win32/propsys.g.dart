// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../allocator.dart';
import '../bstr.dart';
import '../com/interface.g.dart';
import '../com/iunknown.g.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../exception.dart';
import '../extensions/pointer.dart';
import '../hresult.dart';
import '../hstring.dart';
import '../macros.dart';
import '../ntstatus.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../propvariant.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';

/// Extracts the string property value of a PROPVARIANT structure.
///
/// If no value exists, then the specified default value is returned.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/propvarutil/nf-propvarutil-propvarianttostringwithdefault>.
///
/// {@category propsys}
@pragma('vm:prefer-inline')
PCWSTR PropVariantToStringWithDefault(
  Pointer<PROPVARIANT> propvarIn,
  PCWSTR? pszDefault,
) => _PropVariantToStringWithDefault(propvarIn, pszDefault ?? nullptr);

@Native<PCWSTR Function(Pointer<PROPVARIANT>, PCWSTR)>(
  symbol: 'PropVariantToStringWithDefault',
)
external PCWSTR _PropVariantToStringWithDefault(
  Pointer<PROPVARIANT> propvarIn,
  PCWSTR pszDefault,
);

/// Extracts a string from a PROPVARIANT structure and places it into a STRRET
/// structure.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/propvarutil/nf-propvarutil-propvarianttostrret>.
///
/// {@category propsys}
Pointer<STRRET> PropVariantToStrRet(Pointer<PROPVARIANT> propvar) {
  final pstrret = loggingCalloc<STRRET>();
  final hr$ = HRESULT(_PropVariantToStrRet(propvar, pstrret));
  if (hr$.isError) {
    free(pstrret);
    throw WindowsException(hr$);
  }
  return pstrret;
}

@Native<Int32 Function(Pointer<PROPVARIANT>, Pointer<STRRET>)>(
  symbol: 'PropVariantToStrRet',
)
external int _PropVariantToStrRet(
  Pointer<PROPVARIANT> propvar,
  Pointer<STRRET> pstrret,
);
