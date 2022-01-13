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

const SI_EDIT_PERMS = 0x0;
const SI_EDIT_OWNER = 0x1;
const SI_CONTAINER = 0x4;
const SI_READONLY = 0x8;
const SI_RESET = 0x20;
const SI_OWNER_READONLY = 0x40;
const SI_OWNER_RECURSE = 0x100;
const SI_NO_ACL_PROTECT = 0x200;
const SI_NO_TREE_APPLY = 0x400;
const SI_PAGE_TITLE = 0x800;
const SI_SERVER_IS_DC = 0x1000;
const SI_RESET_DACL_TREE = 0x4000;
const SI_RESET_SACL_TREE = 0x8000;
const SI_OBJECT_GUID = 0x10000;
const SI_ACCESS_SPECIFIC = 0x10000;
const SI_ACCESS_GENERAL = 0x20000;
const SI_ACCESS_CONTAINER = 0x40000;
const SI_ACCESS_PROPERTY = 0x80000;
const DOBJ_RES_CONT = 0x1;
const DOBJ_RES_ROOT = 0x2;
const DOBJ_VOL_NTACLS = 0x4;
const DOBJ_COND_NTACLS = 0x8;
const DOBJ_RIBBON_LAUNCH = 0x10;
const SECURITY_OBJECT_ID_OBJECT_SD = 0x1;
const SECURITY_OBJECT_ID_SHARE = 0x2;
const SECURITY_OBJECT_ID_CENTRAL_POLICY = 0x3;
const SECURITY_OBJECT_ID_CENTRAL_ACCESS_RULE = 0x4;
