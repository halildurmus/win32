// IEffectivePermission2.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../foundation/structs.g.dart';
import '../../../security/authorization/ui/structs.g.dart';
import '../../../security/structs.g.dart';
import '../../../security/authorization/structs.g.dart';

/// @nodoc
const IID_IEffectivePermission2 = '{941FABCA-DD47-4FCA-90BB-B0E10255F20D}';

/// {@category Interface}
/// {@category com}
class IEffectivePermission2 extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IEffectivePermission2(Pointer<COMObject> ptr) : super(ptr);

  int ComputeEffectivePermissionWithSecondarySecurity(
    int pSid,
    int pDeviceSid,
    Pointer<Utf16> pszServerName,
    Pointer<SECURITY_OBJECT> pSecurityObjects,
    int dwSecurityObjectCount,
    Pointer<TOKEN_GROUPS> pUserGroups,
    Pointer<Int32> pAuthzUserGroupsOperations,
    Pointer<TOKEN_GROUPS> pDeviceGroups,
    Pointer<Int32> pAuthzDeviceGroupsOperations,
    Pointer<AUTHZ_SECURITY_ATTRIBUTES_INFORMATION> pAuthzUserClaims,
    Pointer<Int32> pAuthzUserClaimsOperations,
    Pointer<AUTHZ_SECURITY_ATTRIBUTES_INFORMATION> pAuthzDeviceClaims,
    Pointer<Int32> pAuthzDeviceClaimsOperations,
    Pointer<EFFPERM_RESULT_LIST> pEffpermResultLists,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr pSid,
            IntPtr pDeviceSid,
            Pointer<Utf16> pszServerName,
            Pointer<SECURITY_OBJECT> pSecurityObjects,
            Uint32 dwSecurityObjectCount,
            Pointer<TOKEN_GROUPS> pUserGroups,
            Pointer<Int32> pAuthzUserGroupsOperations,
            Pointer<TOKEN_GROUPS> pDeviceGroups,
            Pointer<Int32> pAuthzDeviceGroupsOperations,
            Pointer<AUTHZ_SECURITY_ATTRIBUTES_INFORMATION> pAuthzUserClaims,
            Pointer<Int32> pAuthzUserClaimsOperations,
            Pointer<AUTHZ_SECURITY_ATTRIBUTES_INFORMATION> pAuthzDeviceClaims,
            Pointer<Int32> pAuthzDeviceClaimsOperations,
            Pointer<EFFPERM_RESULT_LIST> pEffpermResultLists,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int pSid,
            int pDeviceSid,
            Pointer<Utf16> pszServerName,
            Pointer<SECURITY_OBJECT> pSecurityObjects,
            int dwSecurityObjectCount,
            Pointer<TOKEN_GROUPS> pUserGroups,
            Pointer<Int32> pAuthzUserGroupsOperations,
            Pointer<TOKEN_GROUPS> pDeviceGroups,
            Pointer<Int32> pAuthzDeviceGroupsOperations,
            Pointer<AUTHZ_SECURITY_ATTRIBUTES_INFORMATION> pAuthzUserClaims,
            Pointer<Int32> pAuthzUserClaimsOperations,
            Pointer<AUTHZ_SECURITY_ATTRIBUTES_INFORMATION> pAuthzDeviceClaims,
            Pointer<Int32> pAuthzDeviceClaimsOperations,
            Pointer<EFFPERM_RESULT_LIST> pEffpermResultLists,
          )>()(
        ptr.ref.lpVtbl,
        pSid,
        pDeviceSid,
        pszServerName,
        pSecurityObjects,
        dwSecurityObjectCount,
        pUserGroups,
        pAuthzUserGroupsOperations,
        pDeviceGroups,
        pAuthzDeviceGroupsOperations,
        pAuthzUserClaims,
        pAuthzUserClaimsOperations,
        pAuthzDeviceClaims,
        pAuthzDeviceClaimsOperations,
        pEffpermResultLists,
      );
}
