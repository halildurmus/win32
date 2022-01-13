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
import '../../system/systemservices/structs.g.dart';
import '../../system/com/structs.g.dart';
import '../../security/structs.g.dart';
import '../../graphics/gdi/structs.g.dart';

/// {@category Struct}
class ANON_OBJECT_HEADER extends Struct {
  @Uint16()
  external int Sig1;

  @Uint16()
  external int Sig2;

  @Uint16()
  external int Version;

  @Uint16()
  external int Machine;

  @Uint32()
  external int TimeDateStamp;

  external GUID ClassID;

  @Uint32()
  external int SizeOfData;
}

/// {@category Struct}
class ANON_OBJECT_HEADER_BIGOBJ extends Struct {
  @Uint16()
  external int Sig1;

  @Uint16()
  external int Sig2;

  @Uint16()
  external int Version;

  @Uint16()
  external int Machine;

  @Uint32()
  external int TimeDateStamp;

  external GUID ClassID;

  @Uint32()
  external int SizeOfData;

  @Uint32()
  external int Flags;

  @Uint32()
  external int MetaDataSize;

  @Uint32()
  external int MetaDataOffset;

  @Uint32()
  external int NumberOfSections;

  @Uint32()
  external int PointerToSymbolTable;

  @Uint32()
  external int NumberOfSymbols;
}

/// {@category Struct}
class ANON_OBJECT_HEADER_V2 extends Struct {
  @Uint16()
  external int Sig1;

  @Uint16()
  external int Sig2;

  @Uint16()
  external int Version;

  @Uint16()
  external int Machine;

  @Uint32()
  external int TimeDateStamp;

  external GUID ClassID;

  @Uint32()
  external int SizeOfData;

  @Uint32()
  external int Flags;

  @Uint32()
  external int MetaDataSize;

  @Uint32()
  external int MetaDataOffset;
}

/// {@category Struct}
class APPLICATIONLAUNCH_SETTING_VALUE extends Struct {
  @Int64()
  external int ActivationTime;

  @Uint32()
  external int Flags;

  @Uint32()
  external int ButtonInstanceID;
}

/// {@category Struct}
class AtlThunkData_t extends Opaque {}

/// {@category Struct}
class COMPONENT_FILTER extends Struct {
  @Uint32()
  external int ComponentFlags;
}

/// {@category Struct}
class DEVICE_EVENT_BECOMING_READY extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Reason;

  @Uint32()
  external int Estimated100msToReady;
}

/// {@category Struct}
class DEVICE_EVENT_EXTERNAL_REQUEST extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int DeviceClass;

  @Uint16()
  external int ButtonStatus;

  @Uint16()
  external int Request;

  @Int64()
  external int SystemTime;
}

/// {@category Struct}
class DEVICE_EVENT_GENERIC_DATA extends Struct {
  @Uint32()
  external int EventNumber;
}

/// {@category Struct}
class DEVICE_EVENT_MOUNT extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Flags;

  @Uint32()
  external int FileSystemNameLength;

  @Uint32()
  external int FileSystemNameOffset;
}

/// {@category Struct}
class DEVICE_EVENT_RBC_DATA extends Struct {
  @Uint32()
  external int EventNumber;

  @Uint8()
  external int SenseQualifier;

  @Uint8()
  external int SenseCode;

  @Uint8()
  external int SenseKey;

  @Uint8()
  external int Reserved;

  @Uint32()
  external int Information;
}

/// {@category Struct}
class DEV_BROADCAST_DEVICEINTERFACE_ extends Struct {
  @Uint32()
  external int dbcc_size;

  @Uint32()
  external int dbcc_devicetype;

  @Uint32()
  external int dbcc_reserved;

  external GUID dbcc_classguid;

  @Array(1)
  external Array<Uint16> _dbcc_name;

  String get dbcc_name {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_dbcc_name[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set dbcc_name(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _dbcc_name[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class DEV_BROADCAST_DEVNODE extends Struct {
  @Uint32()
  external int dbcd_size;

  @Uint32()
  external int dbcd_devicetype;

  @Uint32()
  external int dbcd_reserved;

  @Uint32()
  external int dbcd_devnode;
}

/// {@category Struct}
class DEV_BROADCAST_HANDLE extends Struct {
  @Uint32()
  external int dbch_size;

  @Uint32()
  external int dbch_devicetype;

  @Uint32()
  external int dbch_reserved;

  @IntPtr()
  external int dbch_handle;

  external Pointer dbch_hdevnotify;

  external GUID dbch_eventguid;

  @Int32()
  external int dbch_nameoffset;

  @Array(1)
  external Array<Uint8> dbch_data;
}

/// {@category Struct}
class DEV_BROADCAST_HANDLE32 extends Struct {
  @Uint32()
  external int dbch_size;

  @Uint32()
  external int dbch_devicetype;

  @Uint32()
  external int dbch_reserved;

  @Uint32()
  external int dbch_handle;

  @Uint32()
  external int dbch_hdevnotify;

  external GUID dbch_eventguid;

  @Int32()
  external int dbch_nameoffset;

  @Array(1)
  external Array<Uint8> dbch_data;
}

/// {@category Struct}
class DEV_BROADCAST_HANDLE64 extends Struct {
  @Uint32()
  external int dbch_size;

  @Uint32()
  external int dbch_devicetype;

  @Uint32()
  external int dbch_reserved;

  @Uint64()
  external int dbch_handle;

  @Uint64()
  external int dbch_hdevnotify;

  external GUID dbch_eventguid;

  @Int32()
  external int dbch_nameoffset;

  @Array(1)
  external Array<Uint8> dbch_data;
}

/// {@category Struct}
class DEV_BROADCAST_HDR extends Struct {
  @Uint32()
  external int dbch_size;

  @Uint32()
  external int dbch_devicetype;

  @Uint32()
  external int dbch_reserved;
}

/// {@category Struct}
class DEV_BROADCAST_NET extends Struct {
  @Uint32()
  external int dbcn_size;

  @Uint32()
  external int dbcn_devicetype;

  @Uint32()
  external int dbcn_reserved;

  @Uint32()
  external int dbcn_resource;

  @Uint32()
  external int dbcn_flags;
}

/// {@category Struct}
class DEV_BROADCAST_OEM extends Struct {
  @Uint32()
  external int dbco_size;

  @Uint32()
  external int dbco_devicetype;

  @Uint32()
  external int dbco_reserved;

  @Uint32()
  external int dbco_identifier;

  @Uint32()
  external int dbco_suppfunc;
}

/// {@category Struct}
class DEV_BROADCAST_PORT_ extends Struct {
  @Uint32()
  external int dbcp_size;

  @Uint32()
  external int dbcp_devicetype;

  @Uint32()
  external int dbcp_reserved;

  @Array(1)
  external Array<Uint16> _dbcp_name;

  String get dbcp_name {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_dbcp_name[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set dbcp_name(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _dbcp_name[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class DEV_BROADCAST_VOLUME extends Struct {
  @Uint32()
  external int dbcv_size;

  @Uint32()
  external int dbcv_devicetype;

  @Uint32()
  external int dbcv_reserved;

  @Uint32()
  external int dbcv_unitmask;

  @Uint16()
  external int dbcv_flags;
}

/// {@category Struct}
class DISK_HEALTH_NOTIFICATION_DATA extends Struct {
  external GUID DeviceGuid;
}

/// {@category Struct}
class DISPATCHER_CONTEXT_NONVOLREG_ARM64 extends Union {
  @Array(152)
  external Array<Uint8> Buffer;

  external _DISPATCHER_CONTEXT_NONVOLREG_ARM64__Anonymous_e__Struct Anonymous;
}

/// {@category Struct}
class _DISPATCHER_CONTEXT_NONVOLREG_ARM64__Anonymous_e__Struct extends Struct {
  @Array(11)
  external Array<Uint64> GpNvRegs;

  @Array(8)
  external Array<Double> FpNvRegs;
}

extension DISPATCHER_CONTEXT_NONVOLREG_ARM64_Extension
    on DISPATCHER_CONTEXT_NONVOLREG_ARM64 {
  Array<Uint64> get GpNvRegs => this.Anonymous.GpNvRegs;
  set GpNvRegs(Array<Uint64> value) => this.Anonymous.GpNvRegs = value;

  Array<Double> get FpNvRegs => this.Anonymous.FpNvRegs;
  set FpNvRegs(Array<Double> value) => this.Anonymous.FpNvRegs = value;
}

/// {@category Struct}
class ENLISTMENT_BASIC_INFORMATION extends Struct {
  external GUID EnlistmentId;

  external GUID TransactionId;

  external GUID ResourceManagerId;
}

/// {@category Struct}
class ENLISTMENT_CRM_INFORMATION extends Struct {
  external GUID CrmTransactionManagerId;

  external GUID CrmResourceManagerId;

  external GUID CrmEnlistmentId;
}

/// {@category Struct}
class GDI_NONREMOTE extends Struct {
  @Int32()
  external int fContext;

  external _GDI_NONREMOTE__u_e__Struct u;
}

/// {@category Struct}
class _GDI_NONREMOTE__u_e__Struct extends Union {
  @Int32()
  external int hInproc;

  external Pointer<DWORD_BLOB> hRemote;
}

extension GDI_NONREMOTE_Extension on GDI_NONREMOTE {
  int get hInproc => this.u.hInproc;
  set hInproc(int value) => this.u.hInproc = value;

  Pointer<DWORD_BLOB> get hRemote => this.u.hRemote;
  set hRemote(Pointer<DWORD_BLOB> value) => this.u.hRemote = value;
}

/// {@category Struct}
class GUID_IO_DISK_CLONE_ARRIVAL_INFORMATION extends Struct {
  @Uint32()
  external int DiskNumber;
}

/// {@category Struct}
class HEAP_OPTIMIZE_RESOURCES_INFORMATION extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class HIBERFILE_BUCKET extends Struct {
  @Uint64()
  external int MaxPhysicalMemory;

  @Array(3)
  external Array<Uint32> PhysicalMemoryPercent;
}

/// {@category Struct}
@Packed(4)
class IMAGE_ALPHA64_RUNTIME_FUNCTION_ENTRY extends Struct {
  @Uint64()
  external int BeginAddress;

  @Uint64()
  external int EndAddress;

  @Uint64()
  external int ExceptionHandler;

  @Uint64()
  external int HandlerData;

  @Uint64()
  external int PrologEndAddress;
}

/// {@category Struct}
class IMAGE_ALPHA_RUNTIME_FUNCTION_ENTRY extends Struct {
  @Uint32()
  external int BeginAddress;

  @Uint32()
  external int EndAddress;

  @Uint32()
  external int ExceptionHandler;

  @Uint32()
  external int HandlerData;

  @Uint32()
  external int PrologEndAddress;
}

/// {@category Struct}
class IMAGE_ARCHITECTURE_ENTRY extends Struct {
  @Uint32()
  external int FixupInstRVA;

  @Uint32()
  external int NewInst;
}

/// {@category Struct}
class IMAGE_ARCHITECTURE_HEADER extends Struct {
  @Uint32()
  external int bitfield;

  @Uint32()
  external int FirstEntryRVA;
}

/// {@category Struct}
class IMAGE_ARCHIVE_MEMBER_HEADER extends Struct {
  @Array(16)
  external Array<Uint8> Name;

  @Array(12)
  external Array<Uint8> Date;

  @Array(6)
  external Array<Uint8> UserID;

  @Array(6)
  external Array<Uint8> GroupID;

  @Array(8)
  external Array<Uint8> Mode;

  @Array(10)
  external Array<Uint8> Size;

  @Array(2)
  external Array<Uint8> EndHeader;
}

/// {@category Struct}
class IMAGE_ARM64_RUNTIME_FUNCTION_ENTRY_XDATA extends Union {
  @Uint32()
  external int HeaderData;

  external _IMAGE_ARM64_RUNTIME_FUNCTION_ENTRY_XDATA__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _IMAGE_ARM64_RUNTIME_FUNCTION_ENTRY_XDATA__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension IMAGE_ARM64_RUNTIME_FUNCTION_ENTRY_XDATA_Extension
    on IMAGE_ARM64_RUNTIME_FUNCTION_ENTRY_XDATA {
  int get bitfield => this.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.bitfield = value;
}

/// {@category Struct}
class IMAGE_ARM_RUNTIME_FUNCTION_ENTRY extends Struct {
  @Uint32()
  external int BeginAddress;

  external _IMAGE_ARM_RUNTIME_FUNCTION_ENTRY__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _IMAGE_ARM_RUNTIME_FUNCTION_ENTRY__Anonymous_e__Union extends Union {
  @Uint32()
  external int UnwindData;

  external _IMAGE_ARM_RUNTIME_FUNCTION_ENTRY__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _IMAGE_ARM_RUNTIME_FUNCTION_ENTRY__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension IMAGE_ARM_RUNTIME_FUNCTION_ENTRY__Anonymous_e__Union_Extension
    on IMAGE_ARM_RUNTIME_FUNCTION_ENTRY {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension IMAGE_ARM_RUNTIME_FUNCTION_ENTRY_Extension
    on IMAGE_ARM_RUNTIME_FUNCTION_ENTRY {
  int get UnwindData => this.Anonymous.UnwindData;
  set UnwindData(int value) => this.Anonymous.UnwindData = value;

  _IMAGE_ARM_RUNTIME_FUNCTION_ENTRY__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _IMAGE_ARM_RUNTIME_FUNCTION_ENTRY__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category Struct}
class IMAGE_AUX_SYMBOL extends Union {
  external _IMAGE_AUX_SYMBOL__Sym_e__Struct Sym;

  external _IMAGE_AUX_SYMBOL__File_e__Struct File;

  external _IMAGE_AUX_SYMBOL__Section_e__Struct Section;

  external IMAGE_AUX_SYMBOL_TOKEN_DEF TokenDef;

  external _IMAGE_AUX_SYMBOL__CRC_e__Struct CRC;
}

/// {@category Struct}
class _IMAGE_AUX_SYMBOL__Sym_e__Struct extends Struct {
  @Uint32()
  external int TagIndex;

  external _IMAGE_AUX_SYMBOL__Sym_e__Struct__Misc_e__Union Misc;

  external _IMAGE_AUX_SYMBOL__Sym_e__Struct__FcnAry_e__Union FcnAry;

  @Uint16()
  external int TvIndex;
}

/// {@category Struct}
class _IMAGE_AUX_SYMBOL__Sym_e__Struct__Misc_e__Union extends Union {
  external _IMAGE_AUX_SYMBOL__Sym_e__Struct__Misc_e__Union__LnSz_e__Struct LnSz;

  @Uint32()
  external int TotalSize;
}

/// {@category Struct}
class _IMAGE_AUX_SYMBOL__Sym_e__Struct__Misc_e__Union__LnSz_e__Struct
    extends Struct {
  @Uint16()
  external int Linenumber;

  @Uint16()
  external int Size;
}

extension IMAGE_AUX_SYMBOL__Sym_e__Struct__Misc_e__Union_Extension
    on IMAGE_AUX_SYMBOL {
  int get Linenumber => this.Sym.Misc.LnSz.Linenumber;
  set Linenumber(int value) => this.Sym.Misc.LnSz.Linenumber = value;

  int get Size => this.Sym.Misc.LnSz.Size;
  set Size(int value) => this.Sym.Misc.LnSz.Size = value;
}

extension IMAGE_AUX_SYMBOL__Sym_e__Struct_Extension on IMAGE_AUX_SYMBOL {
  _IMAGE_AUX_SYMBOL__Sym_e__Struct__Misc_e__Union__LnSz_e__Struct get LnSz =>
      this.Sym.Misc.LnSz;
  set LnSz(
          _IMAGE_AUX_SYMBOL__Sym_e__Struct__Misc_e__Union__LnSz_e__Struct
              value) =>
      this.Sym.Misc.LnSz = value;

  int get TotalSize => this.Sym.Misc.TotalSize;
  set TotalSize(int value) => this.Sym.Misc.TotalSize = value;
}

/// {@category Struct}
class _IMAGE_AUX_SYMBOL__Sym_e__Struct__FcnAry_e__Union extends Union {
  external _IMAGE_AUX_SYMBOL__Sym_e__Struct__FcnAry_e__Union__Function_e__Struct
      Function;

  external _IMAGE_AUX_SYMBOL__Sym_e__Struct__FcnAry_e__Union__Array_e__Struct
      $Array;
}

/// {@category Struct}
@Packed(2)
class _IMAGE_AUX_SYMBOL__Sym_e__Struct__FcnAry_e__Union__Function_e__Struct
    extends Struct {
  @Uint32()
  external int PointerToLinenumber;

  @Uint32()
  external int PointerToNextFunction;
}

extension IMAGE_AUX_SYMBOL__Sym_e__Struct__FcnAry_e__Union_Extension
    on IMAGE_AUX_SYMBOL {
  int get PointerToLinenumber => this.Sym.FcnAry.Function.PointerToLinenumber;
  set PointerToLinenumber(int value) =>
      this.Sym.FcnAry.Function.PointerToLinenumber = value;

  int get PointerToNextFunction =>
      this.Sym.FcnAry.Function.PointerToNextFunction;
  set PointerToNextFunction(int value) =>
      this.Sym.FcnAry.Function.PointerToNextFunction = value;
}

/// {@category Struct}
class _IMAGE_AUX_SYMBOL__Sym_e__Struct__FcnAry_e__Union__Array_e__Struct
    extends Struct {
  @Array(4)
  external Array<Uint16> Dimension;
}

extension IMAGE_AUX_SYMBOL__Sym_e__Struct__FcnAry_e__Union_Extension_1
    on IMAGE_AUX_SYMBOL {
  Array<Uint16> get Dimension => this.Sym.FcnAry.$Array.Dimension;
  set Dimension(Array<Uint16> value) =>
      this.Sym.FcnAry.$Array.Dimension = value;
}

extension IMAGE_AUX_SYMBOL__Sym_e__Struct_Extension_1 on IMAGE_AUX_SYMBOL {
  _IMAGE_AUX_SYMBOL__Sym_e__Struct__FcnAry_e__Union__Function_e__Struct
      get Function => this.Sym.FcnAry.Function;
  set Function(
          _IMAGE_AUX_SYMBOL__Sym_e__Struct__FcnAry_e__Union__Function_e__Struct
              value) =>
      this.Sym.FcnAry.Function = value;

  _IMAGE_AUX_SYMBOL__Sym_e__Struct__FcnAry_e__Union__Array_e__Struct
      get $Array => this.Sym.FcnAry.$Array;
  set $Array(
          _IMAGE_AUX_SYMBOL__Sym_e__Struct__FcnAry_e__Union__Array_e__Struct
              value) =>
      this.Sym.FcnAry.$Array = value;
}

extension IMAGE_AUX_SYMBOL_Extension on IMAGE_AUX_SYMBOL {
  int get TagIndex => this.Sym.TagIndex;
  set TagIndex(int value) => this.Sym.TagIndex = value;

  _IMAGE_AUX_SYMBOL__Sym_e__Struct__Misc_e__Union get Misc => this.Sym.Misc;
  set Misc(_IMAGE_AUX_SYMBOL__Sym_e__Struct__Misc_e__Union value) =>
      this.Sym.Misc = value;

  _IMAGE_AUX_SYMBOL__Sym_e__Struct__FcnAry_e__Union get FcnAry =>
      this.Sym.FcnAry;
  set FcnAry(_IMAGE_AUX_SYMBOL__Sym_e__Struct__FcnAry_e__Union value) =>
      this.Sym.FcnAry = value;

  int get TvIndex => this.Sym.TvIndex;
  set TvIndex(int value) => this.Sym.TvIndex = value;
}

/// {@category Struct}
class _IMAGE_AUX_SYMBOL__File_e__Struct extends Struct {
  @Array(18)
  external Array<Uint8> Name;
}

extension IMAGE_AUX_SYMBOL_Extension_1 on IMAGE_AUX_SYMBOL {
  Array<Uint8> get Name => this.File.Name;
  set Name(Array<Uint8> value) => this.File.Name = value;
}

/// {@category Struct}
@Packed(2)
class _IMAGE_AUX_SYMBOL__Section_e__Struct extends Struct {
  @Uint32()
  external int Length;

  @Uint16()
  external int NumberOfRelocations;

  @Uint16()
  external int NumberOfLinenumbers;

  @Uint32()
  external int CheckSum;

  @Int16()
  external int Number;

  @Uint8()
  external int Selection;

  @Uint8()
  external int bReserved;

  @Int16()
  external int HighNumber;
}

extension IMAGE_AUX_SYMBOL_Extension_2 on IMAGE_AUX_SYMBOL {
  int get Length => this.Section.Length;
  set Length(int value) => this.Section.Length = value;

  int get NumberOfRelocations => this.Section.NumberOfRelocations;
  set NumberOfRelocations(int value) =>
      this.Section.NumberOfRelocations = value;

  int get NumberOfLinenumbers => this.Section.NumberOfLinenumbers;
  set NumberOfLinenumbers(int value) =>
      this.Section.NumberOfLinenumbers = value;

  int get CheckSum => this.Section.CheckSum;
  set CheckSum(int value) => this.Section.CheckSum = value;

  int get Number => this.Section.Number;
  set Number(int value) => this.Section.Number = value;

  int get Selection => this.Section.Selection;
  set Selection(int value) => this.Section.Selection = value;

  int get bReserved => this.Section.bReserved;
  set bReserved(int value) => this.Section.bReserved = value;

  int get HighNumber => this.Section.HighNumber;
  set HighNumber(int value) => this.Section.HighNumber = value;
}

/// {@category Struct}
@Packed(2)
class _IMAGE_AUX_SYMBOL__CRC_e__Struct extends Struct {
  @Uint32()
  external int crc;

  @Array(14)
  external Array<Uint8> rgbReserved;
}

extension IMAGE_AUX_SYMBOL_Extension_3 on IMAGE_AUX_SYMBOL {
  int get crc => this.CRC.crc;
  set crc(int value) => this.CRC.crc = value;

  Array<Uint8> get rgbReserved => this.CRC.rgbReserved;
  set rgbReserved(Array<Uint8> value) => this.CRC.rgbReserved = value;
}

/// {@category Struct}
class IMAGE_AUX_SYMBOL_EX extends Union {
  external _IMAGE_AUX_SYMBOL_EX__Sym_e__Struct Sym;

  external _IMAGE_AUX_SYMBOL_EX__File_e__Struct File;

  external _IMAGE_AUX_SYMBOL_EX__Section_e__Struct Section;

  external _IMAGE_AUX_SYMBOL_EX__Anonymous_e__Struct Anonymous;

  external _IMAGE_AUX_SYMBOL_EX__CRC_e__Struct CRC;
}

/// {@category Struct}
@Packed(2)
class _IMAGE_AUX_SYMBOL_EX__Sym_e__Struct extends Struct {
  @Uint32()
  external int WeakDefaultSymIndex;

  @Uint32()
  external int WeakSearchType;

  @Array(12)
  external Array<Uint8> rgbReserved;
}

extension IMAGE_AUX_SYMBOL_EX_Extension on IMAGE_AUX_SYMBOL_EX {
  int get WeakDefaultSymIndex => this.Sym.WeakDefaultSymIndex;
  set WeakDefaultSymIndex(int value) => this.Sym.WeakDefaultSymIndex = value;

  int get WeakSearchType => this.Sym.WeakSearchType;
  set WeakSearchType(int value) => this.Sym.WeakSearchType = value;

  Array<Uint8> get rgbReserved => this.Sym.rgbReserved;
  set rgbReserved(Array<Uint8> value) => this.Sym.rgbReserved = value;
}

/// {@category Struct}
class _IMAGE_AUX_SYMBOL_EX__File_e__Struct extends Struct {
  @Array(20)
  external Array<Uint8> Name;
}

extension IMAGE_AUX_SYMBOL_EX_Extension_1 on IMAGE_AUX_SYMBOL_EX {
  Array<Uint8> get Name => this.File.Name;
  set Name(Array<Uint8> value) => this.File.Name = value;
}

/// {@category Struct}
@Packed(2)
class _IMAGE_AUX_SYMBOL_EX__Section_e__Struct extends Struct {
  @Uint32()
  external int Length;

  @Uint16()
  external int NumberOfRelocations;

  @Uint16()
  external int NumberOfLinenumbers;

  @Uint32()
  external int CheckSum;

  @Int16()
  external int Number;

  @Uint8()
  external int Selection;

  @Uint8()
  external int bReserved;

  @Int16()
  external int HighNumber;

  @Array(2)
  external Array<Uint8> rgbReserved;
}

extension IMAGE_AUX_SYMBOL_EX_Extension_2 on IMAGE_AUX_SYMBOL_EX {
  int get Length => this.Section.Length;
  set Length(int value) => this.Section.Length = value;

  int get NumberOfRelocations => this.Section.NumberOfRelocations;
  set NumberOfRelocations(int value) =>
      this.Section.NumberOfRelocations = value;

  int get NumberOfLinenumbers => this.Section.NumberOfLinenumbers;
  set NumberOfLinenumbers(int value) =>
      this.Section.NumberOfLinenumbers = value;

  int get CheckSum => this.Section.CheckSum;
  set CheckSum(int value) => this.Section.CheckSum = value;

  int get Number => this.Section.Number;
  set Number(int value) => this.Section.Number = value;

  int get Selection => this.Section.Selection;
  set Selection(int value) => this.Section.Selection = value;

  int get bReserved => this.Section.bReserved;
  set bReserved(int value) => this.Section.bReserved = value;

  int get HighNumber => this.Section.HighNumber;
  set HighNumber(int value) => this.Section.HighNumber = value;

  Array<Uint8> get rgbReserved => this.Section.rgbReserved;
  set rgbReserved(Array<Uint8> value) => this.Section.rgbReserved = value;
}

/// {@category Struct}
@Packed(2)
class _IMAGE_AUX_SYMBOL_EX__Anonymous_e__Struct extends Struct {
  external IMAGE_AUX_SYMBOL_TOKEN_DEF TokenDef;

  @Array(2)
  external Array<Uint8> rgbReserved;
}

extension IMAGE_AUX_SYMBOL_EX_Extension_3 on IMAGE_AUX_SYMBOL_EX {
  IMAGE_AUX_SYMBOL_TOKEN_DEF get TokenDef => this.Anonymous.TokenDef;
  set TokenDef(IMAGE_AUX_SYMBOL_TOKEN_DEF value) =>
      this.Anonymous.TokenDef = value;

  Array<Uint8> get rgbReserved => this.Anonymous.rgbReserved;
  set rgbReserved(Array<Uint8> value) => this.Anonymous.rgbReserved = value;
}

/// {@category Struct}
@Packed(2)
class _IMAGE_AUX_SYMBOL_EX__CRC_e__Struct extends Struct {
  @Uint32()
  external int crc;

  @Array(16)
  external Array<Uint8> rgbReserved;
}

extension IMAGE_AUX_SYMBOL_EX_Extension_4 on IMAGE_AUX_SYMBOL_EX {
  int get crc => this.CRC.crc;
  set crc(int value) => this.CRC.crc = value;

  Array<Uint8> get rgbReserved => this.CRC.rgbReserved;
  set rgbReserved(Array<Uint8> value) => this.CRC.rgbReserved = value;
}

/// {@category Struct}
@Packed(2)
class IMAGE_AUX_SYMBOL_TOKEN_DEF extends Struct {
  @Uint8()
  external int bAuxType;

  @Uint8()
  external int bReserved;

  @Uint32()
  external int SymbolTableIndex;

  @Array(12)
  external Array<Uint8> rgbReserved;
}

/// {@category Struct}
class IMAGE_BASE_RELOCATION extends Struct {
  @Uint32()
  external int VirtualAddress;

  @Uint32()
  external int SizeOfBlock;
}

/// {@category Struct}
class IMAGE_BOUND_FORWARDER_REF extends Struct {
  @Uint32()
  external int TimeDateStamp;

  @Uint16()
  external int OffsetModuleName;

  @Uint16()
  external int Reserved;
}

/// {@category Struct}
class IMAGE_BOUND_IMPORT_DESCRIPTOR extends Struct {
  @Uint32()
  external int TimeDateStamp;

  @Uint16()
  external int OffsetModuleName;

  @Uint16()
  external int NumberOfModuleForwarderRefs;
}

/// {@category Struct}
class IMAGE_CE_RUNTIME_FUNCTION_ENTRY extends Struct {
  @Uint32()
  external int FuncStart;

  @Uint32()
  external int bitfield;
}

/// {@category Struct}
class IMAGE_DEBUG_MISC extends Struct {
  @Uint32()
  external int DataType;

  @Uint32()
  external int Length;

  @Uint8()
  external int Unicode;

  @Array(3)
  external Array<Uint8> Reserved;

  @Array(1)
  external Array<Uint8> Data;
}

/// {@category Struct}
@Packed(2)
class IMAGE_DOS_HEADER extends Struct {
  @Uint16()
  external int e_magic;

  @Uint16()
  external int e_cblp;

  @Uint16()
  external int e_cp;

  @Uint16()
  external int e_crlc;

  @Uint16()
  external int e_cparhdr;

  @Uint16()
  external int e_minalloc;

  @Uint16()
  external int e_maxalloc;

  @Uint16()
  external int e_ss;

  @Uint16()
  external int e_sp;

  @Uint16()
  external int e_csum;

  @Uint16()
  external int e_ip;

  @Uint16()
  external int e_cs;

  @Uint16()
  external int e_lfarlc;

  @Uint16()
  external int e_ovno;

  @Array(4)
  external Array<Uint16> e_res;

  @Uint16()
  external int e_oemid;

  @Uint16()
  external int e_oeminfo;

  @Array(10)
  external Array<Uint16> e_res2;

  @Int32()
  external int e_lfanew;
}

/// {@category Struct}
@Packed(1)
class IMAGE_DYNAMIC_RELOCATION32 extends Struct {
  @Uint32()
  external int Symbol;

  @Uint32()
  external int BaseRelocSize;
}

/// {@category Struct}
@Packed(1)
class IMAGE_DYNAMIC_RELOCATION32_V2 extends Struct {
  @Uint32()
  external int HeaderSize;

  @Uint32()
  external int FixupInfoSize;

  @Uint32()
  external int Symbol;

  @Uint32()
  external int SymbolGroup;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
@Packed(1)
class IMAGE_DYNAMIC_RELOCATION64 extends Struct {
  @Uint64()
  external int Symbol;

  @Uint32()
  external int BaseRelocSize;
}

/// {@category Struct}
@Packed(1)
class IMAGE_DYNAMIC_RELOCATION64_V2 extends Struct {
  @Uint32()
  external int HeaderSize;

  @Uint32()
  external int FixupInfoSize;

  @Uint64()
  external int Symbol;

  @Uint32()
  external int SymbolGroup;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class IMAGE_DYNAMIC_RELOCATION_TABLE extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;
}

/// {@category Struct}
@Packed(1)
class IMAGE_EPILOGUE_DYNAMIC_RELOCATION_HEADER extends Struct {
  @Uint32()
  external int EpilogueCount;

  @Uint8()
  external int EpilogueByteCount;

  @Uint8()
  external int BranchDescriptorElementSize;

  @Uint16()
  external int BranchDescriptorCount;
}

/// {@category Struct}
class IMAGE_EXPORT_DIRECTORY extends Struct {
  @Uint32()
  external int Characteristics;

  @Uint32()
  external int TimeDateStamp;

  @Uint16()
  external int MajorVersion;

  @Uint16()
  external int MinorVersion;

  @Uint32()
  external int Name;

  @Uint32()
  external int Base;

  @Uint32()
  external int NumberOfFunctions;

  @Uint32()
  external int NumberOfNames;

  @Uint32()
  external int AddressOfFunctions;

  @Uint32()
  external int AddressOfNames;

  @Uint32()
  external int AddressOfNameOrdinals;
}

/// {@category Struct}
class IMAGE_HOT_PATCH_BASE extends Struct {
  @Uint32()
  external int SequenceNumber;

  @Uint32()
  external int Flags;

  @Uint32()
  external int OriginalTimeDateStamp;

  @Uint32()
  external int OriginalCheckSum;

  @Uint32()
  external int CodeIntegrityInfo;

  @Uint32()
  external int CodeIntegritySize;

  @Uint32()
  external int PatchTable;

  @Uint32()
  external int BufferOffset;
}

/// {@category Struct}
class IMAGE_HOT_PATCH_HASHES extends Struct {
  @Array(32)
  external Array<Uint8> SHA256;

  @Array(20)
  external Array<Uint8> SHA1;
}

/// {@category Struct}
class IMAGE_HOT_PATCH_INFO extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Uint32()
  external int SequenceNumber;

  @Uint32()
  external int BaseImageList;

  @Uint32()
  external int BaseImageCount;

  @Uint32()
  external int BufferOffset;

  @Uint32()
  external int ExtraPatchSize;
}

/// {@category Struct}
class IMAGE_IMPORT_BY_NAME extends Struct {
  @Uint16()
  external int Hint;

  @Array(1)
  external Array<Uint8> Name;
}

/// {@category Struct}
@Packed(1)
class IMAGE_IMPORT_CONTROL_TRANSFER_DYNAMIC_RELOCATION extends Struct {
  @Uint32()
  external int bitfield;
}

/// {@category Struct}
class IMAGE_IMPORT_DESCRIPTOR extends Struct {
  external _IMAGE_IMPORT_DESCRIPTOR__Anonymous_e__Union Anonymous;

  @Uint32()
  external int TimeDateStamp;

  @Uint32()
  external int ForwarderChain;

  @Uint32()
  external int Name;

  @Uint32()
  external int FirstThunk;
}

/// {@category Struct}
class _IMAGE_IMPORT_DESCRIPTOR__Anonymous_e__Union extends Union {
  @Uint32()
  external int Characteristics;

  @Uint32()
  external int OriginalFirstThunk;
}

extension IMAGE_IMPORT_DESCRIPTOR_Extension on IMAGE_IMPORT_DESCRIPTOR {
  int get Characteristics => this.Anonymous.Characteristics;
  set Characteristics(int value) => this.Anonymous.Characteristics = value;

  int get OriginalFirstThunk => this.Anonymous.OriginalFirstThunk;
  set OriginalFirstThunk(int value) =>
      this.Anonymous.OriginalFirstThunk = value;
}

/// {@category Struct}
@Packed(1)
class IMAGE_INDIR_CONTROL_TRANSFER_DYNAMIC_RELOCATION extends Struct {
  @Uint16()
  external int bitfield;
}

/// {@category Struct}
@Packed(2)
class IMAGE_LINENUMBER extends Struct {
  external _IMAGE_LINENUMBER__Type_e__Union Type;

  @Uint16()
  external int Linenumber;
}

/// {@category Struct}
@Packed(2)
class _IMAGE_LINENUMBER__Type_e__Union extends Union {
  @Uint32()
  external int SymbolTableIndex;

  @Uint32()
  external int VirtualAddress;
}

extension IMAGE_LINENUMBER_Extension on IMAGE_LINENUMBER {
  int get SymbolTableIndex => this.Type.SymbolTableIndex;
  set SymbolTableIndex(int value) => this.Type.SymbolTableIndex = value;

  int get VirtualAddress => this.Type.VirtualAddress;
  set VirtualAddress(int value) => this.Type.VirtualAddress = value;
}

/// {@category Struct}
class IMAGE_OS2_HEADER extends Struct {
  @Uint16()
  external int ne_magic;

  @Uint8()
  external int ne_ver;

  @Uint8()
  external int ne_rev;

  @Uint16()
  external int ne_enttab;

  @Uint16()
  external int ne_cbenttab;

  @Int32()
  external int ne_crc;

  @Uint16()
  external int ne_flags;

  @Uint16()
  external int ne_autodata;

  @Uint16()
  external int ne_heap;

  @Uint16()
  external int ne_stack;

  @Int32()
  external int ne_csip;

  @Int32()
  external int ne_sssp;

  @Uint16()
  external int ne_cseg;

  @Uint16()
  external int ne_cmod;

  @Uint16()
  external int ne_cbnrestab;

  @Uint16()
  external int ne_segtab;

  @Uint16()
  external int ne_rsrctab;

  @Uint16()
  external int ne_restab;

  @Uint16()
  external int ne_modtab;

  @Uint16()
  external int ne_imptab;

  @Int32()
  external int ne_nrestab;

  @Uint16()
  external int ne_cmovent;

  @Uint16()
  external int ne_align;

  @Uint16()
  external int ne_cres;

  @Uint8()
  external int ne_exetyp;

  @Uint8()
  external int ne_flagsothers;

  @Uint16()
  external int ne_pretthunks;

  @Uint16()
  external int ne_psegrefbytes;

  @Uint16()
  external int ne_swaparea;

  @Uint16()
  external int ne_expver;
}

/// {@category Struct}
class IMAGE_POLICY_ENTRY extends Struct {
  @Int32()
  external int Type;

  @Int32()
  external int PolicyId;

  external _IMAGE_POLICY_ENTRY__u_e__Union u;
}

/// {@category Struct}
class _IMAGE_POLICY_ENTRY__u_e__Union extends Union {
  external Pointer None;

  @Uint8()
  external int BoolValue;

  @Int8()
  external int Int8Value;

  @Uint8()
  external int UInt8Value;

  @Int16()
  external int Int16Value;

  @Uint16()
  external int UInt16Value;

  @Int32()
  external int Int32Value;

  @Uint32()
  external int UInt32Value;

  @Int64()
  external int Int64Value;

  @Uint64()
  external int UInt64Value;

  external Pointer<Utf8> AnsiStringValue;

  external Pointer<Utf16> UnicodeStringValue;
}

extension IMAGE_POLICY_ENTRY_Extension on IMAGE_POLICY_ENTRY {
  Pointer get None => this.u.None;
  set None(Pointer value) => this.u.None = value;

  int get BoolValue => this.u.BoolValue;
  set BoolValue(int value) => this.u.BoolValue = value;

  int get Int8Value => this.u.Int8Value;
  set Int8Value(int value) => this.u.Int8Value = value;

  int get UInt8Value => this.u.UInt8Value;
  set UInt8Value(int value) => this.u.UInt8Value = value;

  int get Int16Value => this.u.Int16Value;
  set Int16Value(int value) => this.u.Int16Value = value;

  int get UInt16Value => this.u.UInt16Value;
  set UInt16Value(int value) => this.u.UInt16Value = value;

  int get Int32Value => this.u.Int32Value;
  set Int32Value(int value) => this.u.Int32Value = value;

  int get UInt32Value => this.u.UInt32Value;
  set UInt32Value(int value) => this.u.UInt32Value = value;

  int get Int64Value => this.u.Int64Value;
  set Int64Value(int value) => this.u.Int64Value = value;

  int get UInt64Value => this.u.UInt64Value;
  set UInt64Value(int value) => this.u.UInt64Value = value;

  Pointer<Utf8> get AnsiStringValue => this.u.AnsiStringValue;
  set AnsiStringValue(Pointer<Utf8> value) => this.u.AnsiStringValue = value;

  Pointer<Utf16> get UnicodeStringValue => this.u.UnicodeStringValue;
  set UnicodeStringValue(Pointer<Utf16> value) =>
      this.u.UnicodeStringValue = value;
}

/// {@category Struct}
class IMAGE_POLICY_METADATA extends Struct {
  @Uint8()
  external int Version;

  @Array(7)
  external Array<Uint8> Reserved0;

  @Uint64()
  external int ApplicationId;

  @Array(1)
  external Array<IMAGE_POLICY_ENTRY> Policies;
}

/// {@category Struct}
class IMAGE_PROLOGUE_DYNAMIC_RELOCATION_HEADER extends Struct {
  @Uint8()
  external int PrologueByteCount;
}

/// {@category Struct}
@Packed(2)
class IMAGE_RELOCATION extends Struct {
  external _IMAGE_RELOCATION__Anonymous_e__Union Anonymous;

  @Uint32()
  external int SymbolTableIndex;

  @Uint16()
  external int Type;
}

/// {@category Struct}
@Packed(2)
class _IMAGE_RELOCATION__Anonymous_e__Union extends Union {
  @Uint32()
  external int VirtualAddress;

  @Uint32()
  external int RelocCount;
}

extension IMAGE_RELOCATION_Extension on IMAGE_RELOCATION {
  int get VirtualAddress => this.Anonymous.VirtualAddress;
  set VirtualAddress(int value) => this.Anonymous.VirtualAddress = value;

  int get RelocCount => this.Anonymous.RelocCount;
  set RelocCount(int value) => this.Anonymous.RelocCount = value;
}

/// {@category Struct}
class IMAGE_RESOURCE_DATA_ENTRY extends Struct {
  @Uint32()
  external int OffsetToData;

  @Uint32()
  external int Size;

  @Uint32()
  external int CodePage;

  @Uint32()
  external int Reserved;
}

/// {@category Struct}
class IMAGE_RESOURCE_DIRECTORY extends Struct {
  @Uint32()
  external int Characteristics;

  @Uint32()
  external int TimeDateStamp;

  @Uint16()
  external int MajorVersion;

  @Uint16()
  external int MinorVersion;

  @Uint16()
  external int NumberOfNamedEntries;

  @Uint16()
  external int NumberOfIdEntries;
}

/// {@category Struct}
class IMAGE_RESOURCE_DIRECTORY_ENTRY extends Struct {
  external _IMAGE_RESOURCE_DIRECTORY_ENTRY__Anonymous1_e__Union Anonymous1;

  external _IMAGE_RESOURCE_DIRECTORY_ENTRY__Anonymous2_e__Union Anonymous2;
}

/// {@category Struct}
class _IMAGE_RESOURCE_DIRECTORY_ENTRY__Anonymous1_e__Union extends Union {
  external _IMAGE_RESOURCE_DIRECTORY_ENTRY__Anonymous1_e__Union__Anonymous_e__Struct
      Anonymous;

  @Uint32()
  external int Name;

  @Uint16()
  external int Id;
}

/// {@category Struct}
class _IMAGE_RESOURCE_DIRECTORY_ENTRY__Anonymous1_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension IMAGE_RESOURCE_DIRECTORY_ENTRY__Anonymous1_e__Union_Extension
    on IMAGE_RESOURCE_DIRECTORY_ENTRY {
  int get bitfield => this.Anonymous1.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous1.Anonymous.bitfield = value;
}

extension IMAGE_RESOURCE_DIRECTORY_ENTRY_Extension
    on IMAGE_RESOURCE_DIRECTORY_ENTRY {
  _IMAGE_RESOURCE_DIRECTORY_ENTRY__Anonymous1_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous1.Anonymous;
  set Anonymous(
          _IMAGE_RESOURCE_DIRECTORY_ENTRY__Anonymous1_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous1.Anonymous = value;

  int get Name => this.Anonymous1.Name;
  set Name(int value) => this.Anonymous1.Name = value;

  int get Id => this.Anonymous1.Id;
  set Id(int value) => this.Anonymous1.Id = value;
}

/// {@category Struct}
class _IMAGE_RESOURCE_DIRECTORY_ENTRY__Anonymous2_e__Union extends Union {
  @Uint32()
  external int OffsetToData;

  external _IMAGE_RESOURCE_DIRECTORY_ENTRY__Anonymous2_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _IMAGE_RESOURCE_DIRECTORY_ENTRY__Anonymous2_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension IMAGE_RESOURCE_DIRECTORY_ENTRY__Anonymous2_e__Union_Extension
    on IMAGE_RESOURCE_DIRECTORY_ENTRY {
  int get bitfield => this.Anonymous2.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous2.Anonymous.bitfield = value;
}

extension IMAGE_RESOURCE_DIRECTORY_ENTRY_Extension_1
    on IMAGE_RESOURCE_DIRECTORY_ENTRY {
  int get OffsetToData => this.Anonymous2.OffsetToData;
  set OffsetToData(int value) => this.Anonymous2.OffsetToData = value;

  _IMAGE_RESOURCE_DIRECTORY_ENTRY__Anonymous2_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous2.Anonymous;
  set Anonymous(
          _IMAGE_RESOURCE_DIRECTORY_ENTRY__Anonymous2_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous2.Anonymous = value;
}

/// {@category Struct}
class IMAGE_RESOURCE_DIRECTORY_STRING extends Struct {
  @Uint16()
  external int Length;

  @Array(1)
  external Array<Uint8> NameString;
}

/// {@category Struct}
class IMAGE_RESOURCE_DIR_STRING_U extends Struct {
  @Uint16()
  external int Length;

  @Array(1)
  external Array<Uint16> _NameString;

  String get NameString {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_NameString[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set NameString(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _NameString[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class IMAGE_SEPARATE_DEBUG_HEADER extends Struct {
  @Uint16()
  external int Signature;

  @Uint16()
  external int Flags;

  @Uint16()
  external int Machine;

  @Uint16()
  external int Characteristics;

  @Uint32()
  external int TimeDateStamp;

  @Uint32()
  external int CheckSum;

  @Uint32()
  external int ImageBase;

  @Uint32()
  external int SizeOfImage;

  @Uint32()
  external int NumberOfSections;

  @Uint32()
  external int ExportedNamesSize;

  @Uint32()
  external int DebugDirectorySize;

  @Uint32()
  external int SectionAlignment;

  @Array(2)
  external Array<Uint32> Reserved;
}

/// {@category Struct}
@Packed(1)
class IMAGE_SWITCHTABLE_BRANCH_DYNAMIC_RELOCATION extends Struct {
  @Uint16()
  external int bitfield;
}

/// {@category Struct}
@Packed(2)
class IMAGE_SYMBOL extends Struct {
  external _IMAGE_SYMBOL__N_e__Union N;

  @Uint32()
  external int Value;

  @Int16()
  external int SectionNumber;

  @Uint16()
  external int Type;

  @Uint8()
  external int StorageClass;

  @Uint8()
  external int NumberOfAuxSymbols;
}

/// {@category Struct}
@Packed(2)
class _IMAGE_SYMBOL__N_e__Union extends Union {
  @Array(8)
  external Array<Uint8> ShortName;

  external _IMAGE_SYMBOL__N_e__Union__Name_e__Struct Name;

  @Array(2)
  external Array<Uint32> LongName;
}

/// {@category Struct}
@Packed(2)
class _IMAGE_SYMBOL__N_e__Union__Name_e__Struct extends Struct {
  @Uint32()
  external int Short;

  @Uint32()
  external int Long;
}

extension IMAGE_SYMBOL__N_e__Union_Extension on IMAGE_SYMBOL {
  int get Short => this.N.Name.Short;
  set Short(int value) => this.N.Name.Short = value;

  int get Long => this.N.Name.Long;
  set Long(int value) => this.N.Name.Long = value;
}

extension IMAGE_SYMBOL_Extension on IMAGE_SYMBOL {
  Array<Uint8> get ShortName => this.N.ShortName;
  set ShortName(Array<Uint8> value) => this.N.ShortName = value;

  _IMAGE_SYMBOL__N_e__Union__Name_e__Struct get Name => this.N.Name;
  set Name(_IMAGE_SYMBOL__N_e__Union__Name_e__Struct value) =>
      this.N.Name = value;

  Array<Uint32> get LongName => this.N.LongName;
  set LongName(Array<Uint32> value) => this.N.LongName = value;
}

/// {@category Struct}
@Packed(2)
class IMAGE_SYMBOL_EX extends Struct {
  external _IMAGE_SYMBOL_EX__N_e__Union N;

  @Uint32()
  external int Value;

  @Int32()
  external int SectionNumber;

  @Uint16()
  external int Type;

  @Uint8()
  external int StorageClass;

  @Uint8()
  external int NumberOfAuxSymbols;
}

/// {@category Struct}
@Packed(2)
class _IMAGE_SYMBOL_EX__N_e__Union extends Union {
  @Array(8)
  external Array<Uint8> ShortName;

  external _IMAGE_SYMBOL_EX__N_e__Union__Name_e__Struct Name;

  @Array(2)
  external Array<Uint32> LongName;
}

/// {@category Struct}
@Packed(2)
class _IMAGE_SYMBOL_EX__N_e__Union__Name_e__Struct extends Struct {
  @Uint32()
  external int Short;

  @Uint32()
  external int Long;
}

extension IMAGE_SYMBOL_EX__N_e__Union_Extension on IMAGE_SYMBOL_EX {
  int get Short => this.N.Name.Short;
  set Short(int value) => this.N.Name.Short = value;

  int get Long => this.N.Name.Long;
  set Long(int value) => this.N.Name.Long = value;
}

extension IMAGE_SYMBOL_EX_Extension on IMAGE_SYMBOL_EX {
  Array<Uint8> get ShortName => this.N.ShortName;
  set ShortName(Array<Uint8> value) => this.N.ShortName = value;

  _IMAGE_SYMBOL_EX__N_e__Union__Name_e__Struct get Name => this.N.Name;
  set Name(_IMAGE_SYMBOL_EX__N_e__Union__Name_e__Struct value) =>
      this.N.Name = value;

  Array<Uint32> get LongName => this.N.LongName;
  set LongName(Array<Uint32> value) => this.N.LongName = value;
}

/// {@category Struct}
class IMAGE_TLS_DIRECTORY32 extends Struct {
  @Uint32()
  external int StartAddressOfRawData;

  @Uint32()
  external int EndAddressOfRawData;

  @Uint32()
  external int AddressOfIndex;

  @Uint32()
  external int AddressOfCallBacks;

  @Uint32()
  external int SizeOfZeroFill;

  external _IMAGE_TLS_DIRECTORY32__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _IMAGE_TLS_DIRECTORY32__Anonymous_e__Union extends Union {
  @Uint32()
  external int Characteristics;

  external _IMAGE_TLS_DIRECTORY32__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _IMAGE_TLS_DIRECTORY32__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension IMAGE_TLS_DIRECTORY32__Anonymous_e__Union_Extension
    on IMAGE_TLS_DIRECTORY32 {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension IMAGE_TLS_DIRECTORY32_Extension on IMAGE_TLS_DIRECTORY32 {
  int get Characteristics => this.Anonymous.Characteristics;
  set Characteristics(int value) => this.Anonymous.Characteristics = value;

  _IMAGE_TLS_DIRECTORY32__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _IMAGE_TLS_DIRECTORY32__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category Struct}
class IMAGE_TLS_DIRECTORY64 extends Struct {
  @Uint64()
  external int StartAddressOfRawData;

  @Uint64()
  external int EndAddressOfRawData;

  @Uint64()
  external int AddressOfIndex;

  @Uint64()
  external int AddressOfCallBacks;

  @Uint32()
  external int SizeOfZeroFill;

  external _IMAGE_TLS_DIRECTORY64__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _IMAGE_TLS_DIRECTORY64__Anonymous_e__Union extends Union {
  @Uint32()
  external int Characteristics;

  external _IMAGE_TLS_DIRECTORY64__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _IMAGE_TLS_DIRECTORY64__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension IMAGE_TLS_DIRECTORY64__Anonymous_e__Union_Extension
    on IMAGE_TLS_DIRECTORY64 {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension IMAGE_TLS_DIRECTORY64_Extension on IMAGE_TLS_DIRECTORY64 {
  int get Characteristics => this.Anonymous.Characteristics;
  set Characteristics(int value) => this.Anonymous.Characteristics = value;

  _IMAGE_TLS_DIRECTORY64__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _IMAGE_TLS_DIRECTORY64__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category Struct}
@Packed(2)
class IMAGE_VXD_HEADER extends Struct {
  @Uint16()
  external int e32_magic;

  @Uint8()
  external int e32_border;

  @Uint8()
  external int e32_worder;

  @Uint32()
  external int e32_level;

  @Uint16()
  external int e32_cpu;

  @Uint16()
  external int e32_os;

  @Uint32()
  external int e32_ver;

  @Uint32()
  external int e32_mflags;

  @Uint32()
  external int e32_mpages;

  @Uint32()
  external int e32_startobj;

  @Uint32()
  external int e32_eip;

  @Uint32()
  external int e32_stackobj;

  @Uint32()
  external int e32_esp;

  @Uint32()
  external int e32_pagesize;

  @Uint32()
  external int e32_lastpagesize;

  @Uint32()
  external int e32_fixupsize;

  @Uint32()
  external int e32_fixupsum;

  @Uint32()
  external int e32_ldrsize;

  @Uint32()
  external int e32_ldrsum;

  @Uint32()
  external int e32_objtab;

  @Uint32()
  external int e32_objcnt;

  @Uint32()
  external int e32_objmap;

  @Uint32()
  external int e32_itermap;

  @Uint32()
  external int e32_rsrctab;

  @Uint32()
  external int e32_rsrccnt;

  @Uint32()
  external int e32_restab;

  @Uint32()
  external int e32_enttab;

  @Uint32()
  external int e32_dirtab;

  @Uint32()
  external int e32_dircnt;

  @Uint32()
  external int e32_fpagetab;

  @Uint32()
  external int e32_frectab;

  @Uint32()
  external int e32_impmod;

  @Uint32()
  external int e32_impmodcnt;

  @Uint32()
  external int e32_impproc;

  @Uint32()
  external int e32_pagesum;

  @Uint32()
  external int e32_datapage;

  @Uint32()
  external int e32_preload;

  @Uint32()
  external int e32_nrestab;

  @Uint32()
  external int e32_cbnrestab;

  @Uint32()
  external int e32_nressum;

  @Uint32()
  external int e32_autodata;

  @Uint32()
  external int e32_debuginfo;

  @Uint32()
  external int e32_debuglen;

  @Uint32()
  external int e32_instpreload;

  @Uint32()
  external int e32_instdemand;

  @Uint32()
  external int e32_heapsize;

  @Array(12)
  external Array<Uint8> e32_res3;

  @Uint32()
  external int e32_winresoff;

  @Uint32()
  external int e32_winreslen;

  @Uint16()
  external int e32_devid;

  @Uint16()
  external int e32_ddkver;
}

/// {@category Struct}
class IMPORT_OBJECT_HEADER extends Struct {
  @Uint16()
  external int Sig1;

  @Uint16()
  external int Sig2;

  @Uint16()
  external int Version;

  @Uint16()
  external int Machine;

  @Uint32()
  external int TimeDateStamp;

  @Uint32()
  external int SizeOfData;

  external _IMPORT_OBJECT_HEADER__Anonymous_e__Union Anonymous;

  @Uint16()
  external int bitfield;
}

/// {@category Struct}
class _IMPORT_OBJECT_HEADER__Anonymous_e__Union extends Union {
  @Uint16()
  external int Ordinal;

  @Uint16()
  external int Hint;
}

extension IMPORT_OBJECT_HEADER_Extension on IMPORT_OBJECT_HEADER {
  int get Ordinal => this.Anonymous.Ordinal;
  set Ordinal(int value) => this.Anonymous.Ordinal = value;

  int get Hint => this.Anonymous.Hint;
  set Hint(int value) => this.Anonymous.Hint = value;
}

/// {@category Struct}
class KERNEL_CET_CONTEXT extends Struct {
  @Uint64()
  external int Ssp;

  @Uint64()
  external int Rip;

  @Uint16()
  external int SegCs;

  external _KERNEL_CET_CONTEXT__Anonymous_e__Union Anonymous;

  @Array(2)
  external Array<Uint16> Fill;
}

/// {@category Struct}
class _KERNEL_CET_CONTEXT__Anonymous_e__Union extends Union {
  @Uint16()
  external int AllFlags;

  external _KERNEL_CET_CONTEXT__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _KERNEL_CET_CONTEXT__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint16()
  external int bitfield;
}

extension KERNEL_CET_CONTEXT__Anonymous_e__Union_Extension
    on KERNEL_CET_CONTEXT {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension KERNEL_CET_CONTEXT_Extension on KERNEL_CET_CONTEXT {
  int get AllFlags => this.Anonymous.AllFlags;
  set AllFlags(int value) => this.Anonymous.AllFlags = value;

  _KERNEL_CET_CONTEXT__Anonymous_e__Union__Anonymous_e__Struct get Anonymous =>
      this.Anonymous.Anonymous;
  set Anonymous(
          _KERNEL_CET_CONTEXT__Anonymous_e__Union__Anonymous_e__Struct value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category Struct}
class KTMOBJECT_CURSOR extends Struct {
  external GUID LastQuery;

  @Uint32()
  external int ObjectIdCount;

  @Array(1)
  external Array<GUID> ObjectIds;
}

/// {@category Struct}
class MAXVERSIONTESTED_INFO extends Struct {
  @Uint64()
  external int MaxVersionTested;
}

/// {@category Struct}
class MEMORY_PARTITION_DEDICATED_MEMORY_ATTRIBUTE extends Struct {
  @Int32()
  external int Type;

  @Uint32()
  external int Reserved;

  @Uint64()
  external int Value;
}

/// {@category Struct}
class MEMORY_PARTITION_DEDICATED_MEMORY_INFORMATION extends Struct {
  @Uint32()
  external int NextEntryOffset;

  @Uint32()
  external int SizeOfInformation;

  @Uint32()
  external int Flags;

  @Uint32()
  external int AttributesOffset;

  @Uint32()
  external int AttributeCount;

  @Uint32()
  external int Reserved;

  @Uint64()
  external int TypeId;
}

/// {@category Struct}
class MEM_ADDRESS_REQUIREMENTS extends Struct {
  external Pointer LowestStartingAddress;

  external Pointer HighestEndingAddress;

  @IntPtr()
  external int Alignment;
}

/// {@category Struct}
@Packed(4)
class NON_PAGED_DEBUG_INFO extends Struct {
  @Uint16()
  external int Signature;

  @Uint16()
  external int Flags;

  @Uint32()
  external int Size;

  @Uint16()
  external int Machine;

  @Uint16()
  external int Characteristics;

  @Uint32()
  external int TimeDateStamp;

  @Uint32()
  external int CheckSum;

  @Uint32()
  external int SizeOfImage;

  @Uint64()
  external int ImageBase;
}

/// {@category Struct}
class NOTIFY_USER_POWER_SETTING extends Struct {
  external GUID Guid;
}

/// {@category Struct}
class NT_TIB32 extends Struct {
  @Uint32()
  external int ExceptionList;

  @Uint32()
  external int StackBase;

  @Uint32()
  external int StackLimit;

  @Uint32()
  external int SubSystemTib;

  external _NT_TIB32__Anonymous_e__Union Anonymous;

  @Uint32()
  external int ArbitraryUserPointer;

  @Uint32()
  external int Self;
}

/// {@category Struct}
class _NT_TIB32__Anonymous_e__Union extends Union {
  @Uint32()
  external int FiberData;

  @Uint32()
  external int Version;
}

extension NT_TIB32_Extension on NT_TIB32 {
  int get FiberData => this.Anonymous.FiberData;
  set FiberData(int value) => this.Anonymous.FiberData = value;

  int get Version => this.Anonymous.Version;
  set Version(int value) => this.Anonymous.Version = value;
}

/// {@category Struct}
class NT_TIB64 extends Struct {
  @Uint64()
  external int ExceptionList;

  @Uint64()
  external int StackBase;

  @Uint64()
  external int StackLimit;

  @Uint64()
  external int SubSystemTib;

  external _NT_TIB64__Anonymous_e__Union Anonymous;

  @Uint64()
  external int ArbitraryUserPointer;

  @Uint64()
  external int Self;
}

/// {@category Struct}
class _NT_TIB64__Anonymous_e__Union extends Union {
  @Uint64()
  external int FiberData;

  @Uint32()
  external int Version;
}

extension NT_TIB64_Extension on NT_TIB64 {
  int get FiberData => this.Anonymous.FiberData;
  set FiberData(int value) => this.Anonymous.FiberData = value;

  int get Version => this.Anonymous.Version;
  set Version(int value) => this.Anonymous.Version = value;
}

/// {@category Struct}
class PACKEDEVENTINFO extends Struct {
  @Uint32()
  external int ulSize;

  @Uint32()
  external int ulNumEventsForLogFile;

  @Array(1)
  external Array<Uint32> ulOffsets;
}

/// {@category Struct}
class POWER_IDLE_RESILIENCY extends Struct {
  @Uint32()
  external int CoalescingTimeout;

  @Uint32()
  external int IdleResiliencyPeriod;
}

/// {@category Struct}
class POWER_MONITOR_INVOCATION extends Struct {
  @Uint8()
  external int Console;

  @Int32()
  external int RequestReason;
}

/// {@category Struct}
class POWER_PLATFORM_INFORMATION extends Struct {
  @Uint8()
  external int AoAc;
}

/// {@category Struct}
class POWER_SESSION_ALLOW_EXTERNAL_DMA_DEVICES extends Struct {
  @Uint8()
  external int IsAllowed;
}

/// {@category Struct}
class POWER_SESSION_CONNECT extends Struct {
  @Uint8()
  external int Connected;

  @Uint8()
  external int Console;
}

/// {@category Struct}
class POWER_SESSION_RIT_STATE extends Struct {
  @Uint8()
  external int Active;

  @Uint64()
  external int LastInputTime;
}

/// {@category Struct}
class POWER_SESSION_TIMEOUTS extends Struct {
  @Uint32()
  external int InputTimeout;

  @Uint32()
  external int DisplayTimeout;
}

/// {@category Struct}
class POWER_SESSION_WINLOGON extends Struct {
  @Uint32()
  external int SessionId;

  @Uint8()
  external int Console;

  @Uint8()
  external int Locked;
}

/// {@category Struct}
class POWER_USER_PRESENCE extends Struct {
  @Int32()
  external int UserPresence;
}

/// {@category Struct}
class PPM_IDLESTATE_EVENT extends Struct {
  @Uint32()
  external int NewState;

  @Uint32()
  external int OldState;

  @Uint64()
  external int Processors;
}

/// {@category Struct}
class PPM_IDLE_ACCOUNTING extends Struct {
  @Uint32()
  external int StateCount;

  @Uint32()
  external int TotalTransitions;

  @Uint32()
  external int ResetCount;

  @Uint64()
  external int StartTime;

  @Array(1)
  external Array<PPM_IDLE_STATE_ACCOUNTING> State;
}

/// {@category Struct}
class PPM_IDLE_ACCOUNTING_EX extends Struct {
  @Uint32()
  external int StateCount;

  @Uint32()
  external int TotalTransitions;

  @Uint32()
  external int ResetCount;

  @Uint32()
  external int AbortCount;

  @Uint64()
  external int StartTime;

  @Array(1)
  external Array<PPM_IDLE_STATE_ACCOUNTING_EX> State;
}

/// {@category Struct}
class PPM_IDLE_STATE_ACCOUNTING extends Struct {
  @Uint32()
  external int IdleTransitions;

  @Uint32()
  external int FailedTransitions;

  @Uint32()
  external int InvalidBucketIndex;

  @Uint64()
  external int TotalTime;

  @Array(6)
  external Array<Uint32> IdleTimeBuckets;
}

/// {@category Struct}
class PPM_IDLE_STATE_ACCOUNTING_EX extends Struct {
  @Uint64()
  external int TotalTime;

  @Uint32()
  external int IdleTransitions;

  @Uint32()
  external int FailedTransitions;

  @Uint32()
  external int InvalidBucketIndex;

  @Uint32()
  external int MinTimeUs;

  @Uint32()
  external int MaxTimeUs;

  @Uint32()
  external int CancelledTransitions;

  @Array(16)
  external Array<PPM_IDLE_STATE_BUCKET_EX> IdleTimeBuckets;
}

/// {@category Struct}
class PPM_IDLE_STATE_BUCKET_EX extends Struct {
  @Uint64()
  external int TotalTimeUs;

  @Uint32()
  external int MinTimeUs;

  @Uint32()
  external int MaxTimeUs;

  @Uint32()
  external int Count;
}

/// {@category Struct}
class PPM_PERFSTATE_DOMAIN_EVENT extends Struct {
  @Uint32()
  external int State;

  @Uint32()
  external int Latency;

  @Uint32()
  external int Speed;

  @Uint64()
  external int Processors;
}

/// {@category Struct}
class PPM_PERFSTATE_EVENT extends Struct {
  @Uint32()
  external int State;

  @Uint32()
  external int Status;

  @Uint32()
  external int Latency;

  @Uint32()
  external int Speed;

  @Uint32()
  external int Processor;
}

/// {@category Struct}
class PPM_THERMALCHANGE_EVENT extends Struct {
  @Uint32()
  external int ThermalConstraint;

  @Uint64()
  external int Processors;
}

/// {@category Struct}
class PPM_THERMAL_POLICY_EVENT extends Struct {
  @Uint8()
  external int Mode;

  @Uint64()
  external int Processors;
}

/// {@category Struct}
class PPM_WMI_IDLE_STATE extends Struct {
  @Uint32()
  external int Latency;

  @Uint32()
  external int Power;

  @Uint32()
  external int TimeCheck;

  @Uint8()
  external int PromotePercent;

  @Uint8()
  external int DemotePercent;

  @Uint8()
  external int StateType;

  @Uint8()
  external int Reserved;

  @Uint32()
  external int StateFlags;

  @Uint32()
  external int Context;

  @Uint32()
  external int IdleHandler;

  @Uint32()
  external int Reserved1;
}

/// {@category Struct}
class PPM_WMI_IDLE_STATES extends Struct {
  @Uint32()
  external int Type;

  @Uint32()
  external int Count;

  @Uint32()
  external int TargetState;

  @Uint32()
  external int OldState;

  @Uint64()
  external int TargetProcessors;

  @Array(1)
  external Array<PPM_WMI_IDLE_STATE> State;
}

/// {@category Struct}
class PPM_WMI_IDLE_STATES_EX extends Struct {
  @Uint32()
  external int Type;

  @Uint32()
  external int Count;

  @Uint32()
  external int TargetState;

  @Uint32()
  external int OldState;

  external Pointer TargetProcessors;

  @Array(1)
  external Array<PPM_WMI_IDLE_STATE> State;
}

/// {@category Struct}
class PPM_WMI_LEGACY_PERFSTATE extends Struct {
  @Uint32()
  external int Frequency;

  @Uint32()
  external int Flags;

  @Uint32()
  external int PercentFrequency;
}

/// {@category Struct}
class PPM_WMI_PERF_STATE extends Struct {
  @Uint32()
  external int Frequency;

  @Uint32()
  external int Power;

  @Uint8()
  external int PercentFrequency;

  @Uint8()
  external int IncreaseLevel;

  @Uint8()
  external int DecreaseLevel;

  @Uint8()
  external int Type;

  @Uint32()
  external int IncreaseTime;

  @Uint32()
  external int DecreaseTime;

  @Uint64()
  external int Control;

  @Uint64()
  external int Status;

  @Uint32()
  external int HitCount;

  @Uint32()
  external int Reserved1;

  @Uint64()
  external int Reserved2;

  @Uint64()
  external int Reserved3;
}

/// {@category Struct}
class PPM_WMI_PERF_STATES extends Struct {
  @Uint32()
  external int Count;

  @Uint32()
  external int MaxFrequency;

  @Uint32()
  external int CurrentState;

  @Uint32()
  external int MaxPerfState;

  @Uint32()
  external int MinPerfState;

  @Uint32()
  external int LowestPerfState;

  @Uint32()
  external int ThermalConstraint;

  @Uint8()
  external int BusyAdjThreshold;

  @Uint8()
  external int PolicyType;

  @Uint8()
  external int Type;

  @Uint8()
  external int Reserved;

  @Uint32()
  external int TimerInterval;

  @Uint64()
  external int TargetProcessors;

  @Uint32()
  external int PStateHandler;

  @Uint32()
  external int PStateContext;

  @Uint32()
  external int TStateHandler;

  @Uint32()
  external int TStateContext;

  @Uint32()
  external int FeedbackHandler;

  @Uint32()
  external int Reserved1;

  @Uint64()
  external int Reserved2;

  @Array(1)
  external Array<PPM_WMI_PERF_STATE> State;
}

/// {@category Struct}
class PPM_WMI_PERF_STATES_EX extends Struct {
  @Uint32()
  external int Count;

  @Uint32()
  external int MaxFrequency;

  @Uint32()
  external int CurrentState;

  @Uint32()
  external int MaxPerfState;

  @Uint32()
  external int MinPerfState;

  @Uint32()
  external int LowestPerfState;

  @Uint32()
  external int ThermalConstraint;

  @Uint8()
  external int BusyAdjThreshold;

  @Uint8()
  external int PolicyType;

  @Uint8()
  external int Type;

  @Uint8()
  external int Reserved;

  @Uint32()
  external int TimerInterval;

  external Pointer TargetProcessors;

  @Uint32()
  external int PStateHandler;

  @Uint32()
  external int PStateContext;

  @Uint32()
  external int TStateHandler;

  @Uint32()
  external int TStateContext;

  @Uint32()
  external int FeedbackHandler;

  @Uint32()
  external int Reserved1;

  @Uint64()
  external int Reserved2;

  @Array(1)
  external Array<PPM_WMI_PERF_STATE> State;
}

/// {@category Struct}
class PROCESSOR_IDLESTATE_INFO extends Struct {
  @Uint32()
  external int TimeCheck;

  @Uint8()
  external int DemotePercent;

  @Uint8()
  external int PromotePercent;

  @Array(2)
  external Array<Uint8> Spare;
}

/// {@category Struct}
class PROCESSOR_IDLESTATE_POLICY extends Struct {
  @Uint16()
  external int Revision;

  external _PROCESSOR_IDLESTATE_POLICY__Flags_e__Union Flags;

  @Uint32()
  external int PolicyCount;

  @Array(3)
  external Array<PROCESSOR_IDLESTATE_INFO> Policy;
}

/// {@category Struct}
class _PROCESSOR_IDLESTATE_POLICY__Flags_e__Union extends Union {
  @Uint16()
  external int AsWORD;

  external _PROCESSOR_IDLESTATE_POLICY__Flags_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _PROCESSOR_IDLESTATE_POLICY__Flags_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint16()
  external int bitfield;
}

extension PROCESSOR_IDLESTATE_POLICY__Flags_e__Union_Extension
    on PROCESSOR_IDLESTATE_POLICY {
  int get bitfield => this.Flags.Anonymous.bitfield;
  set bitfield(int value) => this.Flags.Anonymous.bitfield = value;
}

extension PROCESSOR_IDLESTATE_POLICY_Extension on PROCESSOR_IDLESTATE_POLICY {
  int get AsWORD => this.Flags.AsWORD;
  set AsWORD(int value) => this.Flags.AsWORD = value;

  _PROCESSOR_IDLESTATE_POLICY__Flags_e__Union__Anonymous_e__Struct
      get Anonymous => this.Flags.Anonymous;
  set Anonymous(
          _PROCESSOR_IDLESTATE_POLICY__Flags_e__Union__Anonymous_e__Struct
              value) =>
      this.Flags.Anonymous = value;
}

/// {@category Struct}
class PROCESSOR_PERFSTATE_POLICY extends Struct {
  @Uint32()
  external int Revision;

  @Uint8()
  external int MaxThrottle;

  @Uint8()
  external int MinThrottle;

  @Uint8()
  external int BusyAdjThreshold;

  external _PROCESSOR_PERFSTATE_POLICY__Anonymous_e__Union Anonymous;

  @Uint32()
  external int TimeCheck;

  @Uint32()
  external int IncreaseTime;

  @Uint32()
  external int DecreaseTime;

  @Uint32()
  external int IncreasePercent;

  @Uint32()
  external int DecreasePercent;
}

/// {@category Struct}
class _PROCESSOR_PERFSTATE_POLICY__Anonymous_e__Union extends Union {
  @Uint8()
  external int Spare;

  external _PROCESSOR_PERFSTATE_POLICY__Anonymous_e__Union__Flags_e__Union
      Flags;
}

/// {@category Struct}
class _PROCESSOR_PERFSTATE_POLICY__Anonymous_e__Union__Flags_e__Union
    extends Union {
  @Uint8()
  external int AsBYTE;

  external _PROCESSOR_PERFSTATE_POLICY__Anonymous_e__Union__Flags_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _PROCESSOR_PERFSTATE_POLICY__Anonymous_e__Union__Flags_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint8()
  external int bitfield;
}

extension PROCESSOR_PERFSTATE_POLICY__Anonymous_e__Union__Flags_e__Union_Extension
    on PROCESSOR_PERFSTATE_POLICY {
  int get bitfield => this.Anonymous.Flags.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Flags.Anonymous.bitfield = value;
}

extension PROCESSOR_PERFSTATE_POLICY__Anonymous_e__Union_Extension
    on PROCESSOR_PERFSTATE_POLICY {
  int get AsBYTE => this.Anonymous.Flags.AsBYTE;
  set AsBYTE(int value) => this.Anonymous.Flags.AsBYTE = value;

  _PROCESSOR_PERFSTATE_POLICY__Anonymous_e__Union__Flags_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Flags.Anonymous;
  set Anonymous(
          _PROCESSOR_PERFSTATE_POLICY__Anonymous_e__Union__Flags_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Flags.Anonymous = value;
}

extension PROCESSOR_PERFSTATE_POLICY_Extension on PROCESSOR_PERFSTATE_POLICY {
  int get Spare => this.Anonymous.Spare;
  set Spare(int value) => this.Anonymous.Spare = value;

  _PROCESSOR_PERFSTATE_POLICY__Anonymous_e__Union__Flags_e__Union get Flags =>
      this.Anonymous.Flags;
  set Flags(
          _PROCESSOR_PERFSTATE_POLICY__Anonymous_e__Union__Flags_e__Union
              value) =>
      this.Anonymous.Flags = value;
}

/// {@category Struct}
class PROCESS_MITIGATION_ASLR_POLICY extends Struct {
  external _PROCESS_MITIGATION_ASLR_POLICY__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _PROCESS_MITIGATION_ASLR_POLICY__Anonymous_e__Union extends Union {
  @Uint32()
  external int Flags;

  external _PROCESS_MITIGATION_ASLR_POLICY__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _PROCESS_MITIGATION_ASLR_POLICY__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension PROCESS_MITIGATION_ASLR_POLICY__Anonymous_e__Union_Extension
    on PROCESS_MITIGATION_ASLR_POLICY {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension PROCESS_MITIGATION_ASLR_POLICY_Extension
    on PROCESS_MITIGATION_ASLR_POLICY {
  int get Flags => this.Anonymous.Flags;
  set Flags(int value) => this.Anonymous.Flags = value;

  _PROCESS_MITIGATION_ASLR_POLICY__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _PROCESS_MITIGATION_ASLR_POLICY__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category Struct}
class PROCESS_MITIGATION_BINARY_SIGNATURE_POLICY extends Struct {
  external _PROCESS_MITIGATION_BINARY_SIGNATURE_POLICY__Anonymous_e__Union
      Anonymous;
}

/// {@category Struct}
class _PROCESS_MITIGATION_BINARY_SIGNATURE_POLICY__Anonymous_e__Union
    extends Union {
  @Uint32()
  external int Flags;

  external _PROCESS_MITIGATION_BINARY_SIGNATURE_POLICY__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _PROCESS_MITIGATION_BINARY_SIGNATURE_POLICY__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension PROCESS_MITIGATION_BINARY_SIGNATURE_POLICY__Anonymous_e__Union_Extension
    on PROCESS_MITIGATION_BINARY_SIGNATURE_POLICY {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension PROCESS_MITIGATION_BINARY_SIGNATURE_POLICY_Extension
    on PROCESS_MITIGATION_BINARY_SIGNATURE_POLICY {
  int get Flags => this.Anonymous.Flags;
  set Flags(int value) => this.Anonymous.Flags = value;

  _PROCESS_MITIGATION_BINARY_SIGNATURE_POLICY__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _PROCESS_MITIGATION_BINARY_SIGNATURE_POLICY__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category Struct}
class PROCESS_MITIGATION_CHILD_PROCESS_POLICY extends Struct {
  external _PROCESS_MITIGATION_CHILD_PROCESS_POLICY__Anonymous_e__Union
      Anonymous;
}

/// {@category Struct}
class _PROCESS_MITIGATION_CHILD_PROCESS_POLICY__Anonymous_e__Union
    extends Union {
  @Uint32()
  external int Flags;

  external _PROCESS_MITIGATION_CHILD_PROCESS_POLICY__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _PROCESS_MITIGATION_CHILD_PROCESS_POLICY__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension PROCESS_MITIGATION_CHILD_PROCESS_POLICY__Anonymous_e__Union_Extension
    on PROCESS_MITIGATION_CHILD_PROCESS_POLICY {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension PROCESS_MITIGATION_CHILD_PROCESS_POLICY_Extension
    on PROCESS_MITIGATION_CHILD_PROCESS_POLICY {
  int get Flags => this.Anonymous.Flags;
  set Flags(int value) => this.Anonymous.Flags = value;

  _PROCESS_MITIGATION_CHILD_PROCESS_POLICY__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _PROCESS_MITIGATION_CHILD_PROCESS_POLICY__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category Struct}
class PROCESS_MITIGATION_CONTROL_FLOW_GUARD_POLICY extends Struct {
  external _PROCESS_MITIGATION_CONTROL_FLOW_GUARD_POLICY__Anonymous_e__Union
      Anonymous;
}

/// {@category Struct}
class _PROCESS_MITIGATION_CONTROL_FLOW_GUARD_POLICY__Anonymous_e__Union
    extends Union {
  @Uint32()
  external int Flags;

  external _PROCESS_MITIGATION_CONTROL_FLOW_GUARD_POLICY__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _PROCESS_MITIGATION_CONTROL_FLOW_GUARD_POLICY__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension PROCESS_MITIGATION_CONTROL_FLOW_GUARD_POLICY__Anonymous_e__Union_Extension
    on PROCESS_MITIGATION_CONTROL_FLOW_GUARD_POLICY {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension PROCESS_MITIGATION_CONTROL_FLOW_GUARD_POLICY_Extension
    on PROCESS_MITIGATION_CONTROL_FLOW_GUARD_POLICY {
  int get Flags => this.Anonymous.Flags;
  set Flags(int value) => this.Anonymous.Flags = value;

  _PROCESS_MITIGATION_CONTROL_FLOW_GUARD_POLICY__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _PROCESS_MITIGATION_CONTROL_FLOW_GUARD_POLICY__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category Struct}
class PROCESS_MITIGATION_DEP_POLICY extends Struct {
  external _PROCESS_MITIGATION_DEP_POLICY__Anonymous_e__Union Anonymous;

  @Uint8()
  external int Permanent;
}

/// {@category Struct}
class _PROCESS_MITIGATION_DEP_POLICY__Anonymous_e__Union extends Union {
  @Uint32()
  external int Flags;

  external _PROCESS_MITIGATION_DEP_POLICY__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _PROCESS_MITIGATION_DEP_POLICY__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension PROCESS_MITIGATION_DEP_POLICY__Anonymous_e__Union_Extension
    on PROCESS_MITIGATION_DEP_POLICY {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension PROCESS_MITIGATION_DEP_POLICY_Extension
    on PROCESS_MITIGATION_DEP_POLICY {
  int get Flags => this.Anonymous.Flags;
  set Flags(int value) => this.Anonymous.Flags = value;

  _PROCESS_MITIGATION_DEP_POLICY__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _PROCESS_MITIGATION_DEP_POLICY__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category Struct}
class PROCESS_MITIGATION_DYNAMIC_CODE_POLICY extends Struct {
  external _PROCESS_MITIGATION_DYNAMIC_CODE_POLICY__Anonymous_e__Union
      Anonymous;
}

/// {@category Struct}
class _PROCESS_MITIGATION_DYNAMIC_CODE_POLICY__Anonymous_e__Union
    extends Union {
  @Uint32()
  external int Flags;

  external _PROCESS_MITIGATION_DYNAMIC_CODE_POLICY__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _PROCESS_MITIGATION_DYNAMIC_CODE_POLICY__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension PROCESS_MITIGATION_DYNAMIC_CODE_POLICY__Anonymous_e__Union_Extension
    on PROCESS_MITIGATION_DYNAMIC_CODE_POLICY {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension PROCESS_MITIGATION_DYNAMIC_CODE_POLICY_Extension
    on PROCESS_MITIGATION_DYNAMIC_CODE_POLICY {
  int get Flags => this.Anonymous.Flags;
  set Flags(int value) => this.Anonymous.Flags = value;

  _PROCESS_MITIGATION_DYNAMIC_CODE_POLICY__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _PROCESS_MITIGATION_DYNAMIC_CODE_POLICY__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category Struct}
class PROCESS_MITIGATION_EXTENSION_POINT_DISABLE_POLICY extends Struct {
  external _PROCESS_MITIGATION_EXTENSION_POINT_DISABLE_POLICY__Anonymous_e__Union
      Anonymous;
}

/// {@category Struct}
class _PROCESS_MITIGATION_EXTENSION_POINT_DISABLE_POLICY__Anonymous_e__Union
    extends Union {
  @Uint32()
  external int Flags;

  external _PROCESS_MITIGATION_EXTENSION_POINT_DISABLE_POLICY__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _PROCESS_MITIGATION_EXTENSION_POINT_DISABLE_POLICY__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension PROCESS_MITIGATION_EXTENSION_POINT_DISABLE_POLICY__Anonymous_e__Union_Extension
    on PROCESS_MITIGATION_EXTENSION_POINT_DISABLE_POLICY {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension PROCESS_MITIGATION_EXTENSION_POINT_DISABLE_POLICY_Extension
    on PROCESS_MITIGATION_EXTENSION_POINT_DISABLE_POLICY {
  int get Flags => this.Anonymous.Flags;
  set Flags(int value) => this.Anonymous.Flags = value;

  _PROCESS_MITIGATION_EXTENSION_POINT_DISABLE_POLICY__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _PROCESS_MITIGATION_EXTENSION_POINT_DISABLE_POLICY__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category Struct}
class PROCESS_MITIGATION_FONT_DISABLE_POLICY extends Struct {
  external _PROCESS_MITIGATION_FONT_DISABLE_POLICY__Anonymous_e__Union
      Anonymous;
}

/// {@category Struct}
class _PROCESS_MITIGATION_FONT_DISABLE_POLICY__Anonymous_e__Union
    extends Union {
  @Uint32()
  external int Flags;

  external _PROCESS_MITIGATION_FONT_DISABLE_POLICY__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _PROCESS_MITIGATION_FONT_DISABLE_POLICY__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension PROCESS_MITIGATION_FONT_DISABLE_POLICY__Anonymous_e__Union_Extension
    on PROCESS_MITIGATION_FONT_DISABLE_POLICY {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension PROCESS_MITIGATION_FONT_DISABLE_POLICY_Extension
    on PROCESS_MITIGATION_FONT_DISABLE_POLICY {
  int get Flags => this.Anonymous.Flags;
  set Flags(int value) => this.Anonymous.Flags = value;

  _PROCESS_MITIGATION_FONT_DISABLE_POLICY__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _PROCESS_MITIGATION_FONT_DISABLE_POLICY__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category Struct}
class PROCESS_MITIGATION_IMAGE_LOAD_POLICY extends Struct {
  external _PROCESS_MITIGATION_IMAGE_LOAD_POLICY__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _PROCESS_MITIGATION_IMAGE_LOAD_POLICY__Anonymous_e__Union extends Union {
  @Uint32()
  external int Flags;

  external _PROCESS_MITIGATION_IMAGE_LOAD_POLICY__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _PROCESS_MITIGATION_IMAGE_LOAD_POLICY__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension PROCESS_MITIGATION_IMAGE_LOAD_POLICY__Anonymous_e__Union_Extension
    on PROCESS_MITIGATION_IMAGE_LOAD_POLICY {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension PROCESS_MITIGATION_IMAGE_LOAD_POLICY_Extension
    on PROCESS_MITIGATION_IMAGE_LOAD_POLICY {
  int get Flags => this.Anonymous.Flags;
  set Flags(int value) => this.Anonymous.Flags = value;

  _PROCESS_MITIGATION_IMAGE_LOAD_POLICY__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _PROCESS_MITIGATION_IMAGE_LOAD_POLICY__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category Struct}
class PROCESS_MITIGATION_PAYLOAD_RESTRICTION_POLICY extends Struct {
  external _PROCESS_MITIGATION_PAYLOAD_RESTRICTION_POLICY__Anonymous_e__Union
      Anonymous;
}

/// {@category Struct}
class _PROCESS_MITIGATION_PAYLOAD_RESTRICTION_POLICY__Anonymous_e__Union
    extends Union {
  @Uint32()
  external int Flags;

  external _PROCESS_MITIGATION_PAYLOAD_RESTRICTION_POLICY__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _PROCESS_MITIGATION_PAYLOAD_RESTRICTION_POLICY__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension PROCESS_MITIGATION_PAYLOAD_RESTRICTION_POLICY__Anonymous_e__Union_Extension
    on PROCESS_MITIGATION_PAYLOAD_RESTRICTION_POLICY {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension PROCESS_MITIGATION_PAYLOAD_RESTRICTION_POLICY_Extension
    on PROCESS_MITIGATION_PAYLOAD_RESTRICTION_POLICY {
  int get Flags => this.Anonymous.Flags;
  set Flags(int value) => this.Anonymous.Flags = value;

  _PROCESS_MITIGATION_PAYLOAD_RESTRICTION_POLICY__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _PROCESS_MITIGATION_PAYLOAD_RESTRICTION_POLICY__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category Struct}
class PROCESS_MITIGATION_REDIRECTION_TRUST_POLICY extends Struct {
  external _PROCESS_MITIGATION_REDIRECTION_TRUST_POLICY__Anonymous_e__Union
      Anonymous;
}

/// {@category Struct}
class _PROCESS_MITIGATION_REDIRECTION_TRUST_POLICY__Anonymous_e__Union
    extends Union {
  @Uint32()
  external int Flags;

  external _PROCESS_MITIGATION_REDIRECTION_TRUST_POLICY__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _PROCESS_MITIGATION_REDIRECTION_TRUST_POLICY__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension PROCESS_MITIGATION_REDIRECTION_TRUST_POLICY__Anonymous_e__Union_Extension
    on PROCESS_MITIGATION_REDIRECTION_TRUST_POLICY {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension PROCESS_MITIGATION_REDIRECTION_TRUST_POLICY_Extension
    on PROCESS_MITIGATION_REDIRECTION_TRUST_POLICY {
  int get Flags => this.Anonymous.Flags;
  set Flags(int value) => this.Anonymous.Flags = value;

  _PROCESS_MITIGATION_REDIRECTION_TRUST_POLICY__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _PROCESS_MITIGATION_REDIRECTION_TRUST_POLICY__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category Struct}
class PROCESS_MITIGATION_SIDE_CHANNEL_ISOLATION_POLICY extends Struct {
  external _PROCESS_MITIGATION_SIDE_CHANNEL_ISOLATION_POLICY__Anonymous_e__Union
      Anonymous;
}

/// {@category Struct}
class _PROCESS_MITIGATION_SIDE_CHANNEL_ISOLATION_POLICY__Anonymous_e__Union
    extends Union {
  @Uint32()
  external int Flags;

  external _PROCESS_MITIGATION_SIDE_CHANNEL_ISOLATION_POLICY__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _PROCESS_MITIGATION_SIDE_CHANNEL_ISOLATION_POLICY__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension PROCESS_MITIGATION_SIDE_CHANNEL_ISOLATION_POLICY__Anonymous_e__Union_Extension
    on PROCESS_MITIGATION_SIDE_CHANNEL_ISOLATION_POLICY {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension PROCESS_MITIGATION_SIDE_CHANNEL_ISOLATION_POLICY_Extension
    on PROCESS_MITIGATION_SIDE_CHANNEL_ISOLATION_POLICY {
  int get Flags => this.Anonymous.Flags;
  set Flags(int value) => this.Anonymous.Flags = value;

  _PROCESS_MITIGATION_SIDE_CHANNEL_ISOLATION_POLICY__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _PROCESS_MITIGATION_SIDE_CHANNEL_ISOLATION_POLICY__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category Struct}
class PROCESS_MITIGATION_STRICT_HANDLE_CHECK_POLICY extends Struct {
  external _PROCESS_MITIGATION_STRICT_HANDLE_CHECK_POLICY__Anonymous_e__Union
      Anonymous;
}

/// {@category Struct}
class _PROCESS_MITIGATION_STRICT_HANDLE_CHECK_POLICY__Anonymous_e__Union
    extends Union {
  @Uint32()
  external int Flags;

  external _PROCESS_MITIGATION_STRICT_HANDLE_CHECK_POLICY__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _PROCESS_MITIGATION_STRICT_HANDLE_CHECK_POLICY__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension PROCESS_MITIGATION_STRICT_HANDLE_CHECK_POLICY__Anonymous_e__Union_Extension
    on PROCESS_MITIGATION_STRICT_HANDLE_CHECK_POLICY {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension PROCESS_MITIGATION_STRICT_HANDLE_CHECK_POLICY_Extension
    on PROCESS_MITIGATION_STRICT_HANDLE_CHECK_POLICY {
  int get Flags => this.Anonymous.Flags;
  set Flags(int value) => this.Anonymous.Flags = value;

  _PROCESS_MITIGATION_STRICT_HANDLE_CHECK_POLICY__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _PROCESS_MITIGATION_STRICT_HANDLE_CHECK_POLICY__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category Struct}
class PROCESS_MITIGATION_SYSTEM_CALL_DISABLE_POLICY extends Struct {
  external _PROCESS_MITIGATION_SYSTEM_CALL_DISABLE_POLICY__Anonymous_e__Union
      Anonymous;
}

/// {@category Struct}
class _PROCESS_MITIGATION_SYSTEM_CALL_DISABLE_POLICY__Anonymous_e__Union
    extends Union {
  @Uint32()
  external int Flags;

  external _PROCESS_MITIGATION_SYSTEM_CALL_DISABLE_POLICY__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _PROCESS_MITIGATION_SYSTEM_CALL_DISABLE_POLICY__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension PROCESS_MITIGATION_SYSTEM_CALL_DISABLE_POLICY__Anonymous_e__Union_Extension
    on PROCESS_MITIGATION_SYSTEM_CALL_DISABLE_POLICY {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension PROCESS_MITIGATION_SYSTEM_CALL_DISABLE_POLICY_Extension
    on PROCESS_MITIGATION_SYSTEM_CALL_DISABLE_POLICY {
  int get Flags => this.Anonymous.Flags;
  set Flags(int value) => this.Anonymous.Flags = value;

  _PROCESS_MITIGATION_SYSTEM_CALL_DISABLE_POLICY__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _PROCESS_MITIGATION_SYSTEM_CALL_DISABLE_POLICY__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category Struct}
class PROCESS_MITIGATION_SYSTEM_CALL_FILTER_POLICY extends Struct {
  external _PROCESS_MITIGATION_SYSTEM_CALL_FILTER_POLICY__Anonymous_e__Union
      Anonymous;
}

/// {@category Struct}
class _PROCESS_MITIGATION_SYSTEM_CALL_FILTER_POLICY__Anonymous_e__Union
    extends Union {
  @Uint32()
  external int Flags;

  external _PROCESS_MITIGATION_SYSTEM_CALL_FILTER_POLICY__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _PROCESS_MITIGATION_SYSTEM_CALL_FILTER_POLICY__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension PROCESS_MITIGATION_SYSTEM_CALL_FILTER_POLICY__Anonymous_e__Union_Extension
    on PROCESS_MITIGATION_SYSTEM_CALL_FILTER_POLICY {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension PROCESS_MITIGATION_SYSTEM_CALL_FILTER_POLICY_Extension
    on PROCESS_MITIGATION_SYSTEM_CALL_FILTER_POLICY {
  int get Flags => this.Anonymous.Flags;
  set Flags(int value) => this.Anonymous.Flags = value;

  _PROCESS_MITIGATION_SYSTEM_CALL_FILTER_POLICY__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _PROCESS_MITIGATION_SYSTEM_CALL_FILTER_POLICY__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category Struct}
class PROCESS_MITIGATION_USER_SHADOW_STACK_POLICY extends Struct {
  external _PROCESS_MITIGATION_USER_SHADOW_STACK_POLICY__Anonymous_e__Union
      Anonymous;
}

/// {@category Struct}
class _PROCESS_MITIGATION_USER_SHADOW_STACK_POLICY__Anonymous_e__Union
    extends Union {
  @Uint32()
  external int Flags;

  external _PROCESS_MITIGATION_USER_SHADOW_STACK_POLICY__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _PROCESS_MITIGATION_USER_SHADOW_STACK_POLICY__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension PROCESS_MITIGATION_USER_SHADOW_STACK_POLICY__Anonymous_e__Union_Extension
    on PROCESS_MITIGATION_USER_SHADOW_STACK_POLICY {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension PROCESS_MITIGATION_USER_SHADOW_STACK_POLICY_Extension
    on PROCESS_MITIGATION_USER_SHADOW_STACK_POLICY {
  int get Flags => this.Anonymous.Flags;
  set Flags(int value) => this.Anonymous.Flags = value;

  _PROCESS_MITIGATION_USER_SHADOW_STACK_POLICY__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _PROCESS_MITIGATION_USER_SHADOW_STACK_POLICY__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category Struct}
class QUOTA_LIMITS_EX extends Struct {
  @IntPtr()
  external int PagedPoolLimit;

  @IntPtr()
  external int NonPagedPoolLimit;

  @IntPtr()
  external int MinimumWorkingSetSize;

  @IntPtr()
  external int MaximumWorkingSetSize;

  @IntPtr()
  external int PagefileLimit;

  @Int64()
  external int TimeLimit;

  @IntPtr()
  external int WorkingSetLimit;

  @IntPtr()
  external int Reserved2;

  @IntPtr()
  external int Reserved3;

  @IntPtr()
  external int Reserved4;

  @Uint32()
  external int Flags;

  external RATE_QUOTA_LIMIT CpuRateLimit;
}

/// {@category Struct}
class RATE_QUOTA_LIMIT extends Union {
  @Uint32()
  external int RateData;

  external _RATE_QUOTA_LIMIT__Anonymous_e__Struct Anonymous;
}

/// {@category Struct}
class _RATE_QUOTA_LIMIT__Anonymous_e__Struct extends Struct {
  @Uint32()
  external int bitfield;
}

extension RATE_QUOTA_LIMIT_Extension on RATE_QUOTA_LIMIT {
  int get bitfield => this.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.bitfield = value;
}

/// {@category Struct}
class REARRANGE_FILE_DATA extends Struct {
  @Uint64()
  external int SourceStartingOffset;

  @Uint64()
  external int TargetOffset;

  @IntPtr()
  external int SourceFileHandle;

  @Uint32()
  external int Length;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class REARRANGE_FILE_DATA32 extends Struct {
  @Uint64()
  external int SourceStartingOffset;

  @Uint64()
  external int TargetOffset;

  @Uint32()
  external int SourceFileHandle;

  @Uint32()
  external int Length;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class REDBOOK_DIGITAL_AUDIO_EXTRACTION_INFO extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Accurate;

  @Uint32()
  external int Supported;

  @Uint32()
  external int AccurateMask0;
}

/// {@category Struct}
class RESOURCEMANAGER_BASIC_INFORMATION extends Struct {
  external GUID ResourceManagerId;

  @Uint32()
  external int DescriptionLength;

  @Array(1)
  external Array<Uint16> _Description;

  String get Description {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_Description[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set Description(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _Description[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class RESOURCEMANAGER_COMPLETION_INFORMATION extends Struct {
  @IntPtr()
  external int IoCompletionPortHandle;

  @IntPtr()
  external int CompletionKey;
}

/// {@category Struct}
class RESUME_PERFORMANCE extends Struct {
  @Uint32()
  external int PostTimeMs;

  @Uint64()
  external int TotalResumeTimeMs;

  @Uint64()
  external int ResumeCompleteTimestamp;
}

/// {@category Struct}
class RemBRUSH extends Struct {
  @Uint32()
  external int cbData;

  @Array(1)
  external Array<Uint8> data;
}

/// {@category Struct}
class RemHBITMAP extends Struct {
  @Uint32()
  external int cbData;

  @Array(1)
  external Array<Uint8> data;
}

/// {@category Struct}
class RemHENHMETAFILE extends Struct {
  @Uint32()
  external int cbData;

  @Array(1)
  external Array<Uint8> data;
}

/// {@category Struct}
class RemHGLOBAL extends Struct {
  @Int32()
  external int fNullHGlobal;

  @Uint32()
  external int cbData;

  @Array(1)
  external Array<Uint8> data;
}

/// {@category Struct}
class RemHMETAFILEPICT extends Struct {
  @Int32()
  external int mm;

  @Int32()
  external int xExt;

  @Int32()
  external int yExt;

  @Uint32()
  external int cbData;

  @Array(1)
  external Array<Uint8> data;
}

/// {@category Struct}
class RemHPALETTE extends Struct {
  @Uint32()
  external int cbData;

  @Array(1)
  external Array<Uint8> data;
}

/// {@category Struct}
class RemotableHandle extends Struct {
  @Int32()
  external int fContext;

  external _RemotableHandle__u_e__Struct u;
}

/// {@category Struct}
class _RemotableHandle__u_e__Struct extends Union {
  @Int32()
  external int hInproc;

  @Int32()
  external int hRemote;
}

extension RemotableHandle_Extension on RemotableHandle {
  int get hInproc => this.u.hInproc;
  set hInproc(int value) => this.u.hInproc = value;

  int get hRemote => this.u.hRemote;
  set hRemote(int value) => this.u.hRemote = value;
}

/// {@category Struct}
class SCOPE_TABLE_AMD64 extends Struct {
  @Uint32()
  external int Count;

  @Array(1)
  external Array<_SCOPE_TABLE_AMD64__Anonymous_e__Struct> ScopeRecord;
}

/// {@category Struct}
class _SCOPE_TABLE_AMD64__Anonymous_e__Struct extends Struct {
  @Uint32()
  external int BeginAddress;

  @Uint32()
  external int EndAddress;

  @Uint32()
  external int HandlerAddress;

  @Uint32()
  external int JumpTarget;
}

/// {@category Struct}
class SCOPE_TABLE_ARM extends Struct {
  @Uint32()
  external int Count;

  @Array(1)
  external Array<_SCOPE_TABLE_ARM__Anonymous_e__Struct> ScopeRecord;
}

/// {@category Struct}
class _SCOPE_TABLE_ARM__Anonymous_e__Struct extends Struct {
  @Uint32()
  external int BeginAddress;

  @Uint32()
  external int EndAddress;

  @Uint32()
  external int HandlerAddress;

  @Uint32()
  external int JumpTarget;
}

/// {@category Struct}
class SCOPE_TABLE_ARM64 extends Struct {
  @Uint32()
  external int Count;

  @Array(1)
  external Array<_SCOPE_TABLE_ARM64__Anonymous_e__Struct> ScopeRecord;
}

/// {@category Struct}
class _SCOPE_TABLE_ARM64__Anonymous_e__Struct extends Struct {
  @Uint32()
  external int BeginAddress;

  @Uint32()
  external int EndAddress;

  @Uint32()
  external int HandlerAddress;

  @Uint32()
  external int JumpTarget;
}

/// {@category Struct}
class SCRUB_DATA_INPUT extends Struct {
  @Uint32()
  external int Size;

  @Uint32()
  external int Flags;

  @Uint32()
  external int MaximumIos;

  @Array(4)
  external Array<Uint32> ObjectId;

  @Array(41)
  external Array<Uint32> Reserved;

  @Array(1040)
  external Array<Uint8> ResumeContext;
}

/// {@category Struct}
class SCRUB_DATA_OUTPUT extends Struct {
  @Uint32()
  external int Size;

  @Uint32()
  external int Flags;

  @Uint32()
  external int Status;

  @Uint64()
  external int ErrorFileOffset;

  @Uint64()
  external int ErrorLength;

  @Uint64()
  external int NumberOfBytesRepaired;

  @Uint64()
  external int NumberOfBytesFailed;

  @Uint64()
  external int InternalFileReference;

  @Uint16()
  external int ResumeContextLength;

  @Uint16()
  external int ParityExtentDataOffset;

  @Array(9)
  external Array<Uint32> Reserved;

  @Uint64()
  external int NumberOfMetadataBytesProcessed;

  @Uint64()
  external int NumberOfDataBytesProcessed;

  @Uint64()
  external int TotalNumberOfMetadataBytesInUse;

  @Uint64()
  external int TotalNumberOfDataBytesInUse;

  @Uint64()
  external int DataBytesSkippedDueToNoAllocation;

  @Uint64()
  external int DataBytesSkippedDueToInvalidRun;

  @Uint64()
  external int DataBytesSkippedDueToIntegrityStream;

  @Uint64()
  external int DataBytesSkippedDueToRegionBeingClean;

  @Uint64()
  external int DataBytesSkippedDueToLockConflict;

  @Uint64()
  external int DataBytesSkippedDueToNoScrubDataFlag;

  @Uint64()
  external int DataBytesSkippedDueToNoScrubNonIntegrityStreamFlag;

  @Uint64()
  external int DataBytesScrubbed;

  @Array(1040)
  external Array<Uint8> ResumeContext;
}

/// {@category Struct}
class SCRUB_PARITY_EXTENT extends Struct {
  @Int64()
  external int Offset;

  @Uint64()
  external int Length;
}

/// {@category Struct}
class SCRUB_PARITY_EXTENT_DATA extends Struct {
  @Uint16()
  external int Size;

  @Uint16()
  external int Flags;

  @Uint16()
  external int NumberOfParityExtents;

  @Uint16()
  external int MaximumNumberOfParityExtents;

  @Array(1)
  external Array<SCRUB_PARITY_EXTENT> ParityExtents;
}

/// {@category Struct}
class SECURITY_DESCRIPTOR_RELATIVE extends Struct {
  @Uint8()
  external int Revision;

  @Uint8()
  external int Sbz1;

  @Uint16()
  external int Control;

  @Uint32()
  external int Owner;

  @Uint32()
  external int Group;

  @Uint32()
  external int Sacl;

  @Uint32()
  external int Dacl;
}

/// {@category Struct}
class SECURITY_OBJECT_AI_PARAMS extends Struct {
  @Uint32()
  external int Size;

  @Uint32()
  external int ConstraintMask;
}

/// {@category Struct}
class SERVERSILO_BASIC_INFORMATION extends Struct {
  @Uint32()
  external int ServiceSessionId;

  @Int32()
  external int State;

  @Uint32()
  external int ExitStatus;

  @Uint8()
  external int IsDownlevelContainer;

  external Pointer ApiSetSchema;

  external Pointer HostApiSetSchema;
}

/// {@category Struct}
class SE_TOKEN_USER extends Struct {
  external _SE_TOKEN_USER__Anonymous1_e__Union Anonymous1;

  external _SE_TOKEN_USER__Anonymous2_e__Union Anonymous2;
}

/// {@category Struct}
class _SE_TOKEN_USER__Anonymous1_e__Union extends Union {
  external TOKEN_USER TokenUser;

  external SID_AND_ATTRIBUTES User;
}

extension SE_TOKEN_USER_Extension on SE_TOKEN_USER {
  TOKEN_USER get TokenUser => this.Anonymous1.TokenUser;
  set TokenUser(TOKEN_USER value) => this.Anonymous1.TokenUser = value;

  SID_AND_ATTRIBUTES get User => this.Anonymous1.User;
  set User(SID_AND_ATTRIBUTES value) => this.Anonymous1.User = value;
}

/// {@category Struct}
class _SE_TOKEN_USER__Anonymous2_e__Union extends Union {
  external SID Sid;

  @Array(68)
  external Array<Uint8> Buffer;
}

extension SE_TOKEN_USER_Extension_1 on SE_TOKEN_USER {
  SID get Sid => this.Anonymous2.Sid;
  set Sid(SID value) => this.Anonymous2.Sid = value;

  Array<Uint8> get Buffer => this.Anonymous2.Buffer;
  set Buffer(Array<Uint8> value) => this.Anonymous2.Buffer = value;
}

/// {@category Struct}
class SHARED_VIRTUAL_DISK_SUPPORT extends Struct {
  @Int32()
  external int SharedVirtualDiskSupport;

  @Int32()
  external int HandleState;
}

/// {@category Struct}
class SHUFFLE_FILE_DATA extends Struct {
  @Int64()
  external int StartingOffset;

  @Int64()
  external int Length;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class SILOOBJECT_BASIC_INFORMATION extends Struct {
  @Uint32()
  external int SiloId;

  @Uint32()
  external int SiloParentId;

  @Uint32()
  external int NumberOfProcesses;

  @Uint8()
  external int IsInServerSilo;

  @Array(3)
  external Array<Uint8> Reserved;
}

/// {@category Struct}
class SUPPORTED_OS_INFO extends Struct {
  @Uint16()
  external int MajorVersion;

  @Uint16()
  external int MinorVersion;
}

/// {@category Struct}
class TAPE_CREATE_PARTITION extends Struct {
  @Uint32()
  external int Method;

  @Uint32()
  external int Count;

  @Uint32()
  external int Size;
}

/// {@category Struct}
class TAPE_GET_DRIVE_PARAMETERS extends Struct {
  @Uint8()
  external int ECC;

  @Uint8()
  external int Compression;

  @Uint8()
  external int DataPadding;

  @Uint8()
  external int ReportSetmarks;

  @Uint32()
  external int DefaultBlockSize;

  @Uint32()
  external int MaximumBlockSize;

  @Uint32()
  external int MinimumBlockSize;

  @Uint32()
  external int MaximumPartitionCount;

  @Uint32()
  external int FeaturesLow;

  @Uint32()
  external int FeaturesHigh;

  @Uint32()
  external int EOTWarningZoneSize;
}

/// {@category Struct}
class TAPE_GET_MEDIA_PARAMETERS extends Struct {
  @Int64()
  external int Capacity;

  @Int64()
  external int Remaining;

  @Uint32()
  external int BlockSize;

  @Uint32()
  external int PartitionCount;

  @Uint8()
  external int WriteProtected;
}

/// {@category Struct}
class TAPE_SET_DRIVE_PARAMETERS extends Struct {
  @Uint8()
  external int ECC;

  @Uint8()
  external int Compression;

  @Uint8()
  external int DataPadding;

  @Uint8()
  external int ReportSetmarks;

  @Uint32()
  external int EOTWarningZoneSize;
}

/// {@category Struct}
class TAPE_SET_MEDIA_PARAMETERS extends Struct {
  @Uint32()
  external int BlockSize;
}

/// {@category Struct}
class TAPE_WMI_OPERATIONS extends Struct {
  @Uint32()
  external int Method;

  @Uint32()
  external int DataBufferSize;

  external Pointer DataBuffer;
}

/// {@category Struct}
class TEB extends Opaque {}

/// {@category Struct}
class TOKEN_BNO_ISOLATION_INFORMATION extends Struct {
  external Pointer<Utf16> IsolationPrefix;

  @Uint8()
  external int IsolationEnabled;
}

/// {@category Struct}
class TOKEN_SID_INFORMATION extends Struct {
  @IntPtr()
  external int Sid;
}

/// {@category Struct}
class TP_CLEANUP_GROUP extends Opaque {}

/// {@category Struct}
class TP_POOL extends Opaque {}

/// {@category Struct}
class TRANSACTIONMANAGER_BASIC_INFORMATION extends Struct {
  external GUID TmIdentity;

  @Int64()
  external int VirtualClock;
}

/// {@category Struct}
class TRANSACTIONMANAGER_LOGPATH_INFORMATION extends Struct {
  @Uint32()
  external int LogPathLength;

  @Array(1)
  external Array<Uint16> _LogPath;

  String get LogPath {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_LogPath[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set LogPath(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _LogPath[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class TRANSACTIONMANAGER_LOG_INFORMATION extends Struct {
  external GUID LogIdentity;
}

/// {@category Struct}
class TRANSACTIONMANAGER_OLDEST_INFORMATION extends Struct {
  external GUID OldestTransactionGuid;
}

/// {@category Struct}
class TRANSACTIONMANAGER_RECOVERY_INFORMATION extends Struct {
  @Uint64()
  external int LastRecoveredLsn;
}

/// {@category Struct}
class TRANSACTION_BASIC_INFORMATION extends Struct {
  external GUID TransactionId;

  @Uint32()
  external int State;

  @Uint32()
  external int Outcome;
}

/// {@category Struct}
class TRANSACTION_BIND_INFORMATION extends Struct {
  @IntPtr()
  external int TmHandle;
}

/// {@category Struct}
class TRANSACTION_ENLISTMENTS_INFORMATION extends Struct {
  @Uint32()
  external int NumberOfEnlistments;

  @Array(1)
  external Array<TRANSACTION_ENLISTMENT_PAIR> EnlistmentPair;
}

/// {@category Struct}
class TRANSACTION_ENLISTMENT_PAIR extends Struct {
  external GUID EnlistmentId;

  external GUID ResourceManagerId;
}

/// {@category Struct}
class TRANSACTION_LIST_ENTRY extends Struct {
  external GUID UOW;
}

/// {@category Struct}
class TRANSACTION_LIST_INFORMATION extends Struct {
  @Uint32()
  external int NumberOfTransactions;

  @Array(1)
  external Array<TRANSACTION_LIST_ENTRY> TransactionInformation;
}

/// {@category Struct}
class TRANSACTION_PROPERTIES_INFORMATION extends Struct {
  @Uint32()
  external int IsolationLevel;

  @Uint32()
  external int IsolationFlags;

  @Int64()
  external int Timeout;

  @Uint32()
  external int Outcome;

  @Uint32()
  external int DescriptionLength;

  @Array(1)
  external Array<Uint16> _Description;

  String get Description {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_Description[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set Description(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _Description[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class TRANSACTION_SUPERIOR_ENLISTMENT_INFORMATION extends Struct {
  external TRANSACTION_ENLISTMENT_PAIR SuperiorEnlistmentPair;
}

/// {@category Struct}
class UMS_CREATE_THREAD_ATTRIBUTES extends Struct {
  @Uint32()
  external int UmsVersion;

  external Pointer UmsContext;

  external Pointer UmsCompletionList;
}

/// {@category Struct}
class VolLockBroadcast extends Struct {
  external DEV_BROADCAST_HDR vlb_dbh;

  @Uint32()
  external int vlb_owner;

  @Uint8()
  external int vlb_perms;

  @Uint8()
  external int vlb_lockType;

  @Uint8()
  external int vlb_drive;

  @Uint8()
  external int vlb_flags;
}

/// {@category Struct}
class XSAVE_CET_U_FORMAT extends Struct {
  @Uint64()
  external int Ia32CetUMsr;

  @Uint64()
  external int Ia32Pl3SspMsr;
}

/// {@category Struct}
class DEV_BROADCAST_HEADER extends Struct {
  @Uint32()
  external int dbcd_size;

  @Uint32()
  external int dbcd_devicetype;

  @Uint32()
  external int dbcd_reserved;
}

/// {@category Struct}
class DEV_BROADCAST_USERDEFINED extends Struct {
  external DEV_BROADCAST_HDR dbud_dbh;

  @Array(1)
  external Array<Uint8> dbud_szName;
}

/// {@category Struct}
class remoteMETAFILEPICT extends Struct {
  @Int32()
  external int mm;

  @Int32()
  external int xExt;

  @Int32()
  external int yExt;

  external Pointer<userHMETAFILE> hMF;
}

/// {@category Struct}
class userBITMAP extends Struct {
  @Int32()
  external int bmType;

  @Int32()
  external int bmWidth;

  @Int32()
  external int bmHeight;

  @Int32()
  external int bmWidthBytes;

  @Uint16()
  external int bmPlanes;

  @Uint16()
  external int bmBitsPixel;

  @Uint32()
  external int cbSize;

  @Array(1)
  external Array<Uint8> pBuffer;
}

/// {@category Struct}
class userCLIPFORMAT extends Struct {
  @Int32()
  external int fContext;

  external _userCLIPFORMAT__u_e__Struct u;
}

/// {@category Struct}
class _userCLIPFORMAT__u_e__Struct extends Union {
  @Uint32()
  external int dwValue;

  external Pointer<Utf16> pwszName;
}

extension userCLIPFORMAT_Extension on userCLIPFORMAT {
  int get dwValue => this.u.dwValue;
  set dwValue(int value) => this.u.dwValue = value;

  Pointer<Utf16> get pwszName => this.u.pwszName;
  set pwszName(Pointer<Utf16> value) => this.u.pwszName = value;
}

/// {@category Struct}
class userHBITMAP extends Struct {
  @Int32()
  external int fContext;

  external _userHBITMAP__u_e__Struct u;
}

/// {@category Struct}
class _userHBITMAP__u_e__Struct extends Union {
  @Int32()
  external int hInproc;

  external Pointer<userBITMAP> hRemote;

  @Int64()
  external int hInproc64;
}

extension userHBITMAP_Extension on userHBITMAP {
  int get hInproc => this.u.hInproc;
  set hInproc(int value) => this.u.hInproc = value;

  Pointer<userBITMAP> get hRemote => this.u.hRemote;
  set hRemote(Pointer<userBITMAP> value) => this.u.hRemote = value;

  int get hInproc64 => this.u.hInproc64;
  set hInproc64(int value) => this.u.hInproc64 = value;
}

/// {@category Struct}
class userHENHMETAFILE extends Struct {
  @Int32()
  external int fContext;

  external _userHENHMETAFILE__u_e__Struct u;
}

/// {@category Struct}
class _userHENHMETAFILE__u_e__Struct extends Union {
  @Int32()
  external int hInproc;

  external Pointer<BYTE_BLOB> hRemote;

  @Int64()
  external int hInproc64;
}

extension userHENHMETAFILE_Extension on userHENHMETAFILE {
  int get hInproc => this.u.hInproc;
  set hInproc(int value) => this.u.hInproc = value;

  Pointer<BYTE_BLOB> get hRemote => this.u.hRemote;
  set hRemote(Pointer<BYTE_BLOB> value) => this.u.hRemote = value;

  int get hInproc64 => this.u.hInproc64;
  set hInproc64(int value) => this.u.hInproc64 = value;
}

/// {@category Struct}
class userHGLOBAL extends Struct {
  @Int32()
  external int fContext;

  external _userHGLOBAL__u_e__Struct u;
}

/// {@category Struct}
class _userHGLOBAL__u_e__Struct extends Union {
  @Int32()
  external int hInproc;

  external Pointer<FLAGGED_BYTE_BLOB> hRemote;

  @Int64()
  external int hInproc64;
}

extension userHGLOBAL_Extension on userHGLOBAL {
  int get hInproc => this.u.hInproc;
  set hInproc(int value) => this.u.hInproc = value;

  Pointer<FLAGGED_BYTE_BLOB> get hRemote => this.u.hRemote;
  set hRemote(Pointer<FLAGGED_BYTE_BLOB> value) => this.u.hRemote = value;

  int get hInproc64 => this.u.hInproc64;
  set hInproc64(int value) => this.u.hInproc64 = value;
}

/// {@category Struct}
class userHMETAFILE extends Struct {
  @Int32()
  external int fContext;

  external _userHMETAFILE__u_e__Struct u;
}

/// {@category Struct}
class _userHMETAFILE__u_e__Struct extends Union {
  @Int32()
  external int hInproc;

  external Pointer<BYTE_BLOB> hRemote;

  @Int64()
  external int hInproc64;
}

extension userHMETAFILE_Extension on userHMETAFILE {
  int get hInproc => this.u.hInproc;
  set hInproc(int value) => this.u.hInproc = value;

  Pointer<BYTE_BLOB> get hRemote => this.u.hRemote;
  set hRemote(Pointer<BYTE_BLOB> value) => this.u.hRemote = value;

  int get hInproc64 => this.u.hInproc64;
  set hInproc64(int value) => this.u.hInproc64 = value;
}

/// {@category Struct}
class userHMETAFILEPICT extends Struct {
  @Int32()
  external int fContext;

  external _userHMETAFILEPICT__u_e__Struct u;
}

/// {@category Struct}
class _userHMETAFILEPICT__u_e__Struct extends Union {
  @Int32()
  external int hInproc;

  external Pointer<remoteMETAFILEPICT> hRemote;

  @Int64()
  external int hInproc64;
}

extension userHMETAFILEPICT_Extension on userHMETAFILEPICT {
  int get hInproc => this.u.hInproc;
  set hInproc(int value) => this.u.hInproc = value;

  Pointer<remoteMETAFILEPICT> get hRemote => this.u.hRemote;
  set hRemote(Pointer<remoteMETAFILEPICT> value) => this.u.hRemote = value;

  int get hInproc64 => this.u.hInproc64;
  set hInproc64(int value) => this.u.hInproc64 = value;
}

/// {@category Struct}
class userHPALETTE extends Struct {
  @Int32()
  external int fContext;

  external _userHPALETTE__u_e__Struct u;
}

/// {@category Struct}
class _userHPALETTE__u_e__Struct extends Union {
  @Int32()
  external int hInproc;

  external Pointer<LOGPALETTE> hRemote;

  @Int64()
  external int hInproc64;
}

extension userHPALETTE_Extension on userHPALETTE {
  int get hInproc => this.u.hInproc;
  set hInproc(int value) => this.u.hInproc = value;

  Pointer<LOGPALETTE> get hRemote => this.u.hRemote;
  set hRemote(Pointer<LOGPALETTE> value) => this.u.hRemote = value;

  int get hInproc64 => this.u.hInproc64;
  set hInproc64(int value) => this.u.hInproc64 = value;
}
