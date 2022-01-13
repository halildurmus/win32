// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import '../../../combase.dart';
import '../../../guid.dart';
import '../../../foundation/structs.g.dart';
import '../../../ui/shell/common/structs.g.dart';

/// {@category Struct}
class COMDLG_FILTERSPEC extends Struct {
  external Pointer<Utf16> pszName;

  external Pointer<Utf16> pszSpec;
}

/// {@category Struct}
@Packed(1)
class ITEMIDLIST extends Struct {
  external SHITEMID mkid;
}

/// {@category Struct}
class SHELLDETAILS extends Struct {
  @Int32()
  external int fmt;

  @Int32()
  external int cxChar;

  external STRRET str;
}

/// {@category Struct}
@Packed(1)
class SHITEMID extends Struct {
  @Uint16()
  external int cb;

  @Array(1)
  external Array<Uint8> abID;
}

/// {@category Struct}
class STRRET extends Struct {
  @Uint32()
  external int uType;

  external _STRRET__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _STRRET__Anonymous_e__Union extends Union {
  external Pointer<Utf16> pOleStr;

  @Uint32()
  external int uOffset;

  @Array(260)
  external Array<Uint8> cStr;
}

extension STRRET_Extension on STRRET {
  Pointer<Utf16> get pOleStr => this.Anonymous.pOleStr;
  set pOleStr(Pointer<Utf16> value) => this.Anonymous.pOleStr = value;

  int get uOffset => this.Anonymous.uOffset;
  set uOffset(int value) => this.Anonymous.uOffset = value;

  Array<Uint8> get cStr => this.Anonymous.cStr;
  set cStr(Array<Uint8> value) => this.Anonymous.cStr = value;
}
