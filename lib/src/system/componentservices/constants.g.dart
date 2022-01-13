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

const GUID_STRING_SIZE = 0x28;
const DATA_NOT_AVAILABLE = 0xffffffff;
const MTXDM_E_ENLISTRESOURCEFAILED = 0x8004e100;
const CRR_NO_REASON_SUPPLIED = 0x0;
const CRR_LIFETIME_LIMIT = 0xffffffff;
const CRR_ACTIVATION_LIMIT = 0xfffffffe;
const CRR_CALL_LIMIT = 0xfffffffd;
const CRR_MEMORY_LIMIT = 0xfffffffc;
const CRR_RECYCLED_FROM_UI = 0xfffffffb;
const SecurityIdentity = '{ECABB0A5-7F19-11D2-978E-0000F8757E2A}';
const SecurityCallers = '{ECABB0A6-7F19-11D2-978E-0000F8757E2A}';
const GetSecurityCallContextAppObject =
    '{ECABB0A8-7F19-11D2-978E-0000F8757E2A}';
const Dummy30040732 = '{ECABB0A9-7F19-11D2-978E-0000F8757E2A}';
const ByotServerEx = '{ECABB0AA-7F19-11D2-978E-0000F8757E2A}';
const CServiceConfig = '{ECABB0C8-7F19-11D2-978E-0000F8757E2A}';
const COMEvents = '{ECABB0AB-7F19-11D2-978E-0000F8757E2A}';
const CoMTSLocator = '{ECABB0AC-7F19-11D2-978E-0000F8757E2A}';
const ComServiceEvents = '{ECABB0C3-7F19-11D2-978E-0000F8757E2A}';
const ComSystemAppEventData = '{ECABB0C6-7F19-11D2-978E-0000F8757E2A}';
const CRMClerk = '{ECABB0BD-7F19-11D2-978E-0000F8757E2A}';
const CRMRecoveryClerk = '{ECABB0BE-7F19-11D2-978E-0000F8757E2A}';
const PoolMgr = '{ECABAFB5-7F19-11D2-978E-0000F8757E2A}';
const EventServer = '{ECABAFBC-7F19-11D2-978E-0000F8757E2A}';
const TrackerServer = '{ECABAFB9-7F19-11D2-978E-0000F8757E2A}';
const ClrAssemblyLocator = '{458AA3B5-265A-4B75-BC05-9BEA4630CF18}';
const COMAdminCatalogObject = '{F618C515-DFB8-11D1-A2CF-00805FC79235}';
const COMAdminCatalogCollection = '{F618C516-DFB8-11D1-A2CF-00805FC79235}';
