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
import '../../networkmanagement/netmanagement/structs.g.dart';
import '../../security/cryptography/structs.g.dart';
import '../../security/structs.g.dart';
import '../../networkmanagement/netmanagement/INetCfgComponent.dart';

/// {@category Struct}
class ACCESS_INFO_0 extends Struct {
  external Pointer<Utf16> acc0_resource_name;
}

/// {@category Struct}
class ACCESS_INFO_1 extends Struct {
  external Pointer<Utf16> acc1_resource_name;

  @Uint32()
  external int acc1_attr;

  @Uint32()
  external int acc1_count;
}

/// {@category Struct}
class ACCESS_INFO_1002 extends Struct {
  @Uint32()
  external int acc1002_attr;
}

/// {@category Struct}
class ACCESS_LIST extends Struct {
  external Pointer<Utf16> acl_ugname;

  @Uint32()
  external int acl_access;
}

/// {@category Struct}
class ADMIN_OTHER_INFO extends Struct {
  @Uint32()
  external int alrtad_errcode;

  @Uint32()
  external int alrtad_numstrings;
}

/// {@category Struct}
class AE_ACCLIM extends Struct {
  @Uint32()
  external int ae_al_compname;

  @Uint32()
  external int ae_al_username;

  @Uint32()
  external int ae_al_resname;

  @Uint32()
  external int ae_al_limit;
}

/// {@category Struct}
class AE_ACLMOD extends Struct {
  @Uint32()
  external int ae_am_compname;

  @Uint32()
  external int ae_am_username;

  @Uint32()
  external int ae_am_resname;

  @Uint32()
  external int ae_am_action;

  @Uint32()
  external int ae_am_datalen;
}

/// {@category Struct}
class AE_CLOSEFILE extends Struct {
  @Uint32()
  external int ae_cf_compname;

  @Uint32()
  external int ae_cf_username;

  @Uint32()
  external int ae_cf_resname;

  @Uint32()
  external int ae_cf_fileid;

  @Uint32()
  external int ae_cf_duration;

  @Uint32()
  external int ae_cf_reason;
}

/// {@category Struct}
class AE_CONNREJ extends Struct {
  @Uint32()
  external int ae_cr_compname;

  @Uint32()
  external int ae_cr_username;

  @Uint32()
  external int ae_cr_netname;

  @Uint32()
  external int ae_cr_reason;
}

/// {@category Struct}
class AE_CONNSTART extends Struct {
  @Uint32()
  external int ae_ct_compname;

  @Uint32()
  external int ae_ct_username;

  @Uint32()
  external int ae_ct_netname;

  @Uint32()
  external int ae_ct_connid;
}

/// {@category Struct}
class AE_CONNSTOP extends Struct {
  @Uint32()
  external int ae_cp_compname;

  @Uint32()
  external int ae_cp_username;

  @Uint32()
  external int ae_cp_netname;

  @Uint32()
  external int ae_cp_connid;

  @Uint32()
  external int ae_cp_reason;
}

/// {@category Struct}
class AE_GENERIC extends Struct {
  @Uint32()
  external int ae_ge_msgfile;

  @Uint32()
  external int ae_ge_msgnum;

  @Uint32()
  external int ae_ge_params;

  @Uint32()
  external int ae_ge_param1;

  @Uint32()
  external int ae_ge_param2;

  @Uint32()
  external int ae_ge_param3;

  @Uint32()
  external int ae_ge_param4;

  @Uint32()
  external int ae_ge_param5;

  @Uint32()
  external int ae_ge_param6;

  @Uint32()
  external int ae_ge_param7;

  @Uint32()
  external int ae_ge_param8;

  @Uint32()
  external int ae_ge_param9;
}

/// {@category Struct}
class AE_LOCKOUT extends Struct {
  @Uint32()
  external int ae_lk_compname;

  @Uint32()
  external int ae_lk_username;

  @Uint32()
  external int ae_lk_action;

  @Uint32()
  external int ae_lk_bad_pw_count;
}

/// {@category Struct}
class AE_NETLOGOFF extends Struct {
  @Uint32()
  external int ae_nf_compname;

  @Uint32()
  external int ae_nf_username;

  @Uint32()
  external int ae_nf_reserved1;

  @Uint32()
  external int ae_nf_reserved2;
}

/// {@category Struct}
class AE_NETLOGON extends Struct {
  @Uint32()
  external int ae_no_compname;

  @Uint32()
  external int ae_no_username;

  @Uint32()
  external int ae_no_privilege;

  @Uint32()
  external int ae_no_authflags;
}

/// {@category Struct}
class AE_RESACCESS extends Struct {
  @Uint32()
  external int ae_ra_compname;

  @Uint32()
  external int ae_ra_username;

  @Uint32()
  external int ae_ra_resname;

  @Uint32()
  external int ae_ra_operation;

  @Uint32()
  external int ae_ra_returncode;

  @Uint32()
  external int ae_ra_restype;

  @Uint32()
  external int ae_ra_fileid;
}

/// {@category Struct}
class AE_RESACCESSREJ extends Struct {
  @Uint32()
  external int ae_rr_compname;

  @Uint32()
  external int ae_rr_username;

  @Uint32()
  external int ae_rr_resname;

  @Uint32()
  external int ae_rr_operation;
}

/// {@category Struct}
class AE_SERVICESTAT extends Struct {
  @Uint32()
  external int ae_ss_compname;

  @Uint32()
  external int ae_ss_username;

  @Uint32()
  external int ae_ss_svcname;

  @Uint32()
  external int ae_ss_status;

  @Uint32()
  external int ae_ss_code;

  @Uint32()
  external int ae_ss_text;

  @Uint32()
  external int ae_ss_returnval;
}

/// {@category Struct}
class AE_SESSLOGOFF extends Struct {
  @Uint32()
  external int ae_sf_compname;

  @Uint32()
  external int ae_sf_username;

  @Uint32()
  external int ae_sf_reason;
}

/// {@category Struct}
class AE_SESSLOGON extends Struct {
  @Uint32()
  external int ae_so_compname;

  @Uint32()
  external int ae_so_username;

  @Uint32()
  external int ae_so_privilege;
}

/// {@category Struct}
class AE_SESSPWERR extends Struct {
  @Uint32()
  external int ae_sp_compname;

  @Uint32()
  external int ae_sp_username;
}

/// {@category Struct}
class AE_SRVSTATUS extends Struct {
  @Uint32()
  external int ae_sv_status;
}

/// {@category Struct}
class AE_UASMOD extends Struct {
  @Uint32()
  external int ae_um_compname;

  @Uint32()
  external int ae_um_username;

  @Uint32()
  external int ae_um_resname;

  @Uint32()
  external int ae_um_rectype;

  @Uint32()
  external int ae_um_action;

  @Uint32()
  external int ae_um_datalen;
}

/// {@category Struct}
class AT_ENUM extends Struct {
  @Uint32()
  external int JobId;

  @IntPtr()
  external int JobTime;

  @Uint32()
  external int DaysOfMonth;

  @Uint8()
  external int DaysOfWeek;

  @Uint8()
  external int Flags;

  external Pointer<Utf16> Command;
}

/// {@category Struct}
class AT_INFO extends Struct {
  @IntPtr()
  external int JobTime;

  @Uint32()
  external int DaysOfMonth;

  @Uint8()
  external int DaysOfWeek;

  @Uint8()
  external int Flags;

  external Pointer<Utf16> Command;
}

/// {@category Struct}
class AUDIT_ENTRY extends Struct {
  @Uint32()
  external int ae_len;

  @Uint32()
  external int ae_reserved;

  @Uint32()
  external int ae_time;

  @Uint32()
  external int ae_type;

  @Uint32()
  external int ae_data_offset;

  @Uint32()
  external int ae_data_size;
}

/// {@category Struct}
class CONFIG_INFO_0 extends Struct {
  external Pointer<Utf16> cfgi0_key;

  external Pointer<Utf16> cfgi0_data;
}

/// {@category Struct}
class DSREG_JOIN_INFO extends Struct {
  @Int32()
  external int joinType;

  external Pointer<CERT_CONTEXT> pJoinCertificate;

  external Pointer<Utf16> pszDeviceId;

  external Pointer<Utf16> pszIdpDomain;

  external Pointer<Utf16> pszTenantId;

  external Pointer<Utf16> pszJoinUserEmail;

  external Pointer<Utf16> pszTenantDisplayName;

  external Pointer<Utf16> pszMdmEnrollmentUrl;

  external Pointer<Utf16> pszMdmTermsOfUseUrl;

  external Pointer<Utf16> pszMdmComplianceUrl;

  external Pointer<Utf16> pszUserSettingSyncUrl;

  external Pointer<DSREG_USER_INFO> pUserInfo;
}

/// {@category Struct}
class DSREG_USER_INFO extends Struct {
  external Pointer<Utf16> pszUserEmail;

  external Pointer<Utf16> pszUserKeyId;

  external Pointer<Utf16> pszUserKeyName;
}

/// {@category Struct}
class ERRLOG_OTHER_INFO extends Struct {
  @Uint32()
  external int alrter_errcode;

  @Uint32()
  external int alrter_offset;
}

/// {@category Struct}
class ERROR_LOG extends Struct {
  @Uint32()
  external int el_len;

  @Uint32()
  external int el_reserved;

  @Uint32()
  external int el_time;

  @Uint32()
  external int el_error;

  external Pointer<Utf16> el_name;

  external Pointer<Utf16> el_text;

  external Pointer<Uint8> el_data;

  @Uint32()
  external int el_data_size;

  @Uint32()
  external int el_nstrings;
}

/// {@category Struct}
class FLAT_STRING extends Struct {
  @Int16()
  external int MaximumLength;

  @Int16()
  external int Length;

  @Array(1)
  external Array<Uint8> Buffer;
}

/// {@category Struct}
class GROUP_INFO_0 extends Struct {
  external Pointer<Utf16> grpi0_name;
}

/// {@category Struct}
class GROUP_INFO_1 extends Struct {
  external Pointer<Utf16> grpi1_name;

  external Pointer<Utf16> grpi1_comment;
}

/// {@category Struct}
class GROUP_INFO_1002 extends Struct {
  external Pointer<Utf16> grpi1002_comment;
}

/// {@category Struct}
class GROUP_INFO_1005 extends Struct {
  @Uint32()
  external int grpi1005_attributes;
}

/// {@category Struct}
class GROUP_INFO_2 extends Struct {
  external Pointer<Utf16> grpi2_name;

  external Pointer<Utf16> grpi2_comment;

  @Uint32()
  external int grpi2_group_id;

  @Uint32()
  external int grpi2_attributes;
}

/// {@category Struct}
class GROUP_INFO_3 extends Struct {
  external Pointer<Utf16> grpi3_name;

  external Pointer<Utf16> grpi3_comment;

  @IntPtr()
  external int grpi3_group_sid;

  @Uint32()
  external int grpi3_attributes;
}

/// {@category Struct}
class GROUP_USERS_INFO_0 extends Struct {
  external Pointer<Utf16> grui0_name;
}

/// {@category Struct}
class GROUP_USERS_INFO_1 extends Struct {
  external Pointer<Utf16> grui1_name;

  @Uint32()
  external int grui1_attributes;
}

/// {@category Struct}
class HARDWARE_ADDRESS extends Struct {
  @Array(6)
  external Array<Uint8> Address;
}

/// {@category Struct}
class HLOG extends Struct {
  @Uint32()
  external int time;

  @Uint32()
  external int last_flags;

  @Uint32()
  external int offset;

  @Uint32()
  external int rec_offset;
}

/// {@category Struct}
class LOCALGROUP_INFO_0 extends Struct {
  external Pointer<Utf16> lgrpi0_name;
}

/// {@category Struct}
class LOCALGROUP_INFO_1 extends Struct {
  external Pointer<Utf16> lgrpi1_name;

  external Pointer<Utf16> lgrpi1_comment;
}

/// {@category Struct}
class LOCALGROUP_INFO_1002 extends Struct {
  external Pointer<Utf16> lgrpi1002_comment;
}

/// {@category Struct}
class LOCALGROUP_MEMBERS_INFO_0 extends Struct {
  @IntPtr()
  external int lgrmi0_sid;
}

/// {@category Struct}
class LOCALGROUP_MEMBERS_INFO_1 extends Struct {
  @IntPtr()
  external int lgrmi1_sid;

  @Int32()
  external int lgrmi1_sidusage;

  external Pointer<Utf16> lgrmi1_name;
}

/// {@category Struct}
class LOCALGROUP_MEMBERS_INFO_2 extends Struct {
  @IntPtr()
  external int lgrmi2_sid;

  @Int32()
  external int lgrmi2_sidusage;

  external Pointer<Utf16> lgrmi2_domainandname;
}

/// {@category Struct}
class LOCALGROUP_MEMBERS_INFO_3 extends Struct {
  external Pointer<Utf16> lgrmi3_domainandname;
}

/// {@category Struct}
class LOCALGROUP_USERS_INFO_0 extends Struct {
  external Pointer<Utf16> lgrui0_name;
}

/// {@category Struct}
class MPR_PROTOCOL_0 extends Struct {
  @Uint32()
  external int dwProtocolId;

  @Array(41)
  external Array<Uint16> _wszProtocol;

  String get wszProtocol {
    final charCodes = <int>[];
    for (var i = 0; i < 41; i++) {
      charCodes.add(_wszProtocol[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszProtocol(String value) {
    final stringToStore = value.padRight(41, '\x00');
    for (var i = 0; i < 41; i++) {
      _wszProtocol[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(49)
  external Array<Uint16> _wszDLLName;

  String get wszDLLName {
    final charCodes = <int>[];
    for (var i = 0; i < 49; i++) {
      charCodes.add(_wszDLLName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszDLLName(String value) {
    final stringToStore = value.padRight(49, '\x00');
    for (var i = 0; i < 49; i++) {
      _wszDLLName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class MSA_INFO_0 extends Struct {
  @Int32()
  external int State;
}

/// {@category Struct}
class MSG_INFO_0 extends Struct {
  external Pointer<Utf16> msgi0_name;
}

/// {@category Struct}
class MSG_INFO_1 extends Struct {
  external Pointer<Utf16> msgi1_name;

  @Uint32()
  external int msgi1_forward_flag;

  external Pointer<Utf16> msgi1_forward;
}

/// {@category Struct}
class NETLOGON_INFO_1 extends Struct {
  @Uint32()
  external int netlog1_flags;

  @Uint32()
  external int netlog1_pdc_connection_status;
}

/// {@category Struct}
class NETLOGON_INFO_2 extends Struct {
  @Uint32()
  external int netlog2_flags;

  @Uint32()
  external int netlog2_pdc_connection_status;

  external Pointer<Utf16> netlog2_trusted_dc_name;

  @Uint32()
  external int netlog2_tc_connection_status;
}

/// {@category Struct}
class NETLOGON_INFO_3 extends Struct {
  @Uint32()
  external int netlog3_flags;

  @Uint32()
  external int netlog3_logon_attempts;

  @Uint32()
  external int netlog3_reserved1;

  @Uint32()
  external int netlog3_reserved2;

  @Uint32()
  external int netlog3_reserved3;

  @Uint32()
  external int netlog3_reserved4;

  @Uint32()
  external int netlog3_reserved5;
}

/// {@category Struct}
class NETLOGON_INFO_4 extends Struct {
  external Pointer<Utf16> netlog4_trusted_dc_name;

  external Pointer<Utf16> netlog4_trusted_domain_name;
}

/// {@category Struct}
class NETSETUP_PROVISIONING_PARAMS extends Struct {
  @Uint32()
  external int dwVersion;

  external Pointer<Utf16> lpDomain;

  external Pointer<Utf16> lpHostName;

  external Pointer<Utf16> lpMachineAccountOU;

  external Pointer<Utf16> lpDcName;

  @Uint32()
  external int dwProvisionOptions;

  external Pointer<Pointer<Utf16>> aCertTemplateNames;

  @Uint32()
  external int cCertTemplateNames;

  external Pointer<Pointer<Utf16>> aMachinePolicyNames;

  @Uint32()
  external int cMachinePolicyNames;

  external Pointer<Pointer<Utf16>> aMachinePolicyPaths;

  @Uint32()
  external int cMachinePolicyPaths;

  external Pointer<Utf16> lpNetbiosName;

  external Pointer<Utf16> lpSiteName;

  external Pointer<Utf16> lpPrimaryDNSDomain;
}

/// {@category Struct}
class NETWORK_NAME extends Struct {
  external FLAT_STRING Name;
}

/// {@category Struct}
class NET_DISPLAY_GROUP extends Struct {
  external Pointer<Utf16> grpi3_name;

  external Pointer<Utf16> grpi3_comment;

  @Uint32()
  external int grpi3_group_id;

  @Uint32()
  external int grpi3_attributes;

  @Uint32()
  external int grpi3_next_index;
}

/// {@category Struct}
class NET_DISPLAY_MACHINE extends Struct {
  external Pointer<Utf16> usri2_name;

  external Pointer<Utf16> usri2_comment;

  @Uint32()
  external int usri2_flags;

  @Uint32()
  external int usri2_user_id;

  @Uint32()
  external int usri2_next_index;
}

/// {@category Struct}
class NET_DISPLAY_USER extends Struct {
  external Pointer<Utf16> usri1_name;

  external Pointer<Utf16> usri1_comment;

  @Uint32()
  external int usri1_flags;

  external Pointer<Utf16> usri1_full_name;

  @Uint32()
  external int usri1_user_id;

  @Uint32()
  external int usri1_next_index;
}

/// {@category Struct}
class NET_VALIDATE_AUTHENTICATION_INPUT_ARG extends Struct {
  external NET_VALIDATE_PERSISTED_FIELDS InputPersistedFields;

  @Uint8()
  external int PasswordMatched;
}

/// {@category Struct}
class NET_VALIDATE_OUTPUT_ARG extends Struct {
  external NET_VALIDATE_PERSISTED_FIELDS ChangedPersistedFields;

  @Uint32()
  external int ValidationStatus;
}

/// {@category Struct}
class NET_VALIDATE_PASSWORD_CHANGE_INPUT_ARG extends Struct {
  external NET_VALIDATE_PERSISTED_FIELDS InputPersistedFields;

  external Pointer<Utf16> ClearPassword;

  external Pointer<Utf16> UserAccountName;

  external NET_VALIDATE_PASSWORD_HASH HashedPassword;

  @Uint8()
  external int PasswordMatch;
}

/// {@category Struct}
class NET_VALIDATE_PASSWORD_HASH extends Struct {
  @Uint32()
  external int Length;

  external Pointer<Uint8> Hash;
}

/// {@category Struct}
class NET_VALIDATE_PASSWORD_RESET_INPUT_ARG extends Struct {
  external NET_VALIDATE_PERSISTED_FIELDS InputPersistedFields;

  external Pointer<Utf16> ClearPassword;

  external Pointer<Utf16> UserAccountName;

  external NET_VALIDATE_PASSWORD_HASH HashedPassword;

  @Uint8()
  external int PasswordMustChangeAtNextLogon;

  @Uint8()
  external int ClearLockout;
}

/// {@category Struct}
class NET_VALIDATE_PERSISTED_FIELDS extends Struct {
  @Uint32()
  external int PresentFields;

  external FILETIME PasswordLastSet;

  external FILETIME BadPasswordTime;

  external FILETIME LockoutTime;

  @Uint32()
  external int BadPasswordCount;

  @Uint32()
  external int PasswordHistoryLength;

  external Pointer<NET_VALIDATE_PASSWORD_HASH> PasswordHistory;
}

/// {@category Struct}
class OBO_TOKEN extends Struct {
  @Int32()
  external int Type;

  external Pointer<COMObject> pncc;

  external Pointer<Utf16> pszwManufacturer;

  external Pointer<Utf16> pszwProduct;

  external Pointer<Utf16> pszwDisplayName;

  @Int32()
  external int fRegistered;
}

/// {@category Struct}
class PRINT_OTHER_INFO extends Struct {
  @Uint32()
  external int alrtpr_jobid;

  @Uint32()
  external int alrtpr_status;

  @Uint32()
  external int alrtpr_submitted;

  @Uint32()
  external int alrtpr_size;
}

/// {@category Struct}
class RASCON_IPUI extends Struct {
  external GUID guidConnection;

  @Int32()
  external int fIPv6Cfg;

  @Uint32()
  external int dwFlags;

  @Array(16)
  external Array<Uint16> _pszwIpAddr;

  String get pszwIpAddr {
    final charCodes = <int>[];
    for (var i = 0; i < 16; i++) {
      charCodes.add(_pszwIpAddr[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set pszwIpAddr(String value) {
    final stringToStore = value.padRight(16, '\x00');
    for (var i = 0; i < 16; i++) {
      _pszwIpAddr[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(16)
  external Array<Uint16> _pszwDnsAddr;

  String get pszwDnsAddr {
    final charCodes = <int>[];
    for (var i = 0; i < 16; i++) {
      charCodes.add(_pszwDnsAddr[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set pszwDnsAddr(String value) {
    final stringToStore = value.padRight(16, '\x00');
    for (var i = 0; i < 16; i++) {
      _pszwDnsAddr[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(16)
  external Array<Uint16> _pszwDns2Addr;

  String get pszwDns2Addr {
    final charCodes = <int>[];
    for (var i = 0; i < 16; i++) {
      charCodes.add(_pszwDns2Addr[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set pszwDns2Addr(String value) {
    final stringToStore = value.padRight(16, '\x00');
    for (var i = 0; i < 16; i++) {
      _pszwDns2Addr[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(16)
  external Array<Uint16> _pszwWinsAddr;

  String get pszwWinsAddr {
    final charCodes = <int>[];
    for (var i = 0; i < 16; i++) {
      charCodes.add(_pszwWinsAddr[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set pszwWinsAddr(String value) {
    final stringToStore = value.padRight(16, '\x00');
    for (var i = 0; i < 16; i++) {
      _pszwWinsAddr[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(16)
  external Array<Uint16> _pszwWins2Addr;

  String get pszwWins2Addr {
    final charCodes = <int>[];
    for (var i = 0; i < 16; i++) {
      charCodes.add(_pszwWins2Addr[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set pszwWins2Addr(String value) {
    final stringToStore = value.padRight(16, '\x00');
    for (var i = 0; i < 16; i++) {
      _pszwWins2Addr[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(256)
  external Array<Uint16> _pszwDnsSuffix;

  String get pszwDnsSuffix {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_pszwDnsSuffix[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set pszwDnsSuffix(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _pszwDnsSuffix[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(65)
  external Array<Uint16> _pszwIpv6Addr;

  String get pszwIpv6Addr {
    final charCodes = <int>[];
    for (var i = 0; i < 65; i++) {
      charCodes.add(_pszwIpv6Addr[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set pszwIpv6Addr(String value) {
    final stringToStore = value.padRight(65, '\x00');
    for (var i = 0; i < 65; i++) {
      _pszwIpv6Addr[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int dwIpv6PrefixLength;

  @Array(65)
  external Array<Uint16> _pszwIpv6DnsAddr;

  String get pszwIpv6DnsAddr {
    final charCodes = <int>[];
    for (var i = 0; i < 65; i++) {
      charCodes.add(_pszwIpv6DnsAddr[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set pszwIpv6DnsAddr(String value) {
    final stringToStore = value.padRight(65, '\x00');
    for (var i = 0; i < 65; i++) {
      _pszwIpv6DnsAddr[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(65)
  external Array<Uint16> _pszwIpv6Dns2Addr;

  String get pszwIpv6Dns2Addr {
    final charCodes = <int>[];
    for (var i = 0; i < 65; i++) {
      charCodes.add(_pszwIpv6Dns2Addr[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set pszwIpv6Dns2Addr(String value) {
    final stringToStore = value.padRight(65, '\x00');
    for (var i = 0; i < 65; i++) {
      _pszwIpv6Dns2Addr[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int dwIPv4InfMetric;

  @Uint32()
  external int dwIPv6InfMetric;
}

/// {@category Struct}
class REPL_EDIR_INFO_0 extends Struct {
  external Pointer<Utf16> rped0_dirname;
}

/// {@category Struct}
class REPL_EDIR_INFO_1 extends Struct {
  external Pointer<Utf16> rped1_dirname;

  @Uint32()
  external int rped1_integrity;

  @Uint32()
  external int rped1_extent;
}

/// {@category Struct}
class REPL_EDIR_INFO_1000 extends Struct {
  @Uint32()
  external int rped1000_integrity;
}

/// {@category Struct}
class REPL_EDIR_INFO_1001 extends Struct {
  @Uint32()
  external int rped1001_extent;
}

/// {@category Struct}
class REPL_EDIR_INFO_2 extends Struct {
  external Pointer<Utf16> rped2_dirname;

  @Uint32()
  external int rped2_integrity;

  @Uint32()
  external int rped2_extent;

  @Uint32()
  external int rped2_lockcount;

  @Uint32()
  external int rped2_locktime;
}

/// {@category Struct}
class REPL_IDIR_INFO_0 extends Struct {
  external Pointer<Utf16> rpid0_dirname;
}

/// {@category Struct}
class REPL_IDIR_INFO_1 extends Struct {
  external Pointer<Utf16> rpid1_dirname;

  @Uint32()
  external int rpid1_state;

  external Pointer<Utf16> rpid1_mastername;

  @Uint32()
  external int rpid1_last_update_time;

  @Uint32()
  external int rpid1_lockcount;

  @Uint32()
  external int rpid1_locktime;
}

/// {@category Struct}
class REPL_INFO_0 extends Struct {
  @Uint32()
  external int rp0_role;

  external Pointer<Utf16> rp0_exportpath;

  external Pointer<Utf16> rp0_exportlist;

  external Pointer<Utf16> rp0_importpath;

  external Pointer<Utf16> rp0_importlist;

  external Pointer<Utf16> rp0_logonusername;

  @Uint32()
  external int rp0_interval;

  @Uint32()
  external int rp0_pulse;

  @Uint32()
  external int rp0_guardtime;

  @Uint32()
  external int rp0_random;
}

/// {@category Struct}
class REPL_INFO_1000 extends Struct {
  @Uint32()
  external int rp1000_interval;
}

/// {@category Struct}
class REPL_INFO_1001 extends Struct {
  @Uint32()
  external int rp1001_pulse;
}

/// {@category Struct}
class REPL_INFO_1002 extends Struct {
  @Uint32()
  external int rp1002_guardtime;
}

/// {@category Struct}
class REPL_INFO_1003 extends Struct {
  @Uint32()
  external int rp1003_random;
}

/// {@category Struct}
class RTR_INFO_BLOCK_HEADER extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Uint32()
  external int TocEntriesCount;

  @Array(1)
  external Array<RTR_TOC_ENTRY> TocEntry;
}

/// {@category Struct}
class RTR_TOC_ENTRY extends Struct {
  @Uint32()
  external int InfoType;

  @Uint32()
  external int InfoSize;

  @Uint32()
  external int Count;

  @Uint32()
  external int Offset;
}

/// {@category Struct}
class SERVER_INFO_100 extends Struct {
  @Uint32()
  external int sv100_platform_id;

  external Pointer<Utf16> sv100_name;
}

/// {@category Struct}
class SERVER_INFO_1005 extends Struct {
  external Pointer<Utf16> sv1005_comment;
}

/// {@category Struct}
class SERVER_INFO_101 extends Struct {
  @Uint32()
  external int sv101_platform_id;

  external Pointer<Utf16> sv101_name;

  @Uint32()
  external int sv101_version_major;

  @Uint32()
  external int sv101_version_minor;

  @Uint32()
  external int sv101_type;

  external Pointer<Utf16> sv101_comment;
}

/// {@category Struct}
class SERVER_INFO_1010 extends Struct {
  @Int32()
  external int sv1010_disc;
}

/// {@category Struct}
class SERVER_INFO_1016 extends Struct {
  @Uint32()
  external int sv1016_hidden;
}

/// {@category Struct}
class SERVER_INFO_1017 extends Struct {
  @Uint32()
  external int sv1017_announce;
}

/// {@category Struct}
class SERVER_INFO_1018 extends Struct {
  @Uint32()
  external int sv1018_anndelta;
}

/// {@category Struct}
class SERVER_INFO_102 extends Struct {
  @Uint32()
  external int sv102_platform_id;

  external Pointer<Utf16> sv102_name;

  @Uint32()
  external int sv102_version_major;

  @Uint32()
  external int sv102_version_minor;

  @Uint32()
  external int sv102_type;

  external Pointer<Utf16> sv102_comment;

  @Uint32()
  external int sv102_users;

  @Int32()
  external int sv102_disc;

  @Uint32()
  external int sv102_hidden;

  @Uint32()
  external int sv102_announce;

  @Uint32()
  external int sv102_anndelta;

  @Uint32()
  external int sv102_licenses;

  external Pointer<Utf16> sv102_userpath;
}

/// {@category Struct}
class SERVER_INFO_103 extends Struct {
  @Uint32()
  external int sv103_platform_id;

  external Pointer<Utf16> sv103_name;

  @Uint32()
  external int sv103_version_major;

  @Uint32()
  external int sv103_version_minor;

  @Uint32()
  external int sv103_type;

  external Pointer<Utf16> sv103_comment;

  @Uint32()
  external int sv103_users;

  @Int32()
  external int sv103_disc;

  @Int32()
  external int sv103_hidden;

  @Uint32()
  external int sv103_announce;

  @Uint32()
  external int sv103_anndelta;

  @Uint32()
  external int sv103_licenses;

  external Pointer<Utf16> sv103_userpath;

  @Uint32()
  external int sv103_capabilities;
}

/// {@category Struct}
class SERVER_INFO_1107 extends Struct {
  @Uint32()
  external int sv1107_users;
}

/// {@category Struct}
class SERVER_INFO_1501 extends Struct {
  @Uint32()
  external int sv1501_sessopens;
}

/// {@category Struct}
class SERVER_INFO_1502 extends Struct {
  @Uint32()
  external int sv1502_sessvcs;
}

/// {@category Struct}
class SERVER_INFO_1503 extends Struct {
  @Uint32()
  external int sv1503_opensearch;
}

/// {@category Struct}
class SERVER_INFO_1506 extends Struct {
  @Uint32()
  external int sv1506_maxworkitems;
}

/// {@category Struct}
class SERVER_INFO_1509 extends Struct {
  @Uint32()
  external int sv1509_maxrawbuflen;
}

/// {@category Struct}
class SERVER_INFO_1510 extends Struct {
  @Uint32()
  external int sv1510_sessusers;
}

/// {@category Struct}
class SERVER_INFO_1511 extends Struct {
  @Uint32()
  external int sv1511_sessconns;
}

/// {@category Struct}
class SERVER_INFO_1512 extends Struct {
  @Uint32()
  external int sv1512_maxnonpagedmemoryusage;
}

/// {@category Struct}
class SERVER_INFO_1513 extends Struct {
  @Uint32()
  external int sv1513_maxpagedmemoryusage;
}

/// {@category Struct}
class SERVER_INFO_1514 extends Struct {
  @Int32()
  external int sv1514_enablesoftcompat;
}

/// {@category Struct}
class SERVER_INFO_1515 extends Struct {
  @Int32()
  external int sv1515_enableforcedlogoff;
}

/// {@category Struct}
class SERVER_INFO_1516 extends Struct {
  @Int32()
  external int sv1516_timesource;
}

/// {@category Struct}
class SERVER_INFO_1518 extends Struct {
  @Int32()
  external int sv1518_lmannounce;
}

/// {@category Struct}
class SERVER_INFO_1520 extends Struct {
  @Uint32()
  external int sv1520_maxcopyreadlen;
}

/// {@category Struct}
class SERVER_INFO_1521 extends Struct {
  @Uint32()
  external int sv1521_maxcopywritelen;
}

/// {@category Struct}
class SERVER_INFO_1522 extends Struct {
  @Uint32()
  external int sv1522_minkeepsearch;
}

/// {@category Struct}
class SERVER_INFO_1523 extends Struct {
  @Uint32()
  external int sv1523_maxkeepsearch;
}

/// {@category Struct}
class SERVER_INFO_1524 extends Struct {
  @Uint32()
  external int sv1524_minkeepcomplsearch;
}

/// {@category Struct}
class SERVER_INFO_1525 extends Struct {
  @Uint32()
  external int sv1525_maxkeepcomplsearch;
}

/// {@category Struct}
class SERVER_INFO_1528 extends Struct {
  @Uint32()
  external int sv1528_scavtimeout;
}

/// {@category Struct}
class SERVER_INFO_1529 extends Struct {
  @Uint32()
  external int sv1529_minrcvqueue;
}

/// {@category Struct}
class SERVER_INFO_1530 extends Struct {
  @Uint32()
  external int sv1530_minfreeworkitems;
}

/// {@category Struct}
class SERVER_INFO_1533 extends Struct {
  @Uint32()
  external int sv1533_maxmpxct;
}

/// {@category Struct}
class SERVER_INFO_1534 extends Struct {
  @Uint32()
  external int sv1534_oplockbreakwait;
}

/// {@category Struct}
class SERVER_INFO_1535 extends Struct {
  @Uint32()
  external int sv1535_oplockbreakresponsewait;
}

/// {@category Struct}
class SERVER_INFO_1536 extends Struct {
  @Int32()
  external int sv1536_enableoplocks;
}

/// {@category Struct}
class SERVER_INFO_1537 extends Struct {
  @Int32()
  external int sv1537_enableoplockforceclose;
}

/// {@category Struct}
class SERVER_INFO_1538 extends Struct {
  @Int32()
  external int sv1538_enablefcbopens;
}

/// {@category Struct}
class SERVER_INFO_1539 extends Struct {
  @Int32()
  external int sv1539_enableraw;
}

/// {@category Struct}
class SERVER_INFO_1540 extends Struct {
  @Int32()
  external int sv1540_enablesharednetdrives;
}

/// {@category Struct}
class SERVER_INFO_1541 extends Struct {
  @Int32()
  external int sv1541_minfreeconnections;
}

/// {@category Struct}
class SERVER_INFO_1542 extends Struct {
  @Int32()
  external int sv1542_maxfreeconnections;
}

/// {@category Struct}
class SERVER_INFO_1543 extends Struct {
  @Uint32()
  external int sv1543_initsesstable;
}

/// {@category Struct}
class SERVER_INFO_1544 extends Struct {
  @Uint32()
  external int sv1544_initconntable;
}

/// {@category Struct}
class SERVER_INFO_1545 extends Struct {
  @Uint32()
  external int sv1545_initfiletable;
}

/// {@category Struct}
class SERVER_INFO_1546 extends Struct {
  @Uint32()
  external int sv1546_initsearchtable;
}

/// {@category Struct}
class SERVER_INFO_1547 extends Struct {
  @Uint32()
  external int sv1547_alertschedule;
}

/// {@category Struct}
class SERVER_INFO_1548 extends Struct {
  @Uint32()
  external int sv1548_errorthreshold;
}

/// {@category Struct}
class SERVER_INFO_1549 extends Struct {
  @Uint32()
  external int sv1549_networkerrorthreshold;
}

/// {@category Struct}
class SERVER_INFO_1550 extends Struct {
  @Uint32()
  external int sv1550_diskspacethreshold;
}

/// {@category Struct}
class SERVER_INFO_1552 extends Struct {
  @Uint32()
  external int sv1552_maxlinkdelay;
}

/// {@category Struct}
class SERVER_INFO_1553 extends Struct {
  @Uint32()
  external int sv1553_minlinkthroughput;
}

/// {@category Struct}
class SERVER_INFO_1554 extends Struct {
  @Uint32()
  external int sv1554_linkinfovalidtime;
}

/// {@category Struct}
class SERVER_INFO_1555 extends Struct {
  @Uint32()
  external int sv1555_scavqosinfoupdatetime;
}

/// {@category Struct}
class SERVER_INFO_1556 extends Struct {
  @Uint32()
  external int sv1556_maxworkitemidletime;
}

/// {@category Struct}
class SERVER_INFO_1557 extends Struct {
  @Uint32()
  external int sv1557_maxrawworkitems;
}

/// {@category Struct}
class SERVER_INFO_1560 extends Struct {
  @Uint32()
  external int sv1560_producttype;
}

/// {@category Struct}
class SERVER_INFO_1561 extends Struct {
  @Uint32()
  external int sv1561_serversize;
}

/// {@category Struct}
class SERVER_INFO_1562 extends Struct {
  @Uint32()
  external int sv1562_connectionlessautodisc;
}

/// {@category Struct}
class SERVER_INFO_1563 extends Struct {
  @Uint32()
  external int sv1563_sharingviolationretries;
}

/// {@category Struct}
class SERVER_INFO_1564 extends Struct {
  @Uint32()
  external int sv1564_sharingviolationdelay;
}

/// {@category Struct}
class SERVER_INFO_1565 extends Struct {
  @Uint32()
  external int sv1565_maxglobalopensearch;
}

/// {@category Struct}
class SERVER_INFO_1566 extends Struct {
  @Int32()
  external int sv1566_removeduplicatesearches;
}

/// {@category Struct}
class SERVER_INFO_1567 extends Struct {
  @Uint32()
  external int sv1567_lockviolationretries;
}

/// {@category Struct}
class SERVER_INFO_1568 extends Struct {
  @Uint32()
  external int sv1568_lockviolationoffset;
}

/// {@category Struct}
class SERVER_INFO_1569 extends Struct {
  @Uint32()
  external int sv1569_lockviolationdelay;
}

/// {@category Struct}
class SERVER_INFO_1570 extends Struct {
  @Uint32()
  external int sv1570_mdlreadswitchover;
}

/// {@category Struct}
class SERVER_INFO_1571 extends Struct {
  @Uint32()
  external int sv1571_cachedopenlimit;
}

/// {@category Struct}
class SERVER_INFO_1572 extends Struct {
  @Uint32()
  external int sv1572_criticalthreads;
}

/// {@category Struct}
class SERVER_INFO_1573 extends Struct {
  @Uint32()
  external int sv1573_restrictnullsessaccess;
}

/// {@category Struct}
class SERVER_INFO_1574 extends Struct {
  @Uint32()
  external int sv1574_enablewfw311directipx;
}

/// {@category Struct}
class SERVER_INFO_1575 extends Struct {
  @Uint32()
  external int sv1575_otherqueueaffinity;
}

/// {@category Struct}
class SERVER_INFO_1576 extends Struct {
  @Uint32()
  external int sv1576_queuesamplesecs;
}

/// {@category Struct}
class SERVER_INFO_1577 extends Struct {
  @Uint32()
  external int sv1577_balancecount;
}

/// {@category Struct}
class SERVER_INFO_1578 extends Struct {
  @Uint32()
  external int sv1578_preferredaffinity;
}

/// {@category Struct}
class SERVER_INFO_1579 extends Struct {
  @Uint32()
  external int sv1579_maxfreerfcbs;
}

/// {@category Struct}
class SERVER_INFO_1580 extends Struct {
  @Uint32()
  external int sv1580_maxfreemfcbs;
}

/// {@category Struct}
class SERVER_INFO_1581 extends Struct {
  @Uint32()
  external int sv1581_maxfreemlcbs;
}

/// {@category Struct}
class SERVER_INFO_1582 extends Struct {
  @Uint32()
  external int sv1582_maxfreepagedpoolchunks;
}

/// {@category Struct}
class SERVER_INFO_1583 extends Struct {
  @Uint32()
  external int sv1583_minpagedpoolchunksize;
}

/// {@category Struct}
class SERVER_INFO_1584 extends Struct {
  @Uint32()
  external int sv1584_maxpagedpoolchunksize;
}

/// {@category Struct}
class SERVER_INFO_1585 extends Struct {
  @Int32()
  external int sv1585_sendsfrompreferredprocessor;
}

/// {@category Struct}
class SERVER_INFO_1586 extends Struct {
  @Uint32()
  external int sv1586_maxthreadsperqueue;
}

/// {@category Struct}
class SERVER_INFO_1587 extends Struct {
  @Uint32()
  external int sv1587_cacheddirectorylimit;
}

/// {@category Struct}
class SERVER_INFO_1588 extends Struct {
  @Uint32()
  external int sv1588_maxcopylength;
}

/// {@category Struct}
class SERVER_INFO_1590 extends Struct {
  @Uint32()
  external int sv1590_enablecompression;
}

/// {@category Struct}
class SERVER_INFO_1591 extends Struct {
  @Uint32()
  external int sv1591_autosharewks;
}

/// {@category Struct}
class SERVER_INFO_1592 extends Struct {
  @Uint32()
  external int sv1592_autosharewks;
}

/// {@category Struct}
class SERVER_INFO_1593 extends Struct {
  @Uint32()
  external int sv1593_enablesecuritysignature;
}

/// {@category Struct}
class SERVER_INFO_1594 extends Struct {
  @Uint32()
  external int sv1594_requiresecuritysignature;
}

/// {@category Struct}
class SERVER_INFO_1595 extends Struct {
  @Uint32()
  external int sv1595_minclientbuffersize;
}

/// {@category Struct}
class SERVER_INFO_1596 extends Struct {
  @Uint32()
  external int sv1596_ConnectionNoSessionsTimeout;
}

/// {@category Struct}
class SERVER_INFO_1597 extends Struct {
  @Uint32()
  external int sv1597_IdleThreadTimeOut;
}

/// {@category Struct}
class SERVER_INFO_1598 extends Struct {
  @Uint32()
  external int sv1598_enableW9xsecuritysignature;
}

/// {@category Struct}
class SERVER_INFO_1599 extends Struct {
  @Uint8()
  external int sv1598_enforcekerberosreauthentication;
}

/// {@category Struct}
class SERVER_INFO_1600 extends Struct {
  @Uint8()
  external int sv1598_disabledos;
}

/// {@category Struct}
class SERVER_INFO_1601 extends Struct {
  @Uint32()
  external int sv1598_lowdiskspaceminimum;
}

/// {@category Struct}
class SERVER_INFO_1602 extends Struct {
  @Int32()
  external int sv_1598_disablestrictnamechecking;
}

/// {@category Struct}
class SERVER_INFO_402 extends Struct {
  @Uint32()
  external int sv402_ulist_mtime;

  @Uint32()
  external int sv402_glist_mtime;

  @Uint32()
  external int sv402_alist_mtime;

  external Pointer<Utf16> sv402_alerts;

  @Uint32()
  external int sv402_security;

  @Uint32()
  external int sv402_numadmin;

  @Uint32()
  external int sv402_lanmask;

  external Pointer<Utf16> sv402_guestacct;

  @Uint32()
  external int sv402_chdevs;

  @Uint32()
  external int sv402_chdevq;

  @Uint32()
  external int sv402_chdevjobs;

  @Uint32()
  external int sv402_connections;

  @Uint32()
  external int sv402_shares;

  @Uint32()
  external int sv402_openfiles;

  @Uint32()
  external int sv402_sessopens;

  @Uint32()
  external int sv402_sessvcs;

  @Uint32()
  external int sv402_sessreqs;

  @Uint32()
  external int sv402_opensearch;

  @Uint32()
  external int sv402_activelocks;

  @Uint32()
  external int sv402_numreqbuf;

  @Uint32()
  external int sv402_sizreqbuf;

  @Uint32()
  external int sv402_numbigbuf;

  @Uint32()
  external int sv402_numfiletasks;

  @Uint32()
  external int sv402_alertsched;

  @Uint32()
  external int sv402_erroralert;

  @Uint32()
  external int sv402_logonalert;

  @Uint32()
  external int sv402_accessalert;

  @Uint32()
  external int sv402_diskalert;

  @Uint32()
  external int sv402_netioalert;

  @Uint32()
  external int sv402_maxauditsz;

  external Pointer<Utf16> sv402_srvheuristics;
}

/// {@category Struct}
class SERVER_INFO_403 extends Struct {
  @Uint32()
  external int sv403_ulist_mtime;

  @Uint32()
  external int sv403_glist_mtime;

  @Uint32()
  external int sv403_alist_mtime;

  external Pointer<Utf16> sv403_alerts;

  @Uint32()
  external int sv403_security;

  @Uint32()
  external int sv403_numadmin;

  @Uint32()
  external int sv403_lanmask;

  external Pointer<Utf16> sv403_guestacct;

  @Uint32()
  external int sv403_chdevs;

  @Uint32()
  external int sv403_chdevq;

  @Uint32()
  external int sv403_chdevjobs;

  @Uint32()
  external int sv403_connections;

  @Uint32()
  external int sv403_shares;

  @Uint32()
  external int sv403_openfiles;

  @Uint32()
  external int sv403_sessopens;

  @Uint32()
  external int sv403_sessvcs;

  @Uint32()
  external int sv403_sessreqs;

  @Uint32()
  external int sv403_opensearch;

  @Uint32()
  external int sv403_activelocks;

  @Uint32()
  external int sv403_numreqbuf;

  @Uint32()
  external int sv403_sizreqbuf;

  @Uint32()
  external int sv403_numbigbuf;

  @Uint32()
  external int sv403_numfiletasks;

  @Uint32()
  external int sv403_alertsched;

  @Uint32()
  external int sv403_erroralert;

  @Uint32()
  external int sv403_logonalert;

  @Uint32()
  external int sv403_accessalert;

  @Uint32()
  external int sv403_diskalert;

  @Uint32()
  external int sv403_netioalert;

  @Uint32()
  external int sv403_maxauditsz;

  external Pointer<Utf16> sv403_srvheuristics;

  @Uint32()
  external int sv403_auditedevents;

  @Uint32()
  external int sv403_autoprofile;

  external Pointer<Utf16> sv403_autopath;
}

/// {@category Struct}
class SERVER_INFO_502 extends Struct {
  @Uint32()
  external int sv502_sessopens;

  @Uint32()
  external int sv502_sessvcs;

  @Uint32()
  external int sv502_opensearch;

  @Uint32()
  external int sv502_sizreqbuf;

  @Uint32()
  external int sv502_initworkitems;

  @Uint32()
  external int sv502_maxworkitems;

  @Uint32()
  external int sv502_rawworkitems;

  @Uint32()
  external int sv502_irpstacksize;

  @Uint32()
  external int sv502_maxrawbuflen;

  @Uint32()
  external int sv502_sessusers;

  @Uint32()
  external int sv502_sessconns;

  @Uint32()
  external int sv502_maxpagedmemoryusage;

  @Uint32()
  external int sv502_maxnonpagedmemoryusage;

  @Int32()
  external int sv502_enablesoftcompat;

  @Int32()
  external int sv502_enableforcedlogoff;

  @Int32()
  external int sv502_timesource;

  @Int32()
  external int sv502_acceptdownlevelapis;

  @Int32()
  external int sv502_lmannounce;
}

/// {@category Struct}
class SERVER_INFO_503 extends Struct {
  @Uint32()
  external int sv503_sessopens;

  @Uint32()
  external int sv503_sessvcs;

  @Uint32()
  external int sv503_opensearch;

  @Uint32()
  external int sv503_sizreqbuf;

  @Uint32()
  external int sv503_initworkitems;

  @Uint32()
  external int sv503_maxworkitems;

  @Uint32()
  external int sv503_rawworkitems;

  @Uint32()
  external int sv503_irpstacksize;

  @Uint32()
  external int sv503_maxrawbuflen;

  @Uint32()
  external int sv503_sessusers;

  @Uint32()
  external int sv503_sessconns;

  @Uint32()
  external int sv503_maxpagedmemoryusage;

  @Uint32()
  external int sv503_maxnonpagedmemoryusage;

  @Int32()
  external int sv503_enablesoftcompat;

  @Int32()
  external int sv503_enableforcedlogoff;

  @Int32()
  external int sv503_timesource;

  @Int32()
  external int sv503_acceptdownlevelapis;

  @Int32()
  external int sv503_lmannounce;

  external Pointer<Utf16> sv503_domain;

  @Uint32()
  external int sv503_maxcopyreadlen;

  @Uint32()
  external int sv503_maxcopywritelen;

  @Uint32()
  external int sv503_minkeepsearch;

  @Uint32()
  external int sv503_maxkeepsearch;

  @Uint32()
  external int sv503_minkeepcomplsearch;

  @Uint32()
  external int sv503_maxkeepcomplsearch;

  @Uint32()
  external int sv503_threadcountadd;

  @Uint32()
  external int sv503_numblockthreads;

  @Uint32()
  external int sv503_scavtimeout;

  @Uint32()
  external int sv503_minrcvqueue;

  @Uint32()
  external int sv503_minfreeworkitems;

  @Uint32()
  external int sv503_xactmemsize;

  @Uint32()
  external int sv503_threadpriority;

  @Uint32()
  external int sv503_maxmpxct;

  @Uint32()
  external int sv503_oplockbreakwait;

  @Uint32()
  external int sv503_oplockbreakresponsewait;

  @Int32()
  external int sv503_enableoplocks;

  @Int32()
  external int sv503_enableoplockforceclose;

  @Int32()
  external int sv503_enablefcbopens;

  @Int32()
  external int sv503_enableraw;

  @Int32()
  external int sv503_enablesharednetdrives;

  @Uint32()
  external int sv503_minfreeconnections;

  @Uint32()
  external int sv503_maxfreeconnections;
}

/// {@category Struct}
class SERVER_INFO_598 extends Struct {
  @Uint32()
  external int sv598_maxrawworkitems;

  @Uint32()
  external int sv598_maxthreadsperqueue;

  @Uint32()
  external int sv598_producttype;

  @Uint32()
  external int sv598_serversize;

  @Uint32()
  external int sv598_connectionlessautodisc;

  @Uint32()
  external int sv598_sharingviolationretries;

  @Uint32()
  external int sv598_sharingviolationdelay;

  @Uint32()
  external int sv598_maxglobalopensearch;

  @Uint32()
  external int sv598_removeduplicatesearches;

  @Uint32()
  external int sv598_lockviolationoffset;

  @Uint32()
  external int sv598_lockviolationdelay;

  @Uint32()
  external int sv598_mdlreadswitchover;

  @Uint32()
  external int sv598_cachedopenlimit;

  @Uint32()
  external int sv598_otherqueueaffinity;

  @Int32()
  external int sv598_restrictnullsessaccess;

  @Int32()
  external int sv598_enablewfw311directipx;

  @Uint32()
  external int sv598_queuesamplesecs;

  @Uint32()
  external int sv598_balancecount;

  @Uint32()
  external int sv598_preferredaffinity;

  @Uint32()
  external int sv598_maxfreerfcbs;

  @Uint32()
  external int sv598_maxfreemfcbs;

  @Uint32()
  external int sv598_maxfreelfcbs;

  @Uint32()
  external int sv598_maxfreepagedpoolchunks;

  @Uint32()
  external int sv598_minpagedpoolchunksize;

  @Uint32()
  external int sv598_maxpagedpoolchunksize;

  @Int32()
  external int sv598_sendsfrompreferredprocessor;

  @Uint32()
  external int sv598_cacheddirectorylimit;

  @Uint32()
  external int sv598_maxcopylength;

  @Int32()
  external int sv598_enablecompression;

  @Int32()
  external int sv598_autosharewks;

  @Int32()
  external int sv598_autoshareserver;

  @Int32()
  external int sv598_enablesecuritysignature;

  @Int32()
  external int sv598_requiresecuritysignature;

  @Uint32()
  external int sv598_minclientbuffersize;

  external GUID sv598_serverguid;

  @Uint32()
  external int sv598_ConnectionNoSessionsTimeout;

  @Uint32()
  external int sv598_IdleThreadTimeOut;

  @Int32()
  external int sv598_enableW9xsecuritysignature;

  @Int32()
  external int sv598_enforcekerberosreauthentication;

  @Int32()
  external int sv598_disabledos;

  @Uint32()
  external int sv598_lowdiskspaceminimum;

  @Int32()
  external int sv598_disablestrictnamechecking;

  @Int32()
  external int sv598_enableauthenticateusersharing;
}

/// {@category Struct}
class SERVER_INFO_599 extends Struct {
  @Uint32()
  external int sv599_sessopens;

  @Uint32()
  external int sv599_sessvcs;

  @Uint32()
  external int sv599_opensearch;

  @Uint32()
  external int sv599_sizreqbuf;

  @Uint32()
  external int sv599_initworkitems;

  @Uint32()
  external int sv599_maxworkitems;

  @Uint32()
  external int sv599_rawworkitems;

  @Uint32()
  external int sv599_irpstacksize;

  @Uint32()
  external int sv599_maxrawbuflen;

  @Uint32()
  external int sv599_sessusers;

  @Uint32()
  external int sv599_sessconns;

  @Uint32()
  external int sv599_maxpagedmemoryusage;

  @Uint32()
  external int sv599_maxnonpagedmemoryusage;

  @Int32()
  external int sv599_enablesoftcompat;

  @Int32()
  external int sv599_enableforcedlogoff;

  @Int32()
  external int sv599_timesource;

  @Int32()
  external int sv599_acceptdownlevelapis;

  @Int32()
  external int sv599_lmannounce;

  external Pointer<Utf16> sv599_domain;

  @Uint32()
  external int sv599_maxcopyreadlen;

  @Uint32()
  external int sv599_maxcopywritelen;

  @Uint32()
  external int sv599_minkeepsearch;

  @Uint32()
  external int sv599_maxkeepsearch;

  @Uint32()
  external int sv599_minkeepcomplsearch;

  @Uint32()
  external int sv599_maxkeepcomplsearch;

  @Uint32()
  external int sv599_threadcountadd;

  @Uint32()
  external int sv599_numblockthreads;

  @Uint32()
  external int sv599_scavtimeout;

  @Uint32()
  external int sv599_minrcvqueue;

  @Uint32()
  external int sv599_minfreeworkitems;

  @Uint32()
  external int sv599_xactmemsize;

  @Uint32()
  external int sv599_threadpriority;

  @Uint32()
  external int sv599_maxmpxct;

  @Uint32()
  external int sv599_oplockbreakwait;

  @Uint32()
  external int sv599_oplockbreakresponsewait;

  @Int32()
  external int sv599_enableoplocks;

  @Int32()
  external int sv599_enableoplockforceclose;

  @Int32()
  external int sv599_enablefcbopens;

  @Int32()
  external int sv599_enableraw;

  @Int32()
  external int sv599_enablesharednetdrives;

  @Uint32()
  external int sv599_minfreeconnections;

  @Uint32()
  external int sv599_maxfreeconnections;

  @Uint32()
  external int sv599_initsesstable;

  @Uint32()
  external int sv599_initconntable;

  @Uint32()
  external int sv599_initfiletable;

  @Uint32()
  external int sv599_initsearchtable;

  @Uint32()
  external int sv599_alertschedule;

  @Uint32()
  external int sv599_errorthreshold;

  @Uint32()
  external int sv599_networkerrorthreshold;

  @Uint32()
  external int sv599_diskspacethreshold;

  @Uint32()
  external int sv599_reserved;

  @Uint32()
  external int sv599_maxlinkdelay;

  @Uint32()
  external int sv599_minlinkthroughput;

  @Uint32()
  external int sv599_linkinfovalidtime;

  @Uint32()
  external int sv599_scavqosinfoupdatetime;

  @Uint32()
  external int sv599_maxworkitemidletime;
}

/// {@category Struct}
class SERVER_TRANSPORT_INFO_0 extends Struct {
  @Uint32()
  external int svti0_numberofvcs;

  external Pointer<Utf16> svti0_transportname;

  external Pointer<Uint8> svti0_transportaddress;

  @Uint32()
  external int svti0_transportaddresslength;

  external Pointer<Utf16> svti0_networkaddress;
}

/// {@category Struct}
class SERVER_TRANSPORT_INFO_1 extends Struct {
  @Uint32()
  external int svti1_numberofvcs;

  external Pointer<Utf16> svti1_transportname;

  external Pointer<Uint8> svti1_transportaddress;

  @Uint32()
  external int svti1_transportaddresslength;

  external Pointer<Utf16> svti1_networkaddress;

  external Pointer<Utf16> svti1_domain;
}

/// {@category Struct}
class SERVER_TRANSPORT_INFO_2 extends Struct {
  @Uint32()
  external int svti2_numberofvcs;

  external Pointer<Utf16> svti2_transportname;

  external Pointer<Uint8> svti2_transportaddress;

  @Uint32()
  external int svti2_transportaddresslength;

  external Pointer<Utf16> svti2_networkaddress;

  external Pointer<Utf16> svti2_domain;

  @Uint32()
  external int svti2_flags;
}

/// {@category Struct}
class SERVER_TRANSPORT_INFO_3 extends Struct {
  @Uint32()
  external int svti3_numberofvcs;

  external Pointer<Utf16> svti3_transportname;

  external Pointer<Uint8> svti3_transportaddress;

  @Uint32()
  external int svti3_transportaddresslength;

  external Pointer<Utf16> svti3_networkaddress;

  external Pointer<Utf16> svti3_domain;

  @Uint32()
  external int svti3_flags;

  @Uint32()
  external int svti3_passwordlength;

  @Array(256)
  external Array<Uint8> svti3_password;
}

/// {@category Struct}
class SERVICE_INFO_0 extends Struct {
  external Pointer<Utf16> svci0_name;
}

/// {@category Struct}
class SERVICE_INFO_1 extends Struct {
  external Pointer<Utf16> svci1_name;

  @Uint32()
  external int svci1_status;

  @Uint32()
  external int svci1_code;

  @Uint32()
  external int svci1_pid;
}

/// {@category Struct}
class SERVICE_INFO_2 extends Struct {
  external Pointer<Utf16> svci2_name;

  @Uint32()
  external int svci2_status;

  @Uint32()
  external int svci2_code;

  @Uint32()
  external int svci2_pid;

  external Pointer<Utf16> svci2_text;

  @Uint32()
  external int svci2_specific_error;

  external Pointer<Utf16> svci2_display_name;
}

/// {@category Struct}
class SMB_COMPRESSION_INFO extends Struct {
  @Uint8()
  external int Switch;

  @Uint8()
  external int Reserved1;

  @Uint16()
  external int Reserved2;

  @Uint32()
  external int Reserved3;
}

/// {@category Struct}
class SMB_TREE_CONNECT_PARAMETERS extends Struct {
  @Uint32()
  external int EABufferOffset;

  @Uint32()
  external int EABufferLen;

  @Uint32()
  external int CreateOptions;

  @Uint32()
  external int TreeConnectAttributes;
}

/// {@category Struct}
class SMB_USE_OPTION_COMPRESSION_PARAMETERS extends Struct {
  @Uint32()
  external int Tag;

  @Uint16()
  external int Length;

  @Uint16()
  external int Reserved;
}

/// {@category Struct}
class STD_ALERT extends Struct {
  @Uint32()
  external int alrt_timestamp;

  @Array(17)
  external Array<Uint16> _alrt_eventname;

  String get alrt_eventname {
    final charCodes = <int>[];
    for (var i = 0; i < 17; i++) {
      charCodes.add(_alrt_eventname[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set alrt_eventname(String value) {
    final stringToStore = value.padRight(17, '\x00');
    for (var i = 0; i < 17; i++) {
      _alrt_eventname[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(81)
  external Array<Uint16> _alrt_servicename;

  String get alrt_servicename {
    final charCodes = <int>[];
    for (var i = 0; i < 81; i++) {
      charCodes.add(_alrt_servicename[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set alrt_servicename(String value) {
    final stringToStore = value.padRight(81, '\x00');
    for (var i = 0; i < 81; i++) {
      _alrt_servicename[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class TIME_OF_DAY_INFO extends Struct {
  @Uint32()
  external int tod_elapsedt;

  @Uint32()
  external int tod_msecs;

  @Uint32()
  external int tod_hours;

  @Uint32()
  external int tod_mins;

  @Uint32()
  external int tod_secs;

  @Uint32()
  external int tod_hunds;

  @Int32()
  external int tod_timezone;

  @Uint32()
  external int tod_tinterval;

  @Uint32()
  external int tod_day;

  @Uint32()
  external int tod_month;

  @Uint32()
  external int tod_year;

  @Uint32()
  external int tod_weekday;
}

/// {@category Struct}
class TRANSPORT_INFO extends Struct {
  @Int32()
  external int Type;

  @Uint8()
  external int SkipCertificateCheck;
}

/// {@category Struct}
class USER_INFO_0 extends Struct {
  external Pointer<Utf16> usri0_name;
}

/// {@category Struct}
class USER_INFO_1 extends Struct {
  external Pointer<Utf16> usri1_name;

  external Pointer<Utf16> usri1_password;

  @Uint32()
  external int usri1_password_age;

  @Uint32()
  external int usri1_priv;

  external Pointer<Utf16> usri1_home_dir;

  external Pointer<Utf16> usri1_comment;

  @Uint32()
  external int usri1_flags;

  external Pointer<Utf16> usri1_script_path;
}

/// {@category Struct}
class USER_INFO_10 extends Struct {
  external Pointer<Utf16> usri10_name;

  external Pointer<Utf16> usri10_comment;

  external Pointer<Utf16> usri10_usr_comment;

  external Pointer<Utf16> usri10_full_name;
}

/// {@category Struct}
class USER_INFO_1003 extends Struct {
  external Pointer<Utf16> usri1003_password;
}

/// {@category Struct}
class USER_INFO_1005 extends Struct {
  @Uint32()
  external int usri1005_priv;
}

/// {@category Struct}
class USER_INFO_1006 extends Struct {
  external Pointer<Utf16> usri1006_home_dir;
}

/// {@category Struct}
class USER_INFO_1007 extends Struct {
  external Pointer<Utf16> usri1007_comment;
}

/// {@category Struct}
class USER_INFO_1008 extends Struct {
  @Uint32()
  external int usri1008_flags;
}

/// {@category Struct}
class USER_INFO_1009 extends Struct {
  external Pointer<Utf16> usri1009_script_path;
}

/// {@category Struct}
class USER_INFO_1010 extends Struct {
  @Uint32()
  external int usri1010_auth_flags;
}

/// {@category Struct}
class USER_INFO_1011 extends Struct {
  external Pointer<Utf16> usri1011_full_name;
}

/// {@category Struct}
class USER_INFO_1012 extends Struct {
  external Pointer<Utf16> usri1012_usr_comment;
}

/// {@category Struct}
class USER_INFO_1013 extends Struct {
  external Pointer<Utf16> usri1013_parms;
}

/// {@category Struct}
class USER_INFO_1014 extends Struct {
  external Pointer<Utf16> usri1014_workstations;
}

/// {@category Struct}
class USER_INFO_1017 extends Struct {
  @Uint32()
  external int usri1017_acct_expires;
}

/// {@category Struct}
class USER_INFO_1018 extends Struct {
  @Uint32()
  external int usri1018_max_storage;
}

/// {@category Struct}
class USER_INFO_1020 extends Struct {
  @Uint32()
  external int usri1020_units_per_week;

  external Pointer<Uint8> usri1020_logon_hours;
}

/// {@category Struct}
class USER_INFO_1023 extends Struct {
  external Pointer<Utf16> usri1023_logon_server;
}

/// {@category Struct}
class USER_INFO_1024 extends Struct {
  @Uint32()
  external int usri1024_country_code;
}

/// {@category Struct}
class USER_INFO_1025 extends Struct {
  @Uint32()
  external int usri1025_code_page;
}

/// {@category Struct}
class USER_INFO_1051 extends Struct {
  @Uint32()
  external int usri1051_primary_group_id;
}

/// {@category Struct}
class USER_INFO_1052 extends Struct {
  external Pointer<Utf16> usri1052_profile;
}

/// {@category Struct}
class USER_INFO_1053 extends Struct {
  external Pointer<Utf16> usri1053_home_dir_drive;
}

/// {@category Struct}
class USER_INFO_11 extends Struct {
  external Pointer<Utf16> usri11_name;

  external Pointer<Utf16> usri11_comment;

  external Pointer<Utf16> usri11_usr_comment;

  external Pointer<Utf16> usri11_full_name;

  @Uint32()
  external int usri11_priv;

  @Uint32()
  external int usri11_auth_flags;

  @Uint32()
  external int usri11_password_age;

  external Pointer<Utf16> usri11_home_dir;

  external Pointer<Utf16> usri11_parms;

  @Uint32()
  external int usri11_last_logon;

  @Uint32()
  external int usri11_last_logoff;

  @Uint32()
  external int usri11_bad_pw_count;

  @Uint32()
  external int usri11_num_logons;

  external Pointer<Utf16> usri11_logon_server;

  @Uint32()
  external int usri11_country_code;

  external Pointer<Utf16> usri11_workstations;

  @Uint32()
  external int usri11_max_storage;

  @Uint32()
  external int usri11_units_per_week;

  external Pointer<Uint8> usri11_logon_hours;

  @Uint32()
  external int usri11_code_page;
}

/// {@category Struct}
class USER_INFO_2 extends Struct {
  external Pointer<Utf16> usri2_name;

  external Pointer<Utf16> usri2_password;

  @Uint32()
  external int usri2_password_age;

  @Uint32()
  external int usri2_priv;

  external Pointer<Utf16> usri2_home_dir;

  external Pointer<Utf16> usri2_comment;

  @Uint32()
  external int usri2_flags;

  external Pointer<Utf16> usri2_script_path;

  @Uint32()
  external int usri2_auth_flags;

  external Pointer<Utf16> usri2_full_name;

  external Pointer<Utf16> usri2_usr_comment;

  external Pointer<Utf16> usri2_parms;

  external Pointer<Utf16> usri2_workstations;

  @Uint32()
  external int usri2_last_logon;

  @Uint32()
  external int usri2_last_logoff;

  @Uint32()
  external int usri2_acct_expires;

  @Uint32()
  external int usri2_max_storage;

  @Uint32()
  external int usri2_units_per_week;

  external Pointer<Uint8> usri2_logon_hours;

  @Uint32()
  external int usri2_bad_pw_count;

  @Uint32()
  external int usri2_num_logons;

  external Pointer<Utf16> usri2_logon_server;

  @Uint32()
  external int usri2_country_code;

  @Uint32()
  external int usri2_code_page;
}

/// {@category Struct}
class USER_INFO_20 extends Struct {
  external Pointer<Utf16> usri20_name;

  external Pointer<Utf16> usri20_full_name;

  external Pointer<Utf16> usri20_comment;

  @Uint32()
  external int usri20_flags;

  @Uint32()
  external int usri20_user_id;
}

/// {@category Struct}
class USER_INFO_21 extends Struct {
  @Array(16)
  external Array<Uint8> usri21_password;
}

/// {@category Struct}
class USER_INFO_22 extends Struct {
  external Pointer<Utf16> usri22_name;

  @Array(16)
  external Array<Uint8> usri22_password;

  @Uint32()
  external int usri22_password_age;

  @Uint32()
  external int usri22_priv;

  external Pointer<Utf16> usri22_home_dir;

  external Pointer<Utf16> usri22_comment;

  @Uint32()
  external int usri22_flags;

  external Pointer<Utf16> usri22_script_path;

  @Uint32()
  external int usri22_auth_flags;

  external Pointer<Utf16> usri22_full_name;

  external Pointer<Utf16> usri22_usr_comment;

  external Pointer<Utf16> usri22_parms;

  external Pointer<Utf16> usri22_workstations;

  @Uint32()
  external int usri22_last_logon;

  @Uint32()
  external int usri22_last_logoff;

  @Uint32()
  external int usri22_acct_expires;

  @Uint32()
  external int usri22_max_storage;

  @Uint32()
  external int usri22_units_per_week;

  external Pointer<Uint8> usri22_logon_hours;

  @Uint32()
  external int usri22_bad_pw_count;

  @Uint32()
  external int usri22_num_logons;

  external Pointer<Utf16> usri22_logon_server;

  @Uint32()
  external int usri22_country_code;

  @Uint32()
  external int usri22_code_page;
}

/// {@category Struct}
class USER_INFO_23 extends Struct {
  external Pointer<Utf16> usri23_name;

  external Pointer<Utf16> usri23_full_name;

  external Pointer<Utf16> usri23_comment;

  @Uint32()
  external int usri23_flags;

  @IntPtr()
  external int usri23_user_sid;
}

/// {@category Struct}
class USER_INFO_24 extends Struct {
  @Int32()
  external int usri24_internet_identity;

  @Uint32()
  external int usri24_flags;

  external Pointer<Utf16> usri24_internet_provider_name;

  external Pointer<Utf16> usri24_internet_principal_name;

  @IntPtr()
  external int usri24_user_sid;
}

/// {@category Struct}
class USER_INFO_3 extends Struct {
  external Pointer<Utf16> usri3_name;

  external Pointer<Utf16> usri3_password;

  @Uint32()
  external int usri3_password_age;

  @Uint32()
  external int usri3_priv;

  external Pointer<Utf16> usri3_home_dir;

  external Pointer<Utf16> usri3_comment;

  @Uint32()
  external int usri3_flags;

  external Pointer<Utf16> usri3_script_path;

  @Uint32()
  external int usri3_auth_flags;

  external Pointer<Utf16> usri3_full_name;

  external Pointer<Utf16> usri3_usr_comment;

  external Pointer<Utf16> usri3_parms;

  external Pointer<Utf16> usri3_workstations;

  @Uint32()
  external int usri3_last_logon;

  @Uint32()
  external int usri3_last_logoff;

  @Uint32()
  external int usri3_acct_expires;

  @Uint32()
  external int usri3_max_storage;

  @Uint32()
  external int usri3_units_per_week;

  external Pointer<Uint8> usri3_logon_hours;

  @Uint32()
  external int usri3_bad_pw_count;

  @Uint32()
  external int usri3_num_logons;

  external Pointer<Utf16> usri3_logon_server;

  @Uint32()
  external int usri3_country_code;

  @Uint32()
  external int usri3_code_page;

  @Uint32()
  external int usri3_user_id;

  @Uint32()
  external int usri3_primary_group_id;

  external Pointer<Utf16> usri3_profile;

  external Pointer<Utf16> usri3_home_dir_drive;

  @Uint32()
  external int usri3_password_expired;
}

/// {@category Struct}
class USER_INFO_4 extends Struct {
  external Pointer<Utf16> usri4_name;

  external Pointer<Utf16> usri4_password;

  @Uint32()
  external int usri4_password_age;

  @Uint32()
  external int usri4_priv;

  external Pointer<Utf16> usri4_home_dir;

  external Pointer<Utf16> usri4_comment;

  @Uint32()
  external int usri4_flags;

  external Pointer<Utf16> usri4_script_path;

  @Uint32()
  external int usri4_auth_flags;

  external Pointer<Utf16> usri4_full_name;

  external Pointer<Utf16> usri4_usr_comment;

  external Pointer<Utf16> usri4_parms;

  external Pointer<Utf16> usri4_workstations;

  @Uint32()
  external int usri4_last_logon;

  @Uint32()
  external int usri4_last_logoff;

  @Uint32()
  external int usri4_acct_expires;

  @Uint32()
  external int usri4_max_storage;

  @Uint32()
  external int usri4_units_per_week;

  external Pointer<Uint8> usri4_logon_hours;

  @Uint32()
  external int usri4_bad_pw_count;

  @Uint32()
  external int usri4_num_logons;

  external Pointer<Utf16> usri4_logon_server;

  @Uint32()
  external int usri4_country_code;

  @Uint32()
  external int usri4_code_page;

  @IntPtr()
  external int usri4_user_sid;

  @Uint32()
  external int usri4_primary_group_id;

  external Pointer<Utf16> usri4_profile;

  external Pointer<Utf16> usri4_home_dir_drive;

  @Uint32()
  external int usri4_password_expired;
}

/// {@category Struct}
class USER_MODALS_INFO_0 extends Struct {
  @Uint32()
  external int usrmod0_min_passwd_len;

  @Uint32()
  external int usrmod0_max_passwd_age;

  @Uint32()
  external int usrmod0_min_passwd_age;

  @Uint32()
  external int usrmod0_force_logoff;

  @Uint32()
  external int usrmod0_password_hist_len;
}

/// {@category Struct}
class USER_MODALS_INFO_1 extends Struct {
  @Uint32()
  external int usrmod1_role;

  external Pointer<Utf16> usrmod1_primary;
}

/// {@category Struct}
class USER_MODALS_INFO_1001 extends Struct {
  @Uint32()
  external int usrmod1001_min_passwd_len;
}

/// {@category Struct}
class USER_MODALS_INFO_1002 extends Struct {
  @Uint32()
  external int usrmod1002_max_passwd_age;
}

/// {@category Struct}
class USER_MODALS_INFO_1003 extends Struct {
  @Uint32()
  external int usrmod1003_min_passwd_age;
}

/// {@category Struct}
class USER_MODALS_INFO_1004 extends Struct {
  @Uint32()
  external int usrmod1004_force_logoff;
}

/// {@category Struct}
class USER_MODALS_INFO_1005 extends Struct {
  @Uint32()
  external int usrmod1005_password_hist_len;
}

/// {@category Struct}
class USER_MODALS_INFO_1006 extends Struct {
  @Uint32()
  external int usrmod1006_role;
}

/// {@category Struct}
class USER_MODALS_INFO_1007 extends Struct {
  external Pointer<Utf16> usrmod1007_primary;
}

/// {@category Struct}
class USER_MODALS_INFO_2 extends Struct {
  external Pointer<Utf16> usrmod2_domain_name;

  @IntPtr()
  external int usrmod2_domain_id;
}

/// {@category Struct}
class USER_MODALS_INFO_3 extends Struct {
  @Uint32()
  external int usrmod3_lockout_duration;

  @Uint32()
  external int usrmod3_lockout_observation_window;

  @Uint32()
  external int usrmod3_lockout_threshold;
}

/// {@category Struct}
class USER_OTHER_INFO extends Struct {
  @Uint32()
  external int alrtus_errcode;

  @Uint32()
  external int alrtus_numstrings;
}

/// {@category Struct}
class USE_INFO_0 extends Struct {
  external Pointer<Utf16> ui0_local;

  external Pointer<Utf16> ui0_remote;
}

/// {@category Struct}
class USE_INFO_1 extends Struct {
  external Pointer<Utf16> ui1_local;

  external Pointer<Utf16> ui1_remote;

  external Pointer<Utf16> ui1_password;

  @Uint32()
  external int ui1_status;

  @Uint32()
  external int ui1_asg_type;

  @Uint32()
  external int ui1_refcount;

  @Uint32()
  external int ui1_usecount;
}

/// {@category Struct}
class USE_INFO_2 extends Struct {
  external Pointer<Utf16> ui2_local;

  external Pointer<Utf16> ui2_remote;

  external Pointer<Utf16> ui2_password;

  @Uint32()
  external int ui2_status;

  @Uint32()
  external int ui2_asg_type;

  @Uint32()
  external int ui2_refcount;

  @Uint32()
  external int ui2_usecount;

  external Pointer<Utf16> ui2_username;

  external Pointer<Utf16> ui2_domainname;
}

/// {@category Struct}
class USE_INFO_3 extends Struct {
  external USE_INFO_2 ui3_ui2;

  @Uint32()
  external int ui3_flags;
}

/// {@category Struct}
class USE_INFO_4 extends Struct {
  external USE_INFO_3 ui4_ui3;

  @Uint32()
  external int ui4_auth_identity_length;

  external Pointer<Uint8> ui4_auth_identity;
}

/// {@category Struct}
class USE_INFO_5 extends Struct {
  external USE_INFO_3 ui4_ui3;

  @Uint32()
  external int ui4_auth_identity_length;

  external Pointer<Uint8> ui4_auth_identity;

  @Uint32()
  external int ui5_security_descriptor_length;

  external Pointer<Uint8> ui5_security_descriptor;

  @Uint32()
  external int ui5_use_options_length;

  external Pointer<Uint8> ui5_use_options;
}

/// {@category Struct}
class USE_OPTION_DEFERRED_CONNECTION_PARAMETERS extends Struct {
  @Uint32()
  external int Tag;

  @Uint16()
  external int Length;

  @Uint16()
  external int Reserved;
}

/// {@category Struct}
class USE_OPTION_GENERIC extends Struct {
  @Uint32()
  external int Tag;

  @Uint16()
  external int Length;

  @Uint16()
  external int Reserved;
}

/// {@category Struct}
class USE_OPTION_PROPERTIES extends Struct {
  @Uint32()
  external int Tag;

  external Pointer pInfo;

  @IntPtr()
  external int Length;
}

/// {@category Struct}
class USE_OPTION_TRANSPORT_PARAMETERS extends Struct {
  @Uint32()
  external int Tag;

  @Uint16()
  external int Length;

  @Uint16()
  external int Reserved;
}

/// {@category Struct}
class WKSTA_INFO_100 extends Struct {
  @Uint32()
  external int wki100_platform_id;

  external Pointer<Utf16> wki100_computername;

  external Pointer<Utf16> wki100_langroup;

  @Uint32()
  external int wki100_ver_major;

  @Uint32()
  external int wki100_ver_minor;
}

/// {@category Struct}
class WKSTA_INFO_101 extends Struct {
  @Uint32()
  external int wki101_platform_id;

  external Pointer<Utf16> wki101_computername;

  external Pointer<Utf16> wki101_langroup;

  @Uint32()
  external int wki101_ver_major;

  @Uint32()
  external int wki101_ver_minor;

  external Pointer<Utf16> wki101_lanroot;
}

/// {@category Struct}
class WKSTA_INFO_1010 extends Struct {
  @Uint32()
  external int wki1010_char_wait;
}

/// {@category Struct}
class WKSTA_INFO_1011 extends Struct {
  @Uint32()
  external int wki1011_collection_time;
}

/// {@category Struct}
class WKSTA_INFO_1012 extends Struct {
  @Uint32()
  external int wki1012_maximum_collection_count;
}

/// {@category Struct}
class WKSTA_INFO_1013 extends Struct {
  @Uint32()
  external int wki1013_keep_conn;
}

/// {@category Struct}
class WKSTA_INFO_1018 extends Struct {
  @Uint32()
  external int wki1018_sess_timeout;
}

/// {@category Struct}
class WKSTA_INFO_102 extends Struct {
  @Uint32()
  external int wki102_platform_id;

  external Pointer<Utf16> wki102_computername;

  external Pointer<Utf16> wki102_langroup;

  @Uint32()
  external int wki102_ver_major;

  @Uint32()
  external int wki102_ver_minor;

  external Pointer<Utf16> wki102_lanroot;

  @Uint32()
  external int wki102_logged_on_users;
}

/// {@category Struct}
class WKSTA_INFO_1023 extends Struct {
  @Uint32()
  external int wki1023_siz_char_buf;
}

/// {@category Struct}
class WKSTA_INFO_1027 extends Struct {
  @Uint32()
  external int wki1027_errlog_sz;
}

/// {@category Struct}
class WKSTA_INFO_1028 extends Struct {
  @Uint32()
  external int wki1028_print_buf_time;
}

/// {@category Struct}
class WKSTA_INFO_1032 extends Struct {
  @Uint32()
  external int wki1032_wrk_heuristics;
}

/// {@category Struct}
class WKSTA_INFO_1033 extends Struct {
  @Uint32()
  external int wki1033_max_threads;
}

/// {@category Struct}
class WKSTA_INFO_1041 extends Struct {
  @Uint32()
  external int wki1041_lock_quota;
}

/// {@category Struct}
class WKSTA_INFO_1042 extends Struct {
  @Uint32()
  external int wki1042_lock_increment;
}

/// {@category Struct}
class WKSTA_INFO_1043 extends Struct {
  @Uint32()
  external int wki1043_lock_maximum;
}

/// {@category Struct}
class WKSTA_INFO_1044 extends Struct {
  @Uint32()
  external int wki1044_pipe_increment;
}

/// {@category Struct}
class WKSTA_INFO_1045 extends Struct {
  @Uint32()
  external int wki1045_pipe_maximum;
}

/// {@category Struct}
class WKSTA_INFO_1046 extends Struct {
  @Uint32()
  external int wki1046_dormant_file_limit;
}

/// {@category Struct}
class WKSTA_INFO_1047 extends Struct {
  @Uint32()
  external int wki1047_cache_file_timeout;
}

/// {@category Struct}
class WKSTA_INFO_1048 extends Struct {
  @Int32()
  external int wki1048_use_opportunistic_locking;
}

/// {@category Struct}
class WKSTA_INFO_1049 extends Struct {
  @Int32()
  external int wki1049_use_unlock_behind;
}

/// {@category Struct}
class WKSTA_INFO_1050 extends Struct {
  @Int32()
  external int wki1050_use_close_behind;
}

/// {@category Struct}
class WKSTA_INFO_1051 extends Struct {
  @Int32()
  external int wki1051_buf_named_pipes;
}

/// {@category Struct}
class WKSTA_INFO_1052 extends Struct {
  @Int32()
  external int wki1052_use_lock_read_unlock;
}

/// {@category Struct}
class WKSTA_INFO_1053 extends Struct {
  @Int32()
  external int wki1053_utilize_nt_caching;
}

/// {@category Struct}
class WKSTA_INFO_1054 extends Struct {
  @Int32()
  external int wki1054_use_raw_read;
}

/// {@category Struct}
class WKSTA_INFO_1055 extends Struct {
  @Int32()
  external int wki1055_use_raw_write;
}

/// {@category Struct}
class WKSTA_INFO_1056 extends Struct {
  @Int32()
  external int wki1056_use_write_raw_data;
}

/// {@category Struct}
class WKSTA_INFO_1057 extends Struct {
  @Int32()
  external int wki1057_use_encryption;
}

/// {@category Struct}
class WKSTA_INFO_1058 extends Struct {
  @Int32()
  external int wki1058_buf_files_deny_write;
}

/// {@category Struct}
class WKSTA_INFO_1059 extends Struct {
  @Int32()
  external int wki1059_buf_read_only_files;
}

/// {@category Struct}
class WKSTA_INFO_1060 extends Struct {
  @Int32()
  external int wki1060_force_core_create_mode;
}

/// {@category Struct}
class WKSTA_INFO_1061 extends Struct {
  @Int32()
  external int wki1061_use_512_byte_max_transfer;
}

/// {@category Struct}
class WKSTA_INFO_1062 extends Struct {
  @Uint32()
  external int wki1062_read_ahead_throughput;
}

/// {@category Struct}
class WKSTA_INFO_302 extends Struct {
  @Uint32()
  external int wki302_char_wait;

  @Uint32()
  external int wki302_collection_time;

  @Uint32()
  external int wki302_maximum_collection_count;

  @Uint32()
  external int wki302_keep_conn;

  @Uint32()
  external int wki302_keep_search;

  @Uint32()
  external int wki302_max_cmds;

  @Uint32()
  external int wki302_num_work_buf;

  @Uint32()
  external int wki302_siz_work_buf;

  @Uint32()
  external int wki302_max_wrk_cache;

  @Uint32()
  external int wki302_sess_timeout;

  @Uint32()
  external int wki302_siz_error;

  @Uint32()
  external int wki302_num_alerts;

  @Uint32()
  external int wki302_num_services;

  @Uint32()
  external int wki302_errlog_sz;

  @Uint32()
  external int wki302_print_buf_time;

  @Uint32()
  external int wki302_num_char_buf;

  @Uint32()
  external int wki302_siz_char_buf;

  external Pointer<Utf16> wki302_wrk_heuristics;

  @Uint32()
  external int wki302_mailslots;

  @Uint32()
  external int wki302_num_dgram_buf;
}

/// {@category Struct}
class WKSTA_INFO_402 extends Struct {
  @Uint32()
  external int wki402_char_wait;

  @Uint32()
  external int wki402_collection_time;

  @Uint32()
  external int wki402_maximum_collection_count;

  @Uint32()
  external int wki402_keep_conn;

  @Uint32()
  external int wki402_keep_search;

  @Uint32()
  external int wki402_max_cmds;

  @Uint32()
  external int wki402_num_work_buf;

  @Uint32()
  external int wki402_siz_work_buf;

  @Uint32()
  external int wki402_max_wrk_cache;

  @Uint32()
  external int wki402_sess_timeout;

  @Uint32()
  external int wki402_siz_error;

  @Uint32()
  external int wki402_num_alerts;

  @Uint32()
  external int wki402_num_services;

  @Uint32()
  external int wki402_errlog_sz;

  @Uint32()
  external int wki402_print_buf_time;

  @Uint32()
  external int wki402_num_char_buf;

  @Uint32()
  external int wki402_siz_char_buf;

  external Pointer<Utf16> wki402_wrk_heuristics;

  @Uint32()
  external int wki402_mailslots;

  @Uint32()
  external int wki402_num_dgram_buf;

  @Uint32()
  external int wki402_max_threads;
}

/// {@category Struct}
class WKSTA_INFO_502 extends Struct {
  @Uint32()
  external int wki502_char_wait;

  @Uint32()
  external int wki502_collection_time;

  @Uint32()
  external int wki502_maximum_collection_count;

  @Uint32()
  external int wki502_keep_conn;

  @Uint32()
  external int wki502_max_cmds;

  @Uint32()
  external int wki502_sess_timeout;

  @Uint32()
  external int wki502_siz_char_buf;

  @Uint32()
  external int wki502_max_threads;

  @Uint32()
  external int wki502_lock_quota;

  @Uint32()
  external int wki502_lock_increment;

  @Uint32()
  external int wki502_lock_maximum;

  @Uint32()
  external int wki502_pipe_increment;

  @Uint32()
  external int wki502_pipe_maximum;

  @Uint32()
  external int wki502_cache_file_timeout;

  @Uint32()
  external int wki502_dormant_file_limit;

  @Uint32()
  external int wki502_read_ahead_throughput;

  @Uint32()
  external int wki502_num_mailslot_buffers;

  @Uint32()
  external int wki502_num_srv_announce_buffers;

  @Uint32()
  external int wki502_max_illegal_datagram_events;

  @Uint32()
  external int wki502_illegal_datagram_event_reset_frequency;

  @Int32()
  external int wki502_log_election_packets;

  @Int32()
  external int wki502_use_opportunistic_locking;

  @Int32()
  external int wki502_use_unlock_behind;

  @Int32()
  external int wki502_use_close_behind;

  @Int32()
  external int wki502_buf_named_pipes;

  @Int32()
  external int wki502_use_lock_read_unlock;

  @Int32()
  external int wki502_utilize_nt_caching;

  @Int32()
  external int wki502_use_raw_read;

  @Int32()
  external int wki502_use_raw_write;

  @Int32()
  external int wki502_use_write_raw_data;

  @Int32()
  external int wki502_use_encryption;

  @Int32()
  external int wki502_buf_files_deny_write;

  @Int32()
  external int wki502_buf_read_only_files;

  @Int32()
  external int wki502_force_core_create_mode;

  @Int32()
  external int wki502_use_512_byte_max_transfer;
}

/// {@category Struct}
class WKSTA_TRANSPORT_INFO_0 extends Struct {
  @Uint32()
  external int wkti0_quality_of_service;

  @Uint32()
  external int wkti0_number_of_vcs;

  external Pointer<Utf16> wkti0_transport_name;

  external Pointer<Utf16> wkti0_transport_address;

  @Int32()
  external int wkti0_wan_ish;
}

/// {@category Struct}
class WKSTA_USER_INFO_0 extends Struct {
  external Pointer<Utf16> wkui0_username;
}

/// {@category Struct}
class WKSTA_USER_INFO_1 extends Struct {
  external Pointer<Utf16> wkui1_username;

  external Pointer<Utf16> wkui1_logon_domain;

  external Pointer<Utf16> wkui1_oth_domains;

  external Pointer<Utf16> wkui1_logon_server;
}

/// {@category Struct}
class WKSTA_USER_INFO_1101 extends Struct {
  external Pointer<Utf16> wkui1101_oth_domains;
}
