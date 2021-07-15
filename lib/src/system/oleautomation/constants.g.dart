// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// -----------------------------------------------------------------------------
// Linter exceptions
// -----------------------------------------------------------------------------
// ignore_for_file: camel_case_types
// ignore_for_file: camel_case_extensions
//
// Why? The linter defaults to throw a warning for types not named as camel
// case. We deliberately break this convention to match the Win32 underlying
// types.
//
//
// ignore_for_file: unused_field
//
// Why? The linter complains about unused fields (e.g. a class that contains
// underscore-prefixed members that are not used in the library. In this class,
// we use this feature to ensure that sizeOf<STRUCT_NAME> returns a size at
// least as large as the underlying native struct. See, for example,
// ENUMLOGFONTEX.
//
//
// ignore_for_file: unnecessary_getters_setters
//
// Why? In structs like VARIANT, we're using getters and setters to project the
// same underlying data property to various union types. The trivial overhead is
// outweighed by readability.
//
//
// ignore_for_file: unused_import
//
// Why? We speculatively include some imports that we might generate a
// requirement for.
// -----------------------------------------------------------------------------

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';

const FADF_AUTO = 0x1;
const FADF_STATIC = 0x2;
const FADF_EMBEDDED = 0x4;
const FADF_FIXEDSIZE = 0x10;
const FADF_RECORD = 0x20;
const FADF_HAVEIID = 0x40;
const FADF_HAVEVARTYPE = 0x80;
const FADF_BSTR = 0x100;
const FADF_UNKNOWN = 0x200;
const FADF_DISPATCH = 0x400;
const FADF_VARIANT = 0x800;
const FADF_RESERVED = 0xf008;
const PARAMFLAG_NONE = 0x0;
const PARAMFLAG_FIN = 0x1;
const PARAMFLAG_FOUT = 0x2;
const PARAMFLAG_FLCID = 0x4;
const PARAMFLAG_FRETVAL = 0x8;
const PARAMFLAG_FOPT = 0x10;
const PARAMFLAG_FHASDEFAULT = 0x20;
const PARAMFLAG_FHASCUSTDATA = 0x40;
const IMPLTYPEFLAG_FDEFAULT = 0x1;
const IMPLTYPEFLAG_FSOURCE = 0x2;
const IMPLTYPEFLAG_FRESTRICTED = 0x4;
const IMPLTYPEFLAG_FDEFAULTVTABLE = 0x8;
const DISPID_UNKNOWN = 0xffffffff;
const DISPID_VALUE = 0x0;
const DISPID_PROPERTYPUT = 0xfffffffd;
const DISPID_NEWENUM = 0xfffffffc;
const DISPID_EVALUATE = 0xfffffffb;
const DISPID_CONSTRUCTOR = 0xfffffffa;
const DISPID_DESTRUCTOR = 0xfffffff9;
const DISPID_COLLECT = 0xfffffff8;
const STDOLE_MAJORVERNUM = 0x1;
const STDOLE_MINORVERNUM = 0x0;
const STDOLE_LCID = 0x0;
const STDOLE2_MAJORVERNUM = 0x2;
const STDOLE2_MINORVERNUM = 0x0;
const STDOLE2_LCID = 0x0;
const VARIANT_NOVALUEPROP = 0x1;
const VARIANT_ALPHABOOL = 0x2;
const VARIANT_NOUSEROVERRIDE = 0x4;
const VARIANT_CALENDAR_HIJRI = 0x8;
const VARIANT_LOCALBOOL = 0x10;
const VARIANT_CALENDAR_THAI = 0x20;
const VARIANT_CALENDAR_GREGORIAN = 0x40;
const VARIANT_USE_NLS = 0x80;
const LOCALE_USE_NLS = 0x10000000;
const VTDATEGRE_MAX = 0x2d2481;
const VTDATEGRE_MIN = 0xfff5f7e6;
const NUMPRS_LEADING_WHITE = 0x1;
const NUMPRS_TRAILING_WHITE = 0x2;
const NUMPRS_LEADING_PLUS = 0x4;
const NUMPRS_TRAILING_PLUS = 0x8;
const NUMPRS_LEADING_MINUS = 0x10;
const NUMPRS_TRAILING_MINUS = 0x20;
const NUMPRS_HEX_OCT = 0x40;
const NUMPRS_PARENS = 0x80;
const NUMPRS_DECIMAL = 0x100;
const NUMPRS_THOUSANDS = 0x200;
const NUMPRS_CURRENCY = 0x400;
const NUMPRS_EXPONENT = 0x800;
const NUMPRS_USE_ALL = 0x1000;
const NUMPRS_STD = 0x1fff;
const NUMPRS_NEG = 0x10000;
const NUMPRS_INEXACT = 0x20000;
const VARCMP_LT = 0x0;
const VARCMP_EQ = 0x1;
const VARCMP_GT = 0x2;
const VARCMP_NULL = 0x3;
const ID_DEFAULTINST = 0xfffffffe;
const DISPATCH_METHOD = 0x1;
const DISPATCH_PROPERTYGET = 0x2;
const DISPATCH_PROPERTYPUT = 0x4;
const DISPATCH_PROPERTYPUTREF = 0x8;
const LOAD_TLB_AS_32BIT = 0x20;
const LOAD_TLB_AS_64BIT = 0x40;
const ACTIVEOBJECT_STRONG = 0x0;
const ACTIVEOBJECT_WEAK = 0x1;
const SID_VariantConversion = 0x0;
const SID_GetCaller = 0x0;
const SID_ProvideRuntimeContext = 0x0;
const DISPATCH_CONSTRUCT = 0x4000;
const DISPID_THIS = 0xfffffd9b;
