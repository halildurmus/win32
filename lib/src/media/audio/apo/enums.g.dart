/// {@category Enum}
class APO_BUFFER_FLAGS {
  static const BUFFER_INVALID = 0x00000000;
  static const BUFFER_VALID = 0x00000001;
  static const BUFFER_SILENT = 0x00000002;
}

/// {@category Enum}
class APO_CONNECTION_BUFFER_TYPE {
  static const APO_CONNECTION_BUFFER_TYPE_ALLOCATED = 0x00000000;
  static const APO_CONNECTION_BUFFER_TYPE_EXTERNAL = 0x00000001;
  static const APO_CONNECTION_BUFFER_TYPE_DEPENDANT = 0x00000002;
}

/// {@category Enum}
class APO_FLAG {
  static const APO_FLAG_NONE = 0x00000000;
  static const APO_FLAG_INPLACE = 0x00000001;
  static const APO_FLAG_SAMPLESPERFRAME_MUST_MATCH = 0x00000002;
  static const APO_FLAG_FRAMESPERSECOND_MUST_MATCH = 0x00000004;
  static const APO_FLAG_BITSPERSAMPLE_MUST_MATCH = 0x00000008;
  static const APO_FLAG_MIXER = 0x00000010;
  static const APO_FLAG_DEFAULT = 0x0000000e;
}

/// {@category Enum}
class APO_LOG_LEVEL {
  static const APO_LOG_LEVEL_ALWAYS = 0x00000000;
  static const APO_LOG_LEVEL_CRITICAL = 0x00000001;
  static const APO_LOG_LEVEL_ERROR = 0x00000002;
  static const APO_LOG_LEVEL_WARNING = 0x00000003;
  static const APO_LOG_LEVEL_INFO = 0x00000004;
  static const APO_LOG_LEVEL_VERBOSE = 0x00000005;
}

/// {@category Enum}
class APO_NOTIFICATION_TYPE {
  static const APO_NOTIFICATION_TYPE_NONE = 0x00000000;
  static const APO_NOTIFICATION_TYPE_ENDPOINT_VOLUME = 0x00000001;
  static const APO_NOTIFICATION_TYPE_ENDPOINT_PROPERTY_CHANGE = 0x00000002;
  static const APO_NOTIFICATION_TYPE_SYSTEM_EFFECTS_PROPERTY_CHANGE =
      0x00000003;
}

/// {@category Enum}
class AUDIO_FLOW_TYPE {
  static const AUDIO_FLOW_PULL = 0x00000000;
  static const AUDIO_FLOW_PUSH = 0x00000001;
}

/// {@category Enum}
class AUDIO_SYSTEMEFFECT_STATE {
  static const AUDIO_SYSTEMEFFECT_STATE_OFF = 0x00000000;
  static const AUDIO_SYSTEMEFFECT_STATE_ON = 0x00000001;
}

/// {@category Enum}
class EAudioConstriction {
  static const eAudioConstrictionOff = 0x00000000;
  static const eAudioConstriction48_16 = 0x00000001;
  static const eAudioConstriction44_16 = 0x00000002;
  static const eAudioConstriction14_14 = 0x00000003;
  static const eAudioConstrictionMute = 0x00000004;
}
