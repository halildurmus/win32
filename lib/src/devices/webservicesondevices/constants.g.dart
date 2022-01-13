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

const WSDAPI_OPTION_MAX_INBOUND_MESSAGE_SIZE = 0x1;
const WSDAPI_OPTION_TRACE_XML_TO_DEBUGGER = 0x2;
const WSDAPI_OPTION_TRACE_XML_TO_FILE = 0x3;
const WSDAPI_SSL_CERT_APPLY_DEFAULT_CHECKS = 0x0;
const WSDAPI_SSL_CERT_IGNORE_REVOCATION = 0x1;
const WSDAPI_SSL_CERT_IGNORE_EXPIRY = 0x2;
const WSDAPI_SSL_CERT_IGNORE_WRONG_USAGE = 0x4;
const WSDAPI_SSL_CERT_IGNORE_UNKNOWN_CA = 0x8;
const WSDAPI_SSL_CERT_IGNORE_INVALID_CN = 0x10;
const WSDAPI_COMPACTSIG_ACCEPT_ALL_MESSAGES = 0x1;
const WSD_SECURITY_HTTP_AUTH_SCHEME_NEGOTIATE = 0x1;
const WSD_SECURITY_HTTP_AUTH_SCHEME_NTLM = 0x2;
const WSDAPI_ADDRESSFAMILY_IPV4 = 0x1;
const WSDAPI_ADDRESSFAMILY_IPV6 = 0x2;
