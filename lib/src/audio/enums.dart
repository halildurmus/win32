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
class AUDIO_FLOW_TYPE {
  static const AUDIO_FLOW_PULL = 0x00000000;
  static const AUDIO_FLOW_PUSH = 0x00000001;
}

/// {@category Enum}
class EAudioConstriction {
  static const eAudioConstrictionOff = 0x00000000;
  static const eAudioConstriction48_16 = 0x00000001;
  static const eAudioConstriction44_16 = 0x00000002;
  static const eAudioConstriction14_14 = 0x00000003;
  static const eAudioConstrictionMute = 0x00000004;
}

/// {@category Enum}
class DMUS_CLOCKTYPE {
  static const DMUS_CLOCK_SYSTEM = 0x00000000;
  static const DMUS_CLOCK_WAVE = 0x00000001;
}

/// {@category Enum}
class KSPROPERTY_AUDIOEFFECTSDISCOVERY {
  static const KSPROPERTY_AUDIOEFFECTSDISCOVERY_EFFECTSLIST = 0x00000001;
}

