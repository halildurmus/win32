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

class DataCollectorSet extends Struct {}

class TraceSession extends Struct {}

class TraceSessionCollection extends Struct {}

class TraceDataProvider extends Struct {}

class TraceDataProviderCollection extends Struct {}

class DataCollectorSetCollection extends Struct {}

class LegacyDataCollectorSet extends Struct {}

class LegacyDataCollectorSetCollection extends Struct {}

class LegacyTraceSession extends Struct {}

class LegacyTraceSessionCollection extends Struct {}

class ServerDataCollectorSet extends Struct {}

class ServerDataCollectorSetCollection extends Struct {}

class SystemDataCollectorSet extends Struct {}

class SystemDataCollectorSetCollection extends Struct {}

class BootTraceSession extends Struct {}

class BootTraceSessionCollection extends Struct {}
