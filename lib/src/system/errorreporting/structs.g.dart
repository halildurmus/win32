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
import '../../system/diagnostics/debug/structs.g.dart';
import '../../system/errorreporting/structs.g.dart';

/// {@category Struct}
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

  @Array(256)
  external Array<Uint16> _wzPreferredModuleList;

  String get wzPreferredModuleList {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_wzPreferredModuleList[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wzPreferredModuleList(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _wzPreferredModuleList[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
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

  @Array(256)
  external Array<Uint16> _wzPreferredModuleList;

  String get wzPreferredModuleList {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_wzPreferredModuleList[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wzPreferredModuleList(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _wzPreferredModuleList[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int dwPreferredModuleResetFlags;

  @Uint32()
  external int dwOtherModuleResetFlags;
}

/// {@category Struct}
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

  @Array(256)
  external Array<Uint16> _wzPreferredModuleList;

  String get wzPreferredModuleList {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_wzPreferredModuleList[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wzPreferredModuleList(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _wzPreferredModuleList[i] = stringToStore.codeUnitAt(i);
    }
  }

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

/// {@category Struct}
class WER_EXCEPTION_INFORMATION extends Struct {
  external Pointer<EXCEPTION_POINTERS> pExceptionPointers;

  @Int32()
  external int bClientPointers;
}

/// {@category Struct}
class WER_REPORT_INFORMATION extends Struct {
  @Uint32()
  external int dwSize;

  @IntPtr()
  external int hProcess;

  @Array(64)
  external Array<Uint16> _wzConsentKey;

  String get wzConsentKey {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_wzConsentKey[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wzConsentKey(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _wzConsentKey[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(128)
  external Array<Uint16> _wzFriendlyEventName;

  String get wzFriendlyEventName {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_wzFriendlyEventName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wzFriendlyEventName(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _wzFriendlyEventName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(128)
  external Array<Uint16> _wzApplicationName;

  String get wzApplicationName {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_wzApplicationName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wzApplicationName(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _wzApplicationName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(260)
  external Array<Uint16> _wzApplicationPath;

  String get wzApplicationPath {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_wzApplicationPath[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wzApplicationPath(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _wzApplicationPath[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(512)
  external Array<Uint16> _wzDescription;

  String get wzDescription {
    final charCodes = <int>[];
    for (var i = 0; i < 512; i++) {
      charCodes.add(_wzDescription[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wzDescription(String value) {
    final stringToStore = value.padRight(512, '\x00');
    for (var i = 0; i < 512; i++) {
      _wzDescription[i] = stringToStore.codeUnitAt(i);
    }
  }

  @IntPtr()
  external int hwndParent;
}

/// {@category Struct}
class WER_REPORT_INFORMATION_V3 extends Struct {
  @Uint32()
  external int dwSize;

  @IntPtr()
  external int hProcess;

  @Array(64)
  external Array<Uint16> _wzConsentKey;

  String get wzConsentKey {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_wzConsentKey[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wzConsentKey(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _wzConsentKey[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(128)
  external Array<Uint16> _wzFriendlyEventName;

  String get wzFriendlyEventName {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_wzFriendlyEventName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wzFriendlyEventName(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _wzFriendlyEventName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(128)
  external Array<Uint16> _wzApplicationName;

  String get wzApplicationName {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_wzApplicationName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wzApplicationName(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _wzApplicationName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(260)
  external Array<Uint16> _wzApplicationPath;

  String get wzApplicationPath {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_wzApplicationPath[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wzApplicationPath(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _wzApplicationPath[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(512)
  external Array<Uint16> _wzDescription;

  String get wzDescription {
    final charCodes = <int>[];
    for (var i = 0; i < 512; i++) {
      charCodes.add(_wzDescription[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wzDescription(String value) {
    final stringToStore = value.padRight(512, '\x00');
    for (var i = 0; i < 512; i++) {
      _wzDescription[i] = stringToStore.codeUnitAt(i);
    }
  }

  @IntPtr()
  external int hwndParent;

  @Array(64)
  external Array<Uint16> _wzNamespacePartner;

  String get wzNamespacePartner {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_wzNamespacePartner[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wzNamespacePartner(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _wzNamespacePartner[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(64)
  external Array<Uint16> _wzNamespaceGroup;

  String get wzNamespaceGroup {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_wzNamespaceGroup[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wzNamespaceGroup(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _wzNamespaceGroup[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class WER_REPORT_INFORMATION_V4 extends Struct {
  @Uint32()
  external int dwSize;

  @IntPtr()
  external int hProcess;

  @Array(64)
  external Array<Uint16> _wzConsentKey;

  String get wzConsentKey {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_wzConsentKey[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wzConsentKey(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _wzConsentKey[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(128)
  external Array<Uint16> _wzFriendlyEventName;

  String get wzFriendlyEventName {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_wzFriendlyEventName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wzFriendlyEventName(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _wzFriendlyEventName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(128)
  external Array<Uint16> _wzApplicationName;

  String get wzApplicationName {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_wzApplicationName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wzApplicationName(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _wzApplicationName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(260)
  external Array<Uint16> _wzApplicationPath;

  String get wzApplicationPath {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_wzApplicationPath[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wzApplicationPath(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _wzApplicationPath[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(512)
  external Array<Uint16> _wzDescription;

  String get wzDescription {
    final charCodes = <int>[];
    for (var i = 0; i < 512; i++) {
      charCodes.add(_wzDescription[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wzDescription(String value) {
    final stringToStore = value.padRight(512, '\x00');
    for (var i = 0; i < 512; i++) {
      _wzDescription[i] = stringToStore.codeUnitAt(i);
    }
  }

  @IntPtr()
  external int hwndParent;

  @Array(64)
  external Array<Uint16> _wzNamespacePartner;

  String get wzNamespacePartner {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_wzNamespacePartner[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wzNamespacePartner(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _wzNamespacePartner[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(64)
  external Array<Uint16> _wzNamespaceGroup;

  String get wzNamespaceGroup {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_wzNamespaceGroup[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wzNamespaceGroup(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _wzNamespaceGroup[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(16)
  external Array<Uint8> rgbApplicationIdentity;

  @IntPtr()
  external int hSnapshot;

  @IntPtr()
  external int hDeleteFilesImpersonationToken;
}

/// {@category Struct}
class WER_REPORT_INFORMATION_V5 extends Struct {
  @Uint32()
  external int dwSize;

  @IntPtr()
  external int hProcess;

  @Array(64)
  external Array<Uint16> _wzConsentKey;

  String get wzConsentKey {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_wzConsentKey[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wzConsentKey(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _wzConsentKey[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(128)
  external Array<Uint16> _wzFriendlyEventName;

  String get wzFriendlyEventName {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_wzFriendlyEventName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wzFriendlyEventName(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _wzFriendlyEventName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(128)
  external Array<Uint16> _wzApplicationName;

  String get wzApplicationName {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_wzApplicationName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wzApplicationName(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _wzApplicationName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(260)
  external Array<Uint16> _wzApplicationPath;

  String get wzApplicationPath {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_wzApplicationPath[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wzApplicationPath(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _wzApplicationPath[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(512)
  external Array<Uint16> _wzDescription;

  String get wzDescription {
    final charCodes = <int>[];
    for (var i = 0; i < 512; i++) {
      charCodes.add(_wzDescription[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wzDescription(String value) {
    final stringToStore = value.padRight(512, '\x00');
    for (var i = 0; i < 512; i++) {
      _wzDescription[i] = stringToStore.codeUnitAt(i);
    }
  }

  @IntPtr()
  external int hwndParent;

  @Array(64)
  external Array<Uint16> _wzNamespacePartner;

  String get wzNamespacePartner {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_wzNamespacePartner[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wzNamespacePartner(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _wzNamespacePartner[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(64)
  external Array<Uint16> _wzNamespaceGroup;

  String get wzNamespaceGroup {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_wzNamespaceGroup[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wzNamespaceGroup(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _wzNamespaceGroup[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(16)
  external Array<Uint8> rgbApplicationIdentity;

  @IntPtr()
  external int hSnapshot;

  @IntPtr()
  external int hDeleteFilesImpersonationToken;

  @Int32()
  external int submitResultMax;
}

/// {@category Struct}
class WER_REPORT_METADATA_V1 extends Struct {
  external WER_REPORT_SIGNATURE Signature;

  external GUID BucketId;

  external GUID ReportId;

  external FILETIME CreationTime;

  @Uint64()
  external int SizeInBytes;
}

/// {@category Struct}
class WER_REPORT_METADATA_V2 extends Struct {
  external WER_REPORT_SIGNATURE Signature;

  external GUID BucketId;

  external GUID ReportId;

  external FILETIME CreationTime;

  @Uint64()
  external int SizeInBytes;

  @Array(260)
  external Array<Uint16> _CabId;

  String get CabId {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_CabId[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set CabId(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _CabId[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int ReportStatus;

  external GUID ReportIntegratorId;

  @Uint32()
  external int NumberOfFiles;

  @Uint32()
  external int SizeOfFileNames;

  external Pointer<Utf16> FileNames;
}

/// {@category Struct}
class WER_REPORT_METADATA_V3 extends Struct {
  external WER_REPORT_SIGNATURE Signature;

  external GUID BucketId;

  external GUID ReportId;

  external FILETIME CreationTime;

  @Uint64()
  external int SizeInBytes;

  @Array(260)
  external Array<Uint16> _CabId;

  String get CabId {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_CabId[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set CabId(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _CabId[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int ReportStatus;

  external GUID ReportIntegratorId;

  @Uint32()
  external int NumberOfFiles;

  @Uint32()
  external int SizeOfFileNames;

  external Pointer<Utf16> FileNames;

  @Array(128)
  external Array<Uint16> _FriendlyEventName;

  String get FriendlyEventName {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_FriendlyEventName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set FriendlyEventName(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _FriendlyEventName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(128)
  external Array<Uint16> _ApplicationName;

  String get ApplicationName {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_ApplicationName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set ApplicationName(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _ApplicationName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(260)
  external Array<Uint16> _ApplicationPath;

  String get ApplicationPath {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_ApplicationPath[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set ApplicationPath(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _ApplicationPath[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(512)
  external Array<Uint16> _Description;

  String get Description {
    final charCodes = <int>[];
    for (var i = 0; i < 512; i++) {
      charCodes.add(_Description[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set Description(String value) {
    final stringToStore = value.padRight(512, '\x00');
    for (var i = 0; i < 512; i++) {
      _Description[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(260)
  external Array<Uint16> _BucketIdString;

  String get BucketIdString {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_BucketIdString[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set BucketIdString(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _BucketIdString[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint64()
  external int LegacyBucketId;
}

/// {@category Struct}
class WER_REPORT_PARAMETER extends Struct {
  @Array(129)
  external Array<Uint16> _Name;

  String get Name {
    final charCodes = <int>[];
    for (var i = 0; i < 129; i++) {
      charCodes.add(_Name[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set Name(String value) {
    final stringToStore = value.padRight(129, '\x00');
    for (var i = 0; i < 129; i++) {
      _Name[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(260)
  external Array<Uint16> _Value;

  String get Value {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_Value[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set Value(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _Value[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class WER_REPORT_SIGNATURE extends Struct {
  @Array(65)
  external Array<Uint16> _EventName;

  String get EventName {
    final charCodes = <int>[];
    for (var i = 0; i < 65; i++) {
      charCodes.add(_EventName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set EventName(String value) {
    final stringToStore = value.padRight(65, '\x00');
    for (var i = 0; i < 65; i++) {
      _EventName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(10)
  external Array<WER_REPORT_PARAMETER> Parameters;
}

/// {@category Struct}
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
