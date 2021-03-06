/// {@category Enum}
class PerfRegInfoType {
  static const PERF_REG_COUNTERSET_STRUCT = 0x00000001;
  static const PERF_REG_COUNTER_STRUCT = 0x00000002;
  static const PERF_REG_COUNTERSET_NAME_STRING = 0x00000003;
  static const PERF_REG_COUNTERSET_HELP_STRING = 0x00000004;
  static const PERF_REG_COUNTER_NAME_STRINGS = 0x00000005;
  static const PERF_REG_COUNTER_HELP_STRINGS = 0x00000006;
  static const PERF_REG_PROVIDER_NAME = 0x00000007;
  static const PERF_REG_PROVIDER_GUID = 0x00000008;
  static const PERF_REG_COUNTERSET_ENGLISH_NAME = 0x00000009;
  static const PERF_REG_COUNTER_ENGLISH_NAMES = 0x0000000a;
}

/// {@category Enum}
class PerfCounterDataType {
  static const PERF_ERROR_RETURN = 0x00000000;
  static const PERF_SINGLE_COUNTER = 0x00000001;
  static const PERF_MULTIPLE_COUNTERS = 0x00000002;
  static const PERF_MULTIPLE_INSTANCES = 0x00000004;
  static const PERF_COUNTERSET = 0x00000006;
}

/// {@category Enum}
class DataCollectorType {
  static const plaPerformanceCounter = 0x00000000;
  static const plaTrace = 0x00000001;
  static const plaConfiguration = 0x00000002;
  static const plaAlert = 0x00000003;
  static const plaApiTrace = 0x00000004;
}

/// {@category Enum}
class FileFormat {
  static const plaCommaSeparated = 0x00000000;
  static const plaTabSeparated = 0x00000001;
  static const plaSql = 0x00000002;
  static const plaBinary = 0x00000003;
}

/// {@category Enum}
class AutoPathFormat {
  static const plaNone = 0x00000000;
  static const plaPattern = 0x00000001;
  static const plaComputer = 0x00000002;
  static const plaMonthDayHour = 0x00000100;
  static const plaSerialNumber = 0x00000200;
  static const plaYearDayOfYear = 0x00000400;
  static const plaYearMonth = 0x00000800;
  static const plaYearMonthDay = 0x00001000;
  static const plaYearMonthDayHour = 0x00002000;
  static const plaMonthDayHourMinute = 0x00004000;
}

/// {@category Enum}
class DataCollectorSetStatus {
  static const plaStopped = 0x00000000;
  static const plaRunning = 0x00000001;
  static const plaCompiling = 0x00000002;
  static const plaPending = 0x00000003;
  static const plaUndefined = 0x00000004;
}

/// {@category Enum}
class ClockType {
  static const plaTimeStamp = 0x00000000;
  static const plaPerformance = 0x00000001;
  static const plaSystem = 0x00000002;
  static const plaCycle = 0x00000003;
}

/// {@category Enum}
class StreamMode {
  static const plaFile = 0x00000001;
  static const plaRealTime = 0x00000002;
  static const plaBoth = 0x00000003;
  static const plaBuffering = 0x00000004;
}

/// {@category Enum}
class CommitMode {
  static const plaCreateNew = 0x00000001;
  static const plaModify = 0x00000002;
  static const plaCreateOrModify = 0x00000003;
  static const plaUpdateRunningInstance = 0x00000010;
  static const plaFlushTrace = 0x00000020;
  static const plaValidateOnly = 0x00001000;
}

/// {@category Enum}
class ValueMapType {
  static const plaIndex = 0x00000001;
  static const plaFlag = 0x00000002;
  static const plaFlagArray = 0x00000003;
  static const plaValidation = 0x00000004;
}

/// {@category Enum}
class WeekDays {
  static const plaRunOnce = 0x00000000;
  static const plaSunday = 0x00000001;
  static const plaMonday = 0x00000002;
  static const plaTuesday = 0x00000004;
  static const plaWednesday = 0x00000008;
  static const plaThursday = 0x00000010;
  static const plaFriday = 0x00000020;
  static const plaSaturday = 0x00000040;
  static const plaEveryday = 0x0000007f;
}

/// {@category Enum}
class ResourcePolicy {
  static const plaDeleteLargest = 0x00000000;
  static const plaDeleteOldest = 0x00000001;
}

/// {@category Enum}
class DataManagerSteps {
  static const plaCreateReport = 0x00000001;
  static const plaRunRules = 0x00000002;
  static const plaCreateHtml = 0x00000004;
  static const plaFolderActions = 0x00000008;
  static const plaResourceFreeing = 0x00000010;
}

/// {@category Enum}
class FolderActionSteps {
  static const plaCreateCab = 0x00000001;
  static const plaDeleteData = 0x00000002;
  static const plaSendCab = 0x00000004;
  static const plaDeleteCab = 0x00000008;
  static const plaDeleteReport = 0x00000010;
}
