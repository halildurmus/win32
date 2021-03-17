// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// -----------------------------------------------------------------------------
// Linter exceptions
// -----------------------------------------------------------------------------
// ignore_for_file: camel_case_types ignore_for_file: camel_case_extensions
//
// Why? The linter defaults to throw a warning for types not named as camel
// case. We deliberately break this convention to match the Win32 underlying
// types.
//
//
// ignore_for_file: unused_field
//
// Why? The linter complains about unused fields (e.g. a class that contains
// underscore-prefixed members that are not used in the library. In this class,
// we use this feature to ensure that sizeOf<STRUCT_NAME> returns a size at
// least as large as the underlying native struct. See, for example,
// ENUMLOGFONTEX.
//
//
// ignore_for_file: unnecessary_getters_setters
//
// Why? In structs like VARIANT, we're using getters and setters to project the
// same underlying data property to various union types. The trivial overhead is
// outweighed by readability.
//
//
// ignore_for_file: unused_import
//
// Why? We speculatively include some imports that we might generate a
// requirement for.
// -----------------------------------------------------------------------------

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';

class OFFSETINSTANCEDATAANDLENGTH extends Struct {
  @Uint32() external int OffsetInstanceData;
  @Uint32() external int LengthInstanceData;
}

class WNODE_SINGLE_INSTANCE extends Struct {
  external WNODE_HEADER WnodeHeader;
  @Uint32() external int OffsetInstanceName;
  @Uint32() external int InstanceIndex;
  @Uint32() external int DataBlockOffset;
  @Uint32() external int SizeDataBlock;
  @Uint8() external int VariableData;
}

class WNODE_SINGLE_ITEM extends Struct {
  external WNODE_HEADER WnodeHeader;
  @Uint32() external int OffsetInstanceName;
  @Uint32() external int InstanceIndex;
  @Uint32() external int ItemId;
  @Uint32() external int DataBlockOffset;
  @Uint32() external int SizeDataItem;
  @Uint8() external int VariableData;
}

class WNODE_METHOD_ITEM extends Struct {
  external WNODE_HEADER WnodeHeader;
  @Uint32() external int OffsetInstanceName;
  @Uint32() external int InstanceIndex;
  @Uint32() external int MethodId;
  @Uint32() external int DataBlockOffset;
  @Uint32() external int SizeDataBlock;
  @Uint8() external int VariableData;
}

class WNODE_EVENT_ITEM extends Struct {
  external WNODE_HEADER WnodeHeader;
}

class WNODE_TOO_SMALL extends Struct {
  external WNODE_HEADER WnodeHeader;
  @Uint32() external int SizeNeeded;
}

class WMIREGINFOW extends Struct {
  @Uint32() external int BufferSize;
  @Uint32() external int NextWmiRegInfo;
  @Uint32() external int RegistryPath;
  @Uint32() external int MofResourceName;
  @Uint32() external int GuidCount;
  external WMIREGGUIDW WmiRegGuid;
}

class MOF_FIELD extends Struct {
  @Uint64() external int DataPtr;
  @Uint32() external int Length;
  @Uint32() external int DataType;
}

class EVENT_INSTANCE_INFO extends Struct {
  @IntPtr() external int RegHandle;
  @Uint32() external int InstanceId;
}

class TRACE_GUID_REGISTRATION extends Struct {
  external Pointer<GUID> Guid;
  @IntPtr() external int RegHandle;
}

class TRACE_GUID_PROPERTIES extends Struct {
  external GUID Guid;
  @Uint32() external int GuidType;
  @Uint32() external int LoggerId;
  @Uint32() external int EnableLevel;
  @Uint32() external int EnableFlags;
  @Uint8() external int IsEnable;
}

class TRACE_ENABLE_INFO extends Struct {
  @Uint32() external int IsEnabled;
  @Uint8() external int Level;
  @Uint8() external int Reserved1;
  @Uint16() external int LoggerId;
  @Uint32() external int EnableProperty;
  @Uint32() external int Reserved2;
  @Uint64() external int MatchAnyKeyword;
  @Uint64() external int MatchAllKeyword;
}

class TRACE_PROVIDER_INSTANCE_INFO extends Struct {
  @Uint32() external int NextOffset;
  @Uint32() external int EnableCount;
  @Uint32() external int Pid;
  @Uint32() external int Flags;
}

class TRACE_GUID_INFO extends Struct {
  @Uint32() external int InstanceCount;
  @Uint32() external int Reserved;
}

class PROFILE_SOURCE_INFO extends Struct {
  @Uint32() external int NextEntryOffset;
  @Uint32() external int Source;
  @Uint32() external int MinInterval;
  @Uint32() external int MaxInterval;
  @Uint64() external int Reserved;
  external __ushort__ Description;
}

class ENABLE_TRACE_PARAMETERS_V1 extends Struct {
  @Uint32() external int Version;
  @Uint32() external int EnableProperty;
  @Uint32() external int ControlFlags;
  external GUID SourceId;
  external Pointer<EVENT_FILTER_DESCRIPTOR> EnableFilterDesc;
}

class ENABLE_TRACE_PARAMETERS extends Struct {
  @Uint32() external int Version;
  @Uint32() external int EnableProperty;
  @Uint32() external int ControlFlags;
  external GUID SourceId;
  external Pointer<EVENT_FILTER_DESCRIPTOR> EnableFilterDesc;
  @Uint32() external int FilterDescCount;
}

class CLASSIC_EVENT_ID extends Struct {
  external GUID EventGuid;
  @Uint8() external int Type;
  external __ubyte__ Reserved;
}

class TRACE_PROFILE_INTERVAL extends Struct {
  @Uint32() external int Source;
  @Uint32() external int Interval;
}

class TRACE_VERSION_INFO extends Struct {
  @Uint32() external int EtwTraceProcessingVersion;
  @Uint32() external int Reserved;
}

class TRACE_PERIODIC_CAPTURE_STATE_INFO extends Struct {
  @Uint32() external int CaptureStateFrequencyInSeconds;
  @Uint16() external int ProviderCount;
  @Uint16() external int Reserved;
}

class ETW_TRACE_PARTITION_INFORMATION extends Struct {
  external GUID PartitionId;
  external GUID ParentId;
  @Int64() external int QpcOffsetFromRoot;
  @Uint32() external int PartitionType;
}

class ETW_TRACE_PARTITION_INFORMATION_V2 extends Struct {
  @Int64() external int QpcOffsetFromRoot;
  @Uint32() external int PartitionType;
  external Pointer<Utf16> PartitionId;
  external Pointer<Utf16> ParentId;
}

class EVENT_DESCRIPTOR extends Struct {
  @Uint16() external int Id;
  @Uint8() external int Version;
  @Uint8() external int Channel;
  @Uint8() external int Level;
  @Uint8() external int Opcode;
  @Uint16() external int Task;
  @Uint64() external int Keyword;
}

class EVENT_FILTER_DESCRIPTOR extends Struct {
  @Uint64() external int Ptr;
  @Uint32() external int Size;
  @Uint32() external int Type;
}

class EVENT_FILTER_HEADER extends Struct {
  @Uint16() external int Id;
  @Uint8() external int Version;
  external __ubyte__ Reserved;
  @Uint64() external int InstanceId;
  @Uint32() external int Size;
  @Uint32() external int NextOffset;
}

class EVENT_FILTER_EVENT_ID extends Struct {
  @Uint8() external int FilterIn;
  @Uint8() external int Reserved;
  @Uint16() external int Count;
  external __ushort__ Events;
}

class EVENT_FILTER_EVENT_NAME extends Struct {
  @Uint64() external int MatchAnyKeyword;
  @Uint64() external int MatchAllKeyword;
  @Uint8() external int Level;
  @Uint8() external int FilterIn;
  @Uint16() external int NameCount;
  external __ubyte__ Names;
}

class EVENT_FILTER_LEVEL_KW extends Struct {
  @Uint64() external int MatchAnyKeyword;
  @Uint64() external int MatchAllKeyword;
  @Uint8() external int Level;
  @Uint8() external int FilterIn;
}

class EVENT_EXTENDED_ITEM_INSTANCE extends Struct {
  @Uint32() external int InstanceId;
  @Uint32() external int ParentInstanceId;
  external GUID ParentGuid;
}

class EVENT_EXTENDED_ITEM_RELATED_ACTIVITYID extends Struct {
  external GUID RelatedActivityId;
}

class EVENT_EXTENDED_ITEM_TS_ID extends Struct {
  @Uint32() external int SessionId;
}

class EVENT_EXTENDED_ITEM_STACK_TRACE32 extends Struct {
  @Uint64() external int MatchId;
  external __uint__ Address;
}

class EVENT_EXTENDED_ITEM_STACK_TRACE64 extends Struct {
  @Uint64() external int MatchId;
  external __uint64__ Address;
}

class EVENT_EXTENDED_ITEM_PEBS_INDEX extends Struct {
  @Uint64() external int PebsIndex;
}

class EVENT_EXTENDED_ITEM_PMC_COUNTERS extends Struct {
  external __uint64__ Counter;
}

class EVENT_EXTENDED_ITEM_PROCESS_START_KEY extends Struct {
  @Uint64() external int ProcessStartKey;
}

class EVENT_EXTENDED_ITEM_EVENT_KEY extends Struct {
  @Uint64() external int Key;
}

class EVENT_RECORD extends Struct {
  external EVENT_HEADER EventHeader;
  external ETW_BUFFER_CONTEXT BufferContext;
  @Uint16() external int ExtendedDataCount;
  @Uint16() external int UserDataLength;
  external Pointer<EVENT_HEADER_EXTENDED_DATA_ITEM> ExtendedData;
  external Pointer UserData;
  external Pointer UserContext;
}

class PROPERTY_DATA_DESCRIPTOR extends Struct {
  @Uint64() external int PropertyName;
  @Uint32() external int ArrayIndex;
  @Uint32() external int Reserved;
}

class PAYLOAD_FILTER_PREDICATE extends Struct {
  external Pointer<Utf16> FieldName;
  @Uint16() external int CompareOp;
  external Pointer<Utf16> Value;
}

class PROVIDER_FILTER_INFO extends Struct {
  @Uint8() external int Id;
  @Uint8() external int Version;
  @Uint32() external int MessageOffset;
  @Uint32() external int Reserved;
  @Uint32() external int PropertyCount;
  external EVENT_PROPERTY_INFO EventPropertyInfoArray;
}

class PROVIDER_FIELD_INFO extends Struct {
  @Uint32() external int NameOffset;
  @Uint32() external int DescriptionOffset;
  @Uint64() external int Value;
}

class PROVIDER_FIELD_INFOARRAY extends Struct {
  @Uint32() external int NumberOfElements;
  @Uint32() external int FieldType;
  external PROVIDER_FIELD_INFO FieldInfoArray;
}

class TRACE_PROVIDER_INFO extends Struct {
  external GUID ProviderGuid;
  @Uint32() external int SchemaSource;
  @Uint32() external int ProviderNameOffset;
}

class PROVIDER_ENUMERATION_INFO extends Struct {
  @Uint32() external int NumberOfProviders;
  @Uint32() external int Reserved;
  external TRACE_PROVIDER_INFO TraceProviderInfoArray;
}

class PROVIDER_EVENT_INFO extends Struct {
  @Uint32() external int NumberOfEvents;
  @Uint32() external int Reserved;
  external EVENT_DESCRIPTOR EventDescriptorsArray;
}

class TDH_CONTEXT extends Struct {
  @Uint64() external int ParameterValue;
  @Uint32() external int ParameterType;
  @Uint32() external int ParameterSize;
}

class CTraceRelogger extends Struct {
}

class TDH_HANDLE extends Struct {
  @IntPtr() external int Value;
}

