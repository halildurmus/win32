// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// Native callback functions that can get called by the Win32 API

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'structs.g.dart';
import '../combase.dart';
import '../guid.dart';
import '../foundation/structs.g.dart';
import '../globalization/structs.g.dart';

typedef CALINFO_ENUMPROCEXEX = Int32 Function(
  Pointer<Utf16> param0,
  Uint32 param1,
  Pointer<Utf16> param2,
  IntPtr param3,
);
typedef CALINFO_ENUMPROCEXW = Int32 Function(
  Pointer<Utf16> param0,
  Uint32 param1,
);
typedef CALINFO_ENUMPROCW = Int32 Function(
  Pointer<Utf16> param0,
);
typedef CODEPAGE_ENUMPROCW = Int32 Function(
  Pointer<Utf16> param0,
);
typedef DATEFMT_ENUMPROCEXEX = Int32 Function(
  Pointer<Utf16> param0,
  Uint32 param1,
  IntPtr param2,
);
typedef DATEFMT_ENUMPROCEXW = Int32 Function(
  Pointer<Utf16> param0,
  Uint32 param1,
);
typedef DATEFMT_ENUMPROCW = Int32 Function(
  Pointer<Utf16> param0,
);
typedef GEO_ENUMNAMEPROC = Int32 Function(
  Pointer<Utf16> param0,
  IntPtr param1,
);
typedef GEO_ENUMPROC = Int32 Function(
  Int32 param0,
);
typedef LANGGROUPLOCALE_ENUMPROCW = Int32 Function(
  Uint32 param0,
  Uint32 param1,
  Pointer<Utf16> param2,
  IntPtr param3,
);
typedef LANGUAGEGROUP_ENUMPROCW = Int32 Function(
  Uint32 param0,
  Pointer<Utf16> param1,
  Pointer<Utf16> param2,
  Uint32 param3,
  IntPtr param4,
);
typedef LOCALE_ENUMPROCEX = Int32 Function(
  Pointer<Utf16> param0,
  Uint32 param1,
  IntPtr param2,
);
typedef LOCALE_ENUMPROCW = Int32 Function(
  Pointer<Utf16> param0,
);
typedef PFN_MAPPINGCALLBACKPROC = Void Function(
  Pointer<MAPPING_PROPERTY_BAG> pBag,
  Pointer data,
  Uint32 dwDataSize,
  Int32 Result,
);
typedef TIMEFMT_ENUMPROCEX = Int32 Function(
  Pointer<Utf16> param0,
  IntPtr param1,
);
typedef TIMEFMT_ENUMPROCW = Int32 Function(
  Pointer<Utf16> param0,
);
typedef UBiDiClassCallback = Int32 Function(
  Pointer context,
  Int32 c,
);
typedef UCPMapValueFilter = Uint32 Function(
  Pointer context,
  Uint32 value,
);
typedef UCharEnumTypeRange = Int8 Function(
  Pointer context,
  Int32 start,
  Int32 limit,
  Int32 type,
);
typedef UCharIteratorCurrent = Int32 Function(
  Pointer<UCharIterator> iter,
);
typedef UCharIteratorGetIndex = Int32 Function(
  Pointer<UCharIterator> iter,
  Int32 origin,
);
typedef UCharIteratorGetState = Uint32 Function(
  Pointer<UCharIterator> iter,
);
typedef UCharIteratorHasNext = Int8 Function(
  Pointer<UCharIterator> iter,
);
typedef UCharIteratorHasPrevious = Int8 Function(
  Pointer<UCharIterator> iter,
);
typedef UCharIteratorMove = Int32 Function(
  Pointer<UCharIterator> iter,
  Int32 delta,
  Int32 origin,
);
typedef UCharIteratorNext = Int32 Function(
  Pointer<UCharIterator> iter,
);
typedef UCharIteratorPrevious = Int32 Function(
  Pointer<UCharIterator> iter,
);
typedef UCharIteratorReserved = Int32 Function(
  Pointer<UCharIterator> iter,
  Int32 something,
);
typedef UCharIteratorSetState = Void Function(
  Pointer<UCharIterator> iter,
  Uint32 state,
  Pointer<Int32> pErrorCode,
);
typedef UConverterFromUCallback = Void Function(
  Pointer context,
  Pointer<UConverterFromUnicodeArgs> args,
  Pointer<Uint16> codeUnits,
  Int32 length,
  Int32 codePoint,
  Int32 reason,
  Pointer<Int32> pErrorCode,
);
typedef UConverterToUCallback = Void Function(
  Pointer context,
  Pointer<UConverterToUnicodeArgs> args,
  Pointer<Utf8> codeUnits,
  Int32 length,
  Int32 reason,
  Pointer<Int32> pErrorCode,
);
typedef UEnumCharNamesFn = Int8 Function(
  Pointer context,
  Int32 code,
  Int32 nameChoice,
  Pointer<Utf8> name,
  Int32 length,
);
typedef UILANGUAGE_ENUMPROCW = Int32 Function(
  Pointer<Utf16> param0,
  IntPtr param1,
);
typedef UMemAllocFn = Pointer Function(
  Pointer context,
  IntPtr size,
);
typedef UMemFreeFn = Void Function(
  Pointer context,
  Pointer mem,
);
typedef UMemReallocFn = Pointer Function(
  Pointer context,
  Pointer mem,
  IntPtr size,
);
typedef UNESCAPE_CHAR_AT = Uint16 Function(
  Int32 offset,
  Pointer context,
);
typedef URegexFindProgressCallback = Int8 Function(
  Pointer context,
  Int64 matchIndex,
);
typedef URegexMatchCallback = Int8 Function(
  Pointer context,
  Int32 steps,
);
typedef UStringCaseMapper = Int32 Function(
  Pointer<UCaseMap> csm,
  Pointer<Uint16> dest,
  Int32 destCapacity,
  Pointer<Uint16> src,
  Int32 srcLength,
  Pointer<Int32> pErrorCode,
);
typedef UTextAccess = Int8 Function(
  Pointer<UText> ut,
  Int64 nativeIndex,
  Int8 forward,
);
typedef UTextClone = Pointer<UText> Function(
  Pointer<UText> dest,
  Pointer<UText> src,
  Int8 deep,
  Pointer<Int32> status,
);
typedef UTextClose = Void Function(
  Pointer<UText> ut,
);
typedef UTextCopy = Void Function(
  Pointer<UText> ut,
  Int64 nativeStart,
  Int64 nativeLimit,
  Int64 nativeDest,
  Int8 move,
  Pointer<Int32> status,
);
typedef UTextExtract = Int32 Function(
  Pointer<UText> ut,
  Int64 nativeStart,
  Int64 nativeLimit,
  Pointer<Uint16> dest,
  Int32 destCapacity,
  Pointer<Int32> status,
);
typedef UTextMapNativeIndexToUTF16 = Int32 Function(
  Pointer<UText> ut,
  Int64 nativeIndex,
);
typedef UTextMapOffsetToNative = Int64 Function(
  Pointer<UText> ut,
);
typedef UTextNativeLength = Int64 Function(
  Pointer<UText> ut,
);
typedef UTextReplace = Int32 Function(
  Pointer<UText> ut,
  Int64 nativeStart,
  Int64 nativeLimit,
  Pointer<Uint16> replacementText,
  Int32 replacmentLength,
  Pointer<Int32> status,
);
typedef UTraceData = Void Function(
  Pointer context,
  Int32 fnNumber,
  Int32 level,
  Pointer<Utf8> fmt,
  Pointer<Int8> args,
);
typedef UTraceEntry = Void Function(
  Pointer context,
  Int32 fnNumber,
);
typedef UTraceExit = Void Function(
  Pointer context,
  Int32 fnNumber,
  Pointer<Utf8> fmt,
  Pointer<Int8> args,
);
