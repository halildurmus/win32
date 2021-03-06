/// {@category Enum}
class RM_APP_TYPE {
  static const RmUnknownApp = 0x00000000;
  static const RmMainWindow = 0x00000001;
  static const RmOtherWindow = 0x00000002;
  static const RmService = 0x00000003;
  static const RmExplorer = 0x00000004;
  static const RmConsole = 0x00000005;
  static const RmCritical = 0x000003e8;
}

/// {@category Enum}
class RM_SHUTDOWN_TYPE {
  static const RmForceShutdown = 0x00000001;
  static const RmShutdownOnlyRegistered = 0x00000010;
}

/// {@category Enum}
class RM_APP_STATUS {
  static const RmStatusUnknown = 0x00000000;
  static const RmStatusRunning = 0x00000001;
  static const RmStatusStopped = 0x00000002;
  static const RmStatusStoppedOther = 0x00000004;
  static const RmStatusRestarted = 0x00000008;
  static const RmStatusErrorOnStop = 0x00000010;
  static const RmStatusErrorOnRestart = 0x00000020;
  static const RmStatusShutdownMasked = 0x00000040;
  static const RmStatusRestartMasked = 0x00000080;
}

/// {@category Enum}
class RM_REBOOT_REASON {
  static const RmRebootReasonNone = 0x00000000;
  static const RmRebootReasonPermissionDenied = 0x00000001;
  static const RmRebootReasonSessionMismatch = 0x00000002;
  static const RmRebootReasonCriticalProcess = 0x00000004;
  static const RmRebootReasonCriticalService = 0x00000008;
  static const RmRebootReasonDetectedSelf = 0x00000010;
}

/// {@category Enum}
class RM_FILTER_TRIGGER {
  static const RmFilterTriggerInvalid = 0x00000000;
  static const RmFilterTriggerFile = 0x00000001;
  static const RmFilterTriggerProcess = 0x00000002;
  static const RmFilterTriggerService = 0x00000003;
}

/// {@category Enum}
class RM_FILTER_ACTION {
  static const RmInvalidFilterAction = 0x00000000;
  static const RmNoRestart = 0x00000001;
  static const RmNoShutdown = 0x00000002;
}
