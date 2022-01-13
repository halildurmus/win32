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
import '../../networkmanagement/networkdiagnosticsframework/structs.g.dart';

/// {@category Struct}
class DIAG_SOCKADDR extends Struct {
  @Uint16()
  external int family;

  @Array(126)
  external Array<Uint8> data;
}

/// {@category Struct}
class DiagnosticsInfo extends Struct {
  @Int32()
  external int cost;

  @Uint32()
  external int flags;
}

/// {@category Struct}
class HELPER_ATTRIBUTE extends Struct {
  external Pointer<Utf16> pwszName;

  @Int32()
  external int type;

  external _HELPER_ATTRIBUTE__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _HELPER_ATTRIBUTE__Anonymous_e__Union extends Union {
  @Int32()
  external int Boolean;

  @Uint8()
  external int Char;

  @Uint8()
  external int Byte;

  @Int16()
  external int Short;

  @Uint16()
  external int Word;

  @Int32()
  external int Int;

  @Uint32()
  external int DWord;

  @Int64()
  external int $Int64;

  @Uint64()
  external int UInt64;

  external Pointer<Utf16> PWStr;

  external GUID Guid;

  external LIFE_TIME LifeTime;

  external DIAG_SOCKADDR Address;

  external OCTET_STRING OctetString;
}

extension HELPER_ATTRIBUTE_Extension on HELPER_ATTRIBUTE {
  int get Boolean => this.Anonymous.Boolean;
  set Boolean(int value) => this.Anonymous.Boolean = value;

  int get Char => this.Anonymous.Char;
  set Char(int value) => this.Anonymous.Char = value;

  int get Byte => this.Anonymous.Byte;
  set Byte(int value) => this.Anonymous.Byte = value;

  int get Short => this.Anonymous.Short;
  set Short(int value) => this.Anonymous.Short = value;

  int get Word => this.Anonymous.Word;
  set Word(int value) => this.Anonymous.Word = value;

  int get Int => this.Anonymous.Int;
  set Int(int value) => this.Anonymous.Int = value;

  int get DWord => this.Anonymous.DWord;
  set DWord(int value) => this.Anonymous.DWord = value;

  int get $Int64 => this.Anonymous.$Int64;
  set $Int64(int value) => this.Anonymous.$Int64 = value;

  int get UInt64 => this.Anonymous.UInt64;
  set UInt64(int value) => this.Anonymous.UInt64 = value;

  Pointer<Utf16> get PWStr => this.Anonymous.PWStr;
  set PWStr(Pointer<Utf16> value) => this.Anonymous.PWStr = value;

  GUID get Guid => this.Anonymous.Guid;
  set Guid(GUID value) => this.Anonymous.Guid = value;

  LIFE_TIME get LifeTime => this.Anonymous.LifeTime;
  set LifeTime(LIFE_TIME value) => this.Anonymous.LifeTime = value;

  DIAG_SOCKADDR get Address => this.Anonymous.Address;
  set Address(DIAG_SOCKADDR value) => this.Anonymous.Address = value;

  OCTET_STRING get OctetString => this.Anonymous.OctetString;
  set OctetString(OCTET_STRING value) => this.Anonymous.OctetString = value;
}

/// {@category Struct}
class HYPOTHESIS extends Struct {
  external Pointer<Utf16> pwszClassName;

  external Pointer<Utf16> pwszDescription;

  @Uint32()
  external int celt;

  external Pointer<HELPER_ATTRIBUTE> rgAttributes;
}

/// {@category Struct}
class HelperAttributeInfo extends Struct {
  external Pointer<Utf16> pwszName;

  @Int32()
  external int type;
}

/// {@category Struct}
class HypothesisResult extends Struct {
  external HYPOTHESIS hypothesis;

  @Int32()
  external int pathStatus;
}

/// {@category Struct}
class LIFE_TIME extends Struct {
  external FILETIME startTime;

  external FILETIME endTime;
}

/// {@category Struct}
class OCTET_STRING extends Struct {
  @Uint32()
  external int dwLength;

  external Pointer<Uint8> lpValue;
}

/// {@category Struct}
class RepairInfo extends Struct {
  external GUID guid;

  external Pointer<Utf16> pwszClassName;

  external Pointer<Utf16> pwszDescription;

  @Uint32()
  external int sidType;

  @Int32()
  external int cost;

  @Uint32()
  external int flags;

  @Int32()
  external int scope;

  @Int32()
  external int risk;

  external UiInfo $UiInfo;

  @Int32()
  external int rootCauseIndex;
}

/// {@category Struct}
class RepairInfoEx extends Struct {
  external RepairInfo repair;

  @Uint16()
  external int repairRank;
}

/// {@category Struct}
class RootCauseInfo extends Struct {
  external Pointer<Utf16> pwszDescription;

  external GUID rootCauseID;

  @Uint32()
  external int rootCauseFlags;

  external GUID networkInterfaceID;

  external Pointer<RepairInfoEx> pRepairs;

  @Uint16()
  external int repairCount;
}

/// {@category Struct}
class ShellCommandInfo extends Struct {
  external Pointer<Utf16> pwszOperation;

  external Pointer<Utf16> pwszFile;

  external Pointer<Utf16> pwszParameters;

  external Pointer<Utf16> pwszDirectory;

  @Uint32()
  external int nShowCmd;
}

/// {@category Struct}
class UiInfo extends Struct {
  @Int32()
  external int type;

  external _UiInfo__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _UiInfo__Anonymous_e__Union extends Union {
  external Pointer<Utf16> pwzNull;

  external ShellCommandInfo ShellInfo;

  external Pointer<Utf16> pwzHelpUrl;

  external Pointer<Utf16> pwzDui;
}

extension UiInfo_Extension on UiInfo {
  Pointer<Utf16> get pwzNull => this.Anonymous.pwzNull;
  set pwzNull(Pointer<Utf16> value) => this.Anonymous.pwzNull = value;

  ShellCommandInfo get ShellInfo => this.Anonymous.ShellInfo;
  set ShellInfo(ShellCommandInfo value) => this.Anonymous.ShellInfo = value;

  Pointer<Utf16> get pwzHelpUrl => this.Anonymous.pwzHelpUrl;
  set pwzHelpUrl(Pointer<Utf16> value) => this.Anonymous.pwzHelpUrl = value;

  Pointer<Utf16> get pwzDui => this.Anonymous.pwzDui;
  set pwzDui(Pointer<Utf16> value) => this.Anonymous.pwzDui = value;
}
