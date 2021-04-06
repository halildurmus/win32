// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// -----------------------------------------------------------------------------
// Linter exceptions
// -----------------------------------------------------------------------------
// ignore_for_file: camel_case_types
// ignore_for_file: camel_case_extensions
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

class ldap extends Struct {
  @Uint32()
  external int ld_sb;
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

class LDAP_TIMEVAL extends Struct {
  @Int32()
  external int tv_sec;
  @Int32()
  external int tv_usec;
}

class LDAP_BERVAL extends Struct {
  @Uint32()
  external int bv_len;
  external Pointer<Utf8> bv_val;
}

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

class ldapcontrolA extends Struct {
  external Pointer<Utf8> ldctl_oid;
  external LDAP_BERVAL ldctl_value;
  @Uint8()
  external int ldctl_iscritical;
}

class ldapcontrolW extends Struct {
  external Pointer<Utf16> ldctl_oid;
  external LDAP_BERVAL ldctl_value;
  @Uint8()
  external int ldctl_iscritical;
}

class ldapmodW extends Struct {
  @Uint32()
  external int mod_op;
  external Pointer<Utf16> mod_type;
  @Uint32()
  external int mod_vals;
}

class ldapmodA extends Struct {
  @Uint32()
  external int mod_op;
  external Pointer<Utf8> mod_type;
  @Uint32()
  external int mod_vals;
}

class berelement extends Struct {
  external Pointer<Utf8> opaque;
}

class ldap_version_info extends Struct {
  @Uint32()
  external int lv_size;
  @Uint32()
  external int lv_major;
  @Uint32()
  external int lv_minor;
}

class ldapapiinfoA extends Struct {
  @Int32()
  external int ldapai_info_version;
  @Int32()
  external int ldapai_api_version;
  @Int32()
  external int ldapai_protocol_version;
  external Pointer<Pointer<Int8>> ldapai_extensions;
  external Pointer<Utf8> ldapai_vendor_name;
  @Int32()
  external int ldapai_vendor_version;
}

class ldapapiinfoW extends Struct {
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

class LDAPAPIFeatureInfoA extends Struct {
  @Int32()
  external int ldapaif_info_version;
  external Pointer<Utf8> ldapaif_name;
  @Int32()
  external int ldapaif_version;
}

class LDAPAPIFeatureInfoW extends Struct {
  @Int32()
  external int ldapaif_info_version;
  external Pointer<Utf16> ldapaif_name;
  @Int32()
  external int ldapaif_version;
}

class ldapsearch extends Struct {}

class ldapsortkeyW extends Struct {
  external Pointer<Utf16> sk_attrtype;
  external Pointer<Utf16> sk_matchruleoid;
  @Uint8()
  external int sk_reverseorder;
}

class ldapsortkeyA extends Struct {
  external Pointer<Utf8> sk_attrtype;
  external Pointer<Utf8> sk_matchruleoid;
  @Uint8()
  external int sk_reverseorder;
}

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

class LDAP_REFERRAL_CALLBACK extends Struct {
  @Uint32()
  external int SizeOfCallbacks;
  external QUERYFORCONNECTION QueryForConnection;
  external NOTIFYOFNEWCONNECTION NotifyRoutine;
  external DEREFERENCECONNECTION DereferenceRoutine;
}
