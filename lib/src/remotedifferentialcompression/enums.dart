/// {@category Enum}
class RDC_ErrorCode {
  static const RDC_NoError = 0x00000000;
  static const RDC_HeaderVersionNewer = 0x00000001;
  static const RDC_HeaderVersionOlder = 0x00000002;
  static const RDC_HeaderMissingOrCorrupt = 0x00000003;
  static const RDC_HeaderWrongType = 0x00000004;
  static const RDC_DataMissingOrCorrupt = 0x00000005;
  static const RDC_DataTooManyRecords = 0x00000006;
  static const RDC_FileChecksumMismatch = 0x00000007;
  static const RDC_ApplicationError = 0x00000008;
  static const RDC_Aborted = 0x00000009;
  static const RDC_Win32Error = 0x0000000a;
}

/// {@category Enum}
class GeneratorParametersType {
  static const RDCGENTYPE_Unused = 0x00000000;
  static const RDCGENTYPE_FilterMax = 0x00000001;
}

/// {@category Enum}
class RdcNeedType {
  static const RDCNEED_SOURCE = 0x00000000;
  static const RDCNEED_TARGET = 0x00000001;
  static const RDCNEED_SEED = 0x00000002;
  static const RDCNEED_SEED_MAX = 0x000000ff;
}

/// {@category Enum}
class RdcCreatedTables {
  static const RDCTABLE_InvalidOrUnknown = 0x00000000;
  static const RDCTABLE_Existing = 0x00000001;
  static const RDCTABLE_New = 0x00000002;
}

/// {@category Enum}
class RdcMappingAccessMode {
  static const RDCMAPPING_Undefined = 0x00000000;
  static const RDCMAPPING_ReadOnly = 0x00000001;
  static const RDCMAPPING_ReadWrite = 0x00000002;
}

