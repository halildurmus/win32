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
class ClockType {
  static const plaTimeStamp = 0x00000000;
  static const plaPerformance = 0x00000001;
  static const plaSystem = 0x00000002;
  static const plaCycle = 0x00000003;
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
class DataCollectorSetStatus {
  static const plaStopped = 0x00000000;
  static const plaRunning = 0x00000001;
  static const plaCompiling = 0x00000002;
  static const plaPending = 0x00000003;
  static const plaUndefined = 0x00000004;
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
class DataManagerSteps {
  static const plaCreateReport = 0x00000001;
  static const plaRunRules = 0x00000002;
  static const plaCreateHtml = 0x00000004;
  static const plaFolderActions = 0x00000008;
  static const plaResourceFreeing = 0x00000010;
}

/// {@category Enum}
class DataSourceTypeConstants {
  static const sysmonNullDataSource = 0xffffffff;
  static const sysmonCurrentActivity = 0x00000001;
  static const sysmonLogFiles = 0x00000002;
  static const sysmonSqlLog = 0x00000003;
}

/// {@category Enum}
class DisplayTypeConstants {
  static const sysmonLineGraph = 0x00000001;
  static const sysmonHistogram = 0x00000002;
  static const sysmonReport = 0x00000003;
  static const sysmonChartArea = 0x00000004;
  static const sysmonChartStackedArea = 0x00000005;
}

/// {@category Enum}
class FileFormat {
  static const plaCommaSeparated = 0x00000000;
  static const plaTabSeparated = 0x00000001;
  static const plaSql = 0x00000002;
  static const plaBinary = 0x00000003;
}

/// {@category Enum}
class FolderActionSteps {
  static const plaCreateCab = 0x00000001;
  static const plaDeleteData = 0x00000002;
  static const plaSendCab = 0x00000004;
  static const plaDeleteCab = 0x00000008;
  static const plaDeleteReport = 0x00000010;
}

/// {@category Enum}
class PDH_DLL_VERSION {
  static const PDH_CVERSION_WIN50 = 0x00000500;
  static const PDH_VERSION = 0x00000503;
}

/// {@category Enum}
class PDH_FMT {
  static const PDH_FMT_DOUBLE = 0x00000200;
  static const PDH_FMT_LARGE = 0x00000400;
  static const PDH_FMT_LONG = 0x00000100;
}

/// {@category Enum}
class PDH_LOG {
  static const PDH_LOG_READ_ACCESS = 0x00010000;
  static const PDH_LOG_WRITE_ACCESS = 0x00020000;
  static const PDH_LOG_UPDATE_ACCESS = 0x00040000;
}

/// {@category Enum}
class PDH_LOG_TYPE {
  static const PDH_LOG_TYPE_UNDEFINED = 0x00000000;
  static const PDH_LOG_TYPE_CSV = 0x00000001;
  static const PDH_LOG_TYPE_SQL = 0x00000007;
  static const PDH_LOG_TYPE_TSV = 0x00000002;
  static const PDH_LOG_TYPE_BINARY = 0x00000008;
  static const PDH_LOG_TYPE_PERFMON = 0x00000006;
}

/// {@category Enum}
class PDH_PATH_FLAGS {
  static const PDH_PATH_WBEM_RESULT = 0x00000001;
  static const PDH_PATH_WBEM_INPUT = 0x00000002;
  static const PDH_PATH_WBEM_NONE = 0x00000000;
}

/// {@category Enum}
class PDH_SELECT_DATA_SOURCE_FLAGS {
  static const PDH_FLAGS_FILE_BROWSER_ONLY = 0x00000001;
  static const PDH_FLAGS_NONE = 0x00000000;
}

/// {@category Enum}
class PERF_COUNTER_AGGREGATE_FUNC {
  static const PERF_AGGREGATE_UNDEFINED = 0x00000000;
  static const PERF_AGGREGATE_TOTAL = 0x00000001;
  static const PERF_AGGREGATE_AVG = 0x00000002;
  static const PERF_AGGREGATE_MIN = 0x00000003;
}

/// {@category Enum}
class PERF_DETAIL {
  static const PERF_DETAIL_NOVICE = 0x00000064;
  static const PERF_DETAIL_ADVANCED = 0x000000c8;
  static const PERF_DETAIL_EXPERT = 0x0000012c;
  static const PERF_DETAIL_WIZARD = 0x00000190;
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
class REAL_TIME_DATA_SOURCE_ID_FLAGS {
  static const DATA_SOURCE_REGISTRY = 0x00000001;
  static const DATA_SOURCE_WBEM = 0x00000004;
}

/// {@category Enum}
class ReportValueTypeConstants {
  static const sysmonDefaultValue = 0x00000000;
  static const sysmonCurrentValue = 0x00000001;
  static const sysmonAverage = 0x00000002;
  static const sysmonMinimum = 0x00000003;
  static const sysmonMaximum = 0x00000004;
}

/// {@category Enum}
class ResourcePolicy {
  static const plaDeleteLargest = 0x00000000;
  static const plaDeleteOldest = 0x00000001;
}

/// {@category Enum}
class StreamMode {
  static const plaFile = 0x00000001;
  static const plaRealTime = 0x00000002;
  static const plaBoth = 0x00000003;
  static const plaBuffering = 0x00000004;
}

/// {@category Enum}
class SysmonBatchReason {
  static const sysmonBatchNone = 0x00000000;
  static const sysmonBatchAddFiles = 0x00000001;
  static const sysmonBatchAddCounters = 0x00000002;
  static const sysmonBatchAddFilesAutoCounters = 0x00000003;
}

/// {@category Enum}
class SysmonDataType {
  static const sysmonDataAvg = 0x00000001;
  static const sysmonDataMin = 0x00000002;
  static const sysmonDataMax = 0x00000003;
  static const sysmonDataTime = 0x00000004;
  static const sysmonDataCount = 0x00000005;
}

/// {@category Enum}
class SysmonFileType {
  static const sysmonFileHtml = 0x00000001;
  static const sysmonFileReport = 0x00000002;
  static const sysmonFileCsv = 0x00000003;
  static const sysmonFileTsv = 0x00000004;
  static const sysmonFileBlg = 0x00000005;
  static const sysmonFileRetiredBlg = 0x00000006;
  static const sysmonFileGif = 0x00000007;
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
