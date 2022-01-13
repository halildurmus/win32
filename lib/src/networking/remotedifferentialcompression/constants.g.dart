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

const RDCE_TABLE_FULL = 0x80040001;
const RDCE_TABLE_CORRUPT = 0x80040002;
const MSRDC_SIGNATURE_HASHSIZE = 0x10;
const SimilarityFileIdMinSize = 0x4;
const SimilarityFileIdMaxSize = 0x20;
const MSRDC_VERSION = 0x10000;
const MSRDC_MINIMUM_COMPATIBLE_APP_VERSION = 0x10000;
const MSRDC_MINIMUM_DEPTH = 0x1;
const MSRDC_MAXIMUM_DEPTH = 0x8;
const MSRDC_MINIMUM_COMPAREBUFFER = 0x186a0;
const MSRDC_MAXIMUM_COMPAREBUFFER = 0x40000000;
const MSRDC_DEFAULT_COMPAREBUFFER = 0x30d400;
const MSRDC_MINIMUM_INPUTBUFFERSIZE = 0x400;
const MSRDC_MINIMUM_HORIZONSIZE = 0x80;
const MSRDC_MAXIMUM_HORIZONSIZE = 0x4000;
const MSRDC_MINIMUM_HASHWINDOWSIZE = 0x2;
const MSRDC_MAXIMUM_HASHWINDOWSIZE = 0x60;
const MSRDC_DEFAULT_HASHWINDOWSIZE_1 = 0x30;
const MSRDC_DEFAULT_HORIZONSIZE_1 = 0x400;
const MSRDC_DEFAULT_HASHWINDOWSIZE_N = 0x2;
const MSRDC_DEFAULT_HORIZONSIZE_N = 0x80;
const MSRDC_MAXIMUM_TRAITVALUE = 0x3f;
const MSRDC_MINIMUM_MATCHESREQUIRED = 0x1;
const MSRDC_MAXIMUM_MATCHESREQUIRED = 0x10;
