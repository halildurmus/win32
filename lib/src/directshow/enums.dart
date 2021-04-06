/// {@category Enum}
class ADVISE_TYPE {
  static const ADVISE_NONE = 0x00000000;
  static const ADVISE_CLIPPING = 0x00000001;
  static const ADVISE_PALETTE = 0x00000002;
  static const ADVISE_COLORKEY = 0x00000004;
  static const ADVISE_POSITION = 0x00000008;
  static const ADVISE_DISPLAY_CHANGE = 0x00000010;
}

/// {@category Enum}
class AMExtendedSeekingCapabilities {
  static const AM_EXSEEK_CANSEEK = 0x00000001;
  static const AM_EXSEEK_CANSCAN = 0x00000002;
  static const AM_EXSEEK_MARKERSEEK = 0x00000004;
  static const AM_EXSEEK_SCANWITHOUTCLOCK = 0x00000008;
  static const AM_EXSEEK_NOSTANDARDREPAINT = 0x00000010;
  static const AM_EXSEEK_BUFFERING = 0x00000020;
  static const AM_EXSEEK_SENDS_VIDEOFRAMEREADY = 0x00000040;
}

/// {@category Enum}
class AMMSF_MMS_INIT_FLAGS {
  static const AMMSF_NOGRAPHTHREAD = 0x00000001;
}

/// {@category Enum}
class AMMSF_MS_FLAGS {
  static const AMMSF_ADDDEFAULTRENDERER = 0x00000001;
  static const AMMSF_CREATEPEER = 0x00000002;
  static const AMMSF_STOPIFNOSAMPLES = 0x00000004;
  static const AMMSF_NOSTALL = 0x00000008;
}

/// {@category Enum}
class AMMSF_RENDER_FLAGS {
  static const AMMSF_RENDERTYPEMASK = 0x00000003;
  static const AMMSF_RENDERTOEXISTING = 0x00000000;
  static const AMMSF_RENDERALLSTREAMS = 0x00000001;
  static const AMMSF_NORENDER = 0x00000002;
  static const AMMSF_NOCLOCK = 0x00000004;
  static const AMMSF_RUN = 0x00000008;
}

/// {@category Enum}
class AMOVERLAYFX {
  static const AMOVERFX_NOFX = 0x00000000;
  static const AMOVERFX_MIRRORLEFTRIGHT = 0x00000002;
  static const AMOVERFX_MIRRORUPDOWN = 0x00000004;
  static const AMOVERFX_DEINTERLACE = 0x00000008;
}

/// {@category Enum}
class AMPROPERTY_PIN {
  static const AMPROPERTY_PIN_CATEGORY = 0x00000000;
  static const AMPROPERTY_PIN_MEDIUM = 0x00000001;
}

/// {@category Enum}
class AMTVAudioEventType {
  static const AMTVAUDIO_EVENT_CHANGED = 0x00000001;
}

/// {@category Enum}
class AMTunerEventType {
  static const AMTUNER_EVENT_CHANGED = 0x00000001;
}

/// {@category Enum}
class AMTunerModeType {
  static const AMTUNER_MODE_DEFAULT = 0x00000000;
  static const AMTUNER_MODE_TV = 0x00000001;
  static const AMTUNER_MODE_FM_RADIO = 0x00000002;
  static const AMTUNER_MODE_AM_RADIO = 0x00000004;
  static const AMTUNER_MODE_DSS = 0x00000008;
}

/// {@category Enum}
class AMTunerSignalStrength {
  static const AMTUNER_HASNOSIGNALSTRENGTH = 0xffffffff;
  static const AMTUNER_NOSIGNAL = 0x00000000;
  static const AMTUNER_SIGNALPRESENT = 0x00000001;
}

/// {@category Enum}
class AMTunerSubChannel {
  static const AMTUNER_SUBCHAN_NO_TUNE = 0xfffffffe;
  static const AMTUNER_SUBCHAN_DEFAULT = 0xffffffff;
}

/// {@category Enum}
class AMVP_MODE {
  static const AMVP_MODE_WEAVE = 0x00000000;
  static const AMVP_MODE_BOBINTERLEAVED = 0x00000001;
  static const AMVP_MODE_BOBNONINTERLEAVED = 0x00000002;
  static const AMVP_MODE_SKIPEVEN = 0x00000003;
  static const AMVP_MODE_SKIPODD = 0x00000004;
}

/// {@category Enum}
class AMVP_SELECT_FORMAT_BY {
  static const AMVP_DO_NOT_CARE = 0x00000000;
  static const AMVP_BEST_BANDWIDTH = 0x00000001;
  static const AMVP_INPUT_SAME_AS_OUTPUT = 0x00000002;
}

/// {@category Enum}
class AM_ASPECT_RATIO_MODE {
  static const AM_ARMODE_STRETCHED = 0x00000000;
  static const AM_ARMODE_LETTER_BOX = 0x00000001;
  static const AM_ARMODE_CROP = 0x00000002;
  static const AM_ARMODE_STRETCHED_AS_PRIMARY = 0x00000003;
}

/// {@category Enum}
class AM_COPY_MACROVISION_LEVEL {
  static const AM_MACROVISION_DISABLED = 0x00000000;
  static const AM_MACROVISION_LEVEL1 = 0x00000001;
  static const AM_MACROVISION_LEVEL2 = 0x00000002;
  static const AM_MACROVISION_LEVEL3 = 0x00000003;
}

/// {@category Enum}
class AM_DIGITAL_CP {
  static const AM_DIGITAL_CP_OFF = 0x00000000;
  static const AM_DIGITAL_CP_ON = 0x00000001;
  static const AM_DIGITAL_CP_DVD_COMPLIANT = 0x00000002;
}

/// {@category Enum}
class AM_DVDCOPYSTATE {
  static const AM_DVDCOPYSTATE_INITIALIZE = 0x00000000;
  static const AM_DVDCOPYSTATE_INITIALIZE_TITLE = 0x00000001;
  static const AM_DVDCOPYSTATE_AUTHENTICATION_NOT_REQUIRED = 0x00000002;
  static const AM_DVDCOPYSTATE_AUTHENTICATION_REQUIRED = 0x00000003;
  static const AM_DVDCOPYSTATE_DONE = 0x00000004;
}

/// {@category Enum}
class AM_DVD_GRAPH_FLAGS {
  static const AM_DVD_HWDEC_PREFER = 0x00000001;
  static const AM_DVD_HWDEC_ONLY = 0x00000002;
  static const AM_DVD_SWDEC_PREFER = 0x00000004;
  static const AM_DVD_SWDEC_ONLY = 0x00000008;
  static const AM_DVD_NOVPE = 0x00000100;
  static const AM_DVD_DO_NOT_CLEAR = 0x00000200;
  static const AM_DVD_VMR9_ONLY = 0x00000800;
  static const AM_DVD_EVR_ONLY = 0x00001000;
  static const AM_DVD_EVR_QOS = 0x00002000;
  static const AM_DVD_ADAPT_GRAPH = 0x00004000;
  static const AM_DVD_MASK = 0x0000ffff;
}

/// {@category Enum}
class AM_DVD_STREAM_FLAGS {
  static const AM_DVD_STREAM_VIDEO = 0x00000001;
  static const AM_DVD_STREAM_AUDIO = 0x00000002;
  static const AM_DVD_STREAM_SUBPIC = 0x00000004;
}

/// {@category Enum}
class AM_FILESINK_FLAGS {
  static const AM_FILE_OVERWRITE = 0x00000001;
}

/// {@category Enum}
class AM_FILTER_FLAGS {
  static const AM_FILTER_FLAGS_REMOVABLE = 0x00000001;
}

/// {@category Enum}
class AM_GRAPH_CONFIG_RECONNECT_FLAGS {
  static const AM_GRAPH_CONFIG_RECONNECT_DIRECTCONNECT = 0x00000001;
  static const AM_GRAPH_CONFIG_RECONNECT_CACHE_REMOVED_FILTERS = 0x00000002;
  static const AM_GRAPH_CONFIG_RECONNECT_USE_ONLY_CACHED_FILTERS = 0x00000004;
}

/// {@category Enum}
class AM_LINE21_CCLEVEL {
  static const AM_L21_CCLEVEL_TC2 = 0x00000000;
}

/// {@category Enum}
class AM_LINE21_CCSERVICE {
  static const AM_L21_CCSERVICE_None = 0x00000000;
  static const AM_L21_CCSERVICE_Caption1 = 0x00000001;
  static const AM_L21_CCSERVICE_Caption2 = 0x00000002;
  static const AM_L21_CCSERVICE_Text1 = 0x00000003;
  static const AM_L21_CCSERVICE_Text2 = 0x00000004;
  static const AM_L21_CCSERVICE_XDS = 0x00000005;
  static const AM_L21_CCSERVICE_DefChannel = 0x0000000a;
  static const AM_L21_CCSERVICE_Invalid = 0x0000000b;
}

/// {@category Enum}
class AM_LINE21_CCSTATE {
  static const AM_L21_CCSTATE_Off = 0x00000000;
  static const AM_L21_CCSTATE_On = 0x00000001;
}

/// {@category Enum}
class AM_LINE21_CCSTYLE {
  static const AM_L21_CCSTYLE_None = 0x00000000;
  static const AM_L21_CCSTYLE_PopOn = 0x00000001;
  static const AM_L21_CCSTYLE_PaintOn = 0x00000002;
  static const AM_L21_CCSTYLE_RollUp = 0x00000003;
}

/// {@category Enum}
class AM_LINE21_DRAWBGMODE {
  static const AM_L21_DRAWBGMODE_Opaque = 0x00000000;
  static const AM_L21_DRAWBGMODE_Transparent = 0x00000001;
}

/// {@category Enum}
class AM_MEDIAEVENT_FLAGS {
  static const AM_MEDIAEVENT_NONOTIFY = 0x00000001;
}

/// {@category Enum}
class AM_MPEG2Level {
  static const AM_MPEG2Level_Low = 0x00000001;
  static const AM_MPEG2Level_Main = 0x00000002;
  static const AM_MPEG2Level_High1440 = 0x00000003;
  static const AM_MPEG2Level_High = 0x00000004;
}

/// {@category Enum}
class AM_MPEG2Profile {
  static const AM_MPEG2Profile_Simple = 0x00000001;
  static const AM_MPEG2Profile_Main = 0x00000002;
  static const AM_MPEG2Profile_SNRScalable = 0x00000003;
  static const AM_MPEG2Profile_SpatiallyScalable = 0x00000004;
  static const AM_MPEG2Profile_High = 0x00000005;
}

/// {@category Enum}
class AM_PROPERTY_AC3 {
  static const AM_PROPERTY_AC3_ERROR_CONCEALMENT = 0x00000001;
  static const AM_PROPERTY_AC3_ALTERNATE_AUDIO = 0x00000002;
  static const AM_PROPERTY_AC3_DOWNMIX = 0x00000003;
  static const AM_PROPERTY_AC3_BIT_STREAM_MODE = 0x00000004;
  static const AM_PROPERTY_AC3_DIALOGUE_LEVEL = 0x00000005;
  static const AM_PROPERTY_AC3_LANGUAGE_CODE = 0x00000006;
  static const AM_PROPERTY_AC3_ROOM_TYPE = 0x00000007;
}

/// {@category Enum}
class AM_PROPERTY_DVDCOPYPROT {
  static const AM_PROPERTY_DVDCOPY_CHLG_KEY = 0x00000001;
  static const AM_PROPERTY_DVDCOPY_DVD_KEY1 = 0x00000002;
  static const AM_PROPERTY_DVDCOPY_DEC_KEY2 = 0x00000003;
  static const AM_PROPERTY_DVDCOPY_TITLE_KEY = 0x00000004;
  static const AM_PROPERTY_COPY_MACROVISION = 0x00000005;
  static const AM_PROPERTY_DVDCOPY_REGION = 0x00000006;
  static const AM_PROPERTY_DVDCOPY_SET_COPY_STATE = 0x00000007;
  static const AM_PROPERTY_COPY_ANALOG_COMPONENT = 0x00000008;
  static const AM_PROPERTY_COPY_DIGITAL_CP = 0x00000009;
  static const AM_PROPERTY_COPY_DVD_SRM = 0x0000000a;
  static const AM_PROPERTY_DVDCOPY_SUPPORTS_NEW_KEYCOUNT = 0x0000000b;
  static const AM_PROPERTY_DVDCOPY_DISC_KEY = 0x00000080;
}

/// {@category Enum}
class AM_PROPERTY_DVDKARAOKE {
  static const AM_PROPERTY_DVDKARAOKE_ENABLE = 0x00000000;
  static const AM_PROPERTY_DVDKARAOKE_DATA = 0x00000001;
}

/// {@category Enum}
class AM_PROPERTY_DVDSUBPIC {
  static const AM_PROPERTY_DVDSUBPIC_PALETTE = 0x00000000;
  static const AM_PROPERTY_DVDSUBPIC_HLI = 0x00000001;
  static const AM_PROPERTY_DVDSUBPIC_COMPOSIT_ON = 0x00000002;
}

/// {@category Enum}
class AM_PROPERTY_DVD_RATE_CHANGE {
  static const AM_RATE_ChangeRate = 0x00000001;
  static const AM_RATE_FullDataRateMax = 0x00000002;
  static const AM_RATE_ReverseDecode = 0x00000003;
  static const AM_RATE_DecoderPosition = 0x00000004;
  static const AM_RATE_DecoderVersion = 0x00000005;
}

/// {@category Enum}
class AM_PROPERTY_FRAMESTEP {
  static const AM_PROPERTY_FRAMESTEP_STEP = 0x00000001;
  static const AM_PROPERTY_FRAMESTEP_CANCEL = 0x00000002;
  static const AM_PROPERTY_FRAMESTEP_CANSTEP = 0x00000003;
  static const AM_PROPERTY_FRAMESTEP_CANSTEPMULTIPLE = 0x00000004;
}

/// {@category Enum}
class AM_PROPERTY_TS_RATE_CHANGE {
  static const AM_RATE_SimpleRateChange = 0x00000001;
  static const AM_RATE_ExactRateChange = 0x00000002;
  static const AM_RATE_MaxFullDataRate = 0x00000003;
  static const AM_RATE_Step = 0x00000004;
  static const AM_RATE_UseRateVersion = 0x00000005;
  static const AM_RATE_QueryFullFrameRate = 0x00000006;
  static const AM_RATE_QueryLastRateSegPTS = 0x00000007;
  static const AM_RATE_CorrectTS = 0x00000008;
  static const AM_RATE_ReverseMaxFullDataRate = 0x00000009;
  static const AM_RATE_ResetOnTimeDisc = 0x0000000a;
  static const AM_RATE_QueryMapping = 0x0000000b;
}

/// {@category Enum}
class AM_SAMPLE_PROPERTY_FLAGS {
  static const AM_SAMPLE_SPLICEPOINT = 0x00000001;
  static const AM_SAMPLE_PREROLL = 0x00000002;
  static const AM_SAMPLE_DATADISCONTINUITY = 0x00000004;
  static const AM_SAMPLE_TYPECHANGED = 0x00000008;
  static const AM_SAMPLE_TIMEVALID = 0x00000010;
  static const AM_SAMPLE_TIMEDISCONTINUITY = 0x00000040;
  static const AM_SAMPLE_FLUSH_ON_PAUSE = 0x00000080;
  static const AM_SAMPLE_STOPVALID = 0x00000100;
  static const AM_SAMPLE_ENDOFSTREAM = 0x00000200;
  static const AM_STREAM_MEDIA = 0x00000000;
  static const AM_STREAM_CONTROL = 0x00000001;
}

/// {@category Enum}
class AM_SEEKING_SEEKING_CAPABILITIES {
  static const AM_SEEKING_CanSeekAbsolute = 0x00000001;
  static const AM_SEEKING_CanSeekForwards = 0x00000002;
  static const AM_SEEKING_CanSeekBackwards = 0x00000004;
  static const AM_SEEKING_CanGetCurrentPos = 0x00000008;
  static const AM_SEEKING_CanGetStopPos = 0x00000010;
  static const AM_SEEKING_CanGetDuration = 0x00000020;
  static const AM_SEEKING_CanPlayBackwards = 0x00000040;
  static const AM_SEEKING_CanDoSegments = 0x00000080;
  static const AM_SEEKING_Source = 0x00000100;
}

/// {@category Enum}
class AM_SEEKING_SeekingFlags {
  static const AM_SEEKING_NoPositioning = 0x00000000;
  static const AM_SEEKING_AbsolutePositioning = 0x00000001;
  static const AM_SEEKING_RelativePositioning = 0x00000002;
  static const AM_SEEKING_IncrementalPositioning = 0x00000003;
  static const AM_SEEKING_PositioningBitsMask = 0x00000003;
  static const AM_SEEKING_SeekToKeyFrame = 0x00000004;
  static const AM_SEEKING_ReturnTime = 0x00000008;
  static const AM_SEEKING_Segment = 0x00000010;
  static const AM_SEEKING_NoFlush = 0x00000020;
}

/// {@category Enum}
class AM_STREAM_INFO_FLAGS {
  static const AM_STREAM_INFO_START_DEFINED = 0x00000001;
  static const AM_STREAM_INFO_STOP_DEFINED = 0x00000002;
  static const AM_STREAM_INFO_DISCARDING = 0x00000004;
  static const AM_STREAM_INFO_STOP_SEND_EXTRA = 0x00000010;
}

/// {@category Enum}
class AM_WST_DRAWBGMODE {
  static const AM_WST_DRAWBGMODE_Opaque = 0x00000000;
  static const AM_WST_DRAWBGMODE_Transparent = 0x00000001;
}

/// {@category Enum}
class AM_WST_LEVEL {
  static const AM_WST_LEVEL_1_5 = 0x00000000;
}

/// {@category Enum}
class AM_WST_SERVICE {
  static const AM_WST_SERVICE_None = 0x00000000;
  static const AM_WST_SERVICE_Text = 0x00000001;
  static const AM_WST_SERVICE_IDS = 0x00000002;
  static const AM_WST_SERVICE_Invalid = 0x00000003;
}

/// {@category Enum}
class AM_WST_STATE {
  static const AM_WST_STATE_Off = 0x00000000;
  static const AM_WST_STATE_On = 0x00000001;
}

/// {@category Enum}
class AM_WST_STYLE {
  static const AM_WST_STYLE_None = 0x00000000;
  static const AM_WST_STYLE_Invers = 0x00000001;
}

/// {@category Enum}
class ATSCComponentTypeFlags {
  static const ATSCCT_AC3 = 0x00000001;
}

/// {@category Enum}
class AnalogVideoStandard {
  static const AnalogVideo_None = 0x00000000;
  static const AnalogVideo_NTSC_M = 0x00000001;
  static const AnalogVideo_NTSC_M_J = 0x00000002;
  static const AnalogVideo_NTSC_433 = 0x00000004;
  static const AnalogVideo_PAL_B = 0x00000010;
  static const AnalogVideo_PAL_D = 0x00000020;
  static const AnalogVideo_PAL_G = 0x00000040;
  static const AnalogVideo_PAL_H = 0x00000080;
  static const AnalogVideo_PAL_I = 0x00000100;
  static const AnalogVideo_PAL_M = 0x00000200;
  static const AnalogVideo_PAL_N = 0x00000400;
  static const AnalogVideo_PAL_60 = 0x00000800;
  static const AnalogVideo_SECAM_B = 0x00001000;
  static const AnalogVideo_SECAM_D = 0x00002000;
  static const AnalogVideo_SECAM_G = 0x00004000;
  static const AnalogVideo_SECAM_H = 0x00008000;
  static const AnalogVideo_SECAM_K = 0x00010000;
  static const AnalogVideo_SECAM_K1 = 0x00020000;
  static const AnalogVideo_SECAM_L = 0x00040000;
  static const AnalogVideo_SECAM_L1 = 0x00080000;
  static const AnalogVideo_PAL_N_COMBO = 0x00100000;
  static const AnalogVideoMask_MCE_NTSC = 0x00100e07;
  static const AnalogVideoMask_MCE_PAL = 0x000001f0;
  static const AnalogVideoMask_MCE_SECAM = 0x000ff000;
}

/// {@category Enum}
class ApplicationTypeType {
  static const SCTE28_ConditionalAccess = 0x00000000;
  static const SCTE28_POD_Host_Binding_Information = 0x00000001;
  static const SCTE28_IPService = 0x00000002;
  static const SCTE28_NetworkInterface_SCTE55_2 = 0x00000003;
  static const SCTE28_NetworkInterface_SCTE55_1 = 0x00000004;
  static const SCTE28_CopyProtection = 0x00000005;
  static const SCTE28_Diagnostic = 0x00000006;
  static const SCTE28_Undesignated = 0x00000007;
  static const SCTE28_Reserved = 0x00000008;
}

/// {@category Enum}
class BDA_CHANGE_STATE {
  static const BDA_CHANGES_COMPLETE = 0x00000000;
  static const BDA_CHANGES_PENDING = 0x00000001;
}

/// {@category Enum}
class BDA_CONDITIONALACCESS_MMICLOSEREASON {
  static const CONDITIONALACCESS_UNSPECIFIED = 0x00000000;
  static const CONDITIONALACCESS_CLOSED_ITSELF = 0x00000001;
  static const CONDITIONALACCESS_TUNER_REQUESTED_CLOSE = 0x00000002;
  static const CONDITIONALACCESS_DIALOG_TIMEOUT = 0x00000003;
  static const CONDITIONALACCESS_DIALOG_FOCUS_CHANGE = 0x00000004;
  static const CONDITIONALACCESS_DIALOG_USER_DISMISSED = 0x00000005;
  static const CONDITIONALACCESS_DIALOG_USER_NOT_AVAILABLE = 0x00000006;
}

/// {@category Enum}
class BDA_CONDITIONALACCESS_REQUESTTYPE {
  static const CONDITIONALACCESS_ACCESS_UNSPECIFIED = 0x00000000;
  static const CONDITIONALACCESS_ACCESS_NOT_POSSIBLE = 0x00000001;
  static const CONDITIONALACCESS_ACCESS_POSSIBLE = 0x00000002;
  static const CONDITIONALACCESS_ACCESS_POSSIBLE_NO_STREAMING_DISRUPTION =
      0x00000003;
}

/// {@category Enum}
class BDA_CONDITIONALACCESS_SESSION_RESULT {
  static const CONDITIONALACCESS_SUCCESSFULL = 0x00000000;
  static const CONDITIONALACCESS_ENDED_NOCHANGE = 0x00000001;
  static const CONDITIONALACCESS_ABORTED = 0x00000002;
}

/// {@category Enum}
class BDA_Channel {
  static const BDA_UNDEFINED_CHANNEL = 0xffffffff;
}

/// {@category Enum}
class BDA_Channel_Bandwidth {
  static const BDA_CHAN_BANDWITH_NOT_SET = 0xffffffff;
  static const BDA_CHAN_BANDWITH_NOT_DEFINED = 0x00000000;
}

/// {@category Enum}
class BDA_Comp_Flags {
  static const BDACOMP_NOT_DEFINED = 0x00000000;
  static const BDACOMP_EXCLUDE_TS_FROM_TR = 0x00000001;
  static const BDACOMP_INCLUDE_LOCATOR_IN_TR = 0x00000002;
  static const BDACOMP_INCLUDE_COMPONENTS_IN_TR = 0x00000004;
}

/// {@category Enum}
class BDA_DISCOVERY_STATE {
  static const BDA_DISCOVERY_UNSPECIFIED = 0x00000000;
  static const BDA_DISCOVERY_REQUIRED = 0x00000001;
  static const BDA_DISCOVERY_COMPLETE = 0x00000002;
}

/// {@category Enum}
class BDA_DigitalSignalStandard {
  static const Bda_DigitalStandard_None = 0x00000000;
  static const Bda_DigitalStandard_DVB_T = 0x00000001;
  static const Bda_DigitalStandard_DVB_S = 0x00000002;
  static const Bda_DigitalStandard_DVB_C = 0x00000004;
  static const Bda_DigitalStandard_ATSC = 0x00000008;
  static const Bda_DigitalStandard_ISDB_T = 0x00000010;
  static const Bda_DigitalStandard_ISDB_S = 0x00000020;
  static const Bda_DigitalStandard_ISDB_C = 0x00000040;
}

/// {@category Enum}
class BDA_DrmPairingError {
  static const BDA_DrmPairing_Succeeded = 0x00000000;
  static const BDA_DrmPairing_HardwareFailure = 0x00000001;
  static const BDA_DrmPairing_NeedRevocationData = 0x00000002;
  static const BDA_DrmPairing_NeedIndiv = 0x00000003;
  static const BDA_DrmPairing_Other = 0x00000004;
  static const BDA_DrmPairing_DrmInitFailed = 0x00000005;
  static const BDA_DrmPairing_DrmNotPaired = 0x00000006;
  static const BDA_DrmPairing_DrmRePairSoon = 0x00000007;
  static const BDA_DrmPairing_Aborted = 0x00000008;
  static const BDA_DrmPairing_NeedSDKUpdate = 0x00000009;
}

/// {@category Enum}
class BDA_EVENT_ID {
  static const BDA_EVENT_SIGNAL_LOSS = 0x00000000;
  static const BDA_EVENT_SIGNAL_LOCK = 0x00000001;
  static const BDA_EVENT_DATA_START = 0x00000002;
  static const BDA_EVENT_DATA_STOP = 0x00000003;
  static const BDA_EVENT_CHANNEL_ACQUIRED = 0x00000004;
  static const BDA_EVENT_CHANNEL_LOST = 0x00000005;
  static const BDA_EVENT_CHANNEL_SOURCE_CHANGED = 0x00000006;
  static const BDA_EVENT_CHANNEL_ACTIVATED = 0x00000007;
  static const BDA_EVENT_CHANNEL_DEACTIVATED = 0x00000008;
  static const BDA_EVENT_SUBCHANNEL_ACQUIRED = 0x00000009;
  static const BDA_EVENT_SUBCHANNEL_LOST = 0x0000000a;
  static const BDA_EVENT_SUBCHANNEL_SOURCE_CHANGED = 0x0000000b;
  static const BDA_EVENT_SUBCHANNEL_ACTIVATED = 0x0000000c;
  static const BDA_EVENT_SUBCHANNEL_DEACTIVATED = 0x0000000d;
  static const BDA_EVENT_ACCESS_GRANTED = 0x0000000e;
  static const BDA_EVENT_ACCESS_DENIED = 0x0000000f;
  static const BDA_EVENT_OFFER_EXTENDED = 0x00000010;
  static const BDA_EVENT_PURCHASE_COMPLETED = 0x00000011;
  static const BDA_EVENT_SMART_CARD_INSERTED = 0x00000012;
  static const BDA_EVENT_SMART_CARD_REMOVED = 0x00000013;
}

/// {@category Enum}
class BDA_Frequency {
  static const BDA_FREQUENCY_NOT_SET = 0xffffffff;
  static const BDA_FREQUENCY_NOT_DEFINED = 0x00000000;
}

/// {@category Enum}
class BDA_Frequency_Multiplier {
  static const BDA_FREQUENCY_MULTIPLIER_NOT_SET = 0xffffffff;
  static const BDA_FREQUENCY_MULTIPLIER_NOT_DEFINED = 0x00000000;
}

/// {@category Enum}
class BDA_LockType {
  static const Bda_LockType_None = 0x00000000;
  static const Bda_LockType_PLL = 0x00000001;
  static const Bda_LockType_DecoderDemod = 0x00000002;
  static const Bda_LockType_Complete = 0x00000080;
}

/// {@category Enum}
class BDA_MULTICAST_MODE {
  static const BDA_PROMISCUOUS_MULTICAST = 0x00000000;
  static const BDA_FILTERED_MULTICAST = 0x00000001;
  static const BDA_NO_MULTICAST = 0x00000002;
}

/// {@category Enum}
class BDA_Range {
  static const BDA_RANGE_NOT_SET = 0xffffffff;
  static const BDA_RANGE_NOT_DEFINED = 0x00000000;
}

/// {@category Enum}
class BDA_SIGNAL_STATE {
  static const BDA_SIGNAL_UNAVAILABLE = 0x00000000;
  static const BDA_SIGNAL_INACTIVE = 0x00000001;
  static const BDA_SIGNAL_ACTIVE = 0x00000002;
}

/// {@category Enum}
class BDA_SignalType {
  static const Bda_SignalType_Unknown = 0x00000000;
  static const Bda_SignalType_Analog = 0x00000001;
  static const Bda_SignalType_Digital = 0x00000002;
}

/// {@category Enum}
class BfEnTvRat_Attributes_CAE_TV {
  static const CAE_IsBlocked = 0x00000001;
  static const CAE_ValidAttrSubmask = 0x00000001;
}

/// {@category Enum}
class BfEnTvRat_Attributes_CAF_TV {
  static const CAF_IsBlocked = 0x00000001;
  static const CAF_ValidAttrSubmask = 0x00000001;
}

/// {@category Enum}
class BfEnTvRat_Attributes_MPAA {
  static const MPAA_IsBlocked = 0x00000001;
  static const MPAA_ValidAttrSubmask = 0x00000001;
}

/// {@category Enum}
class BfEnTvRat_Attributes_US_TV {
  static const US_TV_IsBlocked = 0x00000001;
  static const US_TV_IsViolent = 0x00000002;
  static const US_TV_IsSexualSituation = 0x00000004;
  static const US_TV_IsAdultLanguage = 0x00000008;
  static const US_TV_IsSexuallySuggestiveDialog = 0x00000010;
  static const US_TV_ValidAttrSubmask = 0x0000001f;
}

/// {@category Enum}
class BfEnTvRat_GenericAttributes {
  static const BfAttrNone = 0x00000000;
  static const BfIsBlocked = 0x00000001;
  static const BfIsAttr_1 = 0x00000002;
  static const BfIsAttr_2 = 0x00000004;
  static const BfIsAttr_3 = 0x00000008;
  static const BfIsAttr_4 = 0x00000010;
  static const BfIsAttr_5 = 0x00000020;
  static const BfIsAttr_6 = 0x00000040;
  static const BfIsAttr_7 = 0x00000080;
  static const BfValidAttrSubmask = 0x000000ff;
}

/// {@category Enum}
class BinaryConvolutionCodeRate {
  static const BDA_BCC_RATE_NOT_SET = 0xffffffff;
  static const BDA_BCC_RATE_NOT_DEFINED = 0x00000000;
  static const BDA_BCC_RATE_1_2 = 0x00000001;
  static const BDA_BCC_RATE_2_3 = 0x00000002;
  static const BDA_BCC_RATE_3_4 = 0x00000003;
  static const BDA_BCC_RATE_3_5 = 0x00000004;
  static const BDA_BCC_RATE_4_5 = 0x00000005;
  static const BDA_BCC_RATE_5_6 = 0x00000006;
  static const BDA_BCC_RATE_5_11 = 0x00000007;
  static const BDA_BCC_RATE_7_8 = 0x00000008;
  static const BDA_BCC_RATE_1_4 = 0x00000009;
  static const BDA_BCC_RATE_1_3 = 0x0000000a;
  static const BDA_BCC_RATE_2_5 = 0x0000000b;
  static const BDA_BCC_RATE_6_7 = 0x0000000c;
  static const BDA_BCC_RATE_8_9 = 0x0000000d;
  static const BDA_BCC_RATE_9_10 = 0x0000000e;
  static const BDA_BCC_RATE_MAX = 0x0000000f;
}

/// {@category Enum}
class COLORKEY_TYPE {
  static const CK_NOCOLORKEY = 0x00000000;
  static const CK_INDEX = 0x00000001;
  static const CK_RGB = 0x00000002;
}

/// {@category Enum}
class COMPLETION_STATUS_FLAGS {
  static const COMPSTAT_NOUPDATEOK = 0x00000001;
  static const COMPSTAT_WAIT = 0x00000002;
  static const COMPSTAT_ABORT = 0x00000004;
}

/// {@category Enum}
class COPPEventBlockReason {
  static const COPP_Unknown = 0xffffffff;
  static const COPP_BadDriver = 0x00000000;
  static const COPP_NoCardHDCPSupport = 0x00000001;
  static const COPP_NoMonitorHDCPSupport = 0x00000002;
  static const COPP_BadCertificate = 0x00000003;
  static const COPP_InvalidBusProtection = 0x00000004;
  static const COPP_AeroGlassOff = 0x00000005;
  static const COPP_RogueApp = 0x00000006;
  static const COPP_ForbiddenVideo = 0x00000007;
  static const COPP_Activate = 0x00000008;
  static const COPP_DigitalAudioUnprotected = 0x00000009;
}

/// {@category Enum}
class COPP_ACP_Protection_Level {
  static const COPP_ACP_Level0 = 0x00000000;
  static const COPP_ACP_LevelMin = 0x00000000;
  static const COPP_ACP_Level1 = 0x00000001;
  static const COPP_ACP_Level2 = 0x00000002;
  static const COPP_ACP_Level3 = 0x00000003;
  static const COPP_ACP_LevelMax = 0x00000003;
  static const COPP_ACP_ForceDWORD = 0x7fffffff;
}

/// {@category Enum}
class COPP_BusType {
  static const COPP_BusType_Unknown = 0x00000000;
  static const COPP_BusType_PCI = 0x00000001;
  static const COPP_BusType_PCIX = 0x00000002;
  static const COPP_BusType_PCIExpress = 0x00000003;
  static const COPP_BusType_AGP = 0x00000004;
  static const COPP_BusType_Integrated = 0x80000000;
  static const COPP_BusType_ForceDWORD = 0x7fffffff;
}

/// {@category Enum}
class COPP_CGMSA_Protection_Level {
  static const COPP_CGMSA_Disabled = 0x00000000;
  static const COPP_CGMSA_LevelMin = 0x00000000;
  static const COPP_CGMSA_CopyFreely = 0x00000001;
  static const COPP_CGMSA_CopyNoMore = 0x00000002;
  static const COPP_CGMSA_CopyOneGeneration = 0x00000003;
  static const COPP_CGMSA_CopyNever = 0x00000004;
  static const COPP_CGMSA_RedistributionControlRequired = 0x00000008;
  static const COPP_CGMSA_LevelMax = 0x0000000c;
  static const COPP_CGMSA_ForceDWORD = 0x7fffffff;
}

/// {@category Enum}
class COPP_ConnectorType {
  static const COPP_ConnectorType_Unknown = 0xffffffff;
  static const COPP_ConnectorType_VGA = 0x00000000;
  static const COPP_ConnectorType_SVideo = 0x00000001;
  static const COPP_ConnectorType_CompositeVideo = 0x00000002;
  static const COPP_ConnectorType_ComponentVideo = 0x00000003;
  static const COPP_ConnectorType_DVI = 0x00000004;
  static const COPP_ConnectorType_HDMI = 0x00000005;
  static const COPP_ConnectorType_LVDS = 0x00000006;
  static const COPP_ConnectorType_TMDS = 0x00000007;
  static const COPP_ConnectorType_D_JPN = 0x00000008;
  static const COPP_ConnectorType_Internal = 0x80000000;
  static const COPP_ConnectorType_ForceDWORD = 0x7fffffff;
}

/// {@category Enum}
class COPP_HDCP_Protection_Level {
  static const COPP_HDCP_Level0 = 0x00000000;
  static const COPP_HDCP_LevelMin = 0x00000000;
  static const COPP_HDCP_Level1 = 0x00000001;
  static const COPP_HDCP_LevelMax = 0x00000001;
  static const COPP_HDCP_ForceDWORD = 0x7fffffff;
}

/// {@category Enum}
class COPP_ImageAspectRatio_EN300294 {
  static const COPP_AspectRatio_EN300294_FullFormat4by3 = 0x00000000;
  static const COPP_AspectRatio_EN300294_Box14by9Center = 0x00000001;
  static const COPP_AspectRatio_EN300294_Box14by9Top = 0x00000002;
  static const COPP_AspectRatio_EN300294_Box16by9Center = 0x00000003;
  static const COPP_AspectRatio_EN300294_Box16by9Top = 0x00000004;
  static const COPP_AspectRatio_EN300294_BoxGT16by9Center = 0x00000005;
  static const COPP_AspectRatio_EN300294_FullFormat4by3ProtectedCenter =
      0x00000006;
  static const COPP_AspectRatio_EN300294_FullFormat16by9Anamorphic = 0x00000007;
  static const COPP_AspectRatio_ForceDWORD = 0x7fffffff;
}

/// {@category Enum}
class COPP_StatusFlags {
  static const COPP_StatusNormal = 0x00000000;
  static const COPP_LinkLost = 0x00000001;
  static const COPP_RenegotiationRequired = 0x00000002;
  static const COPP_StatusFlagsReserved = 0xfffffffc;
}

/// {@category Enum}
class COPP_StatusHDCPFlags {
  static const COPP_HDCPRepeater = 0x00000001;
  static const COPP_HDCPFlagsReserved = 0xfffffffe;
}

/// {@category Enum}
class COPP_TVProtectionStandard {
  static const COPP_ProtectionStandard_Unknown = 0x80000000;
  static const COPP_ProtectionStandard_None = 0x00000000;
  static const COPP_ProtectionStandard_IEC61880_525i = 0x00000001;
  static const COPP_ProtectionStandard_IEC61880_2_525i = 0x00000002;
  static const COPP_ProtectionStandard_IEC62375_625p = 0x00000004;
  static const COPP_ProtectionStandard_EIA608B_525 = 0x00000008;
  static const COPP_ProtectionStandard_EN300294_625i = 0x00000010;
  static const COPP_ProtectionStandard_CEA805A_TypeA_525p = 0x00000020;
  static const COPP_ProtectionStandard_CEA805A_TypeA_750p = 0x00000040;
  static const COPP_ProtectionStandard_CEA805A_TypeA_1125i = 0x00000080;
  static const COPP_ProtectionStandard_CEA805A_TypeB_525p = 0x00000100;
  static const COPP_ProtectionStandard_CEA805A_TypeB_750p = 0x00000200;
  static const COPP_ProtectionStandard_CEA805A_TypeB_1125i = 0x00000400;
  static const COPP_ProtectionStandard_ARIBTRB15_525i = 0x00000800;
  static const COPP_ProtectionStandard_ARIBTRB15_525p = 0x00001000;
  static const COPP_ProtectionStandard_ARIBTRB15_750p = 0x00002000;
  static const COPP_ProtectionStandard_ARIBTRB15_1125i = 0x00004000;
  static const COPP_ProtectionStandard_Mask = 0x80007fff;
  static const COPP_ProtectionStandard_Reserved = 0x7fff8000;
}

/// {@category Enum}
class CPEventBitShift {
  static const CPEVENT_BITSHIFT_RATINGS = 0x00000000;
  static const CPEVENT_BITSHIFT_COPP = 0x00000001;
  static const CPEVENT_BITSHIFT_LICENSE = 0x00000002;
  static const CPEVENT_BITSHIFT_ROLLBACK = 0x00000003;
  static const CPEVENT_BITSHIFT_SAC = 0x00000004;
  static const CPEVENT_BITSHIFT_DOWNRES = 0x00000005;
  static const CPEVENT_BITSHIFT_STUBLIB = 0x00000006;
  static const CPEVENT_BITSHIFT_UNTRUSTEDGRAPH = 0x00000007;
  static const CPEVENT_BITSHIFT_PENDING_CERTIFICATE = 0x00000008;
  static const CPEVENT_BITSHIFT_NO_PLAYREADY = 0x00000009;
}

/// {@category Enum}
class CPEvents {
  static const CPEVENT_NONE = 0x00000000;
  static const CPEVENT_RATINGS = 0x00000001;
  static const CPEVENT_COPP = 0x00000002;
  static const CPEVENT_LICENSE = 0x00000003;
  static const CPEVENT_ROLLBACK = 0x00000004;
  static const CPEVENT_SAC = 0x00000005;
  static const CPEVENT_DOWNRES = 0x00000006;
  static const CPEVENT_STUBLIB = 0x00000007;
  static const CPEVENT_UNTRUSTEDGRAPH = 0x00000008;
  static const CPEVENT_PROTECTWINDOWED = 0x00000009;
}

/// {@category Enum}
class CPRecordingStatus {
  static const RECORDING_STOPPED = 0x00000000;
  static const RECORDING_STARTED = 0x00000001;
}

/// {@category Enum}
class CRID_LOCATION {
  static const CRID_LOCATION_IN_DESCRIPTOR = 0x00000000;
  static const CRID_LOCATION_IN_CIT = 0x00000001;
  static const CRID_LOCATION_DVB_RESERVED1 = 0x00000002;
  static const CRID_LOCATION_DVB_RESERVED2 = 0x00000003;
}

/// {@category Enum}
class CROSSBAR_DEFAULT_FLAGS {
  static const DEF_MODE_PROFILE = 0x00000001;
  static const DEF_MODE_STREAMS = 0x00000002;
}

/// {@category Enum}
class CameraControlFlags {
  static const CameraControl_Flags_Auto = 0x00000001;
  static const CameraControl_Flags_Manual = 0x00000002;
}

/// {@category Enum}
class CameraControlProperty {
  static const CameraControl_Pan = 0x00000000;
  static const CameraControl_Tilt = 0x00000001;
  static const CameraControl_Roll = 0x00000002;
  static const CameraControl_Zoom = 0x00000003;
  static const CameraControl_Exposure = 0x00000004;
  static const CameraControl_Iris = 0x00000005;
  static const CameraControl_Focus = 0x00000006;
}

/// {@category Enum}
class ChannelChangeSpanningEvent_State {
  static const ChannelChangeSpanningEvent_Start = 0x00000000;
  static const ChannelChangeSpanningEvent_End = 0x00000002;
}

/// {@category Enum}
class ChannelType {
  static const ChannelTypeNone = 0x00000000;
  static const ChannelTypeOther = 0x00000001;
  static const ChannelTypeVideo = 0x00000002;
  static const ChannelTypeAudio = 0x00000004;
  static const ChannelTypeText = 0x00000008;
  static const ChannelTypeSubtitles = 0x00000010;
  static const ChannelTypeCaptions = 0x00000020;
  static const ChannelTypeSuperimpose = 0x00000040;
  static const ChannelTypeData = 0x00000080;
}

/// {@category Enum}
class ComponentCategory {
  static const CategoryNotSet = 0xffffffff;
  static const CategoryOther = 0x00000000;
  static const CategoryVideo = 0x00000001;
  static const CategoryAudio = 0x00000002;
  static const CategoryText = 0x00000003;
  static const CategorySubtitles = 0x00000004;
  static const CategoryCaptions = 0x00000005;
  static const CategorySuperimpose = 0x00000006;
  static const CategoryData = 0x00000007;
  static const CATEGORY_COUNT = 0x00000008;
}

/// {@category Enum}
class ComponentStatus {
  static const StatusActive = 0x00000000;
  static const StatusInactive = 0x00000001;
  static const StatusUnavailable = 0x00000002;
}

/// {@category Enum}
class CompressionCaps {
  static const CompressionCaps_CanQuality = 0x00000001;
  static const CompressionCaps_CanCrunch = 0x00000002;
  static const CompressionCaps_CanKeyFrame = 0x00000004;
  static const CompressionCaps_CanBFrame = 0x00000008;
  static const CompressionCaps_CanWindow = 0x00000010;
}

/// {@category Enum}
class DDSFF_FLAGS {
  static const DDSFF_PROGRESSIVERENDER = 0x00000001;
}

/// {@category Enum}
class DECIMATION_USAGE {
  static const DECIMATION_LEGACY = 0x00000000;
  static const DECIMATION_USE_DECODER_ONLY = 0x00000001;
  static const DECIMATION_USE_VIDEOPORT_ONLY = 0x00000002;
  static const DECIMATION_USE_OVERLAY_ONLY = 0x00000003;
  static const DECIMATION_DEFAULT = 0x00000004;
}

/// {@category Enum}
class DESC_LINKAGE_TYPE {
  static const DESC_LINKAGE_RESERVED0 = 0x00000000;
  static const DESC_LINKAGE_INFORMATION = 0x00000001;
  static const DESC_LINKAGE_EPG = 0x00000002;
  static const DESC_LINKAGE_CA_REPLACEMENT = 0x00000003;
  static const DESC_LINKAGE_COMPLETE_NET_BOUQUET_SI = 0x00000004;
  static const DESC_LINKAGE_REPLACEMENT = 0x00000005;
  static const DESC_LINKAGE_DATA = 0x00000006;
  static const DESC_LINKAGE_RESERVED1 = 0x00000007;
  static const DESC_LINKAGE_USER = 0x00000008;
  static const DESC_LINKAGE_RESERVED2 = 0x000000ff;
}

/// {@category Enum}
class DISPID_TUNER {
  static const DISPID_TUNER_TS_UNIQUENAME = 0x00000001;
  static const DISPID_TUNER_TS_FRIENDLYNAME = 0x00000002;
  static const DISPID_TUNER_TS_CLSID = 0x00000003;
  static const DISPID_TUNER_TS_NETWORKTYPE = 0x00000004;
  static const DISPID_TUNER_TS__NETWORKTYPE = 0x00000005;
  static const DISPID_TUNER_TS_CREATETUNEREQUEST = 0x00000006;
  static const DISPID_TUNER_TS_ENUMCATEGORYGUIDS = 0x00000007;
  static const DISPID_TUNER_TS_ENUMDEVICEMONIKERS = 0x00000008;
  static const DISPID_TUNER_TS_DEFAULTPREFERREDCOMPONENTTYPES = 0x00000009;
  static const DISPID_TUNER_TS_FREQMAP = 0x0000000a;
  static const DISPID_TUNER_TS_DEFLOCATOR = 0x0000000b;
  static const DISPID_TUNER_TS_CLONE = 0x0000000c;
  static const DISPID_TUNER_TR_TUNINGSPACE = 0x00000001;
  static const DISPID_TUNER_TR_COMPONENTS = 0x00000002;
  static const DISPID_TUNER_TR_CLONE = 0x00000003;
  static const DISPID_TUNER_TR_LOCATOR = 0x00000004;
  static const DISPID_TUNER_CT_CATEGORY = 0x00000001;
  static const DISPID_TUNER_CT_MEDIAMAJORTYPE = 0x00000002;
  static const DISPID_TUNER_CT__MEDIAMAJORTYPE = 0x00000003;
  static const DISPID_TUNER_CT_MEDIASUBTYPE = 0x00000004;
  static const DISPID_TUNER_CT__MEDIASUBTYPE = 0x00000005;
  static const DISPID_TUNER_CT_MEDIAFORMATTYPE = 0x00000006;
  static const DISPID_TUNER_CT__MEDIAFORMATTYPE = 0x00000007;
  static const DISPID_TUNER_CT_MEDIATYPE = 0x00000008;
  static const DISPID_TUNER_CT_CLONE = 0x00000009;
  static const DISPID_TUNER_LCT_LANGID = 0x00000064;
  static const DISPID_TUNER_MP2CT_TYPE = 0x000000c8;
  static const DISPID_TUNER_ATSCCT_FLAGS = 0x0000012c;
  static const DISPID_TUNER_L_CARRFREQ = 0x00000001;
  static const DISPID_TUNER_L_INNERFECMETHOD = 0x00000002;
  static const DISPID_TUNER_L_INNERFECRATE = 0x00000003;
  static const DISPID_TUNER_L_OUTERFECMETHOD = 0x00000004;
  static const DISPID_TUNER_L_OUTERFECRATE = 0x00000005;
  static const DISPID_TUNER_L_MOD = 0x00000006;
  static const DISPID_TUNER_L_SYMRATE = 0x00000007;
  static const DISPID_TUNER_L_CLONE = 0x00000008;
  static const DISPID_TUNER_L_ATSC_PHYS_CHANNEL = 0x000000c9;
  static const DISPID_TUNER_L_ATSC_TSID = 0x000000ca;
  static const DISPID_TUNER_L_ATSC_MP2_PROGNO = 0x000000cb;
  static const DISPID_TUNER_L_DVBT_BANDWIDTH = 0x0000012d;
  static const DISPID_TUNER_L_DVBT_LPINNERFECMETHOD = 0x0000012e;
  static const DISPID_TUNER_L_DVBT_LPINNERFECRATE = 0x0000012f;
  static const DISPID_TUNER_L_DVBT_GUARDINTERVAL = 0x00000130;
  static const DISPID_TUNER_L_DVBT_HALPHA = 0x00000131;
  static const DISPID_TUNER_L_DVBT_TRANSMISSIONMODE = 0x00000132;
  static const DISPID_TUNER_L_DVBT_INUSE = 0x00000133;
  static const DISPID_TUNER_L_DVBT2_PHYSICALLAYERPIPEID = 0x0000015f;
  static const DISPID_TUNER_L_DVBS_POLARISATION = 0x00000191;
  static const DISPID_TUNER_L_DVBS_WEST = 0x00000192;
  static const DISPID_TUNER_L_DVBS_ORBITAL = 0x00000193;
  static const DISPID_TUNER_L_DVBS_AZIMUTH = 0x00000194;
  static const DISPID_TUNER_L_DVBS_ELEVATION = 0x00000195;
  static const DISPID_TUNER_L_DVBS2_DISEQ_LNB_SOURCE = 0x00000196;
  static const DISPID_TUNER_TS_DVBS2_LOW_OSC_FREQ_OVERRIDE = 0x00000197;
  static const DISPID_TUNER_TS_DVBS2_HI_OSC_FREQ_OVERRIDE = 0x00000198;
  static const DISPID_TUNER_TS_DVBS2_LNB_SWITCH_FREQ_OVERRIDE = 0x00000199;
  static const DISPID_TUNER_TS_DVBS2_SPECTRAL_INVERSION_OVERRIDE = 0x0000019a;
  static const DISPID_TUNER_L_DVBS2_ROLLOFF = 0x0000019b;
  static const DISPID_TUNER_L_DVBS2_PILOT = 0x0000019c;
  static const DISPID_TUNER_L_ANALOG_STANDARD = 0x00000259;
  static const DISPID_TUNER_L_DTV_O_MAJOR_CHANNEL = 0x000002bd;
  static const DISPID_TUNER_C_TYPE = 0x00000001;
  static const DISPID_TUNER_C_STATUS = 0x00000002;
  static const DISPID_TUNER_C_LANGID = 0x00000003;
  static const DISPID_TUNER_C_DESCRIPTION = 0x00000004;
  static const DISPID_TUNER_C_CLONE = 0x00000005;
  static const DISPID_TUNER_C_MP2_PID = 0x00000065;
  static const DISPID_TUNER_C_MP2_PCRPID = 0x00000066;
  static const DISPID_TUNER_C_MP2_PROGNO = 0x00000067;
  static const DISPID_TUNER_C_ANALOG_AUDIO = 0x000000c9;
  static const DISPID_TUNER_TS_DVB_SYSTEMTYPE = 0x00000065;
  static const DISPID_TUNER_TS_DVB2_NETWORK_ID = 0x00000066;
  static const DISPID_TUNER_TS_DVBS_LOW_OSC_FREQ = 0x000003e9;
  static const DISPID_TUNER_TS_DVBS_HI_OSC_FREQ = 0x000003ea;
  static const DISPID_TUNER_TS_DVBS_LNB_SWITCH_FREQ = 0x000003eb;
  static const DISPID_TUNER_TS_DVBS_INPUT_RANGE = 0x000003ec;
  static const DISPID_TUNER_TS_DVBS_SPECTRAL_INVERSION = 0x000003ed;
  static const DISPID_TUNER_TS_AR_MINFREQUENCY = 0x00000065;
  static const DISPID_TUNER_TS_AR_MAXFREQUENCY = 0x00000066;
  static const DISPID_TUNER_TS_AR_STEP = 0x00000067;
  static const DISPID_TUNER_TS_AR_COUNTRYCODE = 0x00000068;
  static const DISPID_TUNER_TS_AUX_COUNTRYCODE = 0x00000065;
  static const DISPID_TUNER_TS_ATV_MINCHANNEL = 0x00000065;
  static const DISPID_TUNER_TS_ATV_MAXCHANNEL = 0x00000066;
  static const DISPID_TUNER_TS_ATV_INPUTTYPE = 0x00000067;
  static const DISPID_TUNER_TS_ATV_COUNTRYCODE = 0x00000068;
  static const DISPID_TUNER_TS_ATSC_MINMINORCHANNEL = 0x000000c9;
  static const DISPID_TUNER_TS_ATSC_MAXMINORCHANNEL = 0x000000ca;
  static const DISPID_TUNER_TS_ATSC_MINPHYSCHANNEL = 0x000000cb;
  static const DISPID_TUNER_TS_ATSC_MAXPHYSCHANNEL = 0x000000cc;
  static const DISPID_TUNER_TS_DC_MINMAJORCHANNEL = 0x0000012d;
  static const DISPID_TUNER_TS_DC_MAXMAJORCHANNEL = 0x0000012e;
  static const DISPID_TUNER_TS_DC_MINSOURCEID = 0x0000012f;
  static const DISPID_TUNER_TS_DC_MAXSOURCEID = 0x00000130;
  static const DISPID_CHTUNER_ATVAC_CHANNEL = 0x00000065;
  static const DISPID_CHTUNER_ATVDC_SYSTEM = 0x00000065;
  static const DISPID_CHTUNER_ATVDC_CONTENT = 0x00000066;
  static const DISPID_CHTUNER_CIDTR_CHANNELID = 0x00000065;
  static const DISPID_CHTUNER_CTR_CHANNEL = 0x00000065;
  static const DISPID_CHTUNER_ACTR_MINOR_CHANNEL = 0x000000c9;
  static const DISPID_CHTUNER_DCTR_MAJOR_CHANNEL = 0x0000012d;
  static const DISPID_CHTUNER_DCTR_SRCID = 0x0000012e;
  static const DISPID_DVBTUNER_DVBC_ATTRIBUTESVALID = 0x00000065;
  static const DISPID_DVBTUNER_DVBC_PID = 0x00000066;
  static const DISPID_DVBTUNER_DVBC_TAG = 0x00000067;
  static const DISPID_DVBTUNER_DVBC_COMPONENTTYPE = 0x00000068;
  static const DISPID_DVBTUNER_ONID = 0x00000065;
  static const DISPID_DVBTUNER_TSID = 0x00000066;
  static const DISPID_DVBTUNER_SID = 0x00000067;
  static const DISPID_MP2TUNER_TSID = 0x00000065;
  static const DISPID_MP2TUNER_PROGNO = 0x00000066;
  static const DISPID_MP2TUNERFACTORY_CREATETUNEREQUEST = 0x00000001;
}

/// {@category Enum}
class DMO_ENUM_FLAGS {
  static const DMO_ENUMF_INCLUDE_KEYED = 0x00000001;
}

/// {@category Enum}
class DMO_REGISTER_FLAGS {
  static const DMO_REGISTERF_IS_KEYED = 0x00000001;
}

/// {@category Enum}
class DVBSystemType {
  static const DVB_Cable = 0x00000000;
  static const DVB_Terrestrial = 0x00000001;
  static const DVB_Satellite = 0x00000002;
  static const ISDB_Terrestrial = 0x00000003;
  static const ISDB_Satellite = 0x00000004;
}

/// {@category Enum}
class DVB_STRCONV_MODE {
  static const STRCONV_MODE_DVB = 0x00000000;
  static const STRCONV_MODE_DVB_EMPHASIS = 0x00000001;
  static const STRCONV_MODE_DVB_WITHOUT_EMPHASIS = 0x00000002;
  static const STRCONV_MODE_ISDB = 0x00000003;
}

/// {@category Enum}
class DVDFilterState {
  static const dvdState_Undefined = 0xfffffffe;
  static const dvdState_Unitialized = 0xffffffff;
  static const dvdState_Stopped = 0x00000000;
  static const dvdState_Paused = 0x00000001;
  static const dvdState_Running = 0x00000002;
}

/// {@category Enum}
class DVDMenuIDConstants {
  static const dvdMenu_Title = 0x00000002;
  static const dvdMenu_Root = 0x00000003;
  static const dvdMenu_Subpicture = 0x00000004;
  static const dvdMenu_Audio = 0x00000005;
  static const dvdMenu_Angle = 0x00000006;
  static const dvdMenu_Chapter = 0x00000007;
}

/// {@category Enum}
class DVDSPExt {
  static const dvdSPExt_NotSpecified = 0x00000000;
  static const dvdSPExt_Caption_Normal = 0x00000001;
  static const dvdSPExt_Caption_Big = 0x00000002;
  static const dvdSPExt_Caption_Children = 0x00000003;
  static const dvdSPExt_CC_Normal = 0x00000005;
  static const dvdSPExt_CC_Big = 0x00000006;
  static const dvdSPExt_CC_Children = 0x00000007;
  static const dvdSPExt_Forced = 0x00000009;
  static const dvdSPExt_DirectorComments_Normal = 0x0000000d;
  static const dvdSPExt_DirectorComments_Big = 0x0000000e;
  static const dvdSPExt_DirectorComments_Children = 0x0000000f;
}

/// {@category Enum}
class DVDTextStringType {
  static const dvdStruct_Volume = 0x00000001;
  static const dvdStruct_Title = 0x00000002;
  static const dvdStruct_ParentalID = 0x00000003;
  static const dvdStruct_PartOfTitle = 0x00000004;
  static const dvdStruct_Cell = 0x00000005;
  static const dvdStream_Audio = 0x00000010;
  static const dvdStream_Subpicture = 0x00000011;
  static const dvdStream_Angle = 0x00000012;
  static const dvdChannel_Audio = 0x00000020;
  static const dvdGeneral_Name = 0x00000030;
  static const dvdGeneral_Comments = 0x00000031;
  static const dvdTitle_Series = 0x00000038;
  static const dvdTitle_Movie = 0x00000039;
  static const dvdTitle_Video = 0x0000003a;
  static const dvdTitle_Album = 0x0000003b;
  static const dvdTitle_Song = 0x0000003c;
  static const dvdTitle_Other = 0x0000003f;
  static const dvdTitle_Sub_Series = 0x00000040;
  static const dvdTitle_Sub_Movie = 0x00000041;
  static const dvdTitle_Sub_Video = 0x00000042;
  static const dvdTitle_Sub_Album = 0x00000043;
  static const dvdTitle_Sub_Song = 0x00000044;
  static const dvdTitle_Sub_Other = 0x00000047;
  static const dvdTitle_Orig_Series = 0x00000048;
  static const dvdTitle_Orig_Movie = 0x00000049;
  static const dvdTitle_Orig_Video = 0x0000004a;
  static const dvdTitle_Orig_Album = 0x0000004b;
  static const dvdTitle_Orig_Song = 0x0000004c;
  static const dvdTitle_Orig_Other = 0x0000004f;
  static const dvdOther_Scene = 0x00000050;
  static const dvdOther_Cut = 0x00000051;
  static const dvdOther_Take = 0x00000052;
}

/// {@category Enum}
class DVD_AUDIO_APPMODE {
  static const DVD_AudioMode_None = 0x00000000;
  static const DVD_AudioMode_Karaoke = 0x00000001;
  static const DVD_AudioMode_Surround = 0x00000002;
  static const DVD_AudioMode_Other = 0x00000003;
}

/// {@category Enum}
class DVD_AUDIO_FORMAT {
  static const DVD_AudioFormat_AC3 = 0x00000000;
  static const DVD_AudioFormat_MPEG1 = 0x00000001;
  static const DVD_AudioFormat_MPEG1_DRC = 0x00000002;
  static const DVD_AudioFormat_MPEG2 = 0x00000003;
  static const DVD_AudioFormat_MPEG2_DRC = 0x00000004;
  static const DVD_AudioFormat_LPCM = 0x00000005;
  static const DVD_AudioFormat_DTS = 0x00000006;
  static const DVD_AudioFormat_SDDS = 0x00000007;
  static const DVD_AudioFormat_Other = 0x00000008;
}

/// {@category Enum}
class DVD_AUDIO_LANG_EXT {
  static const DVD_AUD_EXT_NotSpecified = 0x00000000;
  static const DVD_AUD_EXT_Captions = 0x00000001;
  static const DVD_AUD_EXT_VisuallyImpaired = 0x00000002;
  static const DVD_AUD_EXT_DirectorComments1 = 0x00000003;
  static const DVD_AUD_EXT_DirectorComments2 = 0x00000004;
}

/// {@category Enum}
class DVD_CMD_FLAGS {
  static const DVD_CMD_FLAG_None = 0x00000000;
  static const DVD_CMD_FLAG_Flush = 0x00000001;
  static const DVD_CMD_FLAG_SendEvents = 0x00000002;
  static const DVD_CMD_FLAG_Block = 0x00000004;
  static const DVD_CMD_FLAG_StartWhenRendered = 0x00000008;
  static const DVD_CMD_FLAG_EndAfterRendered = 0x00000010;
}

/// {@category Enum}
class DVD_DISC_SIDE {
  static const DVD_SIDE_A = 0x00000001;
  static const DVD_SIDE_B = 0x00000002;
}

/// {@category Enum}
class DVD_DOMAIN {
  static const DVD_DOMAIN_FirstPlay = 0x00000001;
  static const DVD_DOMAIN_VideoManagerMenu = 0x00000002;
  static const DVD_DOMAIN_VideoTitleSetMenu = 0x00000003;
  static const DVD_DOMAIN_Title = 0x00000004;
  static const DVD_DOMAIN_Stop = 0x00000005;
}

/// {@category Enum}
class DVD_ERROR {
  static const DVD_ERROR_Unexpected = 0x00000001;
  static const DVD_ERROR_CopyProtectFail = 0x00000002;
  static const DVD_ERROR_InvalidDVD1_0Disc = 0x00000003;
  static const DVD_ERROR_InvalidDiscRegion = 0x00000004;
  static const DVD_ERROR_LowParentalLevel = 0x00000005;
  static const DVD_ERROR_MacrovisionFail = 0x00000006;
  static const DVD_ERROR_IncompatibleSystemAndDecoderRegions = 0x00000007;
  static const DVD_ERROR_IncompatibleDiscAndDecoderRegions = 0x00000008;
  static const DVD_ERROR_CopyProtectOutputFail = 0x00000009;
  static const DVD_ERROR_CopyProtectOutputNotSupported = 0x0000000a;
}

/// {@category Enum}
class DVD_FRAMERATE {
  static const DVD_FPS_25 = 0x00000001;
  static const DVD_FPS_30NonDrop = 0x00000003;
}

/// {@category Enum}
class DVD_KARAOKE_ASSIGNMENT {
  static const DVD_Assignment_reserved0 = 0x00000000;
  static const DVD_Assignment_reserved1 = 0x00000001;
  static const DVD_Assignment_LR = 0x00000002;
  static const DVD_Assignment_LRM = 0x00000003;
  static const DVD_Assignment_LR1 = 0x00000004;
  static const DVD_Assignment_LRM1 = 0x00000005;
  static const DVD_Assignment_LR12 = 0x00000006;
  static const DVD_Assignment_LRM12 = 0x00000007;
}

/// {@category Enum}
class DVD_KARAOKE_CONTENTS {
  static const DVD_Karaoke_GuideVocal1 = 0x00000001;
  static const DVD_Karaoke_GuideVocal2 = 0x00000002;
  static const DVD_Karaoke_GuideMelody1 = 0x00000004;
  static const DVD_Karaoke_GuideMelody2 = 0x00000008;
  static const DVD_Karaoke_GuideMelodyA = 0x00000010;
  static const DVD_Karaoke_GuideMelodyB = 0x00000020;
  static const DVD_Karaoke_SoundEffectA = 0x00000040;
  static const DVD_Karaoke_SoundEffectB = 0x00000080;
}

/// {@category Enum}
class DVD_KARAOKE_DOWNMIX {
  static const DVD_Mix_0to0 = 0x00000001;
  static const DVD_Mix_1to0 = 0x00000002;
  static const DVD_Mix_2to0 = 0x00000004;
  static const DVD_Mix_3to0 = 0x00000008;
  static const DVD_Mix_4to0 = 0x00000010;
  static const DVD_Mix_Lto0 = 0x00000020;
  static const DVD_Mix_Rto0 = 0x00000040;
  static const DVD_Mix_0to1 = 0x00000100;
  static const DVD_Mix_1to1 = 0x00000200;
  static const DVD_Mix_2to1 = 0x00000400;
  static const DVD_Mix_3to1 = 0x00000800;
  static const DVD_Mix_4to1 = 0x00001000;
  static const DVD_Mix_Lto1 = 0x00002000;
  static const DVD_Mix_Rto1 = 0x00004000;
}

/// {@category Enum}
class DVD_MENU_ID {
  static const DVD_MENU_Title = 0x00000002;
  static const DVD_MENU_Root = 0x00000003;
  static const DVD_MENU_Subpicture = 0x00000004;
  static const DVD_MENU_Audio = 0x00000005;
  static const DVD_MENU_Angle = 0x00000006;
  static const DVD_MENU_Chapter = 0x00000007;
}

/// {@category Enum}
class DVD_NavCmdType {
  static const DVD_NavCmdType_Pre = 0x00000001;
  static const DVD_NavCmdType_Post = 0x00000002;
  static const DVD_NavCmdType_Cell = 0x00000003;
  static const DVD_NavCmdType_Button = 0x00000004;
}

/// {@category Enum}
class DVD_OPTION_FLAG {
  static const DVD_ResetOnStop = 0x00000001;
  static const DVD_NotifyParentalLevelChange = 0x00000002;
  static const DVD_HMSF_TimeCodeEvents = 0x00000003;
  static const DVD_AudioDuringFFwdRew = 0x00000004;
  static const DVD_EnableNonblockingAPIs = 0x00000005;
  static const DVD_CacheSizeInMB = 0x00000006;
  static const DVD_EnablePortableBookmarks = 0x00000007;
  static const DVD_EnableExtendedCopyProtectErrors = 0x00000008;
  static const DVD_NotifyPositionChange = 0x00000009;
  static const DVD_IncreaseOutputControl = 0x0000000a;
  static const DVD_EnableStreaming = 0x0000000b;
  static const DVD_EnableESOutput = 0x0000000c;
  static const DVD_EnableTitleLength = 0x0000000d;
  static const DVD_DisableStillThrottle = 0x0000000e;
  static const DVD_EnableLoggingEvents = 0x0000000f;
  static const DVD_MaxReadBurstInKB = 0x00000010;
  static const DVD_ReadBurstPeriodInMS = 0x00000011;
  static const DVD_RestartDisc = 0x00000012;
  static const DVD_EnableCC = 0x00000013;
}

/// {@category Enum}
class DVD_PARENTAL_LEVEL {
  static const DVD_PARENTAL_LEVEL_8 = 0x00008000;
  static const DVD_PARENTAL_LEVEL_7 = 0x00004000;
  static const DVD_PARENTAL_LEVEL_6 = 0x00002000;
  static const DVD_PARENTAL_LEVEL_5 = 0x00001000;
  static const DVD_PARENTAL_LEVEL_4 = 0x00000800;
  static const DVD_PARENTAL_LEVEL_3 = 0x00000400;
  static const DVD_PARENTAL_LEVEL_2 = 0x00000200;
  static const DVD_PARENTAL_LEVEL_1 = 0x00000100;
}

/// {@category Enum}
class DVD_PB_STOPPED {
  static const DVD_PB_STOPPED_Other = 0x00000000;
  static const DVD_PB_STOPPED_NoBranch = 0x00000001;
  static const DVD_PB_STOPPED_NoFirstPlayDomain = 0x00000002;
  static const DVD_PB_STOPPED_StopCommand = 0x00000003;
  static const DVD_PB_STOPPED_Reset = 0x00000004;
  static const DVD_PB_STOPPED_DiscEjected = 0x00000005;
  static const DVD_PB_STOPPED_IllegalNavCommand = 0x00000006;
  static const DVD_PB_STOPPED_PlayPeriodAutoStop = 0x00000007;
  static const DVD_PB_STOPPED_PlayChapterAutoStop = 0x00000008;
  static const DVD_PB_STOPPED_ParentalFailure = 0x00000009;
  static const DVD_PB_STOPPED_RegionFailure = 0x0000000a;
  static const DVD_PB_STOPPED_MacrovisionFailure = 0x0000000b;
  static const DVD_PB_STOPPED_DiscReadError = 0x0000000c;
  static const DVD_PB_STOPPED_CopyProtectFailure = 0x0000000d;
  static const DVD_PB_STOPPED_CopyProtectOutputFailure = 0x0000000e;
  static const DVD_PB_STOPPED_CopyProtectOutputNotSupported = 0x0000000f;
}

/// {@category Enum}
class DVD_PLAY_DIRECTION {
  static const DVD_DIR_FORWARD = 0x00000000;
  static const DVD_DIR_BACKWARD = 0x00000001;
}

/// {@category Enum}
class DVD_PREFERRED_DISPLAY_MODE {
  static const DISPLAY_CONTENT_DEFAULT = 0x00000000;
  static const DISPLAY_16x9 = 0x00000001;
  static const DISPLAY_4x3_PANSCAN_PREFERRED = 0x00000002;
  static const DISPLAY_4x3_LETTERBOX_PREFERRED = 0x00000003;
}

/// {@category Enum}
class DVD_RELATIVE_BUTTON {
  static const DVD_Relative_Upper = 0x00000001;
  static const DVD_Relative_Lower = 0x00000002;
  static const DVD_Relative_Left = 0x00000003;
  static const DVD_Relative_Right = 0x00000004;
}

/// {@category Enum}
class DVD_SUBPICTURE_CODING {
  static const DVD_SPCoding_RunLength = 0x00000000;
  static const DVD_SPCoding_Extended = 0x00000001;
  static const DVD_SPCoding_Other = 0x00000002;
}

/// {@category Enum}
class DVD_SUBPICTURE_LANG_EXT {
  static const DVD_SP_EXT_NotSpecified = 0x00000000;
  static const DVD_SP_EXT_Caption_Normal = 0x00000001;
  static const DVD_SP_EXT_Caption_Big = 0x00000002;
  static const DVD_SP_EXT_Caption_Children = 0x00000003;
  static const DVD_SP_EXT_CC_Normal = 0x00000005;
  static const DVD_SP_EXT_CC_Big = 0x00000006;
  static const DVD_SP_EXT_CC_Children = 0x00000007;
  static const DVD_SP_EXT_Forced = 0x00000009;
  static const DVD_SP_EXT_DirectorComments_Normal = 0x0000000d;
  static const DVD_SP_EXT_DirectorComments_Big = 0x0000000e;
  static const DVD_SP_EXT_DirectorComments_Children = 0x0000000f;
}

/// {@category Enum}
class DVD_SUBPICTURE_TYPE {
  static const DVD_SPType_NotSpecified = 0x00000000;
  static const DVD_SPType_Language = 0x00000001;
  static const DVD_SPType_Other = 0x00000002;
}

/// {@category Enum}
class DVD_TIMECODE_FLAGS {
  static const DVD_TC_FLAG_25fps = 0x00000001;
  static const DVD_TC_FLAG_30fps = 0x00000002;
  static const DVD_TC_FLAG_DropFrame = 0x00000004;
  static const DVD_TC_FLAG_Interpolated = 0x00000008;
}

/// {@category Enum}
class DVD_TITLE_APPMODE {
  static const DVD_AppMode_Not_Specified = 0x00000000;
  static const DVD_AppMode_Karaoke = 0x00000001;
  static const DVD_AppMode_Other = 0x00000003;
}

/// {@category Enum}
class DVD_TextCharSet {
  static const DVD_CharSet_Unicode = 0x00000000;
  static const DVD_CharSet_ISO646 = 0x00000001;
  static const DVD_CharSet_JIS_Roman_Kanji = 0x00000002;
  static const DVD_CharSet_ISO8859_1 = 0x00000003;
  static const DVD_CharSet_ShiftJIS_Kanji_Roman_Katakana = 0x00000004;
}

/// {@category Enum}
class DVD_TextStringType {
  static const DVD_Struct_Volume = 0x00000001;
  static const DVD_Struct_Title = 0x00000002;
  static const DVD_Struct_ParentalID = 0x00000003;
  static const DVD_Struct_PartOfTitle = 0x00000004;
  static const DVD_Struct_Cell = 0x00000005;
  static const DVD_Stream_Audio = 0x00000010;
  static const DVD_Stream_Subpicture = 0x00000011;
  static const DVD_Stream_Angle = 0x00000012;
  static const DVD_Channel_Audio = 0x00000020;
  static const DVD_General_Name = 0x00000030;
  static const DVD_General_Comments = 0x00000031;
  static const DVD_Title_Series = 0x00000038;
  static const DVD_Title_Movie = 0x00000039;
  static const DVD_Title_Video = 0x0000003a;
  static const DVD_Title_Album = 0x0000003b;
  static const DVD_Title_Song = 0x0000003c;
  static const DVD_Title_Other = 0x0000003f;
  static const DVD_Title_Sub_Series = 0x00000040;
  static const DVD_Title_Sub_Movie = 0x00000041;
  static const DVD_Title_Sub_Video = 0x00000042;
  static const DVD_Title_Sub_Album = 0x00000043;
  static const DVD_Title_Sub_Song = 0x00000044;
  static const DVD_Title_Sub_Other = 0x00000047;
  static const DVD_Title_Orig_Series = 0x00000048;
  static const DVD_Title_Orig_Movie = 0x00000049;
  static const DVD_Title_Orig_Video = 0x0000004a;
  static const DVD_Title_Orig_Album = 0x0000004b;
  static const DVD_Title_Orig_Song = 0x0000004c;
  static const DVD_Title_Orig_Other = 0x0000004f;
  static const DVD_Other_Scene = 0x00000050;
  static const DVD_Other_Cut = 0x00000051;
  static const DVD_Other_Take = 0x00000052;
}

/// {@category Enum}
class DVD_VIDEO_COMPRESSION {
  static const DVD_VideoCompression_Other = 0x00000000;
  static const DVD_VideoCompression_MPEG1 = 0x00000001;
  static const DVD_VideoCompression_MPEG2 = 0x00000002;
}

/// {@category Enum}
class DVD_WARNING {
  static const DVD_WARNING_InvalidDVD1_0Disc = 0x00000001;
  static const DVD_WARNING_FormatNotSupported = 0x00000002;
  static const DVD_WARNING_IllegalNavCommand = 0x00000003;
  static const DVD_WARNING_Open = 0x00000004;
  static const DVD_WARNING_Seek = 0x00000005;
  static const DVD_WARNING_Read = 0x00000006;
}

/// {@category Enum}
class DisplaySizeList {
  static const dslDefaultSize = 0x00000000;
  static const dslSourceSize = 0x00000000;
  static const dslHalfSourceSize = 0x00000001;
  static const dslDoubleSourceSize = 0x00000002;
  static const dslFullScreen = 0x00000003;
  static const dslHalfScreen = 0x00000004;
  static const dslQuarterScreen = 0x00000005;
  static const dslSixteenthScreen = 0x00000006;
}

/// {@category Enum}
class DownResEventParam {
  static const DOWNRES_Always = 0x00000000;
  static const DOWNRES_InWindowOnly = 0x00000001;
  static const DOWNRES_Undefined = 0x00000002;
}

/// {@category Enum}
class EnTag_Mode {
  static const EnTag_Remove = 0x00000000;
  static const EnTag_Once = 0x00000001;
  static const EnTag_Repeat = 0x00000002;
}

/// {@category Enum}
class EnTvRat_CAE_TV {
  static const CAE_TV_Exempt = 0x00000000;
  static const CAE_TV_C = 0x00000001;
  static const CAE_TV_C8 = 0x00000002;
  static const CAE_TV_G = 0x00000003;
  static const CAE_TV_PG = 0x00000004;
  static const CAE_TV_14 = 0x00000005;
  static const CAE_TV_18 = 0x00000006;
  static const CAE_TV_Reserved = 0x00000007;
}

/// {@category Enum}
class EnTvRat_CAF_TV {
  static const CAF_TV_Exempt = 0x00000000;
  static const CAF_TV_G = 0x00000001;
  static const CAF_TV_8 = 0x00000002;
  static const CAF_TV_13 = 0x00000003;
  static const CAF_TV_16 = 0x00000004;
  static const CAF_TV_18 = 0x00000005;
  static const CAF_TV_Reserved6 = 0x00000006;
  static const CAF_TV_Reserved = 0x00000007;
}

/// {@category Enum}
class EnTvRat_GenericLevel {
  static const TvRat_0 = 0x00000000;
  static const TvRat_1 = 0x00000001;
  static const TvRat_2 = 0x00000002;
  static const TvRat_3 = 0x00000003;
  static const TvRat_4 = 0x00000004;
  static const TvRat_5 = 0x00000005;
  static const TvRat_6 = 0x00000006;
  static const TvRat_7 = 0x00000007;
  static const TvRat_8 = 0x00000008;
  static const TvRat_9 = 0x00000009;
  static const TvRat_10 = 0x0000000a;
  static const TvRat_11 = 0x0000000b;
  static const TvRat_12 = 0x0000000c;
  static const TvRat_13 = 0x0000000d;
  static const TvRat_14 = 0x0000000e;
  static const TvRat_15 = 0x0000000f;
  static const TvRat_16 = 0x00000010;
  static const TvRat_17 = 0x00000011;
  static const TvRat_18 = 0x00000012;
  static const TvRat_19 = 0x00000013;
  static const TvRat_20 = 0x00000014;
  static const TvRat_21 = 0x00000015;
  static const TvRat_kLevels = 0x00000016;
  static const TvRat_Unblock = 0xffffffff;
  static const TvRat_LevelDontKnow = 0x000000ff;
}

/// {@category Enum}
class EnTvRat_MPAA {
  static const MPAA_NotApplicable = 0x00000000;
  static const MPAA_G = 0x00000001;
  static const MPAA_PG = 0x00000002;
  static const MPAA_PG13 = 0x00000003;
  static const MPAA_R = 0x00000004;
  static const MPAA_NC17 = 0x00000005;
  static const MPAA_X = 0x00000006;
  static const MPAA_NotRated = 0x00000007;
}

/// {@category Enum}
class EnTvRat_System {
  static const MPAA = 0x00000000;
  static const US_TV = 0x00000001;
  static const Canadian_English = 0x00000002;
  static const Canadian_French = 0x00000003;
  static const Reserved4 = 0x00000004;
  static const System5 = 0x00000005;
  static const System6 = 0x00000006;
  static const Reserved7 = 0x00000007;
  static const PBDA = 0x00000008;
  static const AgeBased = 0x00000009;
  static const TvRat_kSystems = 0x0000000a;
  static const TvRat_SystemDontKnow = 0x000000ff;
}

/// {@category Enum}
class EnTvRat_US_TV {
  static const US_TV_None = 0x00000000;
  static const US_TV_Y = 0x00000001;
  static const US_TV_Y7 = 0x00000002;
  static const US_TV_G = 0x00000003;
  static const US_TV_PG = 0x00000004;
  static const US_TV_14 = 0x00000005;
  static const US_TV_MA = 0x00000006;
  static const US_TV_None7 = 0x00000007;
}

/// {@category Enum}
class EncDecEvents {
  static const ENCDEC_CPEVENT = 0x00000000;
  static const ENCDEC_RECORDING_STATUS = 0x00000001;
}

/// {@category Enum}
class EntitlementType {
  static const Entitled = 0x00000000;
  static const NotEntitled = 0x00000001;
  static const TechnicalFailure = 0x00000002;
}

/// {@category Enum}
class FECMethod {
  static const BDA_FEC_METHOD_NOT_SET = 0xffffffff;
  static const BDA_FEC_METHOD_NOT_DEFINED = 0x00000000;
  static const BDA_FEC_VITERBI = 0x00000001;
  static const BDA_FEC_RS_204_188 = 0x00000002;
  static const BDA_FEC_LDPC = 0x00000003;
  static const BDA_FEC_BCH = 0x00000004;
  static const BDA_FEC_RS_147_130 = 0x00000005;
  static const BDA_FEC_MAX = 0x00000006;
}

/// {@category Enum}
class FILTER_STATE {
  static const State_Stopped = 0x00000000;
  static const State_Paused = 0x00000001;
  static const State_Running = 0x00000002;
}

/// {@category Enum}
class FRAMING_CACHE_OPS {
  static const Framing_Cache_Update = 0x00000000;
  static const Framing_Cache_ReadLast = 0x00000001;
  static const Framing_Cache_ReadOrig = 0x00000002;
  static const Framing_Cache_Write = 0x00000003;
}

/// {@category Enum}
class FRAMING_PROP {
  static const FramingProp_Uninitialized = 0x00000000;
  static const FramingProp_None = 0x00000001;
  static const FramingProp_Old = 0x00000002;
  static const FramingProp_Ex = 0x00000003;
}

/// {@category Enum}
class FormatNotSupportedEvents {
  static const FORMATNOTSUPPORTED_CLEAR = 0x00000000;
  static const FORMATNOTSUPPORTED_NOTSUPPORTED = 0x00000001;
}

/// {@category Enum}
class GuardInterval {
  static const BDA_GUARD_NOT_SET = 0xffffffff;
  static const BDA_GUARD_NOT_DEFINED = 0x00000000;
  static const BDA_GUARD_1_32 = 0x00000001;
  static const BDA_GUARD_1_16 = 0x00000002;
  static const BDA_GUARD_1_8 = 0x00000003;
  static const BDA_GUARD_1_4 = 0x00000004;
  static const BDA_GUARD_1_128 = 0x00000005;
  static const BDA_GUARD_19_128 = 0x00000006;
  static const BDA_GUARD_19_256 = 0x00000007;
  static const BDA_GUARD_MAX = 0x00000008;
}

/// {@category Enum}
class HierarchyAlpha {
  static const BDA_HALPHA_NOT_SET = 0xffffffff;
  static const BDA_HALPHA_NOT_DEFINED = 0x00000000;
  static const BDA_HALPHA_1 = 0x00000001;
  static const BDA_HALPHA_2 = 0x00000002;
  static const BDA_HALPHA_4 = 0x00000003;
  static const BDA_HALPHA_MAX = 0x00000004;
}

/// {@category Enum}
class IFILTERMAPPER_MERIT {
  static const MERIT_PREFERRED = 0x00800000;
  static const MERIT_NORMAL = 0x00600000;
  static const MERIT_UNLIKELY = 0x00400000;
  static const MERIT_DO_NOT_USE = 0x00200000;
  static const MERIT_SW_COMPRESSOR = 0x00100000;
  static const MERIT_HW_COMPRESSOR = 0x00100050;
}

/// {@category Enum}
class ISDBCAS_REQUEST_ID {
  static const ISDBCAS_REQUEST_ID_EMG = 0x00000038;
  static const ISDBCAS_REQUEST_ID_EMD = 0x0000003a;
}

/// {@category Enum}
class InterleavingMode {
  static const INTERLEAVE_NONE = 0x00000000;
  static const INTERLEAVE_CAPTURE = 0x00000001;
  static const INTERLEAVE_FULL = 0x00000002;
  static const INTERLEAVE_NONE_BUFFERED = 0x00000003;
}

/// {@category Enum}
class KSALLOCATORMODE {
  static const KsAllocatorMode_User = 0x00000000;
  static const KsAllocatorMode_Kernel = 0x00000001;
}

/// {@category Enum}
class KSEVENT_BDA_EVENT_TYPE {
  static const KSEVENT_BDA_EVENT_PENDINGEVENT = 0x00000000;
}

/// {@category Enum}
class KSEVENT_BDA_TUNER {
  static const KSEVENT_BDA_TUNER_SCAN = 0x00000000;
}

/// {@category Enum}
class KSMETHOD_BDA_CAS_SERVICE {
  static const KSMETHOD_BDA_CAS_CHECKENTITLEMENTTOKEN = 0x00000000;
  static const KSMETHOD_BDA_CAS_SETCAPTURETOKEN = 0x00000001;
  static const KSMETHOD_BDA_CAS_OPENBROADCASTMMI = 0x00000002;
  static const KSMETHOD_BDA_CAS_CLOSEMMIDIALOG = 0x00000003;
}

/// {@category Enum}
class KSMETHOD_BDA_CHANGE_SYNC {
  static const KSMETHOD_BDA_START_CHANGES = 0x00000000;
  static const KSMETHOD_BDA_CHECK_CHANGES = 0x00000001;
  static const KSMETHOD_BDA_COMMIT_CHANGES = 0x00000002;
  static const KSMETHOD_BDA_GET_CHANGE_STATE = 0x00000003;
}

/// {@category Enum}
class KSMETHOD_BDA_DEBUG_SERVICE {
  static const KSMETHOD_BDA_DEBUG_LEVEL = 0x00000000;
  static const KSMETHOD_BDA_DEBUG_DATA = 0x00000001;
}

/// {@category Enum}
class KSMETHOD_BDA_DEVICE_CONFIGURATION {
  static const KSMETHOD_BDA_CREATE_PIN_FACTORY = 0x00000000;
  static const KSMETHOD_BDA_DELETE_PIN_FACTORY = 0x00000001;
  static const KSMETHOD_BDA_CREATE_TOPOLOGY = 0x00000002;
}

/// {@category Enum}
class KSMETHOD_BDA_DRM {
  static const KSMETHOD_BDA_DRM_CURRENT = 0x00000000;
  static const KSMETHOD_BDA_DRM_DRMSTATUS = 0x00000001;
}

/// {@category Enum}
class KSMETHOD_BDA_EVENTING_SERVICE {
  static const KSMETHOD_BDA_EVENT_DATA = 0x00000000;
  static const KSMETHOD_BDA_EVENT_COMPLETE = 0x00000001;
}

/// {@category Enum}
class KSMETHOD_BDA_GDDS_SERVICE {
  static const KSMETHOD_BDA_GDDS_DATATYPE = 0x00000000;
  static const KSMETHOD_BDA_GDDS_DATA = 0x00000001;
  static const KSMETHOD_BDA_GDDS_TUNEXMLFROMIDX = 0x00000002;
  static const KSMETHOD_BDA_GDDS_GETSERVICES = 0x00000003;
  static const KSMETHOD_BDA_GDDS_SERVICEFROMTUNEXML = 0x00000004;
  static const KSMETHOD_BDA_GDDS_DATAUPDATE = 0x00000005;
}

/// {@category Enum}
class KSMETHOD_BDA_GPNV_SERVICE {
  static const KSMETHOD_BDA_GPNV_GETVALUE = 0x00000000;
  static const KSMETHOD_BDA_GPNV_SETVALUE = 0x00000001;
  static const KSMETHOD_BDA_GPNV_NAMEFROMINDEX = 0x00000002;
  static const KSMETHOD_BDA_GPNV_GETVALUEUPDATENAME = 0x00000003;
}

/// {@category Enum}
class KSMETHOD_BDA_ISDB_CAS {
  static const KSMETHOD_BDA_ISDBCAS_SETREQUEST = 0x00000000;
  static const KSMETHOD_BDA_ISDBCAS_RESPONSEDATA = 0x00000001;
}

/// {@category Enum}
class KSMETHOD_BDA_MUX_SERVICE {
  static const KSMETHOD_BDA_MUX_GETPIDLIST = 0x00000000;
  static const KSMETHOD_BDA_MUX_SETPIDLIST = 0x00000001;
}

/// {@category Enum}
class KSMETHOD_BDA_SCAN_SERVICE {
  static const KSMETHOD_BDA_SCAN_CAPABILTIES = 0x00000000;
  static const KSMETHOD_BDA_SCANNING_STATE = 0x00000001;
  static const KSMETHOD_BDA_SCAN_FILTER = 0x00000002;
  static const KSMETHOD_BDA_SCAN_START = 0x00000003;
  static const KSMETHOD_BDA_SCAN_RESUME = 0x00000004;
  static const KSMETHOD_BDA_SCAN_STOP = 0x00000005;
}

/// {@category Enum}
class KSMETHOD_BDA_TS_SELECTOR {
  static const KSMETHOD_BDA_TS_SELECTOR_SETTSID = 0x00000000;
  static const KSMETHOD_BDA_TS_SELECTOR_GETTSINFORMATION = 0x00000001;
}

/// {@category Enum}
class KSMETHOD_BDA_TUNER_SERVICE {
  static const KSMETHOD_BDA_TUNER_SETTUNER = 0x00000000;
  static const KSMETHOD_BDA_TUNER_GETTUNERSTATE = 0x00000001;
  static const KSMETHOD_BDA_TUNER_SIGNALNOISERATIO = 0x00000002;
}

/// {@category Enum}
class KSMETHOD_BDA_USERACTIVITY_SERVICE {
  static const KSMETHOD_BDA_USERACTIVITY_USEREASON = 0x00000000;
  static const KSMETHOD_BDA_USERACTIVITY_INTERVAL = 0x00000001;
  static const KSMETHOD_BDA_USERACTIVITY_DETECTED = 0x00000002;
}

/// {@category Enum}
class KSMETHOD_BDA_WMDRM {
  static const KSMETHOD_BDA_WMDRM_STATUS = 0x00000000;
  static const KSMETHOD_BDA_WMDRM_REVINFO = 0x00000001;
  static const KSMETHOD_BDA_WMDRM_CRL = 0x00000002;
  static const KSMETHOD_BDA_WMDRM_MESSAGE = 0x00000003;
  static const KSMETHOD_BDA_WMDRM_REISSUELICENSE = 0x00000004;
  static const KSMETHOD_BDA_WMDRM_RENEWLICENSE = 0x00000005;
  static const KSMETHOD_BDA_WMDRM_LICENSE = 0x00000006;
  static const KSMETHOD_BDA_WMDRM_KEYINFO = 0x00000007;
}

/// {@category Enum}
class KSMETHOD_BDA_WMDRM_TUNER {
  static const KSMETHOD_BDA_WMDRMTUNER_CANCELCAPTURETOKEN = 0x00000000;
  static const KSMETHOD_BDA_WMDRMTUNER_SETPIDPROTECTION = 0x00000001;
  static const KSMETHOD_BDA_WMDRMTUNER_GETPIDPROTECTION = 0x00000002;
  static const KSMETHOD_BDA_WMDRMTUNER_SETSYNCVALUE = 0x00000003;
  static const KSMETHOD_BDA_WMDRMTUNER_STARTCODEPROFILE = 0x00000004;
  static const KSMETHOD_BDA_WMDRMTUNER_PURCHASE_ENTITLEMENT = 0x00000005;
}

/// {@category Enum}
class KSPROPERTY_BDA_AUTODEMODULATE {
  static const KSPROPERTY_BDA_AUTODEMODULATE_START = 0x00000000;
  static const KSPROPERTY_BDA_AUTODEMODULATE_STOP = 0x00000001;
}

/// {@category Enum}
class KSPROPERTY_BDA_CA {
  static const KSPROPERTY_BDA_ECM_MAP_STATUS = 0x00000000;
  static const KSPROPERTY_BDA_CA_MODULE_STATUS = 0x00000001;
  static const KSPROPERTY_BDA_CA_SMART_CARD_STATUS = 0x00000002;
  static const KSPROPERTY_BDA_CA_MODULE_UI = 0x00000003;
  static const KSPROPERTY_BDA_CA_SET_PROGRAM_PIDS = 0x00000004;
  static const KSPROPERTY_BDA_CA_REMOVE_PROGRAM = 0x00000005;
}

/// {@category Enum}
class KSPROPERTY_BDA_CA_EVENT {
  static const KSEVENT_BDA_PROGRAM_FLOW_STATUS_CHANGED = 0x00000000;
  static const KSEVENT_BDA_CA_MODULE_STATUS_CHANGED = 0x00000001;
  static const KSEVENT_BDA_CA_SMART_CARD_STATUS_CHANGED = 0x00000002;
  static const KSEVENT_BDA_CA_MODULE_UI_REQUESTED = 0x00000003;
}

/// {@category Enum}
class KSPROPERTY_BDA_DIGITAL_DEMODULATOR {
  static const KSPROPERTY_BDA_MODULATION_TYPE = 0x00000000;
  static const KSPROPERTY_BDA_INNER_FEC_TYPE = 0x00000001;
  static const KSPROPERTY_BDA_INNER_FEC_RATE = 0x00000002;
  static const KSPROPERTY_BDA_OUTER_FEC_TYPE = 0x00000003;
  static const KSPROPERTY_BDA_OUTER_FEC_RATE = 0x00000004;
  static const KSPROPERTY_BDA_SYMBOL_RATE = 0x00000005;
  static const KSPROPERTY_BDA_SPECTRAL_INVERSION = 0x00000006;
  static const KSPROPERTY_BDA_GUARD_INTERVAL = 0x00000007;
  static const KSPROPERTY_BDA_TRANSMISSION_MODE = 0x00000008;
  static const KSPROPERTY_BDA_ROLL_OFF = 0x00000009;
  static const KSPROPERTY_BDA_PILOT = 0x0000000a;
  static const KSPROPERTY_BDA_SIGNALTIMEOUTS = 0x0000000b;
  static const KSPROPERTY_BDA_PLP_NUMBER = 0x0000000c;
}

/// {@category Enum}
class KSPROPERTY_BDA_DISEQC_COMMAND {
  static const KSPROPERTY_BDA_DISEQC_ENABLE = 0x00000000;
  static const KSPROPERTY_BDA_DISEQC_LNB_SOURCE = 0x00000001;
  static const KSPROPERTY_BDA_DISEQC_USETONEBURST = 0x00000002;
  static const KSPROPERTY_BDA_DISEQC_REPEATS = 0x00000003;
  static const KSPROPERTY_BDA_DISEQC_SEND = 0x00000004;
  static const KSPROPERTY_BDA_DISEQC_RESPONSE = 0x00000005;
}

/// {@category Enum}
class KSPROPERTY_BDA_DISEQC_EVENT {
  static const KSEVENT_BDA_DISEQC_DATA_RECEIVED = 0x00000000;
}

/// {@category Enum}
class KSPROPERTY_BDA_ETHERNET_FILTER {
  static const KSPROPERTY_BDA_ETHERNET_FILTER_MULTICAST_LIST_SIZE = 0x00000000;
  static const KSPROPERTY_BDA_ETHERNET_FILTER_MULTICAST_LIST = 0x00000001;
  static const KSPROPERTY_BDA_ETHERNET_FILTER_MULTICAST_MODE = 0x00000002;
}

/// {@category Enum}
class KSPROPERTY_BDA_FREQUENCY_FILTER {
  static const KSPROPERTY_BDA_RF_TUNER_FREQUENCY = 0x00000000;
  static const KSPROPERTY_BDA_RF_TUNER_POLARITY = 0x00000001;
  static const KSPROPERTY_BDA_RF_TUNER_RANGE = 0x00000002;
  static const KSPROPERTY_BDA_RF_TUNER_TRANSPONDER = 0x00000003;
  static const KSPROPERTY_BDA_RF_TUNER_BANDWIDTH = 0x00000004;
  static const KSPROPERTY_BDA_RF_TUNER_FREQUENCY_MULTIPLIER = 0x00000005;
  static const KSPROPERTY_BDA_RF_TUNER_CAPS = 0x00000006;
  static const KSPROPERTY_BDA_RF_TUNER_SCAN_STATUS = 0x00000007;
  static const KSPROPERTY_BDA_RF_TUNER_STANDARD = 0x00000008;
  static const KSPROPERTY_BDA_RF_TUNER_STANDARD_MODE = 0x00000009;
}

/// {@category Enum}
class KSPROPERTY_BDA_IPv4_FILTER {
  static const KSPROPERTY_BDA_IPv4_FILTER_MULTICAST_LIST_SIZE = 0x00000000;
  static const KSPROPERTY_BDA_IPv4_FILTER_MULTICAST_LIST = 0x00000001;
  static const KSPROPERTY_BDA_IPv4_FILTER_MULTICAST_MODE = 0x00000002;
}

/// {@category Enum}
class KSPROPERTY_BDA_IPv6_FILTER {
  static const KSPROPERTY_BDA_IPv6_FILTER_MULTICAST_LIST_SIZE = 0x00000000;
  static const KSPROPERTY_BDA_IPv6_FILTER_MULTICAST_LIST = 0x00000001;
  static const KSPROPERTY_BDA_IPv6_FILTER_MULTICAST_MODE = 0x00000002;
}

/// {@category Enum}
class KSPROPERTY_BDA_LNB_INFO {
  static const KSPROPERTY_BDA_LNB_LOF_LOW_BAND = 0x00000000;
  static const KSPROPERTY_BDA_LNB_LOF_HIGH_BAND = 0x00000001;
  static const KSPROPERTY_BDA_LNB_SWITCH_FREQUENCY = 0x00000002;
}

/// {@category Enum}
class KSPROPERTY_BDA_NULL_TRANSFORM {
  static const KSPROPERTY_BDA_NULL_TRANSFORM_START = 0x00000000;
  static const KSPROPERTY_BDA_NULL_TRANSFORM_STOP = 0x00000001;
}

/// {@category Enum}
class KSPROPERTY_BDA_PIDFILTER {
  static const KSPROPERTY_BDA_PIDFILTER_MAP_PIDS = 0x00000000;
  static const KSPROPERTY_BDA_PIDFILTER_UNMAP_PIDS = 0x00000001;
  static const KSPROPERTY_BDA_PIDFILTER_LIST_PIDS = 0x00000002;
}

/// {@category Enum}
class KSPROPERTY_BDA_PIN_CONTROL {
  static const KSPROPERTY_BDA_PIN_ID = 0x00000000;
  static const KSPROPERTY_BDA_PIN_TYPE = 0x00000001;
}

/// {@category Enum}
class KSPROPERTY_BDA_PIN_EVENT {
  static const KSEVENT_BDA_PIN_CONNECTED = 0x00000000;
  static const KSEVENT_BDA_PIN_DISCONNECTED = 0x00000001;
}

/// {@category Enum}
class KSPROPERTY_BDA_SIGNAL_STATS {
  static const KSPROPERTY_BDA_SIGNAL_STRENGTH = 0x00000000;
  static const KSPROPERTY_BDA_SIGNAL_QUALITY = 0x00000001;
  static const KSPROPERTY_BDA_SIGNAL_PRESENT = 0x00000002;
  static const KSPROPERTY_BDA_SIGNAL_LOCKED = 0x00000003;
  static const KSPROPERTY_BDA_SAMPLE_TIME = 0x00000004;
  static const KSPROPERTY_BDA_SIGNAL_LOCK_CAPS = 0x00000005;
  static const KSPROPERTY_BDA_SIGNAL_LOCK_TYPE = 0x00000006;
}

/// {@category Enum}
class KSPROPERTY_BDA_TOPOLOGY {
  static const KSPROPERTY_BDA_NODE_TYPES = 0x00000000;
  static const KSPROPERTY_BDA_PIN_TYPES = 0x00000001;
  static const KSPROPERTY_BDA_TEMPLATE_CONNECTIONS = 0x00000002;
  static const KSPROPERTY_BDA_NODE_METHODS = 0x00000003;
  static const KSPROPERTY_BDA_NODE_PROPERTIES = 0x00000004;
  static const KSPROPERTY_BDA_NODE_EVENTS = 0x00000005;
  static const KSPROPERTY_BDA_CONTROLLING_PIN_ID = 0x00000006;
  static const KSPROPERTY_BDA_NODE_DESCRIPTORS = 0x00000007;
}

/// {@category Enum}
class KSPROPERTY_BDA_VOID_TRANSFORM {
  static const KSPROPERTY_BDA_VOID_TRANSFORM_START = 0x00000000;
  static const KSPROPERTY_BDA_VOID_TRANSFORM_STOP = 0x00000001;
}

/// {@category Enum}
class KSPROPERTY_IDS_BDA_TABLE {
  static const KSPROPERTY_BDA_TABLE_SECTION = 0x00000000;
}

/// {@category Enum}
class KSPROPERTY_IPSINK {
  static const KSPROPERTY_IPSINK_MULTICASTLIST = 0x00000000;
  static const KSPROPERTY_IPSINK_ADAPTER_DESCRIPTION = 0x00000001;
  static const KSPROPERTY_IPSINK_ADAPTER_ADDRESS = 0x00000002;
}

/// {@category Enum}
class KS_LogicalMemoryType {
  static const KS_MemoryTypeDontCare = 0x00000000;
  static const KS_MemoryTypeKernelPaged = 0x00000001;
  static const KS_MemoryTypeKernelNonPaged = 0x00000002;
  static const KS_MemoryTypeDeviceHostMapped = 0x00000003;
  static const KS_MemoryTypeDeviceSpecific = 0x00000004;
  static const KS_MemoryTypeUser = 0x00000005;
  static const KS_MemoryTypeAnyHost = 0x00000006;
}

/// {@category Enum}
class LNB_Source {
  static const BDA_LNB_SOURCE_NOT_SET = 0xffffffff;
  static const BDA_LNB_SOURCE_NOT_DEFINED = 0x00000000;
  static const BDA_LNB_SOURCE_A = 0x00000001;
  static const BDA_LNB_SOURCE_B = 0x00000002;
  static const BDA_LNB_SOURCE_C = 0x00000003;
  static const BDA_LNB_SOURCE_D = 0x00000004;
  static const BDA_LNB_SOURCE_MAX = 0x00000005;
}

/// {@category Enum}
class LicenseEventBlockReason {
  static const LIC_BadLicense = 0x00000000;
  static const LIC_NeedIndiv = 0x00000001;
  static const LIC_Expired = 0x00000002;
  static const LIC_NeedActivation = 0x00000003;
  static const LIC_ExtenderBlocked = 0x00000004;
}

/// {@category Enum}
class LocationCodeSchemeType {
  static const SCTE_18 = 0x00000000;
}

/// {@category Enum}
class MEDIA_SAMPLE_CONTENT {
  static const MEDIA_TRANSPORT_PACKET = 0x00000000;
  static const MEDIA_ELEMENTARY_STREAM = 0x00000001;
  static const MEDIA_MPEG2_PSI = 0x00000002;
  static const MEDIA_TRANSPORT_PAYLOAD = 0x00000003;
}

/// {@category Enum}
class MMSSF_GET_INFORMATION_FLAGS {
  static const MMSSF_HASCLOCK = 0x00000001;
  static const MMSSF_SUPPORTSEEK = 0x00000002;
  static const MMSSF_ASYNCHRONOUS = 0x00000004;
}

/// {@category Enum}
class MPEG2StreamType {
  static const BDA_UNITIALIZED_MPEG2STREAMTYPE = 0xffffffff;
  static const Reserved1 = 0x00000000;
  static const ISO_IEC_11172_2_VIDEO = 0x00000001;
  static const ISO_IEC_13818_2_VIDEO = 0x00000002;
  static const ISO_IEC_11172_3_AUDIO = 0x00000003;
  static const ISO_IEC_13818_3_AUDIO = 0x00000004;
  static const ISO_IEC_13818_1_PRIVATE_SECTION = 0x00000005;
  static const ISO_IEC_13818_1_PES = 0x00000006;
  static const ISO_IEC_13522_MHEG = 0x00000007;
  static const ANNEX_A_DSM_CC = 0x00000008;
  static const ITU_T_REC_H_222_1 = 0x00000009;
  static const ISO_IEC_13818_6_TYPE_A = 0x0000000a;
  static const ISO_IEC_13818_6_TYPE_B = 0x0000000b;
  static const ISO_IEC_13818_6_TYPE_C = 0x0000000c;
  static const ISO_IEC_13818_6_TYPE_D = 0x0000000d;
  static const ISO_IEC_13818_1_AUXILIARY = 0x0000000e;
  static const ISO_IEC_13818_7_AUDIO = 0x0000000f;
  static const ISO_IEC_14496_2_VISUAL = 0x00000010;
  static const ISO_IEC_14496_3_AUDIO = 0x00000011;
  static const ISO_IEC_14496_1_IN_PES = 0x00000012;
  static const ISO_IEC_14496_1_IN_SECTION = 0x00000013;
  static const ISO_IEC_13818_6_DOWNLOAD = 0x00000014;
  static const METADATA_IN_PES = 0x00000015;
  static const METADATA_IN_SECTION = 0x00000016;
  static const METADATA_IN_DATA_CAROUSEL = 0x00000017;
  static const METADATA_IN_OBJECT_CAROUSEL = 0x00000018;
  static const METADATA_IN_DOWNLOAD_PROTOCOL = 0x00000019;
  static const IRPM_STREAMM = 0x0000001a;
  static const ITU_T_H264 = 0x0000001b;
  static const ISO_IEC_13818_1_RESERVED = 0x0000001c;
  static const USER_PRIVATE = 0x00000010;
  static const HEVC_VIDEO_OR_TEMPORAL_VIDEO = 0x00000024;
  static const HEVC_TEMPORAL_VIDEO_SUBSET = 0x00000025;
  static const ISO_IEC_USER_PRIVATE = 0x00000080;
  static const DOLBY_AC3_AUDIO = 0x00000081;
  static const DOLBY_DIGITAL_PLUS_AUDIO_ATSC = 0x00000087;
}

/// {@category Enum}
class MPEG2VIDEOINFO_dwFlags {
  static const AMMPEG2_DoPanScan = 0x00000001;
  static const AMMPEG2_DVDLine21Field1 = 0x00000002;
  static const AMMPEG2_DVDLine21Field2 = 0x00000004;
  static const AMMPEG2_SourceIsLetterboxed = 0x00000008;
  static const AMMPEG2_FilmCameraMode = 0x00000010;
  static const AMMPEG2_LetterboxAnalogOut = 0x00000020;
  static const AMMPEG2_DSS_UserData = 0x00000040;
  static const AMMPEG2_DVB_UserData = 0x00000080;
  static const AMMPEG2_27MhzTimebase = 0x00000100;
  static const AMMPEG2_WidescreenAnalogOut = 0x00000200;
}

/// {@category Enum}
class MPEGLAYER3WAVEFORMAT_fdwFlags {
  static const MPEGLAYER3_FLAG_PADDING_ISO = 0x00000000;
  static const MPEGLAYER3_FLAG_PADDING_ON = 0x00000001;
  static const MPEGLAYER3_FLAG_PADDING_OFF = 0x00000002;
}

/// {@category Enum}
class MPEG_CONTEXT_TYPE {
  static const MPEG_CONTEXT_BCS_DEMUX = 0x00000000;
  static const MPEG_CONTEXT_WINSOCK = 0x00000001;
}

/// {@category Enum}
class MPEG_CURRENT_NEXT_BIT {
  static const MPEG_SECTION_IS_NEXT = 0x00000000;
  static const MPEG_SECTION_IS_CURRENT = 0x00000001;
}

/// {@category Enum}
class MPEG_REQUEST_TYPE {
  static const MPEG_RQST_UNKNOWN = 0x00000000;
  static const MPEG_RQST_GET_SECTION = 0x00000001;
  static const MPEG_RQST_GET_SECTION_ASYNC = 0x00000002;
  static const MPEG_RQST_GET_TABLE = 0x00000003;
  static const MPEG_RQST_GET_TABLE_ASYNC = 0x00000004;
  static const MPEG_RQST_GET_SECTIONS_STREAM = 0x00000005;
  static const MPEG_RQST_GET_PES_STREAM = 0x00000006;
  static const MPEG_RQST_GET_TS_STREAM = 0x00000007;
  static const MPEG_RQST_START_MPE_STREAM = 0x00000008;
}

/// {@category Enum}
class MP_CURVE_TYPE {
  static const MP_CURVE_JUMP = 0x00000001;
  static const MP_CURVE_LINEAR = 0x00000002;
  static const MP_CURVE_SQUARE = 0x00000004;
  static const MP_CURVE_INVSQUARE = 0x00000008;
  static const MP_CURVE_SINE = 0x00000010;
}

/// {@category Enum}
class MP_TYPE {
  static const MPT_INT = 0x00000000;
  static const MPT_FLOAT = 0x00000001;
  static const MPT_BOOL = 0x00000002;
  static const MPT_ENUM = 0x00000003;
  static const MPT_MAX = 0x00000004;
}

/// {@category Enum}
class MSVidCCService {
  static const None = 0x00000000;
  static const Caption1 = 0x00000001;
  static const Caption2 = 0x00000002;
  static const Text1 = 0x00000003;
  static const Text2 = 0x00000004;
  static const XDS = 0x00000005;
}

/// {@category Enum}
class MSVidCtlButtonstate {
  static const MSVIDCTL_LEFT_BUTTON = 0x00000001;
  static const MSVIDCTL_RIGHT_BUTTON = 0x00000002;
  static const MSVIDCTL_MIDDLE_BUTTON = 0x00000004;
  static const MSVIDCTL_X_BUTTON1 = 0x00000008;
  static const MSVIDCTL_X_BUTTON2 = 0x00000010;
  static const MSVIDCTL_SHIFT = 0x00000001;
  static const MSVIDCTL_CTRL = 0x00000002;
  static const MSVIDCTL_ALT = 0x00000004;
}

/// {@category Enum}
class MSVidCtlStateList {
  static const STATE_UNBUILT = 0xffffffff;
  static const STATE_STOP = 0x00000000;
  static const STATE_PAUSE = 0x00000001;
  static const STATE_PLAY = 0x00000002;
}

/// {@category Enum}
class MSVidSegmentType {
  static const MSVidSEG_SOURCE = 0x00000000;
  static const MSVidSEG_XFORM = 0x00000001;
  static const MSVidSEG_DEST = 0x00000002;
}

/// {@category Enum}
class MSVidSinkStreams {
  static const MSVidSink_Video = 0x00000001;
  static const MSVidSink_Audio = 0x00000002;
  static const MSVidSink_Other = 0x00000004;
}

/// {@category Enum}
class MSViddispidList {
  static const dispidInputs = 0x00000000;
  static const dispidOutputs = 0x00000001;
  static const dispid_Inputs = 0x00000002;
  static const dispid_Outputs = 0x00000003;
  static const dispidVideoRenderers = 0x00000004;
  static const dispidAudioRenderers = 0x00000005;
  static const dispidFeatures = 0x00000006;
  static const dispidInput = 0x00000007;
  static const dispidOutput = 0x00000008;
  static const dispidVideoRenderer = 0x00000009;
  static const dispidAudioRenderer = 0x0000000a;
  static const dispidSelectedFeatures = 0x0000000b;
  static const dispidView = 0x0000000c;
  static const dispidBuild = 0x0000000d;
  static const dispidPause = 0x0000000e;
  static const dispidRun = 0x0000000f;
  static const dispidStop = 0x00000010;
  static const dispidDecompose = 0x00000011;
  static const dispidDisplaySize = 0x00000012;
  static const dispidMaintainAspectRatio = 0x00000013;
  static const dispidColorKey = 0x00000014;
  static const dispidStateChange = 0x00000015;
  static const dispidgetState = 0x00000016;
  static const dispidunbind = 0x00000017;
  static const dispidbind = 0x00000018;
  static const dispidDisableVideo = 0x00000019;
  static const dispidDisableAudio = 0x0000001a;
  static const dispidViewNext = 0x0000001b;
  static const dispidServiceP = 0x0000001c;
}

/// {@category Enum}
class MUX_PID_TYPE {
  static const PID_OTHER = 0xffffffff;
  static const PID_ELEMENTARY_STREAM = 0x00000000;
  static const PID_MPEG2_SECTION_PSI_SI = 0x00000001;
}

/// {@category Enum}
class ModulationType {
  static const BDA_MOD_NOT_SET = 0xffffffff;
  static const BDA_MOD_NOT_DEFINED = 0x00000000;
  static const BDA_MOD_16QAM = 0x00000001;
  static const BDA_MOD_32QAM = 0x00000002;
  static const BDA_MOD_64QAM = 0x00000003;
  static const BDA_MOD_80QAM = 0x00000004;
  static const BDA_MOD_96QAM = 0x00000005;
  static const BDA_MOD_112QAM = 0x00000006;
  static const BDA_MOD_128QAM = 0x00000007;
  static const BDA_MOD_160QAM = 0x00000008;
  static const BDA_MOD_192QAM = 0x00000009;
  static const BDA_MOD_224QAM = 0x0000000a;
  static const BDA_MOD_256QAM = 0x0000000b;
  static const BDA_MOD_320QAM = 0x0000000c;
  static const BDA_MOD_384QAM = 0x0000000d;
  static const BDA_MOD_448QAM = 0x0000000e;
  static const BDA_MOD_512QAM = 0x0000000f;
  static const BDA_MOD_640QAM = 0x00000010;
  static const BDA_MOD_768QAM = 0x00000011;
  static const BDA_MOD_896QAM = 0x00000012;
  static const BDA_MOD_1024QAM = 0x00000013;
  static const BDA_MOD_QPSK = 0x00000014;
  static const BDA_MOD_BPSK = 0x00000015;
  static const BDA_MOD_OQPSK = 0x00000016;
  static const BDA_MOD_8VSB = 0x00000017;
  static const BDA_MOD_16VSB = 0x00000018;
  static const BDA_MOD_ANALOG_AMPLITUDE = 0x00000019;
  static const BDA_MOD_ANALOG_FREQUENCY = 0x0000001a;
  static const BDA_MOD_8PSK = 0x0000001b;
  static const BDA_MOD_RF = 0x0000001c;
  static const BDA_MOD_16APSK = 0x0000001d;
  static const BDA_MOD_32APSK = 0x0000001e;
  static const BDA_MOD_NBC_QPSK = 0x0000001f;
  static const BDA_MOD_NBC_8PSK = 0x00000020;
  static const BDA_MOD_DIRECTV = 0x00000021;
  static const BDA_MOD_ISDB_T_TMCC = 0x00000022;
  static const BDA_MOD_ISDB_S_TMCC = 0x00000023;
  static const BDA_MOD_MAX = 0x00000024;
}

/// {@category Enum}
class OUTPUT_STATE {
  static const Disabled = 0x00000000;
  static const ReadData = 0x00000001;
  static const RenderData = 0x00000002;
}

/// {@category Enum}
class PIN_DIRECTION {
  static const PINDIR_INPUT = 0x00000000;
  static const PINDIR_OUTPUT = 0x00000001;
}

/// {@category Enum}
class PIPE_ALLOCATOR_PLACE {
  static const Pipe_Allocator_None = 0x00000000;
  static const Pipe_Allocator_FirstPin = 0x00000001;
  static const Pipe_Allocator_LastPin = 0x00000002;
  static const Pipe_Allocator_MiddlePin = 0x00000003;
}

/// {@category Enum}
class PIPE_STATE {
  static const PipeState_DontCare = 0x00000000;
  static const PipeState_RangeNotFixed = 0x00000001;
  static const PipeState_RangeFixed = 0x00000002;
  static const PipeState_CompressionUnknown = 0x00000003;
  static const PipeState_Finalized = 0x00000004;
}

/// {@category Enum}
class PhysicalConnectorType {
  static const PhysConn_Video_Tuner = 0x00000001;
  static const PhysConn_Video_Composite = 0x00000002;
  static const PhysConn_Video_SVideo = 0x00000003;
  static const PhysConn_Video_RGB = 0x00000004;
  static const PhysConn_Video_YRYBY = 0x00000005;
  static const PhysConn_Video_SerialDigital = 0x00000006;
  static const PhysConn_Video_ParallelDigital = 0x00000007;
  static const PhysConn_Video_SCSI = 0x00000008;
  static const PhysConn_Video_AUX = 0x00000009;
  static const PhysConn_Video_1394 = 0x0000000a;
  static const PhysConn_Video_USB = 0x0000000b;
  static const PhysConn_Video_VideoDecoder = 0x0000000c;
  static const PhysConn_Video_VideoEncoder = 0x0000000d;
  static const PhysConn_Video_SCART = 0x0000000e;
  static const PhysConn_Video_Black = 0x0000000f;
  static const PhysConn_Audio_Tuner = 0x00001000;
  static const PhysConn_Audio_Line = 0x00001001;
  static const PhysConn_Audio_Mic = 0x00001002;
  static const PhysConn_Audio_AESDigital = 0x00001003;
  static const PhysConn_Audio_SPDIFDigital = 0x00001004;
  static const PhysConn_Audio_SCSI = 0x00001005;
  static const PhysConn_Audio_AUX = 0x00001006;
  static const PhysConn_Audio_1394 = 0x00001007;
  static const PhysConn_Audio_USB = 0x00001008;
  static const PhysConn_Audio_AudioDecoder = 0x00001009;
}

/// {@category Enum}
class Pilot {
  static const BDA_PILOT_NOT_SET = 0xffffffff;
  static const BDA_PILOT_NOT_DEFINED = 0x00000000;
  static const BDA_PILOT_OFF = 0x00000001;
  static const BDA_PILOT_ON = 0x00000002;
  static const BDA_PILOT_MAX = 0x00000003;
}

/// {@category Enum}
class Polarisation {
  static const BDA_POLARISATION_NOT_SET = 0xffffffff;
  static const BDA_POLARISATION_NOT_DEFINED = 0x00000000;
  static const BDA_POLARISATION_LINEAR_H = 0x00000001;
  static const BDA_POLARISATION_LINEAR_V = 0x00000002;
  static const BDA_POLARISATION_CIRCULAR_L = 0x00000003;
  static const BDA_POLARISATION_CIRCULAR_R = 0x00000004;
  static const BDA_POLARISATION_MAX = 0x00000005;
}

/// {@category Enum}
class PositionModeList {
  static const FrameMode = 0x00000000;
  static const TenthsSecondsMode = 0x00000001;
}

/// {@category Enum}
class ProtType {
  static const PROT_COPY_FREE = 0x00000001;
  static const PROT_COPY_ONCE = 0x00000002;
  static const PROT_COPY_NEVER = 0x00000003;
  static const PROT_COPY_NEVER_REALLY = 0x00000004;
  static const PROT_COPY_NO_MORE = 0x00000005;
  static const PROT_COPY_FREE_CIT = 0x00000006;
  static const PROT_COPY_BF = 0x00000007;
  static const PROT_COPY_CN_RECORDING_STOP = 0x00000008;
  static const PROT_COPY_FREE_SECURE = 0x00000009;
  static const PROT_COPY_INVALID = 0x00000032;
}

/// {@category Enum}
class QualityMessageType {
  static const Famine = 0x00000000;
  static const Flood = 0x00000001;
}

/// {@category Enum}
class READYSTATE {
  static const READYSTATE_UNINITIALIZED = 0x00000000;
  static const READYSTATE_LOADING = 0x00000001;
  static const READYSTATE_LOADED = 0x00000002;
  static const READYSTATE_INTERACTIVE = 0x00000003;
  static const READYSTATE_COMPLETE = 0x00000004;
}

/// {@category Enum}
class RECORDING_TYPE {
  static const RECORDING_TYPE_CONTENT = 0x00000000;
  static const RECORDING_TYPE_REFERENCE = 0x00000001;
}

/// {@category Enum}
class REG_PINFLAG {
  static const REG_PINFLAG_B_ZERO = 0x00000001;
  static const REG_PINFLAG_B_RENDERER = 0x00000002;
  static const REG_PINFLAG_B_MANY = 0x00000004;
  static const REG_PINFLAG_B_OUTPUT = 0x00000008;
}

/// {@category Enum}
class RecordingType {
  static const CONTENT = 0x00000000;
  static const REFERENCE = 0x00000001;
}

/// {@category Enum}
class RevokedComponent {
  static const REVOKED_COPP = 0x00000000;
  static const REVOKED_SAC = 0x00000001;
  static const REVOKED_APP_STUB = 0x00000002;
  static const REVOKED_SECURE_PIPELINE = 0x00000003;
  static const REVOKED_MAX_TYPES = 0x00000004;
}

/// {@category Enum}
class RollOff {
  static const BDA_ROLL_OFF_NOT_SET = 0xffffffff;
  static const BDA_ROLL_OFF_NOT_DEFINED = 0x00000000;
  static const BDA_ROLL_OFF_20 = 0x00000001;
  static const BDA_ROLL_OFF_25 = 0x00000002;
  static const BDA_ROLL_OFF_35 = 0x00000003;
  static const BDA_ROLL_OFF_MAX = 0x00000004;
}

/// {@category Enum}
class SNDDEV_ERR {
  static const SNDDEV_ERROR_Open = 0x00000001;
  static const SNDDEV_ERROR_Close = 0x00000002;
  static const SNDDEV_ERROR_GetCaps = 0x00000003;
  static const SNDDEV_ERROR_PrepareHeader = 0x00000004;
  static const SNDDEV_ERROR_UnprepareHeader = 0x00000005;
  static const SNDDEV_ERROR_Reset = 0x00000006;
  static const SNDDEV_ERROR_Restart = 0x00000007;
  static const SNDDEV_ERROR_GetPosition = 0x00000008;
  static const SNDDEV_ERROR_Write = 0x00000009;
  static const SNDDEV_ERROR_Pause = 0x0000000a;
  static const SNDDEV_ERROR_Stop = 0x0000000b;
  static const SNDDEV_ERROR_Start = 0x0000000c;
  static const SNDDEV_ERROR_AddBuffer = 0x0000000d;
  static const SNDDEV_ERROR_Query = 0x0000000e;
}

/// {@category Enum}
class SSUPDATE_TYPE {
  static const SSUPDATE_ASYNC = 0x00000001;
  static const SSUPDATE_CONTINUOUS = 0x00000002;
}

/// {@category Enum}
class STREAMBUFFER_ATTR_DATATYPE {
  static const STREAMBUFFER_TYPE_DWORD = 0x00000000;
  static const STREAMBUFFER_TYPE_STRING = 0x00000001;
  static const STREAMBUFFER_TYPE_BINARY = 0x00000002;
  static const STREAMBUFFER_TYPE_BOOL = 0x00000003;
  static const STREAMBUFFER_TYPE_QWORD = 0x00000004;
  static const STREAMBUFFER_TYPE_WORD = 0x00000005;
  static const STREAMBUFFER_TYPE_GUID = 0x00000006;
}

/// {@category Enum}
class STREAMIF_CONSTANTS {
  static const MAX_NUMBER_OF_STREAMS = 0x00000010;
}

/// {@category Enum}
class STREAM_STATE {
  static const STREAMSTATE_STOP = 0x00000000;
  static const STREAMSTATE_RUN = 0x00000001;
}

/// {@category Enum}
class STREAM_TYPE {
  static const STREAMTYPE_READ = 0x00000000;
  static const STREAMTYPE_WRITE = 0x00000001;
  static const STREAMTYPE_TRANSFORM = 0x00000002;
}

/// {@category Enum}
class ScanModulationTypes {
  static const BDA_SCAN_MOD_16QAM = 0x00000001;
  static const BDA_SCAN_MOD_32QAM = 0x00000002;
  static const BDA_SCAN_MOD_64QAM = 0x00000004;
  static const BDA_SCAN_MOD_80QAM = 0x00000008;
  static const BDA_SCAN_MOD_96QAM = 0x00000010;
  static const BDA_SCAN_MOD_112QAM = 0x00000020;
  static const BDA_SCAN_MOD_128QAM = 0x00000040;
  static const BDA_SCAN_MOD_160QAM = 0x00000080;
  static const BDA_SCAN_MOD_192QAM = 0x00000100;
  static const BDA_SCAN_MOD_224QAM = 0x00000200;
  static const BDA_SCAN_MOD_256QAM = 0x00000400;
  static const BDA_SCAN_MOD_320QAM = 0x00000800;
  static const BDA_SCAN_MOD_384QAM = 0x00001000;
  static const BDA_SCAN_MOD_448QAM = 0x00002000;
  static const BDA_SCAN_MOD_512QAM = 0x00004000;
  static const BDA_SCAN_MOD_640QAM = 0x00008000;
  static const BDA_SCAN_MOD_768QAM = 0x00010000;
  static const BDA_SCAN_MOD_896QAM = 0x00020000;
  static const BDA_SCAN_MOD_1024QAM = 0x00040000;
  static const BDA_SCAN_MOD_QPSK = 0x00080000;
  static const BDA_SCAN_MOD_BPSK = 0x00100000;
  static const BDA_SCAN_MOD_OQPSK = 0x00200000;
  static const BDA_SCAN_MOD_8VSB = 0x00400000;
  static const BDA_SCAN_MOD_16VSB = 0x00800000;
  static const BDA_SCAN_MOD_AM_RADIO = 0x01000000;
  static const BDA_SCAN_MOD_FM_RADIO = 0x02000000;
  static const BDA_SCAN_MOD_8PSK = 0x04000000;
  static const BDA_SCAN_MOD_RF = 0x08000000;
  static const ScanModulationTypesMask_MCE_DigitalCable = 0x0000000b;
  static const ScanModulationTypesMask_MCE_TerrestrialATSC = 0x00000017;
  static const ScanModulationTypesMask_MCE_AnalogTv = 0x0000001c;
  static const ScanModulationTypesMask_MCE_All_TV = 0xffffffff;
  static const ScanModulationTypesMask_DVBC = 0x0000004b;
  static const BDA_SCAN_MOD_16APSK = 0x10000000;
  static const BDA_SCAN_MOD_32APSK = 0x20000000;
}

/// {@category Enum}
class SegDispidList {
  static const dispidName = 0x00000000;
  static const dispidStatus = 0x00000001;
  static const dispidDevImageSourceWidth = 0x00000002;
  static const dispidDevImageSourceHeight = 0x00000003;
  static const dispidDevCountryCode = 0x00000004;
  static const dispidDevOverScan = 0x00000005;
  static const dispidSegment = 0x00000006;
  static const dispidDevVolume = 0x00000007;
  static const dispidDevBalance = 0x00000008;
  static const dispidDevPower = 0x00000009;
  static const dispidTuneChan = 0x0000000a;
  static const dispidDevVideoSubchannel = 0x0000000b;
  static const dispidDevAudioSubchannel = 0x0000000c;
  static const dispidChannelAvailable = 0x0000000d;
  static const dispidDevVideoFrequency = 0x0000000e;
  static const dispidDevAudioFrequency = 0x0000000f;
  static const dispidCount = 0x00000010;
  static const dispidDevFileName = 0x00000011;
  static const dispidVisible = 0x00000012;
  static const dispidOwner = 0x00000013;
  static const dispidMessageDrain = 0x00000014;
  static const dispidViewable = 0x00000015;
  static const dispidDevView = 0x00000016;
  static const dispidKSCat = 0x00000017;
  static const dispidCLSID = 0x00000018;
  static const dispid_KSCat = 0x00000019;
  static const dispid_CLSID = 0x0000001a;
  static const dispidTune = 0x0000001b;
  static const dispidTS = 0x0000001c;
  static const dispidDevSAP = 0x0000001d;
  static const dispidClip = 0x0000001e;
  static const dispidRequestedClipRect = 0x0000001f;
  static const dispidClippedSourceRect = 0x00000020;
  static const dispidAvailableSourceRect = 0x00000021;
  static const dispidMediaPosition = 0x00000022;
  static const dispidDevRun = 0x00000023;
  static const dispidDevPause = 0x00000024;
  static const dispidDevStop = 0x00000025;
  static const dispidCCEnable = 0x00000026;
  static const dispidDevStep = 0x00000027;
  static const dispidDevCanStep = 0x00000028;
  static const dispidSourceSize = 0x00000029;
  static const dispid_playtitle = 0x0000002a;
  static const dispid_playchapterintitle = 0x0000002b;
  static const dispid_playchapter = 0x0000002c;
  static const dispid_playchaptersautostop = 0x0000002d;
  static const dispid_playattime = 0x0000002e;
  static const dispid_playattimeintitle = 0x0000002f;
  static const dispid_playperiodintitleautostop = 0x00000030;
  static const dispid_replaychapter = 0x00000031;
  static const dispid_playprevchapter = 0x00000032;
  static const dispid_playnextchapter = 0x00000033;
  static const dispid_playforwards = 0x00000034;
  static const dispid_playbackwards = 0x00000035;
  static const dispid_stilloff = 0x00000036;
  static const dispid_audiolanguage = 0x00000037;
  static const dispid_showmenu = 0x00000038;
  static const dispid_resume = 0x00000039;
  static const dispid_returnfromsubmenu = 0x0000003a;
  static const dispid_buttonsavailable = 0x0000003b;
  static const dispid_currentbutton = 0x0000003c;
  static const dispid_SelectAndActivateButton = 0x0000003d;
  static const dispid_ActivateButton = 0x0000003e;
  static const dispid_SelectRightButton = 0x0000003f;
  static const dispid_SelectLeftButton = 0x00000040;
  static const dispid_SelectLowerButton = 0x00000041;
  static const dispid_SelectUpperButton = 0x00000042;
  static const dispid_ActivateAtPosition = 0x00000043;
  static const dispid_SelectAtPosition = 0x00000044;
  static const dispid_ButtonAtPosition = 0x00000045;
  static const dispid_NumberOfChapters = 0x00000046;
  static const dispid_TotalTitleTime = 0x00000047;
  static const dispid_TitlesAvailable = 0x00000048;
  static const dispid_VolumesAvailable = 0x00000049;
  static const dispid_CurrentVolume = 0x0000004a;
  static const dispid_CurrentDiscSide = 0x0000004b;
  static const dispid_CurrentDomain = 0x0000004c;
  static const dispid_CurrentChapter = 0x0000004d;
  static const dispid_CurrentTitle = 0x0000004e;
  static const dispid_CurrentTime = 0x0000004f;
  static const dispid_FramesPerSecond = 0x00000050;
  static const dispid_DVDTimeCode2bstr = 0x00000051;
  static const dispid_DVDDirectory = 0x00000052;
  static const dispid_IsSubpictureStreamEnabled = 0x00000053;
  static const dispid_IsAudioStreamEnabled = 0x00000054;
  static const dispid_CurrentSubpictureStream = 0x00000055;
  static const dispid_SubpictureLanguage = 0x00000056;
  static const dispid_CurrentAudioStream = 0x00000057;
  static const dispid_AudioStreamsAvailable = 0x00000058;
  static const dispid_AnglesAvailable = 0x00000059;
  static const dispid_CurrentAngle = 0x0000005a;
  static const dispid_CCActive = 0x0000005b;
  static const dispid_CurrentCCService = 0x0000005c;
  static const dispid_SubpictureStreamsAvailable = 0x0000005d;
  static const dispid_SubpictureOn = 0x0000005e;
  static const dispid_DVDUniqueID = 0x0000005f;
  static const dispid_EnableResetOnStop = 0x00000060;
  static const dispid_AcceptParentalLevelChange = 0x00000061;
  static const dispid_NotifyParentalLevelChange = 0x00000062;
  static const dispid_SelectParentalCountry = 0x00000063;
  static const dispid_SelectParentalLevel = 0x00000064;
  static const dispid_TitleParentalLevels = 0x00000065;
  static const dispid_PlayerParentalCountry = 0x00000066;
  static const dispid_PlayerParentalLevel = 0x00000067;
  static const dispid_Eject = 0x00000068;
  static const dispid_UOPValid = 0x00000069;
  static const dispid_SPRM = 0x0000006a;
  static const dispid_GPRM = 0x0000006b;
  static const dispid_DVDTextStringType = 0x0000006c;
  static const dispid_DVDTextString = 0x0000006d;
  static const dispid_DVDTextNumberOfStrings = 0x0000006e;
  static const dispid_DVDTextNumberOfLanguages = 0x0000006f;
  static const dispid_DVDTextLanguageLCID = 0x00000070;
  static const dispid_RegionChange = 0x00000071;
  static const dispid_DVDAdm = 0x00000072;
  static const dispid_DeleteBookmark = 0x00000073;
  static const dispid_RestoreBookmark = 0x00000074;
  static const dispid_SaveBookmark = 0x00000075;
  static const dispid_SelectDefaultAudioLanguage = 0x00000076;
  static const dispid_SelectDefaultSubpictureLanguage = 0x00000077;
  static const dispid_PreferredSubpictureStream = 0x00000078;
  static const dispid_DefaultMenuLanguage = 0x00000079;
  static const dispid_DefaultSubpictureLanguage = 0x0000007a;
  static const dispid_DefaultAudioLanguage = 0x0000007b;
  static const dispid_DefaultSubpictureLanguageExt = 0x0000007c;
  static const dispid_DefaultAudioLanguageExt = 0x0000007d;
  static const dispid_LanguageFromLCID = 0x0000007e;
  static const dispid_KaraokeAudioPresentationMode = 0x0000007f;
  static const dispid_KaraokeChannelContent = 0x00000080;
  static const dispid_KaraokeChannelAssignment = 0x00000081;
  static const dispid_RestorePreferredSettings = 0x00000082;
  static const dispid_ButtonRect = 0x00000083;
  static const dispid_DVDScreenInMouseCoordinates = 0x00000084;
  static const dispid_CustomCompositorClass = 0x00000085;
  static const dispidCustomCompositorClass = 0x00000086;
  static const dispid_CustomCompositor = 0x00000087;
  static const dispidMixerBitmap = 0x00000088;
  static const dispid_MixerBitmap = 0x00000089;
  static const dispidMixerBitmapOpacity = 0x0000008a;
  static const dispidMixerBitmapRect = 0x0000008b;
  static const dispidSetupMixerBitmap = 0x0000008c;
  static const dispidUsingOverlay = 0x0000008d;
  static const dispidDisplayChange = 0x0000008e;
  static const dispidRePaint = 0x0000008f;
  static const dispid_IsEqualDevice = 0x00000090;
  static const dispidrate = 0x00000091;
  static const dispidposition = 0x00000092;
  static const dispidpositionmode = 0x00000093;
  static const dispidlength = 0x00000094;
  static const dispidChangePassword = 0x00000095;
  static const dispidSaveParentalLevel = 0x00000096;
  static const dispidSaveParentalCountry = 0x00000097;
  static const dispidConfirmPassword = 0x00000098;
  static const dispidGetParentalLevel = 0x00000099;
  static const dispidGetParentalCountry = 0x0000009a;
  static const dispidDefaultAudioLCID = 0x0000009b;
  static const dispidDefaultSubpictureLCID = 0x0000009c;
  static const dispidDefaultMenuLCID = 0x0000009d;
  static const dispidBookmarkOnStop = 0x0000009e;
  static const dispidMaxVidRect = 0x0000009f;
  static const dispidMinVidRect = 0x000000a0;
  static const dispidCapture = 0x000000a1;
  static const dispid_DecimateInput = 0x000000a2;
  static const dispidAlloctor = 0x000000a3;
  static const dispid_Allocator = 0x000000a4;
  static const dispidAllocPresentID = 0x000000a5;
  static const dispidSetAllocator = 0x000000a6;
  static const dispid_SetAllocator = 0x000000a7;
  static const dispidStreamBufferSinkName = 0x000000a8;
  static const dispidStreamBufferSourceName = 0x000000a9;
  static const dispidStreamBufferContentRecording = 0x000000aa;
  static const dispidStreamBufferReferenceRecording = 0x000000ab;
  static const dispidstarttime = 0x000000ac;
  static const dispidstoptime = 0x000000ad;
  static const dispidrecordingstopped = 0x000000ae;
  static const dispidrecordingstarted = 0x000000af;
  static const dispidNameSetLock = 0x000000b0;
  static const dispidrecordingtype = 0x000000b1;
  static const dispidstart = 0x000000b2;
  static const dispidRecordingAttribute = 0x000000b3;
  static const dispid_RecordingAttribute = 0x000000b4;
  static const dispidSBEConfigure = 0x000000b5;
  static const dispid_CurrentRatings = 0x000000b6;
  static const dispid_MaxRatingsLevel = 0x000000b7;
  static const dispid_audioencoderint = 0x000000b8;
  static const dispid_videoencoderint = 0x000000b9;
  static const dispidService = 0x000000ba;
  static const dispid_BlockUnrated = 0x000000bb;
  static const dispid_UnratedDelay = 0x000000bc;
  static const dispid_SuppressEffects = 0x000000bd;
  static const dispidsbesource = 0x000000be;
  static const dispidSetSinkFilter = 0x000000bf;
  static const dispid_SinkStreams = 0x000000c0;
  static const dispidTVFormats = 0x000000c1;
  static const dispidModes = 0x000000c2;
  static const dispidAuxInputs = 0x000000c3;
  static const dispidTeleTextFilter = 0x000000c4;
  static const dispid_channelchangeint = 0x000000c5;
  static const dispidUnlockProfile = 0x000000c6;
  static const dispid_AddFilter = 0x000000c7;
  static const dispidSetMinSeek = 0x000000c8;
  static const dispidRateEx = 0x000000c9;
  static const dispidaudiocounter = 0x000000ca;
  static const dispidvideocounter = 0x000000cb;
  static const dispidcccounter = 0x000000cc;
  static const dispidwstcounter = 0x000000cd;
  static const dispid_audiocounter = 0x000000ce;
  static const dispid_videocounter = 0x000000cf;
  static const dispid_cccounter = 0x000000d0;
  static const dispid_wstcounter = 0x000000d1;
  static const dispidaudioanalysis = 0x000000d2;
  static const dispidvideoanalysis = 0x000000d3;
  static const dispiddataanalysis = 0x000000d4;
  static const dispidaudio_analysis = 0x000000d5;
  static const dispidvideo_analysis = 0x000000d6;
  static const dispiddata_analysis = 0x000000d7;
  static const dispid_resetFilterList = 0x000000d8;
  static const dispidDevicePath = 0x000000d9;
  static const dispid_SourceFilter = 0x000000da;
  static const dispid__SourceFilter = 0x000000db;
  static const dispidUserEvent = 0x000000dc;
  static const dispid_Bookmark = 0x000000dd;
  static const LastReservedDeviceDispid = 0x00003fff;
}

/// {@category Enum}
class SegEventidList {
  static const eventidStateChange = 0x00000000;
  static const eventidOnTuneChanged = 0x00000001;
  static const eventidEndOfMedia = 0x00000002;
  static const eventidDVDNotify = 0x00000003;
  static const eventidPlayForwards = 0x00000004;
  static const eventidPlayBackwards = 0x00000005;
  static const eventidShowMenu = 0x00000006;
  static const eventidResume = 0x00000007;
  static const eventidSelectOrActivateButton = 0x00000008;
  static const eventidStillOff = 0x00000009;
  static const eventidPauseOn = 0x0000000a;
  static const eventidChangeCurrentAudioStream = 0x0000000b;
  static const eventidChangeCurrentSubpictureStream = 0x0000000c;
  static const eventidChangeCurrentAngle = 0x0000000d;
  static const eventidPlayAtTimeInTitle = 0x0000000e;
  static const eventidPlayAtTime = 0x0000000f;
  static const eventidPlayChapterInTitle = 0x00000010;
  static const eventidPlayChapter = 0x00000011;
  static const eventidReplayChapter = 0x00000012;
  static const eventidPlayNextChapter = 0x00000013;
  static const eventidStop = 0x00000014;
  static const eventidReturnFromSubmenu = 0x00000015;
  static const eventidPlayTitle = 0x00000016;
  static const eventidPlayPrevChapter = 0x00000017;
  static const eventidChangeKaraokePresMode = 0x00000018;
  static const eventidChangeVideoPresMode = 0x00000019;
  static const eventidOverlayUnavailable = 0x0000001a;
  static const eventidSinkCertificateFailure = 0x0000001b;
  static const eventidSinkCertificateSuccess = 0x0000001c;
  static const eventidSourceCertificateFailure = 0x0000001d;
  static const eventidSourceCertificateSuccess = 0x0000001e;
  static const eventidRatingsBlocked = 0x0000001f;
  static const eventidRatingsUnlocked = 0x00000020;
  static const eventidRatingsChanged = 0x00000021;
  static const eventidWriteFailure = 0x00000022;
  static const eventidTimeHole = 0x00000023;
  static const eventidStaleDataRead = 0x00000024;
  static const eventidContentBecomingStale = 0x00000025;
  static const eventidStaleFileDeleted = 0x00000026;
  static const eventidEncryptionOn = 0x00000027;
  static const eventidEncryptionOff = 0x00000028;
  static const eventidRateChange = 0x00000029;
  static const eventidLicenseChange = 0x0000002a;
  static const eventidCOPPBlocked = 0x0000002b;
  static const eventidCOPPUnblocked = 0x0000002c;
  static const dispidlicenseerrorcode = 0x0000002d;
  static const eventidBroadcastEvent = 0x0000002e;
  static const eventidBroadcastEventEx = 0x0000002f;
  static const eventidContentPrimarilyAudio = 0x00000030;
  static const dispidAVDecAudioDualMonoEvent = 0x00000031;
  static const dispidAVAudioSampleRateEvent = 0x00000032;
  static const dispidAVAudioChannelConfigEvent = 0x00000033;
  static const dispidAVAudioChannelCountEvent = 0x00000034;
  static const dispidAVDecCommonMeanBitRateEvent = 0x00000035;
  static const dispidAVDDSurroundModeEvent = 0x00000036;
  static const dispidAVDecCommonInputFormatEvent = 0x00000037;
  static const dispidAVDecCommonOutputFormatEvent = 0x00000038;
  static const eventidWriteFailureClear = 0x00000039;
  static const LastReservedDeviceEvent = 0x00003fff;
}

/// {@category Enum}
class SignalAndServiceStatusSpanningEvent_State {
  static const SignalAndServiceStatusSpanningEvent_None = 0xffffffff;
  static const SignalAndServiceStatusSpanningEvent_Clear = 0x00000000;
  static const SignalAndServiceStatusSpanningEvent_NoTVSignal = 0x00000001;
  static const SignalAndServiceStatusSpanningEvent_ServiceOffAir = 0x00000002;
  static const SignalAndServiceStatusSpanningEvent_WeakTVSignal = 0x00000003;
  static const SignalAndServiceStatusSpanningEvent_NoSubscription = 0x00000004;
  static const SignalAndServiceStatusSpanningEvent_AllAVScrambled = 0x00000005;
}

/// {@category Enum}
class SmartCardAssociationType {
  static const NotAssociated = 0x00000000;
  static const Associated = 0x00000001;
  static const AssociationUnknown = 0x00000002;
}

/// {@category Enum}
class SmartCardStatusType {
  static const CardInserted = 0x00000000;
  static const CardRemoved = 0x00000001;
  static const CardError = 0x00000002;
  static const CardDataChanged = 0x00000003;
  static const CardFirmwareUpgrade = 0x00000004;
}

/// {@category Enum}
class SourceSizeList {
  static const sslFullSize = 0x00000000;
  static const sslClipByOverScan = 0x00000001;
  static const sslClipByClipRect = 0x00000002;
}

/// {@category Enum}
class SpectralInversion {
  static const BDA_SPECTRAL_INVERSION_NOT_SET = 0xffffffff;
  static const BDA_SPECTRAL_INVERSION_NOT_DEFINED = 0x00000000;
  static const BDA_SPECTRAL_INVERSION_AUTOMATIC = 0x00000001;
  static const BDA_SPECTRAL_INVERSION_NORMAL = 0x00000002;
  static const BDA_SPECTRAL_INVERSION_INVERTED = 0x00000003;
  static const BDA_SPECTRAL_INVERSION_MAX = 0x00000004;
}

/// {@category Enum}
class TVAudioMode {
  static const AMTVAUDIO_MODE_MONO = 0x00000001;
  static const AMTVAUDIO_MODE_STEREO = 0x00000002;
  static const AMTVAUDIO_MODE_LANG_A = 0x00000010;
  static const AMTVAUDIO_MODE_LANG_B = 0x00000020;
  static const AMTVAUDIO_MODE_LANG_C = 0x00000040;
  static const AMTVAUDIO_PRESET_STEREO = 0x00000200;
  static const AMTVAUDIO_PRESET_LANG_A = 0x00001000;
  static const AMTVAUDIO_PRESET_LANG_B = 0x00002000;
  static const AMTVAUDIO_PRESET_LANG_C = 0x00004000;
}

/// {@category Enum}
class TransmissionMode {
  static const BDA_XMIT_MODE_NOT_SET = 0xffffffff;
  static const BDA_XMIT_MODE_NOT_DEFINED = 0x00000000;
  static const BDA_XMIT_MODE_2K = 0x00000001;
  static const BDA_XMIT_MODE_8K = 0x00000002;
  static const BDA_XMIT_MODE_4K = 0x00000003;
  static const BDA_XMIT_MODE_2K_INTERLEAVED = 0x00000004;
  static const BDA_XMIT_MODE_4K_INTERLEAVED = 0x00000005;
  static const BDA_XMIT_MODE_1K = 0x00000006;
  static const BDA_XMIT_MODE_16K = 0x00000007;
  static const BDA_XMIT_MODE_32K = 0x00000008;
  static const BDA_XMIT_MODE_MAX = 0x00000009;
}

/// {@category Enum}
class TunerInputType {
  static const TunerInputCable = 0x00000000;
  static const TunerInputAntenna = 0x00000001;
}

/// {@category Enum}
class UICloseReasonType {
  static const NotReady = 0x00000000;
  static const UserClosed = 0x00000001;
  static const SystemClosed = 0x00000002;
  static const DeviceClosed = 0x00000003;
  static const ErrorClosed = 0x00000004;
}

/// {@category Enum}
class VALID_UOP_FLAG {
  static const UOP_FLAG_Play_Title_Or_AtTime = 0x00000001;
  static const UOP_FLAG_Play_Chapter = 0x00000002;
  static const UOP_FLAG_Play_Title = 0x00000004;
  static const UOP_FLAG_Stop = 0x00000008;
  static const UOP_FLAG_ReturnFromSubMenu = 0x00000010;
  static const UOP_FLAG_Play_Chapter_Or_AtTime = 0x00000020;
  static const UOP_FLAG_PlayPrev_Or_Replay_Chapter = 0x00000040;
  static const UOP_FLAG_PlayNext_Chapter = 0x00000080;
  static const UOP_FLAG_Play_Forwards = 0x00000100;
  static const UOP_FLAG_Play_Backwards = 0x00000200;
  static const UOP_FLAG_ShowMenu_Title = 0x00000400;
  static const UOP_FLAG_ShowMenu_Root = 0x00000800;
  static const UOP_FLAG_ShowMenu_SubPic = 0x00001000;
  static const UOP_FLAG_ShowMenu_Audio = 0x00002000;
  static const UOP_FLAG_ShowMenu_Angle = 0x00004000;
  static const UOP_FLAG_ShowMenu_Chapter = 0x00008000;
  static const UOP_FLAG_Resume = 0x00010000;
  static const UOP_FLAG_Select_Or_Activate_Button = 0x00020000;
  static const UOP_FLAG_Still_Off = 0x00040000;
  static const UOP_FLAG_Pause_On = 0x00080000;
  static const UOP_FLAG_Select_Audio_Stream = 0x00100000;
  static const UOP_FLAG_Select_SubPic_Stream = 0x00200000;
  static const UOP_FLAG_Select_Angle = 0x00400000;
  static const UOP_FLAG_Select_Karaoke_Audio_Presentation_Mode = 0x00800000;
  static const UOP_FLAG_Select_Video_Mode_Preference = 0x01000000;
}

/// {@category Enum}
class VA_COLOR_PRIMARIES {
  static const VA_PRIMARIES_ITU_R_BT_709 = 0x00000001;
  static const VA_PRIMARIES_UNSPECIFIED = 0x00000002;
  static const VA_PRIMARIES_ITU_R_BT_470_SYSTEM_M = 0x00000004;
  static const VA_PRIMARIES_ITU_R_BT_470_SYSTEM_B_G = 0x00000005;
  static const VA_PRIMARIES_SMPTE_170M = 0x00000006;
  static const VA_PRIMARIES_SMPTE_240M = 0x00000007;
  static const VA_PRIMARIES_H264_GENERIC_FILM = 0x00000008;
}

/// {@category Enum}
class VA_MATRIX_COEFFICIENTS {
  static const VA_MATRIX_COEFF_H264_RGB = 0x00000000;
  static const VA_MATRIX_COEFF_ITU_R_BT_709 = 0x00000001;
  static const VA_MATRIX_COEFF_UNSPECIFIED = 0x00000002;
  static const VA_MATRIX_COEFF_FCC = 0x00000004;
  static const VA_MATRIX_COEFF_ITU_R_BT_470_SYSTEM_B_G = 0x00000005;
  static const VA_MATRIX_COEFF_SMPTE_170M = 0x00000006;
  static const VA_MATRIX_COEFF_SMPTE_240M = 0x00000007;
  static const VA_MATRIX_COEFF_H264_YCgCo = 0x00000008;
}

/// {@category Enum}
class VA_TRANSFER_CHARACTERISTICS {
  static const VA_TRANSFER_CHARACTERISTICS_ITU_R_BT_709 = 0x00000001;
  static const VA_TRANSFER_CHARACTERISTICS_UNSPECIFIED = 0x00000002;
  static const VA_TRANSFER_CHARACTERISTICS_ITU_R_BT_470_SYSTEM_M = 0x00000004;
  static const VA_TRANSFER_CHARACTERISTICS_ITU_R_BT_470_SYSTEM_B_G = 0x00000005;
  static const VA_TRANSFER_CHARACTERISTICS_SMPTE_170M = 0x00000006;
  static const VA_TRANSFER_CHARACTERISTICS_SMPTE_240M = 0x00000007;
  static const VA_TRANSFER_CHARACTERISTICS_LINEAR = 0x00000008;
  static const VA_TRANSFER_CHARACTERISTICS_H264_LOG_100_TO_1 = 0x00000009;
  static const VA_TRANSFER_CHARACTERISTICS_H264_LOG_316_TO_1 = 0x0000000a;
}

/// {@category Enum}
class VA_VIDEO_FORMAT {
  static const VA_VIDEO_COMPONENT = 0x00000000;
  static const VA_VIDEO_PAL = 0x00000001;
  static const VA_VIDEO_NTSC = 0x00000002;
  static const VA_VIDEO_SECAM = 0x00000003;
  static const VA_VIDEO_MAC = 0x00000004;
  static const VA_VIDEO_UNSPECIFIED = 0x00000005;
}

/// {@category Enum}
class VIDEOENCODER_BITRATE_MODE {
  static const ConstantBitRate = 0x00000000;
  static const VariableBitRateAverage = 0x00000001;
  static const VariableBitRatePeak = 0x00000002;
}

/// {@category Enum}
class VMR9AlphaBitmapFlags {
  static const VMR9AlphaBitmap_Disable = 0x00000001;
  static const VMR9AlphaBitmap_hDC = 0x00000002;
  static const VMR9AlphaBitmap_EntireDDS = 0x00000004;
  static const VMR9AlphaBitmap_SrcColorKey = 0x00000008;
  static const VMR9AlphaBitmap_SrcRect = 0x00000010;
  static const VMR9AlphaBitmap_FilterMode = 0x00000020;
}

/// {@category Enum}
class VMR9AspectRatioMode {
  static const VMR9ARMode_None = 0x00000000;
  static const VMR9ARMode_LetterBox = 0x00000001;
}

/// {@category Enum}
class VMR9DeinterlacePrefs {
  static const DeinterlacePref9_NextBest = 0x00000001;
  static const DeinterlacePref9_BOB = 0x00000002;
  static const DeinterlacePref9_Weave = 0x00000004;
  static const DeinterlacePref9_Mask = 0x00000007;
}

/// {@category Enum}
class VMR9DeinterlaceTech {
  static const DeinterlaceTech9_Unknown = 0x00000000;
  static const DeinterlaceTech9_BOBLineReplicate = 0x00000001;
  static const DeinterlaceTech9_BOBVerticalStretch = 0x00000002;
  static const DeinterlaceTech9_MedianFiltering = 0x00000004;
  static const DeinterlaceTech9_EdgeFiltering = 0x00000010;
  static const DeinterlaceTech9_FieldAdaptive = 0x00000020;
  static const DeinterlaceTech9_PixelAdaptive = 0x00000040;
  static const DeinterlaceTech9_MotionVectorSteered = 0x00000080;
}

/// {@category Enum}
class VMR9MixerPrefs {
  static const MixerPref9_NoDecimation = 0x00000001;
  static const MixerPref9_DecimateOutput = 0x00000002;
  static const MixerPref9_ARAdjustXorY = 0x00000004;
  static const MixerPref9_NonSquareMixing = 0x00000008;
  static const MixerPref9_DecimateMask = 0x0000000f;
  static const MixerPref9_BiLinearFiltering = 0x00000010;
  static const MixerPref9_PointFiltering = 0x00000020;
  static const MixerPref9_AnisotropicFiltering = 0x00000040;
  static const MixerPref9_PyramidalQuadFiltering = 0x00000080;
  static const MixerPref9_GaussianQuadFiltering = 0x00000100;
  static const MixerPref9_FilteringReserved = 0x00000e00;
  static const MixerPref9_FilteringMask = 0x00000ff0;
  static const MixerPref9_RenderTargetRGB = 0x00001000;
  static const MixerPref9_RenderTargetYUV = 0x00002000;
  static const MixerPref9_RenderTargetReserved = 0x000fc000;
  static const MixerPref9_RenderTargetMask = 0x000ff000;
  static const MixerPref9_DynamicSwitchToBOB = 0x00100000;
  static const MixerPref9_DynamicDecimateBy2 = 0x00200000;
  static const MixerPref9_DynamicReserved = 0x00c00000;
  static const MixerPref9_DynamicMask = 0x00f00000;
}

/// {@category Enum}
class VMR9Mode {
  static const VMR9Mode_Windowed = 0x00000001;
  static const VMR9Mode_Windowless = 0x00000002;
  static const VMR9Mode_Renderless = 0x00000004;
  static const VMR9Mode_Mask = 0x00000007;
}

/// {@category Enum}
class VMR9PresentationFlags {
  static const VMR9Sample_SyncPoint = 0x00000001;
  static const VMR9Sample_Preroll = 0x00000002;
  static const VMR9Sample_Discontinuity = 0x00000004;
  static const VMR9Sample_TimeValid = 0x00000008;
  static const VMR9Sample_SrcDstRectsValid = 0x00000010;
}

/// {@category Enum}
class VMR9ProcAmpControlFlags {
  static const ProcAmpControl9_Brightness = 0x00000001;
  static const ProcAmpControl9_Contrast = 0x00000002;
  static const ProcAmpControl9_Hue = 0x00000004;
  static const ProcAmpControl9_Saturation = 0x00000008;
  static const ProcAmpControl9_Mask = 0x0000000f;
}

/// {@category Enum}
class VMR9RenderPrefs {
  static const RenderPrefs9_DoNotRenderBorder = 0x00000001;
  static const RenderPrefs9_Mask = 0x00000001;
}

/// {@category Enum}
class VMR9SurfaceAllocationFlags {
  static const VMR9AllocFlag_3DRenderTarget = 0x00000001;
  static const VMR9AllocFlag_DXVATarget = 0x00000002;
  static const VMR9AllocFlag_TextureSurface = 0x00000004;
  static const VMR9AllocFlag_OffscreenSurface = 0x00000008;
  static const VMR9AllocFlag_RGBDynamicSwitch = 0x00000010;
  static const VMR9AllocFlag_UsageReserved = 0x000000e0;
  static const VMR9AllocFlag_UsageMask = 0x000000ff;
}

/// {@category Enum}
class VMR9_SampleFormat {
  static const VMR9_SampleReserved = 0x00000001;
  static const VMR9_SampleProgressiveFrame = 0x00000002;
  static const VMR9_SampleFieldInterleavedEvenFirst = 0x00000003;
  static const VMR9_SampleFieldInterleavedOddFirst = 0x00000004;
  static const VMR9_SampleFieldSingleEven = 0x00000005;
  static const VMR9_SampleFieldSingleOdd = 0x00000006;
}

/// {@category Enum}
class VMRDeinterlacePrefs {
  static const DeinterlacePref_NextBest = 0x00000001;
  static const DeinterlacePref_BOB = 0x00000002;
  static const DeinterlacePref_Weave = 0x00000004;
  static const DeinterlacePref_Mask = 0x00000007;
}

/// {@category Enum}
class VMRDeinterlaceTech {
  static const DeinterlaceTech_Unknown = 0x00000000;
  static const DeinterlaceTech_BOBLineReplicate = 0x00000001;
  static const DeinterlaceTech_BOBVerticalStretch = 0x00000002;
  static const DeinterlaceTech_MedianFiltering = 0x00000004;
  static const DeinterlaceTech_EdgeFiltering = 0x00000010;
  static const DeinterlaceTech_FieldAdaptive = 0x00000020;
  static const DeinterlaceTech_PixelAdaptive = 0x00000040;
  static const DeinterlaceTech_MotionVectorSteered = 0x00000080;
}

/// {@category Enum}
class VMRMixerPrefs {
  static const MixerPref_NoDecimation = 0x00000001;
  static const MixerPref_DecimateOutput = 0x00000002;
  static const MixerPref_ARAdjustXorY = 0x00000004;
  static const MixerPref_DecimationReserved = 0x00000008;
  static const MixerPref_DecimateMask = 0x0000000f;
  static const MixerPref_BiLinearFiltering = 0x00000010;
  static const MixerPref_PointFiltering = 0x00000020;
  static const MixerPref_FilteringMask = 0x000000f0;
  static const MixerPref_RenderTargetRGB = 0x00000100;
  static const MixerPref_RenderTargetYUV = 0x00001000;
  static const MixerPref_RenderTargetYUV420 = 0x00000200;
  static const MixerPref_RenderTargetYUV422 = 0x00000400;
  static const MixerPref_RenderTargetYUV444 = 0x00000800;
  static const MixerPref_RenderTargetReserved = 0x0000e000;
  static const MixerPref_RenderTargetMask = 0x0000ff00;
  static const MixerPref_DynamicSwitchToBOB = 0x00010000;
  static const MixerPref_DynamicDecimateBy2 = 0x00020000;
  static const MixerPref_DynamicReserved = 0x000c0000;
  static const MixerPref_DynamicMask = 0x000f0000;
}

/// {@category Enum}
class VMRMode {
  static const VMRMode_Windowed = 0x00000001;
  static const VMRMode_Windowless = 0x00000002;
  static const VMRMode_Renderless = 0x00000004;
  static const VMRMode_Mask = 0x00000007;
}

/// {@category Enum}
class VMRPresentationFlags {
  static const VMRSample_SyncPoint = 0x00000001;
  static const VMRSample_Preroll = 0x00000002;
  static const VMRSample_Discontinuity = 0x00000004;
  static const VMRSample_TimeValid = 0x00000008;
  static const VMRSample_SrcDstRectsValid = 0x00000010;
}

/// {@category Enum}
class VMRRenderPrefs {
  static const RenderPrefs_RestrictToInitialMonitor = 0x00000000;
  static const RenderPrefs_ForceOffscreen = 0x00000001;
  static const RenderPrefs_ForceOverlays = 0x00000002;
  static const RenderPrefs_AllowOverlays = 0x00000000;
  static const RenderPrefs_AllowOffscreen = 0x00000000;
  static const RenderPrefs_DoNotRenderColorKeyAndBorder = 0x00000008;
  static const RenderPrefs_Reserved = 0x00000010;
  static const RenderPrefs_PreferAGPMemWhenMixing = 0x00000020;
  static const RenderPrefs_Mask = 0x0000003f;
}

/// {@category Enum}
class VMRSurfaceAllocationFlags {
  static const AMAP_PIXELFORMAT_VALID = 0x00000001;
  static const AMAP_3D_TARGET = 0x00000002;
  static const AMAP_ALLOW_SYSMEM = 0x00000004;
  static const AMAP_FORCE_SYSMEM = 0x00000008;
  static const AMAP_DIRECTED_FLIP = 0x00000010;
  static const AMAP_DXVA_TARGET = 0x00000020;
}

/// {@category Enum}
class VMR_ASPECT_RATIO_MODE {
  static const VMR_ARMODE_NONE = 0x00000000;
  static const VMR_ARMODE_LETTER_BOX = 0x00000001;
}

/// {@category Enum}
class VfwCaptureDialogs {
  static const VfwCaptureDialog_Source = 0x00000001;
  static const VfwCaptureDialog_Format = 0x00000002;
  static const VfwCaptureDialog_Display = 0x00000004;
}

/// {@category Enum}
class VfwCompressDialogs {
  static const VfwCompressDialog_Config = 0x00000001;
  static const VfwCompressDialog_About = 0x00000002;
  static const VfwCompressDialog_QueryConfig = 0x00000004;
  static const VfwCompressDialog_QueryAbout = 0x00000008;
}

/// {@category Enum}
class VideoControlFlags {
  static const VideoControlFlag_FlipHorizontal = 0x00000001;
  static const VideoControlFlag_FlipVertical = 0x00000002;
  static const VideoControlFlag_ExternalTriggerEnable = 0x00000004;
  static const VideoControlFlag_Trigger = 0x00000008;
}

/// {@category Enum}
class VideoCopyProtectionType {
  static const VideoCopyProtectionMacrovisionBasic = 0x00000000;
  static const VideoCopyProtectionMacrovisionCBI = 0x00000001;
}

/// {@category Enum}
class VideoProcAmpFlags {
  static const VideoProcAmp_Flags_Auto = 0x00000001;
  static const VideoProcAmp_Flags_Manual = 0x00000002;
}

/// {@category Enum}
class VideoProcAmpProperty {
  static const VideoProcAmp_Brightness = 0x00000000;
  static const VideoProcAmp_Contrast = 0x00000001;
  static const VideoProcAmp_Hue = 0x00000002;
  static const VideoProcAmp_Saturation = 0x00000003;
  static const VideoProcAmp_Sharpness = 0x00000004;
  static const VideoProcAmp_Gamma = 0x00000005;
  static const VideoProcAmp_ColorEnable = 0x00000006;
  static const VideoProcAmp_WhiteBalance = 0x00000007;
  static const VideoProcAmp_BacklightCompensation = 0x00000008;
  static const VideoProcAmp_Gain = 0x00000009;
}

/// {@category Enum}
class AMRESCTL_RESERVEFLAGS {
  static const AMRESCTL_RESERVEFLAGS_RESERVE = 0x00000000;
  static const AMRESCTL_RESERVEFLAGS_UNRESERVE = 0x00000001;
}

/// {@category Enum}
class AMSTREAMSELECTENABLEFLAGS {
  static const AMSTREAMSELECTENABLE_ENABLE = 0x00000001;
  static const AMSTREAMSELECTENABLE_ENABLEALL = 0x00000002;
}

/// {@category Enum}
class AMSTREAMSELECTINFOFLAGS {
  static const AMSTREAMSELECTINFO_ENABLED = 0x00000001;
  static const AMSTREAMSELECTINFO_EXCLUSIVE = 0x00000002;
}

/// {@category Enum}
class AM_AUDIO_RENDERER_STAT_PARAM {
  static const AM_AUDREND_STAT_PARAM_BREAK_COUNT = 0x00000001;
  static const AM_AUDREND_STAT_PARAM_SLAVE_MODE = 0x00000002;
  static const AM_AUDREND_STAT_PARAM_SILENCE_DUR = 0x00000003;
  static const AM_AUDREND_STAT_PARAM_LAST_BUFFER_DUR = 0x00000004;
  static const AM_AUDREND_STAT_PARAM_DISCONTINUITIES = 0x00000005;
  static const AM_AUDREND_STAT_PARAM_SLAVE_RATE = 0x00000006;
  static const AM_AUDREND_STAT_PARAM_SLAVE_DROPWRITE_DUR = 0x00000007;
  static const AM_AUDREND_STAT_PARAM_SLAVE_HIGHLOWERROR = 0x00000008;
  static const AM_AUDREND_STAT_PARAM_SLAVE_LASTHIGHLOWERROR = 0x00000009;
  static const AM_AUDREND_STAT_PARAM_SLAVE_ACCUMERROR = 0x0000000a;
  static const AM_AUDREND_STAT_PARAM_BUFFERFULLNESS = 0x0000000b;
  static const AM_AUDREND_STAT_PARAM_JITTER = 0x0000000c;
}

/// {@category Enum}
class AM_FILTER_MISC_FLAGS {
  static const AM_FILTER_MISC_FLAGS_IS_RENDERER = 0x00000001;
  static const AM_FILTER_MISC_FLAGS_IS_SOURCE = 0x00000002;
}

/// {@category Enum}
class AM_INTF_SEARCH_FLAGS {
  static const AM_INTF_SEARCH_INPUT_PIN = 0x00000001;
  static const AM_INTF_SEARCH_OUTPUT_PIN = 0x00000002;
  static const AM_INTF_SEARCH_FILTER = 0x00000004;
}

/// {@category Enum}
class AM_OVERLAY_NOTIFY_FLAGS {
  static const AM_OVERLAY_NOTIFY_VISIBLE_CHANGE = 0x00000001;
  static const AM_OVERLAY_NOTIFY_SOURCE_CHANGE = 0x00000002;
  static const AM_OVERLAY_NOTIFY_DEST_CHANGE = 0x00000004;
}

/// {@category Enum}
class AM_PIN_FLOW_CONTROL_BLOCK_FLAGS {
  static const AM_PIN_FLOW_CONTROL_BLOCK = 0x00000001;
}

/// {@category Enum}
class AM_PUSHSOURCE_FLAGS {
  static const AM_PUSHSOURCECAPS_INTERNAL_RM = 0x00000001;
  static const AM_PUSHSOURCECAPS_NOT_LIVE = 0x00000002;
  static const AM_PUSHSOURCECAPS_PRIVATE_CLOCK = 0x00000004;
  static const AM_PUSHSOURCEREQS_USE_STREAM_CLOCK = 0x00010000;
  static const AM_PUSHSOURCEREQS_USE_CLOCK_CHAIN = 0x00020000;
}

/// {@category Enum}
class AM_RENSDEREXFLAGS {
  static const AM_RENDEREX_RENDERTOEXISTINGRENDERERS = 0x00000001;
}

/// {@category Enum}
class DVDECODERRESOLUTION {
  static const DVDECODERRESOLUTION_720x480 = 0x000003e8;
  static const DVDECODERRESOLUTION_360x240 = 0x000003e9;
  static const DVDECODERRESOLUTION_180x120 = 0x000003ea;
  static const DVDECODERRESOLUTION_88x60 = 0x000003eb;
}

/// {@category Enum}
class DVENCODERFORMAT {
  static const DVENCODERFORMAT_DVSD = 0x000007d7;
  static const DVENCODERFORMAT_DVHD = 0x000007d8;
  static const DVENCODERFORMAT_DVSL = 0x000007d9;
}

/// {@category Enum}
class DVENCODERRESOLUTION {
  static const DVENCODERRESOLUTION_720x480 = 0x000007dc;
  static const DVENCODERRESOLUTION_360x240 = 0x000007dd;
  static const DVENCODERRESOLUTION_180x120 = 0x000007de;
  static const DVENCODERRESOLUTION_88x60 = 0x000007df;
}

/// {@category Enum}
class DVENCODERVIDEOFORMAT {
  static const DVENCODERVIDEOFORMAT_NTSC = 0x000007d0;
  static const DVENCODERVIDEOFORMAT_PAL = 0x000007d1;
}

/// {@category Enum}
class DVRESOLUTION {
  static const DVRESOLUTION_FULL = 0x000003e8;
  static const DVRESOLUTION_HALF = 0x000003e9;
  static const DVRESOLUTION_QUARTER = 0x000003ea;
  static const DVRESOLUTION_DC = 0x000003eb;
}

/// {@category Enum}
class REM_FILTER_FLAGS {
  static const REMFILTERF_LEAVECONNECTED = 0x00000001;
}
