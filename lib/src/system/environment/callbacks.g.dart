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
import '../../system/environment/structs.g.dart';

typedef VBS_BASIC_ENCLAVE_BASIC_CALL_COMMIT_PAGES = Int32 Function(
  Pointer EnclaveAddress,
  IntPtr NumberOfBytes,
  Pointer SourceAddress,
  Uint32 PageProtection,
);
typedef VBS_BASIC_ENCLAVE_BASIC_CALL_CREATE_THREAD = Int32 Function(
  Pointer<VBS_BASIC_ENCLAVE_THREAD_DESCRIPTOR64> ThreadDescriptor,
);
typedef VBS_BASIC_ENCLAVE_BASIC_CALL_DECOMMIT_PAGES = Int32 Function(
  Pointer EnclaveAddress,
  IntPtr NumberOfBytes,
);
typedef VBS_BASIC_ENCLAVE_BASIC_CALL_GENERATE_KEY = Int32 Function(
  Pointer<ENCLAVE_VBS_BASIC_KEY_REQUEST> KeyRequest,
  Uint32 RequestedKeySize,
  Pointer<Uint8> ReturnedKey,
);
typedef VBS_BASIC_ENCLAVE_BASIC_CALL_GENERATE_RANDOM_DATA = Int32 Function(
  Pointer<Uint8> Buffer,
  Uint32 NumberOfBytes,
  Pointer<Uint64> Generation,
);
typedef VBS_BASIC_ENCLAVE_BASIC_CALL_GENERATE_REPORT = Int32 Function(
  Pointer<Uint8> EnclaveData,
  Pointer Report,
  Uint32 BufferSize,
  Pointer<Uint32> OutputSize,
);
typedef VBS_BASIC_ENCLAVE_BASIC_CALL_GET_ENCLAVE_INFORMATION = Int32 Function(
  Pointer<ENCLAVE_INFORMATION> EnclaveInfo,
);
typedef VBS_BASIC_ENCLAVE_BASIC_CALL_INTERRUPT_THREAD = Int32 Function(
  Pointer<VBS_BASIC_ENCLAVE_THREAD_DESCRIPTOR64> ThreadDescriptor,
);
typedef VBS_BASIC_ENCLAVE_BASIC_CALL_PROTECT_PAGES = Int32 Function(
  Pointer EnclaveAddress,
  IntPtr NumberOfytes,
  Uint32 PageProtection,
);
typedef VBS_BASIC_ENCLAVE_BASIC_CALL_RETURN_FROM_ENCLAVE = Void Function(
  IntPtr ReturnValue,
);
typedef VBS_BASIC_ENCLAVE_BASIC_CALL_RETURN_FROM_EXCEPTION = Int32 Function(
  Pointer<VBS_BASIC_ENCLAVE_EXCEPTION_AMD64> ExceptionRecord,
);
typedef VBS_BASIC_ENCLAVE_BASIC_CALL_TERMINATE_THREAD = Int32 Function(
  Pointer<VBS_BASIC_ENCLAVE_THREAD_DESCRIPTOR64> ThreadDescriptor,
);
typedef VBS_BASIC_ENCLAVE_BASIC_CALL_VERIFY_REPORT = Int32 Function(
  Pointer Report,
  Uint32 ReportSize,
);
