/// {@category Enum}
class EXCEPTION_DISPOSITION {
  static const ExceptionContinueExecution = 0x00000000;
  static const ExceptionContinueSearch = 0x00000001;
  static const ExceptionNestedException = 0x00000002;
  static const ExceptionCollidedUnwind = 0x00000003;
}

/// {@category Enum}
class COMPARTMENT_ID {
  static const UNSPECIFIED_COMPARTMENT_ID = 0x00000000;
  static const DEFAULT_COMPARTMENT_ID = 0x00000001;
}

/// {@category Enum}
class EVENT_TYPE {
  static const NotificationEvent = 0x00000000;
  static const SynchronizationEvent = 0x00000001;
}

/// {@category Enum}
class TIMER_TYPE {
  static const NotificationTimer = 0x00000000;
  static const SynchronizationTimer = 0x00000001;
}

/// {@category Enum}
class WAIT_TYPE {
  static const WaitAll = 0x00000000;
  static const WaitAny = 0x00000001;
  static const WaitNotification = 0x00000002;
  static const WaitDequeue = 0x00000003;
}

/// {@category Enum}
class NT_PRODUCT_TYPE {
  static const NtProductWinNt = 0x00000001;
  static const NtProductLanManNt = 0x00000002;
  static const NtProductServer = 0x00000003;
}

/// {@category Enum}
class SUITE_TYPE {
  static const SmallBusiness = 0x00000000;
  static const Enterprise = 0x00000001;
  static const BackOffice = 0x00000002;
  static const CommunicationServer = 0x00000003;
  static const TerminalServer = 0x00000004;
  static const SmallBusinessRestricted = 0x00000005;
  static const EmbeddedNT = 0x00000006;
  static const DataCenter = 0x00000007;
  static const SingleUserTS = 0x00000008;
  static const Personal = 0x00000009;
  static const Blade = 0x0000000a;
  static const EmbeddedRestricted = 0x0000000b;
  static const SecurityAppliance = 0x0000000c;
  static const StorageServer = 0x0000000d;
  static const ComputeServer = 0x0000000e;
  static const WHServer = 0x0000000f;
  static const PhoneNT = 0x00000010;
  static const MultiUserTS = 0x00000011;
  static const MaxSuiteType = 0x00000012;
}

