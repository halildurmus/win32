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
import '../../system/eventlog/structs.g.dart';
import '../../foundation/structs.g.dart';

/// {@category Struct}
class EVENTLOGRECORD extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int Reserved;

  @Uint32()
  external int RecordNumber;

  @Uint32()
  external int TimeGenerated;

  @Uint32()
  external int TimeWritten;

  @Uint32()
  external int EventID;

  @Uint16()
  external int EventType;

  @Uint16()
  external int NumStrings;

  @Uint16()
  external int EventCategory;

  @Uint16()
  external int ReservedFlags;

  @Uint32()
  external int ClosingRecordNumber;

  @Uint32()
  external int StringOffset;

  @Uint32()
  external int UserSidLength;

  @Uint32()
  external int UserSidOffset;

  @Uint32()
  external int DataLength;

  @Uint32()
  external int DataOffset;
}

/// {@category Struct}
class EVENTLOG_FULL_INFORMATION extends Struct {
  @Uint32()
  external int dwFull;
}

/// {@category Struct}
class EVENTSFORLOGFILE extends Struct {
  @Uint32()
  external int ulSize;

  @Array(256)
  external Array<Uint16> _szLogicalLogFile;

  String get szLogicalLogFile {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_szLogicalLogFile[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szLogicalLogFile(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _szLogicalLogFile[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int ulNumRecords;

  @Array(1)
  external Array<EVENTLOGRECORD> pEventLogRecords;
}

/// {@category Struct}
class EVT_RPC_LOGIN extends Struct {
  external Pointer<Utf16> Server;

  external Pointer<Utf16> User;

  external Pointer<Utf16> Domain;

  external Pointer<Utf16> Password;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class EVT_VARIANT extends Struct {
  external _EVT_VARIANT__Anonymous_e__Union Anonymous;

  @Uint32()
  external int Count;

  @Uint32()
  external int Type;
}

/// {@category Struct}
class _EVT_VARIANT__Anonymous_e__Union extends Union {
  @Int32()
  external int BooleanVal;

  @Int8()
  external int SByteVal;

  @Int16()
  external int Int16Val;

  @Int32()
  external int Int32Val;

  @Int64()
  external int Int64Val;

  @Uint8()
  external int ByteVal;

  @Uint16()
  external int UInt16Val;

  @Uint32()
  external int UInt32Val;

  @Uint64()
  external int UInt64Val;

  @Float()
  external double SingleVal;

  @Double()
  external double DoubleVal;

  @Uint64()
  external int FileTimeVal;

  external Pointer<SYSTEMTIME> SysTimeVal;

  external Pointer<GUID> GuidVal;

  external Pointer<Utf16> StringVal;

  external Pointer<Utf8> AnsiStringVal;

  external Pointer<Uint8> BinaryVal;

  @IntPtr()
  external int SidVal;

  @IntPtr()
  external int SizeTVal;

  external Pointer<Int32> BooleanArr;

  external Pointer<Int8> SByteArr;

  external Pointer<Int16> Int16Arr;

  external Pointer<Int32> Int32Arr;

  external Pointer<Int64> Int64Arr;

  external Pointer<Uint8> ByteArr;

  external Pointer<Uint16> UInt16Arr;

  external Pointer<Uint32> UInt32Arr;

  external Pointer<Uint64> UInt64Arr;

  external Pointer<Float> SingleArr;

  external Pointer<Double> DoubleArr;

  external Pointer<FILETIME> FileTimeArr;

  external Pointer<SYSTEMTIME> SysTimeArr;

  external Pointer<GUID> GuidArr;

  external Pointer<Pointer<Utf16>> StringArr;

  external Pointer<Pointer<Utf8>> AnsiStringArr;

  external Pointer<IntPtr> SidArr;

  external Pointer<IntPtr> SizeTArr;

  @IntPtr()
  external int EvtHandleVal;

  external Pointer<Utf16> XmlVal;

  external Pointer<Pointer<Utf16>> XmlValArr;
}

extension EVT_VARIANT_Extension on EVT_VARIANT {
  int get BooleanVal => this.Anonymous.BooleanVal;
  set BooleanVal(int value) => this.Anonymous.BooleanVal = value;

  int get SByteVal => this.Anonymous.SByteVal;
  set SByteVal(int value) => this.Anonymous.SByteVal = value;

  int get Int16Val => this.Anonymous.Int16Val;
  set Int16Val(int value) => this.Anonymous.Int16Val = value;

  int get Int32Val => this.Anonymous.Int32Val;
  set Int32Val(int value) => this.Anonymous.Int32Val = value;

  int get Int64Val => this.Anonymous.Int64Val;
  set Int64Val(int value) => this.Anonymous.Int64Val = value;

  int get ByteVal => this.Anonymous.ByteVal;
  set ByteVal(int value) => this.Anonymous.ByteVal = value;

  int get UInt16Val => this.Anonymous.UInt16Val;
  set UInt16Val(int value) => this.Anonymous.UInt16Val = value;

  int get UInt32Val => this.Anonymous.UInt32Val;
  set UInt32Val(int value) => this.Anonymous.UInt32Val = value;

  int get UInt64Val => this.Anonymous.UInt64Val;
  set UInt64Val(int value) => this.Anonymous.UInt64Val = value;

  double get SingleVal => this.Anonymous.SingleVal;
  set SingleVal(double value) => this.Anonymous.SingleVal = value;

  double get DoubleVal => this.Anonymous.DoubleVal;
  set DoubleVal(double value) => this.Anonymous.DoubleVal = value;

  int get FileTimeVal => this.Anonymous.FileTimeVal;
  set FileTimeVal(int value) => this.Anonymous.FileTimeVal = value;

  Pointer<SYSTEMTIME> get SysTimeVal => this.Anonymous.SysTimeVal;
  set SysTimeVal(Pointer<SYSTEMTIME> value) =>
      this.Anonymous.SysTimeVal = value;

  Pointer<GUID> get GuidVal => this.Anonymous.GuidVal;
  set GuidVal(Pointer<GUID> value) => this.Anonymous.GuidVal = value;

  Pointer<Utf16> get StringVal => this.Anonymous.StringVal;
  set StringVal(Pointer<Utf16> value) => this.Anonymous.StringVal = value;

  Pointer<Utf8> get AnsiStringVal => this.Anonymous.AnsiStringVal;
  set AnsiStringVal(Pointer<Utf8> value) =>
      this.Anonymous.AnsiStringVal = value;

  Pointer<Uint8> get BinaryVal => this.Anonymous.BinaryVal;
  set BinaryVal(Pointer<Uint8> value) => this.Anonymous.BinaryVal = value;

  int get SidVal => this.Anonymous.SidVal;
  set SidVal(int value) => this.Anonymous.SidVal = value;

  int get SizeTVal => this.Anonymous.SizeTVal;
  set SizeTVal(int value) => this.Anonymous.SizeTVal = value;

  Pointer<Int32> get BooleanArr => this.Anonymous.BooleanArr;
  set BooleanArr(Pointer<Int32> value) => this.Anonymous.BooleanArr = value;

  Pointer<Int8> get SByteArr => this.Anonymous.SByteArr;
  set SByteArr(Pointer<Int8> value) => this.Anonymous.SByteArr = value;

  Pointer<Int16> get Int16Arr => this.Anonymous.Int16Arr;
  set Int16Arr(Pointer<Int16> value) => this.Anonymous.Int16Arr = value;

  Pointer<Int32> get Int32Arr => this.Anonymous.Int32Arr;
  set Int32Arr(Pointer<Int32> value) => this.Anonymous.Int32Arr = value;

  Pointer<Int64> get Int64Arr => this.Anonymous.Int64Arr;
  set Int64Arr(Pointer<Int64> value) => this.Anonymous.Int64Arr = value;

  Pointer<Uint8> get ByteArr => this.Anonymous.ByteArr;
  set ByteArr(Pointer<Uint8> value) => this.Anonymous.ByteArr = value;

  Pointer<Uint16> get UInt16Arr => this.Anonymous.UInt16Arr;
  set UInt16Arr(Pointer<Uint16> value) => this.Anonymous.UInt16Arr = value;

  Pointer<Uint32> get UInt32Arr => this.Anonymous.UInt32Arr;
  set UInt32Arr(Pointer<Uint32> value) => this.Anonymous.UInt32Arr = value;

  Pointer<Uint64> get UInt64Arr => this.Anonymous.UInt64Arr;
  set UInt64Arr(Pointer<Uint64> value) => this.Anonymous.UInt64Arr = value;

  Pointer<Float> get SingleArr => this.Anonymous.SingleArr;
  set SingleArr(Pointer<Float> value) => this.Anonymous.SingleArr = value;

  Pointer<Double> get DoubleArr => this.Anonymous.DoubleArr;
  set DoubleArr(Pointer<Double> value) => this.Anonymous.DoubleArr = value;

  Pointer<FILETIME> get FileTimeArr => this.Anonymous.FileTimeArr;
  set FileTimeArr(Pointer<FILETIME> value) =>
      this.Anonymous.FileTimeArr = value;

  Pointer<SYSTEMTIME> get SysTimeArr => this.Anonymous.SysTimeArr;
  set SysTimeArr(Pointer<SYSTEMTIME> value) =>
      this.Anonymous.SysTimeArr = value;

  Pointer<GUID> get GuidArr => this.Anonymous.GuidArr;
  set GuidArr(Pointer<GUID> value) => this.Anonymous.GuidArr = value;

  Pointer<Pointer<Utf16>> get StringArr => this.Anonymous.StringArr;
  set StringArr(Pointer<Pointer<Utf16>> value) =>
      this.Anonymous.StringArr = value;

  Pointer<Pointer<Utf8>> get AnsiStringArr => this.Anonymous.AnsiStringArr;
  set AnsiStringArr(Pointer<Pointer<Utf8>> value) =>
      this.Anonymous.AnsiStringArr = value;

  Pointer<IntPtr> get SidArr => this.Anonymous.SidArr;
  set SidArr(Pointer<IntPtr> value) => this.Anonymous.SidArr = value;

  Pointer<IntPtr> get SizeTArr => this.Anonymous.SizeTArr;
  set SizeTArr(Pointer<IntPtr> value) => this.Anonymous.SizeTArr = value;

  int get EvtHandleVal => this.Anonymous.EvtHandleVal;
  set EvtHandleVal(int value) => this.Anonymous.EvtHandleVal = value;

  Pointer<Utf16> get XmlVal => this.Anonymous.XmlVal;
  set XmlVal(Pointer<Utf16> value) => this.Anonymous.XmlVal = value;

  Pointer<Pointer<Utf16>> get XmlValArr => this.Anonymous.XmlValArr;
  set XmlValArr(Pointer<Pointer<Utf16>> value) =>
      this.Anonymous.XmlValArr = value;
}
