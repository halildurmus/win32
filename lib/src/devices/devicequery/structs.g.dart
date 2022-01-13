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
import '../../devices/devicequery/structs.g.dart';
import '../../devices/properties/structs.g.dart';
import '../../foundation/structs.g.dart';

/// {@category Struct}
class DEVPROP_FILTER_EXPRESSION extends Struct {
  @Uint32()
  external int Operator;

  external DEVPROPERTY Property;
}

/// {@category Struct}
class DEV_OBJECT extends Struct {
  @Int32()
  external int ObjectType;

  external Pointer<Utf16> pszObjectId;

  @Uint32()
  external int cPropertyCount;

  external Pointer<DEVPROPERTY> pProperties;
}

/// {@category Struct}
class DEV_QUERY_PARAMETER extends Struct {
  external DEVPROPKEY Key;

  @Uint32()
  external int Type;

  @Uint32()
  external int BufferSize;

  external Pointer Buffer;
}

/// {@category Struct}
class DEV_QUERY_RESULT_ACTION_DATA extends Struct {
  @Int32()
  external int Action;

  external _DEV_QUERY_RESULT_ACTION_DATA__DEV_QUERY_RESULT_UPDATE_PAYLOAD Data;
}

/// {@category Struct}
class _DEV_QUERY_RESULT_ACTION_DATA__DEV_QUERY_RESULT_UPDATE_PAYLOAD
    extends Union {
  @Int32()
  external int State;

  external DEV_OBJECT DeviceObject;
}

extension DEV_QUERY_RESULT_ACTION_DATA_Extension
    on DEV_QUERY_RESULT_ACTION_DATA {
  int get State => this.Data.State;
  set State(int value) => this.Data.State = value;

  DEV_OBJECT get DeviceObject => this.Data.DeviceObject;
  set DeviceObject(DEV_OBJECT value) => this.Data.DeviceObject = value;
}

/// {@category Struct}
class HDEVQUERY__ extends Struct {
  @Int32()
  external int unused;
}
