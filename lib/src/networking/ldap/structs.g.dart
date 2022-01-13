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
import '../../networking/ldap/structs.g.dart';
import '../../networking/ldap/callbacks.g.dart';

/// {@category Struct}
class LDAPAPIFeatureInfo extends Struct {
  @Int32()
  external int ldapaif_info_version;

  external Pointer<Utf16> ldapaif_name;

  @Int32()
  external int ldapaif_version;
}

/// {@category Struct}
class LDAPMessage extends Struct {
  @Uint32()
  external int lm_msgid;

  @Uint32()
  external int lm_msgtype;

  external Pointer lm_ber;

  external Pointer<LDAPMessage> lm_chain;

  external Pointer<LDAPMessage> lm_next;

  @Uint32()
  external int lm_time;

  external Pointer<ldap> Connection;

  external Pointer Request;

  @Uint32()
  external int lm_returncode;

  @Uint16()
  external int lm_referral;

  @Uint8()
  external int lm_chased;

  @Uint8()
  external int lm_eom;

  @Uint8()
  external int ConnectionReferenced;
}

/// {@category Struct}
class LDAP_BERVAL extends Struct {
  @Uint32()
  external int bv_len;

  external Pointer<Utf8> bv_val;
}

/// {@category Struct}
class LDAP_REFERRAL_CALLBACK extends Struct {
  @Uint32()
  external int SizeOfCallbacks;

  external Pointer<NativeFunction<QUERYFORCONNECTION>> QueryForConnection;

  external Pointer<NativeFunction<NOTIFYOFNEWCONNECTION>> NotifyRoutine;

  external Pointer<NativeFunction<DEREFERENCECONNECTION>> DereferenceRoutine;
}

/// {@category Struct}
class LDAP_TIMEVAL extends Struct {
  @Int32()
  external int tv_sec;

  @Int32()
  external int tv_usec;
}

/// {@category Struct}
class berelement extends Struct {
  external Pointer<Utf8> opaque;
}

/// {@category Struct}
class ldap extends Struct {
  external _ldap__ld_sb_e__Struct ld_sb;

  external Pointer<Utf8> ld_host;

  @Uint32()
  external int ld_version;

  @Uint8()
  external int ld_lberoptions;

  @Uint32()
  external int ld_deref;

  @Uint32()
  external int ld_timelimit;

  @Uint32()
  external int ld_sizelimit;

  @Uint32()
  external int ld_errno;

  external Pointer<Utf8> ld_matched;

  external Pointer<Utf8> ld_error;

  @Uint32()
  external int ld_msgid;

  @Array(25)
  external Array<Uint8> Reserved3;

  @Uint32()
  external int ld_cldaptries;

  @Uint32()
  external int ld_cldaptimeout;

  @Uint32()
  external int ld_refhoplimit;

  @Uint32()
  external int ld_options;
}

/// {@category Struct}
class _ldap__ld_sb_e__Struct extends Struct {
  @IntPtr()
  external int sb_sd;

  @Array(41)
  external Array<Uint8> Reserved1;

  @IntPtr()
  external int sb_naddr;

  @Array(24)
  external Array<Uint8> Reserved2;
}

extension ldap_Extension on ldap {
  int get sb_sd => this.ld_sb.sb_sd;
  set sb_sd(int value) => this.ld_sb.sb_sd = value;

  Array<Uint8> get Reserved1 => this.ld_sb.Reserved1;
  set Reserved1(Array<Uint8> value) => this.ld_sb.Reserved1 = value;

  int get sb_naddr => this.ld_sb.sb_naddr;
  set sb_naddr(int value) => this.ld_sb.sb_naddr = value;

  Array<Uint8> get Reserved2 => this.ld_sb.Reserved2;
  set Reserved2(Array<Uint8> value) => this.ld_sb.Reserved2 = value;
}

/// {@category Struct}
class ldap_version_info extends Struct {
  @Uint32()
  external int lv_size;

  @Uint32()
  external int lv_major;

  @Uint32()
  external int lv_minor;
}

/// {@category Struct}
class ldapapiinfo extends Struct {
  @Int32()
  external int ldapai_info_version;

  @Int32()
  external int ldapai_api_version;

  @Int32()
  external int ldapai_protocol_version;

  external Pointer<Pointer<Utf16>> ldapai_extensions;

  external Pointer<Utf16> ldapai_vendor_name;

  @Int32()
  external int ldapai_vendor_version;
}

/// {@category Struct}
class ldapcontrol extends Struct {
  external Pointer<Utf16> ldctl_oid;

  external LDAP_BERVAL ldctl_value;

  @Uint8()
  external int ldctl_iscritical;
}

/// {@category Struct}
class ldapmod extends Struct {
  @Uint32()
  external int mod_op;

  external Pointer<Utf16> mod_type;

  external _ldapmodW__mod_vals_e__Union mod_vals;
}

/// {@category Struct}
class _ldapmodW__mod_vals_e__Union extends Union {
  external Pointer<Pointer<Utf16>> modv_strvals;

  external Pointer<Pointer<LDAP_BERVAL>> modv_bvals;
}

extension ldapmodW_Extension on ldapmod {
  Pointer<Pointer<Utf16>> get modv_strvals => this.mod_vals.modv_strvals;
  set modv_strvals(Pointer<Pointer<Utf16>> value) =>
      this.mod_vals.modv_strvals = value;

  Pointer<Pointer<LDAP_BERVAL>> get modv_bvals => this.mod_vals.modv_bvals;
  set modv_bvals(Pointer<Pointer<LDAP_BERVAL>> value) =>
      this.mod_vals.modv_bvals = value;
}

/// {@category Struct}
class ldapsearch extends Opaque {}

/// {@category Struct}
class ldapsortkey extends Struct {
  external Pointer<Utf16> sk_attrtype;

  external Pointer<Utf16> sk_matchruleoid;

  @Uint8()
  external int sk_reverseorder;
}

/// {@category Struct}
class ldapvlvinfo extends Struct {
  @Int32()
  external int ldvlv_version;

  @Uint32()
  external int ldvlv_before_count;

  @Uint32()
  external int ldvlv_after_count;

  @Uint32()
  external int ldvlv_offset;

  @Uint32()
  external int ldvlv_count;

  external Pointer<LDAP_BERVAL> ldvlv_attrvalue;

  external Pointer<LDAP_BERVAL> ldvlv_context;

  external Pointer ldvlv_extradata;
}
