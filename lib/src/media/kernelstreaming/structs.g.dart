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
import '../../media/kernelstreaming/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../media/structs.g.dart';

/// {@category Struct}
class ALLOCATOR_PROPERTIES_EX extends Struct {
  @Int32()
  external int cBuffers;

  @Int32()
  external int cbBuffer;

  @Int32()
  external int cbAlign;

  @Int32()
  external int cbPrefix;

  external GUID MemoryType;

  external GUID BusType;

  @Int32()
  external int State;

  external PIPE_TERMINATION Input;

  external PIPE_TERMINATION Output;

  @Uint32()
  external int Strategy;

  @Uint32()
  external int Flags;

  @Uint32()
  external int Weight;

  @Int32()
  external int LogicalMemoryType;

  @Int32()
  external int AllocatorPlace;

  external PIPE_DIMENSIONS Dimensions;

  external KS_FRAMING_RANGE PhysicalRange;

  external Pointer<IKsAllocatorEx> PrevSegment;

  @Uint32()
  external int CountNextSegments;

  external Pointer<Pointer<IKsAllocatorEx>> NextSegments;

  @Uint32()
  external int InsideFactors;

  @Uint32()
  external int NumberPins;
}

/// {@category Struct}
class AUDIORESOURCEMANAGEMENT_RESOURCEGROUP extends Struct {
  @Int32()
  external int ResourceGroupAcquired;

  @Array(256)
  external Array<Uint16> _ResourceGroupName;

  String get ResourceGroupName {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_ResourceGroupName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set ResourceGroupName(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _ResourceGroupName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class CC_BYTE_PAIR extends Struct {
  @Array(2)
  external Array<Uint8> Decoded;

  @Uint16()
  external int Reserved;
}

/// {@category Struct}
class CC_HW_FIELD extends Struct {
  external VBICODECFILTERING_SCANLINES ScanlinesRequested;

  @Uint32()
  external int fieldFlags;

  @Int64()
  external int PictureNumber;

  @Array(12)
  external Array<CC_BYTE_PAIR> Lines;
}

/// {@category Struct}
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

/// {@category Struct}
class DS3DVECTOR extends Struct {
  external _DS3DVECTOR__Anonymous1_e__Union Anonymous1;

  external _DS3DVECTOR__Anonymous2_e__Union Anonymous2;

  external _DS3DVECTOR__Anonymous3_e__Union Anonymous3;
}

/// {@category Struct}
class _DS3DVECTOR__Anonymous1_e__Union extends Union {
  @Float()
  external double x;

  @Float()
  external double dvX;
}

extension DS3DVECTOR_Extension on DS3DVECTOR {
  double get x => this.Anonymous1.x;
  set x(double value) => this.Anonymous1.x = value;

  double get dvX => this.Anonymous1.dvX;
  set dvX(double value) => this.Anonymous1.dvX = value;
}

/// {@category Struct}
class _DS3DVECTOR__Anonymous2_e__Union extends Union {
  @Float()
  external double y;

  @Float()
  external double dvY;
}

extension DS3DVECTOR_Extension_1 on DS3DVECTOR {
  double get y => this.Anonymous2.y;
  set y(double value) => this.Anonymous2.y = value;

  double get dvY => this.Anonymous2.dvY;
  set dvY(double value) => this.Anonymous2.dvY = value;
}

/// {@category Struct}
class _DS3DVECTOR__Anonymous3_e__Union extends Union {
  @Float()
  external double z;

  @Float()
  external double dvZ;
}

extension DS3DVECTOR_Extension_2 on DS3DVECTOR {
  double get z => this.Anonymous3.z;
  set z(double value) => this.Anonymous3.z = value;

  double get dvZ => this.Anonymous3.dvZ;
  set dvZ(double value) => this.Anonymous3.dvZ = value;
}

/// {@category Struct}
class IKsAllocator extends Opaque {}

/// {@category Struct}
class IKsAllocatorEx extends Opaque {}

/// {@category Struct}
class IKsPin extends Opaque {}

/// {@category Struct}
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

/// {@category Struct}
class KSAC3_ALTERNATE_AUDIO extends Struct {
  @Int32()
  external int fStereo;

  @Uint32()
  external int DualMode;
}

/// {@category Struct}
class KSAC3_BIT_STREAM_MODE extends Struct {
  @Int32()
  external int BitStreamMode;
}

/// {@category Struct}
class KSAC3_DIALOGUE_LEVEL extends Struct {
  @Uint32()
  external int DialogueLevel;
}

/// {@category Struct}
class KSAC3_DOWNMIX extends Struct {
  @Int32()
  external int fDownMix;

  @Int32()
  external int fDolbySurround;
}

/// {@category Struct}
class KSAC3_ERROR_CONCEALMENT extends Struct {
  @Int32()
  external int fRepeatPreviousBlock;

  @Int32()
  external int fErrorInCurrentBlock;
}

/// {@category Struct}
class KSAC3_ROOM_TYPE extends Struct {
  @Int32()
  external int fLargeRoom;
}

/// {@category Struct}
class KSALLOCATOR_FRAMING extends Struct {
  external _KSALLOCATOR_FRAMING__Anonymous1_e__Union Anonymous1;

  @Uint32()
  external int PoolType;

  @Uint32()
  external int Frames;

  @Uint32()
  external int FrameSize;

  external _KSALLOCATOR_FRAMING__Anonymous2_e__Union Anonymous2;

  @Uint32()
  external int Reserved;
}

/// {@category Struct}
class _KSALLOCATOR_FRAMING__Anonymous1_e__Union extends Union {
  @Uint32()
  external int OptionsFlags;

  @Uint32()
  external int RequirementsFlags;
}

extension KSALLOCATOR_FRAMING_Extension on KSALLOCATOR_FRAMING {
  int get OptionsFlags => this.Anonymous1.OptionsFlags;
  set OptionsFlags(int value) => this.Anonymous1.OptionsFlags = value;

  int get RequirementsFlags => this.Anonymous1.RequirementsFlags;
  set RequirementsFlags(int value) => this.Anonymous1.RequirementsFlags = value;
}

/// {@category Struct}
class _KSALLOCATOR_FRAMING__Anonymous2_e__Union extends Union {
  @Uint32()
  external int FileAlignment;

  @Int32()
  external int FramePitch;
}

extension KSALLOCATOR_FRAMING_Extension_1 on KSALLOCATOR_FRAMING {
  int get FileAlignment => this.Anonymous2.FileAlignment;
  set FileAlignment(int value) => this.Anonymous2.FileAlignment = value;

  int get FramePitch => this.Anonymous2.FramePitch;
  set FramePitch(int value) => this.Anonymous2.FramePitch = value;
}

/// {@category Struct}
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

/// {@category Struct}
class KSATTRIBUTE extends Struct {
  @Uint32()
  external int Size;

  @Uint32()
  external int Flags;

  external GUID Attribute;
}

/// {@category Struct}
class KSATTRIBUTE_AUDIOSIGNALPROCESSING_MODE extends Struct {
  external KSATTRIBUTE AttributeHeader;

  external GUID SignalProcessingMode;
}

/// {@category Struct}
class KSAUDIOENGINE_BUFFER_SIZE_RANGE extends Struct {
  @Uint32()
  external int MinBufferBytes;

  @Uint32()
  external int MaxBufferBytes;
}

/// {@category Struct}
class KSAUDIOENGINE_DESCRIPTOR extends Struct {
  @Uint32()
  external int nHostPinId;

  @Uint32()
  external int nOffloadPinId;

  @Uint32()
  external int nLoopbackPinId;
}

/// {@category Struct}
class KSAUDIOENGINE_VOLUMELEVEL extends Struct {
  @Int32()
  external int TargetVolume;

  @Int32()
  external int CurveType;

  @Uint64()
  external int CurveDuration;
}

/// {@category Struct}
class KSAUDIOMODULE_DESCRIPTOR extends Struct {
  external GUID ClassId;

  @Uint32()
  external int InstanceId;

  @Uint32()
  external int VersionMajor;

  @Uint32()
  external int VersionMinor;

  @Array(128)
  external Array<Uint16> _Name;

  String get Name {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_Name[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set Name(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _Name[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class KSAUDIOMODULE_NOTIFICATION extends Struct {
  external _KSAUDIOMODULE_NOTIFICATION__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _KSAUDIOMODULE_NOTIFICATION__Anonymous_e__Union extends Union {
  external _KSAUDIOMODULE_NOTIFICATION__Anonymous_e__Union__ProviderId_e__Struct
      ProviderId;

  @Int64()
  external int Alignment;
}

/// {@category Struct}
class _KSAUDIOMODULE_NOTIFICATION__Anonymous_e__Union__ProviderId_e__Struct
    extends Struct {
  external GUID DeviceId;

  external GUID ClassId;

  @Uint32()
  external int InstanceId;

  @Uint32()
  external int Reserved;
}

extension KSAUDIOMODULE_NOTIFICATION__Anonymous_e__Union_Extension
    on KSAUDIOMODULE_NOTIFICATION {
  GUID get DeviceId => this.Anonymous.ProviderId.DeviceId;
  set DeviceId(GUID value) => this.Anonymous.ProviderId.DeviceId = value;

  GUID get ClassId => this.Anonymous.ProviderId.ClassId;
  set ClassId(GUID value) => this.Anonymous.ProviderId.ClassId = value;

  int get InstanceId => this.Anonymous.ProviderId.InstanceId;
  set InstanceId(int value) => this.Anonymous.ProviderId.InstanceId = value;

  int get Reserved => this.Anonymous.ProviderId.Reserved;
  set Reserved(int value) => this.Anonymous.ProviderId.Reserved = value;
}

extension KSAUDIOMODULE_NOTIFICATION_Extension on KSAUDIOMODULE_NOTIFICATION {
  _KSAUDIOMODULE_NOTIFICATION__Anonymous_e__Union__ProviderId_e__Struct
      get ProviderId => this.Anonymous.ProviderId;
  set ProviderId(
          _KSAUDIOMODULE_NOTIFICATION__Anonymous_e__Union__ProviderId_e__Struct
              value) =>
      this.Anonymous.ProviderId = value;

  int get Alignment => this.Anonymous.Alignment;
  set Alignment(int value) => this.Anonymous.Alignment = value;
}

/// {@category Struct}
class KSAUDIOMODULE_PROPERTY extends Struct {
  external KSIDENTIFIER Property;

  external GUID ClassId;

  @Uint32()
  external int InstanceId;
}

/// {@category Struct}
class KSAUDIO_CHANNEL_CONFIG extends Struct {
  @Int32()
  external int ActiveSpeakerPositions;
}

/// {@category Struct}
class KSAUDIO_COPY_PROTECTION extends Struct {
  @Int32()
  external int fCopyrighted;

  @Int32()
  external int fOriginal;
}

/// {@category Struct}
class KSAUDIO_DYNAMIC_RANGE extends Struct {
  @Uint32()
  external int QuietCompression;

  @Uint32()
  external int LoudCompression;
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class KSAUDIO_MIXCAP_TABLE extends Struct {
  @Uint32()
  external int InputChannels;

  @Uint32()
  external int OutputChannels;

  @Array(1)
  external Array<KSAUDIO_MIX_CAPS> Capabilities;
}

/// {@category Struct}
class KSAUDIO_MIXLEVEL extends Struct {
  @Int32()
  external int Mute;

  @Int32()
  external int Level;
}

/// {@category Struct}
class KSAUDIO_MIX_CAPS extends Struct {
  @Int32()
  external int Mute;

  @Int32()
  external int Minimum;

  @Int32()
  external int Maximum;

  external _KSAUDIO_MIX_CAPS__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _KSAUDIO_MIX_CAPS__Anonymous_e__Union extends Union {
  @Int32()
  external int Reset;

  @Int32()
  external int Resolution;
}

extension KSAUDIO_MIX_CAPS_Extension on KSAUDIO_MIX_CAPS {
  int get Reset => this.Anonymous.Reset;
  set Reset(int value) => this.Anonymous.Reset = value;

  int get Resolution => this.Anonymous.Resolution;
  set Resolution(int value) => this.Anonymous.Resolution = value;
}

/// {@category Struct}
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
  external Array<KSAUDIO_PACKETSIZE_SIGNALPROCESSINGMODE_CONSTRAINT>
      ProcessingModeConstraints;
}

/// {@category Struct}
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
  external Array<KSAUDIO_PACKETSIZE_SIGNALPROCESSINGMODE_CONSTRAINT>
      ProcessingModeConstraints;
}

/// {@category Struct}
class KSAUDIO_POSITION extends Struct {
  @Uint64()
  external int PlayOffset;

  @Uint64()
  external int WriteOffset;
}

/// {@category Struct}
class KSAUDIO_POSITIONEX extends Struct {
  @Int64()
  external int TimerFrequency;

  @Int64()
  external int TimeStamp1;

  external KSAUDIO_POSITION Position;

  @Int64()
  external int TimeStamp2;
}

/// {@category Struct}
class KSAUDIO_PRESENTATION_POSITION extends Struct {
  @Uint64()
  external int u64PositionInBlocks;

  @Uint64()
  external int u64QPCPosition;
}

/// {@category Struct}
class KSCAMERA_EXTENDEDPROP_BACKGROUNDSEGMENTATION_CONFIGCAPS extends Struct {
  external SIZE Resolution;

  external _KSCAMERA_EXTENDEDPROP_BACKGROUNDSEGMENTATION_CONFIGCAPS__MaxFrameRate_e__Struct
      MaxFrameRate;

  external SIZE MaskResolution;

  external GUID SubType;
}

/// {@category Struct}
class _KSCAMERA_EXTENDEDPROP_BACKGROUNDSEGMENTATION_CONFIGCAPS__MaxFrameRate_e__Struct
    extends Struct {
  @Int32()
  external int Numerator;

  @Int32()
  external int Denominator;
}

extension KSCAMERA_EXTENDEDPROP_BACKGROUNDSEGMENTATION_CONFIGCAPS_Extension
    on KSCAMERA_EXTENDEDPROP_BACKGROUNDSEGMENTATION_CONFIGCAPS {
  int get Numerator => this.MaxFrameRate.Numerator;
  set Numerator(int value) => this.MaxFrameRate.Numerator = value;

  int get Denominator => this.MaxFrameRate.Denominator;
  set Denominator(int value) => this.MaxFrameRate.Denominator = value;
}

/// {@category Struct}
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

/// {@category Struct}
class KSCAMERA_EXTENDEDPROP_DIGITALWINDOW_CONFIGCAPS extends Struct {
  @Int32()
  external int ResolutionX;

  @Int32()
  external int ResolutionY;

  @Int32()
  external int PorchTop;

  @Int32()
  external int PorchLeft;

  @Int32()
  external int PorchBottom;

  @Int32()
  external int PorchRight;

  @Int32()
  external int NonUpscalingWindowSize;

  @Int32()
  external int MinWindowSize;

  @Int32()
  external int MaxWindowSize;

  @Int32()
  external int Reserved;
}

/// {@category Struct}
class KSCAMERA_EXTENDEDPROP_DIGITALWINDOW_CONFIGCAPSHEADER extends Struct {
  @Uint32()
  external int Size;

  @Uint32()
  external int Count;
}

/// {@category Struct}
class KSCAMERA_EXTENDEDPROP_DIGITALWINDOW_SETTING extends Struct {
  @Int32()
  external int OriginX;

  @Int32()
  external int OriginY;

  @Int32()
  external int WindowSize;

  @Uint32()
  external int Reserved;
}

/// {@category Struct}
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

/// {@category Struct}
class KSCAMERA_EXTENDEDPROP_FIELDOFVIE extends Struct {
  @Uint32()
  external int NormalizedFocalLengthX;

  @Uint32()
  external int NormalizedFocalLengthY;

  @Uint32()
  external int Flag;

  @Uint32()
  external int Reserved;
}

/// {@category Struct}
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

/// {@category Struct}
class KSCAMERA_EXTENDEDPROP_METADATAINFO extends Struct {
  @Int32()
  external int BufferAlignment;

  @Uint32()
  external int MaxMetadataBufferSize;
}

/// {@category Struct}
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

/// {@category Struct}
class KSCAMERA_EXTENDEDPROP_PROFILE extends Struct {
  external GUID ProfileId;

  @Uint32()
  external int Index;

  @Uint32()
  external int Reserved;
}

/// {@category Struct}
class KSCAMERA_EXTENDEDPROP_ROI_CONFIGCAPS extends Struct {
  @Uint32()
  external int ControlId;

  @Uint32()
  external int MaxNumberOfROIs;

  @Uint64()
  external int Capability;
}

/// {@category Struct}
class KSCAMERA_EXTENDEDPROP_ROI_CONFIGCAPSHEADER extends Struct {
  @Uint32()
  external int Size;

  @Uint32()
  external int ConfigCapCount;

  @Uint64()
  external int Reserved;
}

/// {@category Struct}
class KSCAMERA_EXTENDEDPROP_ROI_EXPOSURE extends Struct {
  external KSCAMERA_EXTENDEDPROP_ROI_INFO ROIInfo;

  @Uint64()
  external int Reserved;
}

/// {@category Struct}
class KSCAMERA_EXTENDEDPROP_ROI_FOCUS extends Struct {
  external KSCAMERA_EXTENDEDPROP_ROI_INFO ROIInfo;

  @Uint64()
  external int Reserved;
}

/// {@category Struct}
class KSCAMERA_EXTENDEDPROP_ROI_INFO extends Struct {
  external RECT Region;

  @Uint64()
  external int Flags;

  @Int32()
  external int Weight;

  @Int32()
  external int RegionOfInterestType;
}

/// {@category Struct}
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

/// {@category Struct}
class KSCAMERA_EXTENDEDPROP_ROI_ISPCONTROLHEADER extends Struct {
  @Uint32()
  external int Size;

  @Uint32()
  external int ControlCount;

  @Uint64()
  external int Reserved;
}

/// {@category Struct}
class KSCAMERA_EXTENDEDPROP_ROI_WHITEBALANCE extends Struct {
  external KSCAMERA_EXTENDEDPROP_ROI_INFO ROIInfo;

  @Uint64()
  external int Reserved;
}

/// {@category Struct}
class KSCAMERA_EXTENDEDPROP_VALUE extends Struct {
  external _KSCAMERA_EXTENDEDPROP_VALUE__Value_e__Union Value;
}

/// {@category Struct}
class _KSCAMERA_EXTENDEDPROP_VALUE__Value_e__Union extends Union {
  @Double()
  external double dbl;

  @Uint64()
  external int ull;

  @Uint32()
  external int ul;

  @Uint64()
  external int ratio;

  @Int32()
  external int l;

  @Int64()
  external int ll;
}

extension KSCAMERA_EXTENDEDPROP_VALUE_Extension on KSCAMERA_EXTENDEDPROP_VALUE {
  double get dbl => this.Value.dbl;
  set dbl(double value) => this.Value.dbl = value;

  int get ull => this.Value.ull;
  set ull(int value) => this.Value.ull = value;

  int get ul => this.Value.ul;
  set ul(int value) => this.Value.ul = value;

  int get ratio => this.Value.ratio;
  set ratio(int value) => this.Value.ratio = value;

  int get l => this.Value.l;
  set l(int value) => this.Value.l = value;

  int get ll => this.Value.ll;
  set ll(int value) => this.Value.ll = value;
}

/// {@category Struct}
class KSCAMERA_EXTENDEDPROP_VIDEOPROCSETTING extends Struct {
  @Uint32()
  external int Mode;

  @Int32()
  external int Min;

  @Int32()
  external int Max;

  @Int32()
  external int Step;

  external KSCAMERA_EXTENDEDPROP_VALUE VideoProc;

  @Uint64()
  external int Reserved;
}

/// {@category Struct}
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

/// {@category Struct}
class KSCAMERA_METADATA_BACKGROUNDSEGMENTATIONMASK extends Struct {
  external KSCAMERA_METADATA_ITEMHEADER Header;

  external RECT MaskCoverageBoundingBox;

  external SIZE MaskResolution;

  external RECT ForegroundBoundingBox;

  @Array(1)
  external Array<Uint8> MaskData;
}

/// {@category Struct}
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

/// {@category Struct}
class KSCAMERA_METADATA_DIGITALWINDO extends Struct {
  external KSCAMERA_METADATA_ITEMHEADER Header;

  external KSCAMERA_EXTENDEDPROP_DIGITALWINDOW_SETTING Window;
}

/// {@category Struct}
class KSCAMERA_METADATA_FRAMEILLUMINATION extends Struct {
  external KSCAMERA_METADATA_ITEMHEADER Header;

  @Uint32()
  external int Flags;

  @Uint32()
  external int Reserved;
}

/// {@category Struct}
class KSCAMERA_METADATA_ITEMHEADER extends Struct {
  @Uint32()
  external int MetadataId;

  @Uint32()
  external int Size;
}

/// {@category Struct}
class KSCAMERA_METADATA_PHOTOCONFIRMATION extends Struct {
  external KSCAMERA_METADATA_ITEMHEADER Header;

  @Uint32()
  external int PhotoConfirmationIndex;

  @Uint32()
  external int Reserved;
}

/// {@category Struct}
class KSCAMERA_PERFRAMESETTING_CAP_HEADER extends Struct {
  @Uint32()
  external int Size;

  @Uint32()
  external int ItemCount;

  @Uint64()
  external int Flags;
}

/// {@category Struct}
class KSCAMERA_PERFRAMESETTING_CAP_ITEM_HEADER extends Struct {
  @Uint32()
  external int Size;

  @Uint32()
  external int Type;

  @Uint64()
  external int Flags;
}

/// {@category Struct}
class KSCAMERA_PERFRAMESETTING_CUSTOM_ITEM extends Struct {
  @Uint32()
  external int Size;

  @Uint32()
  external int Reserved;

  external GUID Id;
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class KSCAMERA_PERFRAMESETTING_ITEM_HEADER extends Struct {
  @Uint32()
  external int Size;

  @Uint32()
  external int Type;

  @Uint64()
  external int Flags;
}

/// {@category Struct}
class KSCAMERA_PROFILE_CONCURRENCYINFO extends Struct {
  external GUID ReferenceGuid;

  @Uint32()
  external int Reserved;

  @Uint32()
  external int ProfileCount;

  external Pointer<KSCAMERA_PROFILE_INFO> Profiles;
}

/// {@category Struct}
class KSCAMERA_PROFILE_INFO extends Struct {
  external GUID ProfileId;

  @Uint32()
  external int Index;

  @Uint32()
  external int PinCount;

  external Pointer<KSCAMERA_PROFILE_PININFO> Pins;
}

/// {@category Struct}
class KSCAMERA_PROFILE_MEDIAINFO extends Struct {
  external _KSCAMERA_PROFILE_MEDIAINFO__Resolution_e__Struct Resolution;

  external _KSCAMERA_PROFILE_MEDIAINFO__MaxFrameRate_e__Struct MaxFrameRate;

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

/// {@category Struct}
class _KSCAMERA_PROFILE_MEDIAINFO__Resolution_e__Struct extends Struct {
  @Uint32()
  external int X;

  @Uint32()
  external int Y;
}

extension KSCAMERA_PROFILE_MEDIAINFO_Extension on KSCAMERA_PROFILE_MEDIAINFO {
  int get X => this.Resolution.X;
  set X(int value) => this.Resolution.X = value;

  int get Y => this.Resolution.Y;
  set Y(int value) => this.Resolution.Y = value;
}

/// {@category Struct}
class _KSCAMERA_PROFILE_MEDIAINFO__MaxFrameRate_e__Struct extends Struct {
  @Uint32()
  external int Numerator;

  @Uint32()
  external int Denominator;
}

extension KSCAMERA_PROFILE_MEDIAINFO_Extension_1 on KSCAMERA_PROFILE_MEDIAINFO {
  int get Numerator => this.MaxFrameRate.Numerator;
  set Numerator(int value) => this.MaxFrameRate.Numerator = value;

  int get Denominator => this.MaxFrameRate.Denominator;
  set Denominator(int value) => this.MaxFrameRate.Denominator = value;
}

/// {@category Struct}
class KSCAMERA_PROFILE_PININFO extends Struct {
  external GUID PinCategory;

  external _KSCAMERA_PROFILE_PININFO__Anonymous_e__Union Anonymous;

  @Uint32()
  external int MediaInfoCount;

  external Pointer<KSCAMERA_PROFILE_MEDIAINFO> MediaInfos;
}

/// {@category Struct}
class _KSCAMERA_PROFILE_PININFO__Anonymous_e__Union extends Union {
  external _KSCAMERA_PROFILE_PININFO__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;

  @Uint32()
  external int Reserved;
}

/// {@category Struct}
class _KSCAMERA_PROFILE_PININFO__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint16()
  external int PinIndex;

  @Uint16()
  external int ProfileSensorType;
}

extension KSCAMERA_PROFILE_PININFO__Anonymous_e__Union_Extension
    on KSCAMERA_PROFILE_PININFO {
  int get PinIndex => this.Anonymous.Anonymous.PinIndex;
  set PinIndex(int value) => this.Anonymous.Anonymous.PinIndex = value;

  int get ProfileSensorType => this.Anonymous.Anonymous.ProfileSensorType;
  set ProfileSensorType(int value) =>
      this.Anonymous.Anonymous.ProfileSensorType = value;
}

extension KSCAMERA_PROFILE_PININFO_Extension on KSCAMERA_PROFILE_PININFO {
  _KSCAMERA_PROFILE_PININFO__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _KSCAMERA_PROFILE_PININFO__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;

  int get Reserved => this.Anonymous.Reserved;
  set Reserved(int value) => this.Anonymous.Reserved = value;
}

/// {@category Struct}
class KSCLOCK_CREATE extends Struct {
  @Uint32()
  external int CreateFlags;
}

/// {@category Struct}
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

/// {@category Struct}
class KSCORRELATED_TIME extends Struct {
  @Int64()
  external int Time;

  @Int64()
  external int SystemTime;
}

/// {@category Struct}
class KSDATAFORMAT extends Union {
  external _KSDATAFORMAT__Anonymous_e__Struct Anonymous;

  @Int64()
  external int Alignment;
}

/// {@category Struct}
class _KSDATAFORMAT__Anonymous_e__Struct extends Struct {
  @Uint32()
  external int FormatSize;

  @Uint32()
  external int Flags;

  @Uint32()
  external int SampleSize;

  @Uint32()
  external int Reserved;

  external GUID MajorFormat;

  external GUID SubFormat;

  external GUID Specifier;
}

extension KSDATAFORMAT_Extension on KSDATAFORMAT {
  int get FormatSize => this.Anonymous.FormatSize;
  set FormatSize(int value) => this.Anonymous.FormatSize = value;

  int get Flags => this.Anonymous.Flags;
  set Flags(int value) => this.Anonymous.Flags = value;

  int get SampleSize => this.Anonymous.SampleSize;
  set SampleSize(int value) => this.Anonymous.SampleSize = value;

  int get Reserved => this.Anonymous.Reserved;
  set Reserved(int value) => this.Anonymous.Reserved = value;

  GUID get MajorFormat => this.Anonymous.MajorFormat;
  set MajorFormat(GUID value) => this.Anonymous.MajorFormat = value;

  GUID get SubFormat => this.Anonymous.SubFormat;
  set SubFormat(GUID value) => this.Anonymous.SubFormat = value;

  GUID get Specifier => this.Anonymous.Specifier;
  set Specifier(GUID value) => this.Anonymous.Specifier = value;
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class KSDEVICE_PROFILE_INFO extends Struct {
  @Uint32()
  external int Type;

  @Uint32()
  external int Size;

  external _KSDEVICE_PROFILE_INFO__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _KSDEVICE_PROFILE_INFO__Anonymous_e__Union extends Union {
  external _KSDEVICE_PROFILE_INFO__Anonymous_e__Union__Camera_e__Struct Camera;
}

/// {@category Struct}
class _KSDEVICE_PROFILE_INFO__Anonymous_e__Union__Camera_e__Struct
    extends Struct {
  external KSCAMERA_PROFILE_INFO Info;

  @Uint32()
  external int Reserved;

  @Uint32()
  external int ConcurrencyCount;

  external Pointer<KSCAMERA_PROFILE_CONCURRENCYINFO> Concurrency;
}

extension KSDEVICE_PROFILE_INFO__Anonymous_e__Union_Extension
    on KSDEVICE_PROFILE_INFO {
  KSCAMERA_PROFILE_INFO get Info => this.Anonymous.Camera.Info;
  set Info(KSCAMERA_PROFILE_INFO value) => this.Anonymous.Camera.Info = value;

  int get Reserved => this.Anonymous.Camera.Reserved;
  set Reserved(int value) => this.Anonymous.Camera.Reserved = value;

  int get ConcurrencyCount => this.Anonymous.Camera.ConcurrencyCount;
  set ConcurrencyCount(int value) =>
      this.Anonymous.Camera.ConcurrencyCount = value;

  Pointer<KSCAMERA_PROFILE_CONCURRENCYINFO> get Concurrency =>
      this.Anonymous.Camera.Concurrency;
  set Concurrency(Pointer<KSCAMERA_PROFILE_CONCURRENCYINFO> value) =>
      this.Anonymous.Camera.Concurrency = value;
}

extension KSDEVICE_PROFILE_INFO_Extension on KSDEVICE_PROFILE_INFO {
  _KSDEVICE_PROFILE_INFO__Anonymous_e__Union__Camera_e__Struct get Camera =>
      this.Anonymous.Camera;
  set Camera(
          _KSDEVICE_PROFILE_INFO__Anonymous_e__Union__Camera_e__Struct value) =>
      this.Anonymous.Camera = value;
}

/// {@category Struct}
class KSDISPLAYCHANGE extends Struct {
  @Uint32()
  external int PelsWidth;

  @Uint32()
  external int PelsHeight;

  @Uint32()
  external int BitsPerPel;

  @Array(1)
  external Array<Uint16> _DeviceID;

  String get DeviceID {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_DeviceID[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set DeviceID(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _DeviceID[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
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

/// {@category Struct}
class KSDS3D_BUFFER_CONE_ANGLES extends Struct {
  @Uint32()
  external int InsideConeAngle;

  @Uint32()
  external int OutsideConeAngle;
}

/// {@category Struct}
class KSDS3D_HRTF_FILTER_FORMAT_MSG extends Struct {
  @Int32()
  external int FilterMethod;

  @Int32()
  external int CoeffFormat;

  @Int32()
  external int Version;

  @Uint32()
  external int Reserved;
}

/// {@category Struct}
class KSDS3D_HRTF_INIT_MSG extends Struct {
  @Uint32()
  external int Size;

  @Int32()
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

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class KSDS3D_ITD_PARAMS_MSG extends Struct {
  @Uint32()
  external int Enabled;

  external KSDS3D_ITD_PARAMS LeftParams;

  external KSDS3D_ITD_PARAMS RightParams;

  @Uint32()
  external int Reserved;
}

/// {@category Struct}
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

/// {@category Struct}
class KSDS3D_LISTENER_ORIENTATION extends Struct {
  external DS3DVECTOR Front;

  external DS3DVECTOR Top;
}

/// {@category Struct}
class KSERROR extends Struct {
  external Pointer Context;

  @Uint32()
  external int Status;
}

/// {@category Struct}
class KSEVENTDATA extends Struct {
  @Uint32()
  external int NotificationType;

  external _KSEVENTDATA__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _KSEVENTDATA__Anonymous_e__Union extends Union {
  external _KSEVENTDATA__Anonymous_e__Union__EventHandle_e__Struct EventHandle;

  external _KSEVENTDATA__Anonymous_e__Union__SemaphoreHandle_e__Struct
      SemaphoreHandle;

  external _KSEVENTDATA__Anonymous_e__Union__Alignment_e__Struct Alignment;
}

/// {@category Struct}
class _KSEVENTDATA__Anonymous_e__Union__EventHandle_e__Struct extends Struct {
  @IntPtr()
  external int Event;

  @Array(2)
  external Array<IntPtr> Reserved;
}

extension KSEVENTDATA__Anonymous_e__Union_Extension on KSEVENTDATA {
  int get Event => this.Anonymous.EventHandle.Event;
  set Event(int value) => this.Anonymous.EventHandle.Event = value;

  Array<IntPtr> get Reserved => this.Anonymous.EventHandle.Reserved;
  set Reserved(Array<IntPtr> value) =>
      this.Anonymous.EventHandle.Reserved = value;
}

/// {@category Struct}
class _KSEVENTDATA__Anonymous_e__Union__SemaphoreHandle_e__Struct
    extends Struct {
  @IntPtr()
  external int Semaphore;

  @Uint32()
  external int Reserved;

  @Int32()
  external int Adjustment;
}

extension KSEVENTDATA__Anonymous_e__Union_Extension_1 on KSEVENTDATA {
  int get Semaphore => this.Anonymous.SemaphoreHandle.Semaphore;
  set Semaphore(int value) => this.Anonymous.SemaphoreHandle.Semaphore = value;

  int get Reserved => this.Anonymous.SemaphoreHandle.Reserved;
  set Reserved(int value) => this.Anonymous.SemaphoreHandle.Reserved = value;

  int get Adjustment => this.Anonymous.SemaphoreHandle.Adjustment;
  set Adjustment(int value) =>
      this.Anonymous.SemaphoreHandle.Adjustment = value;
}

/// {@category Struct}
class _KSEVENTDATA__Anonymous_e__Union__Alignment_e__Struct extends Struct {
  external Pointer Unused;

  @Array(2)
  external Array<IntPtr> Alignment;
}

extension KSEVENTDATA__Anonymous_e__Union_Extension_2 on KSEVENTDATA {
  Pointer get Unused => this.Anonymous.Alignment.Unused;
  set Unused(Pointer value) => this.Anonymous.Alignment.Unused = value;

  Array<IntPtr> get Alignment => this.Anonymous.Alignment.Alignment;
  set Alignment(Array<IntPtr> value) =>
      this.Anonymous.Alignment.Alignment = value;
}

extension KSEVENTDATA_Extension on KSEVENTDATA {
  _KSEVENTDATA__Anonymous_e__Union__EventHandle_e__Struct get EventHandle =>
      this.Anonymous.EventHandle;
  set EventHandle(
          _KSEVENTDATA__Anonymous_e__Union__EventHandle_e__Struct value) =>
      this.Anonymous.EventHandle = value;

  _KSEVENTDATA__Anonymous_e__Union__SemaphoreHandle_e__Struct
      get SemaphoreHandle => this.Anonymous.SemaphoreHandle;
  set SemaphoreHandle(
          _KSEVENTDATA__Anonymous_e__Union__SemaphoreHandle_e__Struct value) =>
      this.Anonymous.SemaphoreHandle = value;

  _KSEVENTDATA__Anonymous_e__Union__Alignment_e__Struct get Alignment =>
      this.Anonymous.Alignment;
  set Alignment(_KSEVENTDATA__Anonymous_e__Union__Alignment_e__Struct value) =>
      this.Anonymous.Alignment = value;
}

/// {@category Struct}
class KSEVENT_TIME_INTERVAL extends Struct {
  external KSEVENTDATA EventData;

  @Int64()
  external int TimeBase;

  @Int64()
  external int Interval;
}

/// {@category Struct}
class KSEVENT_TIME_MARK extends Struct {
  external KSEVENTDATA EventData;

  @Int64()
  external int MarkTime;
}

/// {@category Struct}
class KSEVENT_TUNER_INITIATE_SCAN_S extends Struct {
  external KSEVENTDATA EventData;

  @Uint32()
  external int StartFrequency;

  @Uint32()
  external int EndFrequency;
}

/// {@category Struct}
class KSE_NODE extends Struct {
  external KSIDENTIFIER Event;

  @Uint32()
  external int NodeId;

  @Uint32()
  external int Reserved;
}

/// {@category Struct}
class KSE_PIN extends Struct {
  external KSIDENTIFIER Event;

  @Uint32()
  external int PinId;

  @Uint32()
  external int Reserved;
}

/// {@category Struct}
class KSFRAMETIME extends Struct {
  @Int64()
  external int Duration;

  @Uint32()
  external int FrameFlags;

  @Uint32()
  external int Reserved;
}

/// {@category Struct}
class KSGOP_USERDATA extends Struct {
  @Uint32()
  external int sc;

  @Uint32()
  external int reserved1;

  @Uint8()
  external int cFields;

  @Array(3)
  external Array<Uint8> l21Data;
}

/// {@category Struct}
class KSIDENTIFIER extends Struct {
  external _KSIDENTIFIER__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _KSIDENTIFIER__Anonymous_e__Union extends Union {
  external _KSIDENTIFIER__Anonymous_e__Union__Anonymous_e__Struct Anonymous;

  @Int64()
  external int Alignment;
}

/// {@category Struct}
class _KSIDENTIFIER__Anonymous_e__Union__Anonymous_e__Struct extends Struct {
  external GUID $Set;

  @Uint32()
  external int Id;

  @Uint32()
  external int Flags;
}

extension KSIDENTIFIER__Anonymous_e__Union_Extension on KSIDENTIFIER {
  GUID get $Set => this.Anonymous.Anonymous.$Set;
  set $Set(GUID value) => this.Anonymous.Anonymous.$Set = value;

  int get Id => this.Anonymous.Anonymous.Id;
  set Id(int value) => this.Anonymous.Anonymous.Id = value;

  int get Flags => this.Anonymous.Anonymous.Flags;
  set Flags(int value) => this.Anonymous.Anonymous.Flags = value;
}

extension KSIDENTIFIER_Extension on KSIDENTIFIER {
  _KSIDENTIFIER__Anonymous_e__Union__Anonymous_e__Struct get Anonymous =>
      this.Anonymous.Anonymous;
  set Anonymous(_KSIDENTIFIER__Anonymous_e__Union__Anonymous_e__Struct value) =>
      this.Anonymous.Anonymous = value;

  int get Alignment => this.Anonymous.Alignment;
  set Alignment(int value) => this.Anonymous.Alignment = value;
}

/// {@category Struct}
class KSINTERVAL extends Struct {
  @Int64()
  external int TimeBase;

  @Int64()
  external int Interval;
}

/// {@category Struct}
class KSJACK_DESCRIPTION extends Struct {
  @Uint32()
  external int ChannelMapping;

  @Uint32()
  external int Color;

  @Int32()
  external int ConnectionType;

  @Int32()
  external int GeoLocation;

  @Int32()
  external int GenLocation;

  @Int32()
  external int PortConnection;

  @Int32()
  external int IsConnected;
}

/// {@category Struct}
class KSJACK_DESCRIPTION2 extends Struct {
  @Uint32()
  external int DeviceStateInfo;

  @Uint32()
  external int JackCapabilities;
}

/// {@category Struct}
class KSJACK_SINK_INFORMATION extends Struct {
  @Int32()
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
  external Array<Uint16> _SinkDescription;

  String get SinkDescription {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_SinkDescription[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set SinkDescription(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _SinkDescription[i] = stringToStore.codeUnitAt(i);
    }
  }

  external LUID PortId;
}

/// {@category Struct}
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

/// {@category Struct}
class KSMULTIPLE_DATA_PROP extends Struct {
  external KSIDENTIFIER Property;

  external KSMULTIPLE_ITEM MultipleItem;
}

/// {@category Struct}
class KSMULTIPLE_ITEM extends Struct {
  @Uint32()
  external int Size;

  @Uint32()
  external int Count;
}

/// {@category Struct}
class KSMUSICFORMAT extends Struct {
  @Uint32()
  external int TimeDeltaMs;

  @Uint32()
  external int ByteCount;
}

/// {@category Struct}
class KSM_NODE extends Struct {
  external KSIDENTIFIER Method;

  @Uint32()
  external int NodeId;

  @Uint32()
  external int Reserved;
}

/// {@category Struct}
class KSNODEPROPERTY extends Struct {
  external KSIDENTIFIER Property;

  @Uint32()
  external int NodeId;

  @Uint32()
  external int Reserved;
}

/// {@category Struct}
class KSNODEPROPERTY_AUDIO_3D_LISTENER extends Struct {
  external KSNODEPROPERTY NodeProperty;

  external Pointer ListenerId;
}

/// {@category Struct}
class KSNODEPROPERTY_AUDIO_CHANNEL extends Struct {
  external KSNODEPROPERTY NodeProperty;

  @Int32()
  external int Channel;

  @Uint32()
  external int Reserved;
}

/// {@category Struct}
class KSNODEPROPERTY_AUDIO_DEV_SPECIFIC extends Struct {
  external KSNODEPROPERTY NodeProperty;

  @Uint32()
  external int DevSpecificId;

  @Uint32()
  external int DeviceInfo;

  @Uint32()
  external int Length;
}

/// {@category Struct}
class KSNODEPROPERTY_AUDIO_PROPERTY extends Struct {
  external KSNODEPROPERTY NodeProperty;

  external Pointer AppContext;

  @Uint32()
  external int Length;
}

/// {@category Struct}
class KSNODE_CREATE extends Struct {
  @Uint32()
  external int CreateFlags;

  @Uint32()
  external int Node;
}

/// {@category Struct}
class KSPIN_CINSTANCES extends Struct {
  @Uint32()
  external int PossibleCount;

  @Uint32()
  external int CurrentCount;
}

/// {@category Struct}
class KSPIN_CONNECT extends Struct {
  external KSIDENTIFIER Interface;

  external KSIDENTIFIER Medium;

  @Uint32()
  external int PinId;

  @IntPtr()
  external int PinToHandle;

  external KSPRIORITY Priority;
}

/// {@category Struct}
class KSPIN_MDL_CACHING_NOTIFICATION extends Struct {
  @Int32()
  external int Event;

  external Pointer Buffer;
}

/// {@category Struct}
class KSPIN_MDL_CACHING_NOTIFICATION32 extends Struct {
  @Int32()
  external int Event;

  @Uint32()
  external int Buffer;
}

/// {@category Struct}
class KSPIN_PHYSICALCONNECTION extends Struct {
  @Uint32()
  external int Size;

  @Uint32()
  external int Pin;

  @Array(1)
  external Array<Uint16> _SymbolicLinkName;

  String get SymbolicLinkName {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_SymbolicLinkName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set SymbolicLinkName(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _SymbolicLinkName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class KSPRIORITY extends Struct {
  @Uint32()
  external int PriorityClass;

  @Uint32()
  external int PrioritySubClass;
}

/// {@category Struct}
class KSPROPERTY_ALLOCATOR_CONTROL_CAPTURE_CAPS_S extends Struct {
  @Uint32()
  external int InterleavedCapSupported;
}

/// {@category Struct}
class KSPROPERTY_ALLOCATOR_CONTROL_CAPTURE_INTERLEAVE_S extends Struct {
  @Uint32()
  external int InterleavedCapPossible;
}

/// {@category Struct}
class KSPROPERTY_ALLOCATOR_CONTROL_SURFACE_SIZE_S extends Struct {
  @Uint32()
  external int CX;

  @Uint32()
  external int CY;
}

/// {@category Struct}
class KSPROPERTY_BOUNDS_LONG extends Union {
  external _KSPROPERTY_BOUNDS_LONG__Anonymous1_e__Struct Anonymous1;

  external _KSPROPERTY_BOUNDS_LONG__Anonymous2_e__Struct Anonymous2;
}

/// {@category Struct}
class _KSPROPERTY_BOUNDS_LONG__Anonymous1_e__Struct extends Struct {
  @Int32()
  external int SignedMinimum;

  @Int32()
  external int SignedMaximum;
}

extension KSPROPERTY_BOUNDS_LONG_Extension on KSPROPERTY_BOUNDS_LONG {
  int get SignedMinimum => this.Anonymous1.SignedMinimum;
  set SignedMinimum(int value) => this.Anonymous1.SignedMinimum = value;

  int get SignedMaximum => this.Anonymous1.SignedMaximum;
  set SignedMaximum(int value) => this.Anonymous1.SignedMaximum = value;
}

/// {@category Struct}
class _KSPROPERTY_BOUNDS_LONG__Anonymous2_e__Struct extends Struct {
  @Uint32()
  external int UnsignedMinimum;

  @Uint32()
  external int UnsignedMaximum;
}

extension KSPROPERTY_BOUNDS_LONG_Extension_1 on KSPROPERTY_BOUNDS_LONG {
  int get UnsignedMinimum => this.Anonymous2.UnsignedMinimum;
  set UnsignedMinimum(int value) => this.Anonymous2.UnsignedMinimum = value;

  int get UnsignedMaximum => this.Anonymous2.UnsignedMaximum;
  set UnsignedMaximum(int value) => this.Anonymous2.UnsignedMaximum = value;
}

/// {@category Struct}
class KSPROPERTY_BOUNDS_LONGLONG extends Union {
  external _KSPROPERTY_BOUNDS_LONGLONG__Anonymous1_e__Struct Anonymous1;

  external _KSPROPERTY_BOUNDS_LONGLONG__Anonymous2_e__Struct Anonymous2;
}

/// {@category Struct}
class _KSPROPERTY_BOUNDS_LONGLONG__Anonymous1_e__Struct extends Struct {
  @Int64()
  external int SignedMinimum;

  @Int64()
  external int SignedMaximum;
}

extension KSPROPERTY_BOUNDS_LONGLONG_Extension on KSPROPERTY_BOUNDS_LONGLONG {
  int get SignedMinimum => this.Anonymous1.SignedMinimum;
  set SignedMinimum(int value) => this.Anonymous1.SignedMinimum = value;

  int get SignedMaximum => this.Anonymous1.SignedMaximum;
  set SignedMaximum(int value) => this.Anonymous1.SignedMaximum = value;
}

/// {@category Struct}
class _KSPROPERTY_BOUNDS_LONGLONG__Anonymous2_e__Struct extends Struct {
  @Uint64()
  external int UnsignedMinimum;

  @Uint64()
  external int UnsignedMaximum;
}

extension KSPROPERTY_BOUNDS_LONGLONG_Extension_1 on KSPROPERTY_BOUNDS_LONGLONG {
  int get UnsignedMinimum => this.Anonymous2.UnsignedMinimum;
  set UnsignedMinimum(int value) => this.Anonymous2.UnsignedMinimum = value;

  int get UnsignedMaximum => this.Anonymous2.UnsignedMaximum;
  set UnsignedMaximum(int value) => this.Anonymous2.UnsignedMaximum = value;
}

/// {@category Struct}
class KSPROPERTY_CAMERACONTROL_FLASH_S extends Struct {
  @Uint32()
  external int Flash;

  @Uint32()
  external int Capabilities;
}

/// {@category Struct}
class KSPROPERTY_CAMERACONTROL_FOCAL_LENGTH_S extends Struct {
  external KSIDENTIFIER Property;

  @Int32()
  external int lOcularFocalLength;

  @Int32()
  external int lObjectiveFocalLengthMin;

  @Int32()
  external int lObjectiveFocalLengthMax;
}

/// {@category Struct}
class KSPROPERTY_CAMERACONTROL_IMAGE_PIN_CAPABILITY_S extends Struct {
  @Uint32()
  external int Capabilities;

  @Uint32()
  external int Reserved0;
}

/// {@category Struct}
class KSPROPERTY_CAMERACONTROL_NODE_FOCAL_LENGTH_S extends Struct {
  external KSNODEPROPERTY NodeProperty;

  @Int32()
  external int lOcularFocalLength;

  @Int32()
  external int lObjectiveFocalLengthMin;

  @Int32()
  external int lObjectiveFocalLengthMax;
}

/// {@category Struct}
class KSPROPERTY_CAMERACONTROL_NODE_S extends Struct {
  external KSP_NODE NodeProperty;

  @Int32()
  external int Value;

  @Uint32()
  external int Flags;

  @Uint32()
  external int Capabilities;
}

/// {@category Struct}
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

/// {@category Struct}
class KSPROPERTY_CAMERACONTROL_REGION_OF_INTEREST_S extends Struct {
  external RECT FocusRect;

  @Int32()
  external int AutoFocusLock;

  @Int32()
  external int AutoExposureLock;

  @Int32()
  external int AutoWhitebalanceLock;

  external _KSPROPERTY_CAMERACONTROL_REGION_OF_INTEREST_S__Anonymous_e__Union
      Anonymous;
}

/// {@category Struct}
class _KSPROPERTY_CAMERACONTROL_REGION_OF_INTEREST_S__Anonymous_e__Union
    extends Union {
  @Uint32()
  external int Capabilities;

  @Uint32()
  external int Configuration;
}

extension KSPROPERTY_CAMERACONTROL_REGION_OF_INTEREST_S_Extension
    on KSPROPERTY_CAMERACONTROL_REGION_OF_INTEREST_S {
  int get Capabilities => this.Anonymous.Capabilities;
  set Capabilities(int value) => this.Anonymous.Capabilities = value;

  int get Configuration => this.Anonymous.Configuration;
  set Configuration(int value) => this.Anonymous.Configuration = value;
}

/// {@category Struct}
class KSPROPERTY_CAMERACONTROL_S extends Struct {
  external KSIDENTIFIER Property;

  @Int32()
  external int Value;

  @Uint32()
  external int Flags;

  @Uint32()
  external int Capabilities;
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class KSPROPERTY_CAMERACONTROL_VIDEOSTABILIZATION_MODE_S extends Struct {
  @Uint32()
  external int VideoStabilizationMode;

  @Uint32()
  external int Capabilities;
}

/// {@category Struct}
class KSPROPERTY_CROSSBAR_ACTIVE_S extends Struct {
  external KSIDENTIFIER Property;

  @Uint32()
  external int IndexInputPin;

  @Uint32()
  external int Active;
}

/// {@category Struct}
class KSPROPERTY_CROSSBAR_CAPS_S extends Struct {
  external KSIDENTIFIER Property;

  @Uint32()
  external int NumberOfInputs;

  @Uint32()
  external int NumberOfOutputs;
}

/// {@category Struct}
class KSPROPERTY_CROSSBAR_PININFO_S extends Struct {
  external KSIDENTIFIER Property;

  @Int32()
  external int Direction;

  @Uint32()
  external int Index;

  @Uint32()
  external int PinType;

  @Uint32()
  external int RelatedPinIndex;

  external KSIDENTIFIER Medium;
}

/// {@category Struct}
class KSPROPERTY_CROSSBAR_ROUTE_S extends Struct {
  external KSIDENTIFIER Property;

  @Uint32()
  external int IndexInputPin;

  @Uint32()
  external int IndexOutputPin;

  @Uint32()
  external int CanRoute;
}

/// {@category Struct}
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

/// {@category Struct}
class KSPROPERTY_DROPPEDFRAMES_CURRENT_S extends Struct {
  external KSIDENTIFIER Property;

  @Int64()
  external int PictureNumber;

  @Int64()
  external int DropCount;

  @Uint32()
  external int AverageFrameSize;
}

/// {@category Struct}
class KSPROPERTY_EXTDEVICE_S extends Struct {
  external KSIDENTIFIER Property;

  external _KSPROPERTY_EXTDEVICE_S__u_e__Union u;
}

/// {@category Struct}
class _KSPROPERTY_EXTDEVICE_S__u_e__Union extends Union {
  external DEVCAPS Capabilities;

  @Uint32()
  external int DevPort;

  @Uint32()
  external int PowerState;

  @Array(260)
  external Array<Uint16> _pawchString;

  String get pawchString {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_pawchString[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set pawchString(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _pawchString[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(2)
  external Array<Uint32> NodeUniqueID;
}

extension KSPROPERTY_EXTDEVICE_S_Extension on KSPROPERTY_EXTDEVICE_S {
  DEVCAPS get Capabilities => this.u.Capabilities;
  set Capabilities(DEVCAPS value) => this.u.Capabilities = value;

  int get DevPort => this.u.DevPort;
  set DevPort(int value) => this.u.DevPort = value;

  int get PowerState => this.u.PowerState;
  set PowerState(int value) => this.u.PowerState = value;

  String get pawchString => this.u.pawchString;
  set pawchString(String value) => this.u.pawchString = value;

  Array<Uint32> get NodeUniqueID => this.u.NodeUniqueID;
  set NodeUniqueID(Array<Uint32> value) => this.u.NodeUniqueID = value;
}

/// {@category Struct}
class KSPROPERTY_EXTXPORT_NODE_S extends Struct {
  external KSP_NODE NodeProperty;

  external _KSPROPERTY_EXTXPORT_NODE_S__u_e__Union u;
}

/// {@category Struct}
class _KSPROPERTY_EXTXPORT_NODE_S__u_e__Union extends Union {
  @Uint32()
  external int Capabilities;

  @Uint32()
  external int SignalMode;

  @Uint32()
  external int LoadMedium;

  external MEDIUM_INFO MediumInfo;

  external TRANSPORT_STATE XPrtState;

  external _KSPROPERTY_EXTXPORT_NODE_S__u_e__Union__Timecode_e__Struct Timecode;

  @Uint32()
  external int dwTimecode;

  @Uint32()
  external int dwAbsTrackNumber;

  external _KSPROPERTY_EXTXPORT_NODE_S__u_e__Union__RawAVC_e__Struct RawAVC;
}

/// {@category Struct}
class _KSPROPERTY_EXTXPORT_NODE_S__u_e__Union__Timecode_e__Struct
    extends Struct {
  @Uint8()
  external int frame;

  @Uint8()
  external int second;

  @Uint8()
  external int minute;

  @Uint8()
  external int hour;
}

extension KSPROPERTY_EXTXPORT_NODE_S__u_e__Union_Extension
    on KSPROPERTY_EXTXPORT_NODE_S {
  int get frame => this.u.Timecode.frame;
  set frame(int value) => this.u.Timecode.frame = value;

  int get second => this.u.Timecode.second;
  set second(int value) => this.u.Timecode.second = value;

  int get minute => this.u.Timecode.minute;
  set minute(int value) => this.u.Timecode.minute = value;

  int get hour => this.u.Timecode.hour;
  set hour(int value) => this.u.Timecode.hour = value;
}

/// {@category Struct}
class _KSPROPERTY_EXTXPORT_NODE_S__u_e__Union__RawAVC_e__Struct extends Struct {
  @Uint32()
  external int PayloadSize;

  @Array(512)
  external Array<Uint8> Payload;
}

extension KSPROPERTY_EXTXPORT_NODE_S__u_e__Union_Extension_1
    on KSPROPERTY_EXTXPORT_NODE_S {
  int get PayloadSize => this.u.RawAVC.PayloadSize;
  set PayloadSize(int value) => this.u.RawAVC.PayloadSize = value;

  Array<Uint8> get Payload => this.u.RawAVC.Payload;
  set Payload(Array<Uint8> value) => this.u.RawAVC.Payload = value;
}

extension KSPROPERTY_EXTXPORT_NODE_S_Extension on KSPROPERTY_EXTXPORT_NODE_S {
  int get Capabilities => this.u.Capabilities;
  set Capabilities(int value) => this.u.Capabilities = value;

  int get SignalMode => this.u.SignalMode;
  set SignalMode(int value) => this.u.SignalMode = value;

  int get LoadMedium => this.u.LoadMedium;
  set LoadMedium(int value) => this.u.LoadMedium = value;

  MEDIUM_INFO get MediumInfo => this.u.MediumInfo;
  set MediumInfo(MEDIUM_INFO value) => this.u.MediumInfo = value;

  TRANSPORT_STATE get XPrtState => this.u.XPrtState;
  set XPrtState(TRANSPORT_STATE value) => this.u.XPrtState = value;

  _KSPROPERTY_EXTXPORT_NODE_S__u_e__Union__Timecode_e__Struct get Timecode =>
      this.u.Timecode;
  set Timecode(
          _KSPROPERTY_EXTXPORT_NODE_S__u_e__Union__Timecode_e__Struct value) =>
      this.u.Timecode = value;

  int get dwTimecode => this.u.dwTimecode;
  set dwTimecode(int value) => this.u.dwTimecode = value;

  int get dwAbsTrackNumber => this.u.dwAbsTrackNumber;
  set dwAbsTrackNumber(int value) => this.u.dwAbsTrackNumber = value;

  _KSPROPERTY_EXTXPORT_NODE_S__u_e__Union__RawAVC_e__Struct get RawAVC =>
      this.u.RawAVC;
  set RawAVC(_KSPROPERTY_EXTXPORT_NODE_S__u_e__Union__RawAVC_e__Struct value) =>
      this.u.RawAVC = value;
}

/// {@category Struct}
class KSPROPERTY_EXTXPORT_S extends Struct {
  external KSIDENTIFIER Property;

  external _KSPROPERTY_EXTXPORT_S__u_e__Union u;
}

/// {@category Struct}
class _KSPROPERTY_EXTXPORT_S__u_e__Union extends Union {
  @Uint32()
  external int Capabilities;

  @Uint32()
  external int SignalMode;

  @Uint32()
  external int LoadMedium;

  external MEDIUM_INFO MediumInfo;

  external TRANSPORT_STATE XPrtState;

  external _KSPROPERTY_EXTXPORT_S__u_e__Union__Timecode_e__Struct Timecode;

  @Uint32()
  external int dwTimecode;

  @Uint32()
  external int dwAbsTrackNumber;

  external _KSPROPERTY_EXTXPORT_S__u_e__Union__RawAVC_e__Struct RawAVC;
}

/// {@category Struct}
class _KSPROPERTY_EXTXPORT_S__u_e__Union__Timecode_e__Struct extends Struct {
  @Uint8()
  external int frame;

  @Uint8()
  external int second;

  @Uint8()
  external int minute;

  @Uint8()
  external int hour;
}

extension KSPROPERTY_EXTXPORT_S__u_e__Union_Extension on KSPROPERTY_EXTXPORT_S {
  int get frame => this.u.Timecode.frame;
  set frame(int value) => this.u.Timecode.frame = value;

  int get second => this.u.Timecode.second;
  set second(int value) => this.u.Timecode.second = value;

  int get minute => this.u.Timecode.minute;
  set minute(int value) => this.u.Timecode.minute = value;

  int get hour => this.u.Timecode.hour;
  set hour(int value) => this.u.Timecode.hour = value;
}

/// {@category Struct}
class _KSPROPERTY_EXTXPORT_S__u_e__Union__RawAVC_e__Struct extends Struct {
  @Uint32()
  external int PayloadSize;

  @Array(512)
  external Array<Uint8> Payload;
}

extension KSPROPERTY_EXTXPORT_S__u_e__Union_Extension_1
    on KSPROPERTY_EXTXPORT_S {
  int get PayloadSize => this.u.RawAVC.PayloadSize;
  set PayloadSize(int value) => this.u.RawAVC.PayloadSize = value;

  Array<Uint8> get Payload => this.u.RawAVC.Payload;
  set Payload(Array<Uint8> value) => this.u.RawAVC.Payload = value;
}

extension KSPROPERTY_EXTXPORT_S_Extension on KSPROPERTY_EXTXPORT_S {
  int get Capabilities => this.u.Capabilities;
  set Capabilities(int value) => this.u.Capabilities = value;

  int get SignalMode => this.u.SignalMode;
  set SignalMode(int value) => this.u.SignalMode = value;

  int get LoadMedium => this.u.LoadMedium;
  set LoadMedium(int value) => this.u.LoadMedium = value;

  MEDIUM_INFO get MediumInfo => this.u.MediumInfo;
  set MediumInfo(MEDIUM_INFO value) => this.u.MediumInfo = value;

  TRANSPORT_STATE get XPrtState => this.u.XPrtState;
  set XPrtState(TRANSPORT_STATE value) => this.u.XPrtState = value;

  _KSPROPERTY_EXTXPORT_S__u_e__Union__Timecode_e__Struct get Timecode =>
      this.u.Timecode;
  set Timecode(_KSPROPERTY_EXTXPORT_S__u_e__Union__Timecode_e__Struct value) =>
      this.u.Timecode = value;

  int get dwTimecode => this.u.dwTimecode;
  set dwTimecode(int value) => this.u.dwTimecode = value;

  int get dwAbsTrackNumber => this.u.dwAbsTrackNumber;
  set dwAbsTrackNumber(int value) => this.u.dwAbsTrackNumber = value;

  _KSPROPERTY_EXTXPORT_S__u_e__Union__RawAVC_e__Struct get RawAVC =>
      this.u.RawAVC;
  set RawAVC(_KSPROPERTY_EXTXPORT_S__u_e__Union__RawAVC_e__Struct value) =>
      this.u.RawAVC = value;
}

/// {@category Struct}
class KSPROPERTY_MEDIAAVAILABLE extends Struct {
  @Int64()
  external int Earliest;

  @Int64()
  external int Latest;
}

/// {@category Struct}
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

/// {@category Struct}
class KSPROPERTY_NETWORKCAMERACONTROL_EVENT_INFO extends Struct {
  external KSCAMERA_METADATA_ITEMHEADER Header;

  @Array(1)
  external Array<Uint16> _EventFilter;

  String get EventFilter {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_EventFilter[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set EventFilter(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _EventFilter[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class KSPROPERTY_NETWORKCAMERACONTROL_METADATA_INFO extends Struct {
  @Uint32()
  external int MetadataItems;

  @Uint32()
  external int Size;

  @Int32()
  external int PTZStatus;

  @Int32()
  external int Events;

  @Int32()
  external int Analytics;

  @Int32()
  external int Reserved;
}

/// {@category Struct}
class KSPROPERTY_NETWORKCAMERACONTROL_NTPINFO_HEADER extends Struct {
  @Uint32()
  external int Size;

  @Int32()
  external int Type;
}

/// {@category Struct}
class KSPROPERTY_POSITIONS extends Struct {
  @Int64()
  external int Current;

  @Int64()
  external int Stop;

  @Int32()
  external int CurrentFlags;

  @Int32()
  external int StopFlags;
}

/// {@category Struct}
class KSPROPERTY_SELECTOR_NODE_S extends Struct {
  external KSP_NODE NodeProperty;

  @Int32()
  external int Value;

  @Uint32()
  external int Flags;

  @Uint32()
  external int Capabilities;
}

/// {@category Struct}
class KSPROPERTY_SELECTOR_S extends Struct {
  external KSIDENTIFIER Property;

  @Int32()
  external int Value;

  @Uint32()
  external int Flags;

  @Uint32()
  external int Capabilities;
}

/// {@category Struct}
class KSPROPERTY_SERIAL extends Struct {
  external KSIDENTIFIER PropTypeSet;

  @Uint32()
  external int Id;

  @Uint32()
  external int PropertyLength;
}

/// {@category Struct}
class KSPROPERTY_SERIALHDR extends Struct {
  external GUID PropertySet;

  @Uint32()
  external int Count;
}

/// {@category Struct}
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

/// {@category Struct}
class KSPROPERTY_SPPAL extends Struct {
  @Array(16)
  external Array<KS_DVD_YUV> sppal;
}

/// {@category Struct}
class KSPROPERTY_STEPPING_LONG extends Struct {
  @Uint32()
  external int SteppingDelta;

  @Uint32()
  external int Reserved;

  external KSPROPERTY_BOUNDS_LONG Bounds;
}

/// {@category Struct}
class KSPROPERTY_STEPPING_LONGLONG extends Struct {
  @Uint64()
  external int SteppingDelta;

  external KSPROPERTY_BOUNDS_LONGLONG Bounds;
}

/// {@category Struct}
class KSPROPERTY_TIMECODE_NODE_S extends Struct {
  external KSP_NODE NodeProperty;

  external TIMECODE_SAMPLE TimecodeSamp;
}

/// {@category Struct}
class KSPROPERTY_TIMECODE_S extends Struct {
  external KSIDENTIFIER Property;

  external TIMECODE_SAMPLE TimecodeSamp;
}

/// {@category Struct}
class KSPROPERTY_TUNER_CAPS_S extends Struct {
  external KSIDENTIFIER Property;

  @Uint32()
  external int ModesSupported;

  external KSIDENTIFIER VideoMedium;

  external KSIDENTIFIER TVAudioMedium;

  external KSIDENTIFIER RadioAudioMedium;
}

/// {@category Struct}
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

/// {@category Struct}
class KSPROPERTY_TUNER_IF_MEDIUM_S extends Struct {
  external KSIDENTIFIER Property;

  external KSIDENTIFIER IFMedium;
}

/// {@category Struct}
class KSPROPERTY_TUNER_INPUT_S extends Struct {
  external KSIDENTIFIER Property;

  @Uint32()
  external int InputIndex;
}

/// {@category Struct}
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

/// {@category Struct}
class KSPROPERTY_TUNER_MODE_S extends Struct {
  external KSIDENTIFIER Property;

  @Uint32()
  external int Mode;
}

/// {@category Struct}
class KSPROPERTY_TUNER_NETWORKTYPE_SCAN_CAPS_S extends Struct {
  external KSIDENTIFIER Property;

  external GUID NetworkType;

  @Uint32()
  external int BufferSize;

  external Pointer NetworkTunerCapabilities;
}

/// {@category Struct}
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

/// {@category Struct}
class KSPROPERTY_TUNER_SCAN_STATUS_S extends Struct {
  external KSIDENTIFIER Property;

  @Int32()
  external int LockStatus;

  @Uint32()
  external int CurrentFrequency;
}

/// {@category Struct}
class KSPROPERTY_TUNER_STANDARD_MODE_S extends Struct {
  external KSIDENTIFIER Property;

  @Int32()
  external int AutoDetect;
}

/// {@category Struct}
class KSPROPERTY_TUNER_STANDARD_S extends Struct {
  external KSIDENTIFIER Property;

  @Uint32()
  external int Standard;
}

/// {@category Struct}
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

/// {@category Struct}
class KSPROPERTY_TVAUDIO_CAPS_S extends Struct {
  external KSIDENTIFIER Property;

  @Uint32()
  external int Capabilities;

  external KSIDENTIFIER InputMedium;

  external KSIDENTIFIER OutputMedium;
}

/// {@category Struct}
class KSPROPERTY_TVAUDIO_S extends Struct {
  external KSIDENTIFIER Property;

  @Uint32()
  external int Mode;
}

/// {@category Struct}
class KSPROPERTY_VBICODECFILTERING_CC_SUBSTREAMS_S extends Struct {
  external KSIDENTIFIER Property;

  external VBICODECFILTERING_CC_SUBSTREAMS Substreams;
}

/// {@category Struct}
class KSPROPERTY_VBICODECFILTERING_NABTS_SUBSTREAMS_S extends Struct {
  external KSIDENTIFIER Property;

  external VBICODECFILTERING_NABTS_SUBSTREAMS Substreams;
}

/// {@category Struct}
class KSPROPERTY_VBICODECFILTERING_SCANLINES_S extends Struct {
  external KSIDENTIFIER Property;

  external VBICODECFILTERING_SCANLINES Scanlines;
}

/// {@category Struct}
class KSPROPERTY_VBICODECFILTERING_STATISTICS_CC_PIN_S extends Struct {
  external KSIDENTIFIER Property;

  external VBICODECFILTERING_STATISTICS_CC_PIN Statistics;
}

/// {@category Struct}
class KSPROPERTY_VBICODECFILTERING_STATISTICS_CC_S extends Struct {
  external KSIDENTIFIER Property;

  external VBICODECFILTERING_STATISTICS_CC Statistics;
}

/// {@category Struct}
class KSPROPERTY_VBICODECFILTERING_STATISTICS_COMMON_PIN_S extends Struct {
  external KSIDENTIFIER Property;

  external VBICODECFILTERING_STATISTICS_COMMON_PIN Statistics;
}

/// {@category Struct}
class KSPROPERTY_VBICODECFILTERING_STATISTICS_COMMON_S extends Struct {
  external KSIDENTIFIER Property;

  external VBICODECFILTERING_STATISTICS_COMMON Statistics;
}

/// {@category Struct}
class KSPROPERTY_VBICODECFILTERING_STATISTICS_NABTS_PIN_S extends Struct {
  external KSIDENTIFIER Property;

  external VBICODECFILTERING_STATISTICS_NABTS_PIN Statistics;
}

/// {@category Struct}
class KSPROPERTY_VBICODECFILTERING_STATISTICS_NABTS_S extends Struct {
  external KSIDENTIFIER Property;

  external VBICODECFILTERING_STATISTICS_NABTS Statistics;
}

/// {@category Struct}
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

/// {@category Struct}
class KSPROPERTY_VIDEOCOMPRESSION_S extends Struct {
  external KSIDENTIFIER Property;

  @Uint32()
  external int StreamIndex;

  @Int32()
  external int Value;
}

/// {@category Struct}
class KSPROPERTY_VIDEOCOMPRESSION_S1 extends Struct {
  external KSIDENTIFIER Property;

  @Uint32()
  external int StreamIndex;

  @Int32()
  external int Value;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
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

/// {@category Struct}
class KSPROPERTY_VIDEOCONTROL_CAPS_S extends Struct {
  external KSIDENTIFIER Property;

  @Uint32()
  external int StreamIndex;

  @Uint32()
  external int VideoControlCaps;
}

/// {@category Struct}
class KSPROPERTY_VIDEOCONTROL_FRAME_RATES_S extends Struct {
  external KSIDENTIFIER Property;

  @Uint32()
  external int StreamIndex;

  @Uint32()
  external int RangeIndex;

  external SIZE Dimensions;
}

/// {@category Struct}
class KSPROPERTY_VIDEOCONTROL_MODE_S extends Struct {
  external KSIDENTIFIER Property;

  @Uint32()
  external int StreamIndex;

  @Int32()
  external int Mode;
}

/// {@category Struct}
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

/// {@category Struct}
class KSPROPERTY_VIDEODECODER_S extends Struct {
  external KSIDENTIFIER Property;

  @Uint32()
  external int Value;
}

/// {@category Struct}
class KSPROPERTY_VIDEODECODER_STATUS2_S extends Struct {
  external KSIDENTIFIER Property;

  @Uint32()
  external int NumberOfLines;

  @Uint32()
  external int SignalLocked;

  @Uint32()
  external int ChromaLock;
}

/// {@category Struct}
class KSPROPERTY_VIDEODECODER_STATUS_S extends Struct {
  external KSIDENTIFIER Property;

  @Uint32()
  external int NumberOfLines;

  @Uint32()
  external int SignalLocked;
}

/// {@category Struct}
class KSPROPERTY_VIDEOENCODER_S extends Struct {
  external KSIDENTIFIER Property;

  @Int32()
  external int Value;

  @Uint32()
  external int Flags;

  @Uint32()
  external int Capabilities;
}

/// {@category Struct}
class KSPROPERTY_VIDEOPROCAMP_NODE_S extends Struct {
  external KSP_NODE NodeProperty;

  @Int32()
  external int Value;

  @Uint32()
  external int Flags;

  @Uint32()
  external int Capabilities;
}

/// {@category Struct}
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

/// {@category Struct}
class KSPROPERTY_VIDEOPROCAMP_S extends Struct {
  external KSIDENTIFIER Property;

  @Int32()
  external int Value;

  @Uint32()
  external int Flags;

  @Uint32()
  external int Capabilities;
}

/// {@category Struct}
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

/// {@category Struct}
class KSP_NODE extends Struct {
  external KSIDENTIFIER Property;

  @Uint32()
  external int NodeId;

  @Uint32()
  external int Reserved;
}

/// {@category Struct}
class KSP_PIN extends Struct {
  external KSIDENTIFIER Property;

  @Uint32()
  external int PinId;

  external _KSP_PIN__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _KSP_PIN__Anonymous_e__Union extends Union {
  @Uint32()
  external int Reserved;

  @Uint32()
  external int Flags;
}

extension KSP_PIN_Extension on KSP_PIN {
  int get Reserved => this.Anonymous.Reserved;
  set Reserved(int value) => this.Anonymous.Reserved = value;

  int get Flags => this.Anonymous.Flags;
  set Flags(int value) => this.Anonymous.Flags = value;
}

/// {@category Struct}
class KSP_TIMEFORMAT extends Struct {
  external KSIDENTIFIER Property;

  external GUID SourceFormat;

  external GUID TargetFormat;

  @Int64()
  external int Time;
}

/// {@category Struct}
class KSQUALITY extends Struct {
  external Pointer Context;

  @Uint32()
  external int Proportion;

  @Int64()
  external int DeltaTime;
}

/// {@category Struct}
class KSQUALITY_MANAGER extends Struct {
  @IntPtr()
  external int QualityManager;

  external Pointer Context;
}

/// {@category Struct}
class KSQUERYBUFFER extends Struct {
  external KSIDENTIFIER Event;

  external Pointer<KSEVENTDATA> EventData;

  external Pointer Reserved;
}

/// {@category Struct}
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

/// {@category Struct}
class KSRATE_CAPABILITY extends Struct {
  external KSIDENTIFIER Property;

  external KSRATE Rate;
}

/// {@category Struct}
class KSRELATIVEEVENT extends Struct {
  @Uint32()
  external int Size;

  @Uint32()
  external int Flags;

  external _KSRELATIVEEVENT__Anonymous_e__Union Anonymous;

  external Pointer Reserved;

  external KSIDENTIFIER Event;

  external KSEVENTDATA EventData;
}

/// {@category Struct}
class _KSRELATIVEEVENT__Anonymous_e__Union extends Union {
  @IntPtr()
  external int ObjectHandle;

  external Pointer ObjectPointer;
}

extension KSRELATIVEEVENT_Extension on KSRELATIVEEVENT {
  int get ObjectHandle => this.Anonymous.ObjectHandle;
  set ObjectHandle(int value) => this.Anonymous.ObjectHandle = value;

  Pointer get ObjectPointer => this.Anonymous.ObjectPointer;
  set ObjectPointer(Pointer value) => this.Anonymous.ObjectPointer = value;
}

/// {@category Struct}
class KSRESOLUTION extends Struct {
  @Int64()
  external int Granularity;

  @Int64()
  external int Error;
}

/// {@category Struct}
class KSRTAUDIO_BUFFER extends Struct {
  external Pointer BufferAddress;

  @Uint32()
  external int ActualBufferSize;

  @Int32()
  external int CallMemoryBarrier;
}

/// {@category Struct}
class KSRTAUDIO_BUFFER32 extends Struct {
  @Uint32()
  external int BufferAddress;

  @Uint32()
  external int ActualBufferSize;

  @Int32()
  external int CallMemoryBarrier;
}

/// {@category Struct}
class KSRTAUDIO_BUFFER_PROPERTY extends Struct {
  external KSIDENTIFIER Property;

  external Pointer BaseAddress;

  @Uint32()
  external int RequestedBufferSize;
}

/// {@category Struct}
class KSRTAUDIO_BUFFER_PROPERTY32 extends Struct {
  external KSIDENTIFIER Property;

  @Uint32()
  external int BaseAddress;

  @Uint32()
  external int RequestedBufferSize;
}

/// {@category Struct}
class KSRTAUDIO_BUFFER_PROPERTY_WITH_NOTIFICATION extends Struct {
  external KSIDENTIFIER Property;

  external Pointer BaseAddress;

  @Uint32()
  external int RequestedBufferSize;

  @Uint32()
  external int NotificationCount;
}

/// {@category Struct}
class KSRTAUDIO_BUFFER_PROPERTY_WITH_NOTIFICATION32 extends Struct {
  external KSIDENTIFIER Property;

  @Uint32()
  external int BaseAddress;

  @Uint32()
  external int RequestedBufferSize;

  @Uint32()
  external int NotificationCount;
}

/// {@category Struct}
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

/// {@category Struct}
class KSRTAUDIO_HWLATENCY extends Struct {
  @Uint32()
  external int FifoSize;

  @Uint32()
  external int ChipsetDelay;

  @Uint32()
  external int CodecDelay;
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class KSRTAUDIO_HWREGISTER_PROPERTY extends Struct {
  external KSIDENTIFIER Property;

  external Pointer BaseAddress;
}

/// {@category Struct}
class KSRTAUDIO_HWREGISTER_PROPERTY32 extends Struct {
  external KSIDENTIFIER Property;

  @Uint32()
  external int BaseAddress;
}

/// {@category Struct}
class KSRTAUDIO_NOTIFICATION_EVENT_PROPERTY extends Struct {
  external KSIDENTIFIER Property;

  @IntPtr()
  external int NotificationEvent;
}

/// {@category Struct}
class KSRTAUDIO_NOTIFICATION_EVENT_PROPERTY32 extends Struct {
  external KSIDENTIFIER Property;

  @Uint32()
  external int NotificationEvent;
}

/// {@category Struct}
class KSRTAUDIO_PACKETVREGISTER extends Struct {
  external Pointer<Uint64> CompletedPacketCount;

  external Pointer<Uint64> CompletedPacketQPC;

  external Pointer<Uint64> CompletedPacketHash;
}

/// {@category Struct}
class KSRTAUDIO_PACKETVREGISTER_PROPERTY extends Struct {
  external KSIDENTIFIER Property;

  external Pointer BaseAddress;
}

/// {@category Struct}
class KSRTAUDIO_SETWRITEPACKET_INFO extends Struct {
  @Uint32()
  external int PacketNumber;

  @Uint32()
  external int Flags;

  @Uint32()
  external int EosPacketLength;
}

/// {@category Struct}
class KSSOUNDDETECTORPROPERTY extends Struct {
  external KSIDENTIFIER Property;

  external GUID EventId;
}

/// {@category Struct}
class KSSTREAMALLOCATOR_STATUS extends Struct {
  external KSALLOCATOR_FRAMING Framing;

  @Uint32()
  external int AllocatedFrames;

  @Uint32()
  external int Reserved;
}

/// {@category Struct}
class KSSTREAMALLOCATOR_STATUS_EX extends Struct {
  external KSALLOCATOR_FRAMING_EX Framing;

  @Uint32()
  external int AllocatedFrames;

  @Uint32()
  external int Reserved;
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class KSSTREAM_UVC_METADATA extends Struct {
  external KSSTREAM_UVC_METADATATYPE_TIMESTAMP StartOfFrameTimestamp;

  external KSSTREAM_UVC_METADATATYPE_TIMESTAMP EndOfFrameTimestamp;
}

/// {@category Struct}
class KSSTREAM_UVC_METADATATYPE_TIMESTAMP extends Struct {
  @Uint32()
  external int PresentationTimeStamp;

  @Uint32()
  external int SourceClockReference;

  external _KSSTREAM_UVC_METADATATYPE_TIMESTAMP__Anonymous_e__Union Anonymous;

  @Uint16()
  external int Reserved0;

  @Uint32()
  external int Reserved1;
}

/// {@category Struct}
class _KSSTREAM_UVC_METADATATYPE_TIMESTAMP__Anonymous_e__Union extends Union {
  external _KSSTREAM_UVC_METADATATYPE_TIMESTAMP__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;

  @Uint16()
  external int SCRToken;
}

/// {@category Struct}
class _KSSTREAM_UVC_METADATATYPE_TIMESTAMP__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint16()
  external int bitfield;
}

extension KSSTREAM_UVC_METADATATYPE_TIMESTAMP__Anonymous_e__Union_Extension
    on KSSTREAM_UVC_METADATATYPE_TIMESTAMP {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension KSSTREAM_UVC_METADATATYPE_TIMESTAMP_Extension
    on KSSTREAM_UVC_METADATATYPE_TIMESTAMP {
  _KSSTREAM_UVC_METADATATYPE_TIMESTAMP__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _KSSTREAM_UVC_METADATATYPE_TIMESTAMP__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;

  int get SCRToken => this.Anonymous.SCRToken;
  set SCRToken(int value) => this.Anonymous.SCRToken = value;
}

/// {@category Struct}
class KSTELEPHONY_CALLCONTROL extends Struct {
  @Int32()
  external int CallType;

  @Int32()
  external int CallControlOp;
}

/// {@category Struct}
class KSTELEPHONY_CALLINFO extends Struct {
  @Int32()
  external int CallType;

  @Int32()
  external int CallState;
}

/// {@category Struct}
class KSTELEPHONY_PROVIDERCHANGE extends Struct {
  @Int32()
  external int CallType;

  @Int32()
  external int ProviderChangeOp;
}

/// {@category Struct}
class KSTIME extends Struct {
  @Int64()
  external int Time;

  @Uint32()
  external int Numerator;

  @Uint32()
  external int Denominator;
}

/// {@category Struct}
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

/// {@category Struct}
class KSTOPOLOGY_CONNECTION extends Struct {
  @Uint32()
  external int FromNode;

  @Uint32()
  external int FromNodePin;

  @Uint32()
  external int ToNode;

  @Uint32()
  external int ToNodePin;
}

/// {@category Struct}
class KSTOPOLOGY_ENDPOINTID extends Struct {
  @Array(260)
  external Array<Uint16> _TopologyName;

  String get TopologyName {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_TopologyName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set TopologyName(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _TopologyName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int PinId;
}

/// {@category Struct}
class KSTOPOLOGY_ENDPOINTIDPAIR extends Struct {
  external KSTOPOLOGY_ENDPOINTID RenderEndpoint;

  external KSTOPOLOGY_ENDPOINTID CaptureEndpoint;
}

/// {@category Struct}
class KSVPMAXPIXELRATE extends Struct {
  external KS_AMVPSIZE Size;

  @Uint32()
  external int MaxPixelsPerSecond;

  @Uint32()
  external int Reserved;
}

/// {@category Struct}
class KSVPSIZE_PROP extends Struct {
  external KSIDENTIFIER Property;

  external KS_AMVPSIZE Size;
}

/// {@category Struct}
class KSVPSURFACEPARAMS extends Struct {
  @Uint32()
  external int dwPitch;

  @Uint32()
  external int dwXOrigin;

  @Uint32()
  external int dwYOrigin;
}

/// {@category Struct}
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

/// {@category Struct}
class KSWAVE_BUFFER extends Struct {
  @Uint32()
  external int Attributes;

  @Uint32()
  external int BufferSize;

  external Pointer BufferAddress;
}

/// {@category Struct}
class KSWAVE_COMPATCAPS extends Struct {
  @Uint32()
  external int ulDeviceType;
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class KSWAVE_VOLUME extends Struct {
  @Int32()
  external int LeftAttenuation;

  @Int32()
  external int RightAttenuation;
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class KS_AMVPSIZE extends Struct {
  @Uint32()
  external int dwWidth;

  @Uint32()
  external int dwHeight;
}

/// {@category Struct}
class KS_AM_ExactRateChange extends Struct {
  @Int64()
  external int OutputZeroTime;

  @Int32()
  external int Rate;
}

/// {@category Struct}
class KS_AM_SimpleRateChange extends Struct {
  @Int64()
  external int StartTime;

  @Int32()
  external int Rate;
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class KS_COLCON extends Struct {
  @Uint8()
  external int bitfield1;

  @Uint8()
  external int bitfield2;

  @Uint8()
  external int bitfield3;

  @Uint8()
  external int bitfield4;
}

/// {@category Struct}
class KS_COMPRESSION extends Struct {
  @Uint32()
  external int RatioNumerator;

  @Uint32()
  external int RatioDenominator;

  @Uint32()
  external int RatioConstantMargin;
}

/// {@category Struct}
class KS_COPY_MACROVISION extends Struct {
  @Uint32()
  external int MACROVISIONLevel;
}

/// {@category Struct}
class KS_DATAFORMAT_H264VIDEOINFO extends Struct {
  external KSDATAFORMAT DataFormat;

  external KS_H264VIDEOINFO H264VideoInfoHeader;
}

/// {@category Struct}
class KS_DATAFORMAT_IMAGEINFO extends Struct {
  external KSDATAFORMAT DataFormat;

  external KS_BITMAPINFOHEADER ImageInfoHeader;
}

/// {@category Struct}
class KS_DATAFORMAT_MPEGVIDEOINFO2 extends Struct {
  external KSDATAFORMAT DataFormat;

  external KS_MPEGVIDEOINFO2 MpegVideoInfoHeader2;
}

/// {@category Struct}
class KS_DATAFORMAT_VBIINFOHEADER extends Struct {
  external KSDATAFORMAT DataFormat;

  external KS_VBIINFOHEADER VBIInfoHeader;
}

/// {@category Struct}
class KS_DATAFORMAT_VIDEOINFOHEADER extends Struct {
  external KSDATAFORMAT DataFormat;

  external KS_VIDEOINFOHEADER VideoInfoHeader;
}

/// {@category Struct}
class KS_DATAFORMAT_VIDEOINFOHEADER2 extends Struct {
  external KSDATAFORMAT DataFormat;

  external KS_VIDEOINFOHEADER2 VideoInfoHeader2;
}

/// {@category Struct}
class KS_DATAFORMAT_VIDEOINFO_PALETTE extends Struct {
  external KSDATAFORMAT DataFormat;

  external KS_VIDEOINFO VideoInfo;
}

/// {@category Struct}
class KS_DATARANGE_ANALOGVIDEO extends Struct {
  external KSDATAFORMAT DataRange;

  external KS_AnalogVideoInfo AnalogVideoInfo;
}

/// {@category Struct}
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

/// {@category Struct}
class KS_DATARANGE_IMAGE extends Struct {
  external KSDATAFORMAT DataRange;

  external KS_VIDEO_STREAM_CONFIG_CAPS ConfigCaps;

  external KS_BITMAPINFOHEADER ImageInfoHeader;
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class KS_DVDCOPY_BUSKEY extends Struct {
  @Array(5)
  external Array<Uint8> BusKey;

  @Array(1)
  external Array<Uint8> Reserved;
}

/// {@category Struct}
class KS_DVDCOPY_CHLGKEY extends Struct {
  @Array(10)
  external Array<Uint8> ChlgKey;

  @Array(2)
  external Array<Uint8> Reserved;
}

/// {@category Struct}
class KS_DVDCOPY_DISCKEY extends Struct {
  @Array(2048)
  external Array<Uint8> DiscKey;
}

/// {@category Struct}
class KS_DVDCOPY_REGION extends Struct {
  @Uint8()
  external int Reserved;

  @Uint8()
  external int RegionData;

  @Array(2)
  external Array<Uint8> Reserved2;
}

/// {@category Struct}
class KS_DVDCOPY_SET_COPY_STATE extends Struct {
  @Uint32()
  external int DVDCopyState;
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
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

  external _KS_FRAME_INFO__Anonymous1_e__Union Anonymous1;

  @Uint32()
  external int Reserved2;

  external _KS_FRAME_INFO__Anonymous2_e__Union Anonymous2;
}

/// {@category Struct}
class _KS_FRAME_INFO__Anonymous1_e__Union extends Union {
  @Int32()
  external int lSurfacePitch;

  @Uint32()
  external int Reserved1;
}

extension KS_FRAME_INFO_Extension on KS_FRAME_INFO {
  int get lSurfacePitch => this.Anonymous1.lSurfacePitch;
  set lSurfacePitch(int value) => this.Anonymous1.lSurfacePitch = value;

  int get Reserved1 => this.Anonymous1.Reserved1;
  set Reserved1(int value) => this.Anonymous1.Reserved1 = value;
}

/// {@category Struct}
class _KS_FRAME_INFO__Anonymous2_e__Union extends Union {
  external _KS_FRAME_INFO__Anonymous2_e__Union__Anonymous_e__Struct Anonymous;

  @Uint64()
  external int FrameCompletionNumber;
}

/// {@category Struct}
class _KS_FRAME_INFO__Anonymous2_e__Union__Anonymous_e__Struct extends Struct {
  @Uint32()
  external int Reserved3;

  @Uint32()
  external int Reserved4;
}

extension KS_FRAME_INFO__Anonymous2_e__Union_Extension on KS_FRAME_INFO {
  int get Reserved3 => this.Anonymous2.Anonymous.Reserved3;
  set Reserved3(int value) => this.Anonymous2.Anonymous.Reserved3 = value;

  int get Reserved4 => this.Anonymous2.Anonymous.Reserved4;
  set Reserved4(int value) => this.Anonymous2.Anonymous.Reserved4 = value;
}

extension KS_FRAME_INFO_Extension_1 on KS_FRAME_INFO {
  _KS_FRAME_INFO__Anonymous2_e__Union__Anonymous_e__Struct get Anonymous =>
      this.Anonymous2.Anonymous;
  set Anonymous(
          _KS_FRAME_INFO__Anonymous2_e__Union__Anonymous_e__Struct value) =>
      this.Anonymous2.Anonymous = value;

  int get FrameCompletionNumber => this.Anonymous2.FrameCompletionNumber;
  set FrameCompletionNumber(int value) =>
      this.Anonymous2.FrameCompletionNumber = value;
}

/// {@category Struct}
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

  external _KS_FRAMING_ITEM__Anonymous_e__Union Anonymous;

  @Uint32()
  external int MemoryTypeWeight;

  external KS_FRAMING_RANGE PhysicalRange;

  external KS_FRAMING_RANGE_WEIGHTED FramingRange;
}

/// {@category Struct}
class _KS_FRAMING_ITEM__Anonymous_e__Union extends Union {
  @Uint32()
  external int FileAlignment;

  @Int32()
  external int FramePitch;
}

extension KS_FRAMING_ITEM_Extension on KS_FRAMING_ITEM {
  int get FileAlignment => this.Anonymous.FileAlignment;
  set FileAlignment(int value) => this.Anonymous.FileAlignment = value;

  int get FramePitch => this.Anonymous.FramePitch;
  set FramePitch(int value) => this.Anonymous.FramePitch = value;
}

/// {@category Struct}
class KS_FRAMING_RANGE extends Struct {
  @Uint32()
  external int MinFrameSize;

  @Uint32()
  external int MaxFrameSize;

  @Uint32()
  external int Stepping;
}

/// {@category Struct}
class KS_FRAMING_RANGE_WEIGHTED extends Struct {
  external KS_FRAMING_RANGE Range;

  @Uint32()
  external int InPlaceWeight;

  @Uint32()
  external int NotInPlaceWeight;
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class KS_MPEG1VIDEOINFO extends Struct {
  external KS_VIDEOINFOHEADER hdr;

  @Uint32()
  external int dwStartTimeCode;

  @Uint32()
  external int cbSequenceHeader;

  @Array(1)
  external Array<Uint8> bSequenceHeader;
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class KS_TRUECOLORINFO extends Struct {
  @Array(3)
  external Array<Uint32> dwBitMasks;

  @Array(256)
  external Array<KS_RGBQUAD> bmiColors;
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
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

  external _KS_VIDEOINFO__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _KS_VIDEOINFO__Anonymous_e__Union extends Union {
  @Array(256)
  external Array<KS_RGBQUAD> bmiColors;

  @Array(3)
  external Array<Uint32> dwBitMasks;

  external KS_TRUECOLORINFO TrueColorInfo;
}

extension KS_VIDEOINFO_Extension on KS_VIDEOINFO {
  Array<KS_RGBQUAD> get bmiColors => this.Anonymous.bmiColors;
  set bmiColors(Array<KS_RGBQUAD> value) => this.Anonymous.bmiColors = value;

  Array<Uint32> get dwBitMasks => this.Anonymous.dwBitMasks;
  set dwBitMasks(Array<Uint32> value) => this.Anonymous.dwBitMasks = value;

  KS_TRUECOLORINFO get TrueColorInfo => this.Anonymous.TrueColorInfo;
  set TrueColorInfo(KS_TRUECOLORINFO value) =>
      this.Anonymous.TrueColorInfo = value;
}

/// {@category Struct}
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

/// {@category Struct}
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

  external _KS_VIDEOINFOHEADER2__Anonymous_e__Union Anonymous;

  @Uint32()
  external int dwReserved2;

  external KS_BITMAPINFOHEADER bmiHeader;
}

/// {@category Struct}
class _KS_VIDEOINFOHEADER2__Anonymous_e__Union extends Union {
  @Uint32()
  external int dwControlFlags;

  @Uint32()
  external int dwReserved1;
}

extension KS_VIDEOINFOHEADER2_Extension on KS_VIDEOINFOHEADER2 {
  int get dwControlFlags => this.Anonymous.dwControlFlags;
  set dwControlFlags(int value) => this.Anonymous.dwControlFlags = value;

  int get dwReserved1 => this.Anonymous.dwReserved1;
  set dwReserved1(int value) => this.Anonymous.dwReserved1 = value;
}

/// {@category Struct}
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

/// {@category Struct}
class LOOPEDSTREAMING_POSITION_EVENT_DATA extends Struct {
  external KSEVENTDATA KsEventData;

  @Uint64()
  external int Position;
}

/// {@category Struct}
class MEDIUM_INFO extends Struct {
  @Int32()
  external int MediaPresent;

  @Uint32()
  external int MediaType;

  @Int32()
  external int RecordInhibit;
}

/// {@category Struct}
class MF_MDL_SHARED_PAYLOAD_KEY extends Union {
  external _MF_MDL_SHARED_PAYLOAD_KEY__combined_e__Struct combined;

  external GUID GMDLHandle;
}

/// {@category Struct}
class _MF_MDL_SHARED_PAYLOAD_KEY__combined_e__Struct extends Struct {
  @Uint32()
  external int pHandle;

  @Uint32()
  external int fHandle;

  @Uint64()
  external int uPayload;
}

extension MF_MDL_SHARED_PAYLOAD_KEY_Extension on MF_MDL_SHARED_PAYLOAD_KEY {
  int get pHandle => this.combined.pHandle;
  set pHandle(int value) => this.combined.pHandle = value;

  int get fHandle => this.combined.fHandle;
  set fHandle(int value) => this.combined.fHandle = value;

  int get uPayload => this.combined.uPayload;
  set uPayload(int value) => this.combined.uPayload = value;
}

/// {@category Struct}
class NABTSFEC_BUFFER extends Struct {
  @Uint32()
  external int dataSize;

  @Uint16()
  external int groupID;

  @Uint16()
  external int Reserved;

  @Array(448)
  external Array<Uint8> data;
}

/// {@category Struct}
class NABTS_BUFFER extends Struct {
  external VBICODECFILTERING_SCANLINES ScanlinesRequested;

  @Int64()
  external int PictureNumber;

  @Array(11)
  external Array<NABTS_BUFFER_LINE> NabtsLines;
}

/// {@category Struct}
class NABTS_BUFFER_LINE extends Struct {
  @Uint8()
  external int Confidence;

  @Array(36)
  external Array<Uint8> Bytes;
}

/// {@category Struct}
class OPTIMAL_WEIGHT_TOTALS extends Struct {
  @Int64()
  external int MinTotalNominator;

  @Int64()
  external int MaxTotalNominator;

  @Int64()
  external int TotalDenominator;
}

/// {@category Struct}
class PIPE_DIMENSIONS extends Struct {
  external KS_COMPRESSION AllocatorPin;

  external KS_COMPRESSION MaxExpansionPin;

  external KS_COMPRESSION EndPin;
}

/// {@category Struct}
class PIPE_TERMINATION extends Struct {
  @Uint32()
  external int Flags;

  @Uint32()
  external int OutsideFactors;

  @Uint32()
  external int Weigth;

  external KS_FRAMING_RANGE PhysicalRange;

  external KS_FRAMING_RANGE_WEIGHTED OptimalRange;

  external KS_COMPRESSION Compression;
}

/// {@category Struct}
class SECURE_BUFFER_INFO extends Struct {
  external GUID guidBufferIdentifier;

  @Uint32()
  external int cbBufferSize;

  @Uint32()
  external int cbCaptured;

  @Array(16)
  external Array<Uint64> ullReserved;
}

/// {@category Struct}
class SOUNDDETECTOR_PATTERNHEADER extends Struct {
  @Uint32()
  external int Size;

  external GUID PatternType;
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class TRANSPORTVIDEOPARMS extends Struct {
  @Int32()
  external int OutputMode;

  @Int32()
  external int Input;
}

/// {@category Struct}
class TRANSPORT_STATE extends Struct {
  @Uint32()
  external int Mode;

  @Uint32()
  external int State;
}

/// {@category Struct}
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

/// {@category Struct}
class VBICAP_PROPERTIES_PROTECTION_S extends Struct {
  external KSIDENTIFIER Property;

  @Uint32()
  external int StreamIndex;

  @Uint32()
  external int Status;
}

/// {@category Struct}
class VBICODECFILTERING_CC_SUBSTREAMS extends Struct {
  @Uint32()
  external int SubstreamMask;
}

/// {@category Struct}
class VBICODECFILTERING_NABTS_SUBSTREAMS extends Struct {
  @Array(128)
  external Array<Uint32> SubstreamMask;
}

/// {@category Struct}
class VBICODECFILTERING_SCANLINES extends Struct {
  @Array(32)
  external Array<Uint32> DwordBitArray;
}

/// {@category Struct}
class VBICODECFILTERING_STATISTICS_CC extends Struct {
  external VBICODECFILTERING_STATISTICS_COMMON Common;
}

/// {@category Struct}
class VBICODECFILTERING_STATISTICS_CC_PIN extends Struct {
  external VBICODECFILTERING_STATISTICS_COMMON_PIN Common;
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class VBICODECFILTERING_STATISTICS_NABTS_PIN extends Struct {
  external VBICODECFILTERING_STATISTICS_COMMON_PIN Common;
}

/// {@category Struct}
class VBICODECFILTERING_STATISTICS_TELETEXT extends Struct {
  external VBICODECFILTERING_STATISTICS_COMMON Common;
}

/// {@category Struct}
class VBICODECFILTERING_STATISTICS_TELETEXT_PIN extends Struct {
  external VBICODECFILTERING_STATISTICS_COMMON_PIN Common;
}

/// {@category Struct}
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

/// {@category Struct}
class VRAM_SURFACE_INFO_PROPERTY_S extends Struct {
  external KSIDENTIFIER Property;

  external Pointer<VRAM_SURFACE_INFO> pVramSurfaceInfo;
}

/// {@category Struct}
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

/// {@category Struct}
class WST_BUFFER extends Struct {
  external VBICODECFILTERING_SCANLINES ScanlinesRequested;

  @Array(17)
  external Array<WST_BUFFER_LINE> WstLines;
}

/// {@category Struct}
class WST_BUFFER_LINE extends Struct {
  @Uint8()
  external int Confidence;

  @Array(42)
  external Array<Uint8> Bytes;
}

/// {@category Struct}
class KSAUDIO_PACKETSIZE_SIGNALPROCESSINGMODE_CONSTRAINT extends Struct {
  external GUID ProcessingMode;

  @Uint32()
  external int SamplesPerProcessingPacket;

  @Uint32()
  external int ProcessingPacketDurationInHns;
}
