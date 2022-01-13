// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import '../../combase.dart';
import '../../guid.dart';
import '../../foundation/structs.g.dart';
import '../../security/diagnosticdataquery/structs.g.dart';

/// {@category Struct}
class DIAGNOSTIC_DATA_EVENT_BINARY_STATS extends Struct {
  external Pointer<Utf16> moduleName;

  external Pointer<Utf16> friendlyModuleName;

  @Uint32()
  external int eventCount;

  @Uint64()
  external int uploadSizeBytes;
}

/// {@category Struct}
class DIAGNOSTIC_DATA_EVENT_CATEGORY_DESCRIPTION extends Struct {
  @Int32()
  external int id;

  external Pointer<Utf16> name;
}

/// {@category Struct}
class DIAGNOSTIC_DATA_EVENT_PRODUCER_DESCRIPTION extends Struct {
  external Pointer<Utf16> name;
}

/// {@category Struct}
class DIAGNOSTIC_DATA_EVENT_TAG_DESCRIPTION extends Struct {
  @Int32()
  external int privacyTag;

  external Pointer<Utf16> name;

  external Pointer<Utf16> description;
}

/// {@category Struct}
class DIAGNOSTIC_DATA_EVENT_TAG_STATS extends Struct {
  @Int32()
  external int privacyTag;

  @Uint32()
  external int eventCount;
}

/// {@category Struct}
class DIAGNOSTIC_DATA_EVENT_TRANSCRIPT_CONFIGURATION extends Struct {
  @Uint32()
  external int hoursOfHistoryToKeep;

  @Uint32()
  external int maxStoreMegabytes;

  @Uint32()
  external int requestedMaxStoreMegabytes;
}

/// {@category Struct}
class DIAGNOSTIC_DATA_GENERAL_STATS extends Struct {
  @Uint32()
  external int optInLevel;

  @Uint64()
  external int transcriptSizeBytes;

  @Uint64()
  external int oldestEventTimestamp;

  @Uint32()
  external int totalEventCountLast24Hours;

  @Float()
  external double averageDailyEvents;
}

/// {@category Struct}
class DIAGNOSTIC_DATA_RECORD extends Struct {
  @Int64()
  external int rowId;

  @Uint64()
  external int timestamp;

  @Uint64()
  external int eventKeywords;

  external Pointer<Utf16> fullEventName;

  external Pointer<Utf16> providerGroupGuid;

  external Pointer<Utf16> producerName;

  external Pointer<Int32> privacyTags;

  @Uint32()
  external int privacyTagCount;

  external Pointer<Int32> categoryIds;

  @Uint32()
  external int categoryIdCount;

  @Int32()
  external int isCoreData;

  external Pointer<Utf16> extra1;

  external Pointer<Utf16> extra2;

  external Pointer<Utf16> extra3;
}

/// {@category Struct}
class DIAGNOSTIC_DATA_SEARCH_CRITERIA extends Struct {
  external Pointer<Pointer<Utf16>> producerNames;

  @Uint32()
  external int producerNameCount;

  external Pointer<Utf16> textToMatch;

  external Pointer<Int32> categoryIds;

  @Uint32()
  external int categoryIdCount;

  external Pointer<Int32> privacyTags;

  @Uint32()
  external int privacyTagCount;

  @Int32()
  external int coreDataOnly;
}

/// {@category Struct}
class DIAGNOSTIC_REPORT_DATA extends Struct {
  external DIAGNOSTIC_REPORT_SIGNATURE signature;

  external GUID bucketId;

  external GUID reportId;

  external FILETIME creationTime;

  @Uint64()
  external int sizeInBytes;

  external Pointer<Utf16> cabId;

  @Uint32()
  external int reportStatus;

  external GUID reportIntegratorId;

  external Pointer<Pointer<Utf16>> fileNames;

  @Uint32()
  external int fileCount;

  external Pointer<Utf16> friendlyEventName;

  external Pointer<Utf16> applicationName;

  external Pointer<Utf16> applicationPath;

  external Pointer<Utf16> description;

  external Pointer<Utf16> bucketIdString;

  @Uint64()
  external int legacyBucketId;

  external Pointer<Utf16> reportKey;
}

/// {@category Struct}
class DIAGNOSTIC_REPORT_PARAMETER extends Struct {
  @Array(129)
  external Array<Uint16> _name;

  String get name {
    final charCodes = <int>[];
    for (var i = 0; i < 129; i++) {
      charCodes.add(_name[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set name(String value) {
    final stringToStore = value.padRight(129, '\x00');
    for (var i = 0; i < 129; i++) {
      _name[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(260)
  external Array<Uint16> _value;

  String get value {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_value[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set value(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _value[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class DIAGNOSTIC_REPORT_SIGNATURE extends Struct {
  @Array(65)
  external Array<Uint16> _eventName;

  String get eventName {
    final charCodes = <int>[];
    for (var i = 0; i < 65; i++) {
      charCodes.add(_eventName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set eventName(String value) {
    final stringToStore = value.padRight(65, '\x00');
    for (var i = 0; i < 65; i++) {
      _eventName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(10)
  external Array<DIAGNOSTIC_REPORT_PARAMETER> parameters;
}
