/// {@category Enum}
class ExtendedIsolationState {
  static const extendedIsolationStateNoData = 0x00000000;
  static const extendedIsolationStateTransition = 0x00000001;
  static const extendedIsolationStateInfected = 0x00000002;
  static const extendedIsolationStateUnknown = 0x00000003;
}

/// {@category Enum}
class FailureCategory {
  static const failureCategoryNone = 0x00000000;
  static const failureCategoryOther = 0x00000001;
  static const failureCategoryClientComponent = 0x00000002;
  static const failureCategoryClientCommunication = 0x00000003;
  static const failureCategoryServerComponent = 0x00000004;
  static const failureCategoryServerCommunication = 0x00000005;
}

/// {@category Enum}
class FixupState {
  static const fixupStateSuccess = 0x00000000;
  static const fixupStateInProgress = 0x00000001;
  static const fixupStateCouldNotUpdate = 0x00000002;
}

/// {@category Enum}
class IsolationState {
  static const isolationStateNotRestricted = 0x00000001;
  static const isolationStateInProbation = 0x00000002;
  static const isolationStateRestrictedAccess = 0x00000003;
}

/// {@category Enum}
class NapNotifyType {
  static const napNotifyTypeUnknown = 0x00000000;
  static const napNotifyTypeServiceState = 0x00000001;
  static const napNotifyTypeQuarState = 0x00000002;
}

/// {@category Enum}
class NapTracingLevel {
  static const tracingLevelUndefined = 0x00000000;
  static const tracingLevelBasic = 0x00000001;
  static const tracingLevelAdvanced = 0x00000002;
  static const tracingLevelDebug = 0x00000003;
}

/// {@category Enum}
class RemoteConfigurationType {
  static const remoteConfigTypeMachine = 0x00000001;
  static const remoteConfigTypeConfigBlob = 0x00000002;
}
