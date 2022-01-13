// IOCSPAdmin.dart

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

import '../../../system/com/IDispatch.dart';
import '../../../security/cryptography/certificates/IOCSPPropertyCollection.dart';
import '../../../foundation/structs.g.dart';
import '../../../security/cryptography/certificates/IOCSPCAConfigurationCollection.dart';
import '../../../specialTypes.dart';

/// @nodoc
const IID_IOCSPAdmin = '{322E830D-67DB-4FE9-9577-4596D9F09294}';

/// {@category Interface}
/// {@category com}
class IOCSPAdmin extends IDispatch {
  // vtable begins at 7, is 10 entries long.
  IOCSPAdmin(Pointer<COMObject> ptr) : super(ptr);

  Pointer<COMObject> get OCSPServiceProperties {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get OCSPCAConfigurationCollection {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int GetConfiguration(
    Pointer<Utf16> bstrServerName,
    int bForce,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrServerName,
            Int16 bForce,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrServerName,
            int bForce,
          )>()(
        ptr.ref.lpVtbl,
        bstrServerName,
        bForce,
      );

  int SetConfiguration(
    Pointer<Utf16> bstrServerName,
    int bForce,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrServerName,
            Int16 bForce,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrServerName,
            int bForce,
          )>()(
        ptr.ref.lpVtbl,
        bstrServerName,
        bForce,
      );

  int GetMyRoles(
    Pointer<Utf16> bstrServerName,
    Pointer<Int32> pRoles,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrServerName,
            Pointer<Int32> pRoles,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrServerName,
            Pointer<Int32> pRoles,
          )>()(
        ptr.ref.lpVtbl,
        bstrServerName,
        pRoles,
      );

  int Ping(
    Pointer<Utf16> bstrServerName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrServerName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrServerName,
          )>()(
        ptr.ref.lpVtbl,
        bstrServerName,
      );

  int SetSecurity(
    Pointer<Utf16> bstrServerName,
    Pointer<Utf16> bstrVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrServerName,
            Pointer<Utf16> bstrVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrServerName,
            Pointer<Utf16> bstrVal,
          )>()(
        ptr.ref.lpVtbl,
        bstrServerName,
        bstrVal,
      );

  int GetSecurity(
    Pointer<Utf16> bstrServerName,
    Pointer<Pointer<Utf16>> pVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrServerName,
            Pointer<Pointer<Utf16>> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrServerName,
            Pointer<Pointer<Utf16>> pVal,
          )>()(
        ptr.ref.lpVtbl,
        bstrServerName,
        pVal,
      );

  int GetSigningCertificates(
    Pointer<Utf16> bstrServerName,
    Pointer<VARIANT> pCACertVar,
    Pointer<VARIANT> pVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrServerName,
            Pointer<VARIANT> pCACertVar,
            Pointer<VARIANT> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrServerName,
            Pointer<VARIANT> pCACertVar,
            Pointer<VARIANT> pVal,
          )>()(
        ptr.ref.lpVtbl,
        bstrServerName,
        pCACertVar,
        pVal,
      );

  int GetHashAlgorithms(
    Pointer<Utf16> bstrServerName,
    Pointer<Utf16> bstrCAId,
    Pointer<VARIANT> pVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrServerName,
            Pointer<Utf16> bstrCAId,
            Pointer<VARIANT> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrServerName,
            Pointer<Utf16> bstrCAId,
            Pointer<VARIANT> pVal,
          )>()(
        ptr.ref.lpVtbl,
        bstrServerName,
        bstrCAId,
        pVal,
      );
}

/// @nodoc
const CLSID_OCSPAdmin = '{D3F73511-92C9-47CB-8FF2-8D891A7C4DE4}';

/// {@category com}
class OCSPAdmin extends IOCSPAdmin {
  OCSPAdmin(Pointer<COMObject> ptr) : super(ptr);

  factory OCSPAdmin.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_OCSPAdmin);
    final iid = calloc<GUID>()..ref.setGUID(IID_IOCSPAdmin);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return OCSPAdmin(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
