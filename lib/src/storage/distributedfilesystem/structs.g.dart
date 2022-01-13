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
import '../../storage/distributedfilesystem/structs.g.dart';
import '../../security/structs.g.dart';

/// {@category Struct}
class DFS_GET_PKT_ENTRY_STATE_ARG extends Struct {
  @Uint16()
  external int DfsEntryPathLen;

  @Uint16()
  external int ServerNameLen;

  @Uint16()
  external int ShareNameLen;

  @Uint32()
  external int Level;

  @Array(1)
  external Array<Uint16> _Buffer;

  String get Buffer {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_Buffer[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set Buffer(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _Buffer[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class DFS_INFO_1 extends Struct {
  external Pointer<Utf16> EntryPath;
}

/// {@category Struct}
class DFS_INFO_100 extends Struct {
  external Pointer<Utf16> Comment;
}

/// {@category Struct}
class DFS_INFO_101 extends Struct {
  @Uint32()
  external int State;
}

/// {@category Struct}
class DFS_INFO_102 extends Struct {
  @Uint32()
  external int Timeout;
}

/// {@category Struct}
class DFS_INFO_103 extends Struct {
  @Uint32()
  external int PropertyFlagMask;

  @Uint32()
  external int PropertyFlags;
}

/// {@category Struct}
class DFS_INFO_104 extends Struct {
  external DFS_TARGET_PRIORITY TargetPriority;
}

/// {@category Struct}
class DFS_INFO_105 extends Struct {
  external Pointer<Utf16> Comment;

  @Uint32()
  external int State;

  @Uint32()
  external int Timeout;

  @Uint32()
  external int PropertyFlagMask;

  @Uint32()
  external int PropertyFlags;
}

/// {@category Struct}
class DFS_INFO_106 extends Struct {
  @Uint32()
  external int State;

  external DFS_TARGET_PRIORITY TargetPriority;
}

/// {@category Struct}
class DFS_INFO_107 extends Struct {
  external Pointer<Utf16> Comment;

  @Uint32()
  external int State;

  @Uint32()
  external int Timeout;

  @Uint32()
  external int PropertyFlagMask;

  @Uint32()
  external int PropertyFlags;

  @Uint32()
  external int SdLengthReserved;

  external Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor;
}

/// {@category Struct}
class DFS_INFO_150 extends Struct {
  @Uint32()
  external int SdLengthReserved;

  external Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor;
}

/// {@category Struct}
class DFS_INFO_1_32 extends Struct {
  @Uint32()
  external int EntryPath;
}

/// {@category Struct}
class DFS_INFO_2 extends Struct {
  external Pointer<Utf16> EntryPath;

  external Pointer<Utf16> Comment;

  @Uint32()
  external int State;

  @Uint32()
  external int NumberOfStorages;
}

/// {@category Struct}
class DFS_INFO_200 extends Struct {
  external Pointer<Utf16> FtDfsName;
}

/// {@category Struct}
class DFS_INFO_2_32 extends Struct {
  @Uint32()
  external int EntryPath;

  @Uint32()
  external int Comment;

  @Uint32()
  external int State;

  @Uint32()
  external int NumberOfStorages;
}

/// {@category Struct}
class DFS_INFO_3 extends Struct {
  external Pointer<Utf16> EntryPath;

  external Pointer<Utf16> Comment;

  @Uint32()
  external int State;

  @Uint32()
  external int NumberOfStorages;

  external Pointer<DFS_STORAGE_INFO> Storage;
}

/// {@category Struct}
class DFS_INFO_300 extends Struct {
  @Uint32()
  external int Flags;

  external Pointer<Utf16> DfsName;
}

/// {@category Struct}
class DFS_INFO_3_32 extends Struct {
  @Uint32()
  external int EntryPath;

  @Uint32()
  external int Comment;

  @Uint32()
  external int State;

  @Uint32()
  external int NumberOfStorages;

  @Uint32()
  external int Storage;
}

/// {@category Struct}
class DFS_INFO_4 extends Struct {
  external Pointer<Utf16> EntryPath;

  external Pointer<Utf16> Comment;

  @Uint32()
  external int State;

  @Uint32()
  external int Timeout;

  external GUID Guid;

  @Uint32()
  external int NumberOfStorages;

  external Pointer<DFS_STORAGE_INFO> Storage;
}

/// {@category Struct}
class DFS_INFO_4_32 extends Struct {
  @Uint32()
  external int EntryPath;

  @Uint32()
  external int Comment;

  @Uint32()
  external int State;

  @Uint32()
  external int Timeout;

  external GUID Guid;

  @Uint32()
  external int NumberOfStorages;

  @Uint32()
  external int Storage;
}

/// {@category Struct}
class DFS_INFO_5 extends Struct {
  external Pointer<Utf16> EntryPath;

  external Pointer<Utf16> Comment;

  @Uint32()
  external int State;

  @Uint32()
  external int Timeout;

  external GUID Guid;

  @Uint32()
  external int PropertyFlags;

  @Uint32()
  external int MetadataSize;

  @Uint32()
  external int NumberOfStorages;
}

/// {@category Struct}
class DFS_INFO_50 extends Struct {
  @Uint32()
  external int NamespaceMajorVersion;

  @Uint32()
  external int NamespaceMinorVersion;

  @Uint64()
  external int NamespaceCapabilities;
}

/// {@category Struct}
class DFS_INFO_6 extends Struct {
  external Pointer<Utf16> EntryPath;

  external Pointer<Utf16> Comment;

  @Uint32()
  external int State;

  @Uint32()
  external int Timeout;

  external GUID Guid;

  @Uint32()
  external int PropertyFlags;

  @Uint32()
  external int MetadataSize;

  @Uint32()
  external int NumberOfStorages;

  external Pointer<DFS_STORAGE_INFO_1> Storage;
}

/// {@category Struct}
class DFS_INFO_7 extends Struct {
  external GUID GenerationGuid;
}

/// {@category Struct}
class DFS_INFO_8 extends Struct {
  external Pointer<Utf16> EntryPath;

  external Pointer<Utf16> Comment;

  @Uint32()
  external int State;

  @Uint32()
  external int Timeout;

  external GUID Guid;

  @Uint32()
  external int PropertyFlags;

  @Uint32()
  external int MetadataSize;

  @Uint32()
  external int SdLengthReserved;

  external Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor;

  @Uint32()
  external int NumberOfStorages;
}

/// {@category Struct}
class DFS_INFO_9 extends Struct {
  external Pointer<Utf16> EntryPath;

  external Pointer<Utf16> Comment;

  @Uint32()
  external int State;

  @Uint32()
  external int Timeout;

  external GUID Guid;

  @Uint32()
  external int PropertyFlags;

  @Uint32()
  external int MetadataSize;

  @Uint32()
  external int SdLengthReserved;

  external Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor;

  @Uint32()
  external int NumberOfStorages;

  external Pointer<DFS_STORAGE_INFO_1> Storage;
}

/// {@category Struct}
class DFS_SITELIST_INFO extends Struct {
  @Uint32()
  external int cSites;

  @Array(1)
  external Array<DFS_SITENAME_INFO> Site;
}

/// {@category Struct}
class DFS_SITENAME_INFO extends Struct {
  @Uint32()
  external int SiteFlags;

  external Pointer<Utf16> SiteName;
}

/// {@category Struct}
class DFS_STORAGE_INFO extends Struct {
  @Uint32()
  external int State;

  external Pointer<Utf16> ServerName;

  external Pointer<Utf16> ShareName;
}

/// {@category Struct}
class DFS_STORAGE_INFO_0_32 extends Struct {
  @Uint32()
  external int State;

  @Uint32()
  external int ServerName;

  @Uint32()
  external int ShareName;
}

/// {@category Struct}
class DFS_STORAGE_INFO_1 extends Struct {
  @Uint32()
  external int State;

  external Pointer<Utf16> ServerName;

  external Pointer<Utf16> ShareName;

  external DFS_TARGET_PRIORITY TargetPriority;
}

/// {@category Struct}
class DFS_SUPPORTED_NAMESPACE_VERSION_INFO extends Struct {
  @Uint32()
  external int DomainDfsMajorVersion;

  @Uint32()
  external int DomainDfsMinorVersion;

  @Uint64()
  external int DomainDfsCapabilities;

  @Uint32()
  external int StandaloneDfsMajorVersion;

  @Uint32()
  external int StandaloneDfsMinorVersion;

  @Uint64()
  external int StandaloneDfsCapabilities;
}

/// {@category Struct}
class DFS_TARGET_PRIORITY extends Struct {
  @Int32()
  external int TargetPriorityClass;

  @Uint16()
  external int TargetPriorityRank;

  @Uint16()
  external int Reserved;
}
