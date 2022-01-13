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

const EC_VARIANT_TYPE_MASK = 0x7f;
const EC_VARIANT_TYPE_ARRAY = 0x80;
const EC_READ_ACCESS = 0x1;
const EC_WRITE_ACCESS = 0x2;
const EC_OPEN_ALWAYS = 0x0;
const EC_CREATE_NEW = 0x1;
const EC_OPEN_EXISTING = 0x2;
