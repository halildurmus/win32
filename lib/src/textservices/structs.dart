// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// -----------------------------------------------------------------------------
// Linter exceptions
// -----------------------------------------------------------------------------
// ignore_for_file: camel_case_types ignore_for_file: camel_case_extensions
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

class HKL extends Struct {
  @IntPtr() external int Value;
}

class TS_STATUS extends Struct {
  @Uint32() external int dwDynamicFlags;
  @Uint32() external int dwStaticFlags;
}

class TS_TEXTCHANGE extends Struct {
  @Int32() external int acpStart;
  @Int32() external int acpOldEnd;
  @Int32() external int acpNewEnd;
}

class TS_SELECTIONSTYLE extends Struct {
  @Uint32() external int ase;
  @Int32() external int fInterimChar;
}

class TS_SELECTION_ACP extends Struct {
  @Int32() external int acpStart;
  @Int32() external int acpEnd;
  external TS_SELECTIONSTYLE style;
}

class TS_SELECTION_ANCHOR extends Struct {
  external Pointer paStart;
  external Pointer paEnd;
  external TS_SELECTIONSTYLE style;
}

class TS_ATTRVAL extends Struct {
  external GUID idAttr;
  @Uint32() external int dwOverlapId;
  external VARIANT varValue;
}

class TS_RUNINFO extends Struct {
  @Uint32() external int uCount;
  @Uint32() external int type;
}

class TF_LANGBARITEMINFO extends Struct {
  external GUID clsidService;
  external GUID guidItem;
  @Uint32() external int dwStyle;
  @Uint32() external int ulSort;
  external __ushort__ szDescription;
}

class TF_LBBALLOONINFO extends Struct {
  @Uint32() external int style;
  external Pointer<Utf16> bstrText;
}

class TF_PERSISTENT_PROPERTY_HEADER_ACP extends Struct {
  external GUID guidType;
  @Int32() external int ichStart;
  @Int32() external int cch;
  @Uint32() external int cb;
  @Uint32() external int dwPrivate;
  external GUID clsidTIP;
}

class TF_LANGUAGEPROFILE extends Struct {
  external GUID clsid;
  @Uint16() external int langid;
  external GUID catid;
  @Int32() external int fActive;
  external GUID guidProfile;
}

class TF_SELECTIONSTYLE extends Struct {
  @Uint32() external int ase;
  @Int32() external int fInterimChar;
}

class TF_SELECTION extends Struct {
  external Pointer range;
  external TF_SELECTIONSTYLE style;
}

class TF_PROPERTYVAL extends Struct {
  external GUID guidId;
  external VARIANT varValue;
}

class TF_HALTCOND extends Struct {
  external Pointer pHaltRange;
  @Uint32() external int aHaltPos;
  @Uint32() external int dwFlags;
}

class TF_INPUTPROCESSORPROFILE extends Struct {
  @Uint32() external int dwProfileType;
  @Uint16() external int langid;
  external GUID clsid;
  external GUID guidProfile;
  external GUID catid;
  @IntPtr() external int hklSubstitute;
  @Uint32() external int dwCaps;
  @IntPtr() external int hkl;
  @Uint32() external int dwFlags;
}

class TF_PRESERVEDKEY extends Struct {
  @Uint32() external int uVKey;
  @Uint32() external int uModifiers;
}

class TF_DA_COLOR extends Struct {
  @Uint32() external int type;
  @Uint32() external int Anonymous;
}

class TF_DISPLAYATTRIBUTE extends Struct {
  external TF_DA_COLOR crText;
  external TF_DA_COLOR crBk;
  @Uint32() external int lsStyle;
  @Int32() external int fBoldLine;
  external TF_DA_COLOR crLine;
  @Uint32() external int bAttr;
}

class TF_LMLATTELEMENT extends Struct {
  @Uint32() external int dwFrameStart;
  @Uint32() external int dwFrameLen;
  @Uint32() external int dwFlags;
  @Uint32() external int Anonymous;
  external Pointer<Utf16> bstrText;
}

