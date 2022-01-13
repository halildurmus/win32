// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// Native callback functions that can get called by the Win32 API

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'structs.g.dart';
import '../../combase.dart';
import '../../guid.dart';
import '../../networkmanagement/windowsfirewall/structs.g.dart';
import '../../foundation/structs.g.dart';

typedef PAC_CHANGES_CALLBACK_FN = Void Function(
  Pointer context,
  Pointer<INET_FIREWALL_AC_CHANGE> pChange,
);
typedef PFN_FWADDDYNAMICKEYWORDADDRESS0 = Uint32 Function(
  Pointer<tag_FW_DYNAMIC_KEYWORD_ADDRESS0> dynamicKeywordAddress,
);
typedef PFN_FWDELETEDYNAMICKEYWORDADDRESS0 = Uint32 Function(
  GUID dynamicKeywordAddressId,
);
typedef PFN_FWENUMDYNAMICKEYWORDADDRESSBYID0 = Uint32 Function(
  GUID dynamicKeywordAddressId,
  Pointer<Pointer<tag_FW_DYNAMIC_KEYWORD_ADDRESS_DATA0>>
      dynamicKeywordAddressData,
);
typedef PFN_FWENUMDYNAMICKEYWORDADDRESSESBYTYPE0 = Uint32 Function(
  Uint32 flags,
  Pointer<Pointer<tag_FW_DYNAMIC_KEYWORD_ADDRESS_DATA0>>
      dynamicKeywordAddressData,
);
typedef PFN_FWFREEDYNAMICKEYWORDADDRESSDATA0 = Uint32 Function(
  Pointer<tag_FW_DYNAMIC_KEYWORD_ADDRESS_DATA0> dynamicKeywordAddressData,
);
typedef PFN_FWUPDATEDYNAMICKEYWORDADDRESS0 = Uint32 Function(
  GUID dynamicKeywordAddressId,
  Pointer<Utf16> updatedAddresses,
  Int32 append,
);
typedef PNETISO_EDP_ID_CALLBACK_FN = Void Function(
  Pointer context,
  Pointer<Utf16> wszEnterpriseId,
  Uint32 dwErr,
);
