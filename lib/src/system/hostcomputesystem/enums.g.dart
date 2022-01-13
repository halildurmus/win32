/// {@category Enum}
class HCS_CREATE_OPTIONS {
  static const HcsCreateOptions_1 = 0x00010000;
}

/// {@category Enum}
class HCS_EVENT_OPTIONS {
  static const HcsEventOptionNone = 0x00000000;
  static const HcsEventOptionEnableOperationCallbacks = 0x00000001;
}

/// {@category Enum}
class HCS_EVENT_TYPE {
  static const HcsEventInvalid = 0x00000000;
  static const HcsEventSystemExited = 0x00000001;
  static const HcsEventSystemCrashInitiated = 0x00000002;
  static const HcsEventSystemCrashReport = 0x00000003;
  static const HcsEventSystemRdpEnhancedModeStateChanged = 0x00000004;
  static const HcsEventSystemSiloJobCreated = 0x00000005;
  static const HcsEventSystemGuestConnectionClosed = 0x00000006;
  static const HcsEventProcessExited = 0x00010000;
  static const HcsEventOperationCallback = 0x01000000;
  static const HcsEventServiceDisconnect = 0x02000000;
}

/// {@category Enum}
class HCS_NOTIFICATIONS {
  static const HcsNotificationInvalid = 0x00000000;
  static const HcsNotificationSystemExited = 0x00000001;
  static const HcsNotificationSystemCreateCompleted = 0x00000002;
  static const HcsNotificationSystemStartCompleted = 0x00000003;
  static const HcsNotificationSystemPauseCompleted = 0x00000004;
  static const HcsNotificationSystemResumeCompleted = 0x00000005;
  static const HcsNotificationSystemCrashReport = 0x00000006;
  static const HcsNotificationSystemSiloJobCreated = 0x00000007;
  static const HcsNotificationSystemSaveCompleted = 0x00000008;
  static const HcsNotificationSystemRdpEnhancedModeStateChanged = 0x00000009;
  static const HcsNotificationSystemShutdownFailed = 0x0000000a;
  static const HcsNotificationSystemShutdownCompleted = 0x0000000a;
  static const HcsNotificationSystemGetPropertiesCompleted = 0x0000000b;
  static const HcsNotificationSystemModifyCompleted = 0x0000000c;
  static const HcsNotificationSystemCrashInitiated = 0x0000000d;
  static const HcsNotificationSystemGuestConnectionClosed = 0x0000000e;
  static const HcsNotificationSystemOperationCompletion = 0x0000000f;
  static const HcsNotificationSystemPassThru = 0x00000010;
  static const HcsNotificationProcessExited = 0x00010000;
  static const HcsNotificationServiceDisconnect = 0x01000000;
  static const HcsNotificationFlagsReserved = 0xf0000000;
}

/// {@category Enum}
class HCS_NOTIFICATION_FLAGS {
  static const HcsNotificationFlagSuccess = 0x00000000;
  static const HcsNotificationFlagFailure = 0x80000000;
}

/// {@category Enum}
class HCS_OPERATION_TYPE {
  static const HcsOperationTypeNone = 0xffffffff;
  static const HcsOperationTypeEnumerate = 0x00000000;
  static const HcsOperationTypeCreate = 0x00000001;
  static const HcsOperationTypeStart = 0x00000002;
  static const HcsOperationTypeShutdown = 0x00000003;
  static const HcsOperationTypePause = 0x00000004;
  static const HcsOperationTypeResume = 0x00000005;
  static const HcsOperationTypeSave = 0x00000006;
  static const HcsOperationTypeTerminate = 0x00000007;
  static const HcsOperationTypeModify = 0x00000008;
  static const HcsOperationTypeGetProperties = 0x00000009;
  static const HcsOperationTypeCreateProcess = 0x0000000a;
  static const HcsOperationTypeSignalProcess = 0x0000000b;
  static const HcsOperationTypeGetProcessInfo = 0x0000000c;
  static const HcsOperationTypeGetProcessProperties = 0x0000000d;
  static const HcsOperationTypeModifyProcess = 0x0000000e;
  static const HcsOperationTypeCrash = 0x0000000f;
}
