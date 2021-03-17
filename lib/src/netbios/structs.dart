// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// -----------------------------------------------------------------------------
// Linter exceptions
// -----------------------------------------------------------------------------
// ignore_for_file: camel_case_types ignore_for_file: camel_case_extensions
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

class NCB extends Struct {
  @Uint8() external int ncb_command;
  @Uint8() external int ncb_retcode;
  @Uint8() external int ncb_lsn;
  @Uint8() external int ncb_num;
  external Pointer<Uint8> ncb_buffer;
  @Uint16() external int ncb_length;
  external __ubyte__ ncb_callname;
  external __ubyte__ ncb_name;
  @Uint8() external int ncb_rto;
  @Uint8() external int ncb_sto;
  @IntPtr() external int ncb_post;
  @Uint8() external int ncb_lana_num;
  @Uint8() external int ncb_cmd_cplt;
  external __ubyte__ ncb_reserve;
  @IntPtr() external int ncb_event;
}

class ADAPTER_STATUS extends Struct {
  external __ubyte__ adapter_address;
  @Uint8() external int rev_major;
  @Uint8() external int reserved0;
  @Uint8() external int adapter_type;
  @Uint8() external int rev_minor;
  @Uint16() external int duration;
  @Uint16() external int frmr_recv;
  @Uint16() external int frmr_xmit;
  @Uint16() external int iframe_recv_err;
  @Uint16() external int xmit_aborts;
  @Uint32() external int xmit_success;
  @Uint32() external int recv_success;
  @Uint16() external int iframe_xmit_err;
  @Uint16() external int recv_buff_unavail;
  @Uint16() external int t1_timeouts;
  @Uint16() external int ti_timeouts;
  @Uint32() external int reserved1;
  @Uint16() external int free_ncbs;
  @Uint16() external int max_cfg_ncbs;
  @Uint16() external int max_ncbs;
  @Uint16() external int xmit_buf_unavail;
  @Uint16() external int max_dgram_size;
  @Uint16() external int pending_sess;
  @Uint16() external int max_cfg_sess;
  @Uint16() external int max_sess;
  @Uint16() external int max_sess_pkt_size;
  @Uint16() external int name_count;
}

class NAME_BUFFER extends Struct {
  external __ubyte__ name;
  @Uint8() external int name_num;
  @Uint8() external int name_flags;
}

class SESSION_HEADER extends Struct {
  @Uint8() external int sess_name;
  @Uint8() external int num_sess;
  @Uint8() external int rcv_dg_outstanding;
  @Uint8() external int rcv_any_outstanding;
}

class SESSION_BUFFER extends Struct {
  @Uint8() external int lsn;
  @Uint32() external int state;
  external __ubyte__ local_name;
  external __ubyte__ remote_name;
  @Uint8() external int rcvs_outstanding;
  @Uint8() external int sends_outstanding;
}

class LANA_ENUM extends Struct {
  @Uint8() external int length;
  external __ubyte__ lana;
}

class FIND_NAME_HEADER extends Struct {
  @Uint16() external int node_count;
  @Uint8() external int reserved;
  @Uint8() external int unique_group;
}

class FIND_NAME_BUFFER extends Struct {
  @Uint8() external int length;
  @Uint8() external int access_control;
  @Uint8() external int frame_control;
  external __ubyte__ destination_addr;
  external __ubyte__ source_addr;
  external __ubyte__ routing_info;
}

class ACTION_HEADER extends Struct {
  @Uint32() external int transport_id;
  @Uint16() external int action_code;
  @Uint16() external int reserved;
}

