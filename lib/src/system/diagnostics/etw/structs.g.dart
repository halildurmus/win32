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
import '../../../system/diagnostics/etw/structs.g.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/diagnostics/etw/callbacks.g.dart';
import '../../../system/time/structs.g.dart';

/// {@category Struct}
class CLASSIC_EVENT_ID extends Struct {
  external GUID EventGuid;

  @Uint8()
  external int Type;

  @Array(7)
  external Array<Uint8> Reserved;
}

/// {@category Struct}
class ENABLE_TRACE_PARAMETERS extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int EnableProperty;

  @Uint32()
  external int ControlFlags;

  external GUID SourceId;

  external Pointer<EVENT_FILTER_DESCRIPTOR> EnableFilterDesc;

  @Uint32()
  external int FilterDescCount;
}

/// {@category Struct}
class ENABLE_TRACE_PARAMETERS_V1 extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int EnableProperty;

  @Uint32()
  external int ControlFlags;

  external GUID SourceId;

  external Pointer<EVENT_FILTER_DESCRIPTOR> EnableFilterDesc;
}

/// {@category Struct}
class ETW_BUFFER_CONTEXT extends Struct {
  external _ETW_BUFFER_CONTEXT__Anonymous_e__Union Anonymous;

  @Uint16()
  external int LoggerId;
}

/// {@category Struct}
class _ETW_BUFFER_CONTEXT__Anonymous_e__Union extends Union {
  external _ETW_BUFFER_CONTEXT__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;

  @Uint16()
  external int ProcessorIndex;
}

/// {@category Struct}
class _ETW_BUFFER_CONTEXT__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint8()
  external int ProcessorNumber;

  @Uint8()
  external int Alignment;
}

extension ETW_BUFFER_CONTEXT__Anonymous_e__Union_Extension
    on ETW_BUFFER_CONTEXT {
  int get ProcessorNumber => this.Anonymous.Anonymous.ProcessorNumber;
  set ProcessorNumber(int value) =>
      this.Anonymous.Anonymous.ProcessorNumber = value;

  int get Alignment => this.Anonymous.Anonymous.Alignment;
  set Alignment(int value) => this.Anonymous.Anonymous.Alignment = value;
}

extension ETW_BUFFER_CONTEXT_Extension on ETW_BUFFER_CONTEXT {
  _ETW_BUFFER_CONTEXT__Anonymous_e__Union__Anonymous_e__Struct get Anonymous =>
      this.Anonymous.Anonymous;
  set Anonymous(
          _ETW_BUFFER_CONTEXT__Anonymous_e__Union__Anonymous_e__Struct value) =>
      this.Anonymous.Anonymous = value;

  int get ProcessorIndex => this.Anonymous.ProcessorIndex;
  set ProcessorIndex(int value) => this.Anonymous.ProcessorIndex = value;
}

/// {@category Struct}
class ETW_PMC_COUNTER_OWNER extends Struct {
  @Int32()
  external int OwnerType;

  @Uint32()
  external int ProfileSource;

  @Uint32()
  external int OwnerTag;
}

/// {@category Struct}
class ETW_PMC_COUNTER_OWNERSHIP_STATUS extends Struct {
  @Uint32()
  external int ProcessorNumber;

  @Uint32()
  external int NumberOfCounters;

  @Array(1)
  external Array<ETW_PMC_COUNTER_OWNER> CounterOwners;
}

/// {@category Struct}
class ETW_TRACE_PARTITION_INFORMATION extends Struct {
  external GUID PartitionId;

  external GUID ParentId;

  @Int64()
  external int QpcOffsetFromRoot;

  @Uint32()
  external int PartitionType;
}

/// {@category Struct}
class ETW_TRACE_PARTITION_INFORMATION_V2 extends Struct {
  @Int64()
  external int QpcOffsetFromRoot;

  @Uint32()
  external int PartitionType;

  external Pointer<Utf16> PartitionId;

  external Pointer<Utf16> ParentId;
}

/// {@category Struct}
class EVENT_DATA_DESCRIPTOR extends Struct {
  @Uint64()
  external int Ptr;

  @Uint32()
  external int Size;

  external _EVENT_DATA_DESCRIPTOR__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _EVENT_DATA_DESCRIPTOR__Anonymous_e__Union extends Union {
  @Uint32()
  external int Reserved;

  external _EVENT_DATA_DESCRIPTOR__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _EVENT_DATA_DESCRIPTOR__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint8()
  external int Type;

  @Uint8()
  external int Reserved1;

  @Uint16()
  external int Reserved2;
}

extension EVENT_DATA_DESCRIPTOR__Anonymous_e__Union_Extension
    on EVENT_DATA_DESCRIPTOR {
  int get Type => this.Anonymous.Anonymous.Type;
  set Type(int value) => this.Anonymous.Anonymous.Type = value;

  int get Reserved1 => this.Anonymous.Anonymous.Reserved1;
  set Reserved1(int value) => this.Anonymous.Anonymous.Reserved1 = value;

  int get Reserved2 => this.Anonymous.Anonymous.Reserved2;
  set Reserved2(int value) => this.Anonymous.Anonymous.Reserved2 = value;
}

extension EVENT_DATA_DESCRIPTOR_Extension on EVENT_DATA_DESCRIPTOR {
  int get Reserved => this.Anonymous.Reserved;
  set Reserved(int value) => this.Anonymous.Reserved = value;

  _EVENT_DATA_DESCRIPTOR__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _EVENT_DATA_DESCRIPTOR__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category Struct}
class EVENT_DESCRIPTOR extends Struct {
  @Uint16()
  external int Id;

  @Uint8()
  external int Version;

  @Uint8()
  external int Channel;

  @Uint8()
  external int Level;

  @Uint8()
  external int Opcode;

  @Uint16()
  external int Task;

  @Uint64()
  external int Keyword;
}

/// {@category Struct}
class EVENT_EXTENDED_ITEM_EVENT_KEY extends Struct {
  @Uint64()
  external int Key;
}

/// {@category Struct}
class EVENT_EXTENDED_ITEM_INSTANCE extends Struct {
  @Uint32()
  external int InstanceId;

  @Uint32()
  external int ParentInstanceId;

  external GUID ParentGuid;
}

/// {@category Struct}
class EVENT_EXTENDED_ITEM_PEBS_INDEX extends Struct {
  @Uint64()
  external int PebsIndex;
}

/// {@category Struct}
class EVENT_EXTENDED_ITEM_PMC_COUNTERS extends Struct {
  @Array(1)
  external Array<Uint64> Counter;
}

/// {@category Struct}
class EVENT_EXTENDED_ITEM_PROCESS_START_KEY extends Struct {
  @Uint64()
  external int ProcessStartKey;
}

/// {@category Struct}
class EVENT_EXTENDED_ITEM_RELATED_ACTIVITYID extends Struct {
  external GUID RelatedActivityId;
}

/// {@category Struct}
class EVENT_EXTENDED_ITEM_STACK_KEY32 extends Struct {
  @Uint64()
  external int MatchId;

  @Uint32()
  external int StackKey;

  @Uint32()
  external int Padding;
}

/// {@category Struct}
class EVENT_EXTENDED_ITEM_STACK_KEY64 extends Struct {
  @Uint64()
  external int MatchId;

  @Uint64()
  external int StackKey;
}

/// {@category Struct}
class EVENT_EXTENDED_ITEM_STACK_TRACE32 extends Struct {
  @Uint64()
  external int MatchId;

  @Array(1)
  external Array<Uint32> Address;
}

/// {@category Struct}
class EVENT_EXTENDED_ITEM_STACK_TRACE64 extends Struct {
  @Uint64()
  external int MatchId;

  @Array(1)
  external Array<Uint64> Address;
}

/// {@category Struct}
class EVENT_EXTENDED_ITEM_TS_ID extends Struct {
  @Uint32()
  external int SessionId;
}

/// {@category Struct}
class EVENT_FILTER_DESCRIPTOR extends Struct {
  @Uint64()
  external int Ptr;

  @Uint32()
  external int Size;

  @Uint32()
  external int Type;
}

/// {@category Struct}
class EVENT_FILTER_EVENT_ID extends Struct {
  @Uint8()
  external int FilterIn;

  @Uint8()
  external int Reserved;

  @Uint16()
  external int Count;

  @Array(1)
  external Array<Uint16> Events;
}

/// {@category Struct}
class EVENT_FILTER_EVENT_NAME extends Struct {
  @Uint64()
  external int MatchAnyKeyword;

  @Uint64()
  external int MatchAllKeyword;

  @Uint8()
  external int Level;

  @Uint8()
  external int FilterIn;

  @Uint16()
  external int NameCount;

  @Array(1)
  external Array<Uint8> Names;
}

/// {@category Struct}
class EVENT_FILTER_HEADER extends Struct {
  @Uint16()
  external int Id;

  @Uint8()
  external int Version;

  @Array(5)
  external Array<Uint8> Reserved;

  @Uint64()
  external int InstanceId;

  @Uint32()
  external int Size;

  @Uint32()
  external int NextOffset;
}

/// {@category Struct}
class EVENT_FILTER_LEVEL_K extends Struct {
  @Uint64()
  external int MatchAnyKeyword;

  @Uint64()
  external int MatchAllKeyword;

  @Uint8()
  external int Level;

  @Uint8()
  external int FilterIn;
}

/// {@category Struct}
class EVENT_HEADER extends Struct {
  @Uint16()
  external int Size;

  @Uint16()
  external int HeaderType;

  @Uint16()
  external int Flags;

  @Uint16()
  external int EventProperty;

  @Uint32()
  external int ThreadId;

  @Uint32()
  external int ProcessId;

  @Int64()
  external int TimeStamp;

  external GUID ProviderId;

  external EVENT_DESCRIPTOR EventDescriptor;

  external _EVENT_HEADER__Anonymous_e__Union Anonymous;

  external GUID ActivityId;
}

/// {@category Struct}
class _EVENT_HEADER__Anonymous_e__Union extends Union {
  external _EVENT_HEADER__Anonymous_e__Union__Anonymous_e__Struct Anonymous;

  @Uint64()
  external int ProcessorTime;
}

/// {@category Struct}
class _EVENT_HEADER__Anonymous_e__Union__Anonymous_e__Struct extends Struct {
  @Uint32()
  external int KernelTime;

  @Uint32()
  external int UserTime;
}

extension EVENT_HEADER__Anonymous_e__Union_Extension on EVENT_HEADER {
  int get KernelTime => this.Anonymous.Anonymous.KernelTime;
  set KernelTime(int value) => this.Anonymous.Anonymous.KernelTime = value;

  int get UserTime => this.Anonymous.Anonymous.UserTime;
  set UserTime(int value) => this.Anonymous.Anonymous.UserTime = value;
}

extension EVENT_HEADER_Extension on EVENT_HEADER {
  _EVENT_HEADER__Anonymous_e__Union__Anonymous_e__Struct get Anonymous =>
      this.Anonymous.Anonymous;
  set Anonymous(_EVENT_HEADER__Anonymous_e__Union__Anonymous_e__Struct value) =>
      this.Anonymous.Anonymous = value;

  int get ProcessorTime => this.Anonymous.ProcessorTime;
  set ProcessorTime(int value) => this.Anonymous.ProcessorTime = value;
}

/// {@category Struct}
class EVENT_HEADER_EXTENDED_DATA_ITEM extends Struct {
  @Uint16()
  external int Reserved1;

  @Uint16()
  external int ExtType;

  external _EVENT_HEADER_EXTENDED_DATA_ITEM__Anonymous_e__Struct Anonymous;

  @Uint16()
  external int DataSize;

  @Uint64()
  external int DataPtr;
}

/// {@category Struct}
class _EVENT_HEADER_EXTENDED_DATA_ITEM__Anonymous_e__Struct extends Struct {
  @Uint16()
  external int bitfield;
}

extension EVENT_HEADER_EXTENDED_DATA_ITEM_Extension
    on EVENT_HEADER_EXTENDED_DATA_ITEM {
  int get bitfield => this.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.bitfield = value;
}

/// {@category Struct}
class EVENT_INSTANCE_HEADER extends Struct {
  @Uint16()
  external int Size;

  external _EVENT_INSTANCE_HEADER__Anonymous1_e__Union Anonymous1;

  external _EVENT_INSTANCE_HEADER__Anonymous2_e__Union Anonymous2;

  @Uint32()
  external int ThreadId;

  @Uint32()
  external int ProcessId;

  @Int64()
  external int TimeStamp;

  @Uint64()
  external int RegHandle;

  @Uint32()
  external int InstanceId;

  @Uint32()
  external int ParentInstanceId;

  external _EVENT_INSTANCE_HEADER__Anonymous3_e__Union Anonymous3;

  @Uint64()
  external int ParentRegHandle;
}

/// {@category Struct}
class _EVENT_INSTANCE_HEADER__Anonymous1_e__Union extends Union {
  @Uint16()
  external int FieldTypeFlags;

  external _EVENT_INSTANCE_HEADER__Anonymous1_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _EVENT_INSTANCE_HEADER__Anonymous1_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint8()
  external int HeaderType;

  @Uint8()
  external int MarkerFlags;
}

extension EVENT_INSTANCE_HEADER__Anonymous1_e__Union_Extension
    on EVENT_INSTANCE_HEADER {
  int get HeaderType => this.Anonymous1.Anonymous.HeaderType;
  set HeaderType(int value) => this.Anonymous1.Anonymous.HeaderType = value;

  int get MarkerFlags => this.Anonymous1.Anonymous.MarkerFlags;
  set MarkerFlags(int value) => this.Anonymous1.Anonymous.MarkerFlags = value;
}

extension EVENT_INSTANCE_HEADER_Extension on EVENT_INSTANCE_HEADER {
  int get FieldTypeFlags => this.Anonymous1.FieldTypeFlags;
  set FieldTypeFlags(int value) => this.Anonymous1.FieldTypeFlags = value;

  _EVENT_INSTANCE_HEADER__Anonymous1_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous1.Anonymous;
  set Anonymous(
          _EVENT_INSTANCE_HEADER__Anonymous1_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous1.Anonymous = value;
}

/// {@category Struct}
class _EVENT_INSTANCE_HEADER__Anonymous2_e__Union extends Union {
  @Uint32()
  external int Version;

  external _EVENT_INSTANCE_HEADER__Anonymous2_e__Union__Class_e__Struct Class;
}

/// {@category Struct}
class _EVENT_INSTANCE_HEADER__Anonymous2_e__Union__Class_e__Struct
    extends Struct {
  @Uint8()
  external int Type;

  @Uint8()
  external int Level;

  @Uint16()
  external int Version;
}

extension EVENT_INSTANCE_HEADER__Anonymous2_e__Union_Extension
    on EVENT_INSTANCE_HEADER {
  int get Type => this.Anonymous2.Class.Type;
  set Type(int value) => this.Anonymous2.Class.Type = value;

  int get Level => this.Anonymous2.Class.Level;
  set Level(int value) => this.Anonymous2.Class.Level = value;

  int get Version => this.Anonymous2.Class.Version;
  set Version(int value) => this.Anonymous2.Class.Version = value;
}

extension EVENT_INSTANCE_HEADER_Extension_1 on EVENT_INSTANCE_HEADER {
  int get Version => this.Anonymous2.Version;
  set Version(int value) => this.Anonymous2.Version = value;

  _EVENT_INSTANCE_HEADER__Anonymous2_e__Union__Class_e__Struct get Class =>
      this.Anonymous2.Class;
  set Class(
          _EVENT_INSTANCE_HEADER__Anonymous2_e__Union__Class_e__Struct value) =>
      this.Anonymous2.Class = value;
}

/// {@category Struct}
class _EVENT_INSTANCE_HEADER__Anonymous3_e__Union extends Union {
  external _EVENT_INSTANCE_HEADER__Anonymous3_e__Union__Anonymous1_e__Struct
      Anonymous1;

  @Uint64()
  external int ProcessorTime;

  external _EVENT_INSTANCE_HEADER__Anonymous3_e__Union__Anonymous2_e__Struct
      Anonymous2;
}

/// {@category Struct}
class _EVENT_INSTANCE_HEADER__Anonymous3_e__Union__Anonymous1_e__Struct
    extends Struct {
  @Uint32()
  external int KernelTime;

  @Uint32()
  external int UserTime;
}

extension EVENT_INSTANCE_HEADER__Anonymous3_e__Union_Extension
    on EVENT_INSTANCE_HEADER {
  int get KernelTime => this.Anonymous3.Anonymous1.KernelTime;
  set KernelTime(int value) => this.Anonymous3.Anonymous1.KernelTime = value;

  int get UserTime => this.Anonymous3.Anonymous1.UserTime;
  set UserTime(int value) => this.Anonymous3.Anonymous1.UserTime = value;
}

/// {@category Struct}
class _EVENT_INSTANCE_HEADER__Anonymous3_e__Union__Anonymous2_e__Struct
    extends Struct {
  @Uint32()
  external int EventId;

  @Uint32()
  external int Flags;
}

extension EVENT_INSTANCE_HEADER__Anonymous3_e__Union_Extension_1
    on EVENT_INSTANCE_HEADER {
  int get EventId => this.Anonymous3.Anonymous2.EventId;
  set EventId(int value) => this.Anonymous3.Anonymous2.EventId = value;

  int get Flags => this.Anonymous3.Anonymous2.Flags;
  set Flags(int value) => this.Anonymous3.Anonymous2.Flags = value;
}

extension EVENT_INSTANCE_HEADER_Extension_2 on EVENT_INSTANCE_HEADER {
  _EVENT_INSTANCE_HEADER__Anonymous3_e__Union__Anonymous1_e__Struct
      get Anonymous1 => this.Anonymous3.Anonymous1;
  set Anonymous1(
          _EVENT_INSTANCE_HEADER__Anonymous3_e__Union__Anonymous1_e__Struct
              value) =>
      this.Anonymous3.Anonymous1 = value;

  int get ProcessorTime => this.Anonymous3.ProcessorTime;
  set ProcessorTime(int value) => this.Anonymous3.ProcessorTime = value;

  _EVENT_INSTANCE_HEADER__Anonymous3_e__Union__Anonymous2_e__Struct
      get Anonymous2 => this.Anonymous3.Anonymous2;
  set Anonymous2(
          _EVENT_INSTANCE_HEADER__Anonymous3_e__Union__Anonymous2_e__Struct
              value) =>
      this.Anonymous3.Anonymous2 = value;
}

/// {@category Struct}
class EVENT_INSTANCE_INFO extends Struct {
  @IntPtr()
  external int RegHandle;

  @Uint32()
  external int InstanceId;
}

/// {@category Struct}
class EVENT_MAP_ENTRY extends Struct {
  @Uint32()
  external int OutputOffset;

  external _EVENT_MAP_ENTRY__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _EVENT_MAP_ENTRY__Anonymous_e__Union extends Union {
  @Uint32()
  external int Value;

  @Uint32()
  external int InputOffset;
}

extension EVENT_MAP_ENTRY_Extension on EVENT_MAP_ENTRY {
  int get Value => this.Anonymous.Value;
  set Value(int value) => this.Anonymous.Value = value;

  int get InputOffset => this.Anonymous.InputOffset;
  set InputOffset(int value) => this.Anonymous.InputOffset = value;
}

/// {@category Struct}
class EVENT_MAP_INFO extends Struct {
  @Uint32()
  external int NameOffset;

  @Int32()
  external int Flag;

  @Uint32()
  external int EntryCount;

  external _EVENT_MAP_INFO__Anonymous_e__Union Anonymous;

  @Array(1)
  external Array<EVENT_MAP_ENTRY> MapEntryArray;
}

/// {@category Struct}
class _EVENT_MAP_INFO__Anonymous_e__Union extends Union {
  @Int32()
  external int MapEntryValueType;

  @Uint32()
  external int FormatStringOffset;
}

extension EVENT_MAP_INFO_Extension on EVENT_MAP_INFO {
  int get MapEntryValueType => this.Anonymous.MapEntryValueType;
  set MapEntryValueType(int value) => this.Anonymous.MapEntryValueType = value;

  int get FormatStringOffset => this.Anonymous.FormatStringOffset;
  set FormatStringOffset(int value) =>
      this.Anonymous.FormatStringOffset = value;
}

/// {@category Struct}
class EVENT_PROPERTY_INFO extends Struct {
  @Int32()
  external int Flags;

  @Uint32()
  external int NameOffset;

  external _EVENT_PROPERTY_INFO__Anonymous1_e__Union Anonymous1;

  external _EVENT_PROPERTY_INFO__Anonymous2_e__Union Anonymous2;

  external _EVENT_PROPERTY_INFO__Anonymous3_e__Union Anonymous3;

  external _EVENT_PROPERTY_INFO__Anonymous4_e__Union Anonymous4;
}

/// {@category Struct}
class _EVENT_PROPERTY_INFO__Anonymous1_e__Union extends Union {
  external _EVENT_PROPERTY_INFO__Anonymous1_e__Union__nonStructType
      nonStructType;

  external _EVENT_PROPERTY_INFO__Anonymous1_e__Union__structType structType;

  external _EVENT_PROPERTY_INFO__Anonymous1_e__Union__customSchemaType
      customSchemaType;
}

/// {@category Struct}
class _EVENT_PROPERTY_INFO__Anonymous1_e__Union__nonStructType extends Struct {
  @Uint16()
  external int InType;

  @Uint16()
  external int OutType;

  @Uint32()
  external int MapNameOffset;
}

extension EVENT_PROPERTY_INFO__Anonymous1_e__Union_Extension
    on EVENT_PROPERTY_INFO {
  int get InType => this.Anonymous1.nonStructType.InType;
  set InType(int value) => this.Anonymous1.nonStructType.InType = value;

  int get OutType => this.Anonymous1.nonStructType.OutType;
  set OutType(int value) => this.Anonymous1.nonStructType.OutType = value;

  int get MapNameOffset => this.Anonymous1.nonStructType.MapNameOffset;
  set MapNameOffset(int value) =>
      this.Anonymous1.nonStructType.MapNameOffset = value;
}

/// {@category Struct}
class _EVENT_PROPERTY_INFO__Anonymous1_e__Union__structType extends Struct {
  @Uint16()
  external int StructStartIndex;

  @Uint16()
  external int NumOfStructMembers;

  @Uint32()
  external int padding;
}

extension EVENT_PROPERTY_INFO__Anonymous1_e__Union_Extension_1
    on EVENT_PROPERTY_INFO {
  int get StructStartIndex => this.Anonymous1.structType.StructStartIndex;
  set StructStartIndex(int value) =>
      this.Anonymous1.structType.StructStartIndex = value;

  int get NumOfStructMembers => this.Anonymous1.structType.NumOfStructMembers;
  set NumOfStructMembers(int value) =>
      this.Anonymous1.structType.NumOfStructMembers = value;

  int get padding => this.Anonymous1.structType.padding;
  set padding(int value) => this.Anonymous1.structType.padding = value;
}

/// {@category Struct}
class _EVENT_PROPERTY_INFO__Anonymous1_e__Union__customSchemaType
    extends Struct {
  @Uint16()
  external int InType;

  @Uint16()
  external int OutType;

  @Uint32()
  external int CustomSchemaOffset;
}

extension EVENT_PROPERTY_INFO__Anonymous1_e__Union_Extension_2
    on EVENT_PROPERTY_INFO {
  int get InType => this.Anonymous1.customSchemaType.InType;
  set InType(int value) => this.Anonymous1.customSchemaType.InType = value;

  int get OutType => this.Anonymous1.customSchemaType.OutType;
  set OutType(int value) => this.Anonymous1.customSchemaType.OutType = value;

  int get CustomSchemaOffset =>
      this.Anonymous1.customSchemaType.CustomSchemaOffset;
  set CustomSchemaOffset(int value) =>
      this.Anonymous1.customSchemaType.CustomSchemaOffset = value;
}

extension EVENT_PROPERTY_INFO_Extension on EVENT_PROPERTY_INFO {
  _EVENT_PROPERTY_INFO__Anonymous1_e__Union__nonStructType get nonStructType =>
      this.Anonymous1.nonStructType;
  set nonStructType(
          _EVENT_PROPERTY_INFO__Anonymous1_e__Union__nonStructType value) =>
      this.Anonymous1.nonStructType = value;

  _EVENT_PROPERTY_INFO__Anonymous1_e__Union__structType get structType =>
      this.Anonymous1.structType;
  set structType(_EVENT_PROPERTY_INFO__Anonymous1_e__Union__structType value) =>
      this.Anonymous1.structType = value;

  _EVENT_PROPERTY_INFO__Anonymous1_e__Union__customSchemaType
      get customSchemaType => this.Anonymous1.customSchemaType;
  set customSchemaType(
          _EVENT_PROPERTY_INFO__Anonymous1_e__Union__customSchemaType value) =>
      this.Anonymous1.customSchemaType = value;
}

/// {@category Struct}
class _EVENT_PROPERTY_INFO__Anonymous2_e__Union extends Union {
  @Uint16()
  external int count;

  @Uint16()
  external int countPropertyIndex;
}

extension EVENT_PROPERTY_INFO_Extension_1 on EVENT_PROPERTY_INFO {
  int get count => this.Anonymous2.count;
  set count(int value) => this.Anonymous2.count = value;

  int get countPropertyIndex => this.Anonymous2.countPropertyIndex;
  set countPropertyIndex(int value) =>
      this.Anonymous2.countPropertyIndex = value;
}

/// {@category Struct}
class _EVENT_PROPERTY_INFO__Anonymous3_e__Union extends Union {
  @Uint16()
  external int length;

  @Uint16()
  external int lengthPropertyIndex;
}

extension EVENT_PROPERTY_INFO_Extension_2 on EVENT_PROPERTY_INFO {
  int get length => this.Anonymous3.length;
  set length(int value) => this.Anonymous3.length = value;

  int get lengthPropertyIndex => this.Anonymous3.lengthPropertyIndex;
  set lengthPropertyIndex(int value) =>
      this.Anonymous3.lengthPropertyIndex = value;
}

/// {@category Struct}
class _EVENT_PROPERTY_INFO__Anonymous4_e__Union extends Union {
  @Uint32()
  external int Reserved;

  external _EVENT_PROPERTY_INFO__Anonymous4_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _EVENT_PROPERTY_INFO__Anonymous4_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension EVENT_PROPERTY_INFO__Anonymous4_e__Union_Extension
    on EVENT_PROPERTY_INFO {
  int get bitfield => this.Anonymous4.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous4.Anonymous.bitfield = value;
}

extension EVENT_PROPERTY_INFO_Extension_3 on EVENT_PROPERTY_INFO {
  int get Reserved => this.Anonymous4.Reserved;
  set Reserved(int value) => this.Anonymous4.Reserved = value;

  _EVENT_PROPERTY_INFO__Anonymous4_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous4.Anonymous;
  set Anonymous(
          _EVENT_PROPERTY_INFO__Anonymous4_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous4.Anonymous = value;
}

/// {@category Struct}
class EVENT_RECORD extends Struct {
  external EVENT_HEADER EventHeader;

  external ETW_BUFFER_CONTEXT BufferContext;

  @Uint16()
  external int ExtendedDataCount;

  @Uint16()
  external int UserDataLength;

  external Pointer<EVENT_HEADER_EXTENDED_DATA_ITEM> ExtendedData;

  external Pointer UserData;

  external Pointer UserContext;
}

/// {@category Struct}
class EVENT_TRACE extends Struct {
  external EVENT_TRACE_HEADER Header;

  @Uint32()
  external int InstanceId;

  @Uint32()
  external int ParentInstanceId;

  external GUID ParentGuid;

  external Pointer MofData;

  @Uint32()
  external int MofLength;

  external _EVENT_TRACE__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _EVENT_TRACE__Anonymous_e__Union extends Union {
  @Uint32()
  external int ClientContext;

  external ETW_BUFFER_CONTEXT BufferContext;
}

extension EVENT_TRACE_Extension on EVENT_TRACE {
  int get ClientContext => this.Anonymous.ClientContext;
  set ClientContext(int value) => this.Anonymous.ClientContext = value;

  ETW_BUFFER_CONTEXT get BufferContext => this.Anonymous.BufferContext;
  set BufferContext(ETW_BUFFER_CONTEXT value) =>
      this.Anonymous.BufferContext = value;
}

/// {@category Struct}
class EVENT_TRACE_HEADER extends Struct {
  @Uint16()
  external int Size;

  external _EVENT_TRACE_HEADER__Anonymous1_e__Union Anonymous1;

  external _EVENT_TRACE_HEADER__Anonymous2_e__Union Anonymous2;

  @Uint32()
  external int ThreadId;

  @Uint32()
  external int ProcessId;

  @Int64()
  external int TimeStamp;

  external _EVENT_TRACE_HEADER__Anonymous3_e__Union Anonymous3;

  external _EVENT_TRACE_HEADER__Anonymous4_e__Union Anonymous4;
}

/// {@category Struct}
class _EVENT_TRACE_HEADER__Anonymous1_e__Union extends Union {
  @Uint16()
  external int FieldTypeFlags;

  external _EVENT_TRACE_HEADER__Anonymous1_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _EVENT_TRACE_HEADER__Anonymous1_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint8()
  external int HeaderType;

  @Uint8()
  external int MarkerFlags;
}

extension EVENT_TRACE_HEADER__Anonymous1_e__Union_Extension
    on EVENT_TRACE_HEADER {
  int get HeaderType => this.Anonymous1.Anonymous.HeaderType;
  set HeaderType(int value) => this.Anonymous1.Anonymous.HeaderType = value;

  int get MarkerFlags => this.Anonymous1.Anonymous.MarkerFlags;
  set MarkerFlags(int value) => this.Anonymous1.Anonymous.MarkerFlags = value;
}

extension EVENT_TRACE_HEADER_Extension on EVENT_TRACE_HEADER {
  int get FieldTypeFlags => this.Anonymous1.FieldTypeFlags;
  set FieldTypeFlags(int value) => this.Anonymous1.FieldTypeFlags = value;

  _EVENT_TRACE_HEADER__Anonymous1_e__Union__Anonymous_e__Struct get Anonymous =>
      this.Anonymous1.Anonymous;
  set Anonymous(
          _EVENT_TRACE_HEADER__Anonymous1_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous1.Anonymous = value;
}

/// {@category Struct}
class _EVENT_TRACE_HEADER__Anonymous2_e__Union extends Union {
  @Uint32()
  external int Version;

  external _EVENT_TRACE_HEADER__Anonymous2_e__Union__Class_e__Struct Class;
}

/// {@category Struct}
class _EVENT_TRACE_HEADER__Anonymous2_e__Union__Class_e__Struct extends Struct {
  @Uint8()
  external int Type;

  @Uint8()
  external int Level;

  @Uint16()
  external int Version;
}

extension EVENT_TRACE_HEADER__Anonymous2_e__Union_Extension
    on EVENT_TRACE_HEADER {
  int get Type => this.Anonymous2.Class.Type;
  set Type(int value) => this.Anonymous2.Class.Type = value;

  int get Level => this.Anonymous2.Class.Level;
  set Level(int value) => this.Anonymous2.Class.Level = value;

  int get Version => this.Anonymous2.Class.Version;
  set Version(int value) => this.Anonymous2.Class.Version = value;
}

extension EVENT_TRACE_HEADER_Extension_1 on EVENT_TRACE_HEADER {
  int get Version => this.Anonymous2.Version;
  set Version(int value) => this.Anonymous2.Version = value;

  _EVENT_TRACE_HEADER__Anonymous2_e__Union__Class_e__Struct get Class =>
      this.Anonymous2.Class;
  set Class(_EVENT_TRACE_HEADER__Anonymous2_e__Union__Class_e__Struct value) =>
      this.Anonymous2.Class = value;
}

/// {@category Struct}
class _EVENT_TRACE_HEADER__Anonymous3_e__Union extends Union {
  external GUID Guid;

  @Uint64()
  external int GuidPtr;
}

extension EVENT_TRACE_HEADER_Extension_2 on EVENT_TRACE_HEADER {
  GUID get Guid => this.Anonymous3.Guid;
  set Guid(GUID value) => this.Anonymous3.Guid = value;

  int get GuidPtr => this.Anonymous3.GuidPtr;
  set GuidPtr(int value) => this.Anonymous3.GuidPtr = value;
}

/// {@category Struct}
class _EVENT_TRACE_HEADER__Anonymous4_e__Union extends Union {
  external _EVENT_TRACE_HEADER__Anonymous4_e__Union__Anonymous1_e__Struct
      Anonymous1;

  @Uint64()
  external int ProcessorTime;

  external _EVENT_TRACE_HEADER__Anonymous4_e__Union__Anonymous2_e__Struct
      Anonymous2;
}

/// {@category Struct}
class _EVENT_TRACE_HEADER__Anonymous4_e__Union__Anonymous1_e__Struct
    extends Struct {
  @Uint32()
  external int KernelTime;

  @Uint32()
  external int UserTime;
}

extension EVENT_TRACE_HEADER__Anonymous4_e__Union_Extension
    on EVENT_TRACE_HEADER {
  int get KernelTime => this.Anonymous4.Anonymous1.KernelTime;
  set KernelTime(int value) => this.Anonymous4.Anonymous1.KernelTime = value;

  int get UserTime => this.Anonymous4.Anonymous1.UserTime;
  set UserTime(int value) => this.Anonymous4.Anonymous1.UserTime = value;
}

/// {@category Struct}
class _EVENT_TRACE_HEADER__Anonymous4_e__Union__Anonymous2_e__Struct
    extends Struct {
  @Uint32()
  external int ClientContext;

  @Uint32()
  external int Flags;
}

extension EVENT_TRACE_HEADER__Anonymous4_e__Union_Extension_1
    on EVENT_TRACE_HEADER {
  int get ClientContext => this.Anonymous4.Anonymous2.ClientContext;
  set ClientContext(int value) =>
      this.Anonymous4.Anonymous2.ClientContext = value;

  int get Flags => this.Anonymous4.Anonymous2.Flags;
  set Flags(int value) => this.Anonymous4.Anonymous2.Flags = value;
}

extension EVENT_TRACE_HEADER_Extension_3 on EVENT_TRACE_HEADER {
  _EVENT_TRACE_HEADER__Anonymous4_e__Union__Anonymous1_e__Struct
      get Anonymous1 => this.Anonymous4.Anonymous1;
  set Anonymous1(
          _EVENT_TRACE_HEADER__Anonymous4_e__Union__Anonymous1_e__Struct
              value) =>
      this.Anonymous4.Anonymous1 = value;

  int get ProcessorTime => this.Anonymous4.ProcessorTime;
  set ProcessorTime(int value) => this.Anonymous4.ProcessorTime = value;

  _EVENT_TRACE_HEADER__Anonymous4_e__Union__Anonymous2_e__Struct
      get Anonymous2 => this.Anonymous4.Anonymous2;
  set Anonymous2(
          _EVENT_TRACE_HEADER__Anonymous4_e__Union__Anonymous2_e__Struct
              value) =>
      this.Anonymous4.Anonymous2 = value;
}

/// {@category Struct}
class EVENT_TRACE_LOGFILE extends Struct {
  external Pointer<Utf16> LogFileName;

  external Pointer<Utf16> LoggerName;

  @Int64()
  external int CurrentTime;

  @Uint32()
  external int BuffersRead;

  external _EVENT_TRACE_LOGFILEW__Anonymous1_e__Union Anonymous1;

  external EVENT_TRACE CurrentEvent;

  external TRACE_LOGFILE_HEADER LogfileHeader;

  external Pointer<NativeFunction<PEVENT_TRACE_BUFFER_CALLBACKW>>
      BufferCallback;

  @Uint32()
  external int BufferSize;

  @Uint32()
  external int Filled;

  @Uint32()
  external int EventsLost;

  external _EVENT_TRACE_LOGFILEW__Anonymous2_e__Union Anonymous2;

  @Uint32()
  external int IsKernelTrace;

  external Pointer Context;
}

/// {@category Struct}
class _EVENT_TRACE_LOGFILEW__Anonymous1_e__Union extends Union {
  @Uint32()
  external int LogFileMode;

  @Uint32()
  external int ProcessTraceMode;
}

extension EVENT_TRACE_LOGFILEW_Extension on EVENT_TRACE_LOGFILE {
  int get LogFileMode => this.Anonymous1.LogFileMode;
  set LogFileMode(int value) => this.Anonymous1.LogFileMode = value;

  int get ProcessTraceMode => this.Anonymous1.ProcessTraceMode;
  set ProcessTraceMode(int value) => this.Anonymous1.ProcessTraceMode = value;
}

/// {@category Struct}
class _EVENT_TRACE_LOGFILEW__Anonymous2_e__Union extends Union {
  external Pointer<NativeFunction<PEVENT_CALLBACK>> EventCallback;

  external Pointer<NativeFunction<PEVENT_RECORD_CALLBACK>> EventRecordCallback;
}

extension EVENT_TRACE_LOGFILEW_Extension_1 on EVENT_TRACE_LOGFILE {
  Pointer<NativeFunction<PEVENT_CALLBACK>> get EventCallback =>
      this.Anonymous2.EventCallback;
  set EventCallback(Pointer<NativeFunction<PEVENT_CALLBACK>> value) =>
      this.Anonymous2.EventCallback = value;

  Pointer<NativeFunction<PEVENT_RECORD_CALLBACK>> get EventRecordCallback =>
      this.Anonymous2.EventRecordCallback;
  set EventRecordCallback(
          Pointer<NativeFunction<PEVENT_RECORD_CALLBACK>> value) =>
      this.Anonymous2.EventRecordCallback = value;
}

/// {@category Struct}
class EVENT_TRACE_PROPERTIES extends Struct {
  external WNODE_HEADER Wnode;

  @Uint32()
  external int BufferSize;

  @Uint32()
  external int MinimumBuffers;

  @Uint32()
  external int MaximumBuffers;

  @Uint32()
  external int MaximumFileSize;

  @Uint32()
  external int LogFileMode;

  @Uint32()
  external int FlushTimer;

  @Uint32()
  external int EnableFlags;

  external _EVENT_TRACE_PROPERTIES__Anonymous_e__Union Anonymous;

  @Uint32()
  external int NumberOfBuffers;

  @Uint32()
  external int FreeBuffers;

  @Uint32()
  external int EventsLost;

  @Uint32()
  external int BuffersWritten;

  @Uint32()
  external int LogBuffersLost;

  @Uint32()
  external int RealTimeBuffersLost;

  @IntPtr()
  external int LoggerThreadId;

  @Uint32()
  external int LogFileNameOffset;

  @Uint32()
  external int LoggerNameOffset;
}

/// {@category Struct}
class _EVENT_TRACE_PROPERTIES__Anonymous_e__Union extends Union {
  @Int32()
  external int AgeLimit;

  @Int32()
  external int FlushThreshold;
}

extension EVENT_TRACE_PROPERTIES_Extension on EVENT_TRACE_PROPERTIES {
  int get AgeLimit => this.Anonymous.AgeLimit;
  set AgeLimit(int value) => this.Anonymous.AgeLimit = value;

  int get FlushThreshold => this.Anonymous.FlushThreshold;
  set FlushThreshold(int value) => this.Anonymous.FlushThreshold = value;
}

/// {@category Struct}
class EVENT_TRACE_PROPERTIES_V2 extends Struct {
  external WNODE_HEADER Wnode;

  @Uint32()
  external int BufferSize;

  @Uint32()
  external int MinimumBuffers;

  @Uint32()
  external int MaximumBuffers;

  @Uint32()
  external int MaximumFileSize;

  @Uint32()
  external int LogFileMode;

  @Uint32()
  external int FlushTimer;

  @Uint32()
  external int EnableFlags;

  external _EVENT_TRACE_PROPERTIES_V2__Anonymous1_e__Union Anonymous1;

  @Uint32()
  external int NumberOfBuffers;

  @Uint32()
  external int FreeBuffers;

  @Uint32()
  external int EventsLost;

  @Uint32()
  external int BuffersWritten;

  @Uint32()
  external int LogBuffersLost;

  @Uint32()
  external int RealTimeBuffersLost;

  @IntPtr()
  external int LoggerThreadId;

  @Uint32()
  external int LogFileNameOffset;

  @Uint32()
  external int LoggerNameOffset;

  external _EVENT_TRACE_PROPERTIES_V2__Anonymous2_e__Union Anonymous2;

  @Uint32()
  external int FilterDescCount;

  external Pointer<EVENT_FILTER_DESCRIPTOR> FilterDesc;

  external _EVENT_TRACE_PROPERTIES_V2__Anonymous3_e__Union Anonymous3;
}

/// {@category Struct}
class _EVENT_TRACE_PROPERTIES_V2__Anonymous1_e__Union extends Union {
  @Int32()
  external int AgeLimit;

  @Int32()
  external int FlushThreshold;
}

extension EVENT_TRACE_PROPERTIES_V2_Extension on EVENT_TRACE_PROPERTIES_V2 {
  int get AgeLimit => this.Anonymous1.AgeLimit;
  set AgeLimit(int value) => this.Anonymous1.AgeLimit = value;

  int get FlushThreshold => this.Anonymous1.FlushThreshold;
  set FlushThreshold(int value) => this.Anonymous1.FlushThreshold = value;
}

/// {@category Struct}
class _EVENT_TRACE_PROPERTIES_V2__Anonymous2_e__Union extends Union {
  external _EVENT_TRACE_PROPERTIES_V2__Anonymous2_e__Union__Anonymous_e__Struct
      Anonymous;

  @Uint32()
  external int V2Control;
}

/// {@category Struct}
class _EVENT_TRACE_PROPERTIES_V2__Anonymous2_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension EVENT_TRACE_PROPERTIES_V2__Anonymous2_e__Union_Extension
    on EVENT_TRACE_PROPERTIES_V2 {
  int get bitfield => this.Anonymous2.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous2.Anonymous.bitfield = value;
}

extension EVENT_TRACE_PROPERTIES_V2_Extension_1 on EVENT_TRACE_PROPERTIES_V2 {
  _EVENT_TRACE_PROPERTIES_V2__Anonymous2_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous2.Anonymous;
  set Anonymous(
          _EVENT_TRACE_PROPERTIES_V2__Anonymous2_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous2.Anonymous = value;

  int get V2Control => this.Anonymous2.V2Control;
  set V2Control(int value) => this.Anonymous2.V2Control = value;
}

/// {@category Struct}
class _EVENT_TRACE_PROPERTIES_V2__Anonymous3_e__Union extends Union {
  external _EVENT_TRACE_PROPERTIES_V2__Anonymous3_e__Union__Anonymous_e__Struct
      Anonymous;

  @Uint64()
  external int V2Options;
}

/// {@category Struct}
class _EVENT_TRACE_PROPERTIES_V2__Anonymous3_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension EVENT_TRACE_PROPERTIES_V2__Anonymous3_e__Union_Extension
    on EVENT_TRACE_PROPERTIES_V2 {
  int get bitfield => this.Anonymous3.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous3.Anonymous.bitfield = value;
}

extension EVENT_TRACE_PROPERTIES_V2_Extension_2 on EVENT_TRACE_PROPERTIES_V2 {
  _EVENT_TRACE_PROPERTIES_V2__Anonymous3_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous3.Anonymous;
  set Anonymous(
          _EVENT_TRACE_PROPERTIES_V2__Anonymous3_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous3.Anonymous = value;

  int get V2Options => this.Anonymous3.V2Options;
  set V2Options(int value) => this.Anonymous3.V2Options = value;
}

/// {@category Struct}
class MOF_FIELD extends Struct {
  @Uint64()
  external int DataPtr;

  @Uint32()
  external int Length;

  @Uint32()
  external int DataType;
}

/// {@category Struct}
class OFFSETINSTANCEDATAANDLENGTH extends Struct {
  @Uint32()
  external int OffsetInstanceData;

  @Uint32()
  external int LengthInstanceData;
}

/// {@category Struct}
class PAYLOAD_FILTER_PREDICATE extends Struct {
  external Pointer<Utf16> FieldName;

  @Uint16()
  external int CompareOp;

  external Pointer<Utf16> Value;
}

/// {@category Struct}
class PROFILE_SOURCE_INFO extends Struct {
  @Uint32()
  external int NextEntryOffset;

  @Uint32()
  external int Source;

  @Uint32()
  external int MinInterval;

  @Uint32()
  external int MaxInterval;

  @Uint64()
  external int Reserved;

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
class PROPERTY_DATA_DESCRIPTOR extends Struct {
  @Uint64()
  external int PropertyName;

  @Uint32()
  external int ArrayIndex;

  @Uint32()
  external int Reserved;
}

/// {@category Struct}
class PROVIDER_ENUMERATION_INFO extends Struct {
  @Uint32()
  external int NumberOfProviders;

  @Uint32()
  external int Reserved;

  @Array(1)
  external Array<TRACE_PROVIDER_INFO> TraceProviderInfoArray;
}

/// {@category Struct}
class PROVIDER_EVENT_INFO extends Struct {
  @Uint32()
  external int NumberOfEvents;

  @Uint32()
  external int Reserved;

  @Array(1)
  external Array<EVENT_DESCRIPTOR> EventDescriptorsArray;
}

/// {@category Struct}
class PROVIDER_FIELD_INFO extends Struct {
  @Uint32()
  external int NameOffset;

  @Uint32()
  external int DescriptionOffset;

  @Uint64()
  external int Value;
}

/// {@category Struct}
class PROVIDER_FIELD_INFOARRAY extends Struct {
  @Uint32()
  external int NumberOfElements;

  @Int32()
  external int FieldType;

  @Array(1)
  external Array<PROVIDER_FIELD_INFO> FieldInfoArray;
}

/// {@category Struct}
class PROVIDER_FILTER_INFO extends Struct {
  @Uint8()
  external int Id;

  @Uint8()
  external int Version;

  @Uint32()
  external int MessageOffset;

  @Uint32()
  external int Reserved;

  @Uint32()
  external int PropertyCount;

  @Array(1)
  external Array<EVENT_PROPERTY_INFO> EventPropertyInfoArray;
}

/// {@category Struct}
class TDH_CONTEXT extends Struct {
  @Uint64()
  external int ParameterValue;

  @Int32()
  external int ParameterType;

  @Uint32()
  external int ParameterSize;
}

/// {@category Struct}
class TRACE_ENABLE_INFO extends Struct {
  @Uint32()
  external int IsEnabled;

  @Uint8()
  external int Level;

  @Uint8()
  external int Reserved1;

  @Uint16()
  external int LoggerId;

  @Uint32()
  external int EnableProperty;

  @Uint32()
  external int Reserved2;

  @Uint64()
  external int MatchAnyKeyword;

  @Uint64()
  external int MatchAllKeyword;
}

/// {@category Struct}
class TRACE_EVENT_INFO extends Struct {
  external GUID ProviderGuid;

  external GUID EventGuid;

  external EVENT_DESCRIPTOR EventDescriptor;

  @Int32()
  external int DecodingSource;

  @Uint32()
  external int ProviderNameOffset;

  @Uint32()
  external int LevelNameOffset;

  @Uint32()
  external int ChannelNameOffset;

  @Uint32()
  external int KeywordsNameOffset;

  @Uint32()
  external int TaskNameOffset;

  @Uint32()
  external int OpcodeNameOffset;

  @Uint32()
  external int EventMessageOffset;

  @Uint32()
  external int ProviderMessageOffset;

  @Uint32()
  external int BinaryXMLOffset;

  @Uint32()
  external int BinaryXMLSize;

  external _TRACE_EVENT_INFO__Anonymous1_e__Union Anonymous1;

  external _TRACE_EVENT_INFO__Anonymous2_e__Union Anonymous2;

  @Uint32()
  external int PropertyCount;

  @Uint32()
  external int TopLevelPropertyCount;

  external _TRACE_EVENT_INFO__Anonymous3_e__Union Anonymous3;

  @Array(1)
  external Array<EVENT_PROPERTY_INFO> EventPropertyInfoArray;
}

/// {@category Struct}
class _TRACE_EVENT_INFO__Anonymous1_e__Union extends Union {
  @Uint32()
  external int EventNameOffset;

  @Uint32()
  external int ActivityIDNameOffset;
}

extension TRACE_EVENT_INFO_Extension on TRACE_EVENT_INFO {
  int get EventNameOffset => this.Anonymous1.EventNameOffset;
  set EventNameOffset(int value) => this.Anonymous1.EventNameOffset = value;

  int get ActivityIDNameOffset => this.Anonymous1.ActivityIDNameOffset;
  set ActivityIDNameOffset(int value) =>
      this.Anonymous1.ActivityIDNameOffset = value;
}

/// {@category Struct}
class _TRACE_EVENT_INFO__Anonymous2_e__Union extends Union {
  @Uint32()
  external int EventAttributesOffset;

  @Uint32()
  external int RelatedActivityIDNameOffset;
}

extension TRACE_EVENT_INFO_Extension_1 on TRACE_EVENT_INFO {
  int get EventAttributesOffset => this.Anonymous2.EventAttributesOffset;
  set EventAttributesOffset(int value) =>
      this.Anonymous2.EventAttributesOffset = value;

  int get RelatedActivityIDNameOffset =>
      this.Anonymous2.RelatedActivityIDNameOffset;
  set RelatedActivityIDNameOffset(int value) =>
      this.Anonymous2.RelatedActivityIDNameOffset = value;
}

/// {@category Struct}
class _TRACE_EVENT_INFO__Anonymous3_e__Union extends Union {
  @Int32()
  external int Flags;

  external _TRACE_EVENT_INFO__Anonymous3_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _TRACE_EVENT_INFO__Anonymous3_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension TRACE_EVENT_INFO__Anonymous3_e__Union_Extension on TRACE_EVENT_INFO {
  int get bitfield => this.Anonymous3.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous3.Anonymous.bitfield = value;
}

extension TRACE_EVENT_INFO_Extension_2 on TRACE_EVENT_INFO {
  int get Flags => this.Anonymous3.Flags;
  set Flags(int value) => this.Anonymous3.Flags = value;

  _TRACE_EVENT_INFO__Anonymous3_e__Union__Anonymous_e__Struct get Anonymous =>
      this.Anonymous3.Anonymous;
  set Anonymous(
          _TRACE_EVENT_INFO__Anonymous3_e__Union__Anonymous_e__Struct value) =>
      this.Anonymous3.Anonymous = value;
}

/// {@category Struct}
class TRACE_GUID_INFO extends Struct {
  @Uint32()
  external int InstanceCount;

  @Uint32()
  external int Reserved;
}

/// {@category Struct}
class TRACE_GUID_PROPERTIES extends Struct {
  external GUID Guid;

  @Uint32()
  external int GuidType;

  @Uint32()
  external int LoggerId;

  @Uint32()
  external int EnableLevel;

  @Uint32()
  external int EnableFlags;

  @Uint8()
  external int IsEnable;
}

/// {@category Struct}
class TRACE_GUID_REGISTRATION extends Struct {
  external Pointer<GUID> Guid;

  @IntPtr()
  external int RegHandle;
}

/// {@category Struct}
class TRACE_LOGFILE_HEADER extends Struct {
  @Uint32()
  external int BufferSize;

  external _TRACE_LOGFILE_HEADER__Anonymous1_e__Union Anonymous1;

  @Uint32()
  external int ProviderVersion;

  @Uint32()
  external int NumberOfProcessors;

  @Int64()
  external int EndTime;

  @Uint32()
  external int TimerResolution;

  @Uint32()
  external int MaximumFileSize;

  @Uint32()
  external int LogFileMode;

  @Uint32()
  external int BuffersWritten;

  external _TRACE_LOGFILE_HEADER__Anonymous2_e__Union Anonymous2;

  external Pointer<Utf16> LoggerName;

  external Pointer<Utf16> LogFileName;

  external TIME_ZONE_INFORMATION TimeZone;

  @Int64()
  external int BootTime;

  @Int64()
  external int PerfFreq;

  @Int64()
  external int StartTime;

  @Uint32()
  external int ReservedFlags;

  @Uint32()
  external int BuffersLost;
}

/// {@category Struct}
class _TRACE_LOGFILE_HEADER__Anonymous1_e__Union extends Union {
  @Uint32()
  external int Version;

  external _TRACE_LOGFILE_HEADER__Anonymous1_e__Union__VersionDetail_e__Struct
      VersionDetail;
}

/// {@category Struct}
class _TRACE_LOGFILE_HEADER__Anonymous1_e__Union__VersionDetail_e__Struct
    extends Struct {
  @Uint8()
  external int MajorVersion;

  @Uint8()
  external int MinorVersion;

  @Uint8()
  external int SubVersion;

  @Uint8()
  external int SubMinorVersion;
}

extension TRACE_LOGFILE_HEADER__Anonymous1_e__Union_Extension
    on TRACE_LOGFILE_HEADER {
  int get MajorVersion => this.Anonymous1.VersionDetail.MajorVersion;
  set MajorVersion(int value) =>
      this.Anonymous1.VersionDetail.MajorVersion = value;

  int get MinorVersion => this.Anonymous1.VersionDetail.MinorVersion;
  set MinorVersion(int value) =>
      this.Anonymous1.VersionDetail.MinorVersion = value;

  int get SubVersion => this.Anonymous1.VersionDetail.SubVersion;
  set SubVersion(int value) => this.Anonymous1.VersionDetail.SubVersion = value;

  int get SubMinorVersion => this.Anonymous1.VersionDetail.SubMinorVersion;
  set SubMinorVersion(int value) =>
      this.Anonymous1.VersionDetail.SubMinorVersion = value;
}

extension TRACE_LOGFILE_HEADER_Extension on TRACE_LOGFILE_HEADER {
  int get Version => this.Anonymous1.Version;
  set Version(int value) => this.Anonymous1.Version = value;

  _TRACE_LOGFILE_HEADER__Anonymous1_e__Union__VersionDetail_e__Struct
      get VersionDetail => this.Anonymous1.VersionDetail;
  set VersionDetail(
          _TRACE_LOGFILE_HEADER__Anonymous1_e__Union__VersionDetail_e__Struct
              value) =>
      this.Anonymous1.VersionDetail = value;
}

/// {@category Struct}
class _TRACE_LOGFILE_HEADER__Anonymous2_e__Union extends Union {
  external GUID LogInstanceGuid;

  external _TRACE_LOGFILE_HEADER__Anonymous2_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _TRACE_LOGFILE_HEADER__Anonymous2_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int StartBuffers;

  @Uint32()
  external int PointerSize;

  @Uint32()
  external int EventsLost;

  @Uint32()
  external int CpuSpeedInMHz;
}

extension TRACE_LOGFILE_HEADER__Anonymous2_e__Union_Extension
    on TRACE_LOGFILE_HEADER {
  int get StartBuffers => this.Anonymous2.Anonymous.StartBuffers;
  set StartBuffers(int value) => this.Anonymous2.Anonymous.StartBuffers = value;

  int get PointerSize => this.Anonymous2.Anonymous.PointerSize;
  set PointerSize(int value) => this.Anonymous2.Anonymous.PointerSize = value;

  int get EventsLost => this.Anonymous2.Anonymous.EventsLost;
  set EventsLost(int value) => this.Anonymous2.Anonymous.EventsLost = value;

  int get CpuSpeedInMHz => this.Anonymous2.Anonymous.CpuSpeedInMHz;
  set CpuSpeedInMHz(int value) =>
      this.Anonymous2.Anonymous.CpuSpeedInMHz = value;
}

extension TRACE_LOGFILE_HEADER_Extension_1 on TRACE_LOGFILE_HEADER {
  GUID get LogInstanceGuid => this.Anonymous2.LogInstanceGuid;
  set LogInstanceGuid(GUID value) => this.Anonymous2.LogInstanceGuid = value;

  _TRACE_LOGFILE_HEADER__Anonymous2_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous2.Anonymous;
  set Anonymous(
          _TRACE_LOGFILE_HEADER__Anonymous2_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous2.Anonymous = value;
}

/// {@category Struct}
class TRACE_LOGFILE_HEADER32 extends Struct {
  @Uint32()
  external int BufferSize;

  external _TRACE_LOGFILE_HEADER32__Anonymous1_e__Union Anonymous1;

  @Uint32()
  external int ProviderVersion;

  @Uint32()
  external int NumberOfProcessors;

  @Int64()
  external int EndTime;

  @Uint32()
  external int TimerResolution;

  @Uint32()
  external int MaximumFileSize;

  @Uint32()
  external int LogFileMode;

  @Uint32()
  external int BuffersWritten;

  external _TRACE_LOGFILE_HEADER32__Anonymous2_e__Union Anonymous2;

  @Uint32()
  external int LoggerName;

  @Uint32()
  external int LogFileName;

  external TIME_ZONE_INFORMATION TimeZone;

  @Int64()
  external int BootTime;

  @Int64()
  external int PerfFreq;

  @Int64()
  external int StartTime;

  @Uint32()
  external int ReservedFlags;

  @Uint32()
  external int BuffersLost;
}

/// {@category Struct}
class _TRACE_LOGFILE_HEADER32__Anonymous1_e__Union extends Union {
  @Uint32()
  external int Version;

  external _TRACE_LOGFILE_HEADER32__Anonymous1_e__Union__VersionDetail_e__Struct
      VersionDetail;
}

/// {@category Struct}
class _TRACE_LOGFILE_HEADER32__Anonymous1_e__Union__VersionDetail_e__Struct
    extends Struct {
  @Uint8()
  external int MajorVersion;

  @Uint8()
  external int MinorVersion;

  @Uint8()
  external int SubVersion;

  @Uint8()
  external int SubMinorVersion;
}

extension TRACE_LOGFILE_HEADER32__Anonymous1_e__Union_Extension
    on TRACE_LOGFILE_HEADER32 {
  int get MajorVersion => this.Anonymous1.VersionDetail.MajorVersion;
  set MajorVersion(int value) =>
      this.Anonymous1.VersionDetail.MajorVersion = value;

  int get MinorVersion => this.Anonymous1.VersionDetail.MinorVersion;
  set MinorVersion(int value) =>
      this.Anonymous1.VersionDetail.MinorVersion = value;

  int get SubVersion => this.Anonymous1.VersionDetail.SubVersion;
  set SubVersion(int value) => this.Anonymous1.VersionDetail.SubVersion = value;

  int get SubMinorVersion => this.Anonymous1.VersionDetail.SubMinorVersion;
  set SubMinorVersion(int value) =>
      this.Anonymous1.VersionDetail.SubMinorVersion = value;
}

extension TRACE_LOGFILE_HEADER32_Extension on TRACE_LOGFILE_HEADER32 {
  int get Version => this.Anonymous1.Version;
  set Version(int value) => this.Anonymous1.Version = value;

  _TRACE_LOGFILE_HEADER32__Anonymous1_e__Union__VersionDetail_e__Struct
      get VersionDetail => this.Anonymous1.VersionDetail;
  set VersionDetail(
          _TRACE_LOGFILE_HEADER32__Anonymous1_e__Union__VersionDetail_e__Struct
              value) =>
      this.Anonymous1.VersionDetail = value;
}

/// {@category Struct}
class _TRACE_LOGFILE_HEADER32__Anonymous2_e__Union extends Union {
  external GUID LogInstanceGuid;

  external _TRACE_LOGFILE_HEADER32__Anonymous2_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _TRACE_LOGFILE_HEADER32__Anonymous2_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int StartBuffers;

  @Uint32()
  external int PointerSize;

  @Uint32()
  external int EventsLost;

  @Uint32()
  external int CpuSpeedInMHz;
}

extension TRACE_LOGFILE_HEADER32__Anonymous2_e__Union_Extension
    on TRACE_LOGFILE_HEADER32 {
  int get StartBuffers => this.Anonymous2.Anonymous.StartBuffers;
  set StartBuffers(int value) => this.Anonymous2.Anonymous.StartBuffers = value;

  int get PointerSize => this.Anonymous2.Anonymous.PointerSize;
  set PointerSize(int value) => this.Anonymous2.Anonymous.PointerSize = value;

  int get EventsLost => this.Anonymous2.Anonymous.EventsLost;
  set EventsLost(int value) => this.Anonymous2.Anonymous.EventsLost = value;

  int get CpuSpeedInMHz => this.Anonymous2.Anonymous.CpuSpeedInMHz;
  set CpuSpeedInMHz(int value) =>
      this.Anonymous2.Anonymous.CpuSpeedInMHz = value;
}

extension TRACE_LOGFILE_HEADER32_Extension_1 on TRACE_LOGFILE_HEADER32 {
  GUID get LogInstanceGuid => this.Anonymous2.LogInstanceGuid;
  set LogInstanceGuid(GUID value) => this.Anonymous2.LogInstanceGuid = value;

  _TRACE_LOGFILE_HEADER32__Anonymous2_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous2.Anonymous;
  set Anonymous(
          _TRACE_LOGFILE_HEADER32__Anonymous2_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous2.Anonymous = value;
}

/// {@category Struct}
class TRACE_LOGFILE_HEADER64 extends Struct {
  @Uint32()
  external int BufferSize;

  external _TRACE_LOGFILE_HEADER64__Anonymous1_e__Union Anonymous1;

  @Uint32()
  external int ProviderVersion;

  @Uint32()
  external int NumberOfProcessors;

  @Int64()
  external int EndTime;

  @Uint32()
  external int TimerResolution;

  @Uint32()
  external int MaximumFileSize;

  @Uint32()
  external int LogFileMode;

  @Uint32()
  external int BuffersWritten;

  external _TRACE_LOGFILE_HEADER64__Anonymous2_e__Union Anonymous2;

  @Uint64()
  external int LoggerName;

  @Uint64()
  external int LogFileName;

  external TIME_ZONE_INFORMATION TimeZone;

  @Int64()
  external int BootTime;

  @Int64()
  external int PerfFreq;

  @Int64()
  external int StartTime;

  @Uint32()
  external int ReservedFlags;

  @Uint32()
  external int BuffersLost;
}

/// {@category Struct}
class _TRACE_LOGFILE_HEADER64__Anonymous1_e__Union extends Union {
  @Uint32()
  external int Version;

  external _TRACE_LOGFILE_HEADER64__Anonymous1_e__Union__VersionDetail_e__Struct
      VersionDetail;
}

/// {@category Struct}
class _TRACE_LOGFILE_HEADER64__Anonymous1_e__Union__VersionDetail_e__Struct
    extends Struct {
  @Uint8()
  external int MajorVersion;

  @Uint8()
  external int MinorVersion;

  @Uint8()
  external int SubVersion;

  @Uint8()
  external int SubMinorVersion;
}

extension TRACE_LOGFILE_HEADER64__Anonymous1_e__Union_Extension
    on TRACE_LOGFILE_HEADER64 {
  int get MajorVersion => this.Anonymous1.VersionDetail.MajorVersion;
  set MajorVersion(int value) =>
      this.Anonymous1.VersionDetail.MajorVersion = value;

  int get MinorVersion => this.Anonymous1.VersionDetail.MinorVersion;
  set MinorVersion(int value) =>
      this.Anonymous1.VersionDetail.MinorVersion = value;

  int get SubVersion => this.Anonymous1.VersionDetail.SubVersion;
  set SubVersion(int value) => this.Anonymous1.VersionDetail.SubVersion = value;

  int get SubMinorVersion => this.Anonymous1.VersionDetail.SubMinorVersion;
  set SubMinorVersion(int value) =>
      this.Anonymous1.VersionDetail.SubMinorVersion = value;
}

extension TRACE_LOGFILE_HEADER64_Extension on TRACE_LOGFILE_HEADER64 {
  int get Version => this.Anonymous1.Version;
  set Version(int value) => this.Anonymous1.Version = value;

  _TRACE_LOGFILE_HEADER64__Anonymous1_e__Union__VersionDetail_e__Struct
      get VersionDetail => this.Anonymous1.VersionDetail;
  set VersionDetail(
          _TRACE_LOGFILE_HEADER64__Anonymous1_e__Union__VersionDetail_e__Struct
              value) =>
      this.Anonymous1.VersionDetail = value;
}

/// {@category Struct}
class _TRACE_LOGFILE_HEADER64__Anonymous2_e__Union extends Union {
  external GUID LogInstanceGuid;

  external _TRACE_LOGFILE_HEADER64__Anonymous2_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _TRACE_LOGFILE_HEADER64__Anonymous2_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int StartBuffers;

  @Uint32()
  external int PointerSize;

  @Uint32()
  external int EventsLost;

  @Uint32()
  external int CpuSpeedInMHz;
}

extension TRACE_LOGFILE_HEADER64__Anonymous2_e__Union_Extension
    on TRACE_LOGFILE_HEADER64 {
  int get StartBuffers => this.Anonymous2.Anonymous.StartBuffers;
  set StartBuffers(int value) => this.Anonymous2.Anonymous.StartBuffers = value;

  int get PointerSize => this.Anonymous2.Anonymous.PointerSize;
  set PointerSize(int value) => this.Anonymous2.Anonymous.PointerSize = value;

  int get EventsLost => this.Anonymous2.Anonymous.EventsLost;
  set EventsLost(int value) => this.Anonymous2.Anonymous.EventsLost = value;

  int get CpuSpeedInMHz => this.Anonymous2.Anonymous.CpuSpeedInMHz;
  set CpuSpeedInMHz(int value) =>
      this.Anonymous2.Anonymous.CpuSpeedInMHz = value;
}

extension TRACE_LOGFILE_HEADER64_Extension_1 on TRACE_LOGFILE_HEADER64 {
  GUID get LogInstanceGuid => this.Anonymous2.LogInstanceGuid;
  set LogInstanceGuid(GUID value) => this.Anonymous2.LogInstanceGuid = value;

  _TRACE_LOGFILE_HEADER64__Anonymous2_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous2.Anonymous;
  set Anonymous(
          _TRACE_LOGFILE_HEADER64__Anonymous2_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous2.Anonymous = value;
}

/// {@category Struct}
class TRACE_PERIODIC_CAPTURE_STATE_INFO extends Struct {
  @Uint32()
  external int CaptureStateFrequencyInSeconds;

  @Uint16()
  external int ProviderCount;

  @Uint16()
  external int Reserved;
}

/// {@category Struct}
class TRACE_PROFILE_INTERVAL extends Struct {
  @Uint32()
  external int Source;

  @Uint32()
  external int Interval;
}

/// {@category Struct}
class TRACE_PROVIDER_INFO extends Struct {
  external GUID ProviderGuid;

  @Uint32()
  external int SchemaSource;

  @Uint32()
  external int ProviderNameOffset;
}

/// {@category Struct}
class TRACE_PROVIDER_INSTANCE_INFO extends Struct {
  @Uint32()
  external int NextOffset;

  @Uint32()
  external int EnableCount;

  @Uint32()
  external int Pid;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class TRACE_STACK_CACHING_INFO extends Struct {
  @Uint8()
  external int Enabled;

  @Uint32()
  external int CacheSize;

  @Uint32()
  external int BucketCount;
}

/// {@category Struct}
class TRACE_VERSION_INFO extends Struct {
  @Uint32()
  external int EtwTraceProcessingVersion;

  @Uint32()
  external int Reserved;
}

/// {@category Struct}
class WMIREGGUID extends Struct {
  external GUID Guid;

  @Uint32()
  external int Flags;

  @Uint32()
  external int InstanceCount;

  external _WMIREGGUIDW__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _WMIREGGUIDW__Anonymous_e__Union extends Union {
  @Uint32()
  external int InstanceNameList;

  @Uint32()
  external int BaseNameOffset;

  @IntPtr()
  external int Pdo;

  @IntPtr()
  external int InstanceInfo;
}

extension WMIREGGUIDW_Extension on WMIREGGUID {
  int get InstanceNameList => this.Anonymous.InstanceNameList;
  set InstanceNameList(int value) => this.Anonymous.InstanceNameList = value;

  int get BaseNameOffset => this.Anonymous.BaseNameOffset;
  set BaseNameOffset(int value) => this.Anonymous.BaseNameOffset = value;

  int get Pdo => this.Anonymous.Pdo;
  set Pdo(int value) => this.Anonymous.Pdo = value;

  int get InstanceInfo => this.Anonymous.InstanceInfo;
  set InstanceInfo(int value) => this.Anonymous.InstanceInfo = value;
}

/// {@category Struct}
class WMIREGINFO extends Struct {
  @Uint32()
  external int BufferSize;

  @Uint32()
  external int NextWmiRegInfo;

  @Uint32()
  external int RegistryPath;

  @Uint32()
  external int MofResourceName;

  @Uint32()
  external int GuidCount;

  @Array(1)
  external Array<WMIREGGUID> WmiRegGuid;
}

/// {@category Struct}
class WNODE_ALL_DATA extends Struct {
  external WNODE_HEADER WnodeHeader;

  @Uint32()
  external int DataBlockOffset;

  @Uint32()
  external int InstanceCount;

  @Uint32()
  external int OffsetInstanceNameOffsets;

  external _WNODE_ALL_DATA__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _WNODE_ALL_DATA__Anonymous_e__Union extends Union {
  @Uint32()
  external int FixedInstanceSize;

  @Array(1)
  external Array<OFFSETINSTANCEDATAANDLENGTH> OffsetInstanceDataAndLength;
}

extension WNODE_ALL_DATA_Extension on WNODE_ALL_DATA {
  int get FixedInstanceSize => this.Anonymous.FixedInstanceSize;
  set FixedInstanceSize(int value) => this.Anonymous.FixedInstanceSize = value;

  Array<OFFSETINSTANCEDATAANDLENGTH> get OffsetInstanceDataAndLength =>
      this.Anonymous.OffsetInstanceDataAndLength;
  set OffsetInstanceDataAndLength(Array<OFFSETINSTANCEDATAANDLENGTH> value) =>
      this.Anonymous.OffsetInstanceDataAndLength = value;
}

/// {@category Struct}
class WNODE_EVENT_ITEM extends Struct {
  external WNODE_HEADER WnodeHeader;
}

/// {@category Struct}
class WNODE_EVENT_REFERENCE extends Struct {
  external WNODE_HEADER WnodeHeader;

  external GUID TargetGuid;

  @Uint32()
  external int TargetDataBlockSize;

  external _WNODE_EVENT_REFERENCE__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _WNODE_EVENT_REFERENCE__Anonymous_e__Union extends Union {
  @Uint32()
  external int TargetInstanceIndex;

  @Array(1)
  external Array<Uint16> _TargetInstanceName;

  String get TargetInstanceName {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_TargetInstanceName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set TargetInstanceName(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _TargetInstanceName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

extension WNODE_EVENT_REFERENCE_Extension on WNODE_EVENT_REFERENCE {
  int get TargetInstanceIndex => this.Anonymous.TargetInstanceIndex;
  set TargetInstanceIndex(int value) =>
      this.Anonymous.TargetInstanceIndex = value;

  String get TargetInstanceName => this.Anonymous.TargetInstanceName;
  set TargetInstanceName(String value) =>
      this.Anonymous.TargetInstanceName = value;
}

/// {@category Struct}
class WNODE_HEADER extends Struct {
  @Uint32()
  external int BufferSize;

  @Uint32()
  external int ProviderId;

  external _WNODE_HEADER__Anonymous1_e__Union Anonymous1;

  external _WNODE_HEADER__Anonymous2_e__Union Anonymous2;

  external GUID Guid;

  @Uint32()
  external int ClientContext;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class _WNODE_HEADER__Anonymous1_e__Union extends Union {
  @Uint64()
  external int HistoricalContext;

  external _WNODE_HEADER__Anonymous1_e__Union__Anonymous_e__Struct Anonymous;
}

/// {@category Struct}
class _WNODE_HEADER__Anonymous1_e__Union__Anonymous_e__Struct extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Linkage;
}

extension WNODE_HEADER__Anonymous1_e__Union_Extension on WNODE_HEADER {
  int get Version => this.Anonymous1.Anonymous.Version;
  set Version(int value) => this.Anonymous1.Anonymous.Version = value;

  int get Linkage => this.Anonymous1.Anonymous.Linkage;
  set Linkage(int value) => this.Anonymous1.Anonymous.Linkage = value;
}

extension WNODE_HEADER_Extension on WNODE_HEADER {
  int get HistoricalContext => this.Anonymous1.HistoricalContext;
  set HistoricalContext(int value) => this.Anonymous1.HistoricalContext = value;

  _WNODE_HEADER__Anonymous1_e__Union__Anonymous_e__Struct get Anonymous =>
      this.Anonymous1.Anonymous;
  set Anonymous(
          _WNODE_HEADER__Anonymous1_e__Union__Anonymous_e__Struct value) =>
      this.Anonymous1.Anonymous = value;
}

/// {@category Struct}
class _WNODE_HEADER__Anonymous2_e__Union extends Union {
  @Uint32()
  external int CountLost;

  @IntPtr()
  external int KernelHandle;

  @Int64()
  external int TimeStamp;
}

extension WNODE_HEADER_Extension_1 on WNODE_HEADER {
  int get CountLost => this.Anonymous2.CountLost;
  set CountLost(int value) => this.Anonymous2.CountLost = value;

  int get KernelHandle => this.Anonymous2.KernelHandle;
  set KernelHandle(int value) => this.Anonymous2.KernelHandle = value;

  int get TimeStamp => this.Anonymous2.TimeStamp;
  set TimeStamp(int value) => this.Anonymous2.TimeStamp = value;
}

/// {@category Struct}
class WNODE_METHOD_ITEM extends Struct {
  external WNODE_HEADER WnodeHeader;

  @Uint32()
  external int OffsetInstanceName;

  @Uint32()
  external int InstanceIndex;

  @Uint32()
  external int MethodId;

  @Uint32()
  external int DataBlockOffset;

  @Uint32()
  external int SizeDataBlock;

  @Array(1)
  external Array<Uint8> VariableData;
}

/// {@category Struct}
class WNODE_SINGLE_INSTANCE extends Struct {
  external WNODE_HEADER WnodeHeader;

  @Uint32()
  external int OffsetInstanceName;

  @Uint32()
  external int InstanceIndex;

  @Uint32()
  external int DataBlockOffset;

  @Uint32()
  external int SizeDataBlock;

  @Array(1)
  external Array<Uint8> VariableData;
}

/// {@category Struct}
class WNODE_SINGLE_ITEM extends Struct {
  external WNODE_HEADER WnodeHeader;

  @Uint32()
  external int OffsetInstanceName;

  @Uint32()
  external int InstanceIndex;

  @Uint32()
  external int ItemId;

  @Uint32()
  external int DataBlockOffset;

  @Uint32()
  external int SizeDataItem;

  @Array(1)
  external Array<Uint8> VariableData;
}

/// {@category Struct}
class WNODE_TOO_SMALL extends Struct {
  external WNODE_HEADER WnodeHeader;

  @Uint32()
  external int SizeNeeded;
}
