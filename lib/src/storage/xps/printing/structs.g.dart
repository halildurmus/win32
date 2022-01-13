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
import '../../../combase.dart';
import '../../../guid.dart';
import '../../../storage/xps/printing/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// {@category Struct}
class PrintDocumentPackageStatus extends Struct {
  @Uint32()
  external int JobId;

  @Int32()
  external int CurrentDocument;

  @Int32()
  external int CurrentPage;

  @Int32()
  external int CurrentPageTotal;

  @Int32()
  external int Completion;

  @Int32()
  external int PackageStatus;
}

/// {@category Struct}
class XPS_JOB_STATUS extends Struct {
  @Uint32()
  external int jobId;

  @Int32()
  external int currentDocument;

  @Int32()
  external int currentPage;

  @Int32()
  external int currentPageTotal;

  @Int32()
  external int completion;

  @Int32()
  external int jobStatus;
}
