// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// -----------------------------------------------------------------------------
// Linter exceptions
// -----------------------------------------------------------------------------
// ignore_for_file: camel_case_types ignore_for_file: camel_case_extensions
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

class GPM extends Struct {
}

class GPMDomain extends Struct {
}

class GPMSitesContainer extends Struct {
}

class GPMBackupDir extends Struct {
}

class GPMSOM extends Struct {
}

class GPMSearchCriteria extends Struct {
}

class GPMPermission extends Struct {
}

class GPMSecurityInfo extends Struct {
}

class GPMBackup extends Struct {
}

class GPMBackupCollection extends Struct {
}

class GPMSOMCollection extends Struct {
}

class GPMWMIFilter extends Struct {
}

class GPMWMIFilterCollection extends Struct {
}

class GPMRSOP extends Struct {
}

class GPMGPO extends Struct {
}

class GPMGPOCollection extends Struct {
}

class GPMGPOLink extends Struct {
}

class GPMGPOLinksCollection extends Struct {
}

class GPMAsyncCancel extends Struct {
}

class GPMStatusMsgCollection extends Struct {
}

class GPMStatusMessage extends Struct {
}

class GPMTrustee extends Struct {
}

class GPMClientSideExtension extends Struct {
}

class GPMCSECollection extends Struct {
}

class GPMConstants extends Struct {
}

class GPMResult extends Struct {
}

class GPMMapEntryCollection extends Struct {
}

class GPMMapEntry extends Struct {
}

class GPMMigrationTable extends Struct {
}

class GPMBackupDirEx extends Struct {
}

class GPMStarterGPOBackupCollection extends Struct {
}

class GPMStarterGPOBackup extends Struct {
}

class GPMTemplate extends Struct {
}

class GPMStarterGPOCollection extends Struct {
}

