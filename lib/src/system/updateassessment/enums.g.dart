/// {@category Enum}
class UpdateAssessmentStatus {
  static const UpdateAssessmentStatus_Latest = 0x00000000;
  static const UpdateAssessmentStatus_NotLatestSoftRestriction = 0x00000001;
  static const UpdateAssessmentStatus_NotLatestHardRestriction = 0x00000002;
  static const UpdateAssessmentStatus_NotLatestEndOfSupport = 0x00000003;
  static const UpdateAssessmentStatus_NotLatestServicingTrain = 0x00000004;
  static const UpdateAssessmentStatus_NotLatestDeferredFeature = 0x00000005;
  static const UpdateAssessmentStatus_NotLatestDeferredQuality = 0x00000006;
  static const UpdateAssessmentStatus_NotLatestPausedFeature = 0x00000007;
  static const UpdateAssessmentStatus_NotLatestPausedQuality = 0x00000008;
  static const UpdateAssessmentStatus_NotLatestManaged = 0x00000009;
  static const UpdateAssessmentStatus_NotLatestUnknown = 0x0000000a;
  static const UpdateAssessmentStatus_NotLatestTargetedVersion = 0x0000000b;
}

/// {@category Enum}
class UpdateImpactLevel {
  static const UpdateImpactLevel_None = 0x00000000;
  static const UpdateImpactLevel_Low = 0x00000001;
  static const UpdateImpactLevel_Medium = 0x00000002;
  static const UpdateImpactLevel_High = 0x00000003;
}
