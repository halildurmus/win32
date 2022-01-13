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
import '../../foundation/structs.g.dart';
import '../../security/structs.g.dart';
import '../../storage/distributedfilesystem/structs.g.dart'; // -----------------------------------------------------------------------

// netapi32.dll
// -----------------------------------------------------------------------
final _netapi32 = DynamicLibrary.open('netapi32.dll');

int NetDfsAdd(
  Pointer<Utf16> DfsEntryPath,
  Pointer<Utf16> ServerName,
  Pointer<Utf16> ShareName,
  Pointer<Utf16> Comment,
  int Flags,
) =>
    _NetDfsAdd(
      DfsEntryPath,
      ServerName,
      ShareName,
      Comment,
      Flags,
    );

late final _NetDfsAdd = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> DfsEntryPath,
  Pointer<Utf16> ServerName,
  Pointer<Utf16> ShareName,
  Pointer<Utf16> Comment,
  Uint32 Flags,
),
    int Function(
  Pointer<Utf16> DfsEntryPath,
  Pointer<Utf16> ServerName,
  Pointer<Utf16> ShareName,
  Pointer<Utf16> Comment,
  int Flags,
)>('NetDfsAdd');

int NetDfsAddFtRoot(
  Pointer<Utf16> ServerName,
  Pointer<Utf16> RootShare,
  Pointer<Utf16> FtDfsName,
  Pointer<Utf16> Comment,
  int Flags,
) =>
    _NetDfsAddFtRoot(
      ServerName,
      RootShare,
      FtDfsName,
      Comment,
      Flags,
    );

late final _NetDfsAddFtRoot = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> ServerName,
  Pointer<Utf16> RootShare,
  Pointer<Utf16> FtDfsName,
  Pointer<Utf16> Comment,
  Uint32 Flags,
),
    int Function(
  Pointer<Utf16> ServerName,
  Pointer<Utf16> RootShare,
  Pointer<Utf16> FtDfsName,
  Pointer<Utf16> Comment,
  int Flags,
)>('NetDfsAddFtRoot');

int NetDfsAddRootTarget(
  Pointer<Utf16> pDfsPath,
  Pointer<Utf16> pTargetPath,
  int MajorVersion,
  Pointer<Utf16> pComment,
  int Flags,
) =>
    _NetDfsAddRootTarget(
      pDfsPath,
      pTargetPath,
      MajorVersion,
      pComment,
      Flags,
    );

late final _NetDfsAddRootTarget = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pDfsPath,
  Pointer<Utf16> pTargetPath,
  Uint32 MajorVersion,
  Pointer<Utf16> pComment,
  Uint32 Flags,
),
    int Function(
  Pointer<Utf16> pDfsPath,
  Pointer<Utf16> pTargetPath,
  int MajorVersion,
  Pointer<Utf16> pComment,
  int Flags,
)>('NetDfsAddRootTarget');

int NetDfsAddStdRoot(
  Pointer<Utf16> ServerName,
  Pointer<Utf16> RootShare,
  Pointer<Utf16> Comment,
  int Flags,
) =>
    _NetDfsAddStdRoot(
      ServerName,
      RootShare,
      Comment,
      Flags,
    );

late final _NetDfsAddStdRoot = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> ServerName,
  Pointer<Utf16> RootShare,
  Pointer<Utf16> Comment,
  Uint32 Flags,
),
    int Function(
  Pointer<Utf16> ServerName,
  Pointer<Utf16> RootShare,
  Pointer<Utf16> Comment,
  int Flags,
)>('NetDfsAddStdRoot');

int NetDfsEnum(
  Pointer<Utf16> DfsName,
  int Level,
  int PrefMaxLen,
  Pointer<Pointer<Uint8>> Buffer,
  Pointer<Uint32> EntriesRead,
  Pointer<Uint32> ResumeHandle,
) =>
    _NetDfsEnum(
      DfsName,
      Level,
      PrefMaxLen,
      Buffer,
      EntriesRead,
      ResumeHandle,
    );

late final _NetDfsEnum = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> DfsName,
  Uint32 Level,
  Uint32 PrefMaxLen,
  Pointer<Pointer<Uint8>> Buffer,
  Pointer<Uint32> EntriesRead,
  Pointer<Uint32> ResumeHandle,
),
    int Function(
  Pointer<Utf16> DfsName,
  int Level,
  int PrefMaxLen,
  Pointer<Pointer<Uint8>> Buffer,
  Pointer<Uint32> EntriesRead,
  Pointer<Uint32> ResumeHandle,
)>('NetDfsEnum');

int NetDfsGetClientInfo(
  Pointer<Utf16> DfsEntryPath,
  Pointer<Utf16> ServerName,
  Pointer<Utf16> ShareName,
  int Level,
  Pointer<Pointer<Uint8>> Buffer,
) =>
    _NetDfsGetClientInfo(
      DfsEntryPath,
      ServerName,
      ShareName,
      Level,
      Buffer,
    );

late final _NetDfsGetClientInfo = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> DfsEntryPath,
  Pointer<Utf16> ServerName,
  Pointer<Utf16> ShareName,
  Uint32 Level,
  Pointer<Pointer<Uint8>> Buffer,
),
    int Function(
  Pointer<Utf16> DfsEntryPath,
  Pointer<Utf16> ServerName,
  Pointer<Utf16> ShareName,
  int Level,
  Pointer<Pointer<Uint8>> Buffer,
)>('NetDfsGetClientInfo');

int NetDfsGetFtContainerSecurity(
  Pointer<Utf16> DomainName,
  int SecurityInformation,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> ppSecurityDescriptor,
  Pointer<Uint32> lpcbSecurityDescriptor,
) =>
    _NetDfsGetFtContainerSecurity(
      DomainName,
      SecurityInformation,
      ppSecurityDescriptor,
      lpcbSecurityDescriptor,
    );

late final _NetDfsGetFtContainerSecurity = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> DomainName,
  Uint32 SecurityInformation,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> ppSecurityDescriptor,
  Pointer<Uint32> lpcbSecurityDescriptor,
),
    int Function(
  Pointer<Utf16> DomainName,
  int SecurityInformation,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> ppSecurityDescriptor,
  Pointer<Uint32> lpcbSecurityDescriptor,
)>('NetDfsGetFtContainerSecurity');

int NetDfsGetInfo(
  Pointer<Utf16> DfsEntryPath,
  Pointer<Utf16> ServerName,
  Pointer<Utf16> ShareName,
  int Level,
  Pointer<Pointer<Uint8>> Buffer,
) =>
    _NetDfsGetInfo(
      DfsEntryPath,
      ServerName,
      ShareName,
      Level,
      Buffer,
    );

late final _NetDfsGetInfo = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> DfsEntryPath,
  Pointer<Utf16> ServerName,
  Pointer<Utf16> ShareName,
  Uint32 Level,
  Pointer<Pointer<Uint8>> Buffer,
),
    int Function(
  Pointer<Utf16> DfsEntryPath,
  Pointer<Utf16> ServerName,
  Pointer<Utf16> ShareName,
  int Level,
  Pointer<Pointer<Uint8>> Buffer,
)>('NetDfsGetInfo');

int NetDfsGetSecurity(
  Pointer<Utf16> DfsEntryPath,
  int SecurityInformation,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> ppSecurityDescriptor,
  Pointer<Uint32> lpcbSecurityDescriptor,
) =>
    _NetDfsGetSecurity(
      DfsEntryPath,
      SecurityInformation,
      ppSecurityDescriptor,
      lpcbSecurityDescriptor,
    );

late final _NetDfsGetSecurity = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> DfsEntryPath,
  Uint32 SecurityInformation,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> ppSecurityDescriptor,
  Pointer<Uint32> lpcbSecurityDescriptor,
),
    int Function(
  Pointer<Utf16> DfsEntryPath,
  int SecurityInformation,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> ppSecurityDescriptor,
  Pointer<Uint32> lpcbSecurityDescriptor,
)>('NetDfsGetSecurity');

int NetDfsGetStdContainerSecurity(
  Pointer<Utf16> MachineName,
  int SecurityInformation,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> ppSecurityDescriptor,
  Pointer<Uint32> lpcbSecurityDescriptor,
) =>
    _NetDfsGetStdContainerSecurity(
      MachineName,
      SecurityInformation,
      ppSecurityDescriptor,
      lpcbSecurityDescriptor,
    );

late final _NetDfsGetStdContainerSecurity = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> MachineName,
  Uint32 SecurityInformation,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> ppSecurityDescriptor,
  Pointer<Uint32> lpcbSecurityDescriptor,
),
    int Function(
  Pointer<Utf16> MachineName,
  int SecurityInformation,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> ppSecurityDescriptor,
  Pointer<Uint32> lpcbSecurityDescriptor,
)>('NetDfsGetStdContainerSecurity');

int NetDfsGetSupportedNamespaceVersion(
  int Origin,
  Pointer<Utf16> pName,
  Pointer<Pointer<DFS_SUPPORTED_NAMESPACE_VERSION_INFO>> ppVersionInfo,
) =>
    _NetDfsGetSupportedNamespaceVersion(
      Origin,
      pName,
      ppVersionInfo,
    );

late final _NetDfsGetSupportedNamespaceVersion = _netapi32.lookupFunction<
    Uint32 Function(
  Int32 Origin,
  Pointer<Utf16> pName,
  Pointer<Pointer<DFS_SUPPORTED_NAMESPACE_VERSION_INFO>> ppVersionInfo,
),
    int Function(
  int Origin,
  Pointer<Utf16> pName,
  Pointer<Pointer<DFS_SUPPORTED_NAMESPACE_VERSION_INFO>> ppVersionInfo,
)>('NetDfsGetSupportedNamespaceVersion');

int NetDfsMove(
  Pointer<Utf16> OldDfsEntryPath,
  Pointer<Utf16> NewDfsEntryPath,
  int Flags,
) =>
    _NetDfsMove(
      OldDfsEntryPath,
      NewDfsEntryPath,
      Flags,
    );

late final _NetDfsMove = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> OldDfsEntryPath,
  Pointer<Utf16> NewDfsEntryPath,
  Uint32 Flags,
),
    int Function(
  Pointer<Utf16> OldDfsEntryPath,
  Pointer<Utf16> NewDfsEntryPath,
  int Flags,
)>('NetDfsMove');

int NetDfsRemove(
  Pointer<Utf16> DfsEntryPath,
  Pointer<Utf16> ServerName,
  Pointer<Utf16> ShareName,
) =>
    _NetDfsRemove(
      DfsEntryPath,
      ServerName,
      ShareName,
    );

late final _NetDfsRemove = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> DfsEntryPath,
  Pointer<Utf16> ServerName,
  Pointer<Utf16> ShareName,
),
    int Function(
  Pointer<Utf16> DfsEntryPath,
  Pointer<Utf16> ServerName,
  Pointer<Utf16> ShareName,
)>('NetDfsRemove');

int NetDfsRemoveFtRoot(
  Pointer<Utf16> ServerName,
  Pointer<Utf16> RootShare,
  Pointer<Utf16> FtDfsName,
  int Flags,
) =>
    _NetDfsRemoveFtRoot(
      ServerName,
      RootShare,
      FtDfsName,
      Flags,
    );

late final _NetDfsRemoveFtRoot = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> ServerName,
  Pointer<Utf16> RootShare,
  Pointer<Utf16> FtDfsName,
  Uint32 Flags,
),
    int Function(
  Pointer<Utf16> ServerName,
  Pointer<Utf16> RootShare,
  Pointer<Utf16> FtDfsName,
  int Flags,
)>('NetDfsRemoveFtRoot');

int NetDfsRemoveFtRootForced(
  Pointer<Utf16> DomainName,
  Pointer<Utf16> ServerName,
  Pointer<Utf16> RootShare,
  Pointer<Utf16> FtDfsName,
  int Flags,
) =>
    _NetDfsRemoveFtRootForced(
      DomainName,
      ServerName,
      RootShare,
      FtDfsName,
      Flags,
    );

late final _NetDfsRemoveFtRootForced = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> DomainName,
  Pointer<Utf16> ServerName,
  Pointer<Utf16> RootShare,
  Pointer<Utf16> FtDfsName,
  Uint32 Flags,
),
    int Function(
  Pointer<Utf16> DomainName,
  Pointer<Utf16> ServerName,
  Pointer<Utf16> RootShare,
  Pointer<Utf16> FtDfsName,
  int Flags,
)>('NetDfsRemoveFtRootForced');

int NetDfsRemoveRootTarget(
  Pointer<Utf16> pDfsPath,
  Pointer<Utf16> pTargetPath,
  int Flags,
) =>
    _NetDfsRemoveRootTarget(
      pDfsPath,
      pTargetPath,
      Flags,
    );

late final _NetDfsRemoveRootTarget = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pDfsPath,
  Pointer<Utf16> pTargetPath,
  Uint32 Flags,
),
    int Function(
  Pointer<Utf16> pDfsPath,
  Pointer<Utf16> pTargetPath,
  int Flags,
)>('NetDfsRemoveRootTarget');

int NetDfsRemoveStdRoot(
  Pointer<Utf16> ServerName,
  Pointer<Utf16> RootShare,
  int Flags,
) =>
    _NetDfsRemoveStdRoot(
      ServerName,
      RootShare,
      Flags,
    );

late final _NetDfsRemoveStdRoot = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> ServerName,
  Pointer<Utf16> RootShare,
  Uint32 Flags,
),
    int Function(
  Pointer<Utf16> ServerName,
  Pointer<Utf16> RootShare,
  int Flags,
)>('NetDfsRemoveStdRoot');

int NetDfsSetClientInfo(
  Pointer<Utf16> DfsEntryPath,
  Pointer<Utf16> ServerName,
  Pointer<Utf16> ShareName,
  int Level,
  Pointer<Uint8> Buffer,
) =>
    _NetDfsSetClientInfo(
      DfsEntryPath,
      ServerName,
      ShareName,
      Level,
      Buffer,
    );

late final _NetDfsSetClientInfo = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> DfsEntryPath,
  Pointer<Utf16> ServerName,
  Pointer<Utf16> ShareName,
  Uint32 Level,
  Pointer<Uint8> Buffer,
),
    int Function(
  Pointer<Utf16> DfsEntryPath,
  Pointer<Utf16> ServerName,
  Pointer<Utf16> ShareName,
  int Level,
  Pointer<Uint8> Buffer,
)>('NetDfsSetClientInfo');

int NetDfsSetFtContainerSecurity(
  Pointer<Utf16> DomainName,
  int SecurityInformation,
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
) =>
    _NetDfsSetFtContainerSecurity(
      DomainName,
      SecurityInformation,
      pSecurityDescriptor,
    );

late final _NetDfsSetFtContainerSecurity = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> DomainName,
  Uint32 SecurityInformation,
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
),
    int Function(
  Pointer<Utf16> DomainName,
  int SecurityInformation,
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
)>('NetDfsSetFtContainerSecurity');

int NetDfsSetInfo(
  Pointer<Utf16> DfsEntryPath,
  Pointer<Utf16> ServerName,
  Pointer<Utf16> ShareName,
  int Level,
  Pointer<Uint8> Buffer,
) =>
    _NetDfsSetInfo(
      DfsEntryPath,
      ServerName,
      ShareName,
      Level,
      Buffer,
    );

late final _NetDfsSetInfo = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> DfsEntryPath,
  Pointer<Utf16> ServerName,
  Pointer<Utf16> ShareName,
  Uint32 Level,
  Pointer<Uint8> Buffer,
),
    int Function(
  Pointer<Utf16> DfsEntryPath,
  Pointer<Utf16> ServerName,
  Pointer<Utf16> ShareName,
  int Level,
  Pointer<Uint8> Buffer,
)>('NetDfsSetInfo');

int NetDfsSetSecurity(
  Pointer<Utf16> DfsEntryPath,
  int SecurityInformation,
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
) =>
    _NetDfsSetSecurity(
      DfsEntryPath,
      SecurityInformation,
      pSecurityDescriptor,
    );

late final _NetDfsSetSecurity = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> DfsEntryPath,
  Uint32 SecurityInformation,
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
),
    int Function(
  Pointer<Utf16> DfsEntryPath,
  int SecurityInformation,
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
)>('NetDfsSetSecurity');

int NetDfsSetStdContainerSecurity(
  Pointer<Utf16> MachineName,
  int SecurityInformation,
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
) =>
    _NetDfsSetStdContainerSecurity(
      MachineName,
      SecurityInformation,
      pSecurityDescriptor,
    );

late final _NetDfsSetStdContainerSecurity = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> MachineName,
  Uint32 SecurityInformation,
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
),
    int Function(
  Pointer<Utf16> MachineName,
  int SecurityInformation,
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
)>('NetDfsSetStdContainerSecurity');
