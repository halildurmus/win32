// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, non_constant_identifier_names
// ignore_for_file: constant_identifier_names, camel_case_types
// ignore_for_file: specify_nonobvious_property_types

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../callbacks.dart';
import '../combase.dart';
import '../guid.dart';
import '../structs.g.dart';
import '../variant.dart';

final _propsys = DynamicLibrary.open('propsys.dll');

/// Extracts the string property value of a PROPVARIANT structure. If no
/// value exists, then the specified default value is returned.
///
/// ```c
/// PWSTR PropVariantToStringWithDefault(
///    [in] REFPROPVARIANT propvarIn,
///    [in] LPCWSTR        pszDefault
/// );
/// ```
/// {@category propsys}
Pointer<Utf16> PropVariantToStringWithDefault(
  Pointer<PROPVARIANT> propvarIn,
  Pointer<Utf16> pszDefault,
) => _PropVariantToStringWithDefault(propvarIn, pszDefault);

final _PropVariantToStringWithDefault = _propsys
    .lookupFunction<
      Pointer<Utf16> Function(
        Pointer<PROPVARIANT> propvarIn,
        Pointer<Utf16> pszDefault,
      ),
      Pointer<Utf16> Function(
        Pointer<PROPVARIANT> propvarIn,
        Pointer<Utf16> pszDefault,
      )
    >('PropVariantToStringWithDefault');

/// Extracts a string from a PROPVARIANT structure and places it into a
/// STRRET structure.
///
/// ```c
/// HRESULT PropVariantToStrRet(
///    [in]  REFPROPVARIANT propvar,
///    [out] STRRET         *pstrret
/// );
/// ```
/// {@category propsys}
int PropVariantToStrRet(
  Pointer<PROPVARIANT> propvar,
  Pointer<STRRET> pstrret,
) => _PropVariantToStrRet(propvar, pstrret);

final _PropVariantToStrRet = _propsys
    .lookupFunction<
      Int32 Function(Pointer<PROPVARIANT> propvar, Pointer<STRRET> pstrret),
      int Function(Pointer<PROPVARIANT> propvar, Pointer<STRRET> pstrret)
    >('PropVariantToStrRet');
