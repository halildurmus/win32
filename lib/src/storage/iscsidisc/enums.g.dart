/// {@category Enum}
class IKE_AUTHENTICATION_METHOD {
  static const IKE_AUTHENTICATION_PRESHARED_KEY_METHOD = 0x00000001;
}

/// {@category Enum}
class ISCSI_AUTH_TYPES {
  static const ISCSI_NO_AUTH_TYPE = 0x00000000;
  static const ISCSI_CHAP_AUTH_TYPE = 0x00000001;
  static const ISCSI_MUTUAL_CHAP_AUTH_TYPE = 0x00000002;
}

/// {@category Enum}
class ISCSI_DIGEST_TYPES {
  static const ISCSI_DIGEST_TYPE_NONE = 0x00000000;
  static const ISCSI_DIGEST_TYPE_CRC32C = 0x00000001;
}

/// {@category Enum}
class MP_STORAGE_DIAGNOSTIC_LEVEL {
  static const MpStorageDiagnosticLevelDefault = 0x00000000;
  static const MpStorageDiagnosticLevelMax = 0x00000001;
}

/// {@category Enum}
class MP_STORAGE_DIAGNOSTIC_TARGET_TYPE {
  static const MpStorageDiagnosticTargetTypeUndefined = 0x00000000;
  static const MpStorageDiagnosticTargetTypeMiniport = 0x00000002;
  static const MpStorageDiagnosticTargetTypeHbaFirmware = 0x00000003;
  static const MpStorageDiagnosticTargetTypeMax = 0x00000004;
}

/// {@category Enum}
class NVCACHE_STATUS {
  static const NvCacheStatusUnknown = 0x00000000;
  static const NvCacheStatusDisabling = 0x00000001;
  static const NvCacheStatusDisabled = 0x00000002;
  static const NvCacheStatusEnabled = 0x00000003;
}

/// {@category Enum}
class NVCACHE_TYPE {
  static const NvCacheTypeUnknown = 0x00000000;
  static const NvCacheTypeNone = 0x00000001;
  static const NvCacheTypeWriteBack = 0x00000002;
  static const NvCacheTypeWriteThrough = 0x00000003;
}

/// {@category Enum}
class NV_SEP_WRITE_CACHE_TYPE {
  static const NVSEPWriteCacheTypeUnknown = 0x00000000;
  static const NVSEPWriteCacheTypeNone = 0x00000001;
  static const NVSEPWriteCacheTypeWriteBack = 0x00000002;
  static const NVSEPWriteCacheTypeWriteThrough = 0x00000003;
}

/// {@category Enum}
class TARGETPROTOCOLTYPE {
  static const ISCSI_TCP_PROTOCOL_TYPE = 0x00000000;
}

/// {@category Enum}
class TARGET_INFORMATION_CLASS {
  static const ProtocolType = 0x00000000;
  static const TargetAlias = 0x00000001;
  static const DiscoveryMechanisms = 0x00000002;
  static const PortalGroups = 0x00000003;
  static const PersistentTargetMappings = 0x00000004;
  static const InitiatorName = 0x00000005;
  static const TargetFlags = 0x00000006;
  static const LoginOptions = 0x00000007;
}
