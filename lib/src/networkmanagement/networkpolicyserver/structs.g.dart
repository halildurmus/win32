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
import '../../networkmanagement/networkpolicyserver/structs.g.dart';

/// {@category Struct}
class RADIUS_ATTRIBUTE extends Struct {
  @Uint32()
  external int dwAttrType;

  @Int32()
  external int fDataType;

  @Uint32()
  external int cbDataLength;

  external _RADIUS_ATTRIBUTE__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _RADIUS_ATTRIBUTE__Anonymous_e__Union extends Union {
  @Uint32()
  external int dwValue;

  external Pointer<Uint8> lpValue;
}

extension RADIUS_ATTRIBUTE_Extension on RADIUS_ATTRIBUTE {
  int get dwValue => this.Anonymous.dwValue;
  set dwValue(int value) => this.Anonymous.dwValue = value;

  Pointer<Uint8> get lpValue => this.Anonymous.lpValue;
  set lpValue(Pointer<Uint8> value) => this.Anonymous.lpValue = value;
}

/// {@category Struct}
class RADIUS_ATTRIBUTE_ARRAY extends Struct {
  @Uint32()
  external int cbSize;

  @IntPtr()
  external int Add;

  external Pointer<
          Pointer<
              Pointer<
                  Pointer<
                      Pointer<
                          Pointer<
                              Pointer<
                                  Pointer<
                                      Pointer<Pointer<RADIUS_ATTRIBUTE>>>>>>>>>>
      AttributeAt;

  @IntPtr()
  external int GetSize;

  @IntPtr()
  external int InsertAt;

  @IntPtr()
  external int RemoveAt;

  @IntPtr()
  external int SetAt;
}

/// {@category Struct}
class RADIUS_EXTENSION_CONTROL_BLOCK extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwVersion;

  @Int32()
  external int repPoint;

  @Int32()
  external int rcRequestType;

  @Int32()
  external int rcResponseType;

  @IntPtr()
  external int GetRequest;

  @IntPtr()
  external int GetResponse;

  @IntPtr()
  external int SetResponseType;
}

/// {@category Struct}
class RADIUS_VSA_FORMAT extends Struct {
  @Array(4)
  external Array<Uint8> VendorId;

  @Uint8()
  external int VendorType;

  @Uint8()
  external int VendorLength;

  @Array(1)
  external Array<Uint8> AttributeSpecific;
}
