// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// -----------------------------------------------------------------------------
// Linter exceptions
// -----------------------------------------------------------------------------
// ignore_for_file: camel_case_types ignore_for_file: camel_case_extensions
//
// Why? The linter defaults to throw a warning for types not named as camel
// case. We deliberately break this convention to match the Win32 underlying
// types.
//
//
// ignore_for_file: unused_field
//
// Why? The linter complains about unused fields (e.g. a class that contains
// underscore-prefixed members that are not used in the library. In this class,
// we use this feature to ensure that sizeOf<STRUCT_NAME> returns a size at
// least as large as the underlying native struct. See, for example,
// ENUMLOGFONTEX.
//
//
// ignore_for_file: unnecessary_getters_setters
//
// Why? In structs like VARIANT, we're using getters and setters to project the
// same underlying data property to various union types. The trivial overhead is
// outweighed by readability.
//
//
// ignore_for_file: unused_import
//
// Why? We speculatively include some imports that we might generate a
// requirement for.
// -----------------------------------------------------------------------------

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';

class WER_REPORT_INFORMATION extends Struct {
  @Uint32()
  external int dwSize;
  @IntPtr()
  external int hProcess;
  @Array(64)
  external Array<Uint16> wzConsentKey;
  @Array(128)
  external Array<Uint16> wzFriendlyEventName;
  @Array(128)
  external Array<Uint16> wzApplicationName;
  @Array(129)
  external Array<Uint16> wzApplicationPath;
  @Array(130)
  external Array<Uint16> wzDescription;
  @IntPtr()
  external int hwndParent;
}

class WER_REPORT_INFORMATION_V3 extends Struct {
  @Uint32()
  external int dwSize;
  @IntPtr()
  external int hProcess;
  @Array(64)
  external Array<Uint16> wzConsentKey;
  @Array(128)
  external Array<Uint16> wzFriendlyEventName;
  @Array(128)
  external Array<Uint16> wzApplicationName;
  @Array(129)
  external Array<Uint16> wzApplicationPath;
  @Array(130)
  external Array<Uint16> wzDescription;
  @IntPtr()
  external int hwndParent;
  @Array(64)
  external Array<Uint16> wzNamespacePartner;
  @Array(64)
  external Array<Uint16> wzNamespaceGroup;
}

class WER_DUMP_CUSTOM_OPTIONS extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwMask;
  @Uint32()
  external int dwDumpFlags;
  @Int32()
  external int bOnlyThisThread;
  @Uint32()
  external int dwExceptionThreadFlags;
  @Uint32()
  external int dwOtherThreadFlags;
  @Uint32()
  external int dwExceptionThreadExFlags;
  @Uint32()
  external int dwOtherThreadExFlags;
  @Uint32()
  external int dwPreferredModuleFlags;
  @Uint32()
  external int dwOtherModuleFlags;
  @Array(129)
  external Array<Uint16> wzPreferredModuleList;
}

class WER_DUMP_CUSTOM_OPTIONS_V2 extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwMask;
  @Uint32()
  external int dwDumpFlags;
  @Int32()
  external int bOnlyThisThread;
  @Uint32()
  external int dwExceptionThreadFlags;
  @Uint32()
  external int dwOtherThreadFlags;
  @Uint32()
  external int dwExceptionThreadExFlags;
  @Uint32()
  external int dwOtherThreadExFlags;
  @Uint32()
  external int dwPreferredModuleFlags;
  @Uint32()
  external int dwOtherModuleFlags;
  @Array(129)
  external Array<Uint16> wzPreferredModuleList;
  @Uint32()
  external int dwPreferredModuleResetFlags;
  @Uint32()
  external int dwOtherModuleResetFlags;
}

class WER_REPORT_INFORMATION_V4 extends Struct {
  @Uint32()
  external int dwSize;
  @IntPtr()
  external int hProcess;
  @Array(64)
  external Array<Uint16> wzConsentKey;
  @Array(128)
  external Array<Uint16> wzFriendlyEventName;
  @Array(128)
  external Array<Uint16> wzApplicationName;
  @Array(129)
  external Array<Uint16> wzApplicationPath;
  @Array(130)
  external Array<Uint16> wzDescription;
  @IntPtr()
  external int hwndParent;
  @Array(64)
  external Array<Uint16> wzNamespacePartner;
  @Array(64)
  external Array<Uint16> wzNamespaceGroup;
  @Array(16)
  external Array<Uint8> rgbApplicationIdentity;
  @IntPtr()
  external int hSnapshot;
  @IntPtr()
  external int hDeleteFilesImpersonationToken;
}

class WER_REPORT_INFORMATION_V5 extends Struct {
  @Uint32()
  external int dwSize;
  @IntPtr()
  external int hProcess;
  @Array(64)
  external Array<Uint16> wzConsentKey;
  @Array(128)
  external Array<Uint16> wzFriendlyEventName;
  @Array(128)
  external Array<Uint16> wzApplicationName;
  @Array(129)
  external Array<Uint16> wzApplicationPath;
  @Array(130)
  external Array<Uint16> wzDescription;
  @IntPtr()
  external int hwndParent;
  @Array(64)
  external Array<Uint16> wzNamespacePartner;
  @Array(64)
  external Array<Uint16> wzNamespaceGroup;
  @Array(16)
  external Array<Uint8> rgbApplicationIdentity;
  @IntPtr()
  external int hSnapshot;
  @IntPtr()
  external int hDeleteFilesImpersonationToken;
  @Uint32()
  external int submitResultMax;
}

class WER_DUMP_CUSTOM_OPTIONS_V3 extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwMask;
  @Uint32()
  external int dwDumpFlags;
  @Int32()
  external int bOnlyThisThread;
  @Uint32()
  external int dwExceptionThreadFlags;
  @Uint32()
  external int dwOtherThreadFlags;
  @Uint32()
  external int dwExceptionThreadExFlags;
  @Uint32()
  external int dwOtherThreadExFlags;
  @Uint32()
  external int dwPreferredModuleFlags;
  @Uint32()
  external int dwOtherModuleFlags;
  @Array(129)
  external Array<Uint16> wzPreferredModuleList;
  @Uint32()
  external int dwPreferredModuleResetFlags;
  @Uint32()
  external int dwOtherModuleResetFlags;
  external Pointer pvDumpKey;
  @IntPtr()
  external int hSnapshot;
  @Uint32()
  external int dwThreadID;
}

class WER_EXCEPTION_INFORMATION extends Struct {
  external Pointer<EXCEPTION_POINTERS> pExceptionPointers;
  @Int32()
  external int bClientPointers;
}

class WER_RUNTIME_EXCEPTION_INFORMATION extends Struct {
  @Uint32()
  external int dwSize;
  @IntPtr()
  external int hProcess;
  @IntPtr()
  external int hThread;
  external EXCEPTION_RECORD exceptionRecord;
  external CONTEXT context;
  external Pointer<Utf16> pwszReportId;
  @Int32()
  external int bIsFatal;
  @Uint32()
  external int dwReserved;
}

class WER_REPORT_PARAMETER extends Struct {
  @Array(128)
  external Array<Uint16> Name;
  @Array(129)
  external Array<Uint16> Value;
}

class WER_REPORT_SIGNATURE extends Struct {
  @Array(65)
  external Array<Uint16> EventName;
  @Array(10)
  external Array<WER_REPORT_PARAMETER> Parameters;
}

class WER_REPORT_METADATA_V2 extends Struct {
  external WER_REPORT_SIGNATURE Signature;
  external GUID BucketId;
  external GUID ReportId;
  external FILETIME CreationTime;
  @Uint64()
  external int SizeInBytes;
  @Array(129)
  external Array<Uint16> CabId;
  @Uint32()
  external int ReportStatus;
  external GUID ReportIntegratorId;
  @Uint32()
  external int NumberOfFiles;
  @Uint32()
  external int SizeOfFileNames;
  external Pointer<Utf16> FileNames;
}

class WER_REPORT_METADATA_V3 extends Struct {
  external WER_REPORT_SIGNATURE Signature;
  external GUID BucketId;
  external GUID ReportId;
  external FILETIME CreationTime;
  @Uint64()
  external int SizeInBytes;
  @Array(129)
  external Array<Uint16> CabId;
  @Uint32()
  external int ReportStatus;
  external GUID ReportIntegratorId;
  @Uint32()
  external int NumberOfFiles;
  @Uint32()
  external int SizeOfFileNames;
  external Pointer<Utf16> FileNames;
  @Array(128)
  external Array<Uint16> FriendlyEventName;
  @Array(128)
  external Array<Uint16> ApplicationName;
  @Array(129)
  external Array<Uint16> ApplicationPath;
  @Array(130)
  external Array<Uint16> Description;
  @Array(129)
  external Array<Uint16> BucketIdString;
  @Uint64()
  external int LegacyBucketId;
}

class WER_REPORT_METADATA_V1 extends Struct {
  external WER_REPORT_SIGNATURE Signature;
  external GUID BucketId;
  external GUID ReportId;
  external FILETIME CreationTime;
  @Uint64()
  external int SizeInBytes;
}
