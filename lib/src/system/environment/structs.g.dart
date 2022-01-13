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
import '../../system/environment/structs.g.dart';
import '../../system/environment/callbacks.g.dart';

/// {@category Struct}
@Packed(1)
class ENCLAVE_IDENTITY extends Struct {
  @Array(32)
  external Array<Uint8> OwnerId;

  @Array(32)
  external Array<Uint8> UniqueId;

  @Array(32)
  external Array<Uint8> AuthorId;

  @Array(16)
  external Array<Uint8> FamilyId;

  @Array(16)
  external Array<Uint8> ImageId;

  @Uint32()
  external int EnclaveSvn;

  @Uint32()
  external int SecureKernelSvn;

  @Uint32()
  external int PlatformSvn;

  @Uint32()
  external int Flags;

  @Uint32()
  external int SigningLevel;

  @Uint32()
  external int EnclaveType;
}

/// {@category Struct}
@Packed(1)
class ENCLAVE_INFORMATION extends Struct {
  @Uint32()
  external int EnclaveType;

  @Uint32()
  external int Reserved;

  external Pointer BaseAddress;

  @IntPtr()
  external int Size;

  external ENCLAVE_IDENTITY Identity;
}

/// {@category Struct}
class ENCLAVE_VBS_BASIC_KEY_REQUEST extends Struct {
  @Uint32()
  external int RequestSize;

  @Uint32()
  external int Flags;

  @Uint32()
  external int EnclaveSVN;

  @Uint32()
  external int SystemKeyID;

  @Uint32()
  external int CurrentSystemKeyID;
}

/// {@category Struct}
class VBS_BASIC_ENCLAVE_EXCEPTION_AMD64 extends Struct {
  @Uint32()
  external int ExceptionCode;

  @Uint32()
  external int NumberParameters;

  @Array(3)
  external Array<IntPtr> ExceptionInformation;

  @IntPtr()
  external int ExceptionRAX;

  @IntPtr()
  external int ExceptionRCX;

  @IntPtr()
  external int ExceptionRIP;

  @IntPtr()
  external int ExceptionRFLAGS;

  @IntPtr()
  external int ExceptionRSP;
}

/// {@category Struct}
class VBS_BASIC_ENCLAVE_SYSCALL_PAGE extends Struct {
  external Pointer<
          NativeFunction<VBS_BASIC_ENCLAVE_BASIC_CALL_RETURN_FROM_ENCLAVE>>
      ReturnFromEnclave;

  external Pointer<
          NativeFunction<VBS_BASIC_ENCLAVE_BASIC_CALL_RETURN_FROM_EXCEPTION>>
      ReturnFromException;

  external Pointer<
          NativeFunction<VBS_BASIC_ENCLAVE_BASIC_CALL_TERMINATE_THREAD>>
      TerminateThread;

  external Pointer<
          NativeFunction<VBS_BASIC_ENCLAVE_BASIC_CALL_INTERRUPT_THREAD>>
      InterruptThread;

  external Pointer<NativeFunction<VBS_BASIC_ENCLAVE_BASIC_CALL_COMMIT_PAGES>>
      CommitPages;

  external Pointer<NativeFunction<VBS_BASIC_ENCLAVE_BASIC_CALL_DECOMMIT_PAGES>>
      DecommitPages;

  external Pointer<NativeFunction<VBS_BASIC_ENCLAVE_BASIC_CALL_PROTECT_PAGES>>
      ProtectPages;

  external Pointer<NativeFunction<VBS_BASIC_ENCLAVE_BASIC_CALL_CREATE_THREAD>>
      CreateThread;

  external Pointer<
          NativeFunction<VBS_BASIC_ENCLAVE_BASIC_CALL_GET_ENCLAVE_INFORMATION>>
      GetEnclaveInformation;

  external Pointer<NativeFunction<VBS_BASIC_ENCLAVE_BASIC_CALL_GENERATE_KEY>>
      GenerateKey;

  external Pointer<NativeFunction<VBS_BASIC_ENCLAVE_BASIC_CALL_GENERATE_REPORT>>
      GenerateReport;

  external Pointer<NativeFunction<VBS_BASIC_ENCLAVE_BASIC_CALL_VERIFY_REPORT>>
      VerifyReport;

  external Pointer<
          NativeFunction<VBS_BASIC_ENCLAVE_BASIC_CALL_GENERATE_RANDOM_DATA>>
      GenerateRandomData;
}

/// {@category Struct}
class VBS_BASIC_ENCLAVE_THREAD_DESCRIPTOR32 extends Struct {
  @Array(4)
  external Array<Uint32> ThreadContext;

  @Uint32()
  external int EntryPoint;

  @Uint32()
  external int StackPointer;

  @Uint32()
  external int ExceptionEntryPoint;

  @Uint32()
  external int ExceptionStack;

  @Uint32()
  external int ExceptionActive;
}

/// {@category Struct}
class VBS_BASIC_ENCLAVE_THREAD_DESCRIPTOR64 extends Struct {
  @Array(4)
  external Array<Uint64> ThreadContext;

  @Uint64()
  external int EntryPoint;

  @Uint64()
  external int StackPointer;

  @Uint64()
  external int ExceptionEntryPoint;

  @Uint64()
  external int ExceptionStack;

  @Uint32()
  external int ExceptionActive;
}

/// {@category Struct}
@Packed(1)
class VBS_ENCLAVE_REPORT extends Struct {
  @Uint32()
  external int ReportSize;

  @Uint32()
  external int ReportVersion;

  @Array(64)
  external Array<Uint8> EnclaveData;

  external ENCLAVE_IDENTITY EnclaveIdentity;
}

/// {@category Struct}
@Packed(1)
class VBS_ENCLAVE_REPORT_MODULE extends Struct {
  external VBS_ENCLAVE_REPORT_VARDATA_HEADER Header;

  @Array(32)
  external Array<Uint8> UniqueId;

  @Array(32)
  external Array<Uint8> AuthorId;

  @Array(16)
  external Array<Uint8> FamilyId;

  @Array(16)
  external Array<Uint8> ImageId;

  @Uint32()
  external int Svn;

  @Array(1)
  external Array<Uint16> _ModuleName;

  String get ModuleName {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_ModuleName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set ModuleName(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _ModuleName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
@Packed(1)
class VBS_ENCLAVE_REPORT_PKG_HEADER extends Struct {
  @Uint32()
  external int PackageSize;

  @Uint32()
  external int Version;

  @Uint32()
  external int SignatureScheme;

  @Uint32()
  external int SignedStatementSize;

  @Uint32()
  external int SignatureSize;

  @Uint32()
  external int Reserved;
}

/// {@category Struct}
@Packed(1)
class VBS_ENCLAVE_REPORT_VARDATA_HEADER extends Struct {
  @Uint32()
  external int DataType;

  @Uint32()
  external int Size;
}
