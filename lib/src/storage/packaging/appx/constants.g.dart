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

const PACKAGE_PROPERTY_FRAMEWORK = 0x1;
const PACKAGE_PROPERTY_RESOURCE = 0x2;
const PACKAGE_PROPERTY_BUNDLE = 0x4;
const PACKAGE_PROPERTY_OPTIONAL = 0x8;
const PACKAGE_FILTER_HEAD = 0x10;
const PACKAGE_FILTER_DIRECT = 0x20;
const PACKAGE_FILTER_RESOURCE = 0x40;
const PACKAGE_FILTER_BUNDLE = 0x80;
const PACKAGE_INFORMATION_BASIC = 0x0;
const PACKAGE_INFORMATION_FULL = 0x100;
const PACKAGE_PROPERTY_DEVELOPMENT_MODE = 0x10000;
const PACKAGE_FILTER_OPTIONAL = 0x20000;
const PACKAGE_PROPERTY_IS_IN_RELATED_SET = 0x40000;
const PACKAGE_FILTER_IS_IN_RELATED_SET = 0x40000;
const PACKAGE_PROPERTY_STATIC = 0x80000;
const PACKAGE_FILTER_STATIC = 0x80000;
const PACKAGE_PROPERTY_DYNAMIC = 0x100000;
const PACKAGE_FILTER_DYNAMIC = 0x100000;
const PACKAGE_PROPERTY_HOSTRUNTIME = 0x200000;
const PACKAGE_FILTER_HOSTRUNTIME = 0x200000;
const PACKAGE_FILTER_ALL_LOADED = 0x0;
const PACKAGE_DEPENDENCY_RANK_DEFAULT = 0x0;
