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

class SdoMachine extends Struct {}

class RADIUS_ATTRIBUTE extends Struct {
  @Uint32()
  external int dwAttrType;
  @Uint32()
  external int fDataType;
  @Uint32()
  external int cbDataLength;
  @Uint32()
  external int Anonymous;
}

class RADIUS_VSA_FORMAT extends Struct {
  @Array(4)
  external Array<Uint8> VendorId;
  @Uint8()
  external int VendorType;
  @Uint8()
  external int VendorLength;
  @Array(1)
  external Array<Uint8> AttributeSpecific;
}

class RADIUS_ATTRIBUTE_ARRAY extends Struct {
  @Uint32()
  external int cbSize;
  @IntPtr()
  external int Add;
  external Pointer<
          Pointer<
              Pointer<
                  Pointer<
                      Pointer<
                          Pointer<
                              Pointer<
                                  Pointer<
                                      Pointer<Pointer<RADIUS_ATTRIBUTE>>>>>>>>>>
      AttributeAt;
  @IntPtr()
  external int GetSize;
  @IntPtr()
  external int InsertAt;
  @IntPtr()
  external int RemoveAt;
  @IntPtr()
  external int SetAt;
}

class RADIUS_EXTENSION_CONTROL_BLOCK extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int dwVersion;
  @Uint32()
  external int repPoint;
  @Uint32()
  external int rcRequestType;
  @Uint32()
  external int rcResponseType;
  @IntPtr()
  external int GetRequest;
  @IntPtr()
  external int GetResponse;
  @IntPtr()
  external int SetResponseType;
}
