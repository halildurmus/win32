/// {@category Enum}
class CompositionFrameInstanceKind {
  static const CompositionFrameInstanceKind_ComposedOnScreen = 0x00000000;
  static const CompositionFrameInstanceKind_ScanoutOnScreen = 0x00000001;
  static const CompositionFrameInstanceKind_ComposedToIntermediate = 0x00000002;
}

/// {@category Enum}
class PresentStatisticsKind {
  static const PresentStatisticsKind_PresentStatus = 0x00000001;
  static const PresentStatisticsKind_CompositionFrame = 0x00000002;
  static const PresentStatisticsKind_IndependentFlipFrame = 0x00000003;
}

/// {@category Enum}
class PresentStatus {
  static const PresentStatus_Queued = 0x00000000;
  static const PresentStatus_Skipped = 0x00000001;
  static const PresentStatus_Canceled = 0x00000002;
}
