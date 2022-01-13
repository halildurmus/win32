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
import '../../combase.dart';
import '../../guid.dart';

/// {@category Struct}
@Packed(1)
class WCN_VALUE_TYPE_PRIMARY_DEVICE_TYPE extends Struct {
  @Uint16()
  external int Category;

  @Uint32()
  external int SubCategoryOUI;

  @Uint16()
  external int SubCategory;
}

/// {@category Struct}
class WCN_VENDOR_EXTENSION_SPEC extends Struct {
  @Uint32()
  external int VendorId;

  @Uint32()
  external int SubType;

  @Uint32()
  external int Index;

  @Uint32()
  external int Flags;
}
