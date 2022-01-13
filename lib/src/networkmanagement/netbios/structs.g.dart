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

/// {@category Struct}
class ACTION_HEADER extends Struct {
  @Uint32()
  external int transport_id;

  @Uint16()
  external int action_code;

  @Uint16()
  external int reserved;
}

/// {@category Struct}
class ADAPTER_STATUS extends Struct {
  @Array(6)
  external Array<Uint8> adapter_address;

  @Uint8()
  external int rev_major;

  @Uint8()
  external int reserved0;

  @Uint8()
  external int adapter_type;

  @Uint8()
  external int rev_minor;

  @Uint16()
  external int duration;

  @Uint16()
  external int frmr_recv;

  @Uint16()
  external int frmr_xmit;

  @Uint16()
  external int iframe_recv_err;

  @Uint16()
  external int xmit_aborts;

  @Uint32()
  external int xmit_success;

  @Uint32()
  external int recv_success;

  @Uint16()
  external int iframe_xmit_err;

  @Uint16()
  external int recv_buff_unavail;

  @Uint16()
  external int t1_timeouts;

  @Uint16()
  external int ti_timeouts;

  @Uint32()
  external int reserved1;

  @Uint16()
  external int free_ncbs;

  @Uint16()
  external int max_cfg_ncbs;

  @Uint16()
  external int max_ncbs;

  @Uint16()
  external int xmit_buf_unavail;

  @Uint16()
  external int max_dgram_size;

  @Uint16()
  external int pending_sess;

  @Uint16()
  external int max_cfg_sess;

  @Uint16()
  external int max_sess;

  @Uint16()
  external int max_sess_pkt_size;

  @Uint16()
  external int name_count;
}

/// {@category Struct}
class FIND_NAME_BUFFER extends Struct {
  @Uint8()
  external int length;

  @Uint8()
  external int access_control;

  @Uint8()
  external int frame_control;

  @Array(6)
  external Array<Uint8> destination_addr;

  @Array(6)
  external Array<Uint8> source_addr;

  @Array(18)
  external Array<Uint8> routing_info;
}

/// {@category Struct}
class FIND_NAME_HEADER extends Struct {
  @Uint16()
  external int node_count;

  @Uint8()
  external int reserved;

  @Uint8()
  external int unique_group;
}

/// {@category Struct}
class LANA_ENUM extends Struct {
  @Uint8()
  external int length;

  @Array(255)
  external Array<Uint8> lana;
}

/// {@category Struct}
class NAME_BUFFER extends Struct {
  @Array(16)
  external Array<Uint8> name;

  @Uint8()
  external int name_num;

  @Uint8()
  external int name_flags;
}

/// {@category Struct}
class NCB extends Struct {
  @Uint8()
  external int ncb_command;

  @Uint8()
  external int ncb_retcode;

  @Uint8()
  external int ncb_lsn;

  @Uint8()
  external int ncb_num;

  external Pointer<Uint8> ncb_buffer;

  @Uint16()
  external int ncb_length;

  @Array(16)
  external Array<Uint8> ncb_callname;

  @Array(16)
  external Array<Uint8> ncb_name;

  @Uint8()
  external int ncb_rto;

  @Uint8()
  external int ncb_sto;

  @IntPtr()
  external int ncb_post;

  @Uint8()
  external int ncb_lana_num;

  @Uint8()
  external int ncb_cmd_cplt;

  @Array(18)
  external Array<Uint8> ncb_reserve;

  @IntPtr()
  external int ncb_event;
}

/// {@category Struct}
class SESSION_BUFFER extends Struct {
  @Uint8()
  external int lsn;

  @Uint8()
  external int state;

  @Array(16)
  external Array<Uint8> local_name;

  @Array(16)
  external Array<Uint8> remote_name;

  @Uint8()
  external int rcvs_outstanding;

  @Uint8()
  external int sends_outstanding;
}

/// {@category Struct}
class SESSION_HEADER extends Struct {
  @Uint8()
  external int sess_name;

  @Uint8()
  external int num_sess;

  @Uint8()
  external int rcv_dg_outstanding;

  @Uint8()
  external int rcv_any_outstanding;
}
