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
import '../../combase.dart';
import '../../guid.dart';
import '../../foundation/structs.g.dart';
import '../../system/updateassessment/structs.g.dart';

/// {@category Struct}
class OSUpdateAssessment extends Struct {
  @Int32()
  external int isEndOfSupport;

  external UpdateAssessment assessmentForCurrent;

  external UpdateAssessment assessmentForUpToDate;

  @Int32()
  external int securityStatus;

  external FILETIME assessmentTime;

  external FILETIME releaseInfoTime;

  external Pointer<Utf16> currentOSBuild;

  external FILETIME currentOSReleaseTime;

  external Pointer<Utf16> upToDateOSBuild;

  external FILETIME upToDateOSReleaseTime;
}

/// {@category Struct}
class UpdateAssessment extends Struct {
  @Int32()
  external int status;

  @Int32()
  external int impact;

  @Uint32()
  external int daysOutOfDate;
}
