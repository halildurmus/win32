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

class MsftDiscMaster2 extends Struct {}

class MsftDiscRecorder2 extends Struct {}

class MsftWriteEngine2 extends Struct {}

class MsftDiscFormat2Erase extends Struct {}

class MsftDiscFormat2Data extends Struct {}

class MsftDiscFormat2TrackAtOnce extends Struct {}

class MsftDiscFormat2RawCD extends Struct {}

class MsftStreamZero extends Struct {}

class MsftStreamPrng001 extends Struct {}

class MsftStreamConcatenate extends Struct {}

class MsftStreamInterleave extends Struct {}

class MsftWriteSpeedDescriptor extends Struct {}

class MsftMultisessionSequential extends Struct {}

class MsftMultisessionRandomWrite extends Struct {}

class MsftRawCDImageCreator extends Struct {}

class BootOptions extends Struct {}

class FsiStream extends Struct {}

class FileSystemImageResult extends Struct {}

class ProgressItem extends Struct {}

class EnumProgressItems extends Struct {}

class ProgressItems extends Struct {}

class FsiDirectoryItem extends Struct {}

class FsiFileItem extends Struct {}

class EnumFsiItems extends Struct {}

class FsiNamedStreams extends Struct {}

class MsftFileSystemImage extends Struct {}

class MsftIsoImageManager extends Struct {}

class BlockRange extends Struct {}

class BlockRangeList extends Struct {}

class MSDiscRecorderObj extends Struct {}

class MSDiscMasterObj extends Struct {}

class MSEnumDiscRecordersObj extends Struct {}
