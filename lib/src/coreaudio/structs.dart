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

class HTASK extends Struct {
  @IntPtr()
  external int Value;
}

class MCI_GENERIC_PARMS extends Struct {
  @IntPtr()
  external int dwCallback;
}

class MCI_OPEN_PARMSA extends Struct {
  @IntPtr()
  external int dwCallback;
  @Uint32()
  external int wDeviceID;
  external Pointer<Utf8> lpstrDeviceType;
  external Pointer<Utf8> lpstrElementName;
  external Pointer<Utf8> lpstrAlias;
}

class MCI_OPEN_PARMSW extends Struct {
  @IntPtr()
  external int dwCallback;
  @Uint32()
  external int wDeviceID;
  external Pointer<Utf16> lpstrDeviceType;
  external Pointer<Utf16> lpstrElementName;
  external Pointer<Utf16> lpstrAlias;
}

class MCI_PLAY_PARMS extends Struct {
  @IntPtr()
  external int dwCallback;
  @Uint32()
  external int dwFrom;
  @Uint32()
  external int dwTo;
}

class MCI_SEEK_PARMS extends Struct {
  @IntPtr()
  external int dwCallback;
  @Uint32()
  external int dwTo;
}

class MCI_STATUS_PARMS extends Struct {
  @IntPtr()
  external int dwCallback;
  @IntPtr()
  external int dwReturn;
  @Uint32()
  external int dwItem;
  @Uint32()
  external int dwTrack;
}

class MCI_INFO_PARMSA extends Struct {
  @IntPtr()
  external int dwCallback;
  external Pointer<Utf8> lpstrReturn;
  @Uint32()
  external int dwRetSize;
}

class MCI_INFO_PARMSW extends Struct {
  @IntPtr()
  external int dwCallback;
  external Pointer<Utf16> lpstrReturn;
  @Uint32()
  external int dwRetSize;
}

class MCI_GETDEVCAPS_PARMS extends Struct {
  @IntPtr()
  external int dwCallback;
  @Uint32()
  external int dwReturn;
  @Uint32()
  external int dwItem;
}

class MCI_SYSINFO_PARMSA extends Struct {
  @IntPtr()
  external int dwCallback;
  external Pointer<Utf8> lpstrReturn;
  @Uint32()
  external int dwRetSize;
  @Uint32()
  external int dwNumber;
  @Uint32()
  external int wDeviceType;
}

class MCI_SYSINFO_PARMSW extends Struct {
  @IntPtr()
  external int dwCallback;
  external Pointer<Utf16> lpstrReturn;
  @Uint32()
  external int dwRetSize;
  @Uint32()
  external int dwNumber;
  @Uint32()
  external int wDeviceType;
}

class MCI_SET_PARMS extends Struct {
  @IntPtr()
  external int dwCallback;
  @Uint32()
  external int dwTimeFormat;
  @Uint32()
  external int dwAudio;
}

class MCI_BREAK_PARMS extends Struct {
  @IntPtr()
  external int dwCallback;
  @Int32()
  external int nVirtKey;
  @IntPtr()
  external int hwndBreak;
}

class MCI_SAVE_PARMSA extends Struct {
  @IntPtr()
  external int dwCallback;
  external Pointer<Utf8> lpfilename;
}

class MCI_SAVE_PARMSW extends Struct {
  @IntPtr()
  external int dwCallback;
  external Pointer<Utf16> lpfilename;
}

class MCI_LOAD_PARMSA extends Struct {
  @IntPtr()
  external int dwCallback;
  external Pointer<Utf8> lpfilename;
}

class MCI_LOAD_PARMSW extends Struct {
  @IntPtr()
  external int dwCallback;
  external Pointer<Utf16> lpfilename;
}

class MCI_RECORD_PARMS extends Struct {
  @IntPtr()
  external int dwCallback;
  @Uint32()
  external int dwFrom;
  @Uint32()
  external int dwTo;
}

class MCI_VD_PLAY_PARMS extends Struct {
  @IntPtr()
  external int dwCallback;
  @Uint32()
  external int dwFrom;
  @Uint32()
  external int dwTo;
  @Uint32()
  external int dwSpeed;
}

class MCI_VD_STEP_PARMS extends Struct {
  @IntPtr()
  external int dwCallback;
  @Uint32()
  external int dwFrames;
}

class MCI_VD_ESCAPE_PARMSA extends Struct {
  @IntPtr()
  external int dwCallback;
  external Pointer<Utf8> lpstrCommand;
}

class MCI_VD_ESCAPE_PARMSW extends Struct {
  @IntPtr()
  external int dwCallback;
  external Pointer<Utf16> lpstrCommand;
}

class MCI_WAVE_OPEN_PARMSA extends Struct {
  @IntPtr()
  external int dwCallback;
  @Uint32()
  external int wDeviceID;
  external Pointer<Utf8> lpstrDeviceType;
  external Pointer<Utf8> lpstrElementName;
  external Pointer<Utf8> lpstrAlias;
  @Uint32()
  external int dwBufferSeconds;
}

class MCI_WAVE_OPEN_PARMSW extends Struct {
  @IntPtr()
  external int dwCallback;
  @Uint32()
  external int wDeviceID;
  external Pointer<Utf16> lpstrDeviceType;
  external Pointer<Utf16> lpstrElementName;
  external Pointer<Utf16> lpstrAlias;
  @Uint32()
  external int dwBufferSeconds;
}

class MCI_WAVE_DELETE_PARMS extends Struct {
  @IntPtr()
  external int dwCallback;
  @Uint32()
  external int dwFrom;
  @Uint32()
  external int dwTo;
}

class MCI_WAVE_SET_PARMS extends Struct {
  @IntPtr()
  external int dwCallback;
  @Uint32()
  external int dwTimeFormat;
  @Uint32()
  external int dwAudio;
  @Uint32()
  external int wInput;
  @Uint32()
  external int wOutput;
  @Uint16()
  external int wFormatTag;
  @Uint16()
  external int wReserved2;
  @Uint16()
  external int nChannels;
  @Uint16()
  external int wReserved3;
  @Uint32()
  external int nSamplesPerSec;
  @Uint32()
  external int nAvgBytesPerSec;
  @Uint16()
  external int nBlockAlign;
  @Uint16()
  external int wReserved4;
  @Uint16()
  external int wBitsPerSample;
  @Uint16()
  external int wReserved5;
}

class MCI_SEQ_SET_PARMS extends Struct {
  @IntPtr()
  external int dwCallback;
  @Uint32()
  external int dwTimeFormat;
  @Uint32()
  external int dwAudio;
  @Uint32()
  external int dwTempo;
  @Uint32()
  external int dwPort;
  @Uint32()
  external int dwSlave;
  @Uint32()
  external int dwMaster;
  @Uint32()
  external int dwOffset;
}

class MCI_ANIM_OPEN_PARMSA extends Struct {
  @IntPtr()
  external int dwCallback;
  @Uint32()
  external int wDeviceID;
  external Pointer<Utf8> lpstrDeviceType;
  external Pointer<Utf8> lpstrElementName;
  external Pointer<Utf8> lpstrAlias;
  @Uint32()
  external int dwStyle;
  @IntPtr()
  external int hWndParent;
}

class MCI_ANIM_OPEN_PARMSW extends Struct {
  @IntPtr()
  external int dwCallback;
  @Uint32()
  external int wDeviceID;
  external Pointer<Utf16> lpstrDeviceType;
  external Pointer<Utf16> lpstrElementName;
  external Pointer<Utf16> lpstrAlias;
  @Uint32()
  external int dwStyle;
  @IntPtr()
  external int hWndParent;
}

class MCI_ANIM_PLAY_PARMS extends Struct {
  @IntPtr()
  external int dwCallback;
  @Uint32()
  external int dwFrom;
  @Uint32()
  external int dwTo;
  @Uint32()
  external int dwSpeed;
}

class MCI_ANIM_STEP_PARMS extends Struct {
  @IntPtr()
  external int dwCallback;
  @Uint32()
  external int dwFrames;
}

class MCI_ANIM_WINDOW_PARMSA extends Struct {
  @IntPtr()
  external int dwCallback;
  @IntPtr()
  external int hWnd;
  @Uint32()
  external int nCmdShow;
  external Pointer<Utf8> lpstrText;
}

class MCI_ANIM_WINDOW_PARMSW extends Struct {
  @IntPtr()
  external int dwCallback;
  @IntPtr()
  external int hWnd;
  @Uint32()
  external int nCmdShow;
  external Pointer<Utf16> lpstrText;
}

class MCI_ANIM_RECT_PARMS extends Struct {
  @IntPtr()
  external int dwCallback;
  external RECT rc;
}

class MCI_ANIM_UPDATE_PARMS extends Struct {
  @IntPtr()
  external int dwCallback;
  external RECT rc;
  @IntPtr()
  external int hDC;
}

class MCI_OVLY_OPEN_PARMSA extends Struct {
  @IntPtr()
  external int dwCallback;
  @Uint32()
  external int wDeviceID;
  external Pointer<Utf8> lpstrDeviceType;
  external Pointer<Utf8> lpstrElementName;
  external Pointer<Utf8> lpstrAlias;
  @Uint32()
  external int dwStyle;
  @IntPtr()
  external int hWndParent;
}

class MCI_OVLY_OPEN_PARMSW extends Struct {
  @IntPtr()
  external int dwCallback;
  @Uint32()
  external int wDeviceID;
  external Pointer<Utf16> lpstrDeviceType;
  external Pointer<Utf16> lpstrElementName;
  external Pointer<Utf16> lpstrAlias;
  @Uint32()
  external int dwStyle;
  @IntPtr()
  external int hWndParent;
}

class MCI_OVLY_WINDOW_PARMSA extends Struct {
  @IntPtr()
  external int dwCallback;
  @IntPtr()
  external int hWnd;
  @Uint32()
  external int nCmdShow;
  external Pointer<Utf8> lpstrText;
}

class MCI_OVLY_WINDOW_PARMSW extends Struct {
  @IntPtr()
  external int dwCallback;
  @IntPtr()
  external int hWnd;
  @Uint32()
  external int nCmdShow;
  external Pointer<Utf16> lpstrText;
}

class MCI_OVLY_RECT_PARMS extends Struct {
  @IntPtr()
  external int dwCallback;
  external RECT rc;
}

class MCI_OVLY_SAVE_PARMSA extends Struct {
  @IntPtr()
  external int dwCallback;
  external Pointer<Utf8> lpfilename;
  external RECT rc;
}

class MCI_OVLY_SAVE_PARMSW extends Struct {
  @IntPtr()
  external int dwCallback;
  external Pointer<Utf16> lpfilename;
  external RECT rc;
}

class MCI_OVLY_LOAD_PARMSA extends Struct {
  @IntPtr()
  external int dwCallback;
  external Pointer<Utf8> lpfilename;
  external RECT rc;
}

class MCI_OVLY_LOAD_PARMSW extends Struct {
  @IntPtr()
  external int dwCallback;
  external Pointer<Utf16> lpfilename;
  external RECT rc;
}

class GUID_NULL extends Struct {}

class KSPRIORITY extends Struct {
  @Uint32()
  external int PriorityClass;
  @Uint32()
  external int PrioritySubClass;
}

class KSIDENTIFIER extends Struct {
  @Uint32()
  external int Anonymous;
}

class KSP_NODE extends Struct {
  external KSIDENTIFIER Property;
  @Uint32()
  external int NodeId;
  @Uint32()
  external int Reserved;
}

class KSM_NODE extends Struct {
  external KSIDENTIFIER Method;
  @Uint32()
  external int NodeId;
  @Uint32()
  external int Reserved;
}

class KSE_NODE extends Struct {
  external KSIDENTIFIER Event;
  @Uint32()
  external int NodeId;
  @Uint32()
  external int Reserved;
}

class KSPROPTYPESETID_General extends Struct {}

class KSMULTIPLE_ITEM extends Struct {
  @Uint32()
  external int Size;
  @Uint32()
  external int Count;
}

class KSPROPERTY_DESCRIPTION extends Struct {
  @Uint32()
  external int AccessFlags;
  @Uint32()
  external int DescriptionSize;
  external KSIDENTIFIER PropTypeSet;
  @Uint32()
  external int MembersListCount;
  @Uint32()
  external int Reserved;
}

class KSPROPERTY_MEMBERSHEADER extends Struct {
  @Uint32()
  external int MembersFlags;
  @Uint32()
  external int MembersSize;
  @Uint32()
  external int MembersCount;
  @Uint32()
  external int Flags;
}

class KSPROPERTY_BOUNDS_LONG extends Struct {
  @Uint32()
  external int Anonymous1;
  @Uint32()
  external int Anonymous2;
}

class KSPROPERTY_BOUNDS_LONGLONG extends Struct {
  @Uint32()
  external int Anonymous1;
  @Uint32()
  external int Anonymous2;
}

class KSPROPERTY_STEPPING_LONG extends Struct {
  @Uint32()
  external int SteppingDelta;
  @Uint32()
  external int Reserved;
  external KSPROPERTY_BOUNDS_LONG Bounds;
}

class KSPROPERTY_STEPPING_LONGLONG extends Struct {
  @Uint64()
  external int SteppingDelta;
  external KSPROPERTY_BOUNDS_LONGLONG Bounds;
}

class KSEVENTDATA extends Struct {
  @Uint32()
  external int NotificationType;
  @Uint32()
  external int Anonymous;
}

class KSQUERYBUFFER extends Struct {
  external KSIDENTIFIER Event;
  external Pointer<KSEVENTDATA> EventData;
  external Pointer Reserved;
}

class KSRELATIVEEVENT extends Struct {
  @Uint32()
  external int Size;
  @Uint32()
  external int Flags;
  @Uint32()
  external int Anonymous;
  external Pointer Reserved;
  external KSIDENTIFIER Event;
  external KSEVENTDATA EventData;
}

class KSEVENT_TIME_MARK extends Struct {
  external KSEVENTDATA EventData;
  @Int64()
  external int MarkTime;
}

class KSEVENT_TIME_INTERVAL extends Struct {
  external KSEVENTDATA EventData;
  @Int64()
  external int TimeBase;
  @Int64()
  external int Interval;
}

class KSINTERVAL extends Struct {
  @Int64()
  external int TimeBase;
  @Int64()
  external int Interval;
}

class KSPROPSETID_General extends Struct {}

class KSCOMPONENTID extends Struct {
  external GUID Manufacturer;
  external GUID Product;
  external GUID Component;
  external GUID Name;
  @Uint32()
  external int Version;
  @Uint32()
  external int Revision;
}

class KSMETHODSETID_StreamIo extends Struct {}

class KSPROPSETID_MediaSeeking extends Struct {}

class KSPROPERTY_POSITIONS extends Struct {
  @Int64()
  external int Current;
  @Int64()
  external int Stop;
  @Uint32()
  external int CurrentFlags;
  @Uint32()
  external int StopFlags;
}

class KSPROPERTY_MEDIAAVAILABLE extends Struct {
  @Int64()
  external int Earliest;
  @Int64()
  external int Latest;
}

class KSP_TIMEFORMAT extends Struct {
  external KSIDENTIFIER Property;
  external GUID SourceFormat;
  external GUID TargetFormat;
  @Int64()
  external int Time;
}

class KSPROPSETID_Topology extends Struct {}

class KSCATEGORY_BRIDGE extends Struct {}

class KSCATEGORY_CAPTURE extends Struct {}

class KSCATEGORY_VIDEO_CAMERA extends Struct {}

class KSCATEGORY_SENSOR_CAMERA extends Struct {}

class KSCATEGORY_NETWORK_CAMERA extends Struct {}

class KSCATEGORY_SENSOR_GROUP extends Struct {}

class KSCATEGORY_RENDER extends Struct {}

class KSCATEGORY_MIXER extends Struct {}

class KSCATEGORY_SPLITTER extends Struct {}

class KSCATEGORY_DATACOMPRESSOR extends Struct {}

class KSCATEGORY_DATADECOMPRESSOR extends Struct {}

class KSCATEGORY_DATATRANSFORM extends Struct {}

class KSMFT_CATEGORY_VIDEO_DECODER extends Struct {}

class KSMFT_CATEGORY_VIDEO_ENCODER extends Struct {}

class KSMFT_CATEGORY_VIDEO_EFFECT extends Struct {}

class KSMFT_CATEGORY_MULTIPLEXER extends Struct {}

class KSMFT_CATEGORY_DEMULTIPLEXER extends Struct {}

class KSMFT_CATEGORY_AUDIO_DECODER extends Struct {}

class KSMFT_CATEGORY_AUDIO_ENCODER extends Struct {}

class KSMFT_CATEGORY_AUDIO_EFFECT extends Struct {}

class KSMFT_CATEGORY_VIDEO_PROCESSOR extends Struct {}

class KSMFT_CATEGORY_OTHER extends Struct {}

class KSCATEGORY_COMMUNICATIONSTRANSFORM extends Struct {}

class KSCATEGORY_INTERFACETRANSFORM extends Struct {}

class KSCATEGORY_MEDIUMTRANSFORM extends Struct {}

class KSCATEGORY_FILESYSTEM extends Struct {}

class KSCATEGORY_CLOCK extends Struct {}

class KSCATEGORY_PROXY extends Struct {}

class KSCATEGORY_QUALITY extends Struct {}

class KSTOPOLOGY extends Struct {
  @Uint32()
  external int CategoriesCount;
  external Pointer<GUID> Categories;
  @Uint32()
  external int TopologyNodesCount;
  external Pointer<GUID> TopologyNodes;
  @Uint32()
  external int TopologyConnectionsCount;
  external Pointer<KSTOPOLOGY_CONNECTION> TopologyConnections;
  external Pointer<GUID> TopologyNodesNames;
  @Uint32()
  external int Reserved;
}

class KSNODE_CREATE extends Struct {
  @Uint32()
  external int CreateFlags;
  @Uint32()
  external int Node;
}

class KSTIME_FORMAT_FRAME extends Struct {}

class KSTIME_FORMAT_BYTE extends Struct {}

class KSTIME_FORMAT_SAMPLE extends Struct {}

class KSTIME_FORMAT_FIELD extends Struct {}

class KSTIME_FORMAT_MEDIA_TIME extends Struct {}

class KSINTERFACESETID_Standard extends Struct {}

class KSINTERFACESETID_FileIo extends Struct {}

class KSMEDIUMSETID_Standard extends Struct {}

class KSPROPSETID_Pin extends Struct {}

class KSP_PIN extends Struct {
  external KSIDENTIFIER Property;
  @Uint32()
  external int PinId;
  @Uint32()
  external int Anonymous;
}

class KSE_PIN extends Struct {
  external KSIDENTIFIER Event;
  @Uint32()
  external int PinId;
  @Uint32()
  external int Reserved;
}

class KSPIN_CINSTANCES extends Struct {
  @Uint32()
  external int PossibleCount;
  @Uint32()
  external int CurrentCount;
}

class KSDATAFORMAT extends Struct {
  @Uint32()
  external int Anonymous;
  @Int64()
  external int Alignment;
}

class KSATTRIBUTE extends Struct {
  @Uint32()
  external int Size;
  @Uint32()
  external int Flags;
  external GUID Attribute;
}

class KSPIN_CONNECT extends Struct {
  external KSIDENTIFIER Interface;
  external KSIDENTIFIER Medium;
  @Uint32()
  external int PinId;
  @IntPtr()
  external int PinToHandle;
  external KSPRIORITY Priority;
}

class KSPIN_PHYSICALCONNECTION extends Struct {
  @Uint32()
  external int Size;
  @Uint32()
  external int Pin;
  @Array(1)
  external Array<Uint16> SymbolicLinkName;
}

class KSEVENTSETID_PinCapsChange extends Struct {}

class KSEVENTSETID_VolumeLimit extends Struct {}

class KSNAME_Filter extends Struct {}

class KSNAME_Pin extends Struct {}

class KSNAME_Clock extends Struct {}

class KSNAME_Allocator extends Struct {}

class KSNAME_TopologyNode extends Struct {}

class KSDATAFORMAT_TYPE_STREAM extends Struct {}

class KSDATAFORMAT_SUBTYPE_NONE extends Struct {}

class KSDATAFORMAT_SPECIFIER_FILENAME extends Struct {}

class KSDATAFORMAT_SPECIFIER_FILEHANDLE extends Struct {}

class KSDATAFORMAT_SPECIFIER_NONE extends Struct {}

class KSPROPSETID_Quality extends Struct {}

class KSPROPSETID_Connection extends Struct {}

class KSPROPSETID_MemoryTransport extends Struct {}

class KSALLOCATOR_FRAMING extends Struct {
  @Uint32()
  external int Anonymous1;
  @Uint32()
  external int PoolType;
  @Uint32()
  external int Frames;
  @Uint32()
  external int FrameSize;
  @Uint32()
  external int Anonymous2;
  @Uint32()
  external int Reserved;
}

class KS_FRAMING_RANGE extends Struct {
  @Uint32()
  external int MinFrameSize;
  @Uint32()
  external int MaxFrameSize;
  @Uint32()
  external int Stepping;
}

class KS_FRAMING_RANGE_WEIGHTED extends Struct {
  external KS_FRAMING_RANGE Range;
  @Uint32()
  external int InPlaceWeight;
  @Uint32()
  external int NotInPlaceWeight;
}

class KS_COMPRESSION extends Struct {
  @Uint32()
  external int RatioNumerator;
  @Uint32()
  external int RatioDenominator;
  @Uint32()
  external int RatioConstantMargin;
}

class KS_FRAMING_ITEM extends Struct {
  external GUID MemoryType;
  external GUID BusType;
  @Uint32()
  external int MemoryFlags;
  @Uint32()
  external int BusFlags;
  @Uint32()
  external int Flags;
  @Uint32()
  external int Frames;
  @Uint32()
  external int Anonymous;
  @Uint32()
  external int MemoryTypeWeight;
  external KS_FRAMING_RANGE PhysicalRange;
  external KS_FRAMING_RANGE_WEIGHTED FramingRange;
}

class KSALLOCATOR_FRAMING_EX extends Struct {
  @Uint32()
  external int CountItems;
  @Uint32()
  external int PinFlags;
  external KS_COMPRESSION OutputCompression;
  @Uint32()
  external int PinWeight;
  @Array(1)
  external Array<KS_FRAMING_ITEM> FramingItem;
}

class KSMEMORY_TYPE_SYSTEM extends Struct {}

class KSMEMORY_TYPE_USER extends Struct {}

class KSMEMORY_TYPE_KERNEL_PAGED extends Struct {}

class KSMEMORY_TYPE_KERNEL_NONPAGED extends Struct {}

class KSMEMORY_TYPE_DEVICE_UNKNOWN extends Struct {}

class KSEVENTSETID_StreamAllocator extends Struct {}

class KSMETHODSETID_StreamAllocator extends Struct {}

class KSPROPSETID_StreamAllocator extends Struct {}

class KSSTREAMALLOCATOR_STATUS extends Struct {
  external KSALLOCATOR_FRAMING Framing;
  @Uint32()
  external int AllocatedFrames;
  @Uint32()
  external int Reserved;
}

class KSSTREAMALLOCATOR_STATUS_EX extends Struct {
  external KSALLOCATOR_FRAMING_EX Framing;
  @Uint32()
  external int AllocatedFrames;
  @Uint32()
  external int Reserved;
}

class KSTIME extends Struct {
  @Int64()
  external int Time;
  @Uint32()
  external int Numerator;
  @Uint32()
  external int Denominator;
}

class KSSTREAM_HEADER extends Struct {
  @Uint32()
  external int Size;
  @Uint32()
  external int TypeSpecificFlags;
  external KSTIME PresentationTime;
  @Int64()
  external int Duration;
  @Uint32()
  external int FrameExtent;
  @Uint32()
  external int DataUsed;
  external Pointer Data;
  @Uint32()
  external int OptionsFlags;
  @Uint32()
  external int Reserved;
}

class KSSTREAM_METADATA_INFO extends Struct {
  @Uint32()
  external int BufferSize;
  @Uint32()
  external int UsedSize;
  external Pointer Data;
  external Pointer SystemVa;
  @Uint32()
  external int Flags;
  @Uint32()
  external int Reserved;
}

class KSSTREAM_UVC_METADATATYPE_TIMESTAMP extends Struct {
  @Uint32()
  external int PresentationTimeStamp;
  @Uint32()
  external int SourceClockReference;
  @Uint32()
  external int Anonymous;
  @Uint16()
  external int Reserved0;
  @Uint32()
  external int Reserved1;
}

class KSSTREAM_UVC_METADATA extends Struct {
  external KSSTREAM_UVC_METADATATYPE_TIMESTAMP StartOfFrameTimestamp;
  external KSSTREAM_UVC_METADATATYPE_TIMESTAMP EndOfFrameTimestamp;
}

class KSPIN_MDL_CACHING_NOTIFICATION extends Struct {
  @Uint32()
  external int Event;
  external Pointer Buffer;
}

class KSPIN_MDL_CACHING_NOTIFICATION32 extends Struct {
  @Uint32()
  external int Event;
  @Uint32()
  external int Buffer;
}

class KSPROPSETID_StreamInterface extends Struct {}

class KSPROPSETID_Stream extends Struct {}

class KSPROPSETID_PinMDLCacheClearProp extends Struct {}

class KSQUALITY_MANAGER extends Struct {
  @IntPtr()
  external int QualityManager;
  external Pointer Context;
}

class KSFRAMETIME extends Struct {
  @Int64()
  external int Duration;
  @Uint32()
  external int FrameFlags;
  @Uint32()
  external int Reserved;
}

class KSRATE extends Struct {
  @Int64()
  external int PresentationStart;
  @Int64()
  external int Duration;
  external KSIDENTIFIER Interface;
  @Int32()
  external int Rate;
  @Uint32()
  external int Flags;
}

class KSRATE_CAPABILITY extends Struct {
  external KSIDENTIFIER Property;
  external KSRATE Rate;
}

class KSPROPSETID_Clock extends Struct {}

class KSCLOCK_CREATE extends Struct {
  @Uint32()
  external int CreateFlags;
}

class KSCORRELATED_TIME extends Struct {
  @Int64()
  external int Time;
  @Int64()
  external int SystemTime;
}

class KSRESOLUTION extends Struct {
  @Int64()
  external int Granularity;
  @Int64()
  external int Error;
}

class KSEVENTSETID_Clock extends Struct {}

class KSEVENTSETID_Connection extends Struct {}

class KSQUALITY extends Struct {
  external Pointer Context;
  @Uint32()
  external int Proportion;
  @Int64()
  external int DeltaTime;
}

class KSERROR extends Struct {
  external Pointer Context;
  @Uint32()
  external int Status;
}

class KSEVENTSETID_Device extends Struct {}

class KSDEGRADESETID_Standard extends Struct {}

class KSPROPERTY_SERIALHDR extends Struct {
  external GUID PropertySet;
  @Uint32()
  external int Count;
}

class KSPROPERTY_SERIAL extends Struct {
  external KSIDENTIFIER PropTypeSet;
  @Uint32()
  external int Id;
  @Uint32()
  external int PropertyLength;
}

class MF_MDL_SHARED_PAYLOAD_KEY extends Struct {
  @Uint32()
  external int combined;
  external GUID GMDLHandle;
}

class KSMULTIPLE_DATA_PROP extends Struct {
  external KSIDENTIFIER Property;
  external KSMULTIPLE_ITEM MultipleItem;
}

class KSMEDIUMSETID_MidiBus extends Struct {}

class KSMEDIUMSETID_VPBus extends Struct {}

class KSINTERFACESETID_Media extends Struct {}

class KSCOMPONENTID_USBAUDIO extends Struct {}

class KSNODETYPE_INPUT_UNDEFINED extends Struct {}

class KSNODETYPE_MICROPHONE extends Struct {}

class KSNODETYPE_DESKTOP_MICROPHONE extends Struct {}

class KSNODETYPE_PERSONAL_MICROPHONE extends Struct {}

class KSNODETYPE_OMNI_DIRECTIONAL_MICROPHONE extends Struct {}

class KSNODETYPE_MICROPHONE_ARRAY extends Struct {}

class KSNODETYPE_PROCESSING_MICROPHONE_ARRAY extends Struct {}

class KSCATEGORY_MICROPHONE_ARRAY_PROCESSOR extends Struct {}

class KSNODETYPE_OUTPUT_UNDEFINED extends Struct {}

class KSNODETYPE_SPEAKER extends Struct {}

class KSNODETYPE_HEADPHONES extends Struct {}

class KSNODETYPE_HEAD_MOUNTED_DISPLAY_AUDIO extends Struct {}

class KSNODETYPE_DESKTOP_SPEAKER extends Struct {}

class KSNODETYPE_ROOM_SPEAKER extends Struct {}

class KSNODETYPE_COMMUNICATION_SPEAKER extends Struct {}

class KSNODETYPE_LOW_FREQUENCY_EFFECTS_SPEAKER extends Struct {}

class KSNODETYPE_BIDIRECTIONAL_UNDEFINED extends Struct {}

class KSNODETYPE_HANDSET extends Struct {}

class KSNODETYPE_HEADSET extends Struct {}

class KSNODETYPE_SPEAKERPHONE_NO_ECHO_REDUCTION extends Struct {}

class KSNODETYPE_ECHO_SUPPRESSING_SPEAKERPHONE extends Struct {}

class KSNODETYPE_ECHO_CANCELING_SPEAKERPHONE extends Struct {}

class KSNODETYPE_TELEPHONY_UNDEFINED extends Struct {}

class KSNODETYPE_PHONE_LINE extends Struct {}

class KSNODETYPE_TELEPHONE extends Struct {}

class KSNODETYPE_DOWN_LINE_PHONE extends Struct {}

class KSNODETYPE_EXTERNAL_UNDEFINED extends Struct {}

class KSNODETYPE_ANALOG_CONNECTOR extends Struct {}

class KSNODETYPE_DIGITAL_AUDIO_INTERFACE extends Struct {}

class KSNODETYPE_LINE_CONNECTOR extends Struct {}

class KSNODETYPE_LEGACY_AUDIO_CONNECTOR extends Struct {}

class KSNODETYPE_SPDIF_INTERFACE extends Struct {}

class KSNODETYPE_1394_DA_STREAM extends Struct {}

class KSNODETYPE_1394_DV_STREAM_SOUNDTRACK extends Struct {}

class KSNODETYPE_EMBEDDED_UNDEFINED extends Struct {}

class KSNODETYPE_LEVEL_CALIBRATION_NOISE_SOURCE extends Struct {}

class KSNODETYPE_EQUALIZATION_NOISE extends Struct {}

class KSNODETYPE_CD_PLAYER extends Struct {}

class KSNODETYPE_DAT_IO_DIGITAL_AUDIO_TAPE extends Struct {}

class KSNODETYPE_DCC_IO_DIGITAL_COMPACT_CASSETTE extends Struct {}

class KSNODETYPE_MINIDISK extends Struct {}

class KSNODETYPE_ANALOG_TAPE extends Struct {}

class KSNODETYPE_PHONOGRAPH extends Struct {}

class KSNODETYPE_VCR_AUDIO extends Struct {}

class KSNODETYPE_VIDEO_DISC_AUDIO extends Struct {}

class KSNODETYPE_DVD_AUDIO extends Struct {}

class KSNODETYPE_TV_TUNER_AUDIO extends Struct {}

class KSNODETYPE_SATELLITE_RECEIVER_AUDIO extends Struct {}

class KSNODETYPE_CABLE_TUNER_AUDIO extends Struct {}

class KSNODETYPE_DSS_AUDIO extends Struct {}

class KSNODETYPE_RADIO_RECEIVER extends Struct {}

class KSNODETYPE_RADIO_TRANSMITTER extends Struct {}

class KSNODETYPE_MULTITRACK_RECORDER extends Struct {}

class KSNODETYPE_SYNTHESIZER extends Struct {}

class KSNODETYPE_HDMI_INTERFACE extends Struct {}

class KSNODETYPE_DISPLAYPORT_INTERFACE extends Struct {}

class KSNODETYPE_AUDIO_LOOPBACK extends Struct {}

class KSNODETYPE_AUDIO_KEYWORDDETECTOR extends Struct {}

class KSNODETYPE_MIDI_JACK extends Struct {}

class KSNODETYPE_MIDI_ELEMENT extends Struct {}

class KSNODETYPE_AUDIO_ENGINE extends Struct {}

class KSNODETYPE_SPEAKERS_STATIC_JACK extends Struct {}

class PINNAME_SPDIF_OUT extends Struct {}

class PINNAME_SPDIF_IN extends Struct {}

class PINNAME_HDMI_OUT extends Struct {}

class PINNAME_DISPLAYPORT_OUT extends Struct {}

class KSNODETYPE_DRM_DESCRAMBLE extends Struct {}

class KSNODETYPE_TELEPHONY_BIDI extends Struct {}

class KSNODETYPE_FM_RX extends Struct {}

class KSCATEGORY_AUDIO extends Struct {}

class KSCATEGORY_VIDEO extends Struct {}

class KSCATEGORY_REALTIME extends Struct {}

class KSCATEGORY_TEXT extends Struct {}

class KSCATEGORY_NETWORK extends Struct {}

class KSCATEGORY_TOPOLOGY extends Struct {}

class KSCATEGORY_VIRTUAL extends Struct {}

class KSCATEGORY_ACOUSTIC_ECHO_CANCEL extends Struct {}

class KSCATEGORY_WDMAUD_USE_PIN_NAME extends Struct {}

class KSCATEGORY_ESCALANTE_PLATFORM_DRIVER extends Struct {}

class KSDATAFORMAT_TYPE_VIDEO extends Struct {}

class KSDATAFORMAT_TYPE_AUDIO extends Struct {}

class KSDATAFORMAT_TYPE_TEXT extends Struct {}

class KSDATAFORMAT_SUBTYPE_ANALOG extends Struct {}

class KSDATAFORMAT_SUBTYPE_DRM extends Struct {}

class KSDATAFORMAT_SUBTYPE_ALAW extends Struct {}

class KSDATAFORMAT_SUBTYPE_MULAW extends Struct {}

class KSDATAFORMAT_SUBTYPE_ADPCM extends Struct {}

class KSDATAFORMAT_SUBTYPE_MPEG extends Struct {}

class KSDATAFORMAT_SPECIFIER_VC_ID extends Struct {}

class KSDATAFORMAT_SPECIFIER_WAVEFORMATEX extends Struct {}

class KSDATAFORMAT_SPECIFIER_DSOUND extends Struct {}

class KSDATAFORMAT_WAVEFORMATEX extends Struct {
  external KSDATAFORMAT DataFormat;
  external WAVEFORMATEX WaveFormatEx;
}

class WAVEFORMATEXTENSIBLE_IEC61937 extends Struct {
  external WAVEFORMATEXTENSIBLE FormatExt;
  @Uint32()
  external int dwEncodedSamplesPerSec;
  @Uint32()
  external int dwEncodedChannelCount;
  @Uint32()
  external int dwAverageBytesPerSec;
}

class KSDATAFORMAT_WAVEFORMATEXTENSIBLE extends Struct {
  external KSDATAFORMAT DataFormat;
  external WAVEFORMATEXTENSIBLE WaveFormatExt;
}

class KSDSOUND_BUFFERDESC extends Struct {
  @Uint32()
  external int Flags;
  @Uint32()
  external int Control;
  external WAVEFORMATEX WaveFormatEx;
}

class KSDATAFORMAT_DSOUND extends Struct {
  external KSDATAFORMAT DataFormat;
  external KSDSOUND_BUFFERDESC BufferDesc;
}

class KSAUDIO_POSITION extends Struct {
  @Uint64()
  external int PlayOffset;
  @Uint64()
  external int WriteOffset;
}

class KSAUDIO_PRESENTATION_POSITION extends Struct {
  @Uint64()
  external int u64PositionInBlocks;
  @Uint64()
  external int u64QPCPosition;
}

class _KSAUDIO_PACKETSIZE_SIGNALPROCESSINGMODE_CONSTRAINT extends Struct {
  external GUID ProcessingMode;
  @Uint32()
  external int SamplesPerProcessingPacket;
  @Uint32()
  external int ProcessingPacketDurationInHns;
}

class KSAUDIO_PACKETSIZE_CONSTRAINTS extends Struct {
  @Uint32()
  external int MinPacketPeriodInHns;
  @Uint32()
  external int PacketSizeFileAlignment;
  @Uint32()
  external int Reserved;
  @Uint32()
  external int NumProcessingModeConstraints;
  @Array(1)
  external Array<_KSAUDIO_PACKETSIZE_SIGNALPROCESSINGMODE_CONSTRAINT>
      ProcessingModeConstraints;
}

class KSAUDIO_PACKETSIZE_CONSTRAINTS2 extends Struct {
  @Uint32()
  external int MinPacketPeriodInHns;
  @Uint32()
  external int PacketSizeFileAlignment;
  @Uint32()
  external int MaxPacketSizeInBytes;
  @Uint32()
  external int NumProcessingModeConstraints;
  @Array(1)
  external Array<_KSAUDIO_PACKETSIZE_SIGNALPROCESSINGMODE_CONSTRAINT>
      ProcessingModeConstraints;
}

class KSAUDIO_MICROPHONE_COORDINATES extends Struct {
  @Uint16()
  external int usType;
  @Int16()
  external int wXCoord;
  @Int16()
  external int wYCoord;
  @Int16()
  external int wZCoord;
  @Int16()
  external int wVerticalAngle;
  @Int16()
  external int wHorizontalAngle;
}

class KSAUDIO_MIC_ARRAY_GEOMETRY extends Struct {
  @Uint16()
  external int usVersion;
  @Uint16()
  external int usMicArrayType;
  @Int16()
  external int wVerticalAngleBegin;
  @Int16()
  external int wVerticalAngleEnd;
  @Int16()
  external int wHorizontalAngleBegin;
  @Int16()
  external int wHorizontalAngleEnd;
  @Uint16()
  external int usFrequencyBandLo;
  @Uint16()
  external int usFrequencyBandHi;
  @Uint16()
  external int usNumberOfMicrophones;
  @Array(1)
  external Array<KSAUDIO_MICROPHONE_COORDINATES> KsMicCoord;
}

class DS3DVECTOR extends Struct {
  @Uint32()
  external int Anonymous1;
  @Uint32()
  external int Anonymous2;
  @Uint32()
  external int Anonymous3;
}

class KSPROPSETID_DirectSound3DListener extends Struct {}

class KSDS3D_LISTENER_ALL extends Struct {
  external DS3DVECTOR Position;
  external DS3DVECTOR Velocity;
  external DS3DVECTOR OrientFront;
  external DS3DVECTOR OrientTop;
  @Float()
  external double DistanceFactor;
  @Float()
  external double RolloffFactor;
  @Float()
  external double DopplerFactor;
}

class KSDS3D_LISTENER_ORIENTATION extends Struct {
  external DS3DVECTOR Front;
  external DS3DVECTOR Top;
}

class KSPROPSETID_DirectSound3DBuffer extends Struct {}

class KSDS3D_BUFFER_ALL extends Struct {
  external DS3DVECTOR Position;
  external DS3DVECTOR Velocity;
  @Uint32()
  external int InsideConeAngle;
  @Uint32()
  external int OutsideConeAngle;
  external DS3DVECTOR ConeOrientation;
  @Int32()
  external int ConeOutsideVolume;
  @Float()
  external double MinDistance;
  @Float()
  external double MaxDistance;
  @Uint32()
  external int Mode;
}

class KSDS3D_BUFFER_CONE_ANGLES extends Struct {
  @Uint32()
  external int InsideConeAngle;
  @Uint32()
  external int OutsideConeAngle;
}

class KSDS3D_HRTF_PARAMS_MSG extends Struct {
  @Uint32()
  external int Size;
  @Uint32()
  external int Enabled;
  @Int32()
  external int SwapChannels;
  @Int32()
  external int ZeroAzimuth;
  @Int32()
  external int CrossFadeOutput;
  @Uint32()
  external int FilterSize;
}

class KSDS3D_HRTF_INIT_MSG extends Struct {
  @Uint32()
  external int Size;
  @Uint32()
  external int Quality;
  @Float()
  external double SampleRate;
  @Uint32()
  external int MaxFilterSize;
  @Uint32()
  external int FilterTransientMuteLength;
  @Uint32()
  external int FilterOverlapBufferLength;
  @Uint32()
  external int OutputOverlapBufferLength;
  @Uint32()
  external int Reserved;
}

class KSDS3D_HRTF_FILTER_FORMAT_MSG extends Struct {
  @Uint32()
  external int FilterMethod;
  @Uint32()
  external int CoeffFormat;
  @Uint32()
  external int Version;
  @Uint32()
  external int Reserved;
}

class KSPROPSETID_Hrtf3d extends Struct {}

class KSDS3D_ITD_PARAMS extends Struct {
  @Int32()
  external int Channel;
  @Float()
  external double VolSmoothScale;
  @Float()
  external double TotalDryAttenuation;
  @Float()
  external double TotalWetAttenuation;
  @Int32()
  external int SmoothFrequency;
  @Int32()
  external int Delay;
}

class KSDS3D_ITD_PARAMS_MSG extends Struct {
  @Uint32()
  external int Enabled;
  external KSDS3D_ITD_PARAMS LeftParams;
  external KSDS3D_ITD_PARAMS RightParams;
  @Uint32()
  external int Reserved;
}

class KSPROPSETID_Itd3d extends Struct {}

class KSDATARANGE_AUDIO extends Struct {
  external KSDATAFORMAT DataRange;
  @Uint32()
  external int MaximumChannels;
  @Uint32()
  external int MinimumBitsPerSample;
  @Uint32()
  external int MaximumBitsPerSample;
  @Uint32()
  external int MinimumSampleFrequency;
  @Uint32()
  external int MaximumSampleFrequency;
}

class KSDATAFORMAT_SUBTYPE_RIFF extends Struct {}

class KSDATAFORMAT_SUBTYPE_RIFFWAVE extends Struct {}

class KSPROPSETID_Bibliographic extends Struct {}

class KSPROPSETID_TopologyNode extends Struct {}

class KSPROPSETID_RtAudio extends Struct {}

class KSRTAUDIO_BUFFER_PROPERTY extends Struct {
  external KSIDENTIFIER Property;
  external Pointer BaseAddress;
  @Uint32()
  external int RequestedBufferSize;
}

class KSRTAUDIO_BUFFER_PROPERTY32 extends Struct {
  external KSIDENTIFIER Property;
  @Uint32()
  external int BaseAddress;
  @Uint32()
  external int RequestedBufferSize;
}

class KSRTAUDIO_BUFFER_PROPERTY_WITH_NOTIFICATION extends Struct {
  external KSIDENTIFIER Property;
  external Pointer BaseAddress;
  @Uint32()
  external int RequestedBufferSize;
  @Uint32()
  external int NotificationCount;
}

class KSRTAUDIO_BUFFER_PROPERTY_WITH_NOTIFICATION32 extends Struct {
  external KSIDENTIFIER Property;
  @Uint32()
  external int BaseAddress;
  @Uint32()
  external int RequestedBufferSize;
  @Uint32()
  external int NotificationCount;
}

class KSRTAUDIO_BUFFER extends Struct {
  external Pointer BufferAddress;
  @Uint32()
  external int ActualBufferSize;
  @Int32()
  external int CallMemoryBarrier;
}

class KSRTAUDIO_BUFFER32 extends Struct {
  @Uint32()
  external int BufferAddress;
  @Uint32()
  external int ActualBufferSize;
  @Int32()
  external int CallMemoryBarrier;
}

class KSRTAUDIO_HWLATENCY extends Struct {
  @Uint32()
  external int FifoSize;
  @Uint32()
  external int ChipsetDelay;
  @Uint32()
  external int CodecDelay;
}

class KSRTAUDIO_HWREGISTER_PROPERTY extends Struct {
  external KSIDENTIFIER Property;
  external Pointer BaseAddress;
}

class KSRTAUDIO_HWREGISTER_PROPERTY32 extends Struct {
  external KSIDENTIFIER Property;
  @Uint32()
  external int BaseAddress;
}

class KSRTAUDIO_HWREGISTER extends Struct {
  external Pointer Register;
  @Uint32()
  external int Width;
  @Uint64()
  external int Numerator;
  @Uint64()
  external int Denominator;
  @Uint32()
  external int Accuracy;
}

class KSRTAUDIO_HWREGISTER32 extends Struct {
  @Uint32()
  external int Register;
  @Uint32()
  external int Width;
  @Uint64()
  external int Numerator;
  @Uint64()
  external int Denominator;
  @Uint32()
  external int Accuracy;
}

class KSRTAUDIO_NOTIFICATION_EVENT_PROPERTY extends Struct {
  external KSIDENTIFIER Property;
  @IntPtr()
  external int NotificationEvent;
}

class KSRTAUDIO_NOTIFICATION_EVENT_PROPERTY32 extends Struct {
  external KSIDENTIFIER Property;
  @Uint32()
  external int NotificationEvent;
}

class KSRTAUDIO_GETREADPACKET_INFO extends Struct {
  @Uint32()
  external int PacketNumber;
  @Uint32()
  external int Flags;
  @Uint64()
  external int PerformanceCounterValue;
  @Int32()
  external int MoreData;
}

class KSRTAUDIO_SETWRITEPACKET_INFO extends Struct {
  @Uint32()
  external int PacketNumber;
  @Uint32()
  external int Flags;
  @Uint32()
  external int EosPacketLength;
}

class KSRTAUDIO_PACKETVREGISTER_PROPERTY extends Struct {
  external KSIDENTIFIER Property;
  external Pointer BaseAddress;
}

class KSRTAUDIO_PACKETVREGISTER extends Struct {
  external Pointer<Uint64> CompletedPacketCount;
  external Pointer<Uint64> CompletedPacketQPC;
  external Pointer<Uint64> CompletedPacketHash;
}

class KSPROPSETID_BtAudio extends Struct {}

class KSPROPSETID_DrmAudioStream extends Struct {}

class KSPROPSETID_SoundDetector extends Struct {}

class KSPROPSETID_SoundDetector2 extends Struct {}

class KSPROPSETID_InterleavedAudio extends Struct {}

class INTERLEAVED_AUDIO_FORMAT_INFORMATION extends Struct {
  @Uint32()
  external int Size;
  @Uint32()
  external int PrimaryChannelCount;
  @Uint32()
  external int PrimaryChannelStartPosition;
  @Uint32()
  external int PrimaryChannelMask;
  @Uint32()
  external int InterleavedChannelCount;
  @Uint32()
  external int InterleavedChannelStartPosition;
  @Uint32()
  external int InterleavedChannelMask;
}

class KSSOUNDDETECTORPROPERTY extends Struct {
  external KSIDENTIFIER Property;
  external GUID EventId;
}

class SOUNDDETECTOR_PATTERNHEADER extends Struct {
  @Uint32()
  external int Size;
  external GUID PatternType;
}

class KSEVENTSETID_SoundDetector extends Struct {}

class KSNOTIFICATIONID_SoundDetector extends Struct {}

class KSPROPSETID_Audio extends Struct {}

class KSAUDIO_COPY_PROTECTION extends Struct {
  @Int32()
  external int fCopyrighted;
  @Int32()
  external int fOriginal;
}

class KSAUDIO_CHANNEL_CONFIG extends Struct {
  @Int32()
  external int ActiveSpeakerPositions;
}

class KSAUDIO_DYNAMIC_RANGE extends Struct {
  @Uint32()
  external int QuietCompression;
  @Uint32()
  external int LoudCompression;
}

class KSAUDIO_MIXLEVEL extends Struct {
  @Int32()
  external int Mute;
  @Int32()
  external int Level;
}

class KSAUDIO_MIX_CAPS extends Struct {
  @Int32()
  external int Mute;
  @Int32()
  external int Minimum;
  @Int32()
  external int Maximum;
  @Uint32()
  external int Anonymous;
}

class KSAUDIO_MIXCAP_TABLE extends Struct {
  @Uint32()
  external int InputChannels;
  @Uint32()
  external int OutputChannels;
  @Array(1)
  external Array<KSAUDIO_MIX_CAPS> Capabilities;
}

class KSAUDIO_POSITIONEX extends Struct {
  @Int64()
  external int TimerFrequency;
  @Int64()
  external int TimeStamp1;
  external KSAUDIO_POSITION Position;
  @Int64()
  external int TimeStamp2;
}

class KSPROPSETID_TelephonyControl extends Struct {}

class KSTELEPHONY_CALLCONTROL extends Struct {
  @Uint32()
  external int CallType;
  @Uint32()
  external int CallControlOp;
}

class KSTELEPHONY_PROVIDERCHANGE extends Struct {
  @Uint32()
  external int CallType;
  @Uint32()
  external int ProviderChangeOp;
}

class KSTELEPHONY_CALLINFO extends Struct {
  @Uint32()
  external int CallType;
  @Uint32()
  external int CallState;
}

class KSPROPSETID_TelephonyTopology extends Struct {}

class KSTOPOLOGY_ENDPOINTID extends Struct {
  @Array(129)
  external Array<Uint16> TopologyName;
  @Uint32()
  external int PinId;
}

class KSTOPOLOGY_ENDPOINTIDPAIR extends Struct {
  external KSTOPOLOGY_ENDPOINTID RenderEndpoint;
  external KSTOPOLOGY_ENDPOINTID CaptureEndpoint;
}

class KSPROPSETID_FMRXTopology extends Struct {}

class KSPROPSETID_FMRXControl extends Struct {}

class KSEVENTSETID_Telephony extends Struct {}

class KSNODETYPE_DAC extends Struct {}

class KSNODETYPE_ADC extends Struct {}

class KSNODETYPE_SRC extends Struct {}

class KSNODETYPE_SUPERMIX extends Struct {}

class KSNODETYPE_MUX extends Struct {}

class KSNODETYPE_DEMUX extends Struct {}

class KSNODETYPE_SUM extends Struct {}

class KSNODETYPE_MUTE extends Struct {}

class KSNODETYPE_VOLUME extends Struct {}

class KSNODETYPE_TONE extends Struct {}

class KSNODETYPE_EQUALIZER extends Struct {}

class KSNODETYPE_AGC extends Struct {}

class KSNODETYPE_NOISE_SUPPRESS extends Struct {}

class KSNODETYPE_DELAY extends Struct {}

class KSNODETYPE_LOUDNESS extends Struct {}

class KSNODETYPE_PROLOGIC_DECODER extends Struct {}

class KSNODETYPE_STEREO_WIDE extends Struct {}

class KSNODETYPE_REVERB extends Struct {}

class KSNODETYPE_CHORUS extends Struct {}

class KSNODETYPE_3D_EFFECTS extends Struct {}

class KSNODETYPE_PARAMETRIC_EQUALIZER extends Struct {}

class KSNODETYPE_UPDOWN_MIX extends Struct {}

class KSNODETYPE_DYN_RANGE_COMPRESSOR extends Struct {}

class KSALGORITHMINSTANCE_SYSTEM_ACOUSTIC_ECHO_CANCEL extends Struct {}

class KSALGORITHMINSTANCE_SYSTEM_NOISE_SUPPRESS extends Struct {}

class KSALGORITHMINSTANCE_SYSTEM_AGC extends Struct {}

class KSALGORITHMINSTANCE_SYSTEM_MICROPHONE_ARRAY_PROCESSOR extends Struct {}

class KSNODETYPE_DEV_SPECIFIC extends Struct {}

class KSNODETYPE_PROLOGIC_ENCODER extends Struct {}

class KSNODETYPE_PEAKMETER extends Struct {}

class KSAUDFNAME_BASS extends Struct {}

class KSAUDFNAME_TREBLE extends Struct {}

class KSAUDFNAME_MIDRANGE extends Struct {}

class KSAUDFNAME_3D_STEREO extends Struct {}

class KSAUDFNAME_MASTER_VOLUME extends Struct {}

class KSAUDFNAME_MASTER_MUTE extends Struct {}

class KSAUDFNAME_WAVE_VOLUME extends Struct {}

class KSAUDFNAME_WAVE_MUTE extends Struct {}

class KSAUDFNAME_MIDI_VOLUME extends Struct {}

class KSAUDFNAME_MIDI_MUTE extends Struct {}

class KSAUDFNAME_CD_VOLUME extends Struct {}

class KSAUDFNAME_CD_MUTE extends Struct {}

class KSAUDFNAME_LINE_VOLUME extends Struct {}

class KSAUDFNAME_LINE_MUTE extends Struct {}

class KSAUDFNAME_MIC_VOLUME extends Struct {}

class KSAUDFNAME_MIC_MUTE extends Struct {}

class KSAUDFNAME_RECORDING_SOURCE extends Struct {}

class KSAUDFNAME_PC_SPEAKER_VOLUME extends Struct {}

class KSAUDFNAME_PC_SPEAKER_MUTE extends Struct {}

class KSAUDFNAME_MIDI_IN_VOLUME extends Struct {}

class KSAUDFNAME_CD_IN_VOLUME extends Struct {}

class KSAUDFNAME_LINE_IN_VOLUME extends Struct {}

class KSAUDFNAME_MIC_IN_VOLUME extends Struct {}

class KSAUDFNAME_WAVE_IN_VOLUME extends Struct {}

class KSAUDFNAME_VOLUME_CONTROL extends Struct {}

class KSAUDFNAME_MIDI extends Struct {}

class KSAUDFNAME_LINE_IN extends Struct {}

class KSAUDFNAME_RECORDING_CONTROL extends Struct {}

class KSAUDFNAME_CD_AUDIO extends Struct {}

class KSAUDFNAME_AUX_VOLUME extends Struct {}

class KSAUDFNAME_AUX_MUTE extends Struct {}

class KSAUDFNAME_AUX extends Struct {}

class KSAUDFNAME_PC_SPEAKER extends Struct {}

class KSAUDFNAME_WAVE_OUT_MIX extends Struct {}

class KSAUDFNAME_MONO_OUT extends Struct {}

class KSAUDFNAME_STEREO_MIX extends Struct {}

class KSAUDFNAME_MONO_MIX extends Struct {}

class KSAUDFNAME_MONO_OUT_VOLUME extends Struct {}

class KSAUDFNAME_MONO_OUT_MUTE extends Struct {}

class KSAUDFNAME_STEREO_MIX_VOLUME extends Struct {}

class KSAUDFNAME_STEREO_MIX_MUTE extends Struct {}

class KSAUDFNAME_MONO_MIX_VOLUME extends Struct {}

class KSAUDFNAME_MONO_MIX_MUTE extends Struct {}

class KSAUDFNAME_MICROPHONE_BOOST extends Struct {}

class KSAUDFNAME_ALTERNATE_MICROPHONE extends Struct {}

class KSAUDFNAME_3D_DEPTH extends Struct {}

class KSAUDFNAME_3D_CENTER extends Struct {}

class KSAUDFNAME_VIDEO_VOLUME extends Struct {}

class KSAUDFNAME_VIDEO_MUTE extends Struct {}

class KSAUDFNAME_VIDEO extends Struct {}

class KSAUDFNAME_PEAKMETER extends Struct {}

class KSMETHODSETID_Wavetable extends Struct {}

class KSWAVETABLE_WAVE_DESC extends Struct {
  external KSIDENTIFIER Identifier;
  @Uint32()
  external int Size;
  @Int32()
  external int Looped;
  @Uint32()
  external int LoopPoint;
  @Int32()
  external int InROM;
  external KSDATAFORMAT Format;
}

class KSPROPSETID_Wave extends Struct {}

class KSWAVE_COMPATCAPS extends Struct {
  @Uint32()
  external int ulDeviceType;
}

class KSWAVE_INPUT_CAPABILITIES extends Struct {
  @Uint32()
  external int MaximumChannelsPerConnection;
  @Uint32()
  external int MinimumBitsPerSample;
  @Uint32()
  external int MaximumBitsPerSample;
  @Uint32()
  external int MinimumSampleFrequency;
  @Uint32()
  external int MaximumSampleFrequency;
  @Uint32()
  external int TotalConnections;
  @Uint32()
  external int ActiveConnections;
}

class KSWAVE_OUTPUT_CAPABILITIES extends Struct {
  @Uint32()
  external int MaximumChannelsPerConnection;
  @Uint32()
  external int MinimumBitsPerSample;
  @Uint32()
  external int MaximumBitsPerSample;
  @Uint32()
  external int MinimumSampleFrequency;
  @Uint32()
  external int MaximumSampleFrequency;
  @Uint32()
  external int TotalConnections;
  @Uint32()
  external int StaticConnections;
  @Uint32()
  external int StreamingConnections;
  @Uint32()
  external int ActiveConnections;
  @Uint32()
  external int ActiveStaticConnections;
  @Uint32()
  external int ActiveStreamingConnections;
  @Uint32()
  external int Total3DConnections;
  @Uint32()
  external int Static3DConnections;
  @Uint32()
  external int Streaming3DConnections;
  @Uint32()
  external int Active3DConnections;
  @Uint32()
  external int ActiveStatic3DConnections;
  @Uint32()
  external int ActiveStreaming3DConnections;
  @Uint32()
  external int TotalSampleMemory;
  @Uint32()
  external int FreeSampleMemory;
  @Uint32()
  external int LargestFreeContiguousSampleMemory;
}

class KSWAVE_VOLUME extends Struct {
  @Int32()
  external int LeftAttenuation;
  @Int32()
  external int RightAttenuation;
}

class KSWAVE_BUFFER extends Struct {
  @Uint32()
  external int Attributes;
  @Uint32()
  external int BufferSize;
  external Pointer BufferAddress;
}

class KSMUSIC_TECHNOLOGY_PORT extends Struct {}

class KSMUSIC_TECHNOLOGY_SQSYNTH extends Struct {}

class KSMUSIC_TECHNOLOGY_FMSYNTH extends Struct {}

class KSMUSIC_TECHNOLOGY_WAVETABLE extends Struct {}

class KSMUSIC_TECHNOLOGY_SWSYNTH extends Struct {}

class KSDATARANGE_MUSIC extends Struct {
  external KSDATAFORMAT DataRange;
  external GUID Technology;
  @Uint32()
  external int Channels;
  @Uint32()
  external int Notes;
  @Uint32()
  external int ChannelMask;
}

class KSPROPSETID_Cyclic extends Struct {}

class KSEVENTSETID_AudioControlChange extends Struct {}

class KSEVENTSETID_LoopedStreaming extends Struct {}

class LOOPEDSTREAMING_POSITION_EVENT_DATA extends Struct {
  external KSEVENTDATA KsEventData;
  @Uint64()
  external int Position;
}

class KSNODEPROPERTY extends Struct {
  external KSIDENTIFIER Property;
  @Uint32()
  external int NodeId;
  @Uint32()
  external int Reserved;
}

class KSNODEPROPERTY_AUDIO_CHANNEL extends Struct {
  external KSNODEPROPERTY NodeProperty;
  @Int32()
  external int Channel;
  @Uint32()
  external int Reserved;
}

class KSNODEPROPERTY_AUDIO_DEV_SPECIFIC extends Struct {
  external KSNODEPROPERTY NodeProperty;
  @Uint32()
  external int DevSpecificId;
  @Uint32()
  external int DeviceInfo;
  @Uint32()
  external int Length;
}

class KSNODEPROPERTY_AUDIO_3D_LISTENER extends Struct {
  external KSNODEPROPERTY NodeProperty;
  external Pointer ListenerId;
}

class KSNODEPROPERTY_AUDIO_PROPERTY extends Struct {
  external KSNODEPROPERTY NodeProperty;
  external Pointer AppContext;
  @Uint32()
  external int Length;
}

class KSDATAFORMAT_TYPE_MUSIC extends Struct {}

class KSDATAFORMAT_TYPE_MIDI extends Struct {}

class KSDATAFORMAT_SUBTYPE_MIDI extends Struct {}

class KSDATAFORMAT_SUBTYPE_MIDI_BUS extends Struct {}

class KSDATAFORMAT_SUBTYPE_RIFFMIDI extends Struct {}

class KSMUSICFORMAT extends Struct {
  @Uint32()
  external int TimeDeltaMs;
  @Uint32()
  external int ByteCount;
}

class KSDATAFORMAT_TYPE_STANDARD_ELEMENTARY_STREAM extends Struct {}

class KSDATAFORMAT_TYPE_STANDARD_PES_PACKET extends Struct {}

class KSDATAFORMAT_TYPE_STANDARD_PACK_HEADER extends Struct {}

class KSDATAFORMAT_SUBTYPE_STANDARD_MPEG1_VIDEO extends Struct {}

class KSDATAFORMAT_SUBTYPE_STANDARD_MPEG1_AUDIO extends Struct {}

class KSDATAFORMAT_SUBTYPE_STANDARD_MPEG2_VIDEO extends Struct {}

class KSDATAFORMAT_SUBTYPE_STANDARD_MPEG2_AUDIO extends Struct {}

class KSDATAFORMAT_SUBTYPE_STANDARD_AC3_AUDIO extends Struct {}

class KSDATAFORMAT_SPECIFIER_DIALECT_MPEG1_VIDEO extends Struct {}

class KSDATAFORMAT_SPECIFIER_DIALECT_MPEG1_AUDIO extends Struct {}

class KSDATAFORMAT_SPECIFIER_DIALECT_MPEG2_VIDEO extends Struct {}

class KSDATAFORMAT_SPECIFIER_DIALECT_MPEG2_AUDIO extends Struct {}

class KSDATAFORMAT_SPECIFIER_DIALECT_AC3_AUDIO extends Struct {}

class KSDATAFORMAT_SUBTYPE_DSS_VIDEO extends Struct {}

class KSDATAFORMAT_SUBTYPE_DSS_AUDIO extends Struct {}

class KSDATAFORMAT_SUBTYPE_MPEG1Packet extends Struct {}

class KSDATAFORMAT_SUBTYPE_MPEG1Payload extends Struct {}

class KSDATAFORMAT_SUBTYPE_MPEG1Video extends Struct {}

class KSDATAFORMAT_SPECIFIER_MPEG1_VIDEO extends Struct {}

class KSDATAFORMAT_TYPE_MPEG2_PES extends Struct {}

class KSDATAFORMAT_TYPE_MPEG2_PROGRAM extends Struct {}

class KSDATAFORMAT_TYPE_MPEG2_TRANSPORT extends Struct {}

class KSDATAFORMAT_SUBTYPE_MPEG2_VIDEO extends Struct {}

class KSDATAFORMAT_SPECIFIER_MPEG2_VIDEO extends Struct {}

class KSPROPSETID_Mpeg2Vid extends Struct {}

class KSMPEGVID_RECT extends Struct {
  @Uint32()
  external int StartX;
  @Uint32()
  external int StartY;
  @Uint32()
  external int EndX;
  @Uint32()
  external int EndY;
}

class KSDATAFORMAT_SUBTYPE_MPEG2_AUDIO extends Struct {}

class KSDATAFORMAT_SPECIFIER_MPEG2_AUDIO extends Struct {}

class KSDATAFORMAT_SUBTYPE_LPCM_AUDIO extends Struct {}

class KSDATAFORMAT_SPECIFIER_LPCM_AUDIO extends Struct {}

class KSDATAFORMAT_SUBTYPE_AC3_AUDIO extends Struct {}

class KSDATAFORMAT_SPECIFIER_AC3_AUDIO extends Struct {}

class KSPROPSETID_AC3 extends Struct {}

class KSAC3_ERROR_CONCEALMENT extends Struct {
  @Int32()
  external int fRepeatPreviousBlock;
  @Int32()
  external int fErrorInCurrentBlock;
}

class KSAC3_ALTERNATE_AUDIO extends Struct {
  @Int32()
  external int fStereo;
  @Uint32()
  external int DualMode;
}

class KSAC3_DOWNMIX extends Struct {
  @Int32()
  external int fDownMix;
  @Int32()
  external int fDolbySurround;
}

class KSAC3_BIT_STREAM_MODE extends Struct {
  @Int32()
  external int BitStreamMode;
}

class KSAC3_DIALOGUE_LEVEL extends Struct {
  @Uint32()
  external int DialogueLevel;
}

class KSAC3_ROOM_TYPE extends Struct {
  @Int32()
  external int fLargeRoom;
}

class KSDATAFORMAT_SUBTYPE_IEC61937_DOLBY_DIGITAL extends Struct {}

class KSDATAFORMAT_SUBTYPE_IEC61937_WMA_PRO extends Struct {}

class KSDATAFORMAT_SUBTYPE_IEC61937_DTS extends Struct {}

class KSDATAFORMAT_SUBTYPE_IEC61937_MPEG1 extends Struct {}

class KSDATAFORMAT_SUBTYPE_IEC61937_MPEG2 extends Struct {}

class KSDATAFORMAT_SUBTYPE_IEC61937_MPEG3 extends Struct {}

class KSDATAFORMAT_SUBTYPE_IEC61937_AAC extends Struct {}

class KSDATAFORMAT_SUBTYPE_IEC61937_ATRAC extends Struct {}

class KSDATAFORMAT_SUBTYPE_IEC61937_ONE_BIT_AUDIO extends Struct {}

class KSDATAFORMAT_SUBTYPE_IEC61937_DOLBY_DIGITAL_PLUS extends Struct {}

class KSDATAFORMAT_SUBTYPE_IEC61937_DOLBY_DIGITAL_PLUS_ATMOS extends Struct {}

class KSDATAFORMAT_SUBTYPE_IEC61937_DTS_HD extends Struct {}

class KSDATAFORMAT_SUBTYPE_IEC61937_DOLBY_MLP extends Struct {}

class KSDATAFORMAT_SUBTYPE_IEC61937_DOLBY_MAT20 extends Struct {}

class KSDATAFORMAT_SUBTYPE_IEC61937_DOLBY_MAT21 extends Struct {}

class KSDATAFORMAT_SUBTYPE_IEC61937_DST extends Struct {}

class KSDATAFORMAT_SUBTYPE_MPEGLAYER3 extends Struct {}

class KSDATAFORMAT_SUBTYPE_MPEG_HEAAC extends Struct {}

class KSDATAFORMAT_SUBTYPE_WMAUDIO2 extends Struct {}

class KSDATAFORMAT_SUBTYPE_WMAUDIO3 extends Struct {}

class KSDATAFORMAT_SUBTYPE_WMAUDIO_LOSSLESS extends Struct {}

class KSDATAFORMAT_SUBTYPE_DTS_AUDIO extends Struct {}

class KSDATAFORMAT_SUBTYPE_SDDS_AUDIO extends Struct {}

class KSPROPSETID_AudioDecoderOut extends Struct {}

class KSDATAFORMAT_SUBTYPE_SUBPICTURE extends Struct {}

class KSPROPSETID_DvdSubPic extends Struct {}

class KS_DVD_YCrCb extends Struct {
  @Uint8()
  external int Reserved;
  @Uint8()
  external int Y;
  @Uint8()
  external int Cr;
  @Uint8()
  external int Cb;
}

class KS_DVD_YUV extends Struct {
  @Uint8()
  external int Reserved;
  @Uint8()
  external int Y;
  @Uint8()
  external int V;
  @Uint8()
  external int U;
}

class KSPROPERTY_SPPAL extends Struct {
  @Array(16)
  external Array<KS_DVD_YUV> sppal;
}

class KS_COLCON extends Struct {
  @Uint8()
  external int _bitfield1;
  @Uint8()
  external int _bitfield2;
  @Uint8()
  external int _bitfield3;
  @Uint8()
  external int _bitfield4;
}

class KSPROPERTY_SPHLI extends Struct {
  @Uint16()
  external int HLISS;
  @Uint16()
  external int Reserved;
  @Uint32()
  external int StartPTM;
  @Uint32()
  external int EndPTM;
  @Uint16()
  external int StartX;
  @Uint16()
  external int StartY;
  @Uint16()
  external int StopX;
  @Uint16()
  external int StopY;
  external KS_COLCON ColCon;
}

class KSPROPSETID_CopyProt extends Struct {}

class KS_DVDCOPY_CHLGKEY extends Struct {
  @Array(10)
  external Array<Uint8> ChlgKey;
  @Array(2)
  external Array<Uint8> Reserved;
}

class KS_DVDCOPY_BUSKEY extends Struct {
  @Array(5)
  external Array<Uint8> BusKey;
  @Array(1)
  external Array<Uint8> Reserved;
}

class KS_DVDCOPY_DISCKEY extends Struct {
  @Array(136)
  external Array<Uint8> DiscKey;
}

class KS_DVDCOPY_REGION extends Struct {
  @Uint8()
  external int Reserved;
  @Uint8()
  external int RegionData;
  @Array(2)
  external Array<Uint8> Reserved2;
}

class KS_DVDCOPY_TITLEKEY extends Struct {
  @Uint32()
  external int KeyFlags;
  @Array(2)
  external Array<Uint32> ReservedNT;
  @Array(6)
  external Array<Uint8> TitleKey;
  @Array(2)
  external Array<Uint8> Reserved;
}

class KS_COPY_MACROVISION extends Struct {
  @Uint32()
  external int MACROVISIONLevel;
}

class KS_DVDCOPY_SET_COPY_STATE extends Struct {
  @Uint32()
  external int DVDCopyState;
}

class KSCATEGORY_TVTUNER extends Struct {}

class KSCATEGORY_CROSSBAR extends Struct {}

class KSCATEGORY_TVAUDIO extends Struct {}

class KSCATEGORY_VPMUX extends Struct {}

class KSCATEGORY_VBICODEC extends Struct {}

class KSDATAFORMAT_SUBTYPE_VPVideo extends Struct {}

class KSDATAFORMAT_SUBTYPE_VPVBI extends Struct {}

class KSDATAFORMAT_SPECIFIER_VIDEOINFO extends Struct {}

class KSDATAFORMAT_SPECIFIER_VIDEOINFO2 extends Struct {}

class KSDATAFORMAT_SPECIFIER_H264_VIDEO extends Struct {}

class KSDATAFORMAT_SPECIFIER_JPEG_IMAGE extends Struct {}

class KSDATAFORMAT_SPECIFIER_IMAGE extends Struct {}

class KSDATAFORMAT_TYPE_IMAGE extends Struct {}

class KSDATAFORMAT_SUBTYPE_JPEG extends Struct {}

class KSDATAFORMAT_SUBTYPE_IMAGE_RGB32 extends Struct {}

class KSDATAFORMAT_SUBTYPE_L8 extends Struct {}

class KSDATAFORMAT_SUBTYPE_L8_IR extends Struct {}

class KSDATAFORMAT_SUBTYPE_L8_CUSTOM extends Struct {}

class KSDATAFORMAT_SUBTYPE_L16 extends Struct {}

class KSDATAFORMAT_SUBTYPE_L16_IR extends Struct {}

class KSDATAFORMAT_SUBTYPE_D16 extends Struct {}

class KSDATAFORMAT_SUBTYPE_L16_CUSTOM extends Struct {}

class KSDATAFORMAT_SUBTYPE_MJPG_IR extends Struct {}

class KSDATAFORMAT_SUBTYPE_MJPG_DEPTH extends Struct {}

class KSDATAFORMAT_SUBTYPE_MJPG_CUSTOM extends Struct {}

class KSDATAFORMAT_TYPE_ANALOGVIDEO extends Struct {}

class KSDATAFORMAT_SPECIFIER_ANALOGVIDEO extends Struct {}

class KSDATAFORMAT_TYPE_ANALOGAUDIO extends Struct {}

class KSDATAFORMAT_SPECIFIER_VBI extends Struct {}

class KSDATAFORMAT_TYPE_VBI extends Struct {}

class KSDATAFORMAT_SUBTYPE_RAW8 extends Struct {}

class KSDATAFORMAT_SUBTYPE_CC extends Struct {}

class KSDATAFORMAT_SUBTYPE_NABTS extends Struct {}

class KSDATAFORMAT_SUBTYPE_TELETEXT extends Struct {}

class KS_RGBQUAD extends Struct {
  @Uint8()
  external int rgbBlue;
  @Uint8()
  external int rgbGreen;
  @Uint8()
  external int rgbRed;
  @Uint8()
  external int rgbReserved;
}

class KS_BITMAPINFOHEADER extends Struct {
  @Uint32()
  external int biSize;
  @Int32()
  external int biWidth;
  @Int32()
  external int biHeight;
  @Uint16()
  external int biPlanes;
  @Uint16()
  external int biBitCount;
  @Uint32()
  external int biCompression;
  @Uint32()
  external int biSizeImage;
  @Int32()
  external int biXPelsPerMeter;
  @Int32()
  external int biYPelsPerMeter;
  @Uint32()
  external int biClrUsed;
  @Uint32()
  external int biClrImportant;
}

class KS_TRUECOLORINFO extends Struct {
  @Array(3)
  external Array<Uint32> dwBitMasks;
  @Array(129)
  external Array<KS_RGBQUAD> bmiColors;
}

class KS_VIDEOINFOHEADER extends Struct {
  external RECT rcSource;
  external RECT rcTarget;
  @Uint32()
  external int dwBitRate;
  @Uint32()
  external int dwBitErrorRate;
  @Int64()
  external int AvgTimePerFrame;
  external KS_BITMAPINFOHEADER bmiHeader;
}

class KS_VIDEOINFO extends Struct {
  external RECT rcSource;
  external RECT rcTarget;
  @Uint32()
  external int dwBitRate;
  @Uint32()
  external int dwBitErrorRate;
  @Int64()
  external int AvgTimePerFrame;
  external KS_BITMAPINFOHEADER bmiHeader;
  @Uint32()
  external int Anonymous;
}

class KS_VBIINFOHEADER extends Struct {
  @Uint32()
  external int StartLine;
  @Uint32()
  external int EndLine;
  @Uint32()
  external int SamplingFrequency;
  @Uint32()
  external int MinLineStartTime;
  @Uint32()
  external int MaxLineStartTime;
  @Uint32()
  external int ActualLineStartTime;
  @Uint32()
  external int ActualLineEndTime;
  @Uint32()
  external int VideoStandard;
  @Uint32()
  external int SamplesPerLine;
  @Uint32()
  external int StrideInBytes;
  @Uint32()
  external int BufferSize;
}

class KS_AnalogVideoInfo extends Struct {
  external RECT rcSource;
  external RECT rcTarget;
  @Uint32()
  external int dwActiveWidth;
  @Uint32()
  external int dwActiveHeight;
  @Int64()
  external int AvgTimePerFrame;
}

class KS_TVTUNER_CHANGE_INFO extends Struct {
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int dwCountryCode;
  @Uint32()
  external int dwAnalogVideoStandard;
  @Uint32()
  external int dwChannel;
}

class KS_VIDEOINFOHEADER2 extends Struct {
  external RECT rcSource;
  external RECT rcTarget;
  @Uint32()
  external int dwBitRate;
  @Uint32()
  external int dwBitErrorRate;
  @Int64()
  external int AvgTimePerFrame;
  @Uint32()
  external int dwInterlaceFlags;
  @Uint32()
  external int dwCopyProtectFlags;
  @Uint32()
  external int dwPictAspectRatioX;
  @Uint32()
  external int dwPictAspectRatioY;
  @Uint32()
  external int Anonymous;
  @Uint32()
  external int dwReserved2;
  external KS_BITMAPINFOHEADER bmiHeader;
}

class KS_MPEG1VIDEOINFO extends Struct {
  external KS_VIDEOINFOHEADER hdr;
  @Uint32()
  external int dwStartTimeCode;
  @Uint32()
  external int cbSequenceHeader;
  @Array(1)
  external Array<Uint8> bSequenceHeader;
}

class KS_MPEGVIDEOINFO2 extends Struct {
  external KS_VIDEOINFOHEADER2 hdr;
  @Uint32()
  external int dwStartTimeCode;
  @Uint32()
  external int cbSequenceHeader;
  @Uint32()
  external int dwProfile;
  @Uint32()
  external int dwLevel;
  @Uint32()
  external int dwFlags;
  @Array(1)
  external Array<Uint32> bSequenceHeader;
}

class KS_H264VIDEOINFO extends Struct {
  @Uint16()
  external int wWidth;
  @Uint16()
  external int wHeight;
  @Uint16()
  external int wSARwidth;
  @Uint16()
  external int wSARheight;
  @Uint16()
  external int wProfile;
  @Uint8()
  external int bLevelIDC;
  @Uint16()
  external int wConstrainedToolset;
  @Uint32()
  external int bmSupportedUsages;
  @Uint16()
  external int bmCapabilities;
  @Uint32()
  external int bmSVCCapabilities;
  @Uint32()
  external int bmMVCCapabilities;
  @Uint32()
  external int dwFrameInterval;
  @Uint8()
  external int bMaxCodecConfigDelay;
  @Uint8()
  external int bmSupportedSliceModes;
  @Uint8()
  external int bmSupportedSyncFrameTypes;
  @Uint8()
  external int bResolutionScaling;
  @Uint8()
  external int bSimulcastSupport;
  @Uint8()
  external int bmSupportedRateControlModes;
  @Uint16()
  external int wMaxMBperSecOneResolutionNoScalability;
  @Uint16()
  external int wMaxMBperSecTwoResolutionsNoScalability;
  @Uint16()
  external int wMaxMBperSecThreeResolutionsNoScalability;
  @Uint16()
  external int wMaxMBperSecFourResolutionsNoScalability;
  @Uint16()
  external int wMaxMBperSecOneResolutionTemporalScalability;
  @Uint16()
  external int wMaxMBperSecTwoResolutionsTemporalScalablility;
  @Uint16()
  external int wMaxMBperSecThreeResolutionsTemporalScalability;
  @Uint16()
  external int wMaxMBperSecFourResolutionsTemporalScalability;
  @Uint16()
  external int wMaxMBperSecOneResolutionTemporalQualityScalability;
  @Uint16()
  external int wMaxMBperSecTwoResolutionsTemporalQualityScalability;
  @Uint16()
  external int wMaxMBperSecThreeResolutionsTemporalQualityScalablity;
  @Uint16()
  external int wMaxMBperSecFourResolutionsTemporalQualityScalability;
  @Uint16()
  external int wMaxMBperSecOneResolutionTemporalSpatialScalability;
  @Uint16()
  external int wMaxMBperSecTwoResolutionsTemporalSpatialScalability;
  @Uint16()
  external int wMaxMBperSecThreeResolutionsTemporalSpatialScalablity;
  @Uint16()
  external int wMaxMBperSecFourResolutionsTemporalSpatialScalability;
  @Uint16()
  external int wMaxMBperSecOneResolutionFullScalability;
  @Uint16()
  external int wMaxMBperSecTwoResolutionsFullScalability;
  @Uint16()
  external int wMaxMBperSecThreeResolutionsFullScalability;
  @Uint16()
  external int wMaxMBperSecFourResolutionsFullScalability;
}

class KS_MPEAUDIOINFO extends Struct {
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int dwReserved1;
  @Uint32()
  external int dwReserved2;
  @Uint32()
  external int dwReserved3;
}

class KS_DATAFORMAT_VIDEOINFOHEADER extends Struct {
  external KSDATAFORMAT DataFormat;
  external KS_VIDEOINFOHEADER VideoInfoHeader;
}

class KS_DATAFORMAT_VIDEOINFOHEADER2 extends Struct {
  external KSDATAFORMAT DataFormat;
  external KS_VIDEOINFOHEADER2 VideoInfoHeader2;
}

class KS_DATAFORMAT_MPEGVIDEOINFO2 extends Struct {
  external KSDATAFORMAT DataFormat;
  external KS_MPEGVIDEOINFO2 MpegVideoInfoHeader2;
}

class KS_DATAFORMAT_H264VIDEOINFO extends Struct {
  external KSDATAFORMAT DataFormat;
  external KS_H264VIDEOINFO H264VideoInfoHeader;
}

class KS_DATAFORMAT_IMAGEINFO extends Struct {
  external KSDATAFORMAT DataFormat;
  external KS_BITMAPINFOHEADER ImageInfoHeader;
}

class KS_DATAFORMAT_VIDEOINFO_PALETTE extends Struct {
  external KSDATAFORMAT DataFormat;
  external KS_VIDEOINFO VideoInfo;
}

class KS_DATAFORMAT_VBIINFOHEADER extends Struct {
  external KSDATAFORMAT DataFormat;
  external KS_VBIINFOHEADER VBIInfoHeader;
}

class KS_VIDEO_STREAM_CONFIG_CAPS extends Struct {
  external GUID guid;
  @Uint32()
  external int VideoStandard;
  external SIZE InputSize;
  external SIZE MinCroppingSize;
  external SIZE MaxCroppingSize;
  @Int32()
  external int CropGranularityX;
  @Int32()
  external int CropGranularityY;
  @Int32()
  external int CropAlignX;
  @Int32()
  external int CropAlignY;
  external SIZE MinOutputSize;
  external SIZE MaxOutputSize;
  @Int32()
  external int OutputGranularityX;
  @Int32()
  external int OutputGranularityY;
  @Int32()
  external int StretchTapsX;
  @Int32()
  external int StretchTapsY;
  @Int32()
  external int ShrinkTapsX;
  @Int32()
  external int ShrinkTapsY;
  @Int64()
  external int MinFrameInterval;
  @Int64()
  external int MaxFrameInterval;
  @Int32()
  external int MinBitsPerSecond;
  @Int32()
  external int MaxBitsPerSecond;
}

class KS_DATARANGE_VIDEO extends Struct {
  external KSDATAFORMAT DataRange;
  @Int32()
  external int bFixedSizeSamples;
  @Int32()
  external int bTemporalCompression;
  @Uint32()
  external int StreamDescriptionFlags;
  @Uint32()
  external int MemoryAllocationFlags;
  external KS_VIDEO_STREAM_CONFIG_CAPS ConfigCaps;
  external KS_VIDEOINFOHEADER VideoInfoHeader;
}

class KS_DATARANGE_VIDEO2 extends Struct {
  external KSDATAFORMAT DataRange;
  @Int32()
  external int bFixedSizeSamples;
  @Int32()
  external int bTemporalCompression;
  @Uint32()
  external int StreamDescriptionFlags;
  @Uint32()
  external int MemoryAllocationFlags;
  external KS_VIDEO_STREAM_CONFIG_CAPS ConfigCaps;
  external KS_VIDEOINFOHEADER2 VideoInfoHeader;
}

class KS_DATARANGE_MPEG1_VIDEO extends Struct {
  external KSDATAFORMAT DataRange;
  @Int32()
  external int bFixedSizeSamples;
  @Int32()
  external int bTemporalCompression;
  @Uint32()
  external int StreamDescriptionFlags;
  @Uint32()
  external int MemoryAllocationFlags;
  external KS_VIDEO_STREAM_CONFIG_CAPS ConfigCaps;
  external KS_MPEG1VIDEOINFO VideoInfoHeader;
}

class KS_DATARANGE_MPEG2_VIDEO extends Struct {
  external KSDATAFORMAT DataRange;
  @Int32()
  external int bFixedSizeSamples;
  @Int32()
  external int bTemporalCompression;
  @Uint32()
  external int StreamDescriptionFlags;
  @Uint32()
  external int MemoryAllocationFlags;
  external KS_VIDEO_STREAM_CONFIG_CAPS ConfigCaps;
  external KS_MPEGVIDEOINFO2 VideoInfoHeader;
}

class KS_DATARANGE_H264_VIDEO extends Struct {
  external KSDATAFORMAT DataRange;
  @Int32()
  external int bFixedSizeSamples;
  @Int32()
  external int bTemporalCompression;
  @Uint32()
  external int StreamDescriptionFlags;
  @Uint32()
  external int MemoryAllocationFlags;
  external KS_VIDEO_STREAM_CONFIG_CAPS ConfigCaps;
  external KS_H264VIDEOINFO VideoInfoHeader;
}

class KS_DATARANGE_IMAGE extends Struct {
  external KSDATAFORMAT DataRange;
  external KS_VIDEO_STREAM_CONFIG_CAPS ConfigCaps;
  external KS_BITMAPINFOHEADER ImageInfoHeader;
}

class KS_DATARANGE_VIDEO_PALETTE extends Struct {
  external KSDATAFORMAT DataRange;
  @Int32()
  external int bFixedSizeSamples;
  @Int32()
  external int bTemporalCompression;
  @Uint32()
  external int StreamDescriptionFlags;
  @Uint32()
  external int MemoryAllocationFlags;
  external KS_VIDEO_STREAM_CONFIG_CAPS ConfigCaps;
  external KS_VIDEOINFO VideoInfo;
}

class KS_DATARANGE_VIDEO_VBI extends Struct {
  external KSDATAFORMAT DataRange;
  @Int32()
  external int bFixedSizeSamples;
  @Int32()
  external int bTemporalCompression;
  @Uint32()
  external int StreamDescriptionFlags;
  @Uint32()
  external int MemoryAllocationFlags;
  external KS_VIDEO_STREAM_CONFIG_CAPS ConfigCaps;
  external KS_VBIINFOHEADER VBIInfoHeader;
}

class KS_DATARANGE_ANALOGVIDEO extends Struct {
  external KSDATAFORMAT DataRange;
  external KS_AnalogVideoInfo AnalogVideoInfo;
}

class KSPROPSETID_VBICAP_PROPERTIES extends Struct {}

class VBICAP_PROPERTIES_PROTECTION_S extends Struct {
  external KSIDENTIFIER Property;
  @Uint32()
  external int StreamIndex;
  @Uint32()
  external int Status;
}

class KSDATAFORMAT_TYPE_NABTS extends Struct {}

class KSDATAFORMAT_SUBTYPE_NABTS_FEC extends Struct {}

class NABTSFEC_BUFFER extends Struct {
  @Uint32()
  external int dataSize;
  @Uint16()
  external int groupID;
  @Uint16()
  external int Reserved;
  @Array(129)
  external Array<Uint8> data;
}

class KSPROPSETID_VBICodecFiltering extends Struct {}

class VBICODECFILTERING_SCANLINES extends Struct {
  @Array(32)
  external Array<Uint32> DwordBitArray;
}

class VBICODECFILTERING_NABTS_SUBSTREAMS extends Struct {
  @Array(128)
  external Array<Uint32> SubstreamMask;
}

class VBICODECFILTERING_CC_SUBSTREAMS extends Struct {
  @Uint32()
  external int SubstreamMask;
}

class CC_BYTE_PAIR extends Struct {
  @Array(2)
  external Array<Uint8> Decoded;
  @Uint16()
  external int Reserved;
}

class CC_HW_FIELD extends Struct {
  external VBICODECFILTERING_SCANLINES ScanlinesRequested;
  @Uint32()
  external int fieldFlags;
  @Int64()
  external int PictureNumber;
  @Array(12)
  external Array<CC_BYTE_PAIR> Lines;
}

class NABTS_BUFFER_LINE extends Struct {
  @Uint8()
  external int Confidence;
  @Array(36)
  external Array<Uint8> Bytes;
}

class NABTS_BUFFER extends Struct {
  external VBICODECFILTERING_SCANLINES ScanlinesRequested;
  @Int64()
  external int PictureNumber;
  @Array(11)
  external Array<NABTS_BUFFER_LINE> NabtsLines;
}

class WST_BUFFER_LINE extends Struct {
  @Uint8()
  external int Confidence;
  @Array(42)
  external Array<Uint8> Bytes;
}

class WST_BUFFER extends Struct {
  external VBICODECFILTERING_SCANLINES ScanlinesRequested;
  @Array(17)
  external Array<WST_BUFFER_LINE> WstLines;
}

class VBICODECFILTERING_STATISTICS_COMMON extends Struct {
  @Uint32()
  external int InputSRBsProcessed;
  @Uint32()
  external int OutputSRBsProcessed;
  @Uint32()
  external int SRBsIgnored;
  @Uint32()
  external int InputSRBsMissing;
  @Uint32()
  external int OutputSRBsMissing;
  @Uint32()
  external int OutputFailures;
  @Uint32()
  external int InternalErrors;
  @Uint32()
  external int ExternalErrors;
  @Uint32()
  external int InputDiscontinuities;
  @Uint32()
  external int DSPFailures;
  @Uint32()
  external int TvTunerChanges;
  @Uint32()
  external int VBIHeaderChanges;
  @Uint32()
  external int LineConfidenceAvg;
  @Uint32()
  external int BytesOutput;
}

class VBICODECFILTERING_STATISTICS_COMMON_PIN extends Struct {
  @Uint32()
  external int SRBsProcessed;
  @Uint32()
  external int SRBsIgnored;
  @Uint32()
  external int SRBsMissing;
  @Uint32()
  external int InternalErrors;
  @Uint32()
  external int ExternalErrors;
  @Uint32()
  external int Discontinuities;
  @Uint32()
  external int LineConfidenceAvg;
  @Uint32()
  external int BytesOutput;
}

class VBICODECFILTERING_STATISTICS_NABTS extends Struct {
  external VBICODECFILTERING_STATISTICS_COMMON Common;
  @Uint32()
  external int FECBundleBadLines;
  @Uint32()
  external int FECQueueOverflows;
  @Uint32()
  external int FECCorrectedLines;
  @Uint32()
  external int FECUncorrectableLines;
  @Uint32()
  external int BundlesProcessed;
  @Uint32()
  external int BundlesSent2IP;
  @Uint32()
  external int FilteredLines;
}

class VBICODECFILTERING_STATISTICS_NABTS_PIN extends Struct {
  external VBICODECFILTERING_STATISTICS_COMMON_PIN Common;
}

class VBICODECFILTERING_STATISTICS_CC extends Struct {
  external VBICODECFILTERING_STATISTICS_COMMON Common;
}

class VBICODECFILTERING_STATISTICS_CC_PIN extends Struct {
  external VBICODECFILTERING_STATISTICS_COMMON_PIN Common;
}

class VBICODECFILTERING_STATISTICS_TELETEXT extends Struct {
  external VBICODECFILTERING_STATISTICS_COMMON Common;
}

class VBICODECFILTERING_STATISTICS_TELETEXT_PIN extends Struct {
  external VBICODECFILTERING_STATISTICS_COMMON_PIN Common;
}

class KSPROPERTY_VBICODECFILTERING_SCANLINES_S extends Struct {
  external KSIDENTIFIER Property;
  external VBICODECFILTERING_SCANLINES Scanlines;
}

class KSPROPERTY_VBICODECFILTERING_NABTS_SUBSTREAMS_S extends Struct {
  external KSIDENTIFIER Property;
  external VBICODECFILTERING_NABTS_SUBSTREAMS Substreams;
}

class KSPROPERTY_VBICODECFILTERING_CC_SUBSTREAMS_S extends Struct {
  external KSIDENTIFIER Property;
  external VBICODECFILTERING_CC_SUBSTREAMS Substreams;
}

class KSPROPERTY_VBICODECFILTERING_STATISTICS_COMMON_S extends Struct {
  external KSIDENTIFIER Property;
  external VBICODECFILTERING_STATISTICS_COMMON Statistics;
}

class KSPROPERTY_VBICODECFILTERING_STATISTICS_COMMON_PIN_S extends Struct {
  external KSIDENTIFIER Property;
  external VBICODECFILTERING_STATISTICS_COMMON_PIN Statistics;
}

class KSPROPERTY_VBICODECFILTERING_STATISTICS_NABTS_S extends Struct {
  external KSIDENTIFIER Property;
  external VBICODECFILTERING_STATISTICS_NABTS Statistics;
}

class KSPROPERTY_VBICODECFILTERING_STATISTICS_NABTS_PIN_S extends Struct {
  external KSIDENTIFIER Property;
  external VBICODECFILTERING_STATISTICS_NABTS_PIN Statistics;
}

class KSPROPERTY_VBICODECFILTERING_STATISTICS_CC_S extends Struct {
  external KSIDENTIFIER Property;
  external VBICODECFILTERING_STATISTICS_CC Statistics;
}

class KSPROPERTY_VBICODECFILTERING_STATISTICS_CC_PIN_S extends Struct {
  external KSIDENTIFIER Property;
  external VBICODECFILTERING_STATISTICS_CC_PIN Statistics;
}

class PINNAME_VIDEO_CAPTURE extends Struct {}

class PINNAME_VIDEO_CC_CAPTURE extends Struct {}

class PINNAME_VIDEO_NABTS_CAPTURE extends Struct {}

class PINNAME_VIDEO_PREVIEW extends Struct {}

class PINNAME_VIDEO_ANALOGVIDEOIN extends Struct {}

class PINNAME_VIDEO_VBI extends Struct {}

class PINNAME_VIDEO_VIDEOPORT extends Struct {}

class PINNAME_VIDEO_NABTS extends Struct {}

class PINNAME_VIDEO_EDS extends Struct {}

class PINNAME_VIDEO_TELETEXT extends Struct {}

class PINNAME_VIDEO_CC extends Struct {}

class PINNAME_VIDEO_STILL extends Struct {}

class PINNAME_IMAGE extends Struct {}

class PINNAME_VIDEO_TIMECODE extends Struct {}

class PINNAME_VIDEO_VIDEOPORT_VBI extends Struct {}

class KSPROPSETID_VramCapture extends Struct {}

class VRAM_SURFACE_INFO extends Struct {
  @IntPtr()
  external int hSurface;
  @Int64()
  external int VramPhysicalAddress;
  @Uint32()
  external int cbCaptured;
  @Uint32()
  external int dwWidth;
  @Uint32()
  external int dwHeight;
  @Uint32()
  external int dwLinearSize;
  @Int32()
  external int lPitch;
  @Array(16)
  external Array<Uint64> ullReserved;
}

class VRAM_SURFACE_INFO_PROPERTY_S extends Struct {
  external KSIDENTIFIER Property;
  external Pointer<VRAM_SURFACE_INFO> pVramSurfaceInfo;
}

class SECURE_BUFFER_INFO extends Struct {
  external GUID guidBufferIdentifier;
  @Uint32()
  external int cbBufferSize;
  @Uint32()
  external int cbCaptured;
  @Array(16)
  external Array<Uint64> ullReserved;
}

class KS_SECURE_CAMERA_SCENARIO_ID extends Struct {}

class KSPROPSETID_MPEG4_MediaType_Attributes extends Struct {}

class KSEVENTSETID_DynamicFormatChange extends Struct {}

class KS_FRAME_INFO extends Struct {
  @Uint32()
  external int ExtendedHeaderSize;
  @Uint32()
  external int dwFrameFlags;
  @Int64()
  external int PictureNumber;
  @Int64()
  external int DropCount;
  @IntPtr()
  external int hDirectDraw;
  @IntPtr()
  external int hSurfaceHandle;
  external RECT DirectDrawRect;
  @Uint32()
  external int Anonymous1;
  @Uint32()
  external int Reserved2;
  @Uint32()
  external int Anonymous2;
}

class KS_VBI_FRAME_INFO extends Struct {
  @Uint32()
  external int ExtendedHeaderSize;
  @Uint32()
  external int dwFrameFlags;
  @Int64()
  external int PictureNumber;
  @Int64()
  external int DropCount;
  @Uint32()
  external int dwSamplingFrequency;
  external KS_TVTUNER_CHANGE_INFO TvTunerChangeInfo;
  external KS_VBIINFOHEADER VBIInfoHeader;
}

class PROPSETID_ALLOCATOR_CONTROL extends Struct {}

class KSPROPERTY_ALLOCATOR_CONTROL_SURFACE_SIZE_S extends Struct {
  @Uint32()
  external int CX;
  @Uint32()
  external int CY;
}

class KSPROPERTY_ALLOCATOR_CONTROL_CAPTURE_CAPS_S extends Struct {
  @Uint32()
  external int InterleavedCapSupported;
}

class KSPROPERTY_ALLOCATOR_CONTROL_CAPTURE_INTERLEAVE_S extends Struct {
  @Uint32()
  external int InterleavedCapPossible;
}

class PROPSETID_VIDCAP_VIDEOPROCAMP extends Struct {}

class KSPROPERTY_VIDEOPROCAMP_S extends Struct {
  external KSIDENTIFIER Property;
  @Int32()
  external int Value;
  @Uint32()
  external int Flags;
  @Uint32()
  external int Capabilities;
}

class KSPROPERTY_VIDEOPROCAMP_NODE_S extends Struct {
  external KSP_NODE NodeProperty;
  @Int32()
  external int Value;
  @Uint32()
  external int Flags;
  @Uint32()
  external int Capabilities;
}

class KSPROPERTY_VIDEOPROCAMP_S2 extends Struct {
  external KSIDENTIFIER Property;
  @Int32()
  external int Value1;
  @Uint32()
  external int Flags;
  @Uint32()
  external int Capabilities;
  @Int32()
  external int Value2;
}

class KSPROPERTY_VIDEOPROCAMP_NODE_S2 extends Struct {
  external KSP_NODE NodeProperty;
  @Int32()
  external int Value1;
  @Uint32()
  external int Flags;
  @Uint32()
  external int Capabilities;
  @Int32()
  external int Value2;
}

class PROPSETID_VIDCAP_SELECTOR extends Struct {}

class KSPROPERTY_SELECTOR_S extends Struct {
  external KSIDENTIFIER Property;
  @Int32()
  external int Value;
  @Uint32()
  external int Flags;
  @Uint32()
  external int Capabilities;
}

class KSPROPERTY_SELECTOR_NODE_S extends Struct {
  external KSP_NODE NodeProperty;
  @Int32()
  external int Value;
  @Uint32()
  external int Flags;
  @Uint32()
  external int Capabilities;
}

class PROPSETID_TUNER extends Struct {}

class KSPROPERTY_TUNER_CAPS_S extends Struct {
  external KSIDENTIFIER Property;
  @Uint32()
  external int ModesSupported;
  external KSIDENTIFIER VideoMedium;
  external KSIDENTIFIER TVAudioMedium;
  external KSIDENTIFIER RadioAudioMedium;
}

class KSPROPERTY_TUNER_IF_MEDIUM_S extends Struct {
  external KSIDENTIFIER Property;
  external KSIDENTIFIER IFMedium;
}

class KSPROPERTY_TUNER_MODE_CAPS_S extends Struct {
  external KSIDENTIFIER Property;
  @Uint32()
  external int Mode;
  @Uint32()
  external int StandardsSupported;
  @Uint32()
  external int MinFrequency;
  @Uint32()
  external int MaxFrequency;
  @Uint32()
  external int TuningGranularity;
  @Uint32()
  external int NumberOfInputs;
  @Uint32()
  external int SettlingTime;
  @Uint32()
  external int Strategy;
}

class KSPROPERTY_TUNER_MODE_S extends Struct {
  external KSIDENTIFIER Property;
  @Uint32()
  external int Mode;
}

class KSPROPERTY_TUNER_FREQUENCY_S extends Struct {
  external KSIDENTIFIER Property;
  @Uint32()
  external int Frequency;
  @Uint32()
  external int LastFrequency;
  @Uint32()
  external int TuningFlags;
  @Uint32()
  external int VideoSubChannel;
  @Uint32()
  external int AudioSubChannel;
  @Uint32()
  external int Channel;
  @Uint32()
  external int Country;
}

class KSPROPERTY_TUNER_STANDARD_S extends Struct {
  external KSIDENTIFIER Property;
  @Uint32()
  external int Standard;
}

class KSPROPERTY_TUNER_STANDARD_MODE_S extends Struct {
  external KSIDENTIFIER Property;
  @Int32()
  external int AutoDetect;
}

class KSPROPERTY_TUNER_INPUT_S extends Struct {
  external KSIDENTIFIER Property;
  @Uint32()
  external int InputIndex;
}

class KSPROPERTY_TUNER_STATUS_S extends Struct {
  external KSIDENTIFIER Property;
  @Uint32()
  external int CurrentFrequency;
  @Uint32()
  external int PLLOffset;
  @Uint32()
  external int SignalStrength;
  @Uint32()
  external int Busy;
}

class TUNER_ANALOG_CAPS_S extends Struct {
  @Uint32()
  external int Mode;
  @Uint32()
  external int StandardsSupported;
  @Uint32()
  external int MinFrequency;
  @Uint32()
  external int MaxFrequency;
  @Uint32()
  external int TuningGranularity;
  @Uint32()
  external int SettlingTime;
  @Uint32()
  external int ScanSensingRange;
  @Uint32()
  external int FineTuneSensingRange;
}

class EVENTSETID_TUNER extends Struct {}

class KSPROPERTY_TUNER_SCAN_CAPS_S extends Struct {
  external KSIDENTIFIER Property;
  @Int32()
  external int fSupportsHardwareAssistedScanning;
  @Uint32()
  external int SupportedBroadcastStandards;
  external Pointer GUIDBucket;
  @Uint32()
  external int lengthofBucket;
}

class KSPROPERTY_TUNER_NETWORKTYPE_SCAN_CAPS_S extends Struct {
  external KSIDENTIFIER Property;
  external GUID NetworkType;
  @Uint32()
  external int BufferSize;
  external Pointer NetworkTunerCapabilities;
}

class KSPROPERTY_TUNER_SCAN_STATUS_S extends Struct {
  external KSIDENTIFIER Property;
  @Uint32()
  external int LockStatus;
  @Uint32()
  external int CurrentFrequency;
}

class KSEVENT_TUNER_INITIATE_SCAN_S extends Struct {
  external KSEVENTDATA EventData;
  @Uint32()
  external int StartFrequency;
  @Uint32()
  external int EndFrequency;
}

class KSNODETYPE_VIDEO_STREAMING extends Struct {}

class KSNODETYPE_VIDEO_INPUT_TERMINAL extends Struct {}

class KSNODETYPE_VIDEO_OUTPUT_TERMINAL extends Struct {}

class KSNODETYPE_VIDEO_SELECTOR extends Struct {}

class KSNODETYPE_VIDEO_PROCESSING extends Struct {}

class KSNODETYPE_VIDEO_CAMERA_TERMINAL extends Struct {}

class KSNODETYPE_VIDEO_INPUT_MTT extends Struct {}

class KSNODETYPE_VIDEO_OUTPUT_MTT extends Struct {}

class PROPSETID_VIDCAP_VIDEOENCODER extends Struct {}

class KSPROPERTY_VIDEOENCODER_S extends Struct {
  external KSIDENTIFIER Property;
  @Int32()
  external int Value;
  @Uint32()
  external int Flags;
  @Uint32()
  external int Capabilities;
}

class PROPSETID_VIDCAP_VIDEODECODER extends Struct {}

class KSPROPERTY_VIDEODECODER_CAPS_S extends Struct {
  external KSIDENTIFIER Property;
  @Uint32()
  external int StandardsSupported;
  @Uint32()
  external int Capabilities;
  @Uint32()
  external int SettlingTime;
  @Uint32()
  external int HSyncPerVSync;
}

class KSPROPERTY_VIDEODECODER_STATUS_S extends Struct {
  external KSIDENTIFIER Property;
  @Uint32()
  external int NumberOfLines;
  @Uint32()
  external int SignalLocked;
}

class KSPROPERTY_VIDEODECODER_STATUS2_S extends Struct {
  external KSIDENTIFIER Property;
  @Uint32()
  external int NumberOfLines;
  @Uint32()
  external int SignalLocked;
  @Uint32()
  external int ChromaLock;
}

class KSPROPERTY_VIDEODECODER_S extends Struct {
  external KSIDENTIFIER Property;
  @Uint32()
  external int Value;
}

class EVENTSETID_VIDEODECODER extends Struct {}

class KSEVENTSETID_CameraAsyncControl extends Struct {}

class PROPSETID_VIDCAP_CAMERACONTROL extends Struct {}

class KSPROPERTY_CAMERACONTROL_S_EX extends Struct {
  external KSIDENTIFIER Property;
  @Int32()
  external int Value;
  @Uint32()
  external int Flags;
  @Uint32()
  external int Capabilities;
  external RECT FocusRect;
}

class KSPROPERTY_CAMERACONTROL_S extends Struct {
  external KSIDENTIFIER Property;
  @Int32()
  external int Value;
  @Uint32()
  external int Flags;
  @Uint32()
  external int Capabilities;
}

class KSPROPERTY_CAMERACONTROL_NODE_S extends Struct {
  external KSP_NODE NodeProperty;
  @Int32()
  external int Value;
  @Uint32()
  external int Flags;
  @Uint32()
  external int Capabilities;
}

class KSPROPERTY_CAMERACONTROL_S2 extends Struct {
  external KSIDENTIFIER Property;
  @Int32()
  external int Value1;
  @Uint32()
  external int Flags;
  @Uint32()
  external int Capabilities;
  @Int32()
  external int Value2;
}

class KSPROPERTY_CAMERACONTROL_NODE_S2 extends Struct {
  external KSP_NODE NodeProperty;
  @Int32()
  external int Value1;
  @Uint32()
  external int Flags;
  @Uint32()
  external int Capabilities;
  @Int32()
  external int Value2;
}

class KSPROPERTY_CAMERACONTROL_FOCAL_LENGTH_S extends Struct {
  external KSIDENTIFIER Property;
  @Int32()
  external int lOcularFocalLength;
  @Int32()
  external int lObjectiveFocalLengthMin;
  @Int32()
  external int lObjectiveFocalLengthMax;
}

class KSPROPERTY_CAMERACONTROL_NODE_FOCAL_LENGTH_S extends Struct {
  external KSNODEPROPERTY NodeProperty;
  @Int32()
  external int lOcularFocalLength;
  @Int32()
  external int lObjectiveFocalLengthMin;
  @Int32()
  external int lObjectiveFocalLengthMax;
}

class PROPSETID_VIDCAP_CAMERACONTROL_FLASH extends Struct {}

class KSPROPERTY_CAMERACONTROL_FLASH_S extends Struct {
  @Uint32()
  external int Flash;
  @Uint32()
  external int Capabilities;
}

class PROPSETID_VIDCAP_CAMERACONTROL_VIDEO_STABILIZATION extends Struct {}

class KSPROPERTY_CAMERACONTROL_VIDEOSTABILIZATION_MODE_S extends Struct {
  @Uint32()
  external int VideoStabilizationMode;
  @Uint32()
  external int Capabilities;
}

class PROPSETID_VIDCAP_CAMERACONTROL_REGION_OF_INTEREST extends Struct {}

class EVENTSETID_VIDCAP_CAMERACONTROL_REGION_OF_INTEREST extends Struct {}

class KSPROPERTY_CAMERACONTROL_REGION_OF_INTEREST_S extends Struct {
  external RECT FocusRect;
  @Int32()
  external int AutoFocusLock;
  @Int32()
  external int AutoExposureLock;
  @Int32()
  external int AutoWhitebalanceLock;
  @Uint32()
  external int Anonymous;
}

class PROPSETID_VIDCAP_CAMERACONTROL_IMAGE_PIN_CAPABILITY extends Struct {}

class KSPROPERTY_CAMERACONTROL_IMAGE_PIN_CAPABILITY_S extends Struct {
  @Uint32()
  external int Capabilities;
  @Uint32()
  external int Reserved0;
}

class KSPROPERTYSETID_ExtendedCameraControl extends Struct {}

class KSEVENTSETID_ExtendedCameraControl extends Struct {}

class KSEVENTSETID_CameraEvent extends Struct {}

class KSCAMERA_EXTENDEDPROP_HEADER extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int PinId;
  @Uint32()
  external int Size;
  @Uint32()
  external int Result;
  @Uint64()
  external int Flags;
  @Uint64()
  external int Capability;
}

class KSCAMERA_EXTENDEDPROP_VALUE extends Struct {
  @Uint32()
  external int Value;
}

class KSCAMERA_MAXVIDEOFPS_FORPHOTORES extends Struct {
  @Uint32()
  external int PhotoResWidth;
  @Uint32()
  external int PhotoResHeight;
  @Uint32()
  external int PreviewFPSNum;
  @Uint32()
  external int PreviewFPSDenom;
  @Uint32()
  external int CaptureFPSNum;
  @Uint32()
  external int CaptureFPSDenom;
}

class KSCAMERA_EXTENDEDPROP_PHOTOMODE extends Struct {
  @Uint32()
  external int RequestedHistoryFrames;
  @Uint32()
  external int MaxHistoryFrames;
  @Uint32()
  external int SubMode;
  @Uint32()
  external int Reserved;
}

class KSCAMERA_EXTENDEDPROP_VIDEOPROCSETTING extends Struct {
  @Uint32()
  external int Mode;
  @Int32()
  external int Min;
  @Int32()
  external int Max;
  @Int32()
  external int Step;
  @Uint32()
  external int VideoProc;
  @Uint64()
  external int Reserved;
}

class KSCAMERA_EXTENDEDPROP_EVCOMPENSATION extends Struct {
  @Uint32()
  external int Mode;
  @Int32()
  external int Min;
  @Int32()
  external int Max;
  @Int32()
  external int Value;
  @Uint64()
  external int Reserved;
}

class KSCAMERA_EXTENDEDPROP_FIELDOFVIEW extends Struct {
  @Uint32()
  external int NormalizedFocalLengthX;
  @Uint32()
  external int NormalizedFocalLengthY;
  @Uint32()
  external int Flag;
  @Uint32()
  external int Reserved;
}

class KSCAMERA_EXTENDEDPROP_CAMERAOFFSET extends Struct {
  @Int32()
  external int PitchAngle;
  @Int32()
  external int YawAngle;
  @Uint32()
  external int Flag;
  @Uint32()
  external int Reserved;
}

class KSCAMERA_EXTENDEDPROP_METADATAINFO extends Struct {
  @Int32()
  external int BufferAlignment;
  @Uint32()
  external int MaxMetadataBufferSize;
}

class KSCAMERA_METADATA_ITEMHEADER extends Struct {
  @Uint32()
  external int MetadataId;
  @Uint32()
  external int Size;
}

class KSCAMERA_METADATA_PHOTOCONFIRMATION extends Struct {
  external KSCAMERA_METADATA_ITEMHEADER Header;
  @Uint32()
  external int PhotoConfirmationIndex;
  @Uint32()
  external int Reserved;
}

class KSCAMERA_METADATA_FRAMEILLUMINATION extends Struct {
  external KSCAMERA_METADATA_ITEMHEADER Header;
  @Uint32()
  external int Flags;
  @Uint32()
  external int Reserved;
}

class KSCAMERA_METADATA_CAPTURESTATS extends Struct {
  external KSCAMERA_METADATA_ITEMHEADER Header;
  @Uint32()
  external int Flags;
  @Uint32()
  external int Reserved;
  @Uint64()
  external int ExposureTime;
  @Uint64()
  external int ExposureCompensationFlags;
  @Int32()
  external int ExposureCompensationValue;
  @Uint32()
  external int IsoSpeed;
  @Uint32()
  external int FocusState;
  @Uint32()
  external int LensPosition;
  @Uint32()
  external int WhiteBalance;
  @Uint32()
  external int Flash;
  @Uint32()
  external int FlashPower;
  @Uint32()
  external int ZoomFactor;
  @Uint64()
  external int SceneMode;
  @Uint64()
  external int SensorFramerate;
}

class KSCAMERA_EXTENDEDPROP_ROI_CONFIGCAPSHEADER extends Struct {
  @Uint32()
  external int Size;
  @Uint32()
  external int ConfigCapCount;
  @Uint64()
  external int Reserved;
}

class KSCAMERA_EXTENDEDPROP_ROI_CONFIGCAPS extends Struct {
  @Uint32()
  external int ControlId;
  @Uint32()
  external int MaxNumberOfROIs;
  @Uint64()
  external int Capability;
}

class KSCAMERA_EXTENDEDPROP_ROI_ISPCONTROLHEADER extends Struct {
  @Uint32()
  external int Size;
  @Uint32()
  external int ControlCount;
  @Uint64()
  external int Reserved;
}

class KSCAMERA_EXTENDEDPROP_ROI_ISPCONTROL extends Struct {
  @Uint32()
  external int ControlId;
  @Uint32()
  external int ROICount;
  @Uint32()
  external int Result;
  @Uint32()
  external int Reserved;
}

class KSCAMERA_EXTENDEDPROP_ROI_INFO extends Struct {
  external RECT Region;
  @Uint64()
  external int Flags;
  @Int32()
  external int Weight;
  @Int32()
  external int RegionOfInterestType;
}

class KSCAMERA_EXTENDEDPROP_ROI_WHITEBALANCE extends Struct {
  external KSCAMERA_EXTENDEDPROP_ROI_INFO ROIInfo;
  @Uint64()
  external int Reserved;
}

class KSCAMERA_EXTENDEDPROP_ROI_EXPOSURE extends Struct {
  external KSCAMERA_EXTENDEDPROP_ROI_INFO ROIInfo;
  @Uint64()
  external int Reserved;
}

class KSCAMERA_EXTENDEDPROP_ROI_FOCUS extends Struct {
  external KSCAMERA_EXTENDEDPROP_ROI_INFO ROIInfo;
  @Uint64()
  external int Reserved;
}

class KSPROPERTYSETID_PerFrameSettingControl extends Struct {}

class KSCAMERA_PERFRAMESETTING_CAP_ITEM_HEADER extends Struct {
  @Uint32()
  external int Size;
  @Uint32()
  external int Type;
  @Uint64()
  external int Flags;
}

class KSCAMERA_PERFRAMESETTING_CAP_HEADER extends Struct {
  @Uint32()
  external int Size;
  @Uint32()
  external int ItemCount;
  @Uint64()
  external int Flags;
}

class KSCAMERA_PERFRAMESETTING_CUSTOM_ITEM extends Struct {
  @Uint32()
  external int Size;
  @Uint32()
  external int Reserved;
  external GUID Id;
}

class KSCAMERA_PERFRAMESETTING_ITEM_HEADER extends Struct {
  @Uint32()
  external int Size;
  @Uint32()
  external int Type;
  @Uint64()
  external int Flags;
}

class KSCAMERA_PERFRAMESETTING_FRAME_HEADER extends Struct {
  @Uint32()
  external int Size;
  @Uint32()
  external int Id;
  @Uint32()
  external int ItemCount;
  @Uint32()
  external int Reserved;
}

class KSCAMERA_PERFRAMESETTING_HEADER extends Struct {
  @Uint32()
  external int Size;
  @Uint32()
  external int FrameCount;
  external GUID Id;
  @Uint64()
  external int Flags;
  @Uint32()
  external int LoopCount;
  @Uint32()
  external int Reserved;
}

class KSCAMERA_EXTENDEDPROP_PROFILE extends Struct {
  external GUID ProfileId;
  @Uint32()
  external int Index;
  @Uint32()
  external int Reserved;
}

class KSCAMERAPROFILE_Legacy extends Struct {}

class KSCAMERAPROFILE_VideoRecording extends Struct {}

class KSCAMERAPROFILE_HighQualityPhoto extends Struct {}

class KSCAMERAPROFILE_BalancedVideoAndPhoto extends Struct {}

class KSCAMERAPROFILE_VideoConferencing extends Struct {}

class KSCAMERAPROFILE_PhotoSequence extends Struct {}

class KSCAMERAPROFILE_FaceAuth_Mode extends Struct {}

class KSCAMERAPROFILE_HighFrameRate extends Struct {}

class KSCAMERAPROFILE_HDRWithWCGVideo extends Struct {}

class KSCAMERAPROFILE_HDRWithWCGPhoto extends Struct {}

class KSCAMERAPROFILE_VariablePhotoSequence extends Struct {}

class KSCAMERAPROFILE_VideoHDR8 extends Struct {}

class KSCAMERA_PROFILE_MEDIAINFO extends Struct {
  @Uint32()
  external int Resolution;
  @Uint32()
  external int MaxFrameRate;
  @Uint64()
  external int Flags;
  @Uint32()
  external int Data0;
  @Uint32()
  external int Data1;
  @Uint32()
  external int Data2;
  @Uint32()
  external int Data3;
}

class KSCAMERA_PROFILE_PININFO extends Struct {
  external GUID PinCategory;
  @Uint32()
  external int Anonymous;
  @Uint32()
  external int MediaInfoCount;
  external Pointer<KSCAMERA_PROFILE_MEDIAINFO> MediaInfos;
}

class KSCAMERA_PROFILE_INFO extends Struct {
  external GUID ProfileId;
  @Uint32()
  external int Index;
  @Uint32()
  external int PinCount;
  external Pointer<KSCAMERA_PROFILE_PININFO> Pins;
}

class KSCAMERA_PROFILE_CONCURRENCYINFO extends Struct {
  external GUID ReferenceGuid;
  @Uint32()
  external int Reserved;
  @Uint32()
  external int ProfileCount;
  external Pointer<KSCAMERA_PROFILE_INFO> Profiles;
}

class KSDEVICE_PROFILE_INFO extends Struct {
  @Uint32()
  external int Type;
  @Uint32()
  external int Size;
  @Uint32()
  external int Anonymous;
}

class WNF_KSCAMERA_STREAMSTATE_INFO extends Struct {
  @Uint32()
  external int ProcessId;
  @Uint32()
  external int SessionId;
  @Uint32()
  external int StreamState;
  @Uint32()
  external int Reserved;
}

class KSPROPERTY_NETWORKCAMERACONTROL_NTPINFO_HEADER extends Struct {
  @Uint32()
  external int Size;
  @Uint32()
  external int Type;
}

class KSPROPERTYSETID_NetworkCameraControl extends Struct {}

class PROPSETID_EXT_DEVICE extends Struct {}

class DEVCAPS extends Struct {
  @Int32()
  external int CanRecord;
  @Int32()
  external int CanRecordStrobe;
  @Int32()
  external int HasAudio;
  @Int32()
  external int HasVideo;
  @Int32()
  external int UsesFiles;
  @Int32()
  external int CanSave;
  @Int32()
  external int DeviceType;
  @Int32()
  external int TCRead;
  @Int32()
  external int TCWrite;
  @Int32()
  external int CTLRead;
  @Int32()
  external int IndexRead;
  @Int32()
  external int Preroll;
  @Int32()
  external int Postroll;
  @Int32()
  external int SyncAcc;
  @Int32()
  external int NormRate;
  @Int32()
  external int CanPreview;
  @Int32()
  external int CanMonitorSrc;
  @Int32()
  external int CanTest;
  @Int32()
  external int VideoIn;
  @Int32()
  external int AudioIn;
  @Int32()
  external int Calibrate;
  @Int32()
  external int SeekType;
  @Int32()
  external int SimulatedHardware;
}

class KSPROPERTY_EXTDEVICE_S extends Struct {
  external KSIDENTIFIER Property;
  @Uint32()
  external int u;
}

class PROPSETID_EXT_TRANSPORT extends Struct {}

class TRANSPORTSTATUS extends Struct {
  @Int32()
  external int Mode;
  @Int32()
  external int LastError;
  @Int32()
  external int RecordInhibit;
  @Int32()
  external int ServoLock;
  @Int32()
  external int MediaPresent;
  @Int32()
  external int MediaLength;
  @Int32()
  external int MediaSize;
  @Int32()
  external int MediaTrackCount;
  @Int32()
  external int MediaTrackLength;
  @Int32()
  external int MediaTrackSide;
  @Int32()
  external int MediaType;
  @Int32()
  external int LinkMode;
  @Int32()
  external int NotifyOn;
}

class TRANSPORTBASICPARMS extends Struct {
  @Int32()
  external int TimeFormat;
  @Int32()
  external int TimeReference;
  @Int32()
  external int Superimpose;
  @Int32()
  external int EndStopAction;
  @Int32()
  external int RecordFormat;
  @Int32()
  external int StepFrames;
  @Int32()
  external int SetpField;
  @Int32()
  external int Preroll;
  @Int32()
  external int RecPreroll;
  @Int32()
  external int Postroll;
  @Int32()
  external int EditDelay;
  @Int32()
  external int PlayTCDelay;
  @Int32()
  external int RecTCDelay;
  @Int32()
  external int EditField;
  @Int32()
  external int FrameServo;
  @Int32()
  external int ColorFrameServo;
  @Int32()
  external int ServoRef;
  @Int32()
  external int WarnGenlock;
  @Int32()
  external int SetTracking;
  @Array(40)
  external Array<Int8> VolumeName;
  @Array(20)
  external Array<Int32> Ballistic;
  @Int32()
  external int Speed;
  @Int32()
  external int CounterFormat;
  @Int32()
  external int TunerChannel;
  @Int32()
  external int TunerNumber;
  @Int32()
  external int TimerEvent;
  @Int32()
  external int TimerStartDay;
  @Int32()
  external int TimerStartTime;
  @Int32()
  external int TimerStopDay;
  @Int32()
  external int TimerStopTime;
}

class TRANSPORTVIDEOPARMS extends Struct {
  @Int32()
  external int OutputMode;
  @Int32()
  external int Input;
}

class TRANSPORTAUDIOPARMS extends Struct {
  @Int32()
  external int EnableOutput;
  @Int32()
  external int EnableRecord;
  @Int32()
  external int EnableSelsync;
  @Int32()
  external int Input;
  @Int32()
  external int MonitorSource;
}

class MEDIUM_INFO extends Struct {
  @Int32()
  external int MediaPresent;
  @Uint32()
  external int MediaType;
  @Int32()
  external int RecordInhibit;
}

class TRANSPORT_STATE extends Struct {
  @Uint32()
  external int Mode;
  @Uint32()
  external int State;
}

class KSPROPERTY_EXTXPORT_S extends Struct {
  external KSIDENTIFIER Property;
  @Uint32()
  external int u;
}

class KSPROPERTY_EXTXPORT_NODE_S extends Struct {
  external KSP_NODE NodeProperty;
  @Uint32()
  external int u;
}

class PROPSETID_TIMECODE_READER extends Struct {}

class KSPROPERTY_TIMECODE_S extends Struct {
  external KSIDENTIFIER Property;
  external TIMECODE_SAMPLE TimecodeSamp;
}

class KSPROPERTY_TIMECODE_NODE_S extends Struct {
  external KSP_NODE NodeProperty;
  external TIMECODE_SAMPLE TimecodeSamp;
}

class KSEVENTSETID_EXTDEV_Command extends Struct {}

class PROPSETID_VIDCAP_CROSSBAR extends Struct {}

class KSPROPERTY_CROSSBAR_CAPS_S extends Struct {
  external KSIDENTIFIER Property;
  @Uint32()
  external int NumberOfInputs;
  @Uint32()
  external int NumberOfOutputs;
}

class KSPROPERTY_CROSSBAR_PININFO_S extends Struct {
  external KSIDENTIFIER Property;
  @Uint32()
  external int Direction;
  @Uint32()
  external int Index;
  @Uint32()
  external int PinType;
  @Uint32()
  external int RelatedPinIndex;
  external KSIDENTIFIER Medium;
}

class KSPROPERTY_CROSSBAR_ROUTE_S extends Struct {
  external KSIDENTIFIER Property;
  @Uint32()
  external int IndexInputPin;
  @Uint32()
  external int IndexOutputPin;
  @Uint32()
  external int CanRoute;
}

class KSPROPERTY_CROSSBAR_ACTIVE_S extends Struct {
  external KSIDENTIFIER Property;
  @Uint32()
  external int IndexInputPin;
  @Uint32()
  external int Active;
}

class EVENTSETID_CROSSBAR extends Struct {}

class PROPSETID_VIDCAP_TVAUDIO extends Struct {}

class KSPROPERTY_TVAUDIO_CAPS_S extends Struct {
  external KSIDENTIFIER Property;
  @Uint32()
  external int Capabilities;
  external KSIDENTIFIER InputMedium;
  external KSIDENTIFIER OutputMedium;
}

class KSPROPERTY_TVAUDIO_S extends Struct {
  external KSIDENTIFIER Property;
  @Uint32()
  external int Mode;
}

class KSEVENTSETID_VIDCAP_TVAUDIO extends Struct {}

class PROPSETID_VIDCAP_VIDEOCOMPRESSION extends Struct {}

class KSPROPERTY_VIDEOCOMPRESSION_GETINFO_S extends Struct {
  external KSIDENTIFIER Property;
  @Uint32()
  external int StreamIndex;
  @Int32()
  external int DefaultKeyFrameRate;
  @Int32()
  external int DefaultPFrameRate;
  @Int32()
  external int DefaultQuality;
  @Int32()
  external int NumberOfQualitySettings;
  @Int32()
  external int Capabilities;
}

class KSPROPERTY_VIDEOCOMPRESSION_S extends Struct {
  external KSIDENTIFIER Property;
  @Uint32()
  external int StreamIndex;
  @Int32()
  external int Value;
}

class KSPROPERTY_VIDEOCOMPRESSION_S1 extends Struct {
  external KSIDENTIFIER Property;
  @Uint32()
  external int StreamIndex;
  @Int32()
  external int Value;
  @Uint32()
  external int Flags;
}

class KSDATAFORMAT_SUBTYPE_OVERLAY extends Struct {}

class KSPROPSETID_OverlayUpdate extends Struct {}

class KSDISPLAYCHANGE extends Struct {
  @Uint32()
  external int PelsWidth;
  @Uint32()
  external int PelsHeight;
  @Uint32()
  external int BitsPerPel;
  @Array(1)
  external Array<Uint16> DeviceID;
}

class PROPSETID_VIDCAP_VIDEOCONTROL extends Struct {}

class KSPROPERTY_VIDEOCONTROL_CAPS_S extends Struct {
  external KSIDENTIFIER Property;
  @Uint32()
  external int StreamIndex;
  @Uint32()
  external int VideoControlCaps;
}

class KSPROPERTY_VIDEOCONTROL_MODE_S extends Struct {
  external KSIDENTIFIER Property;
  @Uint32()
  external int StreamIndex;
  @Int32()
  external int Mode;
}

class KSPROPERTY_VIDEOCONTROL_ACTUAL_FRAME_RATE_S extends Struct {
  external KSIDENTIFIER Property;
  @Uint32()
  external int StreamIndex;
  @Uint32()
  external int RangeIndex;
  external SIZE Dimensions;
  @Int64()
  external int CurrentActualFrameRate;
  @Int64()
  external int CurrentMaxAvailableFrameRate;
}

class KSPROPERTY_VIDEOCONTROL_FRAME_RATES_S extends Struct {
  external KSIDENTIFIER Property;
  @Uint32()
  external int StreamIndex;
  @Uint32()
  external int RangeIndex;
  external SIZE Dimensions;
}

class PROPSETID_VIDCAP_DROPPEDFRAMES extends Struct {}

class KSPROPERTY_DROPPEDFRAMES_CURRENT_S extends Struct {
  external KSIDENTIFIER Property;
  @Int64()
  external int PictureNumber;
  @Int64()
  external int DropCount;
  @Uint32()
  external int AverageFrameSize;
}

class KSPROPSETID_VPConfig extends Struct {}

class KSPROPSETID_VPVBIConfig extends Struct {}

class CLSID_KsIBasicAudioInterfaceHandler extends Struct {}

class DDVIDEOPORTCONNECT extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwPortWidth;
  external GUID guidTypeID;
  @Uint32()
  external int dwFlags;
  @IntPtr()
  external int dwReserved1;
}

class KS_AMVPDIMINFO extends Struct {
  @Uint32()
  external int dwFieldWidth;
  @Uint32()
  external int dwFieldHeight;
  @Uint32()
  external int dwVBIWidth;
  @Uint32()
  external int dwVBIHeight;
  external RECT rcValidRegion;
}

class KS_AMVPDATAINFO extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwMicrosecondsPerField;
  external KS_AMVPDIMINFO amvpDimInfo;
  @Uint32()
  external int dwPictAspectRatioX;
  @Uint32()
  external int dwPictAspectRatioY;
  @Int32()
  external int bEnableDoubleClock;
  @Int32()
  external int bEnableVACT;
  @Int32()
  external int bDataIsInterlaced;
  @Int32()
  external int lHalfLinesOdd;
  @Int32()
  external int bFieldPolarityInverted;
  @Uint32()
  external int dwNumLinesInVREF;
  @Int32()
  external int lHalfLinesEven;
  @Uint32()
  external int dwReserved1;
}

class KS_AMVPSIZE extends Struct {
  @Uint32()
  external int dwWidth;
  @Uint32()
  external int dwHeight;
}

class KSVPMAXPIXELRATE extends Struct {
  external KS_AMVPSIZE Size;
  @Uint32()
  external int MaxPixelsPerSecond;
  @Uint32()
  external int Reserved;
}

class KSVPSIZE_PROP extends Struct {
  external KSIDENTIFIER Property;
  external KS_AMVPSIZE Size;
}

class KSVPSURFACEPARAMS extends Struct {
  @Uint32()
  external int dwPitch;
  @Uint32()
  external int dwXOrigin;
  @Uint32()
  external int dwYOrigin;
}

class KSEVENTSETID_VPNotify extends Struct {}

class KSEVENTSETID_VIDCAPTOSTI extends Struct {}

class KSEVENTSETID_VPVBINotify extends Struct {}

class KSDATAFORMAT_TYPE_AUXLine21Data extends Struct {}

class KSDATAFORMAT_SUBTYPE_Line21_BytePair extends Struct {}

class KSDATAFORMAT_SUBTYPE_Line21_GOPPacket extends Struct {}

class KSGOP_USERDATA extends Struct {
  @Uint32()
  external int sc;
  @Uint32()
  external int reserved1;
  @Uint8()
  external int cFields;
  @Array(3)
  external Array<Int8> l21Data;
}

class KSDATAFORMAT_TYPE_DVD_ENCRYPTED_PACK extends Struct {}

class KSPROPSETID_TSRateChange extends Struct {}

class KS_AM_SimpleRateChange extends Struct {
  @Int64()
  external int StartTime;
  @Int32()
  external int Rate;
}

class KS_AM_ExactRateChange extends Struct {
  @Int64()
  external int OutputZeroTime;
  @Int32()
  external int Rate;
}

class KSCATEGORY_ENCODER extends Struct {}

class KSCATEGORY_MULTIPLEXER extends Struct {}

class ENCAPIPARAM_BITRATE extends Struct {}

class ENCAPIPARAM_PEAK_BITRATE extends Struct {}

class ENCAPIPARAM_BITRATE_MODE extends Struct {}

class CODECAPI_CHANGELISTS extends Struct {}

class CODECAPI_VIDEO_ENCODER extends Struct {}

class CODECAPI_AUDIO_ENCODER extends Struct {}

class CODECAPI_SETALLDEFAULTS extends Struct {}

class CODECAPI_ALLSETTINGS extends Struct {}

class CODECAPI_SUPPORTSEVENTS extends Struct {}

class CODECAPI_CURRENTCHANGELIST extends Struct {}

class KSPROPSETID_Jack extends Struct {}

class KSJACK_DESCRIPTION extends Struct {
  @Uint32()
  external int ChannelMapping;
  @Uint32()
  external int Color;
  @Uint32()
  external int ConnectionType;
  @Uint32()
  external int GeoLocation;
  @Uint32()
  external int GenLocation;
  @Uint32()
  external int PortConnection;
  @Int32()
  external int IsConnected;
}

class KSJACK_SINK_INFORMATION extends Struct {
  @Uint32()
  external int ConnType;
  @Uint16()
  external int ManufacturerId;
  @Uint16()
  external int ProductId;
  @Uint16()
  external int AudioLatency;
  @Int32()
  external int HDCPCapable;
  @Int32()
  external int AICapable;
  @Uint8()
  external int SinkDescriptionLength;
  @Array(32)
  external Array<Uint16> SinkDescription;
  external LUID PortId;
}

class KSJACK_DESCRIPTION2 extends Struct {
  @Uint32()
  external int DeviceStateInfo;
  @Uint32()
  external int JackCapabilities;
}

class KSPROPSETID_AudioPosture extends Struct {}

class KSAUDIOPOSTURE_PANEL_STATE extends Struct {
  @Uint32()
  external int Power;
  @Uint32()
  external int Orientation;
}

class KSAUDIOPOSTURE_DESCRIPTION extends Struct {
  @Uint32()
  external int CbSize;
  @Uint32()
  external int MembersListCount;
}

class KSPROPSETID_AudioBufferDuration extends Struct {}

class KSPROPSETID_AudioEngine extends Struct {}

class KSAUDIOENGINE_DESCRIPTOR extends Struct {
  @Uint32()
  external int nHostPinId;
  @Uint32()
  external int nOffloadPinId;
  @Uint32()
  external int nLoopbackPinId;
}

class KSAUDIOENGINE_BUFFER_SIZE_RANGE extends Struct {
  @Uint32()
  external int MinBufferBytes;
  @Uint32()
  external int MaxBufferBytes;
}

class KSAUDIOENGINE_VOLUMELEVEL extends Struct {
  @Int32()
  external int TargetVolume;
  @Uint32()
  external int CurveType;
  @Uint64()
  external int CurveDuration;
}

class KSPROPSETID_AudioSignalProcessing extends Struct {}

class KSATTRIBUTEID_AUDIOSIGNALPROCESSING_MODE extends Struct {}

class KSATTRIBUTE_AUDIOSIGNALPROCESSING_MODE extends Struct {
  external KSATTRIBUTE AttributeHeader;
  external GUID SignalProcessingMode;
}

class AUDIO_SIGNALPROCESSINGMODE_DEFAULT extends Struct {}

class AUDIO_SIGNALPROCESSINGMODE_RAW extends Struct {}

class BLUETOOTHLE_MIDI_SERVICE_UUID extends Struct {}

class BLUETOOTH_MIDI_DATAIO_CHARACTERISTIC extends Struct {}

class APO_CLASS_UUID extends Struct {}

class AUDIOENDPOINT_CLASS_UUID extends Struct {}

class AUDIO_SIGNALPROCESSINGMODE_COMMUNICATIONS extends Struct {}

class AUDIO_SIGNALPROCESSINGMODE_SPEECH extends Struct {}

class AUDIO_SIGNALPROCESSINGMODE_NOTIFICATION extends Struct {}

class AUDIO_SIGNALPROCESSINGMODE_MEDIA extends Struct {}

class AUDIO_SIGNALPROCESSINGMODE_MOVIE extends Struct {}

class AUDIO_EFFECT_TYPE_ACOUSTIC_ECHO_CANCELLATION extends Struct {}

class AUDIO_EFFECT_TYPE_NOISE_SUPPRESSION extends Struct {}

class AUDIO_EFFECT_TYPE_AUTOMATIC_GAIN_CONTROL extends Struct {}

class AUDIO_EFFECT_TYPE_BEAMFORMING extends Struct {}

class AUDIO_EFFECT_TYPE_CONSTANT_TONE_REMOVAL extends Struct {}

class AUDIO_EFFECT_TYPE_EQUALIZER extends Struct {}

class AUDIO_EFFECT_TYPE_LOUDNESS_EQUALIZER extends Struct {}

class AUDIO_EFFECT_TYPE_BASS_BOOST extends Struct {}

class AUDIO_EFFECT_TYPE_VIRTUAL_SURROUND extends Struct {}

class AUDIO_EFFECT_TYPE_VIRTUAL_HEADPHONES extends Struct {}

class AUDIO_EFFECT_TYPE_SPEAKER_FILL extends Struct {}

class AUDIO_EFFECT_TYPE_ROOM_CORRECTION extends Struct {}

class AUDIO_EFFECT_TYPE_BASS_MANAGEMENT extends Struct {}

class AUDIO_EFFECT_TYPE_ENVIRONMENTAL_EFFECTS extends Struct {}

class AUDIO_EFFECT_TYPE_SPEAKER_PROTECTION extends Struct {}

class AUDIO_EFFECT_TYPE_SPEAKER_COMPENSATION extends Struct {}

class AUDIO_EFFECT_TYPE_DYNAMIC_RANGE_COMPRESSION extends Struct {}

class KSPROPSETID_AudioModule extends Struct {}

class KSAUDIOMODULE_DESCRIPTOR extends Struct {
  external GUID ClassId;
  @Uint32()
  external int InstanceId;
  @Uint32()
  external int VersionMajor;
  @Uint32()
  external int VersionMinor;
  @Array(128)
  external Array<Uint16> Name;
}

class KSAUDIOMODULE_PROPERTY extends Struct {
  external KSIDENTIFIER Property;
  external GUID ClassId;
  @Uint32()
  external int InstanceId;
}

class KSNOTIFICATIONID_AudioModule extends Struct {}

class KSAUDIOMODULE_NOTIFICATION extends Struct {
  @Uint32()
  external int Anonymous;
}

class AudioClientProperties extends Struct {
  @Uint32()
  external int cbSize;
  @Int32()
  external int bIsOffload;
  @Uint32()
  external int eCategory;
  @Uint32()
  external int Options;
}

class AudioClient3ActivationParams extends Struct {
  external GUID tracingContextId;
}

class AMBISONICS_PARAMS extends Struct {
  @Uint32()
  external int u32Size;
  @Uint32()
  external int u32Version;
  @Uint32()
  external int u32Type;
  @Uint32()
  external int u32ChannelOrdering;
  @Uint32()
  external int u32Normalization;
  @Uint32()
  external int u32Order;
  @Uint32()
  external int u32NumChannels;
  external Pointer<Uint32> pu32ChannelMap;
}

class SpatialAudioObjectRenderStreamActivationParams extends Struct {
  external Pointer<WAVEFORMATEX> ObjectFormat;
  @Uint32()
  external int StaticObjectTypeMask;
  @Uint32()
  external int MinDynamicObjectCount;
  @Uint32()
  external int MaxDynamicObjectCount;
  @Uint32()
  external int Category;
  @IntPtr()
  external int EventHandle;
  external Pointer NotifyObject;
}

class SpatialAudioClientActivationParams extends Struct {
  external GUID tracingContextId;
  external GUID appId;
  @Int32()
  external int majorVersion;
  @Int32()
  external int minorVersion1;
  @Int32()
  external int minorVersion2;
  @Int32()
  external int minorVersion3;
}

class SpatialAudioHrtfDirectivity extends Struct {
  @Uint32()
  external int Type;
  @Float()
  external double Scaling;
}

class SpatialAudioHrtfDirectivityCardioid extends Struct {
  external SpatialAudioHrtfDirectivity directivity;
  @Float()
  external double Order;
}

class SpatialAudioHrtfDirectivityCone extends Struct {
  external SpatialAudioHrtfDirectivity directivity;
  @Float()
  external double InnerAngle;
  @Float()
  external double OuterAngle;
}

class SpatialAudioHrtfDirectivityUnion extends Struct {
  external SpatialAudioHrtfDirectivityCone Cone;
  external SpatialAudioHrtfDirectivityCardioid Cardiod;
  external SpatialAudioHrtfDirectivity Omni;
}

class SpatialAudioHrtfDistanceDecay extends Struct {
  @Uint32()
  external int Type;
  @Float()
  external double MaxGain;
  @Float()
  external double MinGain;
  @Float()
  external double UnityGainDistance;
  @Float()
  external double CutoffDistance;
}

class SpatialAudioHrtfActivationParams extends Struct {
  external Pointer<WAVEFORMATEX> ObjectFormat;
  @Uint32()
  external int StaticObjectTypeMask;
  @Uint32()
  external int MinDynamicObjectCount;
  @Uint32()
  external int MaxDynamicObjectCount;
  @Uint32()
  external int Category;
  @IntPtr()
  external int EventHandle;
  external Pointer NotifyObject;
  external Pointer<SpatialAudioHrtfDistanceDecay> DistanceDecay;
  external Pointer<SpatialAudioHrtfDirectivityUnion> Directivity;
  external Pointer<Uint32> Environment;
  external Pointer<Float> Orientation;
}

class MMDeviceEnumerator extends Struct {}

class DIRECTX_AUDIO_ACTIVATION_PARAMS extends Struct {
  @Uint32()
  external int cbDirectXAudioActivationParams;
  external GUID guidAudioSession;
  @Uint32()
  external int dwAudioStreamFlags;
}

class AudioExtensionParams extends Struct {
  @IntPtr()
  external int AddPageParam;
  external Pointer pEndpoint;
  external Pointer pPnpInterface;
  external Pointer pPnpDevnode;
}

class AUDIO_ENDPOINT_SHARED_CREATE_PARAMS extends Struct {
  @Uint32()
  external int u32Size;
  @Uint32()
  external int u32TSSessionId;
  @Uint32()
  external int targetEndpointConnectorType;
  external WAVEFORMATEX wfxDeviceFormat;
}

class DEVINTERFACE_AUDIOENDPOINTPLUGIN extends Struct {}

class DeviceTopology extends Struct {}

class AUDIO_VOLUME_NOTIFICATION_DATA extends Struct {
  external GUID guidEventContext;
  @Int32()
  external int bMuted;
  @Float()
  external double fMasterVolume;
  @Uint32()
  external int nChannels;
  @Array(1)
  external Array<Float> afChannelVolumes;
}

class SpatialAudioMetadataItemsInfo extends Struct {
  @Uint16()
  external int FrameCount;
  @Uint16()
  external int ItemCount;
  @Uint16()
  external int MaxItemCount;
  @Uint32()
  external int MaxValueBufferLength;
}

class SpatialAudioObjectRenderStreamForMetadataActivationParams extends Struct {
  external Pointer<WAVEFORMATEX> ObjectFormat;
  @Uint32()
  external int StaticObjectTypeMask;
  @Uint32()
  external int MinDynamicObjectCount;
  @Uint32()
  external int MaxDynamicObjectCount;
  @Uint32()
  external int Category;
  @IntPtr()
  external int EventHandle;
  external GUID MetadataFormatId;
  @Uint16()
  external int MaxMetadataItemCount;
  external Pointer<PROPVARIANT> MetadataActivationParams;
  external Pointer NotifyObject;
}
