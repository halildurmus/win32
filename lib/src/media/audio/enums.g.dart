/// {@category Enum}
class AMBISONICS_CHANNEL_ORDERING {
  static const AMBISONICS_CHANNEL_ORDERING_ACN = 0x00000000;
}

/// {@category Enum}
class AMBISONICS_NORMALIZATION {
  static const AMBISONICS_NORMALIZATION_SN3D = 0x00000000;
  static const AMBISONICS_NORMALIZATION_N3D = 0x00000001;
}

/// {@category Enum}
class AMBISONICS_TYPE {
  static const AMBISONICS_TYPE_FULL3D = 0x00000000;
}

/// {@category Enum}
class AUDCLNT_SHAREMODE {
  static const AUDCLNT_SHAREMODE_SHARED = 0x00000000;
  static const AUDCLNT_SHAREMODE_EXCLUSIVE = 0x00000001;
}

/// {@category Enum}
class AUDCLNT_STREAMOPTIONS {
  static const AUDCLNT_STREAMOPTIONS_NONE = 0x00000000;
  static const AUDCLNT_STREAMOPTIONS_RAW = 0x00000001;
  static const AUDCLNT_STREAMOPTIONS_MATCH_FORMAT = 0x00000002;
  static const AUDCLNT_STREAMOPTIONS_AMBISONICS = 0x00000004;
}

/// {@category Enum}
class AUDIOCLIENT_ACTIVATION_TYPE {
  static const AUDIOCLIENT_ACTIVATION_TYPE_DEFAULT = 0x00000000;
  static const AUDIOCLIENT_ACTIVATION_TYPE_PROCESS_LOOPBACK = 0x00000001;
}

/// {@category Enum}
class AUDIO_DUCKING_OPTIONS {
  static const AUDIO_DUCKING_OPTIONS_DEFAULT = 0x00000000;
  static const AUDIO_DUCKING_OPTIONS_DO_NOT_DUCK_OTHER_STREAMS = 0x00000001;
}

/// {@category Enum}
class AUDIO_EFFECT_STATE {
  static const AUDIO_EFFECT_STATE_OFF = 0x00000000;
  static const AUDIO_EFFECT_STATE_ON = 0x00000001;
}

/// {@category Enum}
class AUDIO_STREAM_CATEGORY {
  static const AudioCategory_Other = 0x00000000;
  static const AudioCategory_ForegroundOnlyMedia = 0x00000001;
  static const AudioCategory_Communications = 0x00000003;
  static const AudioCategory_Alerts = 0x00000004;
  static const AudioCategory_SoundEffects = 0x00000005;
  static const AudioCategory_GameEffects = 0x00000006;
  static const AudioCategory_GameMedia = 0x00000007;
  static const AudioCategory_GameChat = 0x00000008;
  static const AudioCategory_Speech = 0x00000009;
  static const AudioCategory_Movie = 0x0000000a;
  static const AudioCategory_Media = 0x0000000b;
  static const AudioCategory_FarFieldSpeech = 0x0000000c;
  static const AudioCategory_UniformSpeech = 0x0000000d;
  static const AudioCategory_VoiceTyping = 0x0000000e;
}

/// {@category Enum}
class AudioObjectType {
  static const AudioObjectType_None = 0x00000000;
  static const AudioObjectType_Dynamic = 0x00000001;
  static const AudioObjectType_FrontLeft = 0x00000002;
  static const AudioObjectType_FrontRight = 0x00000004;
  static const AudioObjectType_FrontCenter = 0x00000008;
  static const AudioObjectType_LowFrequency = 0x00000010;
  static const AudioObjectType_SideLeft = 0x00000020;
  static const AudioObjectType_SideRight = 0x00000040;
  static const AudioObjectType_BackLeft = 0x00000080;
  static const AudioObjectType_BackRight = 0x00000100;
  static const AudioObjectType_TopFrontLeft = 0x00000200;
  static const AudioObjectType_TopFrontRight = 0x00000400;
  static const AudioObjectType_TopBackLeft = 0x00000800;
  static const AudioObjectType_TopBackRight = 0x00001000;
  static const AudioObjectType_BottomFrontLeft = 0x00002000;
  static const AudioObjectType_BottomFrontRight = 0x00004000;
  static const AudioObjectType_BottomBackLeft = 0x00008000;
  static const AudioObjectType_BottomBackRight = 0x00010000;
  static const AudioObjectType_BackCenter = 0x00020000;
}

/// {@category Enum}
class AudioSessionDisconnectReason {
  static const DisconnectReasonDeviceRemoval = 0x00000000;
  static const DisconnectReasonServerShutdown = 0x00000001;
  static const DisconnectReasonFormatChanged = 0x00000002;
  static const DisconnectReasonSessionLogoff = 0x00000003;
  static const DisconnectReasonSessionDisconnected = 0x00000004;
  static const DisconnectReasonExclusiveModeOverride = 0x00000005;
}

/// {@category Enum}
class AudioSessionState {
  static const AudioSessionStateInactive = 0x00000000;
  static const AudioSessionStateActive = 0x00000001;
  static const AudioSessionStateExpired = 0x00000002;
}

/// {@category Enum}
class AudioStateMonitorSoundLevel {
  static const Muted = 0x00000000;
  static const Low = 0x00000001;
  static const Full = 0x00000002;
}

/// {@category Enum}
class ConnectorType {
  static const Unknown_Connector = 0x00000000;
  static const Physical_Internal = 0x00000001;
  static const Physical_External = 0x00000002;
  static const Software_IO = 0x00000003;
  static const Software_Fixed = 0x00000004;
  static const Network = 0x00000005;
}

/// {@category Enum}
class DataFlow {
  static const In = 0x00000000;
  static const Out = 0x00000001;
}

/// {@category Enum}
class EDataFlow {
  static const eRender = 0x00000000;
  static const eCapture = 0x00000001;
  static const eAll = 0x00000002;
  static const EDataFlow_enum_count = 0x00000003;
}

/// {@category Enum}
class ERole {
  static const eConsole = 0x00000000;
  static const eMultimedia = 0x00000001;
  static const eCommunications = 0x00000002;
  static const ERole_enum_count = 0x00000003;
}

/// {@category Enum}
class EndpointFormFactor {
  static const RemoteNetworkDevice = 0x00000000;
  static const Speakers = 0x00000001;
  static const LineLevel = 0x00000002;
  static const Headphones = 0x00000003;
  static const Microphone = 0x00000004;
  static const Headset = 0x00000005;
  static const Handset = 0x00000006;
  static const UnknownDigitalPassthrough = 0x00000007;
  static const SPDIF = 0x00000008;
  static const DigitalAudioDisplayDevice = 0x00000009;
  static const UnknownFormFactor = 0x0000000a;
  static const EndpointFormFactor_enum_count = 0x0000000b;
}

/// {@category Enum}
class MIDI_WAVE_OPEN_TYPE {
  static const CALLBACK_TYPEMASK = 0x00070000;
  static const CALLBACK_NULL = 0x00000000;
  static const CALLBACK_WINDOW = 0x00010000;
  static const CALLBACK_TASK = 0x00020000;
  static const CALLBACK_FUNCTION = 0x00030000;
  static const CALLBACK_THREAD = 0x00020000;
  static const CALLBACK_EVENT = 0x00050000;
  static const WAVE_FORMAT_QUERY = 0x00000001;
  static const WAVE_ALLOWSYNC = 0x00000002;
  static const WAVE_MAPPED = 0x00000004;
  static const WAVE_FORMAT_DIRECT = 0x00000008;
  static const WAVE_FORMAT_DIRECT_QUERY = 0x00000009;
  static const WAVE_MAPPED_DEFAULT_COMMUNICATION_DEVICE = 0x00000010;
  static const MIDI_IO_STATUS = 0x00000020;
}

/// {@category Enum}
class MIXERLINE_COMPONENTTYPE {
  static const MIXERLINE_COMPONENTTYPE_DST_DIGITAL = 0x00000001;
  static const MIXERLINE_COMPONENTTYPE_DST_HEADPHONES = 0x00000005;
  static const MIXERLINE_COMPONENTTYPE_DST_LINE = 0x00000002;
  static const MIXERLINE_COMPONENTTYPE_DST_MONITOR = 0x00000003;
  static const MIXERLINE_COMPONENTTYPE_DST_SPEAKERS = 0x00000004;
  static const MIXERLINE_COMPONENTTYPE_DST_TELEPHONE = 0x00000006;
  static const MIXERLINE_COMPONENTTYPE_DST_UNDEFINED = 0x00000000;
  static const MIXERLINE_COMPONENTTYPE_DST_VOICEIN = 0x00000008;
  static const MIXERLINE_COMPONENTTYPE_DST_WAVEIN = 0x00000007;
  static const MIXERLINE_COMPONENTTYPE_SRC_ANALOG = 0x0000100a;
  static const MIXERLINE_COMPONENTTYPE_SRC_AUXILIARY = 0x00001009;
  static const MIXERLINE_COMPONENTTYPE_SRC_COMPACTDISC = 0x00001005;
  static const MIXERLINE_COMPONENTTYPE_SRC_DIGITAL = 0x00001001;
  static const MIXERLINE_COMPONENTTYPE_SRC_LINE = 0x00001002;
  static const MIXERLINE_COMPONENTTYPE_SRC_MICROPHONE = 0x00001003;
  static const MIXERLINE_COMPONENTTYPE_SRC_PCSPEAKER = 0x00001007;
  static const MIXERLINE_COMPONENTTYPE_SRC_SYNTHESIZER = 0x00001004;
  static const MIXERLINE_COMPONENTTYPE_SRC_TELEPHONE = 0x00001006;
  static const MIXERLINE_COMPONENTTYPE_SRC_UNDEFINED = 0x00001000;
  static const MIXERLINE_COMPONENTTYPE_SRC_WAVEOUT = 0x00001008;
}

/// {@category Enum}
class PROCESS_LOOPBACK_MODE {
  static const PROCESS_LOOPBACK_MODE_INCLUDE_TARGET_PROCESS_TREE = 0x00000000;
  static const PROCESS_LOOPBACK_MODE_EXCLUDE_TARGET_PROCESS_TREE = 0x00000001;
}

/// {@category Enum}
class PartType {
  static const Connector = 0x00000000;
  static const Subunit = 0x00000001;
}

/// {@category Enum}
class SPATIAL_AUDIO_STREAM_OPTIONS {
  static const SPATIAL_AUDIO_STREAM_OPTIONS_NONE = 0x00000000;
  static const SPATIAL_AUDIO_STREAM_OPTIONS_OFFLOAD = 0x00000001;
}

/// {@category Enum}
class SpatialAudioHrtfDirectivityType {
  static const SpatialAudioHrtfDirectivity_OmniDirectional = 0x00000000;
  static const SpatialAudioHrtfDirectivity_Cardioid = 0x00000001;
  static const SpatialAudioHrtfDirectivity_Cone = 0x00000002;
}

/// {@category Enum}
class SpatialAudioHrtfDistanceDecayType {
  static const SpatialAudioHrtfDistanceDecay_NaturalDecay = 0x00000000;
  static const SpatialAudioHrtfDistanceDecay_CustomDecay = 0x00000001;
}

/// {@category Enum}
class SpatialAudioHrtfEnvironmentType {
  static const SpatialAudioHrtfEnvironment_Small = 0x00000000;
  static const SpatialAudioHrtfEnvironment_Medium = 0x00000001;
  static const SpatialAudioHrtfEnvironment_Large = 0x00000002;
  static const SpatialAudioHrtfEnvironment_Outdoors = 0x00000003;
  static const SpatialAudioHrtfEnvironment_Average = 0x00000004;
}

/// {@category Enum}
class SpatialAudioMetadataCopyMode {
  static const SpatialAudioMetadataCopy_Overwrite = 0x00000000;
  static const SpatialAudioMetadataCopy_Append = 0x00000001;
  static const SpatialAudioMetadataCopy_AppendMergeWithLast = 0x00000002;
  static const SpatialAudioMetadataCopy_AppendMergeWithFirst = 0x00000003;
}

/// {@category Enum}
class SpatialAudioMetadataWriterOverflowMode {
  static const SpatialAudioMetadataWriterOverflow_Fail = 0x00000000;
  static const SpatialAudioMetadataWriterOverflow_MergeWithNew = 0x00000001;
  static const SpatialAudioMetadataWriterOverflow_MergeWithLast = 0x00000002;
}

/// {@category Enum}
class AUDCLNT_BUFFERFLAGS {
  static const AUDCLNT_BUFFERFLAGS_DATA_DISCONTINUITY = 0x00000001;
  static const AUDCLNT_BUFFERFLAGS_SILENT = 0x00000002;
  static const AUDCLNT_BUFFERFLAGS_TIMESTAMP_ERROR = 0x00000004;
}

/// {@category Enum}
class MIDL___MIDL_itf_mmdeviceapi_0000_0008_0002 {
  static const AUDIO_SYSTEMEFFECTS_PROPERTYSTORE_TYPE_DEFAULT = 0x00000000;
  static const AUDIO_SYSTEMEFFECTS_PROPERTYSTORE_TYPE_USER = 0x00000001;
  static const AUDIO_SYSTEMEFFECTS_PROPERTYSTORE_TYPE_VOLATILE = 0x00000002;
  static const AUDIO_SYSTEMEFFECTS_PROPERTYSTORE_TYPE_ENUM_COUNT = 0x00000003;
}
