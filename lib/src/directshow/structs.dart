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

class TIMECODE extends Struct {
  @Uint32()
  external int Anonymous;
  @Uint64()
  external int qw;
}

class TIMECODE_SAMPLE extends Struct {
  @Int64()
  external int qwTick;
  external TIMECODE timecode;
  @Uint32()
  external int dwUser;
  @Uint32()
  external int dwFlags;
}

class SystemTuningSpaces extends Struct {}

class TuningSpace extends Struct {}

class ChannelIDTuningSpace extends Struct {}

class ATSCTuningSpace extends Struct {}

class DigitalCableTuningSpace extends Struct {}

class AnalogRadioTuningSpace extends Struct {}

class AuxInTuningSpace extends Struct {}

class AnalogTVTuningSpace extends Struct {}

class DVBTuningSpace extends Struct {}

class DVBSTuningSpace extends Struct {}

class ComponentTypes extends Struct {}

class ComponentType extends Struct {}

class LanguageComponentType extends Struct {}

class MPEG2ComponentType extends Struct {}

class ATSCComponentType extends Struct {}

class Components extends Struct {}

class Component extends Struct {}

class MPEG2Component extends Struct {}

class AnalogAudioComponentType extends Struct {}

class TuneRequest extends Struct {}

class ChannelIDTuneRequest extends Struct {}

class ChannelTuneRequest extends Struct {}

class ATSCChannelTuneRequest extends Struct {}

class DigitalCableTuneRequest extends Struct {}

class MPEG2TuneRequest extends Struct {}

class MPEG2TuneRequestFactory extends Struct {}

class Locator extends Struct {}

class DigitalLocator extends Struct {}

class AnalogLocator extends Struct {}

class ATSCLocator extends Struct {}

class DigitalCableLocator extends Struct {}

class DVBTLocator extends Struct {}

class DVBTLocator2 extends Struct {}

class DVBSLocator extends Struct {}

class DVBCLocator extends Struct {}

class ISDBSLocator extends Struct {}

class DVBTuneRequest extends Struct {}

class CreatePropBagOnRegKey extends Struct {}

class BroadcastEventService extends Struct {}

class TunerMarshaler extends Struct {}

class PersistTuneXmlUtility extends Struct {}

class ESEventService extends Struct {}

class ESEventFactory extends Struct {}

class XDSToRat extends Struct {}

class EvalRat extends Struct {}

class ETFilter extends Struct {}

class DTFilter extends Struct {}

class XDSCodec extends Struct {}

class CXDSData extends Struct {}

class WMDRMProtectionInfo extends Struct {
  @Array(25)
  external Array<Uint16> wszKID;
  @Uint64()
  external int qwCounter;
  @Uint64()
  external int qwIndex;
  @Uint8()
  external int bOffset;
}

class BadSampleInfo extends Struct {
  @Int32()
  external int hrReason;
}

class MSVidAnalogTunerDevice extends Struct {}

class MSVidBDATunerDevice extends Struct {}

class MSVidFilePlaybackDevice extends Struct {}

class MSVidWebDVD extends Struct {}

class MSVidWebDVDAdm extends Struct {}

class MSVidVideoRenderer extends Struct {}

class MSVidVMR9 extends Struct {}

class MSVidEVR extends Struct {}

class MSVidAudioRenderer extends Struct {}

class MSVidGenericSink extends Struct {}

class MSVidStreamBufferSink extends Struct {}

class MSVidStreamBufferSource extends Struct {}

class MSVidStreamBufferV2Source extends Struct {}

class MSVidEncoder extends Struct {}

class MSVidITVCapture extends Struct {}

class MSVidITVPlayback extends Struct {}

class MSVidCCA extends Struct {}

class MSVidClosedCaptioning extends Struct {}

class MSVidClosedCaptioningSI extends Struct {}

class MSVidDataServices extends Struct {}

class MSVidXDS extends Struct {}

class MSVidAnalogCaptureToDataServices extends Struct {}

class MSVidDataServicesToStreamBufferSink extends Struct {}

class MSVidDataServicesToXDS extends Struct {}

class MSVidAnalogCaptureToXDS extends Struct {}

class MSVidCtl extends Struct {}

class MSVidInputDevices extends Struct {}

class MSVidOutputDevices extends Struct {}

class MSVidVideoRendererDevices extends Struct {}

class MSVidAudioRendererDevices extends Struct {}

class MSVidFeatures extends Struct {}

class MSVidGenericComposite extends Struct {}

class MSVidAnalogCaptureToOverlayMixer extends Struct {}

class MSVidWebDVDToVideoRenderer extends Struct {}

class MSVidWebDVDToAudioRenderer extends Struct {}

class MSVidMPEG2DecoderToClosedCaptioning extends Struct {}

class MSVidAnalogCaptureToStreamBufferSink extends Struct {}

class MSVidDigitalCaptureToStreamBufferSink extends Struct {}

class MSVidITVToStreamBufferSink extends Struct {}

class MSVidCCAToStreamBufferSink extends Struct {}

class MSVidEncoderToStreamBufferSink extends Struct {}

class MSVidFilePlaybackToVideoRenderer extends Struct {}

class MSVidFilePlaybackToAudioRenderer extends Struct {}

class MSVidAnalogTVToEncoder extends Struct {}

class MSVidStreamBufferSourceToVideoRenderer extends Struct {}

class MSVidAnalogCaptureToCCA extends Struct {}

class MSVidDigitalCaptureToCCA extends Struct {}

class MSVidDigitalCaptureToITV extends Struct {}

class MSVidSBESourceToITV extends Struct {}

class MSVidSBESourceToCC extends Struct {}

class MSVidSBESourceToGenericSink extends Struct {}

class MSVidCCToVMR extends Struct {}

class MSVidCCToAR extends Struct {}

class MSEventBinder extends Struct {}

class MSVidStreamBufferRecordingControl extends Struct {}

class MSVidRect extends Struct {}

class MSVidDevice extends Struct {}

class MSVidDevice2 extends Struct {}

class MSVidInputDevice extends Struct {}

class MSVidVideoInputDevice extends Struct {}

class MSVidVideoPlaybackDevice extends Struct {}

class MSVidFeature extends Struct {}

class MSVidOutput extends Struct {}

class STREAMBUFFER_ATTRIBUTE extends Struct {
  external Pointer<Utf16> pszName;
  @Uint32()
  external int StreamBufferAttributeType;
  external Pointer<Uint8> pbAttribute;
  @Uint16()
  external int cbLength;
}

class SBE_PIN_DATA extends Struct {
  @Uint64()
  external int cDataBytes;
  @Uint64()
  external int cSamplesProcessed;
  @Uint64()
  external int cDiscontinuities;
  @Uint64()
  external int cSyncPoints;
  @Uint64()
  external int cTimestamps;
}

class SBE2_STREAM_DESC extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int StreamId;
  @Uint32()
  external int Default;
  @Uint32()
  external int Reserved;
}

class DVR_STREAM_DESC extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int StreamId;
  @Int32()
  external int Default;
  @Int32()
  external int Creation;
  @Uint32()
  external int Reserved;
  external GUID guidSubMediaType;
  external GUID guidFormatType;
  external AM_MEDIA_TYPE MediaType;
}

class SectionList extends Struct {}

class Mpeg2Stream extends Struct {}

class Mpeg2Data extends Struct {}

class PID_BITS_MIDL extends Struct {
  @Uint16()
  external int Bits;
}

class MPEG_HEADER_BITS_MIDL extends Struct {
  @Uint16()
  external int Bits;
}

class MPEG_HEADER_VERSION_BITS_MIDL extends Struct {
  @Uint8()
  external int Bits;
}

class TID_EXTENSION extends Struct {
  @Uint16()
  external int wTidExt;
  @Uint16()
  external int wCount;
}

class SECTION extends Struct {
  @Uint8()
  external int TableId;
  @Uint32()
  external int Header;
  @Array(1)
  external Array<Uint8> SectionData;
}

class LONG_SECTION extends Struct {
  @Uint8()
  external int TableId;
  @Uint32()
  external int Header;
  @Uint16()
  external int TableIdExtension;
  @Uint32()
  external int Version;
  @Uint8()
  external int SectionNumber;
  @Uint8()
  external int LastSectionNumber;
  @Array(1)
  external Array<Uint8> RemainingData;
}

class DSMCC_SECTION extends Struct {
  @Uint8()
  external int TableId;
  @Uint32()
  external int Header;
  @Uint16()
  external int TableIdExtension;
  @Uint32()
  external int Version;
  @Uint8()
  external int SectionNumber;
  @Uint8()
  external int LastSectionNumber;
  @Uint8()
  external int ProtocolDiscriminator;
  @Uint8()
  external int DsmccType;
  @Uint16()
  external int MessageId;
  @Uint32()
  external int TransactionId;
  @Uint8()
  external int Reserved;
  @Uint8()
  external int AdaptationLength;
  @Uint16()
  external int MessageLength;
  @Array(1)
  external Array<Uint8> RemainingData;
}

class MPEG_RQST_PACKET extends Struct {
  @Uint32()
  external int dwLength;
  external Pointer<SECTION> pSection;
}

class MPEG_PACKET_LIST extends Struct {
  @Uint16()
  external int wPacketCount;
  @Array(1)
  external Array<Pointer<MPEG_RQST_PACKET>> PacketList;
}

class DSMCC_FILTER_OPTIONS extends Struct {
  @Int32()
  external int fSpecifyProtocol;
  @Uint8()
  external int Protocol;
  @Int32()
  external int fSpecifyType;
  @Uint8()
  external int Type;
  @Int32()
  external int fSpecifyMessageId;
  @Uint16()
  external int MessageId;
  @Int32()
  external int fSpecifyTransactionId;
  @Int32()
  external int fUseTrxIdMessageIdMask;
  @Uint32()
  external int TransactionId;
  @Int32()
  external int fSpecifyModuleVersion;
  @Uint8()
  external int ModuleVersion;
  @Int32()
  external int fSpecifyBlockNumber;
  @Uint16()
  external int BlockNumber;
  @Int32()
  external int fGetModuleCall;
  @Uint16()
  external int NumberOfBlocksInModule;
}

class ATSC_FILTER_OPTIONS extends Struct {
  @Int32()
  external int fSpecifyEtmId;
  @Uint32()
  external int EtmId;
}

class DVB_EIT_FILTER_OPTIONS extends Struct {
  @Int32()
  external int fSpecifySegment;
  @Uint8()
  external int bSegment;
}

class MPEG2_FILTER extends Struct {
  @Uint8()
  external int bVersionNumber;
  @Uint16()
  external int wFilterSize;
  @Int32()
  external int fUseRawFilteringBits;
  @Array(16)
  external Array<Uint8> Filter;
  @Array(16)
  external Array<Uint8> Mask;
  @Int32()
  external int fSpecifyTableIdExtension;
  @Uint16()
  external int TableIdExtension;
  @Int32()
  external int fSpecifyVersion;
  @Uint8()
  external int Version;
  @Int32()
  external int fSpecifySectionNumber;
  @Uint8()
  external int SectionNumber;
  @Int32()
  external int fSpecifyCurrentNext;
  @Int32()
  external int fNext;
  @Int32()
  external int fSpecifyDsmccOptions;
  external DSMCC_FILTER_OPTIONS Dsmcc;
  @Int32()
  external int fSpecifyAtscOptions;
  external ATSC_FILTER_OPTIONS Atsc;
}

class MPEG2_FILTER2 extends Struct {
  @Uint32()
  external int Anonymous;
  @Int32()
  external int fSpecifyDvbEitOptions;
  external DVB_EIT_FILTER_OPTIONS DvbEit;
}

class MPEG_STREAM_BUFFER extends Struct {
  @Int32()
  external int hr;
  @Uint32()
  external int dwDataBufferSize;
  @Uint32()
  external int dwSizeOfDataRead;
  external Pointer<Uint8> pDataBuffer;
}

class MPEG_TIME extends Struct {
  @Uint8()
  external int Hours;
  @Uint8()
  external int Minutes;
  @Uint8()
  external int Seconds;
}

class MPEG_DATE extends Struct {
  @Uint8()
  external int Date;
  @Uint8()
  external int Month;
  @Uint16()
  external int Year;
}

class MPEG_DATE_AND_TIME extends Struct {
  external MPEG_DATE D;
  external MPEG_TIME T;
}

class MPEG_BCS_DEMUX extends Struct {
  @Uint32()
  external int AVMGraphId;
}

class MPEG_WINSOCK extends Struct {
  @Uint32()
  external int AVMGraphId;
}

class MPEG_CONTEXT extends Struct {
  @Uint32()
  external int Type;
  @Uint32()
  external int U;
}

class MPEG_SERVICE_REQUEST extends Struct {
  @Uint32()
  external int Type;
  external MPEG_CONTEXT Context;
  @Uint16()
  external int Pid;
  @Uint8()
  external int TableId;
  external MPEG2_FILTER Filter;
  @Uint32()
  external int Flags;
}

class MPEG_SERVICE_RESPONSE extends Struct {
  @Uint32()
  external int IPAddress;
  @Uint16()
  external int Port;
}

class DSMCC_ELEMENT extends Struct {
  @Uint16()
  external int pid;
  @Uint8()
  external int bComponentTag;
  @Uint32()
  external int dwCarouselId;
  @Uint32()
  external int dwTransactionId;
  external Pointer<DSMCC_ELEMENT> pNext;
}

class MPE_ELEMENT extends Struct {
  @Uint16()
  external int pid;
  @Uint8()
  external int bComponentTag;
  external Pointer<MPE_ELEMENT> pNext;
}

class MPEG_STREAM_FILTER extends Struct {
  @Uint16()
  external int wPidValue;
  @Uint32()
  external int dwFilterSize;
  @Int32()
  external int fCrcEnabled;
  @Array(16)
  external Array<Uint8> rgchFilter;
  @Array(16)
  external Array<Uint8> rgchMask;
}

class Mpeg2TableSampleHdr extends Struct {
  @Uint8()
  external int SectionCount;
  @Array(3)
  external Array<Uint8> Reserved;
  @Array(1)
  external Array<Int32> SectionOffsets;
}

class Mpeg2DataLib extends Struct {}

class ProgramElement extends Struct {
  @Uint16()
  external int wProgramNumber;
  @Uint16()
  external int wProgramMapPID;
}

class UDCR_TAG extends Struct {
  @Uint8()
  external int bVersion;
  @Array(25)
  external Array<Uint8> KID;
  @Uint64()
  external int ullBaseCounter;
  @Uint64()
  external int ullBaseCounterRange;
  @Int32()
  external int fScrambled;
  @Uint8()
  external int bStreamMark;
  @Uint32()
  external int dwReserved1;
  @Uint32()
  external int dwReserved2;
}

class PIC_SEQ_SAMPLE extends Struct {
  @Uint32()
  external int _bitfield;
}

class SAMPLE_SEQ_OFFSET extends Struct {
  @Uint32()
  external int _bitfield;
}

class VA_OPTIONAL_VIDEO_PROPERTIES extends Struct {
  @Uint16()
  external int dwPictureHeight;
  @Uint16()
  external int dwPictureWidth;
  @Uint16()
  external int dwAspectRatioX;
  @Uint16()
  external int dwAspectRatioY;
  @Uint32()
  external int VAVideoFormat;
  @Uint32()
  external int VAColorPrimaries;
  @Uint32()
  external int VATransferCharacteristics;
  @Uint32()
  external int VAMatrixCoefficients;
}

class TRANSPORT_PROPERTIES extends Struct {
  @Uint32()
  external int PID;
  @Int64()
  external int PCR;
  @Uint32()
  external int Fields;
}

class PBDA_TAG_ATTRIBUTE extends Struct {
  external GUID TableUUId;
  @Uint8()
  external int TableId;
  @Uint16()
  external int VersionNo;
  @Uint32()
  external int TableDataSize;
  @Array(1)
  external Array<Uint8> TableData;
}

class CAPTURE_STREAMTIME extends Struct {
  @Int64()
  external int StreamTime;
}

class DSHOW_STREAM_DESC extends Struct {
  @Uint32()
  external int VersionNo;
  @Uint32()
  external int StreamId;
  @Int32()
  external int Default;
  @Int32()
  external int Creation;
  @Uint32()
  external int Reserved;
}

class SAMPLE_LIVE_STREAM_TIME extends Struct {
  @Uint64()
  external int qwStreamTime;
  @Uint64()
  external int qwLiveTime;
}

class TIFLoad extends Struct {}

class KSP_BDA_NODE_PIN extends Struct {
  external KSIDENTIFIER Property;
  @Uint32()
  external int ulNodeType;
  @Uint32()
  external int ulInputPinId;
  @Uint32()
  external int ulOutputPinId;
}

class KSM_BDA_PIN extends Struct {
  external KSIDENTIFIER Method;
  @Uint32()
  external int Anonymous;
  @Uint32()
  external int Reserved;
}

class KSM_BDA_PIN_PAIR extends Struct {
  external KSIDENTIFIER Method;
  @Uint32()
  external int Anonymous1;
  @Uint32()
  external int Anonymous2;
}

class KSP_NODE_ESPID extends Struct {
  external KSP_NODE Property;
  @Uint32()
  external int EsPid;
}

class KSM_BDA_DEBUG_LEVEL extends Struct {
  external KSIDENTIFIER Method;
  @Uint8()
  external int ucDebugLevel;
  @Uint32()
  external int ulDebugStringSize;
  @Array(1)
  external Array<Uint8> argbDebugString;
}

class BDA_DEBUG_DATA extends Struct {
  @Int32()
  external int lResult;
  external GUID uuidDebugDataType;
  @Uint32()
  external int ulDataSize;
  @Array(1)
  external Array<Uint8> argbDebugData;
}

class BDA_EVENT_DATA extends Struct {
  @Int32()
  external int lResult;
  @Uint32()
  external int ulEventID;
  external GUID uuidEventType;
  @Uint32()
  external int ulEventDataLength;
  @Array(1)
  external Array<Uint8> argbEventData;
}

class KSM_BDA_EVENT_COMPLETE extends Struct {
  external KSIDENTIFIER Method;
  @Uint32()
  external int ulEventID;
  @Uint32()
  external int ulEventResult;
}

class KSM_BDA_DRM_SETDRM extends Struct {
  external KSM_NODE NodeMethod;
  external GUID NewDRMuuid;
}

class KSM_BDA_BUFFER extends Struct {
  external KSM_NODE NodeMethod;
  @Uint32()
  external int ulBufferSize;
  @Array(1)
  external Array<Uint8> argbBuffer;
}

class KSM_BDA_WMDRM_LICENSE extends Struct {
  external KSM_NODE NodeMethod;
  external GUID uuidKeyID;
}

class KSM_BDA_WMDRM_RENEWLICENSE extends Struct {
  external KSM_NODE NodeMethod;
  @Uint32()
  external int ulXMRLicenseLength;
  @Uint32()
  external int ulEntitlementTokenLength;
  @Array(1)
  external Array<Uint8> argbDataBuffer;
}

class KSM_BDA_WMDRMTUNER_PURCHASEENTITLEMENT extends Struct {
  external KSM_NODE NodeMethod;
  @Uint32()
  external int ulDialogRequest;
  @Array(12)
  external Array<Int8> cLanguage;
  @Uint32()
  external int ulPurchaseTokenLength;
  @Array(1)
  external Array<Uint8> argbDataBuffer;
}

class KSM_BDA_WMDRMTUNER_SETPIDPROTECTION extends Struct {
  external KSM_NODE NodeMethod;
  @Uint32()
  external int ulPID;
  external GUID uuidKeyID;
}

class KSM_BDA_WMDRMTUNER_GETPIDPROTECTION extends Struct {
  external KSM_NODE NodeMethod;
  @Uint32()
  external int ulPID;
}

class KSM_BDA_WMDRMTUNER_SYNCVALUE extends Struct {
  external KSM_NODE NodeMethod;
  @Uint32()
  external int ulSyncValue;
}

class KSM_BDA_TUNER_TUNEREQUEST extends Struct {
  external KSIDENTIFIER Method;
  @Uint32()
  external int ulTuneLength;
  @Array(1)
  external Array<Uint8> argbTuneData;
}

class KSM_BDA_GPNV_GETVALUE extends Struct {
  external KSIDENTIFIER Method;
  @Uint32()
  external int ulNameLength;
  @Array(12)
  external Array<Int8> cLanguage;
  @Array(1)
  external Array<Uint8> argbData;
}

class KSM_BDA_GPNV_SETVALUE extends Struct {
  external KSIDENTIFIER Method;
  @Uint32()
  external int ulDialogRequest;
  @Array(12)
  external Array<Int8> cLanguage;
  @Uint32()
  external int ulNameLength;
  @Uint32()
  external int ulValueLength;
  @Array(1)
  external Array<Uint8> argbName;
}

class KSM_BDA_GPNV_NAMEINDEX extends Struct {
  external KSIDENTIFIER Method;
  @Uint32()
  external int ulValueNameIndex;
}

class KSM_BDA_SCAN_CAPABILTIES extends Struct {
  external KSIDENTIFIER Method;
  external GUID uuidBroadcastStandard;
}

class KSM_BDA_SCAN_FILTER extends Struct {
  external KSIDENTIFIER Method;
  @Uint32()
  external int ulScanModulationTypeSize;
  @Uint64()
  external int AnalogVideoStandards;
  @Array(1)
  external Array<Uint8> argbScanModulationTypes;
}

class KSM_BDA_SCAN_START extends Struct {
  external KSIDENTIFIER Method;
  @Uint32()
  external int LowerFrequency;
  @Uint32()
  external int HigherFrequency;
}

class KSM_BDA_GDDS_TUNEXMLFROMIDX extends Struct {
  external KSIDENTIFIER Method;
  @Uint64()
  external int ulIdx;
}

class KSM_BDA_GDDS_SERVICEFROMTUNEXML extends Struct {
  external KSIDENTIFIER Method;
  @Uint32()
  external int ulTuneXmlLength;
  @Array(1)
  external Array<Uint8> argbTuneXml;
}

class KSM_BDA_USERACTIVITY_USEREASON extends Struct {
  external KSIDENTIFIER Method;
  @Uint32()
  external int ulUseReason;
}

class KSM_BDA_CAS_ENTITLEMENTTOKEN extends Struct {
  external KSM_NODE NodeMethod;
  @Uint32()
  external int ulDialogRequest;
  @Array(12)
  external Array<Int8> cLanguage;
  @Uint32()
  external int ulRequestType;
  @Uint32()
  external int ulEntitlementTokenLen;
  @Array(1)
  external Array<Uint8> argbEntitlementToken;
}

class KSM_BDA_CAS_CAPTURETOKEN extends Struct {
  external KSM_NODE NodeMethod;
  @Uint32()
  external int ulTokenLength;
  @Array(1)
  external Array<Uint8> argbToken;
}

class KSM_BDA_CAS_OPENBROADCASTMMI extends Struct {
  external KSM_NODE NodeMethod;
  @Uint32()
  external int ulDialogRequest;
  @Array(12)
  external Array<Int8> cLanguage;
  @Uint32()
  external int ulEventId;
}

class KSM_BDA_CAS_CLOSEMMIDIALOG extends Struct {
  external KSM_NODE NodeMethod;
  @Uint32()
  external int ulDialogRequest;
  @Array(12)
  external Array<Int8> cLanguage;
  @Uint32()
  external int ulDialogNumber;
  @Uint32()
  external int ulReason;
}

class KSM_BDA_ISDBCAS_REQUEST extends Struct {
  external KSM_NODE NodeMethod;
  @Uint32()
  external int ulRequestID;
  @Uint32()
  external int ulIsdbCommandSize;
  @Array(1)
  external Array<Uint8> argbIsdbCommandData;
}

class KSM_BDA_TS_SELECTOR_SETTSID extends Struct {
  external KSM_NODE NodeMethod;
  @Uint16()
  external int usTSID;
}

class KS_DATARANGE_BDA_ANTENNA extends Struct {
  external KSDATAFORMAT DataRange;
}

class BDA_TRANSPORT_INFO extends Struct {
  @Uint32()
  external int ulcbPhyiscalPacket;
  @Uint32()
  external int ulcbPhyiscalFrame;
  @Uint32()
  external int ulcbPhyiscalFrameAlignment;
  @Int64()
  external int AvgTimePerFrame;
}

class KS_DATARANGE_BDA_TRANSPORT extends Struct {
  external KSDATAFORMAT DataRange;
  external BDA_TRANSPORT_INFO BdaTransportInfo;
}

class EVENTID_TuningChanging extends Struct {}

class EVENTID_TuningChanged extends Struct {}

class EVENTID_CandidatePostTuneData extends Struct {}

class EVENTID_CADenialCountChanged extends Struct {}

class EVENTID_SignalStatusChanged extends Struct {}

class EVENTID_NewSignalAcquired extends Struct {}

class EVENTID_EASMessageReceived extends Struct {}

class EVENTID_PSITable extends Struct {}

class EVENTID_ServiceTerminated extends Struct {}

class EVENTID_CardStatusChanged extends Struct {}

class EVENTID_DRMParingStatusChanged extends Struct {}

class EVENTID_DRMParingStepComplete extends Struct {}

class EVENTID_MMIMessage extends Struct {}

class EVENTID_EntitlementChanged extends Struct {}

class EVENTID_STBChannelNumber extends Struct {}

class EVENTID_BDAEventingServicePendingEvent extends Struct {}

class EVENTID_BDAConditionalAccessTAG extends Struct {}

class EVENTTYPE_CASDescrambleFailureEvent extends Struct {}

class EVENTID_CASFailureSpanningEvent extends Struct {}

class EVENTID_ChannelChangeSpanningEvent extends Struct {}

class ChannelChangeInfo extends Struct {
  @Uint32()
  external int state;
  @Uint64()
  external int TimeStamp;
}

class EVENTID_ChannelTypeSpanningEvent extends Struct {}

class ChannelTypeInfo extends Struct {
  @Uint32()
  external int channelType;
  @Uint64()
  external int timeStamp;
}

class ChannelInfo extends Struct {
  @Int32()
  external int lFrequency;
  @Uint32()
  external int Anonymous;
}

class EVENTID_ChannelInfoSpanningEvent extends Struct {}

class EVENTID_RRTSpanningEvent extends Struct {}

class SpanningEventDescriptor extends Struct {
  @Uint16()
  external int wDataLen;
  @Uint16()
  external int wProgNumber;
  @Uint16()
  external int wSID;
  @Array(1)
  external Array<Uint8> bDescriptor;
}

class EVENTID_CSDescriptorSpanningEvent extends Struct {}

class EVENTID_CtxADescriptorSpanningEvent extends Struct {}

class DVBScramblingControlSpanningEvent extends Struct {
  @Uint32()
  external int ulPID;
  @Int32()
  external int fScrambled;
}

class EVENTID_DVBScramblingControlSpanningEvent extends Struct {}

class EVENTID_SignalAndServiceStatusSpanningEvent extends Struct {}

class SpanningEventEmmMessage extends Struct {
  @Uint8()
  external int bCAbroadcasterGroupId;
  @Uint8()
  external int bMessageControl;
  @Uint16()
  external int wServiceId;
  @Uint16()
  external int wTableIdExtension;
  @Uint8()
  external int bDeletionStatus;
  @Uint8()
  external int bDisplayingDuration1;
  @Uint8()
  external int bDisplayingDuration2;
  @Uint8()
  external int bDisplayingDuration3;
  @Uint8()
  external int bDisplayingCycle;
  @Uint8()
  external int bFormatVersion;
  @Uint8()
  external int bDisplayPosition;
  @Uint16()
  external int wMessageLength;
  @Array(1)
  external Array<Uint16> szMessageArea;
}

class EVENTID_EmmMessageSpanningEvent extends Struct {}

class EVENTID_AudioTypeSpanningEvent extends Struct {}

class EVENTID_StreamTypeSpanningEvent extends Struct {}

class EVENTID_ARIBcontentSpanningEvent extends Struct {}

class EVENTID_LanguageSpanningEvent extends Struct {}

class LanguageInfo extends Struct {
  @Uint16()
  external int LangID;
  @Int32()
  external int lISOLangCode;
}

class EVENTID_DualMonoSpanningEvent extends Struct {}

class DualMonoInfo extends Struct {
  @Uint16()
  external int LangID1;
  @Uint16()
  external int LangID2;
  @Int32()
  external int lISOLangCode1;
  @Int32()
  external int lISOLangCode2;
}

class EVENTID_PIDListSpanningEvent extends Struct {}

class PIDListSpanningEvent extends Struct {
  @Uint16()
  external int wPIDCount;
  @Array(1)
  external Array<Uint32> pulPIDs;
}

class EVENTID_AudioDescriptorSpanningEvent extends Struct {}

class EVENTID_SubtitleSpanningEvent extends Struct {}

class EVENTID_TeletextSpanningEvent extends Struct {}

class EVENTID_StreamIDSpanningEvent extends Struct {}

class EVENTID_PBDAParentalControlEvent extends Struct {}

class RATING_ATTRIBUTE extends Struct {
  @Uint32()
  external int rating_attribute_id;
  @Uint32()
  external int rating_attribute_value;
}

class RATING_SYSTEM extends Struct {
  external GUID rating_system_id;
  @Uint8()
  external int _bitfield;
  @Array(3)
  external Array<Uint8> country_code;
  @Uint32()
  external int rating_attribute_count;
  external Pointer<RATING_ATTRIBUTE> lpratingattrib;
}

class RATING_INFO extends Struct {
  @Uint32()
  external int rating_system_count;
  external Pointer<RATING_SYSTEM> lpratingsystem;
}

class PBDAParentalControl extends Struct {
  @Uint32()
  external int rating_system_count;
  external Pointer<RATING_SYSTEM> rating_systems;
}

class EVENTID_TuneFailureEvent extends Struct {}

class EVENTID_TuneFailureSpanningEvent extends Struct {}

class EVENTID_DvbParentalRatingDescriptor extends Struct {}

class DvbParentalRatingParam extends Struct {
  @Array(4)
  external Array<Int8> szCountryCode;
  @Uint8()
  external int bRating;
}

class DvbParentalRatingDescriptor extends Struct {
  @Uint32()
  external int ulNumParams;
  @Array(1)
  external Array<DvbParentalRatingParam> pParams;
}

class EVENTID_DFNWithNoActualAVData extends Struct {}

class KSDATAFORMAT_TYPE_BDA_ANTENNA extends Struct {}

class KSDATAFORMAT_SUBTYPE_BDA_MPEG2_TRANSPORT extends Struct {}

class KSDATAFORMAT_SPECIFIER_BDA_TRANSPORT extends Struct {}

class KSDATAFORMAT_TYPE_BDA_IF_SIGNAL extends Struct {}

class KSDATAFORMAT_TYPE_MPEG2_SECTIONS extends Struct {}

class KSDATAFORMAT_SUBTYPE_ATSC_SI extends Struct {}

class KSDATAFORMAT_SUBTYPE_DVB_SI extends Struct {}

class KSDATAFORMAT_SUBTYPE_BDA_OPENCABLE_PSIP extends Struct {}

class KSDATAFORMAT_SUBTYPE_BDA_OPENCABLE_OOB_PSIP extends Struct {}

class KSDATAFORMAT_SUBTYPE_ISDB_SI extends Struct {}

class KSDATAFORMAT_SUBTYPE_PBDA_TRANSPORT_RAW extends Struct {}

class PINNAME_BDA_TRANSPORT extends Struct {}

class PINNAME_BDA_ANALOG_VIDEO extends Struct {}

class PINNAME_BDA_ANALOG_AUDIO extends Struct {}

class PINNAME_BDA_FM_RADIO extends Struct {}

class PINNAME_BDA_IF_PIN extends Struct {}

class PINNAME_BDA_OPENCABLE_PSIP_PIN extends Struct {}

class KSPROPSETID_BdaEthernetFilter extends Struct {}

class KSPROPSETID_BdaIPv4Filter extends Struct {}

class KSPROPSETID_BdaIPv6Filter extends Struct {}

class KSPROPSETID_BdaSignalStats extends Struct {}

class KSMETHODSETID_BdaChangeSync extends Struct {}

class KSMETHODSETID_BdaDeviceConfiguration extends Struct {}

class KSPROPSETID_BdaTopology extends Struct {}

class KSPROPSETID_BdaPinControl extends Struct {}

class KSEVENTSETID_BdaPinEvent extends Struct {}

class KSPROPSETID_BdaVoidTransform extends Struct {}

class KSPROPSETID_BdaNullTransform extends Struct {}

class KSPROPSETID_BdaFrequencyFilter extends Struct {}

class KSPROPERTY_BDA_RF_TUNER_CAPS_S extends Struct {
  external KSP_NODE Property;
  @Uint32()
  external int Mode;
  @Uint32()
  external int AnalogStandardsSupported;
  @Uint32()
  external int DigitalStandardsSupported;
  @Uint32()
  external int MinFrequency;
  @Uint32()
  external int MaxFrequency;
  @Uint32()
  external int SettlingTime;
  @Uint32()
  external int AnalogSensingRange;
  @Uint32()
  external int DigitalSensingRange;
  @Uint32()
  external int MilliSecondsPerMHz;
}

class KSPROPERTY_BDA_RF_TUNER_SCAN_STATUS_S extends Struct {
  external KSP_NODE Property;
  @Uint32()
  external int CurrentFrequency;
  @Uint32()
  external int FrequencyRangeMin;
  @Uint32()
  external int FrequencyRangeMax;
  @Uint32()
  external int MilliSecondsLeft;
}

class KSPROPERTY_BDA_RF_TUNER_STANDARD_S extends Struct {
  external KSP_NODE Property;
  @Uint32()
  external int SignalType;
  @Uint32()
  external int SignalStandard;
}

class KSPROPERTY_BDA_RF_TUNER_STANDARD_MODE_S extends Struct {
  external KSP_NODE Property;
  @Int32()
  external int AutoDetect;
}

class KSEVENTSETID_BdaTunerEvent extends Struct {}

class KSEVENTDATA_BDA_RF_TUNER_SCAN_S extends Struct {
  external KSEVENTDATA EventData;
  @Uint32()
  external int StartFrequency;
  @Uint32()
  external int EndFrequency;
  @Uint32()
  external int LockRequested;
}

class KSPROPSETID_BdaLNBInfo extends Struct {}

class KSPROPSETID_BdaDiseqCommand extends Struct {}

class KSEVENTSETID_BdaDiseqCEvent extends Struct {}

class KSPROPSETID_BdaDigitalDemodulator extends Struct {}

class KSPROPSETID_BdaAutodemodulate extends Struct {}

class KSPROPSETID_BdaTableSection extends Struct {}

class KSPROPSETID_BdaPIDFilter extends Struct {}

class KSPROPSETID_BdaCA extends Struct {}

class KSEVENTSETID_BdaCAEvent extends Struct {}

class KSMETHODSETID_BdaDrmService extends Struct {}

class KSMETHODSETID_BdaWmdrmSession extends Struct {}

class KSMETHODSETID_BdaWmdrmTuner extends Struct {}

class KSMETHODSETID_BdaEventing extends Struct {}

class KSEVENTSETID_BdaEvent extends Struct {}

class KSMETHODSETID_BdaDebug extends Struct {}

class KSMETHODSETID_BdaTuner extends Struct {}

class KSMETHODSETID_BdaNameValueA extends Struct {}

class KSMETHODSETID_BdaNameValue extends Struct {}

class KSMETHODSETID_BdaMux extends Struct {}

class KSMETHODSETID_BdaScanning extends Struct {}

class KSMETHODSETID_BdaGuideDataDeliveryService extends Struct {}

class KSMETHODSETID_BdaConditionalAccessService extends Struct {}

class KSMETHODSETID_BdaIsdbConditionalAccess extends Struct {}

class KSMETHODSETID_BdaTSSelector extends Struct {}

class KSMETHODSETID_BdaUserActivity extends Struct {}

class KSCATEGORY_BDA_RECEIVER_COMPONENT extends Struct {}

class KSCATEGORY_BDA_NETWORK_TUNER extends Struct {}

class KSCATEGORY_BDA_NETWORK_EPG extends Struct {}

class KSCATEGORY_BDA_IP_SINK extends Struct {}

class KSCATEGORY_BDA_NETWORK_PROVIDER extends Struct {}

class KSCATEGORY_BDA_TRANSPORT_INFORMATION extends Struct {}

class KSNODE_BDA_RF_TUNER extends Struct {}

class KSNODE_BDA_ANALOG_DEMODULATOR extends Struct {}

class KSNODE_BDA_QAM_DEMODULATOR extends Struct {}

class KSNODE_BDA_QPSK_DEMODULATOR extends Struct {}

class KSNODE_BDA_8VSB_DEMODULATOR extends Struct {}

class KSNODE_BDA_COFDM_DEMODULATOR extends Struct {}

class KSNODE_BDA_8PSK_DEMODULATOR extends Struct {}

class KSNODE_BDA_ISDB_T_DEMODULATOR extends Struct {}

class KSNODE_BDA_ISDB_S_DEMODULATOR extends Struct {}

class KSNODE_BDA_OPENCABLE_POD extends Struct {}

class KSNODE_BDA_COMMON_CA_POD extends Struct {}

class KSNODE_BDA_PID_FILTER extends Struct {}

class KSNODE_BDA_IP_SINK extends Struct {}

class KSNODE_BDA_VIDEO_ENCODER extends Struct {}

class KSNODE_BDA_PBDA_CAS extends Struct {}

class KSNODE_BDA_PBDA_ISDBCAS extends Struct {}

class KSNODE_BDA_PBDA_TUNER extends Struct {}

class KSNODE_BDA_PBDA_MUX extends Struct {}

class KSNODE_BDA_PBDA_DRM extends Struct {}

class KSNODE_BDA_DRI_DRM extends Struct {}

class KSNODE_BDA_TS_SELECTOR extends Struct {}

class PINNAME_IPSINK_INPUT extends Struct {}

class KSDATAFORMAT_TYPE_BDA_IP extends Struct {}

class KSDATAFORMAT_SUBTYPE_BDA_IP extends Struct {}

class KSDATAFORMAT_SPECIFIER_BDA_IP extends Struct {}

class KSDATAFORMAT_TYPE_BDA_IP_CONTROL extends Struct {}

class KSDATAFORMAT_SUBTYPE_BDA_IP_CONTROL extends Struct {}

class PINNAME_MPE extends Struct {}

class KSDATAFORMAT_TYPE_MPE extends Struct {}

class DIGITAL_CABLE_NETWORK_TYPE extends Struct {}

class ANALOG_TV_NETWORK_TYPE extends Struct {}

class ANALOG_AUXIN_NETWORK_TYPE extends Struct {}

class ANALOG_FM_NETWORK_TYPE extends Struct {}

class ISDB_TERRESTRIAL_TV_NETWORK_TYPE extends Struct {}

class ISDB_T_NETWORK_TYPE extends Struct {}

class ISDB_SATELLITE_TV_NETWORK_TYPE extends Struct {}

class ISDB_S_NETWORK_TYPE extends Struct {}

class ISDB_CABLE_TV_NETWORK_TYPE extends Struct {}

class DIRECT_TV_SATELLITE_TV_NETWORK_TYPE extends Struct {}

class ECHOSTAR_SATELLITE_TV_NETWORK_TYPE extends Struct {}

class ATSC_TERRESTRIAL_TV_NETWORK_TYPE extends Struct {}

class DVB_TERRESTRIAL_TV_NETWORK_TYPE extends Struct {}

class BSKYB_TERRESTRIAL_TV_NETWORK_TYPE extends Struct {}

class DVB_SATELLITE_TV_NETWORK_TYPE extends Struct {}

class DVB_CABLE_TV_NETWORK_TYPE extends Struct {}

class BDA_DEBUG_DATA_AVAILABLE extends Struct {}

class BDA_DEBUG_DATA_TYPE_STRING extends Struct {}

class EVENTID_BDA_IsdbCASResponse extends Struct {}

class EVENTID_BDA_CASRequestTuner extends Struct {}

class EVENTID_BDA_CASReleaseTuner extends Struct {}

class EVENTID_BDA_CASOpenMMI extends Struct {}

class EVENTID_BDA_CASCloseMMI extends Struct {}

class EVENTID_BDA_CASBroadcastMMI extends Struct {}

class EVENTID_BDA_TunerSignalLock extends Struct {}

class EVENTID_BDA_TunerNoSignal extends Struct {}

class EVENTID_BDA_GPNVValueUpdate extends Struct {}

class EVENTID_BDA_UpdateDrmStatus extends Struct {}

class EVENTID_BDA_UpdateScanState extends Struct {}

class EVENTID_BDA_GuideDataAvailable extends Struct {}

class EVENTID_BDA_GuideServiceInformationUpdated extends Struct {}

class EVENTID_BDA_GuideDataError extends Struct {}

class EVENTID_BDA_DiseqCResponseAvailable extends Struct {}

class EVENTID_BDA_LbigsOpenConnection extends Struct {}

class EVENTID_BDA_LbigsSendData extends Struct {}

class EVENTID_BDA_LbigsCloseConnectionHandle extends Struct {}

class EVENTID_BDA_EncoderSignalLock extends Struct {}

class EVENTID_BDA_FdcStatus extends Struct {}

class EVENTID_BDA_FdcTableSection extends Struct {}

class EVENTID_BDA_TransprtStreamSelectorInfo extends Struct {}

class EVENTID_BDA_RatingPinReset extends Struct {}

class PBDA_ALWAYS_TUNE_IN_MUX extends Struct {}

class PID_BITS extends Struct {
  @Uint16()
  external int _bitfield;
}

class MPEG_HEADER_BITS extends Struct {
  @Uint16()
  external int _bitfield;
}

class MPEG_HEADER_VERSION_BITS extends Struct {
  @Uint8()
  external int _bitfield;
}

class MPEG1WAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
  @Uint16()
  external int fwHeadLayer;
  @Uint32()
  external int dwHeadBitrate;
  @Uint16()
  external int fwHeadMode;
  @Uint16()
  external int fwHeadModeExt;
  @Uint16()
  external int wHeadEmphasis;
  @Uint16()
  external int fwHeadFlags;
  @Uint32()
  external int dwPTSLow;
  @Uint32()
  external int dwPTSHigh;
}

class MPEGLAYER3WAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
  @Uint16()
  external int wID;
  @Uint32()
  external int fdwFlags;
  @Uint16()
  external int nBlockSize;
  @Uint16()
  external int nFramesPerBlock;
  @Uint16()
  external int nCodecDelay;
}

class HEAACWAVEINFO extends Struct {
  external WAVEFORMATEX wfx;
  @Uint16()
  external int wPayloadType;
  @Uint16()
  external int wAudioProfileLevelIndication;
  @Uint16()
  external int wStructType;
  @Uint16()
  external int wReserved1;
  @Uint32()
  external int dwReserved2;
}

class HEAACWAVEFORMAT extends Struct {
  external HEAACWAVEINFO wfInfo;
  @Array(1)
  external Array<Uint8> pbAudioSpecificConfig;
}

class AMVPSIZE extends Struct {
  @Uint32()
  external int dwWidth;
  @Uint32()
  external int dwHeight;
}

class AMVPDIMINFO extends Struct {
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

class AMVPDATAINFO extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwMicrosecondsPerField;
  external AMVPDIMINFO amvpDimInfo;
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

class AM_MEDIA_TYPE extends Struct {
  external GUID majortype;
  external GUID subtype;
  @Int32()
  external int bFixedSizeSamples;
  @Int32()
  external int bTemporalCompression;
  @Uint32()
  external int lSampleSize;
  external GUID formattype;
  external Pointer pUnk;
  @Uint32()
  external int cbFormat;
  external Pointer<Uint8> pbFormat;
}

class ALLOCATOR_PROPERTIES extends Struct {
  @Int32()
  external int cBuffers;
  @Int32()
  external int cbBuffer;
  @Int32()
  external int cbAlign;
  @Int32()
  external int cbPrefix;
}

class PIN_INFO extends Struct {
  external IBaseFilter pFilter;
  @Uint32()
  external int dir;
  @Array(128)
  external Array<Uint16> achName;
}

class FILTER_INFO extends Struct {
  @Array(128)
  external Array<Uint16> achName;
  external Pointer pGraph;
}

class AM_SAMPLE2_PROPERTIES extends Struct {
  @Uint32()
  external int cbData;
  @Uint32()
  external int dwTypeSpecificFlags;
  @Uint32()
  external int dwSampleFlags;
  @Int32()
  external int lActual;
  @Int64()
  external int tStart;
  @Int64()
  external int tStop;
  @Uint32()
  external int dwStreamId;
  external Pointer<AM_MEDIA_TYPE> pMediaType;
  external Pointer<Uint8> pbBuffer;
  @Int32()
  external int cbBuffer;
}

class REGFILTER extends Struct {
  external GUID Clsid;
  external Pointer<Utf16> Name;
}

class REGPINTYPES extends Struct {
  external Pointer<GUID> clsMajorType;
  external Pointer<GUID> clsMinorType;
}

class REGFILTERPINS extends Struct {
  external Pointer<Utf16> strName;
  @Int32()
  external int bRendered;
  @Int32()
  external int bOutput;
  @Int32()
  external int bZero;
  @Int32()
  external int bMany;
  external Pointer<GUID> clsConnectsToFilter;
  external Pointer<Utf16> strConnectsToPin;
  @Uint32()
  external int nMediaTypes;
  external Pointer<REGPINTYPES> lpMediaType;
}

class REGPINMEDIUM extends Struct {
  external GUID clsMedium;
  @Uint32()
  external int dw1;
  @Uint32()
  external int dw2;
}

class REGFILTERPINS2 extends Struct {
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int cInstances;
  @Uint32()
  external int nMediaTypes;
  external Pointer<REGPINTYPES> lpMediaType;
  @Uint32()
  external int nMediums;
  external Pointer<REGPINMEDIUM> lpMedium;
  external Pointer<GUID> clsPinCategory;
}

class REGFILTER2 extends Struct {
  @Uint32()
  external int dwVersion;
  @Uint32()
  external int dwMerit;
  @Uint32()
  external int Anonymous;
}

class Quality extends Struct {
  @Uint32()
  external int Type;
  @Int32()
  external int Proportion;
  @Int64()
  external int Late;
  @Int64()
  external int TimeStamp;
}

class COLORKEY extends Struct {
  @Uint32()
  external int KeyType;
  @Uint32()
  external int PaletteIndex;
  @Uint32()
  external int LowColorValue;
  @Uint32()
  external int HighColorValue;
}

class AM_STREAM_INFO extends Struct {
  @Int64()
  external int tStart;
  @Int64()
  external int tStop;
  @Uint32()
  external int dwStartCookie;
  @Uint32()
  external int dwStopCookie;
  @Uint32()
  external int dwFlags;
}

class VIDEO_STREAM_CONFIG_CAPS extends Struct {
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

class AUDIO_STREAM_CONFIG_CAPS extends Struct {
  external GUID guid;
  @Uint32()
  external int MinimumChannels;
  @Uint32()
  external int MaximumChannels;
  @Uint32()
  external int ChannelsGranularity;
  @Uint32()
  external int MinimumBitsPerSample;
  @Uint32()
  external int MaximumBitsPerSample;
  @Uint32()
  external int BitsPerSampleGranularity;
  @Uint32()
  external int MinimumSampleFrequency;
  @Uint32()
  external int MaximumSampleFrequency;
  @Uint32()
  external int SampleFrequencyGranularity;
}

class DVINFO extends Struct {
  @Uint32()
  external int dwDVAAuxSrc;
  @Uint32()
  external int dwDVAAuxCtl;
  @Uint32()
  external int dwDVAAuxSrc1;
  @Uint32()
  external int dwDVAAuxCtl1;
  @Uint32()
  external int dwDVVAuxSrc;
  @Uint32()
  external int dwDVVAuxCtl;
  @Array(2)
  external Array<Uint32> dwDVReserved;
}

class STREAM_ID_MAP extends Struct {
  @Uint32()
  external int stream_id;
  @Uint32()
  external int dwMediaSampleContent;
  @Uint32()
  external int ulSubstreamFilterValue;
  @Int32()
  external int iDataOffset;
}

class AMCOPPSignature extends Struct {
  @Array(129)
  external Array<Uint8> Signature;
}

class AMCOPPCommand extends Struct {
  external GUID macKDI;
  external GUID guidCommandID;
  @Uint32()
  external int dwSequence;
  @Uint32()
  external int cbSizeData;
  @Array(143)
  external Array<Uint8> CommandData;
}

class AMCOPPStatusInput extends Struct {
  external GUID rApp;
  external GUID guidStatusRequestID;
  @Uint32()
  external int dwSequence;
  @Uint32()
  external int cbSizeData;
  @Array(143)
  external Array<Uint8> StatusData;
}

class AMCOPPStatusOutput extends Struct {
  external GUID macKDI;
  @Uint32()
  external int cbSizeData;
  @Array(143)
  external Array<Uint8> COPPStatus;
}

class VMRPRESENTATIONINFO extends Struct {
  @Uint32()
  external int dwFlags;
  external Pointer lpSurf;
  @Int64()
  external int rtStart;
  @Int64()
  external int rtEnd;
  external SIZE szAspectRatio;
  external RECT rcSrc;
  external RECT rcDst;
  @Uint32()
  external int dwTypeSpecificFlags;
  @Uint32()
  external int dwInterlaceFlags;
}

class VMRALLOCATIONINFO extends Struct {
  @Uint32()
  external int dwFlags;
  external Pointer<BITMAPINFOHEADER> lpHdr;
  external Pointer<DDPIXELFORMAT> lpPixFmt;
  external SIZE szAspectRatio;
  @Uint32()
  external int dwMinBuffers;
  @Uint32()
  external int dwMaxBuffers;
  @Uint32()
  external int dwInterlaceFlags;
  external SIZE szNativeSize;
}

class NORMALIZEDRECT extends Struct {
  @Float()
  external double left;
  @Float()
  external double top;
  @Float()
  external double right;
  @Float()
  external double bottom;
}

class VMRGUID extends Struct {
  external Pointer<GUID> pGUID;
  external GUID GUID;
}

class VMRMONITORINFO extends Struct {
  external VMRGUID guid;
  external RECT rcMonitor;
  @IntPtr()
  external int hMon;
  @Uint32()
  external int dwFlags;
  @Array(32)
  external Array<Uint16> szDevice;
  @Array(129)
  external Array<Uint16> szDescription;
  @Int64()
  external int liDriverVersion;
  @Uint32()
  external int dwVendorId;
  @Uint32()
  external int dwDeviceId;
  @Uint32()
  external int dwSubSysId;
  @Uint32()
  external int dwRevision;
}

class VMRFrequency extends Struct {
  @Uint32()
  external int dwNumerator;
  @Uint32()
  external int dwDenominator;
}

class VMRVideoDesc extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwSampleWidth;
  @Uint32()
  external int dwSampleHeight;
  @Int32()
  external int SingleFieldPerSample;
  @Uint32()
  external int dwFourCC;
  external VMRFrequency InputSampleFreq;
  external VMRFrequency OutputFrameFreq;
}

class VMRDeinterlaceCaps extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwNumPreviousOutputFrames;
  @Uint32()
  external int dwNumForwardRefSamples;
  @Uint32()
  external int dwNumBackwardRefSamples;
  @Uint32()
  external int DeinterlaceTechnology;
}

class VMRALPHABITMAP extends Struct {
  @Uint32()
  external int dwFlags;
  @IntPtr()
  external int hdc;
  external Pointer pDDS;
  external RECT rSrc;
  external NORMALIZEDRECT rDest;
  @Float()
  external double fAlpha;
  @Uint32()
  external int clrSrcKey;
}

class VMRVIDEOSTREAMINFO extends Struct {
  external Pointer pddsVideoSurface;
  @Uint32()
  external int dwWidth;
  @Uint32()
  external int dwHeight;
  @Uint32()
  external int dwStrmID;
  @Float()
  external double fAlpha;
  external DDCOLORKEY ddClrKey;
  external NORMALIZEDRECT rNormal;
}

class DVD_ATR extends Struct {
  @Uint32()
  external int ulCAT;
  @Array(131)
  external Array<Uint8> pbATRI;
}

class DVD_TIMECODE extends Struct {
  @Uint32()
  external int _bitfield;
}

class DVD_HMSF_TIMECODE extends Struct {
  @Uint8()
  external int bHours;
  @Uint8()
  external int bMinutes;
  @Uint8()
  external int bSeconds;
  @Uint8()
  external int bFrames;
}

class DVD_PLAYBACK_LOCATION2 extends Struct {
  @Uint32()
  external int TitleNum;
  @Uint32()
  external int ChapterNum;
  external DVD_HMSF_TIMECODE TimeCode;
  @Uint32()
  external int TimeCodeFlags;
}

class DVD_PLAYBACK_LOCATION extends Struct {
  @Uint32()
  external int TitleNum;
  @Uint32()
  external int ChapterNum;
  @Uint32()
  external int TimeCode;
}

class DVD_AudioAttributes extends Struct {
  @Uint32()
  external int AppMode;
  @Uint8()
  external int AppModeData;
  @Uint32()
  external int AudioFormat;
  @Uint32()
  external int Language;
  @Uint32()
  external int LanguageExtension;
  @Int32()
  external int fHasMultichannelInfo;
  @Uint32()
  external int dwFrequency;
  @Uint8()
  external int bQuantization;
  @Uint8()
  external int bNumberOfChannels;
  @Array(2)
  external Array<Uint32> dwReserved;
}

class DVD_MUA_MixingInfo extends Struct {
  @Int32()
  external int fMixTo0;
  @Int32()
  external int fMixTo1;
  @Int32()
  external int fMix0InPhase;
  @Int32()
  external int fMix1InPhase;
  @Uint32()
  external int dwSpeakerPosition;
}

class DVD_MUA_Coeff extends Struct {
  @Double()
  external double log2_alpha;
  @Double()
  external double log2_beta;
}

class DVD_MultichannelAudioAttributes extends Struct {
  @Array(8)
  external Array<DVD_MUA_MixingInfo> Info;
  @Array(8)
  external Array<DVD_MUA_Coeff> Coeff;
}

class DVD_KaraokeAttributes extends Struct {
  @Uint8()
  external int bVersion;
  @Int32()
  external int fMasterOfCeremoniesInGuideVocal1;
  @Int32()
  external int fDuet;
  @Uint32()
  external int ChannelAssignment;
  @Array(8)
  external Array<Uint16> wChannelContents;
}

class DVD_VideoAttributes extends Struct {
  @Int32()
  external int fPanscanPermitted;
  @Int32()
  external int fLetterboxPermitted;
  @Uint32()
  external int ulAspectX;
  @Uint32()
  external int ulAspectY;
  @Uint32()
  external int ulFrameRate;
  @Uint32()
  external int ulFrameHeight;
  @Uint32()
  external int Compression;
  @Int32()
  external int fLine21Field1InGOP;
  @Int32()
  external int fLine21Field2InGOP;
  @Uint32()
  external int ulSourceResolutionX;
  @Uint32()
  external int ulSourceResolutionY;
  @Int32()
  external int fIsSourceLetterboxed;
  @Int32()
  external int fIsFilmMode;
}

class DVD_SubpictureAttributes extends Struct {
  @Uint32()
  external int Type;
  @Uint32()
  external int CodingMode;
  @Uint32()
  external int Language;
  @Uint32()
  external int LanguageExtension;
}

class DVD_TitleAttributes extends Struct {
  @Uint32()
  external int Anonymous;
  external DVD_VideoAttributes VideoAttributes;
  @Uint32()
  external int ulNumberOfAudioStreams;
  @Array(8)
  external Array<DVD_AudioAttributes> AudioAttributes;
  @Array(8)
  external Array<DVD_MultichannelAudioAttributes> MultichannelAudioAttributes;
  @Uint32()
  external int ulNumberOfSubpictureStreams;
  @Array(32)
  external Array<DVD_SubpictureAttributes> SubpictureAttributes;
}

class DVD_MenuAttributes extends Struct {
  @Array(8)
  external Array<Pointer<Int32>> fCompatibleRegion;
  external DVD_VideoAttributes VideoAttributes;
  @Int32()
  external int fAudioPresent;
  external DVD_AudioAttributes AudioAttributes;
  @Int32()
  external int fSubpicturePresent;
  external DVD_SubpictureAttributes SubpictureAttributes;
}

class DVD_DECODER_CAPS extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwAudioCaps;
  @Double()
  external double dFwdMaxRateVideo;
  @Double()
  external double dFwdMaxRateAudio;
  @Double()
  external double dFwdMaxRateSP;
  @Double()
  external double dBwdMaxRateVideo;
  @Double()
  external double dBwdMaxRateAudio;
  @Double()
  external double dBwdMaxRateSP;
  @Uint32()
  external int dwRes1;
  @Uint32()
  external int dwRes2;
  @Uint32()
  external int dwRes3;
  @Uint32()
  external int dwRes4;
}

class AM_DVD_RENDERSTATUS extends Struct {
  @Int32()
  external int hrVPEStatus;
  @Int32()
  external int bDvdVolInvalid;
  @Int32()
  external int bDvdVolUnknown;
  @Int32()
  external int bNoLine21In;
  @Int32()
  external int bNoLine21Out;
  @Int32()
  external int iNumStreams;
  @Int32()
  external int iNumStreamsFailed;
  @Uint32()
  external int dwFailedStreamsFlag;
}

class BDA_TEMPLATE_CONNECTION extends Struct {
  @Uint32()
  external int FromNodeType;
  @Uint32()
  external int FromNodePinType;
  @Uint32()
  external int ToNodeType;
  @Uint32()
  external int ToNodePinType;
}

class BDA_TEMPLATE_PIN_JOINT extends Struct {
  @Uint32()
  external int uliTemplateConnection;
  @Uint32()
  external int ulcInstancesMax;
}

class KS_BDA_FRAME_INFO extends Struct {
  @Uint32()
  external int ExtendedHeaderSize;
  @Uint32()
  external int dwFrameFlags;
  @Uint32()
  external int ulEvent;
  @Uint32()
  external int ulChannelNumber;
  @Uint32()
  external int ulSubchannelNumber;
  @Uint32()
  external int ulReason;
}

class BDA_ETHERNET_ADDRESS extends Struct {
  @Array(6)
  external Array<Uint8> rgbAddress;
}

class BDA_ETHERNET_ADDRESS_LIST extends Struct {
  @Uint32()
  external int ulcAddresses;
  @Array(1)
  external Array<BDA_ETHERNET_ADDRESS> rgAddressl;
}

class BDA_IPv4_ADDRESS extends Struct {
  @Array(4)
  external Array<Uint8> rgbAddress;
}

class BDA_IPv4_ADDRESS_LIST extends Struct {
  @Uint32()
  external int ulcAddresses;
  @Array(1)
  external Array<BDA_IPv4_ADDRESS> rgAddressl;
}

class BDA_IPv6_ADDRESS extends Struct {
  @Array(6)
  external Array<Uint8> rgbAddress;
}

class BDA_IPv6_ADDRESS_LIST extends Struct {
  @Uint32()
  external int ulcAddresses;
  @Array(1)
  external Array<BDA_IPv6_ADDRESS> rgAddressl;
}

class BDANODE_DESCRIPTOR extends Struct {
  @Uint32()
  external int ulBdaNodeType;
  external GUID guidFunction;
  external GUID guidName;
}

class BDA_TABLE_SECTION extends Struct {
  @Uint32()
  external int ulPrimarySectionId;
  @Uint32()
  external int ulSecondarySectionId;
  @Uint32()
  external int ulcbSectionLength;
  @Array(1)
  external Array<Uint32> argbSectionData;
}

class BDA_DISEQC_SEND extends Struct {
  @Uint32()
  external int ulRequestId;
  @Uint32()
  external int ulPacketLength;
  @Array(8)
  external Array<Uint8> argbPacketData;
}

class BDA_DISEQC_RESPONSE extends Struct {
  @Uint32()
  external int ulRequestId;
  @Uint32()
  external int ulPacketLength;
  @Array(8)
  external Array<Uint8> argbPacketData;
}

class PID_MAP extends Struct {
  @Uint32()
  external int ulPID;
  @Uint32()
  external int MediaSampleContent;
}

class BDA_PID_MAP extends Struct {
  @Uint32()
  external int MediaSampleContent;
  @Uint32()
  external int ulcPIDs;
  @Array(1)
  external Array<Uint32> aulPIDs;
}

class BDA_PID_UNMAP extends Struct {
  @Uint32()
  external int ulcPIDs;
  @Array(1)
  external Array<Uint32> aulPIDs;
}

class BDA_CA_MODULE_UI extends Struct {
  @Uint32()
  external int ulFormat;
  @Uint32()
  external int ulbcDesc;
  @Array(1)
  external Array<Uint32> ulDesc;
}

class BDA_PROGRAM_PID_LIST extends Struct {
  @Uint32()
  external int ulProgramNumber;
  @Uint32()
  external int ulcPIDs;
  @Array(1)
  external Array<Uint32> ulPID;
}

class BDA_DRM_DRMSTATUS extends Struct {
  @Int32()
  external int lResult;
  external GUID DRMuuid;
  @Uint32()
  external int ulDrmUuidListStringSize;
  @Array(1)
  external Array<GUID> argbDrmUuidListString;
}

class BDA_WMDRM_STATUS extends Struct {
  @Int32()
  external int lResult;
  @Uint32()
  external int ulMaxCaptureTokenSize;
  @Uint32()
  external int uMaxStreamingPid;
  @Uint32()
  external int ulMaxLicense;
  @Uint32()
  external int ulMinSecurityLevel;
  @Uint32()
  external int ulRevInfoSequenceNumber;
  @Uint64()
  external int ulRevInfoIssuedTime;
  @Uint32()
  external int ulRevListVersion;
  @Uint32()
  external int ulRevInfoTTL;
  @Uint32()
  external int ulState;
}

class BDA_WMDRM_KEYINFOLIST extends Struct {
  @Int32()
  external int lResult;
  @Uint32()
  external int ulKeyuuidBufferLen;
  @Array(1)
  external Array<GUID> argKeyuuidBuffer;
}

class BDA_BUFFER extends Struct {
  @Int32()
  external int lResult;
  @Uint32()
  external int ulBufferSize;
  @Array(1)
  external Array<Uint8> argbBuffer;
}

class BDA_WMDRM_RENEWLICENSE extends Struct {
  @Int32()
  external int lResult;
  @Uint32()
  external int ulDescrambleStatus;
  @Uint32()
  external int ulXmrLicenseOutputLength;
  @Array(1)
  external Array<Uint8> argbXmrLicenceOutputBuffer;
}

class BDA_WMDRMTUNER_PIDPROTECTION extends Struct {
  @Int32()
  external int lResult;
  external GUID uuidKeyID;
}

class BDA_WMDRMTUNER_PURCHASEENTITLEMENT extends Struct {
  @Int32()
  external int lResult;
  @Uint32()
  external int ulDescrambleStatus;
  @Uint32()
  external int ulCaptureTokenLength;
  @Array(1)
  external Array<Uint8> argbCaptureTokenBuffer;
}

class BDA_TUNER_TUNERSTATE extends Struct {
  @Int32()
  external int lResult;
  @Uint32()
  external int ulTuneLength;
  @Array(1)
  external Array<Uint8> argbTuneData;
}

class BDA_TUNER_DIAGNOSTICS extends Struct {
  @Int32()
  external int lResult;
  @Uint32()
  external int ulSignalLevel;
  @Uint32()
  external int ulSignalLevelQuality;
  @Uint32()
  external int ulSignalNoiseRatio;
}

class BDA_STRING extends Struct {
  @Int32()
  external int lResult;
  @Uint32()
  external int ulStringSize;
  @Array(1)
  external Array<Uint8> argbString;
}

class BDA_SCAN_CAPABILTIES extends Struct {
  @Int32()
  external int lResult;
  @Uint64()
  external int ul64AnalogStandardsSupported;
}

class BDA_SCAN_STATE extends Struct {
  @Int32()
  external int lResult;
  @Uint32()
  external int ulSignalLock;
  @Uint32()
  external int ulSecondsLeft;
  @Uint32()
  external int ulCurrentFrequency;
}

class BDA_SCAN_START extends Struct {
  @Int32()
  external int lResult;
  @Uint32()
  external int LowerFrequency;
  @Uint32()
  external int HigerFrequency;
}

class BDA_GDDS_DATATYPE extends Struct {
  @Int32()
  external int lResult;
  external GUID uuidDataType;
}

class BDA_GDDS_DATA extends Struct {
  @Int32()
  external int lResult;
  @Uint32()
  external int ulDataLength;
  @Uint32()
  external int ulPercentageProgress;
  @Array(1)
  external Array<Uint8> argbData;
}

class BDA_USERACTIVITY_INTERVAL extends Struct {
  @Int32()
  external int lResult;
  @Uint32()
  external int ulActivityInterval;
}

class BDA_CAS_CHECK_ENTITLEMENTTOKEN extends Struct {
  @Int32()
  external int lResult;
  @Uint32()
  external int ulDescrambleStatus;
}

class BDA_CAS_CLOSE_MMIDIALOG extends Struct {
  @Int32()
  external int lResult;
  @Uint32()
  external int SessionResult;
}

class BDA_CAS_REQUESTTUNERDATA extends Struct {
  @Uint8()
  external int ucRequestPriority;
  @Uint8()
  external int ucRequestReason;
  @Uint8()
  external int ucRequestConsequences;
  @Uint32()
  external int ulEstimatedTime;
}

class BDA_CAS_OPENMMIDATA extends Struct {
  @Uint32()
  external int ulDialogNumber;
  @Uint32()
  external int ulDialogRequest;
  external GUID uuidDialogType;
  @Uint16()
  external int usDialogDataLength;
  @Array(1)
  external Array<Uint8> argbDialogData;
}

class BDA_CAS_CLOSEMMIDATA extends Struct {
  @Uint32()
  external int ulDialogNumber;
}

class BDA_ISDBCAS_REQUESTHEADER extends Struct {
  @Uint8()
  external int bInstruction;
  @Array(3)
  external Array<Uint8> bReserved;
  @Uint32()
  external int ulDataLength;
  @Array(1)
  external Array<Uint8> argbIsdbCommand;
}

class BDA_ISDBCAS_RESPONSEDATA extends Struct {
  @Int32()
  external int lResult;
  @Uint32()
  external int ulRequestID;
  @Uint32()
  external int ulIsdbStatus;
  @Uint32()
  external int ulIsdbDataSize;
  @Array(1)
  external Array<Uint8> argbIsdbCommandData;
}

class BDA_ISDBCAS_EMG_REQ extends Struct {
  @Uint8()
  external int bCLA;
  @Uint8()
  external int bINS;
  @Uint8()
  external int bP1;
  @Uint8()
  external int bP2;
  @Uint8()
  external int bLC;
  @Array(6)
  external Array<Uint8> bCardId;
  @Uint8()
  external int bProtocol;
  @Uint8()
  external int bCABroadcasterGroupId;
  @Uint8()
  external int bMessageControl;
  @Array(1)
  external Array<Uint8> bMessageCode;
}

class BDA_MUX_PIDLISTITEM extends Struct {
  @Uint16()
  external int usPIDNumber;
  @Uint16()
  external int usProgramNumber;
  @Uint32()
  external int ePIDType;
}

class BDA_TS_SELECTORINFO extends Struct {
  @Uint8()
  external int bTSInfolength;
  @Array(2)
  external Array<Uint8> bReserved;
  external GUID guidNetworkType;
  @Uint8()
  external int bTSIDCount;
  @Array(1)
  external Array<Uint16> usTSID;
}

class BDA_TS_SELECTORINFO_ISDBS_EXT extends Struct {
  @Array(48)
  external Array<Uint8> bTMCC;
}

class BDA_DVBT2_L1_SIGNALLING_DATA extends Struct {
  @Uint8()
  external int L1Pre_TYPE;
  @Uint8()
  external int L1Pre_BWT_S1_S2;
  @Uint8()
  external int L1Pre_REPETITION_GUARD_PAPR;
  @Uint8()
  external int L1Pre_MOD_COD_FEC;
  @Array(5)
  external Array<Uint8> L1Pre_POSTSIZE_INFO_PILOT;
  @Uint8()
  external int L1Pre_TX_ID_AVAIL;
  @Array(2)
  external Array<Uint8> L1Pre_CELL_ID;
  @Array(2)
  external Array<Uint8> L1Pre_NETWORK_ID;
  @Array(2)
  external Array<Uint8> L1Pre_T2SYSTEM_ID;
  @Uint8()
  external int L1Pre_NUM_T2_FRAMES;
  @Array(2)
  external Array<Uint8> L1Pre_NUM_DATA_REGENFLAG_L1POSTEXT;
  @Array(2)
  external Array<Uint8> L1Pre_NUMRF_CURRENTRF_RESERVED;
  @Array(4)
  external Array<Uint8> L1Pre_CRC32;
  @Array(1)
  external Array<Uint8> L1PostData;
}

class BDA_RATING_PINRESET extends Struct {
  @Uint8()
  external int bPinLength;
  @Array(1)
  external Array<Uint8> argbNewPin;
}

class MPEG2_TRANSPORT_STRIDE extends Struct {
  @Uint32()
  external int dwOffset;
  @Uint32()
  external int dwPacketLength;
  @Uint32()
  external int dwStride;
}

class BDA_SIGNAL_TIMEOUTS extends Struct {
  @Uint32()
  external int ulCarrierTimeoutMs;
  @Uint32()
  external int ulScanningTimeoutMs;
  @Uint32()
  external int ulTuningTimeoutMs;
}

class EALocationCodeType extends Struct {
  @Uint32()
  external int LocationCodeScheme;
  @Uint8()
  external int state_code;
  @Uint8()
  external int county_subdivision;
  @Uint16()
  external int county_code;
}

class SmartCardApplication extends Struct {
  @Uint32()
  external int ApplicationType;
  @Uint16()
  external int ApplicationVersion;
  external Pointer<Utf16> pbstrApplicationName;
  external Pointer<Utf16> pbstrApplicationURL;
}

class FilgraphManager extends Struct {}

class AMVAUncompBufferInfo extends Struct {
  @Uint32()
  external int dwMinNumSurfaces;
  @Uint32()
  external int dwMaxNumSurfaces;
  external DDPIXELFORMAT ddUncompPixelFormat;
}

class AMVAUncompDataInfo extends Struct {
  @Uint32()
  external int dwUncompWidth;
  @Uint32()
  external int dwUncompHeight;
  external DDPIXELFORMAT ddUncompPixelFormat;
}

class AMVAInternalMemInfo extends Struct {
  @Uint32()
  external int dwScratchMemAlloc;
}

class AMVACompBufferInfo extends Struct {
  @Uint32()
  external int dwNumCompBuffers;
  @Uint32()
  external int dwWidthToCreate;
  @Uint32()
  external int dwHeightToCreate;
  @Uint32()
  external int dwBytesToAllocate;
  external DDSCAPS2 ddCompCaps;
  external DDPIXELFORMAT ddPixelFormat;
}

class AMVABeginFrameInfo extends Struct {
  @Uint32()
  external int dwDestSurfaceIndex;
  external Pointer pInputData;
  @Uint32()
  external int dwSizeInputData;
  external Pointer pOutputData;
  @Uint32()
  external int dwSizeOutputData;
}

class AMVAEndFrameInfo extends Struct {
  @Uint32()
  external int dwSizeMiscData;
  external Pointer pMiscData;
}

class AMVABUFFERINFO extends Struct {
  @Uint32()
  external int dwTypeIndex;
  @Uint32()
  external int dwBufferIndex;
  @Uint32()
  external int dwDataOffset;
  @Uint32()
  external int dwDataSize;
}

class AM_WST_PAGE extends Struct {
  @Uint32()
  external int dwPageNr;
  @Uint32()
  external int dwSubPageNr;
  external Pointer<Uint8> pucPageData;
}

class TRUECOLORINFO extends Struct {
  @Array(3)
  external Array<Uint32> dwBitMasks;
  @Array(129)
  external Array<RGBQUAD> bmiColors;
}

class VIDEOINFOHEADER extends Struct {
  external RECT rcSource;
  external RECT rcTarget;
  @Uint32()
  external int dwBitRate;
  @Uint32()
  external int dwBitErrorRate;
  @Int64()
  external int AvgTimePerFrame;
  external BITMAPINFOHEADER bmiHeader;
}

class VIDEOINFO extends Struct {
  external RECT rcSource;
  external RECT rcTarget;
  @Uint32()
  external int dwBitRate;
  @Uint32()
  external int dwBitErrorRate;
  @Int64()
  external int AvgTimePerFrame;
  external BITMAPINFOHEADER bmiHeader;
  @Uint32()
  external int Anonymous;
}

class MPEG1VIDEOINFO extends Struct {
  external VIDEOINFOHEADER hdr;
  @Uint32()
  external int dwStartTimeCode;
  @Uint32()
  external int cbSequenceHeader;
  @Array(1)
  external Array<Uint8> bSequenceHeader;
}

class ANALOGVIDEOINFO extends Struct {
  external RECT rcSource;
  external RECT rcTarget;
  @Uint32()
  external int dwActiveWidth;
  @Uint32()
  external int dwActiveHeight;
  @Int64()
  external int AvgTimePerFrame;
}

class AM_FRAMESTEP_STEP extends Struct {
  @Uint32()
  external int dwFramesToStep;
}

class OPTIMAL_WEIGHT_TOTALS extends Struct {
  @Int64()
  external int MinTotalNominator;
  @Int64()
  external int MaxTotalNominator;
  @Int64()
  external int TotalDenominator;
}

class IKsPin extends Struct {}

class IKsAllocator extends Struct {}

class IKsAllocatorEx extends Struct {}

class PIPE_DIMENSIONS extends Struct {
  external KS_COMPRESSION AllocatorPin;
  external KS_COMPRESSION MaxExpansionPin;
  external KS_COMPRESSION EndPin;
}

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
  @Uint32()
  external int State;
  external PIPE_TERMINATION Input;
  external PIPE_TERMINATION Output;
  @Uint32()
  external int Strategy;
  @Uint32()
  external int Flags;
  @Uint32()
  external int Weight;
  @Uint32()
  external int LogicalMemoryType;
  @Uint32()
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

class CLSID_Proxy extends Struct {}

class AM_MPEGSTREAMTYPE extends Struct {
  @Uint32()
  external int dwStreamId;
  @Uint32()
  external int dwReserved;
  external AM_MEDIA_TYPE mt;
  @Array(1)
  external Array<Uint8> bFormat;
}

class AM_MPEGSYSTEMTYPE extends Struct {
  @Uint32()
  external int dwBitRate;
  @Uint32()
  external int cStreams;
  @Array(1)
  external Array<AM_MPEGSTREAMTYPE> Streams;
}

class VMR9PresentationInfo extends Struct {
  @Uint32()
  external int dwFlags;
  external IDirect3DSurface9 lpSurf;
  @Int64()
  external int rtStart;
  @Int64()
  external int rtEnd;
  external SIZE szAspectRatio;
  external RECT rcSrc;
  external RECT rcDst;
  @Uint32()
  external int dwReserved1;
  @Uint32()
  external int dwReserved2;
}

class VMR9AllocationInfo extends Struct {
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int dwWidth;
  @Uint32()
  external int dwHeight;
  @Uint32()
  external int Format;
  @Uint32()
  external int Pool;
  @Uint32()
  external int MinBuffers;
  external SIZE szAspectRatio;
  external SIZE szNativeSize;
}

class VMR9NormalizedRect extends Struct {
  @Float()
  external double left;
  @Float()
  external double top;
  @Float()
  external double right;
  @Float()
  external double bottom;
}

class VMR9ProcAmpControl extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwFlags;
  @Float()
  external double Brightness;
  @Float()
  external double Contrast;
  @Float()
  external double Hue;
  @Float()
  external double Saturation;
}

class VMR9ProcAmpControlRange extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwProperty;
  @Float()
  external double MinValue;
  @Float()
  external double MaxValue;
  @Float()
  external double DefaultValue;
  @Float()
  external double StepSize;
}

class VMR9AlphaBitmap extends Struct {
  @Uint32()
  external int dwFlags;
  @IntPtr()
  external int hdc;
  external IDirect3DSurface9 pDDS;
  external RECT rSrc;
  external VMR9NormalizedRect rDest;
  @Float()
  external double fAlpha;
  @Uint32()
  external int clrSrcKey;
  @Uint32()
  external int dwFilterMode;
}

class VMR9MonitorInfo extends Struct {
  @Uint32()
  external int uDevID;
  external RECT rcMonitor;
  @IntPtr()
  external int hMon;
  @Uint32()
  external int dwFlags;
  @Array(32)
  external Array<Uint16> szDevice;
  @Array(130)
  external Array<Uint16> szDescription;
  @Int64()
  external int liDriverVersion;
  @Uint32()
  external int dwVendorId;
  @Uint32()
  external int dwDeviceId;
  @Uint32()
  external int dwSubSysId;
  @Uint32()
  external int dwRevision;
}

class VMR9Frequency extends Struct {
  @Uint32()
  external int dwNumerator;
  @Uint32()
  external int dwDenominator;
}

class VMR9VideoDesc extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwSampleWidth;
  @Uint32()
  external int dwSampleHeight;
  @Uint32()
  external int SampleFormat;
  @Uint32()
  external int dwFourCC;
  external VMR9Frequency InputSampleFreq;
  external VMR9Frequency OutputFrameFreq;
}

class VMR9DeinterlaceCaps extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwNumPreviousOutputFrames;
  @Uint32()
  external int dwNumForwardRefSamples;
  @Uint32()
  external int dwNumBackwardRefSamples;
  @Uint32()
  external int DeinterlaceTechnology;
}

class VMR9VideoStreamInfo extends Struct {
  external IDirect3DSurface9 pddsVideoSurface;
  @Uint32()
  external int dwWidth;
  @Uint32()
  external int dwHeight;
  @Uint32()
  external int dwStrmID;
  @Float()
  external double fAlpha;
  external VMR9NormalizedRect rNormal;
  @Int64()
  external int rtStart;
  @Int64()
  external int rtEnd;
  @Uint32()
  external int SampleFormat;
}

class RIFFCHUNK extends Struct {
  @Uint32()
  external int fcc;
  @Uint32()
  external int cb;
}

class RIFFLIST extends Struct {
  @Uint32()
  external int fcc;
  @Uint32()
  external int cb;
  @Uint32()
  external int fccListType;
}

class AVIMAINHEADER extends Struct {
  @Uint32()
  external int fcc;
  @Uint32()
  external int cb;
  @Uint32()
  external int dwMicroSecPerFrame;
  @Uint32()
  external int dwMaxBytesPerSec;
  @Uint32()
  external int dwPaddingGranularity;
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int dwTotalFrames;
  @Uint32()
  external int dwInitialFrames;
  @Uint32()
  external int dwStreams;
  @Uint32()
  external int dwSuggestedBufferSize;
  @Uint32()
  external int dwWidth;
  @Uint32()
  external int dwHeight;
  @Array(4)
  external Array<Uint32> dwReserved;
}

class AVIEXTHEADER extends Struct {
  @Uint32()
  external int fcc;
  @Uint32()
  external int cb;
  @Uint32()
  external int dwGrandFrames;
  @Array(61)
  external Array<Uint32> dwFuture;
}

class AVISTREAMHEADER extends Struct {
  @Uint32()
  external int fcc;
  @Uint32()
  external int cb;
  @Uint32()
  external int fccType;
  @Uint32()
  external int fccHandler;
  @Uint32()
  external int dwFlags;
  @Uint16()
  external int wPriority;
  @Uint16()
  external int wLanguage;
  @Uint32()
  external int dwInitialFrames;
  @Uint32()
  external int dwScale;
  @Uint32()
  external int dwRate;
  @Uint32()
  external int dwStart;
  @Uint32()
  external int dwLength;
  @Uint32()
  external int dwSuggestedBufferSize;
  @Uint32()
  external int dwQuality;
  @Uint32()
  external int dwSampleSize;
  @Uint32()
  external int rcFrame;
}

class AVIOLDINDEX extends Struct {
  @Uint32()
  external int fcc;
  @Uint32()
  external int cb;
  @Uint32()
  external int aIndex;
}

class TIMECODEDATA extends Struct {
  external TIMECODE time;
  @Uint32()
  external int dwSMPTEflags;
  @Uint32()
  external int dwUser;
}

class AVIMETAINDEX extends Struct {
  @Uint32()
  external int fcc;
  @Uint32()
  external int cb;
  @Uint16()
  external int wLongsPerEntry;
  @Uint8()
  external int bIndexSubType;
  @Uint8()
  external int bIndexType;
  @Uint32()
  external int nEntriesInUse;
  @Uint32()
  external int dwChunkId;
  @Array(3)
  external Array<Uint32> dwReserved;
  @Uint32()
  external int adwIndex;
}

class AVISUPERINDEX extends Struct {
  @Uint32()
  external int fcc;
  @Uint32()
  external int cb;
  @Uint16()
  external int wLongsPerEntry;
  @Uint8()
  external int bIndexSubType;
  @Uint8()
  external int bIndexType;
  @Uint32()
  external int nEntriesInUse;
  @Uint32()
  external int dwChunkId;
  @Array(3)
  external Array<Uint32> dwReserved;
  @Array(131)
  external Array<Uint32> aIndex;
}

class AVISTDINDEX_ENTRY extends Struct {
  @Uint32()
  external int dwOffset;
  @Uint32()
  external int dwSize;
}

class AVISTDINDEX extends Struct {
  @Uint32()
  external int fcc;
  @Uint32()
  external int cb;
  @Uint16()
  external int wLongsPerEntry;
  @Uint8()
  external int bIndexSubType;
  @Uint8()
  external int bIndexType;
  @Uint32()
  external int nEntriesInUse;
  @Uint32()
  external int dwChunkId;
  @Uint64()
  external int qwBaseOffset;
  @Uint32()
  external int dwReserved_3;
  @Array(135)
  external Array<AVISTDINDEX_ENTRY> aIndex;
}

class AVITIMEDINDEX_ENTRY extends Struct {
  @Uint32()
  external int dwOffset;
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwDuration;
}

class _avitimedindex extends Struct {
  @Uint32()
  external int fcc;
  @Uint32()
  external int cb;
  @Uint16()
  external int wLongsPerEntry;
  @Uint8()
  external int bIndexSubType;
  @Uint8()
  external int bIndexType;
  @Uint32()
  external int nEntriesInUse;
  @Uint32()
  external int dwChunkId;
  @Uint64()
  external int qwBaseOffset;
  @Uint32()
  external int dwReserved_3;
  @Array(133)
  external Array<AVITIMEDINDEX_ENTRY> aIndex;
  @Array(138)
  external Array<Uint32> adwTrailingFill;
}

class AVITIMECODEINDEX extends Struct {
  @Uint32()
  external int fcc;
  @Uint32()
  external int cb;
  @Uint16()
  external int wLongsPerEntry;
  @Uint8()
  external int bIndexSubType;
  @Uint8()
  external int bIndexType;
  @Uint32()
  external int nEntriesInUse;
  @Uint32()
  external int dwChunkId;
  @Array(3)
  external Array<Uint32> dwReserved;
  @Array(131)
  external Array<TIMECODEDATA> aIndex;
}

class AVITCDLINDEX_ENTRY extends Struct {
  @Uint32()
  external int dwTick;
  external TIMECODE time;
  @Uint32()
  external int dwSMPTEflags;
  @Uint32()
  external int dwUser;
  @Array(12)
  external Array<Int8> szReelId;
}

class _avitcdlindex extends Struct {
  @Uint32()
  external int fcc;
  @Uint32()
  external int cb;
  @Uint16()
  external int wLongsPerEntry;
  @Uint8()
  external int bIndexSubType;
  @Uint8()
  external int bIndexType;
  @Uint32()
  external int nEntriesInUse;
  @Uint32()
  external int dwChunkId;
  @Array(3)
  external Array<Uint32> dwReserved;
  @Array(130)
  external Array<AVITCDLINDEX_ENTRY> aIndex;
  @Array(141)
  external Array<Uint32> adwTrailingFill;
}

class AVIFIELDINDEX extends Struct {
  @Uint32()
  external int fcc;
  @Uint32()
  external int cb;
  @Uint16()
  external int wLongsPerEntry;
  @Uint8()
  external int bIndexSubType;
  @Uint8()
  external int bIndexType;
  @Uint32()
  external int nEntriesInUse;
  @Uint32()
  external int dwChunkId;
  @Uint64()
  external int qwBaseOffset;
  @Uint32()
  external int dwReserved3;
  @Uint32()
  external int aIndex;
}

class MainAVIHeader extends Struct {
  @Uint32()
  external int dwMicroSecPerFrame;
  @Uint32()
  external int dwMaxBytesPerSec;
  @Uint32()
  external int dwPaddingGranularity;
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int dwTotalFrames;
  @Uint32()
  external int dwInitialFrames;
  @Uint32()
  external int dwStreams;
  @Uint32()
  external int dwSuggestedBufferSize;
  @Uint32()
  external int dwWidth;
  @Uint32()
  external int dwHeight;
  @Array(4)
  external Array<Uint32> dwReserved;
}

class AVIStreamHeader extends Struct {
  @Uint32()
  external int fccType;
  @Uint32()
  external int fccHandler;
  @Uint32()
  external int dwFlags;
  @Uint16()
  external int wPriority;
  @Uint16()
  external int wLanguage;
  @Uint32()
  external int dwInitialFrames;
  @Uint32()
  external int dwScale;
  @Uint32()
  external int dwRate;
  @Uint32()
  external int dwStart;
  @Uint32()
  external int dwLength;
  @Uint32()
  external int dwSuggestedBufferSize;
  @Uint32()
  external int dwQuality;
  @Uint32()
  external int dwSampleSize;
  external RECT rcFrame;
}

class AVIINDEXENTRY extends Struct {
  @Uint32()
  external int ckid;
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int dwChunkOffset;
  @Uint32()
  external int dwChunkLength;
}

class AVIPALCHANGE extends Struct {
  @Uint8()
  external int bFirstEntry;
  @Uint8()
  external int bNumEntries;
  @Uint16()
  external int wFlags;
  external PALETTEENTRY peNew;
}

class AM_AC3_ERROR_CONCEALMENT extends Struct {
  @Int32()
  external int fRepeatPreviousBlock;
  @Int32()
  external int fErrorInCurrentBlock;
}

class AM_AC3_ALTERNATE_AUDIO extends Struct {
  @Int32()
  external int fStereo;
  @Uint32()
  external int DualMode;
}

class AM_AC3_DOWNMIX extends Struct {
  @Int32()
  external int fDownMix;
  @Int32()
  external int fDolbySurround;
}

class AM_AC3_BIT_STREAM_MODE extends Struct {
  @Int32()
  external int BitStreamMode;
}

class AM_AC3_DIALOGUE_LEVEL extends Struct {
  @Uint32()
  external int DialogueLevel;
}

class AM_AC3_ROOM_TYPE extends Struct {
  @Int32()
  external int fLargeRoom;
}

class AM_DVD_YUV extends Struct {
  @Uint8()
  external int Reserved;
  @Uint8()
  external int Y;
  @Uint8()
  external int U;
  @Uint8()
  external int V;
}

class AM_PROPERTY_SPPAL extends Struct {
  @Array(16)
  external Array<AM_DVD_YUV> sppal;
}

class AM_COLCON extends Struct {
  @Uint8()
  external int _bitfield1;
  @Uint8()
  external int _bitfield2;
  @Uint8()
  external int _bitfield3;
  @Uint8()
  external int _bitfield4;
}

class AM_PROPERTY_SPHLI extends Struct {
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
  external AM_COLCON ColCon;
}

class AM_DVDCOPY_CHLGKEY extends Struct {
  @Array(10)
  external Array<Uint8> ChlgKey;
  @Array(2)
  external Array<Uint8> Reserved;
}

class AM_DVDCOPY_BUSKEY extends Struct {
  @Array(5)
  external Array<Uint8> BusKey;
  @Array(1)
  external Array<Uint8> Reserved;
}

class AM_DVDCOPY_DISCKEY extends Struct {
  @Array(136)
  external Array<Uint8> DiscKey;
}

class AM_DVDCOPY_TITLEKEY extends Struct {
  @Uint32()
  external int KeyFlags;
  @Array(2)
  external Array<Uint32> Reserved1;
  @Array(6)
  external Array<Uint8> TitleKey;
  @Array(2)
  external Array<Uint8> Reserved2;
}

class AM_COPY_MACROVISION extends Struct {
  @Uint32()
  external int MACROVISIONLevel;
}

class AM_DVDCOPY_SET_COPY_STATE extends Struct {
  @Uint32()
  external int DVDCopyState;
}

class DVD_REGION extends Struct {
  @Uint8()
  external int CopySystem;
  @Uint8()
  external int RegionData;
  @Uint8()
  external int SystemRegion;
  @Uint8()
  external int ResetCount;
}

class VIDEOINFOHEADER2 extends Struct {
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
  external BITMAPINFOHEADER bmiHeader;
}

class MPEG2VIDEOINFO extends Struct {
  external VIDEOINFOHEADER2 hdr;
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
  external Array<Uint32> dwSequenceHeader;
}

class AM_DvdKaraokeData extends Struct {
  @Uint32()
  external int dwDownmix;
  @Uint32()
  external int dwSpeakerAssignment;
}

class AM_SimpleRateChange extends Struct {
  @Int64()
  external int StartTime;
  @Int32()
  external int Rate;
}

class AM_QueryRate extends Struct {
  @Int32()
  external int lMaxForwardFullFrame;
  @Int32()
  external int lMaxReverseFullFrame;
}

class AM_ExactRateChange extends Struct {
  @Int64()
  external int OutputZeroTime;
  @Int32()
  external int Rate;
}

class AM_DVD_ChangeRate extends Struct {
  @Int64()
  external int StartInTime;
  @Int64()
  external int StartOutTime;
  @Int32()
  external int Rate;
}

class MP_PARAMINFO extends Struct {
  @Uint32()
  external int mpType;
  @Uint32()
  external int mopCaps;
  @Float()
  external double mpdMinValue;
  @Float()
  external double mpdMaxValue;
  @Float()
  external double mpdNeutralValue;
  @Array(32)
  external Array<Uint16> szUnitText;
  @Array(32)
  external Array<Uint16> szLabel;
}

class MP_ENVELOPE_SEGMENT extends Struct {
  @Int64()
  external int rtStart;
  @Int64()
  external int rtEnd;
  @Float()
  external double valStart;
  @Float()
  external double valEnd;
  @Uint32()
  external int iCurve;
  @Uint32()
  external int flags;
}

class DMO_PARTIAL_MEDIATYPE extends Struct {
  external GUID type;
  external GUID subtype;
}

class DMO_MEDIA_TYPE extends Struct {
  external GUID majortype;
  external GUID subtype;
  @Int32()
  external int bFixedSizeSamples;
  @Int32()
  external int bTemporalCompression;
  @Uint32()
  external int lSampleSize;
  external GUID formattype;
  external Pointer pUnk;
  @Uint32()
  external int cbFormat;
  external Pointer<Uint8> pbFormat;
}

class DMO_OUTPUT_DATA_BUFFER extends Struct {
  external Pointer pBuffer;
  @Uint32()
  external int dwStatus;
  @Int64()
  external int rtTimestamp;
  @Int64()
  external int rtTimelength;
}

class DXVA_COPPSetProtectionLevelCmdData extends Struct {
  @Uint32()
  external int ProtType;
  @Uint32()
  external int ProtLevel;
  @Uint32()
  external int ExtendedInfoChangeMask;
  @Uint32()
  external int ExtendedInfoData;
}

class DXVA_COPPSetSignalingCmdData extends Struct {
  @Uint32()
  external int ActiveTVProtectionStandard;
  @Uint32()
  external int AspectRatioChangeMask1;
  @Uint32()
  external int AspectRatioData1;
  @Uint32()
  external int AspectRatioChangeMask2;
  @Uint32()
  external int AspectRatioData2;
  @Uint32()
  external int AspectRatioChangeMask3;
  @Uint32()
  external int AspectRatioData3;
  @Array(4)
  external Array<Uint32> ExtendedInfoChangeMask;
  @Array(4)
  external Array<Uint32> ExtendedInfoData;
  @Uint32()
  external int Reserved;
}

class DXVA_COPPStatusData extends Struct {
  external GUID rApp;
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int dwData;
  @Uint32()
  external int ExtendedInfoValidMask;
  @Uint32()
  external int ExtendedInfoData;
}

class DXVA_COPPStatusDisplayData extends Struct {
  external GUID rApp;
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int DisplayWidth;
  @Uint32()
  external int DisplayHeight;
  @Uint32()
  external int Format;
  @Uint32()
  external int d3dFormat;
  @Uint32()
  external int FreqNumerator;
  @Uint32()
  external int FreqDenominator;
}

class DXVA_COPPStatusHDCPKeyData extends Struct {
  external GUID rApp;
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int dwHDCPFlags;
  external GUID BKey;
  external GUID Reserved1;
  external GUID Reserved2;
}

class DXVA_COPPStatusSignalingCmdData extends Struct {
  external GUID rApp;
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int AvailableTVProtectionStandards;
  @Uint32()
  external int ActiveTVProtectionStandard;
  @Uint32()
  external int TVType;
  @Uint32()
  external int AspectRatioValidMask1;
  @Uint32()
  external int AspectRatioData1;
  @Uint32()
  external int AspectRatioValidMask2;
  @Uint32()
  external int AspectRatioData2;
  @Uint32()
  external int AspectRatioValidMask3;
  @Uint32()
  external int AspectRatioData3;
  @Array(4)
  external Array<Uint32> ExtendedInfoValidMask;
  @Array(4)
  external Array<Uint32> ExtendedInfoData;
}

class DDCOLORKEY extends Struct {
  @Uint32()
  external int dwColorSpaceLowValue;
  @Uint32()
  external int dwColorSpaceHighValue;
}
