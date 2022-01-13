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

const SAFER_SCOPEID_MACHINE = 0x1;
const SAFER_SCOPEID_USER = 0x2;
const SAFER_LEVELID_FULLYTRUSTED = 0x40000;
const SAFER_LEVELID_NORMALUSER = 0x20000;
const SAFER_LEVELID_CONSTRAINED = 0x10000;
const SAFER_LEVELID_UNTRUSTED = 0x1000;
const SAFER_LEVELID_DISALLOWED = 0x0;
const SAFER_LEVEL_OPEN = 0x1;
const SAFER_MAX_FRIENDLYNAME_SIZE = 0x100;
const SAFER_MAX_DESCRIPTION_SIZE = 0x100;
const SAFER_MAX_HASH_SIZE = 0x40;
const SAFER_CRITERIA_IMAGEPATH = 0x1;
const SAFER_CRITERIA_NOSIGNEDHASH = 0x2;
const SAFER_CRITERIA_IMAGEHASH = 0x4;
const SAFER_CRITERIA_AUTHENTICODE = 0x8;
const SAFER_CRITERIA_URLZONE = 0x10;
const SAFER_CRITERIA_APPX_PACKAGE = 0x20;
const SAFER_CRITERIA_IMAGEPATH_NT = 0x1000;
const SAFER_POLICY_JOBID_MASK = 0xff000000;
const SAFER_POLICY_JOBID_CONSTRAINED = 0x4000000;
const SAFER_POLICY_JOBID_UNTRUSTED = 0x3000000;
const SAFER_POLICY_ONLY_EXES = 0x10000;
const SAFER_POLICY_SANDBOX_INERT = 0x20000;
const SAFER_POLICY_HASH_DUPLICATE = 0x40000;
const SAFER_POLICY_ONLY_AUDIT = 0x1000;
const SAFER_POLICY_BLOCK_CLIENT_UI = 0x2000;
const SAFER_POLICY_UIFLAGS_MASK = 0xff;
const SAFER_POLICY_UIFLAGS_INFORMATION_PROMPT = 0x1;
const SAFER_POLICY_UIFLAGS_OPTION_PROMPT = 0x2;
const SAFER_POLICY_UIFLAGS_HIDDEN = 0x4;
