// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../combase.dart';
import '../../guid.dart';
import '../../security/structs.g.dart';
import '../../security/diagnosticdataquery/structs.g.dart';
import '../../foundation/structs.g.dart'; // -----------------------------------------------------------------------

// diagnosticdataquery.dll
// -----------------------------------------------------------------------
final _diagnosticdataquery = DynamicLibrary.open('diagnosticdataquery.dll');

int DdqCancelDiagnosticRecordOperation(
  int hSession,
) =>
    _DdqCancelDiagnosticRecordOperation(
      hSession,
    );

late final _DdqCancelDiagnosticRecordOperation =
    _diagnosticdataquery.lookupFunction<
        Int32 Function(
  IntPtr hSession,
),
        int Function(
  int hSession,
)>('DdqCancelDiagnosticRecordOperation');

int DdqCloseSession(
  int hSession,
) =>
    _DdqCloseSession(
      hSession,
    );

late final _DdqCloseSession = _diagnosticdataquery.lookupFunction<
    Int32 Function(
  IntPtr hSession,
),
    int Function(
  int hSession,
)>('DdqCloseSession');

int DdqCreateSession(
  int accessLevel,
  Pointer<IntPtr> hSession,
) =>
    _DdqCreateSession(
      accessLevel,
      hSession,
    );

late final _DdqCreateSession = _diagnosticdataquery.lookupFunction<
    Int32 Function(
  Int32 accessLevel,
  Pointer<IntPtr> hSession,
),
    int Function(
  int accessLevel,
  Pointer<IntPtr> hSession,
)>('DdqCreateSession');

int DdqExtractDiagnosticReport(
  int hSession,
  int reportStoreType,
  Pointer<Utf16> reportKey,
  Pointer<Utf16> destinationPath,
) =>
    _DdqExtractDiagnosticReport(
      hSession,
      reportStoreType,
      reportKey,
      destinationPath,
    );

late final _DdqExtractDiagnosticReport = _diagnosticdataquery.lookupFunction<
    Int32 Function(
  IntPtr hSession,
  Uint32 reportStoreType,
  Pointer<Utf16> reportKey,
  Pointer<Utf16> destinationPath,
),
    int Function(
  int hSession,
  int reportStoreType,
  Pointer<Utf16> reportKey,
  Pointer<Utf16> destinationPath,
)>('DdqExtractDiagnosticReport');

int DdqFreeDiagnosticRecordLocaleTags(
  int hTagDescription,
) =>
    _DdqFreeDiagnosticRecordLocaleTags(
      hTagDescription,
    );

late final _DdqFreeDiagnosticRecordLocaleTags =
    _diagnosticdataquery.lookupFunction<
        Int32 Function(
  IntPtr hTagDescription,
),
        int Function(
  int hTagDescription,
)>('DdqFreeDiagnosticRecordLocaleTags');

int DdqFreeDiagnosticRecordPage(
  int hRecord,
) =>
    _DdqFreeDiagnosticRecordPage(
      hRecord,
    );

late final _DdqFreeDiagnosticRecordPage = _diagnosticdataquery.lookupFunction<
    Int32 Function(
  IntPtr hRecord,
),
    int Function(
  int hRecord,
)>('DdqFreeDiagnosticRecordPage');

int DdqFreeDiagnosticRecordProducerCategories(
  int hCategoryDescription,
) =>
    _DdqFreeDiagnosticRecordProducerCategories(
      hCategoryDescription,
    );

late final _DdqFreeDiagnosticRecordProducerCategories =
    _diagnosticdataquery.lookupFunction<
        Int32 Function(
  IntPtr hCategoryDescription,
),
        int Function(
  int hCategoryDescription,
)>('DdqFreeDiagnosticRecordProducerCategories');

int DdqFreeDiagnosticRecordProducers(
  int hProducerDescription,
) =>
    _DdqFreeDiagnosticRecordProducers(
      hProducerDescription,
    );

late final _DdqFreeDiagnosticRecordProducers =
    _diagnosticdataquery.lookupFunction<
        Int32 Function(
  IntPtr hProducerDescription,
),
        int Function(
  int hProducerDescription,
)>('DdqFreeDiagnosticRecordProducers');

int DdqFreeDiagnosticReport(
  int hReport,
) =>
    _DdqFreeDiagnosticReport(
      hReport,
    );

late final _DdqFreeDiagnosticReport = _diagnosticdataquery.lookupFunction<
    Int32 Function(
  IntPtr hReport,
),
    int Function(
  int hReport,
)>('DdqFreeDiagnosticReport');

int DdqGetDiagnosticDataAccessLevelAllowed(
  Pointer<Int32> accessLevel,
) =>
    _DdqGetDiagnosticDataAccessLevelAllowed(
      accessLevel,
    );

late final _DdqGetDiagnosticDataAccessLevelAllowed =
    _diagnosticdataquery.lookupFunction<
        Int32 Function(
  Pointer<Int32> accessLevel,
),
        int Function(
  Pointer<Int32> accessLevel,
)>('DdqGetDiagnosticDataAccessLevelAllowed');

int DdqGetDiagnosticRecordAtIndex(
  int hRecord,
  int index,
  Pointer<DIAGNOSTIC_DATA_RECORD> record,
) =>
    _DdqGetDiagnosticRecordAtIndex(
      hRecord,
      index,
      record,
    );

late final _DdqGetDiagnosticRecordAtIndex = _diagnosticdataquery.lookupFunction<
    Int32 Function(
  IntPtr hRecord,
  Uint32 index,
  Pointer<DIAGNOSTIC_DATA_RECORD> record,
),
    int Function(
  int hRecord,
  int index,
  Pointer<DIAGNOSTIC_DATA_RECORD> record,
)>('DdqGetDiagnosticRecordAtIndex');

int DdqGetDiagnosticRecordBinaryDistribution(
  int hSession,
  Pointer<Pointer<Utf16>> producerNames,
  int producerNameCount,
  int topNBinaries,
  Pointer<Pointer<DIAGNOSTIC_DATA_EVENT_BINARY_STATS>> binaryStats,
  Pointer<Uint32> statCount,
) =>
    _DdqGetDiagnosticRecordBinaryDistribution(
      hSession,
      producerNames,
      producerNameCount,
      topNBinaries,
      binaryStats,
      statCount,
    );

late final _DdqGetDiagnosticRecordBinaryDistribution =
    _diagnosticdataquery.lookupFunction<
        Int32 Function(
  IntPtr hSession,
  Pointer<Pointer<Utf16>> producerNames,
  Uint32 producerNameCount,
  Uint32 topNBinaries,
  Pointer<Pointer<DIAGNOSTIC_DATA_EVENT_BINARY_STATS>> binaryStats,
  Pointer<Uint32> statCount,
),
        int Function(
  int hSession,
  Pointer<Pointer<Utf16>> producerNames,
  int producerNameCount,
  int topNBinaries,
  Pointer<Pointer<DIAGNOSTIC_DATA_EVENT_BINARY_STATS>> binaryStats,
  Pointer<Uint32> statCount,
)>('DdqGetDiagnosticRecordBinaryDistribution');

int DdqGetDiagnosticRecordCategoryAtIndex(
  int hCategoryDescription,
  int index,
  Pointer<DIAGNOSTIC_DATA_EVENT_CATEGORY_DESCRIPTION> categoryDescription,
) =>
    _DdqGetDiagnosticRecordCategoryAtIndex(
      hCategoryDescription,
      index,
      categoryDescription,
    );

late final _DdqGetDiagnosticRecordCategoryAtIndex =
    _diagnosticdataquery.lookupFunction<
        Int32 Function(
  IntPtr hCategoryDescription,
  Uint32 index,
  Pointer<DIAGNOSTIC_DATA_EVENT_CATEGORY_DESCRIPTION> categoryDescription,
),
        int Function(
  int hCategoryDescription,
  int index,
  Pointer<DIAGNOSTIC_DATA_EVENT_CATEGORY_DESCRIPTION> categoryDescription,
)>('DdqGetDiagnosticRecordCategoryAtIndex');

int DdqGetDiagnosticRecordCategoryCount(
  int hCategoryDescription,
  Pointer<Uint32> categoryDescriptionCount,
) =>
    _DdqGetDiagnosticRecordCategoryCount(
      hCategoryDescription,
      categoryDescriptionCount,
    );

late final _DdqGetDiagnosticRecordCategoryCount =
    _diagnosticdataquery.lookupFunction<
        Int32 Function(
  IntPtr hCategoryDescription,
  Pointer<Uint32> categoryDescriptionCount,
),
        int Function(
  int hCategoryDescription,
  Pointer<Uint32> categoryDescriptionCount,
)>('DdqGetDiagnosticRecordCategoryCount');

int DdqGetDiagnosticRecordCount(
  int hRecord,
  Pointer<Uint32> recordCount,
) =>
    _DdqGetDiagnosticRecordCount(
      hRecord,
      recordCount,
    );

late final _DdqGetDiagnosticRecordCount = _diagnosticdataquery.lookupFunction<
    Int32 Function(
  IntPtr hRecord,
  Pointer<Uint32> recordCount,
),
    int Function(
  int hRecord,
  Pointer<Uint32> recordCount,
)>('DdqGetDiagnosticRecordCount');

int DdqGetDiagnosticRecordLocaleTagAtIndex(
  int hTagDescription,
  int index,
  Pointer<DIAGNOSTIC_DATA_EVENT_TAG_DESCRIPTION> tagDescription,
) =>
    _DdqGetDiagnosticRecordLocaleTagAtIndex(
      hTagDescription,
      index,
      tagDescription,
    );

late final _DdqGetDiagnosticRecordLocaleTagAtIndex =
    _diagnosticdataquery.lookupFunction<
        Int32 Function(
  IntPtr hTagDescription,
  Uint32 index,
  Pointer<DIAGNOSTIC_DATA_EVENT_TAG_DESCRIPTION> tagDescription,
),
        int Function(
  int hTagDescription,
  int index,
  Pointer<DIAGNOSTIC_DATA_EVENT_TAG_DESCRIPTION> tagDescription,
)>('DdqGetDiagnosticRecordLocaleTagAtIndex');

int DdqGetDiagnosticRecordLocaleTagCount(
  int hTagDescription,
  Pointer<Uint32> tagDescriptionCount,
) =>
    _DdqGetDiagnosticRecordLocaleTagCount(
      hTagDescription,
      tagDescriptionCount,
    );

late final _DdqGetDiagnosticRecordLocaleTagCount =
    _diagnosticdataquery.lookupFunction<
        Int32 Function(
  IntPtr hTagDescription,
  Pointer<Uint32> tagDescriptionCount,
),
        int Function(
  int hTagDescription,
  Pointer<Uint32> tagDescriptionCount,
)>('DdqGetDiagnosticRecordLocaleTagCount');

int DdqGetDiagnosticRecordLocaleTags(
  int hSession,
  Pointer<Utf16> locale,
  Pointer<IntPtr> hTagDescription,
) =>
    _DdqGetDiagnosticRecordLocaleTags(
      hSession,
      locale,
      hTagDescription,
    );

late final _DdqGetDiagnosticRecordLocaleTags =
    _diagnosticdataquery.lookupFunction<
        Int32 Function(
  IntPtr hSession,
  Pointer<Utf16> locale,
  Pointer<IntPtr> hTagDescription,
),
        int Function(
  int hSession,
  Pointer<Utf16> locale,
  Pointer<IntPtr> hTagDescription,
)>('DdqGetDiagnosticRecordLocaleTags');

int DdqGetDiagnosticRecordPage(
  int hSession,
  Pointer<DIAGNOSTIC_DATA_SEARCH_CRITERIA> searchCriteria,
  int offset,
  int pageRecordCount,
  int baseRowId,
  Pointer<IntPtr> hRecord,
) =>
    _DdqGetDiagnosticRecordPage(
      hSession,
      searchCriteria,
      offset,
      pageRecordCount,
      baseRowId,
      hRecord,
    );

late final _DdqGetDiagnosticRecordPage = _diagnosticdataquery.lookupFunction<
    Int32 Function(
  IntPtr hSession,
  Pointer<DIAGNOSTIC_DATA_SEARCH_CRITERIA> searchCriteria,
  Uint32 offset,
  Uint32 pageRecordCount,
  Int64 baseRowId,
  Pointer<IntPtr> hRecord,
),
    int Function(
  int hSession,
  Pointer<DIAGNOSTIC_DATA_SEARCH_CRITERIA> searchCriteria,
  int offset,
  int pageRecordCount,
  int baseRowId,
  Pointer<IntPtr> hRecord,
)>('DdqGetDiagnosticRecordPage');

int DdqGetDiagnosticRecordPayload(
  int hSession,
  int rowId,
  Pointer<Pointer<Utf16>> payload,
) =>
    _DdqGetDiagnosticRecordPayload(
      hSession,
      rowId,
      payload,
    );

late final _DdqGetDiagnosticRecordPayload = _diagnosticdataquery.lookupFunction<
    Int32 Function(
  IntPtr hSession,
  Int64 rowId,
  Pointer<Pointer<Utf16>> payload,
),
    int Function(
  int hSession,
  int rowId,
  Pointer<Pointer<Utf16>> payload,
)>('DdqGetDiagnosticRecordPayload');

int DdqGetDiagnosticRecordProducerAtIndex(
  int hProducerDescription,
  int index,
  Pointer<DIAGNOSTIC_DATA_EVENT_PRODUCER_DESCRIPTION> producerDescription,
) =>
    _DdqGetDiagnosticRecordProducerAtIndex(
      hProducerDescription,
      index,
      producerDescription,
    );

late final _DdqGetDiagnosticRecordProducerAtIndex =
    _diagnosticdataquery.lookupFunction<
        Int32 Function(
  IntPtr hProducerDescription,
  Uint32 index,
  Pointer<DIAGNOSTIC_DATA_EVENT_PRODUCER_DESCRIPTION> producerDescription,
),
        int Function(
  int hProducerDescription,
  int index,
  Pointer<DIAGNOSTIC_DATA_EVENT_PRODUCER_DESCRIPTION> producerDescription,
)>('DdqGetDiagnosticRecordProducerAtIndex');

int DdqGetDiagnosticRecordProducerCategories(
  int hSession,
  Pointer<Utf16> producerName,
  Pointer<IntPtr> hCategoryDescription,
) =>
    _DdqGetDiagnosticRecordProducerCategories(
      hSession,
      producerName,
      hCategoryDescription,
    );

late final _DdqGetDiagnosticRecordProducerCategories =
    _diagnosticdataquery.lookupFunction<
        Int32 Function(
  IntPtr hSession,
  Pointer<Utf16> producerName,
  Pointer<IntPtr> hCategoryDescription,
),
        int Function(
  int hSession,
  Pointer<Utf16> producerName,
  Pointer<IntPtr> hCategoryDescription,
)>('DdqGetDiagnosticRecordProducerCategories');

int DdqGetDiagnosticRecordProducerCount(
  int hProducerDescription,
  Pointer<Uint32> producerDescriptionCount,
) =>
    _DdqGetDiagnosticRecordProducerCount(
      hProducerDescription,
      producerDescriptionCount,
    );

late final _DdqGetDiagnosticRecordProducerCount =
    _diagnosticdataquery.lookupFunction<
        Int32 Function(
  IntPtr hProducerDescription,
  Pointer<Uint32> producerDescriptionCount,
),
        int Function(
  int hProducerDescription,
  Pointer<Uint32> producerDescriptionCount,
)>('DdqGetDiagnosticRecordProducerCount');

int DdqGetDiagnosticRecordProducers(
  int hSession,
  Pointer<IntPtr> hProducerDescription,
) =>
    _DdqGetDiagnosticRecordProducers(
      hSession,
      hProducerDescription,
    );

late final _DdqGetDiagnosticRecordProducers =
    _diagnosticdataquery.lookupFunction<
        Int32 Function(
  IntPtr hSession,
  Pointer<IntPtr> hProducerDescription,
),
        int Function(
  int hSession,
  Pointer<IntPtr> hProducerDescription,
)>('DdqGetDiagnosticRecordProducers');

int DdqGetDiagnosticRecordStats(
  int hSession,
  Pointer<DIAGNOSTIC_DATA_SEARCH_CRITERIA> searchCriteria,
  Pointer<Uint32> recordCount,
  Pointer<Int64> minRowId,
  Pointer<Int64> maxRowId,
) =>
    _DdqGetDiagnosticRecordStats(
      hSession,
      searchCriteria,
      recordCount,
      minRowId,
      maxRowId,
    );

late final _DdqGetDiagnosticRecordStats = _diagnosticdataquery.lookupFunction<
    Int32 Function(
  IntPtr hSession,
  Pointer<DIAGNOSTIC_DATA_SEARCH_CRITERIA> searchCriteria,
  Pointer<Uint32> recordCount,
  Pointer<Int64> minRowId,
  Pointer<Int64> maxRowId,
),
    int Function(
  int hSession,
  Pointer<DIAGNOSTIC_DATA_SEARCH_CRITERIA> searchCriteria,
  Pointer<Uint32> recordCount,
  Pointer<Int64> minRowId,
  Pointer<Int64> maxRowId,
)>('DdqGetDiagnosticRecordStats');

int DdqGetDiagnosticRecordSummary(
  int hSession,
  Pointer<Pointer<Utf16>> producerNames,
  int producerNameCount,
  Pointer<DIAGNOSTIC_DATA_GENERAL_STATS> generalStats,
) =>
    _DdqGetDiagnosticRecordSummary(
      hSession,
      producerNames,
      producerNameCount,
      generalStats,
    );

late final _DdqGetDiagnosticRecordSummary = _diagnosticdataquery.lookupFunction<
    Int32 Function(
  IntPtr hSession,
  Pointer<Pointer<Utf16>> producerNames,
  Uint32 producerNameCount,
  Pointer<DIAGNOSTIC_DATA_GENERAL_STATS> generalStats,
),
    int Function(
  int hSession,
  Pointer<Pointer<Utf16>> producerNames,
  int producerNameCount,
  Pointer<DIAGNOSTIC_DATA_GENERAL_STATS> generalStats,
)>('DdqGetDiagnosticRecordSummary');

int DdqGetDiagnosticRecordTagDistribution(
  int hSession,
  Pointer<Pointer<Utf16>> producerNames,
  int producerNameCount,
  Pointer<Pointer<DIAGNOSTIC_DATA_EVENT_TAG_STATS>> tagStats,
  Pointer<Uint32> statCount,
) =>
    _DdqGetDiagnosticRecordTagDistribution(
      hSession,
      producerNames,
      producerNameCount,
      tagStats,
      statCount,
    );

late final _DdqGetDiagnosticRecordTagDistribution =
    _diagnosticdataquery.lookupFunction<
        Int32 Function(
  IntPtr hSession,
  Pointer<Pointer<Utf16>> producerNames,
  Uint32 producerNameCount,
  Pointer<Pointer<DIAGNOSTIC_DATA_EVENT_TAG_STATS>> tagStats,
  Pointer<Uint32> statCount,
),
        int Function(
  int hSession,
  Pointer<Pointer<Utf16>> producerNames,
  int producerNameCount,
  Pointer<Pointer<DIAGNOSTIC_DATA_EVENT_TAG_STATS>> tagStats,
  Pointer<Uint32> statCount,
)>('DdqGetDiagnosticRecordTagDistribution');

int DdqGetDiagnosticReport(
  int hSession,
  int reportStoreType,
  Pointer<IntPtr> hReport,
) =>
    _DdqGetDiagnosticReport(
      hSession,
      reportStoreType,
      hReport,
    );

late final _DdqGetDiagnosticReport = _diagnosticdataquery.lookupFunction<
    Int32 Function(
  IntPtr hSession,
  Uint32 reportStoreType,
  Pointer<IntPtr> hReport,
),
    int Function(
  int hSession,
  int reportStoreType,
  Pointer<IntPtr> hReport,
)>('DdqGetDiagnosticReport');

int DdqGetDiagnosticReportAtIndex(
  int hReport,
  int index,
  Pointer<DIAGNOSTIC_REPORT_DATA> report,
) =>
    _DdqGetDiagnosticReportAtIndex(
      hReport,
      index,
      report,
    );

late final _DdqGetDiagnosticReportAtIndex = _diagnosticdataquery.lookupFunction<
    Int32 Function(
  IntPtr hReport,
  Uint32 index,
  Pointer<DIAGNOSTIC_REPORT_DATA> report,
),
    int Function(
  int hReport,
  int index,
  Pointer<DIAGNOSTIC_REPORT_DATA> report,
)>('DdqGetDiagnosticReportAtIndex');

int DdqGetDiagnosticReportCount(
  int hReport,
  Pointer<Uint32> reportCount,
) =>
    _DdqGetDiagnosticReportCount(
      hReport,
      reportCount,
    );

late final _DdqGetDiagnosticReportCount = _diagnosticdataquery.lookupFunction<
    Int32 Function(
  IntPtr hReport,
  Pointer<Uint32> reportCount,
),
    int Function(
  int hReport,
  Pointer<Uint32> reportCount,
)>('DdqGetDiagnosticReportCount');

int DdqGetDiagnosticReportStoreReportCount(
  int hSession,
  int reportStoreType,
  Pointer<Uint32> reportCount,
) =>
    _DdqGetDiagnosticReportStoreReportCount(
      hSession,
      reportStoreType,
      reportCount,
    );

late final _DdqGetDiagnosticReportStoreReportCount =
    _diagnosticdataquery.lookupFunction<
        Int32 Function(
  IntPtr hSession,
  Uint32 reportStoreType,
  Pointer<Uint32> reportCount,
),
        int Function(
  int hSession,
  int reportStoreType,
  Pointer<Uint32> reportCount,
)>('DdqGetDiagnosticReportStoreReportCount');

int DdqGetSessionAccessLevel(
  int hSession,
  Pointer<Int32> accessLevel,
) =>
    _DdqGetSessionAccessLevel(
      hSession,
      accessLevel,
    );

late final _DdqGetSessionAccessLevel = _diagnosticdataquery.lookupFunction<
    Int32 Function(
  IntPtr hSession,
  Pointer<Int32> accessLevel,
),
    int Function(
  int hSession,
  Pointer<Int32> accessLevel,
)>('DdqGetSessionAccessLevel');

int DdqGetTranscriptConfiguration(
  int hSession,
  Pointer<DIAGNOSTIC_DATA_EVENT_TRANSCRIPT_CONFIGURATION> currentConfig,
) =>
    _DdqGetTranscriptConfiguration(
      hSession,
      currentConfig,
    );

late final _DdqGetTranscriptConfiguration = _diagnosticdataquery.lookupFunction<
    Int32 Function(
  IntPtr hSession,
  Pointer<DIAGNOSTIC_DATA_EVENT_TRANSCRIPT_CONFIGURATION> currentConfig,
),
    int Function(
  int hSession,
  Pointer<DIAGNOSTIC_DATA_EVENT_TRANSCRIPT_CONFIGURATION> currentConfig,
)>('DdqGetTranscriptConfiguration');

int DdqIsDiagnosticRecordSampledIn(
  int hSession,
  Pointer<GUID> providerGroup,
  Pointer<GUID> providerId,
  Pointer<Utf16> providerName,
  Pointer<Uint32> eventId,
  Pointer<Utf16> eventName,
  Pointer<Uint32> eventVersion,
  Pointer<Uint64> eventKeywords,
  Pointer<Int32> isSampledIn,
) =>
    _DdqIsDiagnosticRecordSampledIn(
      hSession,
      providerGroup,
      providerId,
      providerName,
      eventId,
      eventName,
      eventVersion,
      eventKeywords,
      isSampledIn,
    );

late final _DdqIsDiagnosticRecordSampledIn =
    _diagnosticdataquery.lookupFunction<
        Int32 Function(
  IntPtr hSession,
  Pointer<GUID> providerGroup,
  Pointer<GUID> providerId,
  Pointer<Utf16> providerName,
  Pointer<Uint32> eventId,
  Pointer<Utf16> eventName,
  Pointer<Uint32> eventVersion,
  Pointer<Uint64> eventKeywords,
  Pointer<Int32> isSampledIn,
),
        int Function(
  int hSession,
  Pointer<GUID> providerGroup,
  Pointer<GUID> providerId,
  Pointer<Utf16> providerName,
  Pointer<Uint32> eventId,
  Pointer<Utf16> eventName,
  Pointer<Uint32> eventVersion,
  Pointer<Uint64> eventKeywords,
  Pointer<Int32> isSampledIn,
)>('DdqIsDiagnosticRecordSampledIn');

int DdqSetTranscriptConfiguration(
  int hSession,
  Pointer<DIAGNOSTIC_DATA_EVENT_TRANSCRIPT_CONFIGURATION> desiredConfig,
) =>
    _DdqSetTranscriptConfiguration(
      hSession,
      desiredConfig,
    );

late final _DdqSetTranscriptConfiguration = _diagnosticdataquery.lookupFunction<
    Int32 Function(
  IntPtr hSession,
  Pointer<DIAGNOSTIC_DATA_EVENT_TRANSCRIPT_CONFIGURATION> desiredConfig,
),
    int Function(
  int hSession,
  Pointer<DIAGNOSTIC_DATA_EVENT_TRANSCRIPT_CONFIGURATION> desiredConfig,
)>('DdqSetTranscriptConfiguration');
