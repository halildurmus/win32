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
import '../../security/networkaccessprotection/structs.g.dart';

/// {@category Struct}
class CorrelationId extends Struct {
  external GUID connId;

  external FILETIME timeStamp;
}

/// {@category Struct}
class CountedString extends Struct {
  @Uint16()
  external int length;

  external Pointer<Utf16> string;
}

/// {@category Struct}
class FailureCategoryMapping extends Struct {
  @Array(5)
  external Array<Int32> mappingCompliance;
}

/// {@category Struct}
class FixupInfo extends Struct {
  @Int32()
  external int state;

  @Uint8()
  external int percentage;

  external ResultCodes resultCodes;

  @Uint32()
  external int fixupMsgId;
}

/// {@category Struct}
class Ipv4Address extends Struct {
  @Array(4)
  external Array<Uint8> addr;
}

/// {@category Struct}
class Ipv6Address extends Struct {
  @Array(16)
  external Array<Uint8> addr;
}

/// {@category Struct}
class IsolationInfo extends Struct {
  @Int32()
  external int isolationState;

  external FILETIME probEndTime;

  external CountedString failureUrl;
}

/// {@category Struct}
class IsolationInfoEx extends Struct {
  @Int32()
  external int isolationState;

  @Int32()
  external int extendedIsolationState;

  external FILETIME probEndTime;

  external CountedString failureUrl;
}

/// {@category Struct}
class NapComponentRegistrationInfo extends Struct {
  @Uint32()
  external int id;

  external CountedString friendlyName;

  external CountedString description;

  external CountedString version;

  external CountedString vendorName;

  external GUID infoClsid;

  external GUID configClsid;

  external FILETIME registrationDate;

  @Uint32()
  external int componentType;
}

/// {@category Struct}
class NetworkSoH extends Struct {
  @Uint16()
  external int size;

  external Pointer<Uint8> data;
}

/// {@category Struct}
class PrivateData extends Struct {
  @Uint16()
  external int size;

  external Pointer<Uint8> data;
}

/// {@category Struct}
class ResultCodes extends Struct {
  @Uint16()
  external int count;

  external Pointer<Int32> results;
}

/// {@category Struct}
class SoH extends Struct {
  @Uint16()
  external int count;

  external Pointer<SoHAttribute> attributes;
}

/// {@category Struct}
class SoHAttribute extends Struct {
  @Uint16()
  external int type;

  @Uint16()
  external int size;

  external Pointer<Uint8> value;
}

/// {@category Struct}
class SystemHealthAgentState extends Struct {
  @Uint32()
  external int id;

  external ResultCodes shaResultCodes;

  @Int32()
  external int failureCategory;

  external FixupInfo fixupInfo;
}
