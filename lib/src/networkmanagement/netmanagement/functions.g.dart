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
import '../../networkmanagement/netmanagement/structs.g.dart'; // -----------------------------------------------------------------------

// netapi32.dll
// -----------------------------------------------------------------------
final _netapi32 = DynamicLibrary.open('netapi32.dll');

int I_NetLogonControl2(
  Pointer<Utf16> ServerName,
  int FunctionCode,
  int QueryLevel,
  Pointer<Uint8> Data,
  Pointer<Pointer<Uint8>> Buffer,
) =>
    _I_NetLogonControl2(
      ServerName,
      FunctionCode,
      QueryLevel,
      Data,
      Buffer,
    );

late final _I_NetLogonControl2 = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> ServerName,
  Uint32 FunctionCode,
  Uint32 QueryLevel,
  Pointer<Uint8> Data,
  Pointer<Pointer<Uint8>> Buffer,
),
    int Function(
  Pointer<Utf16> ServerName,
  int FunctionCode,
  int QueryLevel,
  Pointer<Uint8> Data,
  Pointer<Pointer<Uint8>> Buffer,
)>('I_NetLogonControl2');

int NetAccessAdd(
  Pointer<Utf16> servername,
  int level,
  Pointer<Uint8> buf,
  Pointer<Uint32> parm_err,
) =>
    _NetAccessAdd(
      servername,
      level,
      buf,
      parm_err,
    );

late final _NetAccessAdd = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Uint32 level,
  Pointer<Uint8> buf,
  Pointer<Uint32> parm_err,
),
    int Function(
  Pointer<Utf16> servername,
  int level,
  Pointer<Uint8> buf,
  Pointer<Uint32> parm_err,
)>('NetAccessAdd');

int NetAccessDel(
  Pointer<Utf16> servername,
  Pointer<Utf16> resource,
) =>
    _NetAccessDel(
      servername,
      resource,
    );

late final _NetAccessDel = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> resource,
),
    int Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> resource,
)>('NetAccessDel');

int NetAccessEnum(
  Pointer<Utf16> servername,
  Pointer<Utf16> BasePath,
  int Recursive,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
  int prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Pointer<Uint32> resume_handle,
) =>
    _NetAccessEnum(
      servername,
      BasePath,
      Recursive,
      level,
      bufptr,
      prefmaxlen,
      entriesread,
      totalentries,
      resume_handle,
    );

late final _NetAccessEnum = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> BasePath,
  Uint32 Recursive,
  Uint32 level,
  Pointer<Pointer<Uint8>> bufptr,
  Uint32 prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Pointer<Uint32> resume_handle,
),
    int Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> BasePath,
  int Recursive,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
  int prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Pointer<Uint32> resume_handle,
)>('NetAccessEnum');

int NetAccessGetInfo(
  Pointer<Utf16> servername,
  Pointer<Utf16> resource,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
) =>
    _NetAccessGetInfo(
      servername,
      resource,
      level,
      bufptr,
    );

late final _NetAccessGetInfo = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> resource,
  Uint32 level,
  Pointer<Pointer<Uint8>> bufptr,
),
    int Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> resource,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
)>('NetAccessGetInfo');

int NetAccessGetUserPerms(
  Pointer<Utf16> servername,
  Pointer<Utf16> UGname,
  Pointer<Utf16> resource,
  Pointer<Uint32> Perms,
) =>
    _NetAccessGetUserPerms(
      servername,
      UGname,
      resource,
      Perms,
    );

late final _NetAccessGetUserPerms = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> UGname,
  Pointer<Utf16> resource,
  Pointer<Uint32> Perms,
),
    int Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> UGname,
  Pointer<Utf16> resource,
  Pointer<Uint32> Perms,
)>('NetAccessGetUserPerms');

int NetAccessSetInfo(
  Pointer<Utf16> servername,
  Pointer<Utf16> resource,
  int level,
  Pointer<Uint8> buf,
  Pointer<Uint32> parm_err,
) =>
    _NetAccessSetInfo(
      servername,
      resource,
      level,
      buf,
      parm_err,
    );

late final _NetAccessSetInfo = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> resource,
  Uint32 level,
  Pointer<Uint8> buf,
  Pointer<Uint32> parm_err,
),
    int Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> resource,
  int level,
  Pointer<Uint8> buf,
  Pointer<Uint32> parm_err,
)>('NetAccessSetInfo');

int NetAddAlternateComputerName(
  Pointer<Utf16> Server,
  Pointer<Utf16> AlternateName,
  Pointer<Utf16> DomainAccount,
  Pointer<Utf16> DomainAccountPassword,
  int Reserved,
) =>
    _NetAddAlternateComputerName(
      Server,
      AlternateName,
      DomainAccount,
      DomainAccountPassword,
      Reserved,
    );

late final _NetAddAlternateComputerName = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> Server,
  Pointer<Utf16> AlternateName,
  Pointer<Utf16> DomainAccount,
  Pointer<Utf16> DomainAccountPassword,
  Uint32 Reserved,
),
    int Function(
  Pointer<Utf16> Server,
  Pointer<Utf16> AlternateName,
  Pointer<Utf16> DomainAccount,
  Pointer<Utf16> DomainAccountPassword,
  int Reserved,
)>('NetAddAlternateComputerName');

int NetAddServiceAccount(
  Pointer<Utf16> ServerName,
  Pointer<Utf16> AccountName,
  Pointer<Utf16> Password,
  int Flags,
) =>
    _NetAddServiceAccount(
      ServerName,
      AccountName,
      Password,
      Flags,
    );

late final _NetAddServiceAccount = _netapi32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> ServerName,
  Pointer<Utf16> AccountName,
  Pointer<Utf16> Password,
  Uint32 Flags,
),
    int Function(
  Pointer<Utf16> ServerName,
  Pointer<Utf16> AccountName,
  Pointer<Utf16> Password,
  int Flags,
)>('NetAddServiceAccount');

int NetAlertRaise(
  Pointer<Utf16> AlertType,
  Pointer Buffer,
  int BufferSize,
) =>
    _NetAlertRaise(
      AlertType,
      Buffer,
      BufferSize,
    );

late final _NetAlertRaise = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> AlertType,
  Pointer Buffer,
  Uint32 BufferSize,
),
    int Function(
  Pointer<Utf16> AlertType,
  Pointer Buffer,
  int BufferSize,
)>('NetAlertRaise');

int NetAlertRaiseEx(
  Pointer<Utf16> AlertType,
  Pointer VariableInfo,
  int VariableInfoSize,
  Pointer<Utf16> ServiceName,
) =>
    _NetAlertRaiseEx(
      AlertType,
      VariableInfo,
      VariableInfoSize,
      ServiceName,
    );

late final _NetAlertRaiseEx = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> AlertType,
  Pointer VariableInfo,
  Uint32 VariableInfoSize,
  Pointer<Utf16> ServiceName,
),
    int Function(
  Pointer<Utf16> AlertType,
  Pointer VariableInfo,
  int VariableInfoSize,
  Pointer<Utf16> ServiceName,
)>('NetAlertRaiseEx');

int NetApiBufferAllocate(
  int ByteCount,
  Pointer<Pointer> Buffer,
) =>
    _NetApiBufferAllocate(
      ByteCount,
      Buffer,
    );

late final _NetApiBufferAllocate = _netapi32.lookupFunction<
    Uint32 Function(
  Uint32 ByteCount,
  Pointer<Pointer> Buffer,
),
    int Function(
  int ByteCount,
  Pointer<Pointer> Buffer,
)>('NetApiBufferAllocate');

int NetApiBufferFree(
  Pointer Buffer,
) =>
    _NetApiBufferFree(
      Buffer,
    );

late final _NetApiBufferFree = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer Buffer,
),
    int Function(
  Pointer Buffer,
)>('NetApiBufferFree');

int NetApiBufferReallocate(
  Pointer OldBuffer,
  int NewByteCount,
  Pointer<Pointer> NewBuffer,
) =>
    _NetApiBufferReallocate(
      OldBuffer,
      NewByteCount,
      NewBuffer,
    );

late final _NetApiBufferReallocate = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer OldBuffer,
  Uint32 NewByteCount,
  Pointer<Pointer> NewBuffer,
),
    int Function(
  Pointer OldBuffer,
  int NewByteCount,
  Pointer<Pointer> NewBuffer,
)>('NetApiBufferReallocate');

int NetApiBufferSize(
  Pointer Buffer,
  Pointer<Uint32> ByteCount,
) =>
    _NetApiBufferSize(
      Buffer,
      ByteCount,
    );

late final _NetApiBufferSize = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer Buffer,
  Pointer<Uint32> ByteCount,
),
    int Function(
  Pointer Buffer,
  Pointer<Uint32> ByteCount,
)>('NetApiBufferSize');

int NetAuditClear(
  Pointer<Utf16> server,
  Pointer<Utf16> backupfile,
  Pointer<Utf16> service,
) =>
    _NetAuditClear(
      server,
      backupfile,
      service,
    );

late final _NetAuditClear = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> server,
  Pointer<Utf16> backupfile,
  Pointer<Utf16> service,
),
    int Function(
  Pointer<Utf16> server,
  Pointer<Utf16> backupfile,
  Pointer<Utf16> service,
)>('NetAuditClear');

int NetAuditRead(
  Pointer<Utf16> server,
  Pointer<Utf16> service,
  Pointer<HLOG> auditloghandle,
  int offset,
  Pointer<Uint32> reserved1,
  int reserved2,
  int offsetflag,
  Pointer<Pointer<Uint8>> bufptr,
  int prefmaxlen,
  Pointer<Uint32> bytesread,
  Pointer<Uint32> totalavailable,
) =>
    _NetAuditRead(
      server,
      service,
      auditloghandle,
      offset,
      reserved1,
      reserved2,
      offsetflag,
      bufptr,
      prefmaxlen,
      bytesread,
      totalavailable,
    );

late final _NetAuditRead = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> server,
  Pointer<Utf16> service,
  Pointer<HLOG> auditloghandle,
  Uint32 offset,
  Pointer<Uint32> reserved1,
  Uint32 reserved2,
  Uint32 offsetflag,
  Pointer<Pointer<Uint8>> bufptr,
  Uint32 prefmaxlen,
  Pointer<Uint32> bytesread,
  Pointer<Uint32> totalavailable,
),
    int Function(
  Pointer<Utf16> server,
  Pointer<Utf16> service,
  Pointer<HLOG> auditloghandle,
  int offset,
  Pointer<Uint32> reserved1,
  int reserved2,
  int offsetflag,
  Pointer<Pointer<Uint8>> bufptr,
  int prefmaxlen,
  Pointer<Uint32> bytesread,
  Pointer<Uint32> totalavailable,
)>('NetAuditRead');

int NetAuditWrite(
  int type,
  Pointer<Uint8> buf,
  int numbytes,
  Pointer<Utf16> service,
  Pointer<Uint8> reserved,
) =>
    _NetAuditWrite(
      type,
      buf,
      numbytes,
      service,
      reserved,
    );

late final _NetAuditWrite = _netapi32.lookupFunction<
    Uint32 Function(
  Uint32 type,
  Pointer<Uint8> buf,
  Uint32 numbytes,
  Pointer<Utf16> service,
  Pointer<Uint8> reserved,
),
    int Function(
  int type,
  Pointer<Uint8> buf,
  int numbytes,
  Pointer<Utf16> service,
  Pointer<Uint8> reserved,
)>('NetAuditWrite');

int NetConfigGet(
  Pointer<Utf16> server,
  Pointer<Utf16> component,
  Pointer<Utf16> parameter,
  Pointer<Pointer<Uint8>> bufptr,
) =>
    _NetConfigGet(
      server,
      component,
      parameter,
      bufptr,
    );

late final _NetConfigGet = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> server,
  Pointer<Utf16> component,
  Pointer<Utf16> parameter,
  Pointer<Pointer<Uint8>> bufptr,
),
    int Function(
  Pointer<Utf16> server,
  Pointer<Utf16> component,
  Pointer<Utf16> parameter,
  Pointer<Pointer<Uint8>> bufptr,
)>('NetConfigGet');

int NetConfigGetAll(
  Pointer<Utf16> server,
  Pointer<Utf16> component,
  Pointer<Pointer<Uint8>> bufptr,
) =>
    _NetConfigGetAll(
      server,
      component,
      bufptr,
    );

late final _NetConfigGetAll = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> server,
  Pointer<Utf16> component,
  Pointer<Pointer<Uint8>> bufptr,
),
    int Function(
  Pointer<Utf16> server,
  Pointer<Utf16> component,
  Pointer<Pointer<Uint8>> bufptr,
)>('NetConfigGetAll');

int NetConfigSet(
  Pointer<Utf16> server,
  Pointer<Utf16> reserved1,
  Pointer<Utf16> component,
  int level,
  int reserved2,
  Pointer<Uint8> buf,
  int reserved3,
) =>
    _NetConfigSet(
      server,
      reserved1,
      component,
      level,
      reserved2,
      buf,
      reserved3,
    );

late final _NetConfigSet = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> server,
  Pointer<Utf16> reserved1,
  Pointer<Utf16> component,
  Uint32 level,
  Uint32 reserved2,
  Pointer<Uint8> buf,
  Uint32 reserved3,
),
    int Function(
  Pointer<Utf16> server,
  Pointer<Utf16> reserved1,
  Pointer<Utf16> component,
  int level,
  int reserved2,
  Pointer<Uint8> buf,
  int reserved3,
)>('NetConfigSet');

int NetCreateProvisioningPackage(
  Pointer<NETSETUP_PROVISIONING_PARAMS> pProvisioningParams,
  Pointer<Pointer<Uint8>> ppPackageBinData,
  Pointer<Uint32> pdwPackageBinDataSize,
  Pointer<Pointer<Utf16>> ppPackageTextData,
) =>
    _NetCreateProvisioningPackage(
      pProvisioningParams,
      ppPackageBinData,
      pdwPackageBinDataSize,
      ppPackageTextData,
    );

late final _NetCreateProvisioningPackage = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<NETSETUP_PROVISIONING_PARAMS> pProvisioningParams,
  Pointer<Pointer<Uint8>> ppPackageBinData,
  Pointer<Uint32> pdwPackageBinDataSize,
  Pointer<Pointer<Utf16>> ppPackageTextData,
),
    int Function(
  Pointer<NETSETUP_PROVISIONING_PARAMS> pProvisioningParams,
  Pointer<Pointer<Uint8>> ppPackageBinData,
  Pointer<Uint32> pdwPackageBinDataSize,
  Pointer<Pointer<Utf16>> ppPackageTextData,
)>('NetCreateProvisioningPackage');

int NetEnumerateComputerNames(
  Pointer<Utf16> Server,
  int NameType,
  int Reserved,
  Pointer<Uint32> EntryCount,
  Pointer<Pointer<Pointer<Utf16>>> ComputerNames,
) =>
    _NetEnumerateComputerNames(
      Server,
      NameType,
      Reserved,
      EntryCount,
      ComputerNames,
    );

late final _NetEnumerateComputerNames = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> Server,
  Int32 NameType,
  Uint32 Reserved,
  Pointer<Uint32> EntryCount,
  Pointer<Pointer<Pointer<Utf16>>> ComputerNames,
),
    int Function(
  Pointer<Utf16> Server,
  int NameType,
  int Reserved,
  Pointer<Uint32> EntryCount,
  Pointer<Pointer<Pointer<Utf16>>> ComputerNames,
)>('NetEnumerateComputerNames');

int NetEnumerateServiceAccounts(
  Pointer<Utf16> ServerName,
  int Flags,
  Pointer<Uint32> AccountsCount,
  Pointer<Pointer<Pointer<Uint16>>> Accounts,
) =>
    _NetEnumerateServiceAccounts(
      ServerName,
      Flags,
      AccountsCount,
      Accounts,
    );

late final _NetEnumerateServiceAccounts = _netapi32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> ServerName,
  Uint32 Flags,
  Pointer<Uint32> AccountsCount,
  Pointer<Pointer<Pointer<Uint16>>> Accounts,
),
    int Function(
  Pointer<Utf16> ServerName,
  int Flags,
  Pointer<Uint32> AccountsCount,
  Pointer<Pointer<Pointer<Uint16>>> Accounts,
)>('NetEnumerateServiceAccounts');

int NetErrorLogClear(
  Pointer<Utf16> UncServerName,
  Pointer<Utf16> BackupFile,
  Pointer<Uint8> Reserved,
) =>
    _NetErrorLogClear(
      UncServerName,
      BackupFile,
      Reserved,
    );

late final _NetErrorLogClear = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> UncServerName,
  Pointer<Utf16> BackupFile,
  Pointer<Uint8> Reserved,
),
    int Function(
  Pointer<Utf16> UncServerName,
  Pointer<Utf16> BackupFile,
  Pointer<Uint8> Reserved,
)>('NetErrorLogClear');

int NetErrorLogRead(
  Pointer<Utf16> UncServerName,
  Pointer<Utf16> Reserved1,
  Pointer<HLOG> ErrorLogHandle,
  int Offset,
  Pointer<Uint32> Reserved2,
  int Reserved3,
  int OffsetFlag,
  Pointer<Pointer<Uint8>> BufPtr,
  int PrefMaxSize,
  Pointer<Uint32> BytesRead,
  Pointer<Uint32> TotalAvailable,
) =>
    _NetErrorLogRead(
      UncServerName,
      Reserved1,
      ErrorLogHandle,
      Offset,
      Reserved2,
      Reserved3,
      OffsetFlag,
      BufPtr,
      PrefMaxSize,
      BytesRead,
      TotalAvailable,
    );

late final _NetErrorLogRead = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> UncServerName,
  Pointer<Utf16> Reserved1,
  Pointer<HLOG> ErrorLogHandle,
  Uint32 Offset,
  Pointer<Uint32> Reserved2,
  Uint32 Reserved3,
  Uint32 OffsetFlag,
  Pointer<Pointer<Uint8>> BufPtr,
  Uint32 PrefMaxSize,
  Pointer<Uint32> BytesRead,
  Pointer<Uint32> TotalAvailable,
),
    int Function(
  Pointer<Utf16> UncServerName,
  Pointer<Utf16> Reserved1,
  Pointer<HLOG> ErrorLogHandle,
  int Offset,
  Pointer<Uint32> Reserved2,
  int Reserved3,
  int OffsetFlag,
  Pointer<Pointer<Uint8>> BufPtr,
  int PrefMaxSize,
  Pointer<Uint32> BytesRead,
  Pointer<Uint32> TotalAvailable,
)>('NetErrorLogRead');

int NetErrorLogWrite(
  Pointer<Uint8> Reserved1,
  int Code,
  Pointer<Utf16> Component,
  Pointer<Uint8> Buffer,
  int NumBytes,
  Pointer<Uint8> MsgBuf,
  int StrCount,
  Pointer<Uint8> Reserved2,
) =>
    _NetErrorLogWrite(
      Reserved1,
      Code,
      Component,
      Buffer,
      NumBytes,
      MsgBuf,
      StrCount,
      Reserved2,
    );

late final _NetErrorLogWrite = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Uint8> Reserved1,
  Uint32 Code,
  Pointer<Utf16> Component,
  Pointer<Uint8> Buffer,
  Uint32 NumBytes,
  Pointer<Uint8> MsgBuf,
  Uint32 StrCount,
  Pointer<Uint8> Reserved2,
),
    int Function(
  Pointer<Uint8> Reserved1,
  int Code,
  Pointer<Utf16> Component,
  Pointer<Uint8> Buffer,
  int NumBytes,
  Pointer<Uint8> MsgBuf,
  int StrCount,
  Pointer<Uint8> Reserved2,
)>('NetErrorLogWrite');

void NetFreeAadJoinInformation(
  Pointer<DSREG_JOIN_INFO> pJoinInfo,
) =>
    _NetFreeAadJoinInformation(
      pJoinInfo,
    );

late final _NetFreeAadJoinInformation = _netapi32.lookupFunction<
    Void Function(
  Pointer<DSREG_JOIN_INFO> pJoinInfo,
),
    void Function(
  Pointer<DSREG_JOIN_INFO> pJoinInfo,
)>('NetFreeAadJoinInformation');

int NetGetAadJoinInformation(
  Pointer<Utf16> pcszTenantId,
  Pointer<Pointer<DSREG_JOIN_INFO>> ppJoinInfo,
) =>
    _NetGetAadJoinInformation(
      pcszTenantId,
      ppJoinInfo,
    );

late final _NetGetAadJoinInformation = _netapi32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pcszTenantId,
  Pointer<Pointer<DSREG_JOIN_INFO>> ppJoinInfo,
),
    int Function(
  Pointer<Utf16> pcszTenantId,
  Pointer<Pointer<DSREG_JOIN_INFO>> ppJoinInfo,
)>('NetGetAadJoinInformation');

int NetGetAnyDCName(
  Pointer<Utf16> ServerName,
  Pointer<Utf16> DomainName,
  Pointer<Pointer<Uint8>> Buffer,
) =>
    _NetGetAnyDCName(
      ServerName,
      DomainName,
      Buffer,
    );

late final _NetGetAnyDCName = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> ServerName,
  Pointer<Utf16> DomainName,
  Pointer<Pointer<Uint8>> Buffer,
),
    int Function(
  Pointer<Utf16> ServerName,
  Pointer<Utf16> DomainName,
  Pointer<Pointer<Uint8>> Buffer,
)>('NetGetAnyDCName');

int NetGetDCName(
  Pointer<Utf16> ServerName,
  Pointer<Utf16> DomainName,
  Pointer<Pointer<Uint8>> Buffer,
) =>
    _NetGetDCName(
      ServerName,
      DomainName,
      Buffer,
    );

late final _NetGetDCName = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> ServerName,
  Pointer<Utf16> DomainName,
  Pointer<Pointer<Uint8>> Buffer,
),
    int Function(
  Pointer<Utf16> ServerName,
  Pointer<Utf16> DomainName,
  Pointer<Pointer<Uint8>> Buffer,
)>('NetGetDCName');

int NetGetDisplayInformationIndex(
  Pointer<Utf16> ServerName,
  int Level,
  Pointer<Utf16> Prefix,
  Pointer<Uint32> Index,
) =>
    _NetGetDisplayInformationIndex(
      ServerName,
      Level,
      Prefix,
      Index,
    );

late final _NetGetDisplayInformationIndex = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> ServerName,
  Uint32 Level,
  Pointer<Utf16> Prefix,
  Pointer<Uint32> Index,
),
    int Function(
  Pointer<Utf16> ServerName,
  int Level,
  Pointer<Utf16> Prefix,
  Pointer<Uint32> Index,
)>('NetGetDisplayInformationIndex');

int NetGetJoinInformation(
  Pointer<Utf16> lpServer,
  Pointer<Pointer<Utf16>> lpNameBuffer,
  Pointer<Int32> BufferType,
) =>
    _NetGetJoinInformation(
      lpServer,
      lpNameBuffer,
      BufferType,
    );

late final _NetGetJoinInformation = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpServer,
  Pointer<Pointer<Utf16>> lpNameBuffer,
  Pointer<Int32> BufferType,
),
    int Function(
  Pointer<Utf16> lpServer,
  Pointer<Pointer<Utf16>> lpNameBuffer,
  Pointer<Int32> BufferType,
)>('NetGetJoinInformation');

int NetGetJoinableOUs(
  Pointer<Utf16> lpServer,
  Pointer<Utf16> lpDomain,
  Pointer<Utf16> lpAccount,
  Pointer<Utf16> lpPassword,
  Pointer<Uint32> OUCount,
  Pointer<Pointer<Pointer<Utf16>>> OUs,
) =>
    _NetGetJoinableOUs(
      lpServer,
      lpDomain,
      lpAccount,
      lpPassword,
      OUCount,
      OUs,
    );

late final _NetGetJoinableOUs = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpServer,
  Pointer<Utf16> lpDomain,
  Pointer<Utf16> lpAccount,
  Pointer<Utf16> lpPassword,
  Pointer<Uint32> OUCount,
  Pointer<Pointer<Pointer<Utf16>>> OUs,
),
    int Function(
  Pointer<Utf16> lpServer,
  Pointer<Utf16> lpDomain,
  Pointer<Utf16> lpAccount,
  Pointer<Utf16> lpPassword,
  Pointer<Uint32> OUCount,
  Pointer<Pointer<Pointer<Utf16>>> OUs,
)>('NetGetJoinableOUs');

int NetGroupAdd(
  Pointer<Utf16> servername,
  int level,
  Pointer<Uint8> buf,
  Pointer<Uint32> parm_err,
) =>
    _NetGroupAdd(
      servername,
      level,
      buf,
      parm_err,
    );

late final _NetGroupAdd = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Uint32 level,
  Pointer<Uint8> buf,
  Pointer<Uint32> parm_err,
),
    int Function(
  Pointer<Utf16> servername,
  int level,
  Pointer<Uint8> buf,
  Pointer<Uint32> parm_err,
)>('NetGroupAdd');

int NetGroupAddUser(
  Pointer<Utf16> servername,
  Pointer<Utf16> GroupName,
  Pointer<Utf16> username,
) =>
    _NetGroupAddUser(
      servername,
      GroupName,
      username,
    );

late final _NetGroupAddUser = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> GroupName,
  Pointer<Utf16> username,
),
    int Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> GroupName,
  Pointer<Utf16> username,
)>('NetGroupAddUser');

int NetGroupDel(
  Pointer<Utf16> servername,
  Pointer<Utf16> groupname,
) =>
    _NetGroupDel(
      servername,
      groupname,
    );

late final _NetGroupDel = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> groupname,
),
    int Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> groupname,
)>('NetGroupDel');

int NetGroupDelUser(
  Pointer<Utf16> servername,
  Pointer<Utf16> GroupName,
  Pointer<Utf16> Username,
) =>
    _NetGroupDelUser(
      servername,
      GroupName,
      Username,
    );

late final _NetGroupDelUser = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> GroupName,
  Pointer<Utf16> Username,
),
    int Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> GroupName,
  Pointer<Utf16> Username,
)>('NetGroupDelUser');

int NetGroupEnum(
  Pointer<Utf16> servername,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
  int prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Pointer<IntPtr> resume_handle,
) =>
    _NetGroupEnum(
      servername,
      level,
      bufptr,
      prefmaxlen,
      entriesread,
      totalentries,
      resume_handle,
    );

late final _NetGroupEnum = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Uint32 level,
  Pointer<Pointer<Uint8>> bufptr,
  Uint32 prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Pointer<IntPtr> resume_handle,
),
    int Function(
  Pointer<Utf16> servername,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
  int prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Pointer<IntPtr> resume_handle,
)>('NetGroupEnum');

int NetGroupGetInfo(
  Pointer<Utf16> servername,
  Pointer<Utf16> groupname,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
) =>
    _NetGroupGetInfo(
      servername,
      groupname,
      level,
      bufptr,
    );

late final _NetGroupGetInfo = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> groupname,
  Uint32 level,
  Pointer<Pointer<Uint8>> bufptr,
),
    int Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> groupname,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
)>('NetGroupGetInfo');

int NetGroupGetUsers(
  Pointer<Utf16> servername,
  Pointer<Utf16> groupname,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
  int prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Pointer<IntPtr> ResumeHandle,
) =>
    _NetGroupGetUsers(
      servername,
      groupname,
      level,
      bufptr,
      prefmaxlen,
      entriesread,
      totalentries,
      ResumeHandle,
    );

late final _NetGroupGetUsers = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> groupname,
  Uint32 level,
  Pointer<Pointer<Uint8>> bufptr,
  Uint32 prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Pointer<IntPtr> ResumeHandle,
),
    int Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> groupname,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
  int prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Pointer<IntPtr> ResumeHandle,
)>('NetGroupGetUsers');

int NetGroupSetInfo(
  Pointer<Utf16> servername,
  Pointer<Utf16> groupname,
  int level,
  Pointer<Uint8> buf,
  Pointer<Uint32> parm_err,
) =>
    _NetGroupSetInfo(
      servername,
      groupname,
      level,
      buf,
      parm_err,
    );

late final _NetGroupSetInfo = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> groupname,
  Uint32 level,
  Pointer<Uint8> buf,
  Pointer<Uint32> parm_err,
),
    int Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> groupname,
  int level,
  Pointer<Uint8> buf,
  Pointer<Uint32> parm_err,
)>('NetGroupSetInfo');

int NetGroupSetUsers(
  Pointer<Utf16> servername,
  Pointer<Utf16> groupname,
  int level,
  Pointer<Uint8> buf,
  int totalentries,
) =>
    _NetGroupSetUsers(
      servername,
      groupname,
      level,
      buf,
      totalentries,
    );

late final _NetGroupSetUsers = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> groupname,
  Uint32 level,
  Pointer<Uint8> buf,
  Uint32 totalentries,
),
    int Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> groupname,
  int level,
  Pointer<Uint8> buf,
  int totalentries,
)>('NetGroupSetUsers');

int NetIsServiceAccount(
  Pointer<Utf16> ServerName,
  Pointer<Utf16> AccountName,
  Pointer<Int32> IsService,
) =>
    _NetIsServiceAccount(
      ServerName,
      AccountName,
      IsService,
    );

late final _NetIsServiceAccount = _netapi32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> ServerName,
  Pointer<Utf16> AccountName,
  Pointer<Int32> IsService,
),
    int Function(
  Pointer<Utf16> ServerName,
  Pointer<Utf16> AccountName,
  Pointer<Int32> IsService,
)>('NetIsServiceAccount');

int NetJoinDomain(
  Pointer<Utf16> lpServer,
  Pointer<Utf16> lpDomain,
  Pointer<Utf16> lpMachineAccountOU,
  Pointer<Utf16> lpAccount,
  Pointer<Utf16> lpPassword,
  int fJoinOptions,
) =>
    _NetJoinDomain(
      lpServer,
      lpDomain,
      lpMachineAccountOU,
      lpAccount,
      lpPassword,
      fJoinOptions,
    );

late final _NetJoinDomain = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpServer,
  Pointer<Utf16> lpDomain,
  Pointer<Utf16> lpMachineAccountOU,
  Pointer<Utf16> lpAccount,
  Pointer<Utf16> lpPassword,
  Uint32 fJoinOptions,
),
    int Function(
  Pointer<Utf16> lpServer,
  Pointer<Utf16> lpDomain,
  Pointer<Utf16> lpMachineAccountOU,
  Pointer<Utf16> lpAccount,
  Pointer<Utf16> lpPassword,
  int fJoinOptions,
)>('NetJoinDomain');

int NetLocalGroupAdd(
  Pointer<Utf16> servername,
  int level,
  Pointer<Uint8> buf,
  Pointer<Uint32> parm_err,
) =>
    _NetLocalGroupAdd(
      servername,
      level,
      buf,
      parm_err,
    );

late final _NetLocalGroupAdd = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Uint32 level,
  Pointer<Uint8> buf,
  Pointer<Uint32> parm_err,
),
    int Function(
  Pointer<Utf16> servername,
  int level,
  Pointer<Uint8> buf,
  Pointer<Uint32> parm_err,
)>('NetLocalGroupAdd');

int NetLocalGroupAddMember(
  Pointer<Utf16> servername,
  Pointer<Utf16> groupname,
  int membersid,
) =>
    _NetLocalGroupAddMember(
      servername,
      groupname,
      membersid,
    );

late final _NetLocalGroupAddMember = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> groupname,
  IntPtr membersid,
),
    int Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> groupname,
  int membersid,
)>('NetLocalGroupAddMember');

int NetLocalGroupAddMembers(
  Pointer<Utf16> servername,
  Pointer<Utf16> groupname,
  int level,
  Pointer<Uint8> buf,
  int totalentries,
) =>
    _NetLocalGroupAddMembers(
      servername,
      groupname,
      level,
      buf,
      totalentries,
    );

late final _NetLocalGroupAddMembers = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> groupname,
  Uint32 level,
  Pointer<Uint8> buf,
  Uint32 totalentries,
),
    int Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> groupname,
  int level,
  Pointer<Uint8> buf,
  int totalentries,
)>('NetLocalGroupAddMembers');

int NetLocalGroupDel(
  Pointer<Utf16> servername,
  Pointer<Utf16> groupname,
) =>
    _NetLocalGroupDel(
      servername,
      groupname,
    );

late final _NetLocalGroupDel = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> groupname,
),
    int Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> groupname,
)>('NetLocalGroupDel');

int NetLocalGroupDelMember(
  Pointer<Utf16> servername,
  Pointer<Utf16> groupname,
  int membersid,
) =>
    _NetLocalGroupDelMember(
      servername,
      groupname,
      membersid,
    );

late final _NetLocalGroupDelMember = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> groupname,
  IntPtr membersid,
),
    int Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> groupname,
  int membersid,
)>('NetLocalGroupDelMember');

int NetLocalGroupDelMembers(
  Pointer<Utf16> servername,
  Pointer<Utf16> groupname,
  int level,
  Pointer<Uint8> buf,
  int totalentries,
) =>
    _NetLocalGroupDelMembers(
      servername,
      groupname,
      level,
      buf,
      totalentries,
    );

late final _NetLocalGroupDelMembers = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> groupname,
  Uint32 level,
  Pointer<Uint8> buf,
  Uint32 totalentries,
),
    int Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> groupname,
  int level,
  Pointer<Uint8> buf,
  int totalentries,
)>('NetLocalGroupDelMembers');

int NetLocalGroupEnum(
  Pointer<Utf16> servername,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
  int prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Pointer<IntPtr> resumehandle,
) =>
    _NetLocalGroupEnum(
      servername,
      level,
      bufptr,
      prefmaxlen,
      entriesread,
      totalentries,
      resumehandle,
    );

late final _NetLocalGroupEnum = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Uint32 level,
  Pointer<Pointer<Uint8>> bufptr,
  Uint32 prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Pointer<IntPtr> resumehandle,
),
    int Function(
  Pointer<Utf16> servername,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
  int prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Pointer<IntPtr> resumehandle,
)>('NetLocalGroupEnum');

int NetLocalGroupGetInfo(
  Pointer<Utf16> servername,
  Pointer<Utf16> groupname,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
) =>
    _NetLocalGroupGetInfo(
      servername,
      groupname,
      level,
      bufptr,
    );

late final _NetLocalGroupGetInfo = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> groupname,
  Uint32 level,
  Pointer<Pointer<Uint8>> bufptr,
),
    int Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> groupname,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
)>('NetLocalGroupGetInfo');

int NetLocalGroupGetMembers(
  Pointer<Utf16> servername,
  Pointer<Utf16> localgroupname,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
  int prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Pointer<IntPtr> resumehandle,
) =>
    _NetLocalGroupGetMembers(
      servername,
      localgroupname,
      level,
      bufptr,
      prefmaxlen,
      entriesread,
      totalentries,
      resumehandle,
    );

late final _NetLocalGroupGetMembers = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> localgroupname,
  Uint32 level,
  Pointer<Pointer<Uint8>> bufptr,
  Uint32 prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Pointer<IntPtr> resumehandle,
),
    int Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> localgroupname,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
  int prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Pointer<IntPtr> resumehandle,
)>('NetLocalGroupGetMembers');

int NetLocalGroupSetInfo(
  Pointer<Utf16> servername,
  Pointer<Utf16> groupname,
  int level,
  Pointer<Uint8> buf,
  Pointer<Uint32> parm_err,
) =>
    _NetLocalGroupSetInfo(
      servername,
      groupname,
      level,
      buf,
      parm_err,
    );

late final _NetLocalGroupSetInfo = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> groupname,
  Uint32 level,
  Pointer<Uint8> buf,
  Pointer<Uint32> parm_err,
),
    int Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> groupname,
  int level,
  Pointer<Uint8> buf,
  Pointer<Uint32> parm_err,
)>('NetLocalGroupSetInfo');

int NetLocalGroupSetMembers(
  Pointer<Utf16> servername,
  Pointer<Utf16> groupname,
  int level,
  Pointer<Uint8> buf,
  int totalentries,
) =>
    _NetLocalGroupSetMembers(
      servername,
      groupname,
      level,
      buf,
      totalentries,
    );

late final _NetLocalGroupSetMembers = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> groupname,
  Uint32 level,
  Pointer<Uint8> buf,
  Uint32 totalentries,
),
    int Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> groupname,
  int level,
  Pointer<Uint8> buf,
  int totalentries,
)>('NetLocalGroupSetMembers');

int NetMessageBufferSend(
  Pointer<Utf16> servername,
  Pointer<Utf16> msgname,
  Pointer<Utf16> fromname,
  Pointer<Uint8> buf,
  int buflen,
) =>
    _NetMessageBufferSend(
      servername,
      msgname,
      fromname,
      buf,
      buflen,
    );

late final _NetMessageBufferSend = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> msgname,
  Pointer<Utf16> fromname,
  Pointer<Uint8> buf,
  Uint32 buflen,
),
    int Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> msgname,
  Pointer<Utf16> fromname,
  Pointer<Uint8> buf,
  int buflen,
)>('NetMessageBufferSend');

int NetMessageNameAdd(
  Pointer<Utf16> servername,
  Pointer<Utf16> msgname,
) =>
    _NetMessageNameAdd(
      servername,
      msgname,
    );

late final _NetMessageNameAdd = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> msgname,
),
    int Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> msgname,
)>('NetMessageNameAdd');

int NetMessageNameDel(
  Pointer<Utf16> servername,
  Pointer<Utf16> msgname,
) =>
    _NetMessageNameDel(
      servername,
      msgname,
    );

late final _NetMessageNameDel = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> msgname,
),
    int Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> msgname,
)>('NetMessageNameDel');

int NetMessageNameEnum(
  Pointer<Utf16> servername,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
  int prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Pointer<Uint32> resume_handle,
) =>
    _NetMessageNameEnum(
      servername,
      level,
      bufptr,
      prefmaxlen,
      entriesread,
      totalentries,
      resume_handle,
    );

late final _NetMessageNameEnum = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Uint32 level,
  Pointer<Pointer<Uint8>> bufptr,
  Uint32 prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Pointer<Uint32> resume_handle,
),
    int Function(
  Pointer<Utf16> servername,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
  int prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Pointer<Uint32> resume_handle,
)>('NetMessageNameEnum');

int NetMessageNameGetInfo(
  Pointer<Utf16> servername,
  Pointer<Utf16> msgname,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
) =>
    _NetMessageNameGetInfo(
      servername,
      msgname,
      level,
      bufptr,
    );

late final _NetMessageNameGetInfo = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> msgname,
  Uint32 level,
  Pointer<Pointer<Uint8>> bufptr,
),
    int Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> msgname,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
)>('NetMessageNameGetInfo');

int NetProvisionComputerAccount(
  Pointer<Utf16> lpDomain,
  Pointer<Utf16> lpMachineName,
  Pointer<Utf16> lpMachineAccountOU,
  Pointer<Utf16> lpDcName,
  int dwOptions,
  Pointer<Pointer<Uint8>> pProvisionBinData,
  Pointer<Uint32> pdwProvisionBinDataSize,
  Pointer<Pointer<Utf16>> pProvisionTextData,
) =>
    _NetProvisionComputerAccount(
      lpDomain,
      lpMachineName,
      lpMachineAccountOU,
      lpDcName,
      dwOptions,
      pProvisionBinData,
      pdwProvisionBinDataSize,
      pProvisionTextData,
    );

late final _NetProvisionComputerAccount = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpDomain,
  Pointer<Utf16> lpMachineName,
  Pointer<Utf16> lpMachineAccountOU,
  Pointer<Utf16> lpDcName,
  Uint32 dwOptions,
  Pointer<Pointer<Uint8>> pProvisionBinData,
  Pointer<Uint32> pdwProvisionBinDataSize,
  Pointer<Pointer<Utf16>> pProvisionTextData,
),
    int Function(
  Pointer<Utf16> lpDomain,
  Pointer<Utf16> lpMachineName,
  Pointer<Utf16> lpMachineAccountOU,
  Pointer<Utf16> lpDcName,
  int dwOptions,
  Pointer<Pointer<Uint8>> pProvisionBinData,
  Pointer<Uint32> pdwProvisionBinDataSize,
  Pointer<Pointer<Utf16>> pProvisionTextData,
)>('NetProvisionComputerAccount');

int NetQueryDisplayInformation(
  Pointer<Utf16> ServerName,
  int Level,
  int Index,
  int EntriesRequested,
  int PreferredMaximumLength,
  Pointer<Uint32> ReturnedEntryCount,
  Pointer<Pointer> SortedBuffer,
) =>
    _NetQueryDisplayInformation(
      ServerName,
      Level,
      Index,
      EntriesRequested,
      PreferredMaximumLength,
      ReturnedEntryCount,
      SortedBuffer,
    );

late final _NetQueryDisplayInformation = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> ServerName,
  Uint32 Level,
  Uint32 Index,
  Uint32 EntriesRequested,
  Uint32 PreferredMaximumLength,
  Pointer<Uint32> ReturnedEntryCount,
  Pointer<Pointer> SortedBuffer,
),
    int Function(
  Pointer<Utf16> ServerName,
  int Level,
  int Index,
  int EntriesRequested,
  int PreferredMaximumLength,
  Pointer<Uint32> ReturnedEntryCount,
  Pointer<Pointer> SortedBuffer,
)>('NetQueryDisplayInformation');

int NetQueryServiceAccount(
  Pointer<Utf16> ServerName,
  Pointer<Utf16> AccountName,
  int InfoLevel,
  Pointer<Pointer<Uint8>> Buffer,
) =>
    _NetQueryServiceAccount(
      ServerName,
      AccountName,
      InfoLevel,
      Buffer,
    );

late final _NetQueryServiceAccount = _netapi32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> ServerName,
  Pointer<Utf16> AccountName,
  Uint32 InfoLevel,
  Pointer<Pointer<Uint8>> Buffer,
),
    int Function(
  Pointer<Utf16> ServerName,
  Pointer<Utf16> AccountName,
  int InfoLevel,
  Pointer<Pointer<Uint8>> Buffer,
)>('NetQueryServiceAccount');

int NetRemoteComputerSupports(
  Pointer<Utf16> UncServerName,
  int OptionsWanted,
  Pointer<Uint32> OptionsSupported,
) =>
    _NetRemoteComputerSupports(
      UncServerName,
      OptionsWanted,
      OptionsSupported,
    );

late final _NetRemoteComputerSupports = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> UncServerName,
  Int32 OptionsWanted,
  Pointer<Uint32> OptionsSupported,
),
    int Function(
  Pointer<Utf16> UncServerName,
  int OptionsWanted,
  Pointer<Uint32> OptionsSupported,
)>('NetRemoteComputerSupports');

int NetRemoteTOD(
  Pointer<Utf16> UncServerName,
  Pointer<Pointer<Uint8>> BufferPtr,
) =>
    _NetRemoteTOD(
      UncServerName,
      BufferPtr,
    );

late final _NetRemoteTOD = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> UncServerName,
  Pointer<Pointer<Uint8>> BufferPtr,
),
    int Function(
  Pointer<Utf16> UncServerName,
  Pointer<Pointer<Uint8>> BufferPtr,
)>('NetRemoteTOD');

int NetRemoveAlternateComputerName(
  Pointer<Utf16> Server,
  Pointer<Utf16> AlternateName,
  Pointer<Utf16> DomainAccount,
  Pointer<Utf16> DomainAccountPassword,
  int Reserved,
) =>
    _NetRemoveAlternateComputerName(
      Server,
      AlternateName,
      DomainAccount,
      DomainAccountPassword,
      Reserved,
    );

late final _NetRemoveAlternateComputerName = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> Server,
  Pointer<Utf16> AlternateName,
  Pointer<Utf16> DomainAccount,
  Pointer<Utf16> DomainAccountPassword,
  Uint32 Reserved,
),
    int Function(
  Pointer<Utf16> Server,
  Pointer<Utf16> AlternateName,
  Pointer<Utf16> DomainAccount,
  Pointer<Utf16> DomainAccountPassword,
  int Reserved,
)>('NetRemoveAlternateComputerName');

int NetRemoveServiceAccount(
  Pointer<Utf16> ServerName,
  Pointer<Utf16> AccountName,
  int Flags,
) =>
    _NetRemoveServiceAccount(
      ServerName,
      AccountName,
      Flags,
    );

late final _NetRemoveServiceAccount = _netapi32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> ServerName,
  Pointer<Utf16> AccountName,
  Uint32 Flags,
),
    int Function(
  Pointer<Utf16> ServerName,
  Pointer<Utf16> AccountName,
  int Flags,
)>('NetRemoveServiceAccount');

int NetRenameMachineInDomain(
  Pointer<Utf16> lpServer,
  Pointer<Utf16> lpNewMachineName,
  Pointer<Utf16> lpAccount,
  Pointer<Utf16> lpPassword,
  int fRenameOptions,
) =>
    _NetRenameMachineInDomain(
      lpServer,
      lpNewMachineName,
      lpAccount,
      lpPassword,
      fRenameOptions,
    );

late final _NetRenameMachineInDomain = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpServer,
  Pointer<Utf16> lpNewMachineName,
  Pointer<Utf16> lpAccount,
  Pointer<Utf16> lpPassword,
  Uint32 fRenameOptions,
),
    int Function(
  Pointer<Utf16> lpServer,
  Pointer<Utf16> lpNewMachineName,
  Pointer<Utf16> lpAccount,
  Pointer<Utf16> lpPassword,
  int fRenameOptions,
)>('NetRenameMachineInDomain');

int NetReplExportDirAdd(
  Pointer<Utf16> servername,
  int level,
  Pointer<Uint8> buf,
  Pointer<Uint32> parm_err,
) =>
    _NetReplExportDirAdd(
      servername,
      level,
      buf,
      parm_err,
    );

late final _NetReplExportDirAdd = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Uint32 level,
  Pointer<Uint8> buf,
  Pointer<Uint32> parm_err,
),
    int Function(
  Pointer<Utf16> servername,
  int level,
  Pointer<Uint8> buf,
  Pointer<Uint32> parm_err,
)>('NetReplExportDirAdd');

int NetReplExportDirDel(
  Pointer<Utf16> servername,
  Pointer<Utf16> dirname,
) =>
    _NetReplExportDirDel(
      servername,
      dirname,
    );

late final _NetReplExportDirDel = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> dirname,
),
    int Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> dirname,
)>('NetReplExportDirDel');

int NetReplExportDirEnum(
  Pointer<Utf16> servername,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
  int prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Pointer<Uint32> resumehandle,
) =>
    _NetReplExportDirEnum(
      servername,
      level,
      bufptr,
      prefmaxlen,
      entriesread,
      totalentries,
      resumehandle,
    );

late final _NetReplExportDirEnum = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Uint32 level,
  Pointer<Pointer<Uint8>> bufptr,
  Uint32 prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Pointer<Uint32> resumehandle,
),
    int Function(
  Pointer<Utf16> servername,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
  int prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Pointer<Uint32> resumehandle,
)>('NetReplExportDirEnum');

int NetReplExportDirGetInfo(
  Pointer<Utf16> servername,
  Pointer<Utf16> dirname,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
) =>
    _NetReplExportDirGetInfo(
      servername,
      dirname,
      level,
      bufptr,
    );

late final _NetReplExportDirGetInfo = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> dirname,
  Uint32 level,
  Pointer<Pointer<Uint8>> bufptr,
),
    int Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> dirname,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
)>('NetReplExportDirGetInfo');

int NetReplExportDirLock(
  Pointer<Utf16> servername,
  Pointer<Utf16> dirname,
) =>
    _NetReplExportDirLock(
      servername,
      dirname,
    );

late final _NetReplExportDirLock = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> dirname,
),
    int Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> dirname,
)>('NetReplExportDirLock');

int NetReplExportDirSetInfo(
  Pointer<Utf16> servername,
  Pointer<Utf16> dirname,
  int level,
  Pointer<Uint8> buf,
  Pointer<Uint32> parm_err,
) =>
    _NetReplExportDirSetInfo(
      servername,
      dirname,
      level,
      buf,
      parm_err,
    );

late final _NetReplExportDirSetInfo = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> dirname,
  Uint32 level,
  Pointer<Uint8> buf,
  Pointer<Uint32> parm_err,
),
    int Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> dirname,
  int level,
  Pointer<Uint8> buf,
  Pointer<Uint32> parm_err,
)>('NetReplExportDirSetInfo');

int NetReplExportDirUnlock(
  Pointer<Utf16> servername,
  Pointer<Utf16> dirname,
  int unlockforce,
) =>
    _NetReplExportDirUnlock(
      servername,
      dirname,
      unlockforce,
    );

late final _NetReplExportDirUnlock = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> dirname,
  Uint32 unlockforce,
),
    int Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> dirname,
  int unlockforce,
)>('NetReplExportDirUnlock');

int NetReplGetInfo(
  Pointer<Utf16> servername,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
) =>
    _NetReplGetInfo(
      servername,
      level,
      bufptr,
    );

late final _NetReplGetInfo = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Uint32 level,
  Pointer<Pointer<Uint8>> bufptr,
),
    int Function(
  Pointer<Utf16> servername,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
)>('NetReplGetInfo');

int NetReplImportDirAdd(
  Pointer<Utf16> servername,
  int level,
  Pointer<Uint8> buf,
  Pointer<Uint32> parm_err,
) =>
    _NetReplImportDirAdd(
      servername,
      level,
      buf,
      parm_err,
    );

late final _NetReplImportDirAdd = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Uint32 level,
  Pointer<Uint8> buf,
  Pointer<Uint32> parm_err,
),
    int Function(
  Pointer<Utf16> servername,
  int level,
  Pointer<Uint8> buf,
  Pointer<Uint32> parm_err,
)>('NetReplImportDirAdd');

int NetReplImportDirDel(
  Pointer<Utf16> servername,
  Pointer<Utf16> dirname,
) =>
    _NetReplImportDirDel(
      servername,
      dirname,
    );

late final _NetReplImportDirDel = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> dirname,
),
    int Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> dirname,
)>('NetReplImportDirDel');

int NetReplImportDirEnum(
  Pointer<Utf16> servername,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
  int prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Pointer<Uint32> resumehandle,
) =>
    _NetReplImportDirEnum(
      servername,
      level,
      bufptr,
      prefmaxlen,
      entriesread,
      totalentries,
      resumehandle,
    );

late final _NetReplImportDirEnum = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Uint32 level,
  Pointer<Pointer<Uint8>> bufptr,
  Uint32 prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Pointer<Uint32> resumehandle,
),
    int Function(
  Pointer<Utf16> servername,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
  int prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Pointer<Uint32> resumehandle,
)>('NetReplImportDirEnum');

int NetReplImportDirGetInfo(
  Pointer<Utf16> servername,
  Pointer<Utf16> dirname,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
) =>
    _NetReplImportDirGetInfo(
      servername,
      dirname,
      level,
      bufptr,
    );

late final _NetReplImportDirGetInfo = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> dirname,
  Uint32 level,
  Pointer<Pointer<Uint8>> bufptr,
),
    int Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> dirname,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
)>('NetReplImportDirGetInfo');

int NetReplImportDirLock(
  Pointer<Utf16> servername,
  Pointer<Utf16> dirname,
) =>
    _NetReplImportDirLock(
      servername,
      dirname,
    );

late final _NetReplImportDirLock = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> dirname,
),
    int Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> dirname,
)>('NetReplImportDirLock');

int NetReplImportDirUnlock(
  Pointer<Utf16> servername,
  Pointer<Utf16> dirname,
  int unlockforce,
) =>
    _NetReplImportDirUnlock(
      servername,
      dirname,
      unlockforce,
    );

late final _NetReplImportDirUnlock = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> dirname,
  Uint32 unlockforce,
),
    int Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> dirname,
  int unlockforce,
)>('NetReplImportDirUnlock');

int NetReplSetInfo(
  Pointer<Utf16> servername,
  int level,
  Pointer<Uint8> buf,
  Pointer<Uint32> parm_err,
) =>
    _NetReplSetInfo(
      servername,
      level,
      buf,
      parm_err,
    );

late final _NetReplSetInfo = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Uint32 level,
  Pointer<Uint8> buf,
  Pointer<Uint32> parm_err,
),
    int Function(
  Pointer<Utf16> servername,
  int level,
  Pointer<Uint8> buf,
  Pointer<Uint32> parm_err,
)>('NetReplSetInfo');

int NetRequestOfflineDomainJoin(
  Pointer<Uint8> pProvisionBinData,
  int cbProvisionBinDataSize,
  int dwOptions,
  Pointer<Utf16> lpWindowsPath,
) =>
    _NetRequestOfflineDomainJoin(
      pProvisionBinData,
      cbProvisionBinDataSize,
      dwOptions,
      lpWindowsPath,
    );

late final _NetRequestOfflineDomainJoin = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Uint8> pProvisionBinData,
  Uint32 cbProvisionBinDataSize,
  Uint32 dwOptions,
  Pointer<Utf16> lpWindowsPath,
),
    int Function(
  Pointer<Uint8> pProvisionBinData,
  int cbProvisionBinDataSize,
  int dwOptions,
  Pointer<Utf16> lpWindowsPath,
)>('NetRequestOfflineDomainJoin');

int NetRequestProvisioningPackageInstall(
  Pointer<Uint8> pPackageBinData,
  int dwPackageBinDataSize,
  int dwProvisionOptions,
  Pointer<Utf16> lpWindowsPath,
  Pointer pvReserved,
) =>
    _NetRequestProvisioningPackageInstall(
      pPackageBinData,
      dwPackageBinDataSize,
      dwProvisionOptions,
      lpWindowsPath,
      pvReserved,
    );

late final _NetRequestProvisioningPackageInstall = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Uint8> pPackageBinData,
  Uint32 dwPackageBinDataSize,
  Uint32 dwProvisionOptions,
  Pointer<Utf16> lpWindowsPath,
  Pointer pvReserved,
),
    int Function(
  Pointer<Uint8> pPackageBinData,
  int dwPackageBinDataSize,
  int dwProvisionOptions,
  Pointer<Utf16> lpWindowsPath,
  Pointer pvReserved,
)>('NetRequestProvisioningPackageInstall');

int NetScheduleJobAdd(
  Pointer<Utf16> Servername,
  Pointer<Uint8> Buffer,
  Pointer<Uint32> JobId,
) =>
    _NetScheduleJobAdd(
      Servername,
      Buffer,
      JobId,
    );

late final _NetScheduleJobAdd = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> Servername,
  Pointer<Uint8> Buffer,
  Pointer<Uint32> JobId,
),
    int Function(
  Pointer<Utf16> Servername,
  Pointer<Uint8> Buffer,
  Pointer<Uint32> JobId,
)>('NetScheduleJobAdd');

int NetScheduleJobDel(
  Pointer<Utf16> Servername,
  int MinJobId,
  int MaxJobId,
) =>
    _NetScheduleJobDel(
      Servername,
      MinJobId,
      MaxJobId,
    );

late final _NetScheduleJobDel = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> Servername,
  Uint32 MinJobId,
  Uint32 MaxJobId,
),
    int Function(
  Pointer<Utf16> Servername,
  int MinJobId,
  int MaxJobId,
)>('NetScheduleJobDel');

int NetScheduleJobEnum(
  Pointer<Utf16> Servername,
  Pointer<Pointer<Uint8>> PointerToBuffer,
  int PrefferedMaximumLength,
  Pointer<Uint32> EntriesRead,
  Pointer<Uint32> TotalEntries,
  Pointer<Uint32> ResumeHandle,
) =>
    _NetScheduleJobEnum(
      Servername,
      PointerToBuffer,
      PrefferedMaximumLength,
      EntriesRead,
      TotalEntries,
      ResumeHandle,
    );

late final _NetScheduleJobEnum = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> Servername,
  Pointer<Pointer<Uint8>> PointerToBuffer,
  Uint32 PrefferedMaximumLength,
  Pointer<Uint32> EntriesRead,
  Pointer<Uint32> TotalEntries,
  Pointer<Uint32> ResumeHandle,
),
    int Function(
  Pointer<Utf16> Servername,
  Pointer<Pointer<Uint8>> PointerToBuffer,
  int PrefferedMaximumLength,
  Pointer<Uint32> EntriesRead,
  Pointer<Uint32> TotalEntries,
  Pointer<Uint32> ResumeHandle,
)>('NetScheduleJobEnum');

int NetScheduleJobGetInfo(
  Pointer<Utf16> Servername,
  int JobId,
  Pointer<Pointer<Uint8>> PointerToBuffer,
) =>
    _NetScheduleJobGetInfo(
      Servername,
      JobId,
      PointerToBuffer,
    );

late final _NetScheduleJobGetInfo = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> Servername,
  Uint32 JobId,
  Pointer<Pointer<Uint8>> PointerToBuffer,
),
    int Function(
  Pointer<Utf16> Servername,
  int JobId,
  Pointer<Pointer<Uint8>> PointerToBuffer,
)>('NetScheduleJobGetInfo');

int NetServerComputerNameAdd(
  Pointer<Utf16> ServerName,
  Pointer<Utf16> EmulatedDomainName,
  Pointer<Utf16> EmulatedServerName,
) =>
    _NetServerComputerNameAdd(
      ServerName,
      EmulatedDomainName,
      EmulatedServerName,
    );

late final _NetServerComputerNameAdd = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> ServerName,
  Pointer<Utf16> EmulatedDomainName,
  Pointer<Utf16> EmulatedServerName,
),
    int Function(
  Pointer<Utf16> ServerName,
  Pointer<Utf16> EmulatedDomainName,
  Pointer<Utf16> EmulatedServerName,
)>('NetServerComputerNameAdd');

int NetServerComputerNameDel(
  Pointer<Utf16> ServerName,
  Pointer<Utf16> EmulatedServerName,
) =>
    _NetServerComputerNameDel(
      ServerName,
      EmulatedServerName,
    );

late final _NetServerComputerNameDel = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> ServerName,
  Pointer<Utf16> EmulatedServerName,
),
    int Function(
  Pointer<Utf16> ServerName,
  Pointer<Utf16> EmulatedServerName,
)>('NetServerComputerNameDel');

int NetServerDiskEnum(
  Pointer<Utf16> servername,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
  int prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Pointer<Uint32> resume_handle,
) =>
    _NetServerDiskEnum(
      servername,
      level,
      bufptr,
      prefmaxlen,
      entriesread,
      totalentries,
      resume_handle,
    );

late final _NetServerDiskEnum = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Uint32 level,
  Pointer<Pointer<Uint8>> bufptr,
  Uint32 prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Pointer<Uint32> resume_handle,
),
    int Function(
  Pointer<Utf16> servername,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
  int prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Pointer<Uint32> resume_handle,
)>('NetServerDiskEnum');

int NetServerEnum(
  Pointer<Utf16> servername,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
  int prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  int servertype,
  Pointer<Utf16> domain,
  Pointer<Uint32> resume_handle,
) =>
    _NetServerEnum(
      servername,
      level,
      bufptr,
      prefmaxlen,
      entriesread,
      totalentries,
      servertype,
      domain,
      resume_handle,
    );

late final _NetServerEnum = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Uint32 level,
  Pointer<Pointer<Uint8>> bufptr,
  Uint32 prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Uint32 servertype,
  Pointer<Utf16> domain,
  Pointer<Uint32> resume_handle,
),
    int Function(
  Pointer<Utf16> servername,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
  int prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  int servertype,
  Pointer<Utf16> domain,
  Pointer<Uint32> resume_handle,
)>('NetServerEnum');

int NetServerGetInfo(
  Pointer<Utf16> servername,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
) =>
    _NetServerGetInfo(
      servername,
      level,
      bufptr,
    );

late final _NetServerGetInfo = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Uint32 level,
  Pointer<Pointer<Uint8>> bufptr,
),
    int Function(
  Pointer<Utf16> servername,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
)>('NetServerGetInfo');

int NetServerSetInfo(
  Pointer<Utf16> servername,
  int level,
  Pointer<Uint8> buf,
  Pointer<Uint32> ParmError,
) =>
    _NetServerSetInfo(
      servername,
      level,
      buf,
      ParmError,
    );

late final _NetServerSetInfo = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Uint32 level,
  Pointer<Uint8> buf,
  Pointer<Uint32> ParmError,
),
    int Function(
  Pointer<Utf16> servername,
  int level,
  Pointer<Uint8> buf,
  Pointer<Uint32> ParmError,
)>('NetServerSetInfo');

int NetServerTransportAdd(
  Pointer<Utf16> servername,
  int level,
  Pointer<Uint8> bufptr,
) =>
    _NetServerTransportAdd(
      servername,
      level,
      bufptr,
    );

late final _NetServerTransportAdd = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Uint32 level,
  Pointer<Uint8> bufptr,
),
    int Function(
  Pointer<Utf16> servername,
  int level,
  Pointer<Uint8> bufptr,
)>('NetServerTransportAdd');

int NetServerTransportAddEx(
  Pointer<Utf16> servername,
  int level,
  Pointer<Uint8> bufptr,
) =>
    _NetServerTransportAddEx(
      servername,
      level,
      bufptr,
    );

late final _NetServerTransportAddEx = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Uint32 level,
  Pointer<Uint8> bufptr,
),
    int Function(
  Pointer<Utf16> servername,
  int level,
  Pointer<Uint8> bufptr,
)>('NetServerTransportAddEx');

int NetServerTransportDel(
  Pointer<Utf16> servername,
  int level,
  Pointer<Uint8> bufptr,
) =>
    _NetServerTransportDel(
      servername,
      level,
      bufptr,
    );

late final _NetServerTransportDel = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Uint32 level,
  Pointer<Uint8> bufptr,
),
    int Function(
  Pointer<Utf16> servername,
  int level,
  Pointer<Uint8> bufptr,
)>('NetServerTransportDel');

int NetServerTransportEnum(
  Pointer<Utf16> servername,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
  int prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Pointer<Uint32> resume_handle,
) =>
    _NetServerTransportEnum(
      servername,
      level,
      bufptr,
      prefmaxlen,
      entriesread,
      totalentries,
      resume_handle,
    );

late final _NetServerTransportEnum = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Uint32 level,
  Pointer<Pointer<Uint8>> bufptr,
  Uint32 prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Pointer<Uint32> resume_handle,
),
    int Function(
  Pointer<Utf16> servername,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
  int prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Pointer<Uint32> resume_handle,
)>('NetServerTransportEnum');

int NetServiceControl(
  Pointer<Utf16> servername,
  Pointer<Utf16> service,
  int opcode,
  int arg,
  Pointer<Pointer<Uint8>> bufptr,
) =>
    _NetServiceControl(
      servername,
      service,
      opcode,
      arg,
      bufptr,
    );

late final _NetServiceControl = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> service,
  Uint32 opcode,
  Uint32 arg,
  Pointer<Pointer<Uint8>> bufptr,
),
    int Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> service,
  int opcode,
  int arg,
  Pointer<Pointer<Uint8>> bufptr,
)>('NetServiceControl');

int NetServiceEnum(
  Pointer<Utf16> servername,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
  int prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Pointer<Uint32> resume_handle,
) =>
    _NetServiceEnum(
      servername,
      level,
      bufptr,
      prefmaxlen,
      entriesread,
      totalentries,
      resume_handle,
    );

late final _NetServiceEnum = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Uint32 level,
  Pointer<Pointer<Uint8>> bufptr,
  Uint32 prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Pointer<Uint32> resume_handle,
),
    int Function(
  Pointer<Utf16> servername,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
  int prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Pointer<Uint32> resume_handle,
)>('NetServiceEnum');

int NetServiceGetInfo(
  Pointer<Utf16> servername,
  Pointer<Utf16> service,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
) =>
    _NetServiceGetInfo(
      servername,
      service,
      level,
      bufptr,
    );

late final _NetServiceGetInfo = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> service,
  Uint32 level,
  Pointer<Pointer<Uint8>> bufptr,
),
    int Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> service,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
)>('NetServiceGetInfo');

int NetServiceInstall(
  Pointer<Utf16> servername,
  Pointer<Utf16> service,
  int argc,
  Pointer<Pointer<Utf16>> argv,
  Pointer<Pointer<Uint8>> bufptr,
) =>
    _NetServiceInstall(
      servername,
      service,
      argc,
      argv,
      bufptr,
    );

late final _NetServiceInstall = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> service,
  Uint32 argc,
  Pointer<Pointer<Utf16>> argv,
  Pointer<Pointer<Uint8>> bufptr,
),
    int Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> service,
  int argc,
  Pointer<Pointer<Utf16>> argv,
  Pointer<Pointer<Uint8>> bufptr,
)>('NetServiceInstall');

int NetSetPrimaryComputerName(
  Pointer<Utf16> Server,
  Pointer<Utf16> PrimaryName,
  Pointer<Utf16> DomainAccount,
  Pointer<Utf16> DomainAccountPassword,
  int Reserved,
) =>
    _NetSetPrimaryComputerName(
      Server,
      PrimaryName,
      DomainAccount,
      DomainAccountPassword,
      Reserved,
    );

late final _NetSetPrimaryComputerName = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> Server,
  Pointer<Utf16> PrimaryName,
  Pointer<Utf16> DomainAccount,
  Pointer<Utf16> DomainAccountPassword,
  Uint32 Reserved,
),
    int Function(
  Pointer<Utf16> Server,
  Pointer<Utf16> PrimaryName,
  Pointer<Utf16> DomainAccount,
  Pointer<Utf16> DomainAccountPassword,
  int Reserved,
)>('NetSetPrimaryComputerName');

int NetUnjoinDomain(
  Pointer<Utf16> lpServer,
  Pointer<Utf16> lpAccount,
  Pointer<Utf16> lpPassword,
  int fUnjoinOptions,
) =>
    _NetUnjoinDomain(
      lpServer,
      lpAccount,
      lpPassword,
      fUnjoinOptions,
    );

late final _NetUnjoinDomain = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpServer,
  Pointer<Utf16> lpAccount,
  Pointer<Utf16> lpPassword,
  Uint32 fUnjoinOptions,
),
    int Function(
  Pointer<Utf16> lpServer,
  Pointer<Utf16> lpAccount,
  Pointer<Utf16> lpPassword,
  int fUnjoinOptions,
)>('NetUnjoinDomain');

int NetUseAdd(
  Pointer<Int8> servername,
  int LevelFlags,
  Pointer<Uint8> buf,
  Pointer<Uint32> parm_err,
) =>
    _NetUseAdd(
      servername,
      LevelFlags,
      buf,
      parm_err,
    );

late final _NetUseAdd = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Int8> servername,
  Uint32 LevelFlags,
  Pointer<Uint8> buf,
  Pointer<Uint32> parm_err,
),
    int Function(
  Pointer<Int8> servername,
  int LevelFlags,
  Pointer<Uint8> buf,
  Pointer<Uint32> parm_err,
)>('NetUseAdd');

int NetUseDel(
  Pointer<Utf16> UncServerName,
  Pointer<Utf16> UseName,
  int ForceLevelFlags,
) =>
    _NetUseDel(
      UncServerName,
      UseName,
      ForceLevelFlags,
    );

late final _NetUseDel = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> UncServerName,
  Pointer<Utf16> UseName,
  Uint32 ForceLevelFlags,
),
    int Function(
  Pointer<Utf16> UncServerName,
  Pointer<Utf16> UseName,
  int ForceLevelFlags,
)>('NetUseDel');

int NetUseEnum(
  Pointer<Utf16> UncServerName,
  int LevelFlags,
  Pointer<Pointer<Uint8>> BufPtr,
  int PreferedMaximumSize,
  Pointer<Uint32> EntriesRead,
  Pointer<Uint32> TotalEntries,
  Pointer<Uint32> ResumeHandle,
) =>
    _NetUseEnum(
      UncServerName,
      LevelFlags,
      BufPtr,
      PreferedMaximumSize,
      EntriesRead,
      TotalEntries,
      ResumeHandle,
    );

late final _NetUseEnum = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> UncServerName,
  Uint32 LevelFlags,
  Pointer<Pointer<Uint8>> BufPtr,
  Uint32 PreferedMaximumSize,
  Pointer<Uint32> EntriesRead,
  Pointer<Uint32> TotalEntries,
  Pointer<Uint32> ResumeHandle,
),
    int Function(
  Pointer<Utf16> UncServerName,
  int LevelFlags,
  Pointer<Pointer<Uint8>> BufPtr,
  int PreferedMaximumSize,
  Pointer<Uint32> EntriesRead,
  Pointer<Uint32> TotalEntries,
  Pointer<Uint32> ResumeHandle,
)>('NetUseEnum');

int NetUseGetInfo(
  Pointer<Utf16> UncServerName,
  Pointer<Utf16> UseName,
  int LevelFlags,
  Pointer<Pointer<Uint8>> bufptr,
) =>
    _NetUseGetInfo(
      UncServerName,
      UseName,
      LevelFlags,
      bufptr,
    );

late final _NetUseGetInfo = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> UncServerName,
  Pointer<Utf16> UseName,
  Uint32 LevelFlags,
  Pointer<Pointer<Uint8>> bufptr,
),
    int Function(
  Pointer<Utf16> UncServerName,
  Pointer<Utf16> UseName,
  int LevelFlags,
  Pointer<Pointer<Uint8>> bufptr,
)>('NetUseGetInfo');

int NetUserAdd(
  Pointer<Utf16> servername,
  int level,
  Pointer<Uint8> buf,
  Pointer<Uint32> parm_err,
) =>
    _NetUserAdd(
      servername,
      level,
      buf,
      parm_err,
    );

late final _NetUserAdd = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Uint32 level,
  Pointer<Uint8> buf,
  Pointer<Uint32> parm_err,
),
    int Function(
  Pointer<Utf16> servername,
  int level,
  Pointer<Uint8> buf,
  Pointer<Uint32> parm_err,
)>('NetUserAdd');

int NetUserChangePassword(
  Pointer<Utf16> domainname,
  Pointer<Utf16> username,
  Pointer<Utf16> oldpassword,
  Pointer<Utf16> newpassword,
) =>
    _NetUserChangePassword(
      domainname,
      username,
      oldpassword,
      newpassword,
    );

late final _NetUserChangePassword = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> domainname,
  Pointer<Utf16> username,
  Pointer<Utf16> oldpassword,
  Pointer<Utf16> newpassword,
),
    int Function(
  Pointer<Utf16> domainname,
  Pointer<Utf16> username,
  Pointer<Utf16> oldpassword,
  Pointer<Utf16> newpassword,
)>('NetUserChangePassword');

int NetUserDel(
  Pointer<Utf16> servername,
  Pointer<Utf16> username,
) =>
    _NetUserDel(
      servername,
      username,
    );

late final _NetUserDel = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> username,
),
    int Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> username,
)>('NetUserDel');

int NetUserEnum(
  Pointer<Utf16> servername,
  int level,
  int filter,
  Pointer<Pointer<Uint8>> bufptr,
  int prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Pointer<Uint32> resume_handle,
) =>
    _NetUserEnum(
      servername,
      level,
      filter,
      bufptr,
      prefmaxlen,
      entriesread,
      totalentries,
      resume_handle,
    );

late final _NetUserEnum = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Uint32 level,
  Uint32 filter,
  Pointer<Pointer<Uint8>> bufptr,
  Uint32 prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Pointer<Uint32> resume_handle,
),
    int Function(
  Pointer<Utf16> servername,
  int level,
  int filter,
  Pointer<Pointer<Uint8>> bufptr,
  int prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Pointer<Uint32> resume_handle,
)>('NetUserEnum');

int NetUserGetGroups(
  Pointer<Utf16> servername,
  Pointer<Utf16> username,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
  int prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
) =>
    _NetUserGetGroups(
      servername,
      username,
      level,
      bufptr,
      prefmaxlen,
      entriesread,
      totalentries,
    );

late final _NetUserGetGroups = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> username,
  Uint32 level,
  Pointer<Pointer<Uint8>> bufptr,
  Uint32 prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
),
    int Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> username,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
  int prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
)>('NetUserGetGroups');

int NetUserGetInfo(
  Pointer<Utf16> servername,
  Pointer<Utf16> username,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
) =>
    _NetUserGetInfo(
      servername,
      username,
      level,
      bufptr,
    );

late final _NetUserGetInfo = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> username,
  Uint32 level,
  Pointer<Pointer<Uint8>> bufptr,
),
    int Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> username,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
)>('NetUserGetInfo');

int NetUserGetLocalGroups(
  Pointer<Utf16> servername,
  Pointer<Utf16> username,
  int level,
  int flags,
  Pointer<Pointer<Uint8>> bufptr,
  int prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
) =>
    _NetUserGetLocalGroups(
      servername,
      username,
      level,
      flags,
      bufptr,
      prefmaxlen,
      entriesread,
      totalentries,
    );

late final _NetUserGetLocalGroups = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> username,
  Uint32 level,
  Uint32 flags,
  Pointer<Pointer<Uint8>> bufptr,
  Uint32 prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
),
    int Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> username,
  int level,
  int flags,
  Pointer<Pointer<Uint8>> bufptr,
  int prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
)>('NetUserGetLocalGroups');

int NetUserModalsGet(
  Pointer<Utf16> servername,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
) =>
    _NetUserModalsGet(
      servername,
      level,
      bufptr,
    );

late final _NetUserModalsGet = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Uint32 level,
  Pointer<Pointer<Uint8>> bufptr,
),
    int Function(
  Pointer<Utf16> servername,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
)>('NetUserModalsGet');

int NetUserModalsSet(
  Pointer<Utf16> servername,
  int level,
  Pointer<Uint8> buf,
  Pointer<Uint32> parm_err,
) =>
    _NetUserModalsSet(
      servername,
      level,
      buf,
      parm_err,
    );

late final _NetUserModalsSet = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Uint32 level,
  Pointer<Uint8> buf,
  Pointer<Uint32> parm_err,
),
    int Function(
  Pointer<Utf16> servername,
  int level,
  Pointer<Uint8> buf,
  Pointer<Uint32> parm_err,
)>('NetUserModalsSet');

int NetUserSetGroups(
  Pointer<Utf16> servername,
  Pointer<Utf16> username,
  int level,
  Pointer<Uint8> buf,
  int num_entries,
) =>
    _NetUserSetGroups(
      servername,
      username,
      level,
      buf,
      num_entries,
    );

late final _NetUserSetGroups = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> username,
  Uint32 level,
  Pointer<Uint8> buf,
  Uint32 num_entries,
),
    int Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> username,
  int level,
  Pointer<Uint8> buf,
  int num_entries,
)>('NetUserSetGroups');

int NetUserSetInfo(
  Pointer<Utf16> servername,
  Pointer<Utf16> username,
  int level,
  Pointer<Uint8> buf,
  Pointer<Uint32> parm_err,
) =>
    _NetUserSetInfo(
      servername,
      username,
      level,
      buf,
      parm_err,
    );

late final _NetUserSetInfo = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> username,
  Uint32 level,
  Pointer<Uint8> buf,
  Pointer<Uint32> parm_err,
),
    int Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> username,
  int level,
  Pointer<Uint8> buf,
  Pointer<Uint32> parm_err,
)>('NetUserSetInfo');

int NetValidateName(
  Pointer<Utf16> lpServer,
  Pointer<Utf16> lpName,
  Pointer<Utf16> lpAccount,
  Pointer<Utf16> lpPassword,
  int NameType,
) =>
    _NetValidateName(
      lpServer,
      lpName,
      lpAccount,
      lpPassword,
      NameType,
    );

late final _NetValidateName = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpServer,
  Pointer<Utf16> lpName,
  Pointer<Utf16> lpAccount,
  Pointer<Utf16> lpPassword,
  Int32 NameType,
),
    int Function(
  Pointer<Utf16> lpServer,
  Pointer<Utf16> lpName,
  Pointer<Utf16> lpAccount,
  Pointer<Utf16> lpPassword,
  int NameType,
)>('NetValidateName');

int NetValidatePasswordPolicy(
  Pointer<Utf16> ServerName,
  Pointer Qualifier,
  int ValidationType,
  Pointer InputArg,
  Pointer<Pointer> OutputArg,
) =>
    _NetValidatePasswordPolicy(
      ServerName,
      Qualifier,
      ValidationType,
      InputArg,
      OutputArg,
    );

late final _NetValidatePasswordPolicy = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> ServerName,
  Pointer Qualifier,
  Int32 ValidationType,
  Pointer InputArg,
  Pointer<Pointer> OutputArg,
),
    int Function(
  Pointer<Utf16> ServerName,
  Pointer Qualifier,
  int ValidationType,
  Pointer InputArg,
  Pointer<Pointer> OutputArg,
)>('NetValidatePasswordPolicy');

int NetValidatePasswordPolicyFree(
  Pointer<Pointer> OutputArg,
) =>
    _NetValidatePasswordPolicyFree(
      OutputArg,
    );

late final _NetValidatePasswordPolicyFree = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Pointer> OutputArg,
),
    int Function(
  Pointer<Pointer> OutputArg,
)>('NetValidatePasswordPolicyFree');

int NetWkstaGetInfo(
  Pointer<Utf16> servername,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
) =>
    _NetWkstaGetInfo(
      servername,
      level,
      bufptr,
    );

late final _NetWkstaGetInfo = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Uint32 level,
  Pointer<Pointer<Uint8>> bufptr,
),
    int Function(
  Pointer<Utf16> servername,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
)>('NetWkstaGetInfo');

int NetWkstaSetInfo(
  Pointer<Utf16> servername,
  int level,
  Pointer<Uint8> buffer,
  Pointer<Uint32> parm_err,
) =>
    _NetWkstaSetInfo(
      servername,
      level,
      buffer,
      parm_err,
    );

late final _NetWkstaSetInfo = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Uint32 level,
  Pointer<Uint8> buffer,
  Pointer<Uint32> parm_err,
),
    int Function(
  Pointer<Utf16> servername,
  int level,
  Pointer<Uint8> buffer,
  Pointer<Uint32> parm_err,
)>('NetWkstaSetInfo');

int NetWkstaTransportAdd(
  Pointer<Int8> servername,
  int level,
  Pointer<Uint8> buf,
  Pointer<Uint32> parm_err,
) =>
    _NetWkstaTransportAdd(
      servername,
      level,
      buf,
      parm_err,
    );

late final _NetWkstaTransportAdd = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Int8> servername,
  Uint32 level,
  Pointer<Uint8> buf,
  Pointer<Uint32> parm_err,
),
    int Function(
  Pointer<Int8> servername,
  int level,
  Pointer<Uint8> buf,
  Pointer<Uint32> parm_err,
)>('NetWkstaTransportAdd');

int NetWkstaTransportDel(
  Pointer<Utf16> servername,
  Pointer<Utf16> transportname,
  int ucond,
) =>
    _NetWkstaTransportDel(
      servername,
      transportname,
      ucond,
    );

late final _NetWkstaTransportDel = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> transportname,
  Uint32 ucond,
),
    int Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> transportname,
  int ucond,
)>('NetWkstaTransportDel');

int NetWkstaTransportEnum(
  Pointer<Int8> servername,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
  int prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Pointer<Uint32> resume_handle,
) =>
    _NetWkstaTransportEnum(
      servername,
      level,
      bufptr,
      prefmaxlen,
      entriesread,
      totalentries,
      resume_handle,
    );

late final _NetWkstaTransportEnum = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Int8> servername,
  Uint32 level,
  Pointer<Pointer<Uint8>> bufptr,
  Uint32 prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Pointer<Uint32> resume_handle,
),
    int Function(
  Pointer<Int8> servername,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
  int prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Pointer<Uint32> resume_handle,
)>('NetWkstaTransportEnum');

int NetWkstaUserEnum(
  Pointer<Utf16> servername,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
  int prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Pointer<Uint32> resumehandle,
) =>
    _NetWkstaUserEnum(
      servername,
      level,
      bufptr,
      prefmaxlen,
      entriesread,
      totalentries,
      resumehandle,
    );

late final _NetWkstaUserEnum = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Uint32 level,
  Pointer<Pointer<Uint8>> bufptr,
  Uint32 prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Pointer<Uint32> resumehandle,
),
    int Function(
  Pointer<Utf16> servername,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
  int prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Pointer<Uint32> resumehandle,
)>('NetWkstaUserEnum');

int NetWkstaUserGetInfo(
  Pointer<Utf16> reserved,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
) =>
    _NetWkstaUserGetInfo(
      reserved,
      level,
      bufptr,
    );

late final _NetWkstaUserGetInfo = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> reserved,
  Uint32 level,
  Pointer<Pointer<Uint8>> bufptr,
),
    int Function(
  Pointer<Utf16> reserved,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
)>('NetWkstaUserGetInfo');

int NetWkstaUserSetInfo(
  Pointer<Utf16> reserved,
  int level,
  Pointer<Uint8> buf,
  Pointer<Uint32> parm_err,
) =>
    _NetWkstaUserSetInfo(
      reserved,
      level,
      buf,
      parm_err,
    );

late final _NetWkstaUserSetInfo = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> reserved,
  Uint32 level,
  Pointer<Uint8> buf,
  Pointer<Uint32> parm_err,
),
    int Function(
  Pointer<Utf16> reserved,
  int level,
  Pointer<Uint8> buf,
  Pointer<Uint32> parm_err,
)>('NetWkstaUserSetInfo');

// -----------------------------------------------------------------------
// mstask.dll
// -----------------------------------------------------------------------
final _mstask = DynamicLibrary.open('mstask.dll');

int GetNetScheduleAccountInformation(
  Pointer<Utf16> pwszServerName,
  int ccAccount,
  Pointer<Utf16> wszAccount,
) =>
    _GetNetScheduleAccountInformation(
      pwszServerName,
      ccAccount,
      wszAccount,
    );

late final _GetNetScheduleAccountInformation = _mstask.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwszServerName,
  Uint32 ccAccount,
  Pointer<Utf16> wszAccount,
),
    int Function(
  Pointer<Utf16> pwszServerName,
  int ccAccount,
  Pointer<Utf16> wszAccount,
)>('GetNetScheduleAccountInformation');

int SetNetScheduleAccountInformation(
  Pointer<Utf16> pwszServerName,
  Pointer<Utf16> pwszAccount,
  Pointer<Utf16> pwszPassword,
) =>
    _SetNetScheduleAccountInformation(
      pwszServerName,
      pwszAccount,
      pwszPassword,
    );

late final _SetNetScheduleAccountInformation = _mstask.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwszServerName,
  Pointer<Utf16> pwszAccount,
  Pointer<Utf16> pwszPassword,
),
    int Function(
  Pointer<Utf16> pwszServerName,
  Pointer<Utf16> pwszAccount,
  Pointer<Utf16> pwszPassword,
)>('SetNetScheduleAccountInformation');

// -----------------------------------------------------------------------
// rtutils.dll
// -----------------------------------------------------------------------
final _rtutils = DynamicLibrary.open('rtutils.dll');

void LogError(
  int dwMessageId,
  int cNumberOfSubStrings,
  Pointer<Pointer<Utf16>> plpwsSubStrings,
  int dwErrorCode,
) =>
    _LogError(
      dwMessageId,
      cNumberOfSubStrings,
      plpwsSubStrings,
      dwErrorCode,
    );

late final _LogError = _rtutils.lookupFunction<
    Void Function(
  Uint32 dwMessageId,
  Uint32 cNumberOfSubStrings,
  Pointer<Pointer<Utf16>> plpwsSubStrings,
  Uint32 dwErrorCode,
),
    void Function(
  int dwMessageId,
  int cNumberOfSubStrings,
  Pointer<Pointer<Utf16>> plpwsSubStrings,
  int dwErrorCode,
)>('LogErrorW');

void LogEvent(
  int wEventType,
  int dwMessageId,
  int cNumberOfSubStrings,
  Pointer<Pointer<Utf16>> plpwsSubStrings,
) =>
    _LogEvent(
      wEventType,
      dwMessageId,
      cNumberOfSubStrings,
      plpwsSubStrings,
    );

late final _LogEvent = _rtutils.lookupFunction<
    Void Function(
  Uint32 wEventType,
  Uint32 dwMessageId,
  Uint32 cNumberOfSubStrings,
  Pointer<Pointer<Utf16>> plpwsSubStrings,
),
    void Function(
  int wEventType,
  int dwMessageId,
  int cNumberOfSubStrings,
  Pointer<Pointer<Utf16>> plpwsSubStrings,
)>('LogEventW');

int MprSetupProtocolEnum(
  int dwTransportId,
  Pointer<Pointer<Uint8>> lplpBuffer,
  Pointer<Uint32> lpdwEntriesRead,
) =>
    _MprSetupProtocolEnum(
      dwTransportId,
      lplpBuffer,
      lpdwEntriesRead,
    );

late final _MprSetupProtocolEnum = _rtutils.lookupFunction<
    Uint32 Function(
  Uint32 dwTransportId,
  Pointer<Pointer<Uint8>> lplpBuffer,
  Pointer<Uint32> lpdwEntriesRead,
),
    int Function(
  int dwTransportId,
  Pointer<Pointer<Uint8>> lplpBuffer,
  Pointer<Uint32> lpdwEntriesRead,
)>('MprSetupProtocolEnum');

int MprSetupProtocolFree(
  Pointer lpBuffer,
) =>
    _MprSetupProtocolFree(
      lpBuffer,
    );

late final _MprSetupProtocolFree = _rtutils.lookupFunction<
    Uint32 Function(
  Pointer lpBuffer,
),
    int Function(
  Pointer lpBuffer,
)>('MprSetupProtocolFree');

void RouterAssert(
  Pointer<Utf8> pszFailedAssertion,
  Pointer<Utf8> pszFileName,
  int dwLineNumber,
  Pointer<Utf8> pszMessage,
) =>
    _RouterAssert(
      pszFailedAssertion,
      pszFileName,
      dwLineNumber,
      pszMessage,
    );

late final _RouterAssert = _rtutils.lookupFunction<
    Void Function(
  Pointer<Utf8> pszFailedAssertion,
  Pointer<Utf8> pszFileName,
  Uint32 dwLineNumber,
  Pointer<Utf8> pszMessage,
),
    void Function(
  Pointer<Utf8> pszFailedAssertion,
  Pointer<Utf8> pszFileName,
  int dwLineNumber,
  Pointer<Utf8> pszMessage,
)>('RouterAssert');

int RouterGetErrorString(
  int dwErrorCode,
  Pointer<Pointer<Utf16>> lplpwszErrorString,
) =>
    _RouterGetErrorString(
      dwErrorCode,
      lplpwszErrorString,
    );

late final _RouterGetErrorString = _rtutils.lookupFunction<
    Uint32 Function(
  Uint32 dwErrorCode,
  Pointer<Pointer<Utf16>> lplpwszErrorString,
),
    int Function(
  int dwErrorCode,
  Pointer<Pointer<Utf16>> lplpwszErrorString,
)>('RouterGetErrorStringW');

void RouterLogDeregister(
  int hLogHandle,
) =>
    _RouterLogDeregister(
      hLogHandle,
    );

late final _RouterLogDeregister = _rtutils.lookupFunction<
    Void Function(
  IntPtr hLogHandle,
),
    void Function(
  int hLogHandle,
)>('RouterLogDeregisterW');

void RouterLogEventData(
  int hLogHandle,
  int dwEventType,
  int dwMessageId,
  int dwSubStringCount,
  Pointer<Pointer<Utf16>> plpszSubStringArray,
  int dwDataBytes,
  Pointer<Uint8> lpDataBytes,
) =>
    _RouterLogEventData(
      hLogHandle,
      dwEventType,
      dwMessageId,
      dwSubStringCount,
      plpszSubStringArray,
      dwDataBytes,
      lpDataBytes,
    );

late final _RouterLogEventData = _rtutils.lookupFunction<
    Void Function(
  IntPtr hLogHandle,
  Uint32 dwEventType,
  Uint32 dwMessageId,
  Uint32 dwSubStringCount,
  Pointer<Pointer<Utf16>> plpszSubStringArray,
  Uint32 dwDataBytes,
  Pointer<Uint8> lpDataBytes,
),
    void Function(
  int hLogHandle,
  int dwEventType,
  int dwMessageId,
  int dwSubStringCount,
  Pointer<Pointer<Utf16>> plpszSubStringArray,
  int dwDataBytes,
  Pointer<Uint8> lpDataBytes,
)>('RouterLogEventDataW');

void RouterLogEventEx(
  int hLogHandle,
  int dwEventType,
  int dwErrorCode,
  int dwMessageId,
  Pointer<Utf16> ptszFormat,
) =>
    _RouterLogEventEx(
      hLogHandle,
      dwEventType,
      dwErrorCode,
      dwMessageId,
      ptszFormat,
    );

late final _RouterLogEventEx = _rtutils.lookupFunction<
    Void Function(
  IntPtr hLogHandle,
  Uint32 dwEventType,
  Uint32 dwErrorCode,
  Uint32 dwMessageId,
  Pointer<Utf16> ptszFormat,
),
    void Function(
  int hLogHandle,
  int dwEventType,
  int dwErrorCode,
  int dwMessageId,
  Pointer<Utf16> ptszFormat,
)>('RouterLogEventExW');

void RouterLogEventString(
  int hLogHandle,
  int dwEventType,
  int dwMessageId,
  int dwSubStringCount,
  Pointer<Pointer<Utf16>> plpszSubStringArray,
  int dwErrorCode,
  int dwErrorIndex,
) =>
    _RouterLogEventString(
      hLogHandle,
      dwEventType,
      dwMessageId,
      dwSubStringCount,
      plpszSubStringArray,
      dwErrorCode,
      dwErrorIndex,
    );

late final _RouterLogEventString = _rtutils.lookupFunction<
    Void Function(
  IntPtr hLogHandle,
  Uint32 dwEventType,
  Uint32 dwMessageId,
  Uint32 dwSubStringCount,
  Pointer<Pointer<Utf16>> plpszSubStringArray,
  Uint32 dwErrorCode,
  Uint32 dwErrorIndex,
),
    void Function(
  int hLogHandle,
  int dwEventType,
  int dwMessageId,
  int dwSubStringCount,
  Pointer<Pointer<Utf16>> plpszSubStringArray,
  int dwErrorCode,
  int dwErrorIndex,
)>('RouterLogEventStringW');

void RouterLogEventValistEx(
  int hLogHandle,
  int dwEventType,
  int dwErrorCode,
  int dwMessageId,
  Pointer<Utf16> ptszFormat,
  Pointer<Int8> arglist,
) =>
    _RouterLogEventValistEx(
      hLogHandle,
      dwEventType,
      dwErrorCode,
      dwMessageId,
      ptszFormat,
      arglist,
    );

late final _RouterLogEventValistEx = _rtutils.lookupFunction<
    Void Function(
  IntPtr hLogHandle,
  Uint32 dwEventType,
  Uint32 dwErrorCode,
  Uint32 dwMessageId,
  Pointer<Utf16> ptszFormat,
  Pointer<Int8> arglist,
),
    void Function(
  int hLogHandle,
  int dwEventType,
  int dwErrorCode,
  int dwMessageId,
  Pointer<Utf16> ptszFormat,
  Pointer<Int8> arglist,
)>('RouterLogEventValistExW');

void RouterLogEvent(
  int hLogHandle,
  int dwEventType,
  int dwMessageId,
  int dwSubStringCount,
  Pointer<Pointer<Utf16>> plpszSubStringArray,
  int dwErrorCode,
) =>
    _RouterLogEvent(
      hLogHandle,
      dwEventType,
      dwMessageId,
      dwSubStringCount,
      plpszSubStringArray,
      dwErrorCode,
    );

late final _RouterLogEvent = _rtutils.lookupFunction<
    Void Function(
  IntPtr hLogHandle,
  Uint32 dwEventType,
  Uint32 dwMessageId,
  Uint32 dwSubStringCount,
  Pointer<Pointer<Utf16>> plpszSubStringArray,
  Uint32 dwErrorCode,
),
    void Function(
  int hLogHandle,
  int dwEventType,
  int dwMessageId,
  int dwSubStringCount,
  Pointer<Pointer<Utf16>> plpszSubStringArray,
  int dwErrorCode,
)>('RouterLogEventW');

int RouterLogRegister(
  Pointer<Utf16> lpszSource,
) =>
    _RouterLogRegister(
      lpszSource,
    );

late final _RouterLogRegister = _rtutils.lookupFunction<
    IntPtr Function(
  Pointer<Utf16> lpszSource,
),
    int Function(
  Pointer<Utf16> lpszSource,
)>('RouterLogRegisterW');

int TraceDeregisterEx(
  int dwTraceID,
  int dwFlags,
) =>
    _TraceDeregisterEx(
      dwTraceID,
      dwFlags,
    );

late final _TraceDeregisterEx = _rtutils.lookupFunction<
    Uint32 Function(
  Uint32 dwTraceID,
  Uint32 dwFlags,
),
    int Function(
  int dwTraceID,
  int dwFlags,
)>('TraceDeregisterExW');

int TraceDeregister(
  int dwTraceID,
) =>
    _TraceDeregister(
      dwTraceID,
    );

late final _TraceDeregister = _rtutils.lookupFunction<
    Uint32 Function(
  Uint32 dwTraceID,
),
    int Function(
  int dwTraceID,
)>('TraceDeregisterW');

int TraceDumpEx(
  int dwTraceID,
  int dwFlags,
  Pointer<Uint8> lpbBytes,
  int dwByteCount,
  int dwGroupSize,
  int bAddressPrefix,
  Pointer<Utf16> lpszPrefix,
) =>
    _TraceDumpEx(
      dwTraceID,
      dwFlags,
      lpbBytes,
      dwByteCount,
      dwGroupSize,
      bAddressPrefix,
      lpszPrefix,
    );

late final _TraceDumpEx = _rtutils.lookupFunction<
    Uint32 Function(
  Uint32 dwTraceID,
  Uint32 dwFlags,
  Pointer<Uint8> lpbBytes,
  Uint32 dwByteCount,
  Uint32 dwGroupSize,
  Int32 bAddressPrefix,
  Pointer<Utf16> lpszPrefix,
),
    int Function(
  int dwTraceID,
  int dwFlags,
  Pointer<Uint8> lpbBytes,
  int dwByteCount,
  int dwGroupSize,
  int bAddressPrefix,
  Pointer<Utf16> lpszPrefix,
)>('TraceDumpExW');

int TraceGetConsole(
  int dwTraceID,
  Pointer<IntPtr> lphConsole,
) =>
    _TraceGetConsole(
      dwTraceID,
      lphConsole,
    );

late final _TraceGetConsole = _rtutils.lookupFunction<
    Uint32 Function(
  Uint32 dwTraceID,
  Pointer<IntPtr> lphConsole,
),
    int Function(
  int dwTraceID,
  Pointer<IntPtr> lphConsole,
)>('TraceGetConsoleW');

int TracePrintfEx(
  int dwTraceID,
  int dwFlags,
  Pointer<Utf16> lpszFormat,
) =>
    _TracePrintfEx(
      dwTraceID,
      dwFlags,
      lpszFormat,
    );

late final _TracePrintfEx = _rtutils.lookupFunction<
    Uint32 Function(
  Uint32 dwTraceID,
  Uint32 dwFlags,
  Pointer<Utf16> lpszFormat,
),
    int Function(
  int dwTraceID,
  int dwFlags,
  Pointer<Utf16> lpszFormat,
)>('TracePrintfExW');

int TracePrintf(
  int dwTraceID,
  Pointer<Utf16> lpszFormat,
) =>
    _TracePrintf(
      dwTraceID,
      lpszFormat,
    );

late final _TracePrintf = _rtutils.lookupFunction<
    Uint32 Function(
  Uint32 dwTraceID,
  Pointer<Utf16> lpszFormat,
),
    int Function(
  int dwTraceID,
  Pointer<Utf16> lpszFormat,
)>('TracePrintfW');

int TracePutsEx(
  int dwTraceID,
  int dwFlags,
  Pointer<Utf16> lpszString,
) =>
    _TracePutsEx(
      dwTraceID,
      dwFlags,
      lpszString,
    );

late final _TracePutsEx = _rtutils.lookupFunction<
    Uint32 Function(
  Uint32 dwTraceID,
  Uint32 dwFlags,
  Pointer<Utf16> lpszString,
),
    int Function(
  int dwTraceID,
  int dwFlags,
  Pointer<Utf16> lpszString,
)>('TracePutsExW');

int TraceRegisterEx(
  Pointer<Utf16> lpszCallerName,
  int dwFlags,
) =>
    _TraceRegisterEx(
      lpszCallerName,
      dwFlags,
    );

late final _TraceRegisterEx = _rtutils.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpszCallerName,
  Uint32 dwFlags,
),
    int Function(
  Pointer<Utf16> lpszCallerName,
  int dwFlags,
)>('TraceRegisterExW');

int TraceVprintfEx(
  int dwTraceID,
  int dwFlags,
  Pointer<Utf16> lpszFormat,
  Pointer<Int8> arglist,
) =>
    _TraceVprintfEx(
      dwTraceID,
      dwFlags,
      lpszFormat,
      arglist,
    );

late final _TraceVprintfEx = _rtutils.lookupFunction<
    Uint32 Function(
  Uint32 dwTraceID,
  Uint32 dwFlags,
  Pointer<Utf16> lpszFormat,
  Pointer<Int8> arglist,
),
    int Function(
  int dwTraceID,
  int dwFlags,
  Pointer<Utf16> lpszFormat,
  Pointer<Int8> arglist,
)>('TraceVprintfExW');
