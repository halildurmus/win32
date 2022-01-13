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
import '../../networkmanagement/mobilebroadband/structs.g.dart';
import '../../foundation/structs.g.dart';

/// {@category Struct}
class MBN_CONTEXT extends Struct {
  @Uint32()
  external int contextID;

  @Int32()
  external int contextType;

  external Pointer<Utf16> accessString;

  external Pointer<Utf16> userName;

  external Pointer<Utf16> password;

  @Int32()
  external int compression;

  @Int32()
  external int authType;
}

/// {@category Struct}
class MBN_DEVICE_SERVICE extends Struct {
  external Pointer<Utf16> deviceServiceID;

  @Int16()
  external int dataWriteSupported;

  @Int16()
  external int dataReadSupported;
}

/// {@category Struct}
class MBN_INTERFACE_CAPS extends Struct {
  @Int32()
  external int cellularClass;

  @Int32()
  external int voiceClass;

  @Uint32()
  external int dataClass;

  external Pointer<Utf16> customDataClass;

  @Uint32()
  external int gsmBandClass;

  @Uint32()
  external int cdmaBandClass;

  external Pointer<Utf16> customBandClass;

  @Uint32()
  external int smsCaps;

  @Uint32()
  external int controlCaps;

  external Pointer<Utf16> deviceID;

  external Pointer<Utf16> manufacturer;

  external Pointer<Utf16> model;

  external Pointer<Utf16> firmwareInfo;
}

/// {@category Struct}
class MBN_PIN_INFO extends Struct {
  @Int32()
  external int pinState;

  @Int32()
  external int pinType;

  @Uint32()
  external int attemptsRemaining;
}

/// {@category Struct}
class MBN_PROVIDER extends Struct {
  external Pointer<Utf16> providerID;

  @Uint32()
  external int providerState;

  external Pointer<Utf16> providerName;

  @Uint32()
  external int dataClass;
}

/// {@category Struct}
class MBN_PROVIDER2 extends Struct {
  external MBN_PROVIDER provider;

  @Int32()
  external int cellularClass;

  @Uint32()
  external int signalStrength;

  @Uint32()
  external int signalError;
}

/// {@category Struct}
class MBN_SMS_FILTER extends Struct {
  @Int32()
  external int flag;

  @Uint32()
  external int messageIndex;
}

/// {@category Struct}
class MBN_SMS_STATUS_INFO extends Struct {
  @Uint32()
  external int flag;

  @Uint32()
  external int messageIndex;
}

/// {@category Struct}
class DummyPinType__ extends Struct {
  @Uint32()
  external int pinType;
}

/// {@category Struct}
class mbnapi_ReferenceRemainingTypes__ extends Struct {
  @Int32()
  external int bandClass;

  @Int32()
  external int contextConstants;

  @Int32()
  external int ctrlCaps;

  @Int32()
  external int dataClass;

  @Int32()
  external int interfaceCapsConstants;

  @Int32()
  external int pinConstants;

  @Int32()
  external int providerConstants;

  @Int32()
  external int providerState;

  @Int32()
  external int registrationConstants;

  @Int32()
  external int signalConstants;

  @Int32()
  external int smsCaps;

  @Int32()
  external int smsConstants;

  @Int32()
  external int wwaextSmsConstants;

  @Int32()
  external int smsStatusFlag;
}
