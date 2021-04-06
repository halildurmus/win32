/// {@category Enum}
class NETSOURCE_URLCREDPOLICY_SETTINGS {
  static const NETSOURCE_URLCREDPOLICY_SETTING_SILENTLOGONOK = 0x00000000;
  static const NETSOURCE_URLCREDPOLICY_SETTING_MUSTPROMPTUSER = 0x00000001;
  static const NETSOURCE_URLCREDPOLICY_SETTING_ANONYMOUSONLY = 0x00000002;
}

/// {@category Enum}
class WEBSTREAM_SAMPLE_TYPE {
  static const WEBSTREAM_SAMPLE_TYPE_FILE = 0x00000001;
  static const WEBSTREAM_SAMPLE_TYPE_RENDER = 0x00000002;
}

/// {@category Enum}
class WMT_ATTR_DATATYPE {
  static const WMT_TYPE_DWORD = 0x00000000;
  static const WMT_TYPE_STRING = 0x00000001;
  static const WMT_TYPE_BINARY = 0x00000002;
  static const WMT_TYPE_BOOL = 0x00000003;
  static const WMT_TYPE_QWORD = 0x00000004;
  static const WMT_TYPE_WORD = 0x00000005;
  static const WMT_TYPE_GUID = 0x00000006;
}

/// {@category Enum}
class WMT_ATTR_IMAGETYPE {
  static const WMT_IMAGETYPE_BITMAP = 0x00000001;
  static const WMT_IMAGETYPE_JPEG = 0x00000002;
  static const WMT_IMAGETYPE_GIF = 0x00000003;
}

/// {@category Enum}
class WMT_CODEC_INFO_TYPE {
  static const WMT_CODECINFO_AUDIO = 0x00000000;
  static const WMT_CODECINFO_VIDEO = 0x00000001;
  static const WMT_CODECINFO_UNKNOWN = 0xffffffff;
}

/// {@category Enum}
class WMT_CREDENTIAL_FLAGS {
  static const WMT_CREDENTIAL_SAVE = 0x00000001;
  static const WMT_CREDENTIAL_DONT_CACHE = 0x00000002;
  static const WMT_CREDENTIAL_CLEAR_TEXT = 0x00000004;
  static const WMT_CREDENTIAL_PROXY = 0x00000008;
  static const WMT_CREDENTIAL_ENCRYPT = 0x00000010;
}

/// {@category Enum}
class WMT_DRMLA_TRUST {
  static const WMT_DRMLA_UNTRUSTED = 0x00000000;
  static const WMT_DRMLA_TRUSTED = 0x00000001;
  static const WMT_DRMLA_TAMPERED = 0x00000002;
}

/// {@category Enum}
class WMT_FILESINK_MODE {
  static const WMT_FM_SINGLE_BUFFERS = 0x00000001;
  static const WMT_FM_FILESINK_DATA_UNITS = 0x00000002;
  static const WMT_FM_FILESINK_UNBUFFERED = 0x00000004;
}

/// {@category Enum}
class WMT_IMAGE_TYPE {
  static const WMT_IT_NONE = 0x00000000;
  static const WMT_IT_BITMAP = 0x00000001;
  static const WMT_IT_JPEG = 0x00000002;
  static const WMT_IT_GIF = 0x00000003;
}

/// {@category Enum}
class WMT_INDEXER_TYPE {
  static const WMT_IT_PRESENTATION_TIME = 0x00000000;
  static const WMT_IT_FRAME_NUMBERS = 0x00000001;
  static const WMT_IT_TIMECODE = 0x00000002;
}

/// {@category Enum}
class WMT_INDEX_TYPE {
  static const WMT_IT_NEAREST_DATA_UNIT = 0x00000001;
  static const WMT_IT_NEAREST_OBJECT = 0x00000002;
  static const WMT_IT_NEAREST_CLEAN_POINT = 0x00000003;
}

/// {@category Enum}
class WMT_MUSICSPEECH_CLASS_MODE {
  static const WMT_MS_CLASS_MUSIC = 0x00000000;
  static const WMT_MS_CLASS_SPEECH = 0x00000001;
  static const WMT_MS_CLASS_MIXED = 0x00000002;
}

/// {@category Enum}
class WMT_NET_PROTOCOL {
  static const WMT_PROTOCOL_HTTP = 0x00000000;
}

/// {@category Enum}
class WMT_OFFSET_FORMAT {
  static const WMT_OFFSET_FORMAT_100NS = 0x00000000;
  static const WMT_OFFSET_FORMAT_FRAME_NUMBERS = 0x00000001;
  static const WMT_OFFSET_FORMAT_PLAYLIST_OFFSET = 0x00000002;
  static const WMT_OFFSET_FORMAT_TIMECODE = 0x00000003;
  static const WMT_OFFSET_FORMAT_100NS_APPROXIMATE = 0x00000004;
}

/// {@category Enum}
class WMT_PLAY_MODE {
  static const WMT_PLAY_MODE_AUTOSELECT = 0x00000000;
  static const WMT_PLAY_MODE_LOCAL = 0x00000001;
  static const WMT_PLAY_MODE_DOWNLOAD = 0x00000002;
  static const WMT_PLAY_MODE_STREAMING = 0x00000003;
}

/// {@category Enum}
class WMT_PROXY_SETTINGS {
  static const WMT_PROXY_SETTING_NONE = 0x00000000;
  static const WMT_PROXY_SETTING_MANUAL = 0x00000001;
  static const WMT_PROXY_SETTING_AUTO = 0x00000002;
  static const WMT_PROXY_SETTING_BROWSER = 0x00000003;
  static const WMT_PROXY_SETTING_MAX = 0x00000004;
}

/// {@category Enum}
class WMT_RIGHTS {
  static const WMT_RIGHT_PLAYBACK = 0x00000001;
  static const WMT_RIGHT_COPY_TO_NON_SDMI_DEVICE = 0x00000002;
  static const WMT_RIGHT_COPY_TO_CD = 0x00000008;
  static const WMT_RIGHT_COPY_TO_SDMI_DEVICE = 0x00000010;
  static const WMT_RIGHT_ONE_TIME = 0x00000020;
  static const WMT_RIGHT_SAVE_STREAM_PROTECTED = 0x00000040;
  static const WMT_RIGHT_COPY = 0x00000080;
  static const WMT_RIGHT_COLLABORATIVE_PLAY = 0x00000100;
  static const WMT_RIGHT_SDMI_TRIGGER = 0x00010000;
  static const WMT_RIGHT_SDMI_NOMORECOPIES = 0x00020000;
}

/// {@category Enum}
class WMT_STATUS {
  static const WMT_ERROR = 0x00000000;
  static const WMT_OPENED = 0x00000001;
  static const WMT_BUFFERING_START = 0x00000002;
  static const WMT_BUFFERING_STOP = 0x00000003;
  static const WMT_EOF = 0x00000004;
  static const WMT_END_OF_FILE = 0x00000004;
  static const WMT_END_OF_SEGMENT = 0x00000005;
  static const WMT_END_OF_STREAMING = 0x00000006;
  static const WMT_LOCATING = 0x00000007;
  static const WMT_CONNECTING = 0x00000008;
  static const WMT_NO_RIGHTS = 0x00000009;
  static const WMT_MISSING_CODEC = 0x0000000a;
  static const WMT_STARTED = 0x0000000b;
  static const WMT_STOPPED = 0x0000000c;
  static const WMT_CLOSED = 0x0000000d;
  static const WMT_STRIDING = 0x0000000e;
  static const WMT_TIMER = 0x0000000f;
  static const WMT_INDEX_PROGRESS = 0x00000010;
  static const WMT_SAVEAS_START = 0x00000011;
  static const WMT_SAVEAS_STOP = 0x00000012;
  static const WMT_NEW_SOURCEFLAGS = 0x00000013;
  static const WMT_NEW_METADATA = 0x00000014;
  static const WMT_BACKUPRESTORE_BEGIN = 0x00000015;
  static const WMT_SOURCE_SWITCH = 0x00000016;
  static const WMT_ACQUIRE_LICENSE = 0x00000017;
  static const WMT_INDIVIDUALIZE = 0x00000018;
  static const WMT_NEEDS_INDIVIDUALIZATION = 0x00000019;
  static const WMT_NO_RIGHTS_EX = 0x0000001a;
  static const WMT_BACKUPRESTORE_END = 0x0000001b;
  static const WMT_BACKUPRESTORE_CONNECTING = 0x0000001c;
  static const WMT_BACKUPRESTORE_DISCONNECTING = 0x0000001d;
  static const WMT_ERROR_WITHURL = 0x0000001e;
  static const WMT_RESTRICTED_LICENSE = 0x0000001f;
  static const WMT_CLIENT_CONNECT = 0x00000020;
  static const WMT_CLIENT_DISCONNECT = 0x00000021;
  static const WMT_NATIVE_OUTPUT_PROPS_CHANGED = 0x00000022;
  static const WMT_RECONNECT_START = 0x00000023;
  static const WMT_RECONNECT_END = 0x00000024;
  static const WMT_CLIENT_CONNECT_EX = 0x00000025;
  static const WMT_CLIENT_DISCONNECT_EX = 0x00000026;
  static const WMT_SET_FEC_SPAN = 0x00000027;
  static const WMT_PREROLL_READY = 0x00000028;
  static const WMT_PREROLL_COMPLETE = 0x00000029;
  static const WMT_CLIENT_PROPERTIES = 0x0000002a;
  static const WMT_LICENSEURL_SIGNATURE_STATE = 0x0000002b;
  static const WMT_INIT_PLAYLIST_BURN = 0x0000002c;
  static const WMT_TRANSCRYPTOR_INIT = 0x0000002d;
  static const WMT_TRANSCRYPTOR_SEEKED = 0x0000002e;
  static const WMT_TRANSCRYPTOR_READ = 0x0000002f;
  static const WMT_TRANSCRYPTOR_CLOSED = 0x00000030;
  static const WMT_PROXIMITY_RESULT = 0x00000031;
  static const WMT_PROXIMITY_COMPLETED = 0x00000032;
  static const WMT_CONTENT_ENABLER = 0x00000033;
}

/// {@category Enum}
class WMT_STORAGE_FORMAT {
  static const WMT_Storage_Format_MP3 = 0x00000000;
  static const WMT_Storage_Format_V1 = 0x00000001;
}

/// {@category Enum}
class WMT_STREAM_SELECTION {
  static const WMT_OFF = 0x00000000;
  static const WMT_CLEANPOINT_ONLY = 0x00000001;
  static const WMT_ON = 0x00000002;
}

/// {@category Enum}
class WMT_TIMECODE_FRAMERATE {
  static const WMT_TIMECODE_FRAMERATE_30 = 0x00000000;
  static const WMT_TIMECODE_FRAMERATE_30DROP = 0x00000001;
  static const WMT_TIMECODE_FRAMERATE_25 = 0x00000002;
  static const WMT_TIMECODE_FRAMERATE_24 = 0x00000003;
}

/// {@category Enum}
class WMT_TRANSPORT_TYPE {
  static const WMT_Transport_Type_Unreliable = 0x00000000;
  static const WMT_Transport_Type_Reliable = 0x00000001;
}

/// {@category Enum}
class WMT_VERSION {
  static const WMT_VER_4_0 = 0x00040000;
  static const WMT_VER_7_0 = 0x00070000;
  static const WMT_VER_8_0 = 0x00080000;
  static const WMT_VER_9_0 = 0x00090000;
}

/// {@category Enum}
class WMT_WATERMARK_ENTRY_TYPE {
  static const WMT_WMETYPE_AUDIO = 0x00000001;
  static const WMT_WMETYPE_VIDEO = 0x00000002;
}

/// {@category Enum}
class WM_AETYPE {
  static const WM_AETYPE_INCLUDE = 0x00000069;
  static const WM_AETYPE_EXCLUDE = 0x00000065;
}

/// {@category Enum}
class WM_DM_INTERLACED_TYPE {
  static const WM_DM_NOTINTERLACED = 0x00000000;
  static const WM_DM_DEINTERLACE_NORMAL = 0x00000001;
  static const WM_DM_DEINTERLACE_HALFSIZE = 0x00000002;
  static const WM_DM_DEINTERLACE_HALFSIZEDOUBLERATE = 0x00000003;
  static const WM_DM_DEINTERLACE_INVERSETELECINE = 0x00000004;
  static const WM_DM_DEINTERLACE_VERTICALHALFSIZEDOUBLERATE = 0x00000005;
}

/// {@category Enum}
class WM_DM_IT_FIRST_FRAME_COHERENCY {
  static const WM_DM_IT_DISABLE_COHERENT_MODE = 0x00000000;
  static const WM_DM_IT_FIRST_FRAME_IN_CLIP_IS_AA_TOP = 0x00000001;
  static const WM_DM_IT_FIRST_FRAME_IN_CLIP_IS_BB_TOP = 0x00000002;
  static const WM_DM_IT_FIRST_FRAME_IN_CLIP_IS_BC_TOP = 0x00000003;
  static const WM_DM_IT_FIRST_FRAME_IN_CLIP_IS_CD_TOP = 0x00000004;
  static const WM_DM_IT_FIRST_FRAME_IN_CLIP_IS_DD_TOP = 0x00000005;
  static const WM_DM_IT_FIRST_FRAME_IN_CLIP_IS_AA_BOTTOM = 0x00000006;
  static const WM_DM_IT_FIRST_FRAME_IN_CLIP_IS_BB_BOTTOM = 0x00000007;
  static const WM_DM_IT_FIRST_FRAME_IN_CLIP_IS_BC_BOTTOM = 0x00000008;
  static const WM_DM_IT_FIRST_FRAME_IN_CLIP_IS_CD_BOTTOM = 0x00000009;
  static const WM_DM_IT_FIRST_FRAME_IN_CLIP_IS_DD_BOTTOM = 0x0000000a;
}

/// {@category Enum}
class WM_PLAYBACK_DRC_LEVEL {
  static const WM_PLAYBACK_DRC_HIGH = 0x00000000;
  static const WM_PLAYBACK_DRC_MEDIUM = 0x00000001;
  static const WM_PLAYBACK_DRC_LOW = 0x00000002;
}

/// {@category Enum}
class WM_SFEX_TYPE {
  static const WM_SFEX_NOTASYNCPOINT = 0x00000002;
  static const WM_SFEX_DATALOSS = 0x00000004;
}

/// {@category Enum}
class WM_SF_TYPE {
  static const WM_SF_CLEANPOINT = 0x00000001;
  static const WM_SF_DISCONTINUITY = 0x00000002;
  static const WM_SF_DATALOSS = 0x00000004;
}

/// {@category Enum}
class AM_ASFWRITERCONFIG_PARAM {
  static const AM_CONFIGASFWRITER_PARAM_AUTOINDEX = 0x00000001;
  static const AM_CONFIGASFWRITER_PARAM_MULTIPASS = 0x00000002;
  static const AM_CONFIGASFWRITER_PARAM_DONTCOMPRESS = 0x00000003;
}

