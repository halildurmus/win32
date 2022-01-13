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
import '../../networkmanagement/snmp/structs.g.dart';

/// {@category Struct}
class AsnAny extends Struct {
  @Uint8()
  external int asnType;

  external _AsnAny__asnValue_e__Union asnValue;
}

/// {@category Struct}
class _AsnAny__asnValue_e__Union extends Union {
  @Int32()
  external int number;

  @Uint32()
  external int unsigned32;

  @Uint64()
  external int counter64;

  external AsnOctetString string;

  external AsnOctetString bits;

  external AsnObjectIdentifier object;

  external AsnOctetString sequence;

  external AsnOctetString address;

  @Uint32()
  external int counter;

  @Uint32()
  external int gauge;

  @Uint32()
  external int ticks;

  external AsnOctetString arbitrary;
}

extension AsnAny_Extension on AsnAny {
  int get number => this.asnValue.number;
  set number(int value) => this.asnValue.number = value;

  int get unsigned32 => this.asnValue.unsigned32;
  set unsigned32(int value) => this.asnValue.unsigned32 = value;

  int get counter64 => this.asnValue.counter64;
  set counter64(int value) => this.asnValue.counter64 = value;

  AsnOctetString get string => this.asnValue.string;
  set string(AsnOctetString value) => this.asnValue.string = value;

  AsnOctetString get bits => this.asnValue.bits;
  set bits(AsnOctetString value) => this.asnValue.bits = value;

  AsnObjectIdentifier get object => this.asnValue.object;
  set object(AsnObjectIdentifier value) => this.asnValue.object = value;

  AsnOctetString get sequence => this.asnValue.sequence;
  set sequence(AsnOctetString value) => this.asnValue.sequence = value;

  AsnOctetString get address => this.asnValue.address;
  set address(AsnOctetString value) => this.asnValue.address = value;

  int get counter => this.asnValue.counter;
  set counter(int value) => this.asnValue.counter = value;

  int get gauge => this.asnValue.gauge;
  set gauge(int value) => this.asnValue.gauge = value;

  int get ticks => this.asnValue.ticks;
  set ticks(int value) => this.asnValue.ticks = value;

  AsnOctetString get arbitrary => this.asnValue.arbitrary;
  set arbitrary(AsnOctetString value) => this.asnValue.arbitrary = value;
}

/// {@category Struct}
@Packed(4)
class AsnObjectIdentifier extends Struct {
  @Uint32()
  external int idLength;

  external Pointer<Uint32> ids;
}

/// {@category Struct}
class AsnOctetString extends Struct {
  external Pointer<Uint8> stream;

  @Uint32()
  external int length;

  @Int32()
  external int dynamic;
}

/// {@category Struct}
class SnmpVarBind extends Struct {
  external AsnObjectIdentifier name;

  external AsnAny value;
}

/// {@category Struct}
@Packed(4)
class SnmpVarBindList extends Struct {
  external Pointer<SnmpVarBind> list;

  @Uint32()
  external int len;
}

/// {@category Struct}
class smiCNTR64 extends Struct {
  @Uint32()
  external int hipart;

  @Uint32()
  external int lopart;
}

/// {@category Struct}
class smiOCTETS extends Struct {
  @Uint32()
  external int len;

  external Pointer<Uint8> ptr;
}

/// {@category Struct}
class smiOID extends Struct {
  @Uint32()
  external int len;

  external Pointer<Uint32> ptr;
}

/// {@category Struct}
class smiVALUE extends Struct {
  @Uint32()
  external int syntax;

  external _smiVALUE__value_e__Union value;
}

/// {@category Struct}
class _smiVALUE__value_e__Union extends Union {
  @Int32()
  external int sNumber;

  @Uint32()
  external int uNumber;

  external smiCNTR64 hNumber;

  external smiOCTETS string;

  external smiOID oid;

  @Uint8()
  external int empty;
}

extension smiVALUE_Extension on smiVALUE {
  int get sNumber => this.value.sNumber;
  set sNumber(int value) => this.value.sNumber = value;

  int get uNumber => this.value.uNumber;
  set uNumber(int value) => this.value.uNumber = value;

  smiCNTR64 get hNumber => this.value.hNumber;
  set hNumber(smiCNTR64 value) => this.value.hNumber = value;

  smiOCTETS get string => this.value.string;
  set string(smiOCTETS value) => this.value.string = value;

  smiOID get oid => this.value.oid;
  set oid(smiOID value) => this.value.oid = value;

  int get empty => this.value.empty;
  set empty(int value) => this.value.empty = value;
}

/// {@category Struct}
class smiVENDORINFO extends Struct {
  @Array(64)
  external Array<Uint8> vendorName;

  @Array(64)
  external Array<Uint8> vendorContact;

  @Array(32)
  external Array<Uint8> vendorVersionId;

  @Array(32)
  external Array<Uint8> vendorVersionDate;

  @Uint32()
  external int vendorEnterprise;
}
