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

const NETSH_ERROR_BASE = 0x3a98;
const ERROR_NO_ENTRIES = 0x3a98;
const ERROR_INVALID_SYNTAX = 0x3a99;
const ERROR_PROTOCOL_NOT_IN_TRANSPORT = 0x3a9a;
const ERROR_NO_CHANGE = 0x3a9b;
const ERROR_CMD_NOT_FOUND = 0x3a9c;
const ERROR_ENTRY_PT_NOT_FOUND = 0x3a9d;
const ERROR_DLL_LOAD_FAILED = 0x3a9e;
const ERROR_INIT_DISPLAY = 0x3a9f;
const ERROR_TAG_ALREADY_PRESENT = 0x3aa0;
const ERROR_INVALID_OPTION_TAG = 0x3aa1;
const ERROR_NO_TAG = 0x3aa2;
const ERROR_MISSING_OPTION = 0x3aa3;
const ERROR_TRANSPORT_NOT_PRESENT = 0x3aa4;
const ERROR_SHOW_USAGE = 0x3aa5;
const ERROR_INVALID_OPTION_VALUE = 0x3aa6;
const ERROR_OKAY = 0x3aa7;
const ERROR_CONTINUE_IN_PARENT_CONTEXT = 0x3aa8;
const ERROR_SUPPRESS_OUTPUT = 0x3aa9;
const ERROR_HELPER_ALREADY_REGISTERED = 0x3aaa;
const ERROR_CONTEXT_ALREADY_REGISTERED = 0x3aab;
const ERROR_PARSING_FAILURE = 0x3aac;
const NETSH_ERROR_END = 0x3aab;
const MAX_NAME_LEN = 0x30;
const NETSH_VERSION_50 = 0x5000;
const NETSH_MAX_TOKEN_LENGTH = 0x40;
const NETSH_MAX_CMD_TOKEN_LENGTH = 0x80;
const DEFAULT_CONTEXT_PRIORITY = 0x64;
