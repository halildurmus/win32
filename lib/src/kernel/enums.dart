/// {@category Enum}
class EXCEPTION_DISPOSITION {
  static const ExceptionContinueExecution = 0;
  static const ExceptionContinueSearch = 1;
  static const ExceptionNestedException = 2;
  static const ExceptionCollidedUnwind = 3;
}

/// {@category Enum}
class COMPARTMENT_ID {
  static const UNSPECIFIED_COMPARTMENT_ID = 0;
  static const DEFAULT_COMPARTMENT_ID = 1;
}

/// {@category Enum}
class EVENT_TYPE {
  static const NotificationEvent = 0;
  static const SynchronizationEvent = 1;
}

/// {@category Enum}
class TIMER_TYPE {
  static const NotificationTimer = 0;
  static const SynchronizationTimer = 1;
}

/// {@category Enum}
class WAIT_TYPE {
  static const WaitAll = 0;
  static const WaitAny = 1;
  static const WaitNotification = 2;
  static const WaitDequeue = 3;
}

/// {@category Enum}
class NT_PRODUCT_TYPE {
  static const NtProductWinNt = 1;
  static const NtProductLanManNt = 2;
  static const NtProductServer = 3;
}

/// {@category Enum}
class SUITE_TYPE {
  static const SmallBusiness = 0;
  static const Enterprise = 1;
  static const BackOffice = 2;
  static const CommunicationServer = 3;
  static const TerminalServer = 4;
  static const SmallBusinessRestricted = 5;
  static const EmbeddedNT = 6;
  static const DataCenter = 7;
  static const SingleUserTS = 8;
  static const Personal = 9;
  static const Blade = 10;
  static const EmbeddedRestricted = 11;
  static const SecurityAppliance = 12;
  static const StorageServer = 13;
  static const ComputeServer = 14;
  static const WHServer = 15;
  static const PhoneNT = 16;
  static const MultiUserTS = 17;
  static const MaxSuiteType = 18;
}

