/// {@category Enum}
class DEDUP_BACKUP_SUPPORT_PARAM_TYPE {
  static const DEDUP_RECONSTRUCT_UNOPTIMIZED = 0x00000001;
  static const DEDUP_RECONSTRUCT_OPTIMIZED = 0x00000002;
}

/// {@category Enum}
class DEDUP_SET_PARAM_TYPE {
  static const DEDUP_PT_MinChunkSizeBytes = 0x00000001;
  static const DEDUP_PT_MaxChunkSizeBytes = 0x00000002;
  static const DEDUP_PT_AvgChunkSizeBytes = 0x00000003;
  static const DEDUP_PT_InvariantChunking = 0x00000004;
  static const DEDUP_PT_DisableStrongHashComputation = 0x00000005;
}

/// {@category Enum}
class DedupChunkFlags {
  static const DedupChunkFlags_None = 0x00000000;
  static const DedupChunkFlags_Compressed = 0x00000001;
}

/// {@category Enum}
class DedupChunkingAlgorithm {
  static const DedupChunkingAlgorithm_Unknonwn = 0x00000000;
  static const DedupChunkingAlgorithm_V1 = 0x00000001;
}

/// {@category Enum}
class DedupCompressionAlgorithm {
  static const DedupCompressionAlgorithm_Unknonwn = 0x00000000;
  static const DedupCompressionAlgorithm_Xpress = 0x00000001;
}

/// {@category Enum}
class DedupDataPortManagerOption {
  static const DedupDataPortManagerOption_None = 0x00000000;
  static const DedupDataPortManagerOption_AutoStart = 0x00000001;
  static const DedupDataPortManagerOption_SkipReconciliation = 0x00000002;
}

/// {@category Enum}
class DedupDataPortRequestStatus {
  static const DedupDataPortRequestStatus_Unknown = 0x00000000;
  static const DedupDataPortRequestStatus_Queued = 0x00000001;
  static const DedupDataPortRequestStatus_Processing = 0x00000002;
  static const DedupDataPortRequestStatus_Partial = 0x00000003;
  static const DedupDataPortRequestStatus_Complete = 0x00000004;
  static const DedupDataPortRequestStatus_Failed = 0x00000005;
}

/// {@category Enum}
class DedupDataPortVolumeStatus {
  static const DedupDataPortVolumeStatus_Unknown = 0x00000000;
  static const DedupDataPortVolumeStatus_NotEnabled = 0x00000001;
  static const DedupDataPortVolumeStatus_NotAvailable = 0x00000002;
  static const DedupDataPortVolumeStatus_Initializing = 0x00000003;
  static const DedupDataPortVolumeStatus_Ready = 0x00000004;
  static const DedupDataPortVolumeStatus_Maintenance = 0x00000005;
  static const DedupDataPortVolumeStatus_Shutdown = 0x00000006;
}

/// {@category Enum}
class DedupHashingAlgorithm {
  static const DedupHashingAlgorithm_Unknonwn = 0x00000000;
  static const DedupHashingAlgorithm_V1 = 0x00000001;
}
