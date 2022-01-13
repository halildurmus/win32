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
import '../../security/enterprisedata/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../storage/packaging/appx/structs.g.dart'; // -----------------------------------------------------------------------

// srpapi.dll
// -----------------------------------------------------------------------
final _srpapi = DynamicLibrary.open('srpapi.dll');

int SrpCloseThreadNetworkContext(
  Pointer<HTHREAD_NETWORK_CONTEXT> threadNetworkContext,
) =>
    _SrpCloseThreadNetworkContext(
      threadNetworkContext,
    );

late final _SrpCloseThreadNetworkContext = _srpapi.lookupFunction<
    Int32 Function(
  Pointer<HTHREAD_NETWORK_CONTEXT> threadNetworkContext,
),
    int Function(
  Pointer<HTHREAD_NETWORK_CONTEXT> threadNetworkContext,
)>('SrpCloseThreadNetworkContext');

int SrpCreateThreadNetworkContext(
  Pointer<Utf16> enterpriseId,
  Pointer<HTHREAD_NETWORK_CONTEXT> threadNetworkContext,
) =>
    _SrpCreateThreadNetworkContext(
      enterpriseId,
      threadNetworkContext,
    );

late final _SrpCreateThreadNetworkContext = _srpapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> enterpriseId,
  Pointer<HTHREAD_NETWORK_CONTEXT> threadNetworkContext,
),
    int Function(
  Pointer<Utf16> enterpriseId,
  Pointer<HTHREAD_NETWORK_CONTEXT> threadNetworkContext,
)>('SrpCreateThreadNetworkContext');

int SrpDisablePermissiveModeFileEncryption() =>
    _SrpDisablePermissiveModeFileEncryption();

late final _SrpDisablePermissiveModeFileEncryption =
    _srpapi.lookupFunction<Int32 Function(), int Function()>(
        'SrpDisablePermissiveModeFileEncryption');

int SrpDoesPolicyAllowAppExecution(
  Pointer<PACKAGE_ID> packageId,
  Pointer<Int32> isAllowed,
) =>
    _SrpDoesPolicyAllowAppExecution(
      packageId,
      isAllowed,
    );

late final _SrpDoesPolicyAllowAppExecution = _srpapi.lookupFunction<
    Int32 Function(
  Pointer<PACKAGE_ID> packageId,
  Pointer<Int32> isAllowed,
),
    int Function(
  Pointer<PACKAGE_ID> packageId,
  Pointer<Int32> isAllowed,
)>('SrpDoesPolicyAllowAppExecution');

int SrpEnablePermissiveModeFileEncryption(
  Pointer<Utf16> enterpriseId,
) =>
    _SrpEnablePermissiveModeFileEncryption(
      enterpriseId,
    );

late final _SrpEnablePermissiveModeFileEncryption = _srpapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> enterpriseId,
),
    int Function(
  Pointer<Utf16> enterpriseId,
)>('SrpEnablePermissiveModeFileEncryption');

int SrpGetEnterpriseIds(
  int tokenHandle,
  Pointer<Uint32> numberOfBytes,
  Pointer<Pointer<Utf16>> enterpriseIds,
  Pointer<Uint32> enterpriseIdCount,
) =>
    _SrpGetEnterpriseIds(
      tokenHandle,
      numberOfBytes,
      enterpriseIds,
      enterpriseIdCount,
    );

late final _SrpGetEnterpriseIds = _srpapi.lookupFunction<
    Int32 Function(
  IntPtr tokenHandle,
  Pointer<Uint32> numberOfBytes,
  Pointer<Pointer<Utf16>> enterpriseIds,
  Pointer<Uint32> enterpriseIdCount,
),
    int Function(
  int tokenHandle,
  Pointer<Uint32> numberOfBytes,
  Pointer<Pointer<Utf16>> enterpriseIds,
  Pointer<Uint32> enterpriseIdCount,
)>('SrpGetEnterpriseIds');

int SrpGetEnterprisePolicy(
  int tokenHandle,
  Pointer<Uint32> policyFlags,
) =>
    _SrpGetEnterprisePolicy(
      tokenHandle,
      policyFlags,
    );

late final _SrpGetEnterprisePolicy = _srpapi.lookupFunction<
    Int32 Function(
  IntPtr tokenHandle,
  Pointer<Uint32> policyFlags,
),
    int Function(
  int tokenHandle,
  Pointer<Uint32> policyFlags,
)>('SrpGetEnterprisePolicy');

int SrpHostingInitialize(
  int Version,
  int Type,
  Pointer pvData,
  int cbData,
) =>
    _SrpHostingInitialize(
      Version,
      Type,
      pvData,
      cbData,
    );

late final _SrpHostingInitialize = _srpapi.lookupFunction<
    Int32 Function(
  Int32 Version,
  Int32 Type,
  Pointer pvData,
  Uint32 cbData,
),
    int Function(
  int Version,
  int Type,
  Pointer pvData,
  int cbData,
)>('SrpHostingInitialize');

void SrpHostingTerminate(
  int Type,
) =>
    _SrpHostingTerminate(
      Type,
    );

late final _SrpHostingTerminate = _srpapi.lookupFunction<
    Void Function(
  Int32 Type,
),
    void Function(
  int Type,
)>('SrpHostingTerminate');

int SrpIsTokenService(
  int TokenHandle,
  Pointer<Uint8> IsTokenService,
) =>
    _SrpIsTokenService(
      TokenHandle,
      IsTokenService,
    );

late final _SrpIsTokenService = _srpapi.lookupFunction<
    Int32 Function(
  IntPtr TokenHandle,
  Pointer<Uint8> IsTokenService,
),
    int Function(
  int TokenHandle,
  Pointer<Uint8> IsTokenService,
)>('SrpIsTokenService');

int SrpSetTokenEnterpriseId(
  int tokenHandle,
  Pointer<Utf16> enterpriseId,
) =>
    _SrpSetTokenEnterpriseId(
      tokenHandle,
      enterpriseId,
    );

late final _SrpSetTokenEnterpriseId = _srpapi.lookupFunction<
    Int32 Function(
  IntPtr tokenHandle,
  Pointer<Utf16> enterpriseId,
),
    int Function(
  int tokenHandle,
  Pointer<Utf16> enterpriseId,
)>('SrpSetTokenEnterpriseId');

// -----------------------------------------------------------------------
// efswrt.dll
// -----------------------------------------------------------------------
final _efswrt = DynamicLibrary.open('efswrt.dll');

int ProtectFileToEnterpriseIdentity(
  Pointer<Utf16> fileOrFolderPath,
  Pointer<Utf16> identity,
) =>
    _ProtectFileToEnterpriseIdentity(
      fileOrFolderPath,
      identity,
    );

late final _ProtectFileToEnterpriseIdentity = _efswrt.lookupFunction<
    Int32 Function(
  Pointer<Utf16> fileOrFolderPath,
  Pointer<Utf16> identity,
),
    int Function(
  Pointer<Utf16> fileOrFolderPath,
  Pointer<Utf16> identity,
)>('ProtectFileToEnterpriseIdentity');

int UnprotectFile(
  Pointer<Utf16> fileOrFolderPath,
  Pointer<FILE_UNPROTECT_OPTIONS> options,
) =>
    _UnprotectFile(
      fileOrFolderPath,
      options,
    );

late final _UnprotectFile = _efswrt.lookupFunction<
    Int32 Function(
  Pointer<Utf16> fileOrFolderPath,
  Pointer<FILE_UNPROTECT_OPTIONS> options,
),
    int Function(
  Pointer<Utf16> fileOrFolderPath,
  Pointer<FILE_UNPROTECT_OPTIONS> options,
)>('UnprotectFile');
