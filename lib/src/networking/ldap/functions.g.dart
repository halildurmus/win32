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
import '../../networking/ldap/structs.g.dart';
import '../../networking/ldap/callbacks.g.dart'; // -----------------------------------------------------------------------

// wldap32.dll
// -----------------------------------------------------------------------
final _wldap32 = DynamicLibrary.open('wldap32.dll');

int LdapGetLastError() => _LdapGetLastError();

late final _LdapGetLastError = _wldap32
    .lookupFunction<Uint32 Function(), int Function()>('LdapGetLastError');

int LdapMapErrorToWin32(
  int LdapError,
) =>
    _LdapMapErrorToWin32(
      LdapError,
    );

late final _LdapMapErrorToWin32 = _wldap32.lookupFunction<
    Uint32 Function(
  Uint32 LdapError,
),
    int Function(
  int LdapError,
)>('LdapMapErrorToWin32');

int LdapUTF8ToUnicode(
  Pointer<Utf8> lpSrcStr,
  int cchSrc,
  Pointer<Utf16> lpDestStr,
  int cchDest,
) =>
    _LdapUTF8ToUnicode(
      lpSrcStr,
      cchSrc,
      lpDestStr,
      cchDest,
    );

late final _LdapUTF8ToUnicode = _wldap32.lookupFunction<
    Int32 Function(
  Pointer<Utf8> lpSrcStr,
  Int32 cchSrc,
  Pointer<Utf16> lpDestStr,
  Int32 cchDest,
),
    int Function(
  Pointer<Utf8> lpSrcStr,
  int cchSrc,
  Pointer<Utf16> lpDestStr,
  int cchDest,
)>('LdapUTF8ToUnicode');

int LdapUnicodeToUTF8(
  Pointer<Utf16> lpSrcStr,
  int cchSrc,
  Pointer<Utf8> lpDestStr,
  int cchDest,
) =>
    _LdapUnicodeToUTF8(
      lpSrcStr,
      cchSrc,
      lpDestStr,
      cchDest,
    );

late final _LdapUnicodeToUTF8 = _wldap32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpSrcStr,
  Int32 cchSrc,
  Pointer<Utf8> lpDestStr,
  Int32 cchDest,
),
    int Function(
  Pointer<Utf16> lpSrcStr,
  int cchSrc,
  Pointer<Utf8> lpDestStr,
  int cchDest,
)>('LdapUnicodeToUTF8');

Pointer<berelement> ber_alloc_t(
  int options,
) =>
    _ber_alloc_t(
      options,
    );

late final _ber_alloc_t = _wldap32.lookupFunction<
    Pointer<berelement> Function(
  Int32 options,
),
    Pointer<berelement> Function(
  int options,
)>('ber_alloc_t');

Pointer<LDAP_BERVAL> ber_bvdup(
  Pointer<LDAP_BERVAL> pBerVal,
) =>
    _ber_bvdup(
      pBerVal,
    );

late final _ber_bvdup = _wldap32.lookupFunction<
    Pointer<LDAP_BERVAL> Function(
  Pointer<LDAP_BERVAL> pBerVal,
),
    Pointer<LDAP_BERVAL> Function(
  Pointer<LDAP_BERVAL> pBerVal,
)>('ber_bvdup');

void ber_bvecfree(
  Pointer<Pointer<LDAP_BERVAL>> pBerVal,
) =>
    _ber_bvecfree(
      pBerVal,
    );

late final _ber_bvecfree = _wldap32.lookupFunction<
    Void Function(
  Pointer<Pointer<LDAP_BERVAL>> pBerVal,
),
    void Function(
  Pointer<Pointer<LDAP_BERVAL>> pBerVal,
)>('ber_bvecfree');

void ber_bvfree(
  Pointer<LDAP_BERVAL> bv,
) =>
    _ber_bvfree(
      bv,
    );

late final _ber_bvfree = _wldap32.lookupFunction<
    Void Function(
  Pointer<LDAP_BERVAL> bv,
),
    void Function(
  Pointer<LDAP_BERVAL> bv,
)>('ber_bvfree');

int ber_first_element(
  Pointer<berelement> pBerElement,
  Pointer<Uint32> pLen,
  Pointer<Pointer<Uint8>> ppOpaque,
) =>
    _ber_first_element(
      pBerElement,
      pLen,
      ppOpaque,
    );

late final _ber_first_element = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<berelement> pBerElement,
  Pointer<Uint32> pLen,
  Pointer<Pointer<Uint8>> ppOpaque,
),
    int Function(
  Pointer<berelement> pBerElement,
  Pointer<Uint32> pLen,
  Pointer<Pointer<Uint8>> ppOpaque,
)>('ber_first_element');

int ber_flatten(
  Pointer<berelement> pBerElement,
  Pointer<Pointer<LDAP_BERVAL>> pBerVal,
) =>
    _ber_flatten(
      pBerElement,
      pBerVal,
    );

late final _ber_flatten = _wldap32.lookupFunction<
    Int32 Function(
  Pointer<berelement> pBerElement,
  Pointer<Pointer<LDAP_BERVAL>> pBerVal,
),
    int Function(
  Pointer<berelement> pBerElement,
  Pointer<Pointer<LDAP_BERVAL>> pBerVal,
)>('ber_flatten');

void ber_free(
  Pointer<berelement> pBerElement,
  int fbuf,
) =>
    _ber_free(
      pBerElement,
      fbuf,
    );

late final _ber_free = _wldap32.lookupFunction<
    Void Function(
  Pointer<berelement> pBerElement,
  Int32 fbuf,
),
    void Function(
  Pointer<berelement> pBerElement,
  int fbuf,
)>('ber_free');

Pointer<berelement> ber_init(
  Pointer<LDAP_BERVAL> pBerVal,
) =>
    _ber_init(
      pBerVal,
    );

late final _ber_init = _wldap32.lookupFunction<
    Pointer<berelement> Function(
  Pointer<LDAP_BERVAL> pBerVal,
),
    Pointer<berelement> Function(
  Pointer<LDAP_BERVAL> pBerVal,
)>('ber_init');

int ber_next_element(
  Pointer<berelement> pBerElement,
  Pointer<Uint32> pLen,
  Pointer<Utf8> opaque,
) =>
    _ber_next_element(
      pBerElement,
      pLen,
      opaque,
    );

late final _ber_next_element = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<berelement> pBerElement,
  Pointer<Uint32> pLen,
  Pointer<Utf8> opaque,
),
    int Function(
  Pointer<berelement> pBerElement,
  Pointer<Uint32> pLen,
  Pointer<Utf8> opaque,
)>('ber_next_element');

int ber_peek_tag(
  Pointer<berelement> pBerElement,
  Pointer<Uint32> pLen,
) =>
    _ber_peek_tag(
      pBerElement,
      pLen,
    );

late final _ber_peek_tag = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<berelement> pBerElement,
  Pointer<Uint32> pLen,
),
    int Function(
  Pointer<berelement> pBerElement,
  Pointer<Uint32> pLen,
)>('ber_peek_tag');

int ber_printf(
  Pointer<berelement> pBerElement,
  Pointer<Utf8> fmt,
) =>
    _ber_printf(
      pBerElement,
      fmt,
    );

late final _ber_printf = _wldap32.lookupFunction<
    Int32 Function(
  Pointer<berelement> pBerElement,
  Pointer<Utf8> fmt,
),
    int Function(
  Pointer<berelement> pBerElement,
  Pointer<Utf8> fmt,
)>('ber_printf');

int ber_scanf(
  Pointer<berelement> pBerElement,
  Pointer<Utf8> fmt,
) =>
    _ber_scanf(
      pBerElement,
      fmt,
    );

late final _ber_scanf = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<berelement> pBerElement,
  Pointer<Utf8> fmt,
),
    int Function(
  Pointer<berelement> pBerElement,
  Pointer<Utf8> fmt,
)>('ber_scanf');

int ber_skip_tag(
  Pointer<berelement> pBerElement,
  Pointer<Uint32> pLen,
) =>
    _ber_skip_tag(
      pBerElement,
      pLen,
    );

late final _ber_skip_tag = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<berelement> pBerElement,
  Pointer<Uint32> pLen,
),
    int Function(
  Pointer<berelement> pBerElement,
  Pointer<Uint32> pLen,
)>('ber_skip_tag');

Pointer<ldap> cldap_open(
  Pointer<Utf16> HostName,
  int PortNumber,
) =>
    _cldap_open(
      HostName,
      PortNumber,
    );

late final _cldap_open = _wldap32.lookupFunction<
    Pointer<ldap> Function(
  Pointer<Utf16> HostName,
  Uint32 PortNumber,
),
    Pointer<ldap> Function(
  Pointer<Utf16> HostName,
  int PortNumber,
)>('cldap_openW');

int ldap_abandon(
  Pointer<ldap> ld,
  int msgid,
) =>
    _ldap_abandon(
      ld,
      msgid,
    );

late final _ldap_abandon = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<ldap> ld,
  Uint32 msgid,
),
    int Function(
  Pointer<ldap> ld,
  int msgid,
)>('ldap_abandon');

int ldap_add(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
  Pointer<Pointer<ldapmod>> attrs,
) =>
    _ldap_add(
      ld,
      dn,
      attrs,
    );

late final _ldap_add = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
  Pointer<Pointer<ldapmod>> attrs,
),
    int Function(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
  Pointer<Pointer<ldapmod>> attrs,
)>('ldap_addW');

int ldap_add_ext(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
  Pointer<Pointer<ldapmod>> attrs,
  Pointer<Pointer<ldapcontrol>> ServerControls,
  Pointer<Pointer<ldapcontrol>> ClientControls,
  Pointer<Uint32> MessageNumber,
) =>
    _ldap_add_ext(
      ld,
      dn,
      attrs,
      ServerControls,
      ClientControls,
      MessageNumber,
    );

late final _ldap_add_ext = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
  Pointer<Pointer<ldapmod>> attrs,
  Pointer<Pointer<ldapcontrol>> ServerControls,
  Pointer<Pointer<ldapcontrol>> ClientControls,
  Pointer<Uint32> MessageNumber,
),
    int Function(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
  Pointer<Pointer<ldapmod>> attrs,
  Pointer<Pointer<ldapcontrol>> ServerControls,
  Pointer<Pointer<ldapcontrol>> ClientControls,
  Pointer<Uint32> MessageNumber,
)>('ldap_add_extW');

int ldap_add_ext_s(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
  Pointer<Pointer<ldapmod>> attrs,
  Pointer<Pointer<ldapcontrol>> ServerControls,
  Pointer<Pointer<ldapcontrol>> ClientControls,
) =>
    _ldap_add_ext_s(
      ld,
      dn,
      attrs,
      ServerControls,
      ClientControls,
    );

late final _ldap_add_ext_s = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
  Pointer<Pointer<ldapmod>> attrs,
  Pointer<Pointer<ldapcontrol>> ServerControls,
  Pointer<Pointer<ldapcontrol>> ClientControls,
),
    int Function(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
  Pointer<Pointer<ldapmod>> attrs,
  Pointer<Pointer<ldapcontrol>> ServerControls,
  Pointer<Pointer<ldapcontrol>> ClientControls,
)>('ldap_add_ext_sW');

int ldap_add_s(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
  Pointer<Pointer<ldapmod>> attrs,
) =>
    _ldap_add_s(
      ld,
      dn,
      attrs,
    );

late final _ldap_add_s = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
  Pointer<Pointer<ldapmod>> attrs,
),
    int Function(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
  Pointer<Pointer<ldapmod>> attrs,
)>('ldap_add_sW');

int ldap_bind(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
  Pointer<Utf16> cred,
  int method,
) =>
    _ldap_bind(
      ld,
      dn,
      cred,
      method,
    );

late final _ldap_bind = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
  Pointer<Utf16> cred,
  Uint32 method,
),
    int Function(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
  Pointer<Utf16> cred,
  int method,
)>('ldap_bindW');

int ldap_bind_s(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
  Pointer<Utf16> cred,
  int method,
) =>
    _ldap_bind_s(
      ld,
      dn,
      cred,
      method,
    );

late final _ldap_bind_s = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
  Pointer<Utf16> cred,
  Uint32 method,
),
    int Function(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
  Pointer<Utf16> cred,
  int method,
)>('ldap_bind_sW');

int ldap_check_filter(
  Pointer<ldap> ld,
  Pointer<Utf16> SearchFilter,
) =>
    _ldap_check_filter(
      ld,
      SearchFilter,
    );

late final _ldap_check_filter = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<ldap> ld,
  Pointer<Utf16> SearchFilter,
),
    int Function(
  Pointer<ldap> ld,
  Pointer<Utf16> SearchFilter,
)>('ldap_check_filterW');

int ldap_cleanup(
  int hInstance,
) =>
    _ldap_cleanup(
      hInstance,
    );

late final _ldap_cleanup = _wldap32.lookupFunction<
    Uint32 Function(
  IntPtr hInstance,
),
    int Function(
  int hInstance,
)>('ldap_cleanup');

int ldap_close_extended_op(
  Pointer<ldap> ld,
  int MessageNumber,
) =>
    _ldap_close_extended_op(
      ld,
      MessageNumber,
    );

late final _ldap_close_extended_op = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<ldap> ld,
  Uint32 MessageNumber,
),
    int Function(
  Pointer<ldap> ld,
  int MessageNumber,
)>('ldap_close_extended_op');

int ldap_compare(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
  Pointer<Utf16> attr,
  Pointer<Utf16> value,
) =>
    _ldap_compare(
      ld,
      dn,
      attr,
      value,
    );

late final _ldap_compare = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
  Pointer<Utf16> attr,
  Pointer<Utf16> value,
),
    int Function(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
  Pointer<Utf16> attr,
  Pointer<Utf16> value,
)>('ldap_compareW');

int ldap_compare_ext(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
  Pointer<Utf16> Attr,
  Pointer<Utf16> Value,
  Pointer<LDAP_BERVAL> Data,
  Pointer<Pointer<ldapcontrol>> ServerControls,
  Pointer<Pointer<ldapcontrol>> ClientControls,
  Pointer<Uint32> MessageNumber,
) =>
    _ldap_compare_ext(
      ld,
      dn,
      Attr,
      Value,
      Data,
      ServerControls,
      ClientControls,
      MessageNumber,
    );

late final _ldap_compare_ext = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
  Pointer<Utf16> Attr,
  Pointer<Utf16> Value,
  Pointer<LDAP_BERVAL> Data,
  Pointer<Pointer<ldapcontrol>> ServerControls,
  Pointer<Pointer<ldapcontrol>> ClientControls,
  Pointer<Uint32> MessageNumber,
),
    int Function(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
  Pointer<Utf16> Attr,
  Pointer<Utf16> Value,
  Pointer<LDAP_BERVAL> Data,
  Pointer<Pointer<ldapcontrol>> ServerControls,
  Pointer<Pointer<ldapcontrol>> ClientControls,
  Pointer<Uint32> MessageNumber,
)>('ldap_compare_extW');

int ldap_compare_ext_s(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
  Pointer<Utf16> Attr,
  Pointer<Utf16> Value,
  Pointer<LDAP_BERVAL> Data,
  Pointer<Pointer<ldapcontrol>> ServerControls,
  Pointer<Pointer<ldapcontrol>> ClientControls,
) =>
    _ldap_compare_ext_s(
      ld,
      dn,
      Attr,
      Value,
      Data,
      ServerControls,
      ClientControls,
    );

late final _ldap_compare_ext_s = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
  Pointer<Utf16> Attr,
  Pointer<Utf16> Value,
  Pointer<LDAP_BERVAL> Data,
  Pointer<Pointer<ldapcontrol>> ServerControls,
  Pointer<Pointer<ldapcontrol>> ClientControls,
),
    int Function(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
  Pointer<Utf16> Attr,
  Pointer<Utf16> Value,
  Pointer<LDAP_BERVAL> Data,
  Pointer<Pointer<ldapcontrol>> ServerControls,
  Pointer<Pointer<ldapcontrol>> ClientControls,
)>('ldap_compare_ext_sW');

int ldap_compare_s(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
  Pointer<Utf16> attr,
  Pointer<Utf16> value,
) =>
    _ldap_compare_s(
      ld,
      dn,
      attr,
      value,
    );

late final _ldap_compare_s = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
  Pointer<Utf16> attr,
  Pointer<Utf16> value,
),
    int Function(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
  Pointer<Utf16> attr,
  Pointer<Utf16> value,
)>('ldap_compare_sW');

Pointer<ldap> ldap_conn_from_msg(
  Pointer<ldap> PrimaryConn,
  Pointer<LDAPMessage> res,
) =>
    _ldap_conn_from_msg(
      PrimaryConn,
      res,
    );

late final _ldap_conn_from_msg = _wldap32.lookupFunction<
    Pointer<ldap> Function(
  Pointer<ldap> PrimaryConn,
  Pointer<LDAPMessage> res,
),
    Pointer<ldap> Function(
  Pointer<ldap> PrimaryConn,
  Pointer<LDAPMessage> res,
)>('ldap_conn_from_msg');

int ldap_connect(
  Pointer<ldap> ld,
  Pointer<LDAP_TIMEVAL> timeout,
) =>
    _ldap_connect(
      ld,
      timeout,
    );

late final _ldap_connect = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<ldap> ld,
  Pointer<LDAP_TIMEVAL> timeout,
),
    int Function(
  Pointer<ldap> ld,
  Pointer<LDAP_TIMEVAL> timeout,
)>('ldap_connect');

int ldap_control_free(
  Pointer<ldapcontrol> Control,
) =>
    _ldap_control_free(
      Control,
    );

late final _ldap_control_free = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<ldapcontrol> Control,
),
    int Function(
  Pointer<ldapcontrol> Control,
)>('ldap_control_freeW');

int ldap_controls_free(
  Pointer<Pointer<ldapcontrol>> Control,
) =>
    _ldap_controls_free(
      Control,
    );

late final _ldap_controls_free = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<Pointer<ldapcontrol>> Control,
),
    int Function(
  Pointer<Pointer<ldapcontrol>> Control,
)>('ldap_controls_freeW');

int ldap_count_entries(
  Pointer<ldap> ld,
  Pointer<LDAPMessage> res,
) =>
    _ldap_count_entries(
      ld,
      res,
    );

late final _ldap_count_entries = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<ldap> ld,
  Pointer<LDAPMessage> res,
),
    int Function(
  Pointer<ldap> ld,
  Pointer<LDAPMessage> res,
)>('ldap_count_entries');

int ldap_count_references(
  Pointer<ldap> ld,
  Pointer<LDAPMessage> res,
) =>
    _ldap_count_references(
      ld,
      res,
    );

late final _ldap_count_references = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<ldap> ld,
  Pointer<LDAPMessage> res,
),
    int Function(
  Pointer<ldap> ld,
  Pointer<LDAPMessage> res,
)>('ldap_count_references');

int ldap_count_values(
  Pointer<Pointer<Utf16>> vals,
) =>
    _ldap_count_values(
      vals,
    );

late final _ldap_count_values = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<Pointer<Utf16>> vals,
),
    int Function(
  Pointer<Pointer<Utf16>> vals,
)>('ldap_count_valuesW');

int ldap_count_values_len(
  Pointer<Pointer<LDAP_BERVAL>> vals,
) =>
    _ldap_count_values_len(
      vals,
    );

late final _ldap_count_values_len = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<Pointer<LDAP_BERVAL>> vals,
),
    int Function(
  Pointer<Pointer<LDAP_BERVAL>> vals,
)>('ldap_count_values_len');

int ldap_create_page_control(
  Pointer<ldap> ExternalHandle,
  int PageSize,
  Pointer<LDAP_BERVAL> Cookie,
  int IsCritical,
  Pointer<Pointer<ldapcontrol>> Control,
) =>
    _ldap_create_page_control(
      ExternalHandle,
      PageSize,
      Cookie,
      IsCritical,
      Control,
    );

late final _ldap_create_page_control = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<ldap> ExternalHandle,
  Uint32 PageSize,
  Pointer<LDAP_BERVAL> Cookie,
  Uint8 IsCritical,
  Pointer<Pointer<ldapcontrol>> Control,
),
    int Function(
  Pointer<ldap> ExternalHandle,
  int PageSize,
  Pointer<LDAP_BERVAL> Cookie,
  int IsCritical,
  Pointer<Pointer<ldapcontrol>> Control,
)>('ldap_create_page_controlW');

int ldap_create_sort_control(
  Pointer<ldap> ExternalHandle,
  Pointer<Pointer<ldapsortkey>> SortKeys,
  int IsCritical,
  Pointer<Pointer<ldapcontrol>> Control,
) =>
    _ldap_create_sort_control(
      ExternalHandle,
      SortKeys,
      IsCritical,
      Control,
    );

late final _ldap_create_sort_control = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<ldap> ExternalHandle,
  Pointer<Pointer<ldapsortkey>> SortKeys,
  Uint8 IsCritical,
  Pointer<Pointer<ldapcontrol>> Control,
),
    int Function(
  Pointer<ldap> ExternalHandle,
  Pointer<Pointer<ldapsortkey>> SortKeys,
  int IsCritical,
  Pointer<Pointer<ldapcontrol>> Control,
)>('ldap_create_sort_controlW');

int ldap_create_vlv_control(
  Pointer<ldap> ExternalHandle,
  Pointer<ldapvlvinfo> VlvInfo,
  int IsCritical,
  Pointer<Pointer<ldapcontrol>> Control,
) =>
    _ldap_create_vlv_control(
      ExternalHandle,
      VlvInfo,
      IsCritical,
      Control,
    );

late final _ldap_create_vlv_control = _wldap32.lookupFunction<
    Int32 Function(
  Pointer<ldap> ExternalHandle,
  Pointer<ldapvlvinfo> VlvInfo,
  Uint8 IsCritical,
  Pointer<Pointer<ldapcontrol>> Control,
),
    int Function(
  Pointer<ldap> ExternalHandle,
  Pointer<ldapvlvinfo> VlvInfo,
  int IsCritical,
  Pointer<Pointer<ldapcontrol>> Control,
)>('ldap_create_vlv_controlW');

int ldap_delete(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
) =>
    _ldap_delete(
      ld,
      dn,
    );

late final _ldap_delete = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
),
    int Function(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
)>('ldap_deleteW');

int ldap_delete_ext(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
  Pointer<Pointer<ldapcontrol>> ServerControls,
  Pointer<Pointer<ldapcontrol>> ClientControls,
  Pointer<Uint32> MessageNumber,
) =>
    _ldap_delete_ext(
      ld,
      dn,
      ServerControls,
      ClientControls,
      MessageNumber,
    );

late final _ldap_delete_ext = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
  Pointer<Pointer<ldapcontrol>> ServerControls,
  Pointer<Pointer<ldapcontrol>> ClientControls,
  Pointer<Uint32> MessageNumber,
),
    int Function(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
  Pointer<Pointer<ldapcontrol>> ServerControls,
  Pointer<Pointer<ldapcontrol>> ClientControls,
  Pointer<Uint32> MessageNumber,
)>('ldap_delete_extW');

int ldap_delete_ext_s(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
  Pointer<Pointer<ldapcontrol>> ServerControls,
  Pointer<Pointer<ldapcontrol>> ClientControls,
) =>
    _ldap_delete_ext_s(
      ld,
      dn,
      ServerControls,
      ClientControls,
    );

late final _ldap_delete_ext_s = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
  Pointer<Pointer<ldapcontrol>> ServerControls,
  Pointer<Pointer<ldapcontrol>> ClientControls,
),
    int Function(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
  Pointer<Pointer<ldapcontrol>> ServerControls,
  Pointer<Pointer<ldapcontrol>> ClientControls,
)>('ldap_delete_ext_sW');

int ldap_delete_s(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
) =>
    _ldap_delete_s(
      ld,
      dn,
    );

late final _ldap_delete_s = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
),
    int Function(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
)>('ldap_delete_sW');

Pointer<Utf16> ldap_dn2ufn(
  Pointer<Utf16> dn,
) =>
    _ldap_dn2ufn(
      dn,
    );

late final _ldap_dn2ufn = _wldap32.lookupFunction<
    Pointer<Utf16> Function(
  Pointer<Utf16> dn,
),
    Pointer<Utf16> Function(
  Pointer<Utf16> dn,
)>('ldap_dn2ufnW');

int ldap_encode_sort_control(
  Pointer<ldap> ExternalHandle,
  Pointer<Pointer<ldapsortkey>> SortKeys,
  Pointer<ldapcontrol> Control,
  int Criticality,
) =>
    _ldap_encode_sort_control(
      ExternalHandle,
      SortKeys,
      Control,
      Criticality,
    );

late final _ldap_encode_sort_control = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<ldap> ExternalHandle,
  Pointer<Pointer<ldapsortkey>> SortKeys,
  Pointer<ldapcontrol> Control,
  Uint8 Criticality,
),
    int Function(
  Pointer<ldap> ExternalHandle,
  Pointer<Pointer<ldapsortkey>> SortKeys,
  Pointer<ldapcontrol> Control,
  int Criticality,
)>('ldap_encode_sort_controlW');

Pointer<Utf16> ldap_err2string(
  int err,
) =>
    _ldap_err2string(
      err,
    );

late final _ldap_err2string = _wldap32.lookupFunction<
    Pointer<Utf16> Function(
  Uint32 err,
),
    Pointer<Utf16> Function(
  int err,
)>('ldap_err2stringW');

int ldap_escape_filter_element(
  Pointer<Utf8> sourceFilterElement,
  int sourceLength,
  Pointer<Utf16> destFilterElement,
  int destLength,
) =>
    _ldap_escape_filter_element(
      sourceFilterElement,
      sourceLength,
      destFilterElement,
      destLength,
    );

late final _ldap_escape_filter_element = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<Utf8> sourceFilterElement,
  Uint32 sourceLength,
  Pointer<Utf16> destFilterElement,
  Uint32 destLength,
),
    int Function(
  Pointer<Utf8> sourceFilterElement,
  int sourceLength,
  Pointer<Utf16> destFilterElement,
  int destLength,
)>('ldap_escape_filter_elementW');

Pointer<Pointer<Utf16>> ldap_explode_dn(
  Pointer<Utf16> dn,
  int notypes,
) =>
    _ldap_explode_dn(
      dn,
      notypes,
    );

late final _ldap_explode_dn = _wldap32.lookupFunction<
    Pointer<Pointer<Utf16>> Function(
  Pointer<Utf16> dn,
  Uint32 notypes,
),
    Pointer<Pointer<Utf16>> Function(
  Pointer<Utf16> dn,
  int notypes,
)>('ldap_explode_dnW');

int ldap_extended_operation(
  Pointer<ldap> ld,
  Pointer<Utf16> Oid,
  Pointer<LDAP_BERVAL> Data,
  Pointer<Pointer<ldapcontrol>> ServerControls,
  Pointer<Pointer<ldapcontrol>> ClientControls,
  Pointer<Uint32> MessageNumber,
) =>
    _ldap_extended_operation(
      ld,
      Oid,
      Data,
      ServerControls,
      ClientControls,
      MessageNumber,
    );

late final _ldap_extended_operation = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<ldap> ld,
  Pointer<Utf16> Oid,
  Pointer<LDAP_BERVAL> Data,
  Pointer<Pointer<ldapcontrol>> ServerControls,
  Pointer<Pointer<ldapcontrol>> ClientControls,
  Pointer<Uint32> MessageNumber,
),
    int Function(
  Pointer<ldap> ld,
  Pointer<Utf16> Oid,
  Pointer<LDAP_BERVAL> Data,
  Pointer<Pointer<ldapcontrol>> ServerControls,
  Pointer<Pointer<ldapcontrol>> ClientControls,
  Pointer<Uint32> MessageNumber,
)>('ldap_extended_operationW');

int ldap_extended_operation_s(
  Pointer<ldap> ExternalHandle,
  Pointer<Utf16> Oid,
  Pointer<LDAP_BERVAL> Data,
  Pointer<Pointer<ldapcontrol>> ServerControls,
  Pointer<Pointer<ldapcontrol>> ClientControls,
  Pointer<Pointer<Utf16>> ReturnedOid,
  Pointer<Pointer<LDAP_BERVAL>> ReturnedData,
) =>
    _ldap_extended_operation_s(
      ExternalHandle,
      Oid,
      Data,
      ServerControls,
      ClientControls,
      ReturnedOid,
      ReturnedData,
    );

late final _ldap_extended_operation_s = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<ldap> ExternalHandle,
  Pointer<Utf16> Oid,
  Pointer<LDAP_BERVAL> Data,
  Pointer<Pointer<ldapcontrol>> ServerControls,
  Pointer<Pointer<ldapcontrol>> ClientControls,
  Pointer<Pointer<Utf16>> ReturnedOid,
  Pointer<Pointer<LDAP_BERVAL>> ReturnedData,
),
    int Function(
  Pointer<ldap> ExternalHandle,
  Pointer<Utf16> Oid,
  Pointer<LDAP_BERVAL> Data,
  Pointer<Pointer<ldapcontrol>> ServerControls,
  Pointer<Pointer<ldapcontrol>> ClientControls,
  Pointer<Pointer<Utf16>> ReturnedOid,
  Pointer<Pointer<LDAP_BERVAL>> ReturnedData,
)>('ldap_extended_operation_sW');

Pointer<Utf16> ldap_first_attribute(
  Pointer<ldap> ld,
  Pointer<LDAPMessage> entry,
  Pointer<Pointer<berelement>> ptr,
) =>
    _ldap_first_attribute(
      ld,
      entry,
      ptr,
    );

late final _ldap_first_attribute = _wldap32.lookupFunction<
    Pointer<Utf16> Function(
  Pointer<ldap> ld,
  Pointer<LDAPMessage> entry,
  Pointer<Pointer<berelement>> ptr,
),
    Pointer<Utf16> Function(
  Pointer<ldap> ld,
  Pointer<LDAPMessage> entry,
  Pointer<Pointer<berelement>> ptr,
)>('ldap_first_attributeW');

Pointer<LDAPMessage> ldap_first_entry(
  Pointer<ldap> ld,
  Pointer<LDAPMessage> res,
) =>
    _ldap_first_entry(
      ld,
      res,
    );

late final _ldap_first_entry = _wldap32.lookupFunction<
    Pointer<LDAPMessage> Function(
  Pointer<ldap> ld,
  Pointer<LDAPMessage> res,
),
    Pointer<LDAPMessage> Function(
  Pointer<ldap> ld,
  Pointer<LDAPMessage> res,
)>('ldap_first_entry');

Pointer<LDAPMessage> ldap_first_reference(
  Pointer<ldap> ld,
  Pointer<LDAPMessage> res,
) =>
    _ldap_first_reference(
      ld,
      res,
    );

late final _ldap_first_reference = _wldap32.lookupFunction<
    Pointer<LDAPMessage> Function(
  Pointer<ldap> ld,
  Pointer<LDAPMessage> res,
),
    Pointer<LDAPMessage> Function(
  Pointer<ldap> ld,
  Pointer<LDAPMessage> res,
)>('ldap_first_reference');

int ldap_free_controls(
  Pointer<Pointer<ldapcontrol>> Controls,
) =>
    _ldap_free_controls(
      Controls,
    );

late final _ldap_free_controls = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<Pointer<ldapcontrol>> Controls,
),
    int Function(
  Pointer<Pointer<ldapcontrol>> Controls,
)>('ldap_free_controlsW');

Pointer<Utf16> ldap_get_dn(
  Pointer<ldap> ld,
  Pointer<LDAPMessage> entry,
) =>
    _ldap_get_dn(
      ld,
      entry,
    );

late final _ldap_get_dn = _wldap32.lookupFunction<
    Pointer<Utf16> Function(
  Pointer<ldap> ld,
  Pointer<LDAPMessage> entry,
),
    Pointer<Utf16> Function(
  Pointer<ldap> ld,
  Pointer<LDAPMessage> entry,
)>('ldap_get_dnW');

int ldap_get_next_page(
  Pointer<ldap> ExternalHandle,
  Pointer<ldapsearch> SearchHandle,
  int PageSize,
  Pointer<Uint32> MessageNumber,
) =>
    _ldap_get_next_page(
      ExternalHandle,
      SearchHandle,
      PageSize,
      MessageNumber,
    );

late final _ldap_get_next_page = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<ldap> ExternalHandle,
  Pointer<ldapsearch> SearchHandle,
  Uint32 PageSize,
  Pointer<Uint32> MessageNumber,
),
    int Function(
  Pointer<ldap> ExternalHandle,
  Pointer<ldapsearch> SearchHandle,
  int PageSize,
  Pointer<Uint32> MessageNumber,
)>('ldap_get_next_page');

int ldap_get_next_page_s(
  Pointer<ldap> ExternalHandle,
  Pointer<ldapsearch> SearchHandle,
  Pointer<LDAP_TIMEVAL> timeout,
  int PageSize,
  Pointer<Uint32> TotalCount,
  Pointer<Pointer<LDAPMessage>> Results,
) =>
    _ldap_get_next_page_s(
      ExternalHandle,
      SearchHandle,
      timeout,
      PageSize,
      TotalCount,
      Results,
    );

late final _ldap_get_next_page_s = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<ldap> ExternalHandle,
  Pointer<ldapsearch> SearchHandle,
  Pointer<LDAP_TIMEVAL> timeout,
  Uint32 PageSize,
  Pointer<Uint32> TotalCount,
  Pointer<Pointer<LDAPMessage>> Results,
),
    int Function(
  Pointer<ldap> ExternalHandle,
  Pointer<ldapsearch> SearchHandle,
  Pointer<LDAP_TIMEVAL> timeout,
  int PageSize,
  Pointer<Uint32> TotalCount,
  Pointer<Pointer<LDAPMessage>> Results,
)>('ldap_get_next_page_s');

int ldap_get_option(
  Pointer<ldap> ld,
  int option,
  Pointer outvalue,
) =>
    _ldap_get_option(
      ld,
      option,
      outvalue,
    );

late final _ldap_get_option = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<ldap> ld,
  Int32 option,
  Pointer outvalue,
),
    int Function(
  Pointer<ldap> ld,
  int option,
  Pointer outvalue,
)>('ldap_get_optionW');

int ldap_get_paged_count(
  Pointer<ldap> ExternalHandle,
  Pointer<ldapsearch> SearchBlock,
  Pointer<Uint32> TotalCount,
  Pointer<LDAPMessage> Results,
) =>
    _ldap_get_paged_count(
      ExternalHandle,
      SearchBlock,
      TotalCount,
      Results,
    );

late final _ldap_get_paged_count = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<ldap> ExternalHandle,
  Pointer<ldapsearch> SearchBlock,
  Pointer<Uint32> TotalCount,
  Pointer<LDAPMessage> Results,
),
    int Function(
  Pointer<ldap> ExternalHandle,
  Pointer<ldapsearch> SearchBlock,
  Pointer<Uint32> TotalCount,
  Pointer<LDAPMessage> Results,
)>('ldap_get_paged_count');

Pointer<Pointer<Utf16>> ldap_get_values(
  Pointer<ldap> ld,
  Pointer<LDAPMessage> entry,
  Pointer<Utf16> attr,
) =>
    _ldap_get_values(
      ld,
      entry,
      attr,
    );

late final _ldap_get_values = _wldap32.lookupFunction<
    Pointer<Pointer<Utf16>> Function(
  Pointer<ldap> ld,
  Pointer<LDAPMessage> entry,
  Pointer<Utf16> attr,
),
    Pointer<Pointer<Utf16>> Function(
  Pointer<ldap> ld,
  Pointer<LDAPMessage> entry,
  Pointer<Utf16> attr,
)>('ldap_get_valuesW');

Pointer<Pointer<LDAP_BERVAL>> ldap_get_values_len(
  Pointer<ldap> ExternalHandle,
  Pointer<LDAPMessage> Message,
  Pointer<Utf16> attr,
) =>
    _ldap_get_values_len(
      ExternalHandle,
      Message,
      attr,
    );

late final _ldap_get_values_len = _wldap32.lookupFunction<
    Pointer<Pointer<LDAP_BERVAL>> Function(
  Pointer<ldap> ExternalHandle,
  Pointer<LDAPMessage> Message,
  Pointer<Utf16> attr,
),
    Pointer<Pointer<LDAP_BERVAL>> Function(
  Pointer<ldap> ExternalHandle,
  Pointer<LDAPMessage> Message,
  Pointer<Utf16> attr,
)>('ldap_get_values_lenW');

Pointer<ldap> ldap_init(
  Pointer<Utf16> HostName,
  int PortNumber,
) =>
    _ldap_init(
      HostName,
      PortNumber,
    );

late final _ldap_init = _wldap32.lookupFunction<
    Pointer<ldap> Function(
  Pointer<Utf16> HostName,
  Uint32 PortNumber,
),
    Pointer<ldap> Function(
  Pointer<Utf16> HostName,
  int PortNumber,
)>('ldap_initW');

void ldap_memfree(
  Pointer<Utf16> Block,
) =>
    _ldap_memfree(
      Block,
    );

late final _ldap_memfree = _wldap32.lookupFunction<
    Void Function(
  Pointer<Utf16> Block,
),
    void Function(
  Pointer<Utf16> Block,
)>('ldap_memfreeW');

int ldap_modify(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
  Pointer<Pointer<ldapmod>> mods,
) =>
    _ldap_modify(
      ld,
      dn,
      mods,
    );

late final _ldap_modify = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
  Pointer<Pointer<ldapmod>> mods,
),
    int Function(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
  Pointer<Pointer<ldapmod>> mods,
)>('ldap_modifyW');

int ldap_modify_ext(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
  Pointer<Pointer<ldapmod>> mods,
  Pointer<Pointer<ldapcontrol>> ServerControls,
  Pointer<Pointer<ldapcontrol>> ClientControls,
  Pointer<Uint32> MessageNumber,
) =>
    _ldap_modify_ext(
      ld,
      dn,
      mods,
      ServerControls,
      ClientControls,
      MessageNumber,
    );

late final _ldap_modify_ext = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
  Pointer<Pointer<ldapmod>> mods,
  Pointer<Pointer<ldapcontrol>> ServerControls,
  Pointer<Pointer<ldapcontrol>> ClientControls,
  Pointer<Uint32> MessageNumber,
),
    int Function(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
  Pointer<Pointer<ldapmod>> mods,
  Pointer<Pointer<ldapcontrol>> ServerControls,
  Pointer<Pointer<ldapcontrol>> ClientControls,
  Pointer<Uint32> MessageNumber,
)>('ldap_modify_extW');

int ldap_modify_ext_s(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
  Pointer<Pointer<ldapmod>> mods,
  Pointer<Pointer<ldapcontrol>> ServerControls,
  Pointer<Pointer<ldapcontrol>> ClientControls,
) =>
    _ldap_modify_ext_s(
      ld,
      dn,
      mods,
      ServerControls,
      ClientControls,
    );

late final _ldap_modify_ext_s = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
  Pointer<Pointer<ldapmod>> mods,
  Pointer<Pointer<ldapcontrol>> ServerControls,
  Pointer<Pointer<ldapcontrol>> ClientControls,
),
    int Function(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
  Pointer<Pointer<ldapmod>> mods,
  Pointer<Pointer<ldapcontrol>> ServerControls,
  Pointer<Pointer<ldapcontrol>> ClientControls,
)>('ldap_modify_ext_sW');

int ldap_modify_s(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
  Pointer<Pointer<ldapmod>> mods,
) =>
    _ldap_modify_s(
      ld,
      dn,
      mods,
    );

late final _ldap_modify_s = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
  Pointer<Pointer<ldapmod>> mods,
),
    int Function(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
  Pointer<Pointer<ldapmod>> mods,
)>('ldap_modify_sW');

int ldap_modrdn2(
  Pointer<ldap> ExternalHandle,
  Pointer<Utf16> DistinguishedName,
  Pointer<Utf16> NewDistinguishedName,
  int DeleteOldRdn,
) =>
    _ldap_modrdn2(
      ExternalHandle,
      DistinguishedName,
      NewDistinguishedName,
      DeleteOldRdn,
    );

late final _ldap_modrdn2 = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<ldap> ExternalHandle,
  Pointer<Utf16> DistinguishedName,
  Pointer<Utf16> NewDistinguishedName,
  Int32 DeleteOldRdn,
),
    int Function(
  Pointer<ldap> ExternalHandle,
  Pointer<Utf16> DistinguishedName,
  Pointer<Utf16> NewDistinguishedName,
  int DeleteOldRdn,
)>('ldap_modrdn2W');

int ldap_modrdn2_s(
  Pointer<ldap> ExternalHandle,
  Pointer<Utf16> DistinguishedName,
  Pointer<Utf16> NewDistinguishedName,
  int DeleteOldRdn,
) =>
    _ldap_modrdn2_s(
      ExternalHandle,
      DistinguishedName,
      NewDistinguishedName,
      DeleteOldRdn,
    );

late final _ldap_modrdn2_s = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<ldap> ExternalHandle,
  Pointer<Utf16> DistinguishedName,
  Pointer<Utf16> NewDistinguishedName,
  Int32 DeleteOldRdn,
),
    int Function(
  Pointer<ldap> ExternalHandle,
  Pointer<Utf16> DistinguishedName,
  Pointer<Utf16> NewDistinguishedName,
  int DeleteOldRdn,
)>('ldap_modrdn2_sW');

int ldap_modrdn(
  Pointer<ldap> ExternalHandle,
  Pointer<Utf16> DistinguishedName,
  Pointer<Utf16> NewDistinguishedName,
) =>
    _ldap_modrdn(
      ExternalHandle,
      DistinguishedName,
      NewDistinguishedName,
    );

late final _ldap_modrdn = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<ldap> ExternalHandle,
  Pointer<Utf16> DistinguishedName,
  Pointer<Utf16> NewDistinguishedName,
),
    int Function(
  Pointer<ldap> ExternalHandle,
  Pointer<Utf16> DistinguishedName,
  Pointer<Utf16> NewDistinguishedName,
)>('ldap_modrdnW');

int ldap_modrdn_s(
  Pointer<ldap> ExternalHandle,
  Pointer<Utf16> DistinguishedName,
  Pointer<Utf16> NewDistinguishedName,
) =>
    _ldap_modrdn_s(
      ExternalHandle,
      DistinguishedName,
      NewDistinguishedName,
    );

late final _ldap_modrdn_s = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<ldap> ExternalHandle,
  Pointer<Utf16> DistinguishedName,
  Pointer<Utf16> NewDistinguishedName,
),
    int Function(
  Pointer<ldap> ExternalHandle,
  Pointer<Utf16> DistinguishedName,
  Pointer<Utf16> NewDistinguishedName,
)>('ldap_modrdn_sW');

int ldap_msgfree(
  Pointer<LDAPMessage> res,
) =>
    _ldap_msgfree(
      res,
    );

late final _ldap_msgfree = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<LDAPMessage> res,
),
    int Function(
  Pointer<LDAPMessage> res,
)>('ldap_msgfree');

Pointer<Utf16> ldap_next_attribute(
  Pointer<ldap> ld,
  Pointer<LDAPMessage> entry,
  Pointer<berelement> ptr,
) =>
    _ldap_next_attribute(
      ld,
      entry,
      ptr,
    );

late final _ldap_next_attribute = _wldap32.lookupFunction<
    Pointer<Utf16> Function(
  Pointer<ldap> ld,
  Pointer<LDAPMessage> entry,
  Pointer<berelement> ptr,
),
    Pointer<Utf16> Function(
  Pointer<ldap> ld,
  Pointer<LDAPMessage> entry,
  Pointer<berelement> ptr,
)>('ldap_next_attributeW');

Pointer<LDAPMessage> ldap_next_entry(
  Pointer<ldap> ld,
  Pointer<LDAPMessage> entry,
) =>
    _ldap_next_entry(
      ld,
      entry,
    );

late final _ldap_next_entry = _wldap32.lookupFunction<
    Pointer<LDAPMessage> Function(
  Pointer<ldap> ld,
  Pointer<LDAPMessage> entry,
),
    Pointer<LDAPMessage> Function(
  Pointer<ldap> ld,
  Pointer<LDAPMessage> entry,
)>('ldap_next_entry');

Pointer<LDAPMessage> ldap_next_reference(
  Pointer<ldap> ld,
  Pointer<LDAPMessage> entry,
) =>
    _ldap_next_reference(
      ld,
      entry,
    );

late final _ldap_next_reference = _wldap32.lookupFunction<
    Pointer<LDAPMessage> Function(
  Pointer<ldap> ld,
  Pointer<LDAPMessage> entry,
),
    Pointer<LDAPMessage> Function(
  Pointer<ldap> ld,
  Pointer<LDAPMessage> entry,
)>('ldap_next_reference');

Pointer<ldap> ldap_open(
  Pointer<Utf16> HostName,
  int PortNumber,
) =>
    _ldap_open(
      HostName,
      PortNumber,
    );

late final _ldap_open = _wldap32.lookupFunction<
    Pointer<ldap> Function(
  Pointer<Utf16> HostName,
  Uint32 PortNumber,
),
    Pointer<ldap> Function(
  Pointer<Utf16> HostName,
  int PortNumber,
)>('ldap_openW');

int ldap_parse_extended_result(
  Pointer<ldap> Connection,
  Pointer<LDAPMessage> ResultMessage,
  Pointer<Pointer<Utf16>> ResultOID,
  Pointer<Pointer<LDAP_BERVAL>> ResultData,
  int Freeit,
) =>
    _ldap_parse_extended_result(
      Connection,
      ResultMessage,
      ResultOID,
      ResultData,
      Freeit,
    );

late final _ldap_parse_extended_result = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<ldap> Connection,
  Pointer<LDAPMessage> ResultMessage,
  Pointer<Pointer<Utf16>> ResultOID,
  Pointer<Pointer<LDAP_BERVAL>> ResultData,
  Uint8 Freeit,
),
    int Function(
  Pointer<ldap> Connection,
  Pointer<LDAPMessage> ResultMessage,
  Pointer<Pointer<Utf16>> ResultOID,
  Pointer<Pointer<LDAP_BERVAL>> ResultData,
  int Freeit,
)>('ldap_parse_extended_resultW');

int ldap_parse_page_control(
  Pointer<ldap> ExternalHandle,
  Pointer<Pointer<ldapcontrol>> ServerControls,
  Pointer<Uint32> TotalCount,
  Pointer<Pointer<LDAP_BERVAL>> Cookie,
) =>
    _ldap_parse_page_control(
      ExternalHandle,
      ServerControls,
      TotalCount,
      Cookie,
    );

late final _ldap_parse_page_control = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<ldap> ExternalHandle,
  Pointer<Pointer<ldapcontrol>> ServerControls,
  Pointer<Uint32> TotalCount,
  Pointer<Pointer<LDAP_BERVAL>> Cookie,
),
    int Function(
  Pointer<ldap> ExternalHandle,
  Pointer<Pointer<ldapcontrol>> ServerControls,
  Pointer<Uint32> TotalCount,
  Pointer<Pointer<LDAP_BERVAL>> Cookie,
)>('ldap_parse_page_controlW');

int ldap_parse_reference(
  Pointer<ldap> Connection,
  Pointer<LDAPMessage> ResultMessage,
  Pointer<Pointer<Pointer<Utf16>>> Referrals,
) =>
    _ldap_parse_reference(
      Connection,
      ResultMessage,
      Referrals,
    );

late final _ldap_parse_reference = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<ldap> Connection,
  Pointer<LDAPMessage> ResultMessage,
  Pointer<Pointer<Pointer<Utf16>>> Referrals,
),
    int Function(
  Pointer<ldap> Connection,
  Pointer<LDAPMessage> ResultMessage,
  Pointer<Pointer<Pointer<Utf16>>> Referrals,
)>('ldap_parse_referenceW');

int ldap_parse_result(
  Pointer<ldap> Connection,
  Pointer<LDAPMessage> ResultMessage,
  Pointer<Uint32> ReturnCode,
  Pointer<Pointer<Utf16>> MatchedDNs,
  Pointer<Pointer<Utf16>> ErrorMessage,
  Pointer<Pointer<Pointer<Uint16>>> Referrals,
  Pointer<Pointer<Pointer<ldapcontrol>>> ServerControls,
  int Freeit,
) =>
    _ldap_parse_result(
      Connection,
      ResultMessage,
      ReturnCode,
      MatchedDNs,
      ErrorMessage,
      Referrals,
      ServerControls,
      Freeit,
    );

late final _ldap_parse_result = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<ldap> Connection,
  Pointer<LDAPMessage> ResultMessage,
  Pointer<Uint32> ReturnCode,
  Pointer<Pointer<Utf16>> MatchedDNs,
  Pointer<Pointer<Utf16>> ErrorMessage,
  Pointer<Pointer<Pointer<Uint16>>> Referrals,
  Pointer<Pointer<Pointer<ldapcontrol>>> ServerControls,
  Uint8 Freeit,
),
    int Function(
  Pointer<ldap> Connection,
  Pointer<LDAPMessage> ResultMessage,
  Pointer<Uint32> ReturnCode,
  Pointer<Pointer<Utf16>> MatchedDNs,
  Pointer<Pointer<Utf16>> ErrorMessage,
  Pointer<Pointer<Pointer<Uint16>>> Referrals,
  Pointer<Pointer<Pointer<ldapcontrol>>> ServerControls,
  int Freeit,
)>('ldap_parse_resultW');

int ldap_parse_sort_control(
  Pointer<ldap> ExternalHandle,
  Pointer<Pointer<ldapcontrol>> Control,
  Pointer<Uint32> Result,
  Pointer<Pointer<Utf16>> Attribute,
) =>
    _ldap_parse_sort_control(
      ExternalHandle,
      Control,
      Result,
      Attribute,
    );

late final _ldap_parse_sort_control = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<ldap> ExternalHandle,
  Pointer<Pointer<ldapcontrol>> Control,
  Pointer<Uint32> Result,
  Pointer<Pointer<Utf16>> Attribute,
),
    int Function(
  Pointer<ldap> ExternalHandle,
  Pointer<Pointer<ldapcontrol>> Control,
  Pointer<Uint32> Result,
  Pointer<Pointer<Utf16>> Attribute,
)>('ldap_parse_sort_controlW');

int ldap_parse_vlv_control(
  Pointer<ldap> ExternalHandle,
  Pointer<Pointer<ldapcontrol>> Control,
  Pointer<Uint32> TargetPos,
  Pointer<Uint32> ListCount,
  Pointer<Pointer<LDAP_BERVAL>> Context,
  Pointer<Int32> ErrCode,
) =>
    _ldap_parse_vlv_control(
      ExternalHandle,
      Control,
      TargetPos,
      ListCount,
      Context,
      ErrCode,
    );

late final _ldap_parse_vlv_control = _wldap32.lookupFunction<
    Int32 Function(
  Pointer<ldap> ExternalHandle,
  Pointer<Pointer<ldapcontrol>> Control,
  Pointer<Uint32> TargetPos,
  Pointer<Uint32> ListCount,
  Pointer<Pointer<LDAP_BERVAL>> Context,
  Pointer<Int32> ErrCode,
),
    int Function(
  Pointer<ldap> ExternalHandle,
  Pointer<Pointer<ldapcontrol>> Control,
  Pointer<Uint32> TargetPos,
  Pointer<Uint32> ListCount,
  Pointer<Pointer<LDAP_BERVAL>> Context,
  Pointer<Int32> ErrCode,
)>('ldap_parse_vlv_controlW');

void ldap_perror(
  Pointer<ldap> ld,
  Pointer<Utf8> msg,
) =>
    _ldap_perror(
      ld,
      msg,
    );

late final _ldap_perror = _wldap32.lookupFunction<
    Void Function(
  Pointer<ldap> ld,
  Pointer<Utf8> msg,
),
    void Function(
  Pointer<ldap> ld,
  Pointer<Utf8> msg,
)>('ldap_perror');

int ldap_rename_ext(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
  Pointer<Utf16> NewRDN,
  Pointer<Utf16> NewParent,
  int DeleteOldRdn,
  Pointer<Pointer<ldapcontrol>> ServerControls,
  Pointer<Pointer<ldapcontrol>> ClientControls,
  Pointer<Uint32> MessageNumber,
) =>
    _ldap_rename_ext(
      ld,
      dn,
      NewRDN,
      NewParent,
      DeleteOldRdn,
      ServerControls,
      ClientControls,
      MessageNumber,
    );

late final _ldap_rename_ext = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
  Pointer<Utf16> NewRDN,
  Pointer<Utf16> NewParent,
  Int32 DeleteOldRdn,
  Pointer<Pointer<ldapcontrol>> ServerControls,
  Pointer<Pointer<ldapcontrol>> ClientControls,
  Pointer<Uint32> MessageNumber,
),
    int Function(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
  Pointer<Utf16> NewRDN,
  Pointer<Utf16> NewParent,
  int DeleteOldRdn,
  Pointer<Pointer<ldapcontrol>> ServerControls,
  Pointer<Pointer<ldapcontrol>> ClientControls,
  Pointer<Uint32> MessageNumber,
)>('ldap_rename_extW');

int ldap_rename_ext_s(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
  Pointer<Utf16> NewRDN,
  Pointer<Utf16> NewParent,
  int DeleteOldRdn,
  Pointer<Pointer<ldapcontrol>> ServerControls,
  Pointer<Pointer<ldapcontrol>> ClientControls,
) =>
    _ldap_rename_ext_s(
      ld,
      dn,
      NewRDN,
      NewParent,
      DeleteOldRdn,
      ServerControls,
      ClientControls,
    );

late final _ldap_rename_ext_s = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
  Pointer<Utf16> NewRDN,
  Pointer<Utf16> NewParent,
  Int32 DeleteOldRdn,
  Pointer<Pointer<ldapcontrol>> ServerControls,
  Pointer<Pointer<ldapcontrol>> ClientControls,
),
    int Function(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
  Pointer<Utf16> NewRDN,
  Pointer<Utf16> NewParent,
  int DeleteOldRdn,
  Pointer<Pointer<ldapcontrol>> ServerControls,
  Pointer<Pointer<ldapcontrol>> ClientControls,
)>('ldap_rename_ext_sW');

int ldap_result(
  Pointer<ldap> ld,
  int msgid,
  int all,
  Pointer<LDAP_TIMEVAL> timeout,
  Pointer<Pointer<LDAPMessage>> res,
) =>
    _ldap_result(
      ld,
      msgid,
      all,
      timeout,
      res,
    );

late final _ldap_result = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<ldap> ld,
  Uint32 msgid,
  Uint32 all,
  Pointer<LDAP_TIMEVAL> timeout,
  Pointer<Pointer<LDAPMessage>> res,
),
    int Function(
  Pointer<ldap> ld,
  int msgid,
  int all,
  Pointer<LDAP_TIMEVAL> timeout,
  Pointer<Pointer<LDAPMessage>> res,
)>('ldap_result');

int ldap_result2error(
  Pointer<ldap> ld,
  Pointer<LDAPMessage> res,
  int freeit,
) =>
    _ldap_result2error(
      ld,
      res,
      freeit,
    );

late final _ldap_result2error = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<ldap> ld,
  Pointer<LDAPMessage> res,
  Uint32 freeit,
),
    int Function(
  Pointer<ldap> ld,
  Pointer<LDAPMessage> res,
  int freeit,
)>('ldap_result2error');

int ldap_sasl_bind(
  Pointer<ldap> ExternalHandle,
  Pointer<Utf16> DistName,
  Pointer<Utf16> AuthMechanism,
  Pointer<LDAP_BERVAL> cred,
  Pointer<Pointer<ldapcontrol>> ServerCtrls,
  Pointer<Pointer<ldapcontrol>> ClientCtrls,
  Pointer<Int32> MessageNumber,
) =>
    _ldap_sasl_bind(
      ExternalHandle,
      DistName,
      AuthMechanism,
      cred,
      ServerCtrls,
      ClientCtrls,
      MessageNumber,
    );

late final _ldap_sasl_bind = _wldap32.lookupFunction<
    Int32 Function(
  Pointer<ldap> ExternalHandle,
  Pointer<Utf16> DistName,
  Pointer<Utf16> AuthMechanism,
  Pointer<LDAP_BERVAL> cred,
  Pointer<Pointer<ldapcontrol>> ServerCtrls,
  Pointer<Pointer<ldapcontrol>> ClientCtrls,
  Pointer<Int32> MessageNumber,
),
    int Function(
  Pointer<ldap> ExternalHandle,
  Pointer<Utf16> DistName,
  Pointer<Utf16> AuthMechanism,
  Pointer<LDAP_BERVAL> cred,
  Pointer<Pointer<ldapcontrol>> ServerCtrls,
  Pointer<Pointer<ldapcontrol>> ClientCtrls,
  Pointer<Int32> MessageNumber,
)>('ldap_sasl_bindW');

int ldap_sasl_bind_s(
  Pointer<ldap> ExternalHandle,
  Pointer<Utf16> DistName,
  Pointer<Utf16> AuthMechanism,
  Pointer<LDAP_BERVAL> cred,
  Pointer<Pointer<ldapcontrol>> ServerCtrls,
  Pointer<Pointer<ldapcontrol>> ClientCtrls,
  Pointer<Pointer<LDAP_BERVAL>> ServerData,
) =>
    _ldap_sasl_bind_s(
      ExternalHandle,
      DistName,
      AuthMechanism,
      cred,
      ServerCtrls,
      ClientCtrls,
      ServerData,
    );

late final _ldap_sasl_bind_s = _wldap32.lookupFunction<
    Int32 Function(
  Pointer<ldap> ExternalHandle,
  Pointer<Utf16> DistName,
  Pointer<Utf16> AuthMechanism,
  Pointer<LDAP_BERVAL> cred,
  Pointer<Pointer<ldapcontrol>> ServerCtrls,
  Pointer<Pointer<ldapcontrol>> ClientCtrls,
  Pointer<Pointer<LDAP_BERVAL>> ServerData,
),
    int Function(
  Pointer<ldap> ExternalHandle,
  Pointer<Utf16> DistName,
  Pointer<Utf16> AuthMechanism,
  Pointer<LDAP_BERVAL> cred,
  Pointer<Pointer<ldapcontrol>> ServerCtrls,
  Pointer<Pointer<ldapcontrol>> ClientCtrls,
  Pointer<Pointer<LDAP_BERVAL>> ServerData,
)>('ldap_sasl_bind_sW');

int ldap_search(
  Pointer<ldap> ld,
  Pointer<Utf16> base,
  int scope,
  Pointer<Utf16> filter,
  Pointer<Pointer<Uint16>> attrs,
  int attrsonly,
) =>
    _ldap_search(
      ld,
      base,
      scope,
      filter,
      attrs,
      attrsonly,
    );

late final _ldap_search = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<ldap> ld,
  Pointer<Utf16> base,
  Uint32 scope,
  Pointer<Utf16> filter,
  Pointer<Pointer<Uint16>> attrs,
  Uint32 attrsonly,
),
    int Function(
  Pointer<ldap> ld,
  Pointer<Utf16> base,
  int scope,
  Pointer<Utf16> filter,
  Pointer<Pointer<Uint16>> attrs,
  int attrsonly,
)>('ldap_searchW');

int ldap_search_abandon_page(
  Pointer<ldap> ExternalHandle,
  Pointer<ldapsearch> SearchBlock,
) =>
    _ldap_search_abandon_page(
      ExternalHandle,
      SearchBlock,
    );

late final _ldap_search_abandon_page = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<ldap> ExternalHandle,
  Pointer<ldapsearch> SearchBlock,
),
    int Function(
  Pointer<ldap> ExternalHandle,
  Pointer<ldapsearch> SearchBlock,
)>('ldap_search_abandon_page');

int ldap_search_ext(
  Pointer<ldap> ld,
  Pointer<Utf16> base,
  int scope,
  Pointer<Utf16> filter,
  Pointer<Pointer<Uint16>> attrs,
  int attrsonly,
  Pointer<Pointer<ldapcontrol>> ServerControls,
  Pointer<Pointer<ldapcontrol>> ClientControls,
  int TimeLimit,
  int SizeLimit,
  Pointer<Uint32> MessageNumber,
) =>
    _ldap_search_ext(
      ld,
      base,
      scope,
      filter,
      attrs,
      attrsonly,
      ServerControls,
      ClientControls,
      TimeLimit,
      SizeLimit,
      MessageNumber,
    );

late final _ldap_search_ext = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<ldap> ld,
  Pointer<Utf16> base,
  Uint32 scope,
  Pointer<Utf16> filter,
  Pointer<Pointer<Uint16>> attrs,
  Uint32 attrsonly,
  Pointer<Pointer<ldapcontrol>> ServerControls,
  Pointer<Pointer<ldapcontrol>> ClientControls,
  Uint32 TimeLimit,
  Uint32 SizeLimit,
  Pointer<Uint32> MessageNumber,
),
    int Function(
  Pointer<ldap> ld,
  Pointer<Utf16> base,
  int scope,
  Pointer<Utf16> filter,
  Pointer<Pointer<Uint16>> attrs,
  int attrsonly,
  Pointer<Pointer<ldapcontrol>> ServerControls,
  Pointer<Pointer<ldapcontrol>> ClientControls,
  int TimeLimit,
  int SizeLimit,
  Pointer<Uint32> MessageNumber,
)>('ldap_search_extW');

int ldap_search_ext_s(
  Pointer<ldap> ld,
  Pointer<Utf16> base,
  int scope,
  Pointer<Utf16> filter,
  Pointer<Pointer<Uint16>> attrs,
  int attrsonly,
  Pointer<Pointer<ldapcontrol>> ServerControls,
  Pointer<Pointer<ldapcontrol>> ClientControls,
  Pointer<LDAP_TIMEVAL> timeout,
  int SizeLimit,
  Pointer<Pointer<LDAPMessage>> res,
) =>
    _ldap_search_ext_s(
      ld,
      base,
      scope,
      filter,
      attrs,
      attrsonly,
      ServerControls,
      ClientControls,
      timeout,
      SizeLimit,
      res,
    );

late final _ldap_search_ext_s = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<ldap> ld,
  Pointer<Utf16> base,
  Uint32 scope,
  Pointer<Utf16> filter,
  Pointer<Pointer<Uint16>> attrs,
  Uint32 attrsonly,
  Pointer<Pointer<ldapcontrol>> ServerControls,
  Pointer<Pointer<ldapcontrol>> ClientControls,
  Pointer<LDAP_TIMEVAL> timeout,
  Uint32 SizeLimit,
  Pointer<Pointer<LDAPMessage>> res,
),
    int Function(
  Pointer<ldap> ld,
  Pointer<Utf16> base,
  int scope,
  Pointer<Utf16> filter,
  Pointer<Pointer<Uint16>> attrs,
  int attrsonly,
  Pointer<Pointer<ldapcontrol>> ServerControls,
  Pointer<Pointer<ldapcontrol>> ClientControls,
  Pointer<LDAP_TIMEVAL> timeout,
  int SizeLimit,
  Pointer<Pointer<LDAPMessage>> res,
)>('ldap_search_ext_sW');

Pointer<ldapsearch> ldap_search_init_page(
  Pointer<ldap> ExternalHandle,
  Pointer<Utf16> DistinguishedName,
  int ScopeOfSearch,
  Pointer<Utf16> SearchFilter,
  Pointer<Pointer<Uint16>> AttributeList,
  int AttributesOnly,
  Pointer<Pointer<ldapcontrol>> ServerControls,
  Pointer<Pointer<ldapcontrol>> ClientControls,
  int PageTimeLimit,
  int TotalSizeLimit,
  Pointer<Pointer<ldapsortkey>> SortKeys,
) =>
    _ldap_search_init_page(
      ExternalHandle,
      DistinguishedName,
      ScopeOfSearch,
      SearchFilter,
      AttributeList,
      AttributesOnly,
      ServerControls,
      ClientControls,
      PageTimeLimit,
      TotalSizeLimit,
      SortKeys,
    );

late final _ldap_search_init_page = _wldap32.lookupFunction<
    Pointer<ldapsearch> Function(
  Pointer<ldap> ExternalHandle,
  Pointer<Utf16> DistinguishedName,
  Uint32 ScopeOfSearch,
  Pointer<Utf16> SearchFilter,
  Pointer<Pointer<Uint16>> AttributeList,
  Uint32 AttributesOnly,
  Pointer<Pointer<ldapcontrol>> ServerControls,
  Pointer<Pointer<ldapcontrol>> ClientControls,
  Uint32 PageTimeLimit,
  Uint32 TotalSizeLimit,
  Pointer<Pointer<ldapsortkey>> SortKeys,
),
    Pointer<ldapsearch> Function(
  Pointer<ldap> ExternalHandle,
  Pointer<Utf16> DistinguishedName,
  int ScopeOfSearch,
  Pointer<Utf16> SearchFilter,
  Pointer<Pointer<Uint16>> AttributeList,
  int AttributesOnly,
  Pointer<Pointer<ldapcontrol>> ServerControls,
  Pointer<Pointer<ldapcontrol>> ClientControls,
  int PageTimeLimit,
  int TotalSizeLimit,
  Pointer<Pointer<ldapsortkey>> SortKeys,
)>('ldap_search_init_pageW');

int ldap_search_s(
  Pointer<ldap> ld,
  Pointer<Utf16> base,
  int scope,
  Pointer<Utf16> filter,
  Pointer<Pointer<Uint16>> attrs,
  int attrsonly,
  Pointer<Pointer<LDAPMessage>> res,
) =>
    _ldap_search_s(
      ld,
      base,
      scope,
      filter,
      attrs,
      attrsonly,
      res,
    );

late final _ldap_search_s = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<ldap> ld,
  Pointer<Utf16> base,
  Uint32 scope,
  Pointer<Utf16> filter,
  Pointer<Pointer<Uint16>> attrs,
  Uint32 attrsonly,
  Pointer<Pointer<LDAPMessage>> res,
),
    int Function(
  Pointer<ldap> ld,
  Pointer<Utf16> base,
  int scope,
  Pointer<Utf16> filter,
  Pointer<Pointer<Uint16>> attrs,
  int attrsonly,
  Pointer<Pointer<LDAPMessage>> res,
)>('ldap_search_sW');

int ldap_search_st(
  Pointer<ldap> ld,
  Pointer<Utf16> base,
  int scope,
  Pointer<Utf16> filter,
  Pointer<Pointer<Uint16>> attrs,
  int attrsonly,
  Pointer<LDAP_TIMEVAL> timeout,
  Pointer<Pointer<LDAPMessage>> res,
) =>
    _ldap_search_st(
      ld,
      base,
      scope,
      filter,
      attrs,
      attrsonly,
      timeout,
      res,
    );

late final _ldap_search_st = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<ldap> ld,
  Pointer<Utf16> base,
  Uint32 scope,
  Pointer<Utf16> filter,
  Pointer<Pointer<Uint16>> attrs,
  Uint32 attrsonly,
  Pointer<LDAP_TIMEVAL> timeout,
  Pointer<Pointer<LDAPMessage>> res,
),
    int Function(
  Pointer<ldap> ld,
  Pointer<Utf16> base,
  int scope,
  Pointer<Utf16> filter,
  Pointer<Pointer<Uint16>> attrs,
  int attrsonly,
  Pointer<LDAP_TIMEVAL> timeout,
  Pointer<Pointer<LDAPMessage>> res,
)>('ldap_search_stW');

int ldap_set_dbg_flags(
  int NewFlags,
) =>
    _ldap_set_dbg_flags(
      NewFlags,
    );

late final _ldap_set_dbg_flags = _wldap32.lookupFunction<
    Uint32 Function(
  Uint32 NewFlags,
),
    int Function(
  int NewFlags,
)>('ldap_set_dbg_flags');

void ldap_set_dbg_routine(
  Pointer<NativeFunction<DBGPRINT>> DebugPrintRoutine,
) =>
    _ldap_set_dbg_routine(
      DebugPrintRoutine,
    );

late final _ldap_set_dbg_routine = _wldap32.lookupFunction<
    Void Function(
  Pointer<NativeFunction<DBGPRINT>> DebugPrintRoutine,
),
    void Function(
  Pointer<NativeFunction<DBGPRINT>> DebugPrintRoutine,
)>('ldap_set_dbg_routine');

int ldap_set_option(
  Pointer<ldap> ld,
  int option,
  Pointer invalue,
) =>
    _ldap_set_option(
      ld,
      option,
      invalue,
    );

late final _ldap_set_option = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<ldap> ld,
  Int32 option,
  Pointer invalue,
),
    int Function(
  Pointer<ldap> ld,
  int option,
  Pointer invalue,
)>('ldap_set_optionW');

int ldap_simple_bind(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
  Pointer<Utf16> passwd,
) =>
    _ldap_simple_bind(
      ld,
      dn,
      passwd,
    );

late final _ldap_simple_bind = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
  Pointer<Utf16> passwd,
),
    int Function(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
  Pointer<Utf16> passwd,
)>('ldap_simple_bindW');

int ldap_simple_bind_s(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
  Pointer<Utf16> passwd,
) =>
    _ldap_simple_bind_s(
      ld,
      dn,
      passwd,
    );

late final _ldap_simple_bind_s = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
  Pointer<Utf16> passwd,
),
    int Function(
  Pointer<ldap> ld,
  Pointer<Utf16> dn,
  Pointer<Utf16> passwd,
)>('ldap_simple_bind_sW');

Pointer<ldap> ldap_sslinit(
  Pointer<Utf16> HostName,
  int PortNumber,
  int secure,
) =>
    _ldap_sslinit(
      HostName,
      PortNumber,
      secure,
    );

late final _ldap_sslinit = _wldap32.lookupFunction<
    Pointer<ldap> Function(
  Pointer<Utf16> HostName,
  Uint32 PortNumber,
  Int32 secure,
),
    Pointer<ldap> Function(
  Pointer<Utf16> HostName,
  int PortNumber,
  int secure,
)>('ldap_sslinitW');

int ldap_start_tls_s(
  Pointer<ldap> ExternalHandle,
  Pointer<Uint32> ServerReturnValue,
  Pointer<Pointer<LDAPMessage>> result,
  Pointer<Pointer<ldapcontrol>> ServerControls,
  Pointer<Pointer<ldapcontrol>> ClientControls,
) =>
    _ldap_start_tls_s(
      ExternalHandle,
      ServerReturnValue,
      result,
      ServerControls,
      ClientControls,
    );

late final _ldap_start_tls_s = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<ldap> ExternalHandle,
  Pointer<Uint32> ServerReturnValue,
  Pointer<Pointer<LDAPMessage>> result,
  Pointer<Pointer<ldapcontrol>> ServerControls,
  Pointer<Pointer<ldapcontrol>> ClientControls,
),
    int Function(
  Pointer<ldap> ExternalHandle,
  Pointer<Uint32> ServerReturnValue,
  Pointer<Pointer<LDAPMessage>> result,
  Pointer<Pointer<ldapcontrol>> ServerControls,
  Pointer<Pointer<ldapcontrol>> ClientControls,
)>('ldap_start_tls_sW');

int ldap_startup(
  Pointer<ldap_version_info> version,
  Pointer<IntPtr> Instance,
) =>
    _ldap_startup(
      version,
      Instance,
    );

late final _ldap_startup = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<ldap_version_info> version,
  Pointer<IntPtr> Instance,
),
    int Function(
  Pointer<ldap_version_info> version,
  Pointer<IntPtr> Instance,
)>('ldap_startup');

int ldap_stop_tls_s(
  Pointer<ldap> ExternalHandle,
) =>
    _ldap_stop_tls_s(
      ExternalHandle,
    );

late final _ldap_stop_tls_s = _wldap32.lookupFunction<
    Uint8 Function(
  Pointer<ldap> ExternalHandle,
),
    int Function(
  Pointer<ldap> ExternalHandle,
)>('ldap_stop_tls_s');

int ldap_ufn2dn(
  Pointer<Utf16> ufn,
  Pointer<Pointer<Utf16>> pDn,
) =>
    _ldap_ufn2dn(
      ufn,
      pDn,
    );

late final _ldap_ufn2dn = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> ufn,
  Pointer<Pointer<Utf16>> pDn,
),
    int Function(
  Pointer<Utf16> ufn,
  Pointer<Pointer<Utf16>> pDn,
)>('ldap_ufn2dnW');

int ldap_unbind(
  Pointer<ldap> ld,
) =>
    _ldap_unbind(
      ld,
    );

late final _ldap_unbind = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<ldap> ld,
),
    int Function(
  Pointer<ldap> ld,
)>('ldap_unbind');

int ldap_unbind_s(
  Pointer<ldap> ld,
) =>
    _ldap_unbind_s(
      ld,
    );

late final _ldap_unbind_s = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<ldap> ld,
),
    int Function(
  Pointer<ldap> ld,
)>('ldap_unbind_s');

int ldap_value_free(
  Pointer<Pointer<Utf16>> vals,
) =>
    _ldap_value_free(
      vals,
    );

late final _ldap_value_free = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<Pointer<Utf16>> vals,
),
    int Function(
  Pointer<Pointer<Utf16>> vals,
)>('ldap_value_freeW');

int ldap_value_free_len(
  Pointer<Pointer<LDAP_BERVAL>> vals,
) =>
    _ldap_value_free_len(
      vals,
    );

late final _ldap_value_free_len = _wldap32.lookupFunction<
    Uint32 Function(
  Pointer<Pointer<LDAP_BERVAL>> vals,
),
    int Function(
  Pointer<Pointer<LDAP_BERVAL>> vals,
)>('ldap_value_free_len');
