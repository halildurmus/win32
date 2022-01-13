/// {@category Enum}
class FH_BACKUP_STATUS {
  static const FH_STATUS_DISABLED = 0x00000000;
  static const FH_STATUS_DISABLED_BY_GP = 0x00000001;
  static const FH_STATUS_ENABLED = 0x00000002;
  static const FH_STATUS_REHYDRATING = 0x00000003;
  static const MAX_BACKUP_STATUS = 0x00000004;
}

/// {@category Enum}
class FH_DEVICE_VALIDATION_RESULT {
  static const FH_ACCESS_DENIED = 0x00000000;
  static const FH_INVALID_DRIVE_TYPE = 0x00000001;
  static const FH_READ_ONLY_PERMISSION = 0x00000002;
  static const FH_CURRENT_DEFAULT = 0x00000003;
  static const FH_NAMESPACE_EXISTS = 0x00000004;
  static const FH_TARGET_PART_OF_LIBRARY = 0x00000005;
  static const FH_VALID_TARGET = 0x00000006;
  static const MAX_VALIDATION_RESULT = 0x00000007;
}

/// {@category Enum}
class FH_LOCAL_POLICY_TYPE {
  static const FH_FREQUENCY = 0x00000000;
  static const FH_RETENTION_TYPE = 0x00000001;
  static const FH_RETENTION_AGE = 0x00000002;
  static const MAX_LOCAL_POLICY = 0x00000003;
}

/// {@category Enum}
class FH_PROTECTED_ITEM_CATEGORY {
  static const FH_FOLDER = 0x00000000;
  static const FH_LIBRARY = 0x00000001;
  static const MAX_PROTECTED_ITEM_CATEGORY = 0x00000002;
}

/// {@category Enum}
class FH_RETENTION_TYPES {
  static const FH_RETENTION_DISABLED = 0x00000000;
  static const FH_RETENTION_UNLIMITED = 0x00000001;
  static const FH_RETENTION_AGE_BASED = 0x00000002;
  static const MAX_RETENTION_TYPE = 0x00000003;
}

/// {@category Enum}
class FH_TARGET_DRIVE_TYPES {
  static const FH_DRIVE_UNKNOWN = 0x00000000;
  static const FH_DRIVE_REMOVABLE = 0x00000002;
  static const FH_DRIVE_FIXED = 0x00000003;
  static const FH_DRIVE_REMOTE = 0x00000004;
}

/// {@category Enum}
class FH_TARGET_PROPERTY_TYPE {
  static const FH_TARGET_NAME = 0x00000000;
  static const FH_TARGET_URL = 0x00000001;
  static const FH_TARGET_DRIVE_TYPE = 0x00000002;
  static const MAX_TARGET_PROPERTY = 0x00000003;
}

/// {@category Enum}
class FhBackupStopReason {
  static const BackupInvalidStopReason = 0x00000000;
  static const BackupLimitUserBusyMachineOnAC = 0x00000001;
  static const BackupLimitUserIdleMachineOnDC = 0x00000002;
  static const BackupLimitUserBusyMachineOnDC = 0x00000003;
  static const BackupCancelled = 0x00000004;
}
