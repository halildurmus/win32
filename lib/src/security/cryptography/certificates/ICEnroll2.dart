// ICEnroll2.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../security/cryptography/certificates/ICEnroll.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_ICEnroll2 = '{704CA730-C90B-11D1-9BEC-00C04FC295E1}';

/// {@category Interface}
/// {@category com}
class ICEnroll2 extends ICEnroll {
  // vtable begins at 63, is 6 entries long.
  ICEnroll2(Pointer<COMObject> ptr) : super(ptr);

  int addCertTypeToRequest(
    Pointer<Utf16> CertType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(63)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> CertType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> CertType,
          )>()(
        ptr.ref.lpVtbl,
        CertType,
      );

  int addNameValuePairToSignature(
    Pointer<Utf16> Name,
    Pointer<Utf16> Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(64)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Name,
            Pointer<Utf16> Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Name,
            Pointer<Utf16> Value,
          )>()(
        ptr.ref.lpVtbl,
        Name,
        Value,
      );

  int get WriteCertToUserDS {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(65)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> fBool,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> fBool,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set WriteCertToUserDS(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(66)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 fBool,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int fBool,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get EnableT61DNEncoding {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(67)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> fBool,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> fBool,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set EnableT61DNEncoding(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(68)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 fBool,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int fBool,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

/// @nodoc
const CLSID_CEnroll2 = '{127698E4-E730-4E5C-A2B1-21490A70C8A1}';

/// {@category com}
class CEnroll2 extends ICEnroll2 {
  CEnroll2(Pointer<COMObject> ptr) : super(ptr);

  factory CEnroll2.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_CEnroll2);
    final iid = calloc<GUID>()..ref.setGUID(IID_ICEnroll2);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return CEnroll2(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
