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

const FIND_RESOURCE_DIRECTORY_TYPES = 0x100;
const FIND_RESOURCE_DIRECTORY_NAMES = 0x200;
const FIND_RESOURCE_DIRECTORY_LANGUAGES = 0x400;
const RESOURCE_ENUM_LN = 0x1;
const RESOURCE_ENUM_MUI = 0x2;
const RESOURCE_ENUM_MUI_SYSTEM = 0x4;
const RESOURCE_ENUM_VALIDATE = 0x8;
const RESOURCE_ENUM_MODULE_EXACT = 0x10;
const SUPPORT_LANG_NUMBER = 0x20;
const GET_MODULE_HANDLE_EX_FLAG_PIN = 0x1;
const GET_MODULE_HANDLE_EX_FLAG_UNCHANGED_REFCOUNT = 0x2;
const GET_MODULE_HANDLE_EX_FLAG_FROM_ADDRESS = 0x4;
const CURRENT_IMPORT_REDIRECTION_VERSION = 0x1;
const LOAD_LIBRARY_OS_INTEGRITY_CONTINUITY = 0x8000;
