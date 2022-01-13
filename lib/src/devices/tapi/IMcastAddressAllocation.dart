// IMcastAddressAllocation.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../guid.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../utils.dart';

import '../../system/com/IDispatch.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../devices/tapi/IEnumMcastScope.dart';
import '../../devices/tapi/IMcastScope.dart';
import '../../devices/tapi/IMcastLeaseInfo.dart';

/// @nodoc
const IID_IMcastAddressAllocation = '{DF0DAEF1-A289-11D1-8697-006008B0E5D2}';

/// {@category Interface}
/// {@category com}
class IMcastAddressAllocation extends IDispatch {
  // vtable begins at 7, is 7 entries long.
  IMcastAddressAllocation(Pointer<COMObject> ptr) : super(ptr);

  VARIANT get Scopes {
    final retValuePtr = calloc<VARIANT>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pVariant,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pVariant,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int EnumerateScopes(
    Pointer<Pointer<COMObject>> ppEnumMcastScope,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnumMcastScope,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnumMcastScope,
          )>()(
        ptr.ref.lpVtbl,
        ppEnumMcastScope,
      );

  int RequestAddress(
    Pointer<COMObject> pScope,
    double LeaseStartTime,
    double LeaseStopTime,
    int NumAddresses,
    Pointer<Pointer<COMObject>> ppLeaseResponse,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pScope,
            Double LeaseStartTime,
            Double LeaseStopTime,
            Int32 NumAddresses,
            Pointer<Pointer<COMObject>> ppLeaseResponse,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pScope,
            double LeaseStartTime,
            double LeaseStopTime,
            int NumAddresses,
            Pointer<Pointer<COMObject>> ppLeaseResponse,
          )>()(
        ptr.ref.lpVtbl,
        pScope,
        LeaseStartTime,
        LeaseStopTime,
        NumAddresses,
        ppLeaseResponse,
      );

  int RenewAddress(
    int lReserved,
    Pointer<COMObject> pRenewRequest,
    Pointer<Pointer<COMObject>> ppRenewResponse,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lReserved,
            Pointer<COMObject> pRenewRequest,
            Pointer<Pointer<COMObject>> ppRenewResponse,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lReserved,
            Pointer<COMObject> pRenewRequest,
            Pointer<Pointer<COMObject>> ppRenewResponse,
          )>()(
        ptr.ref.lpVtbl,
        lReserved,
        pRenewRequest,
        ppRenewResponse,
      );

  int ReleaseAddress(
    Pointer<COMObject> pReleaseRequest,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pReleaseRequest,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pReleaseRequest,
          )>()(
        ptr.ref.lpVtbl,
        pReleaseRequest,
      );

  int CreateLeaseInfo(
    double LeaseStartTime,
    double LeaseStopTime,
    int dwNumAddresses,
    Pointer<Pointer<Utf16>> ppAddresses,
    Pointer<Utf16> pRequestID,
    Pointer<Utf16> pServerAddress,
    Pointer<Pointer<COMObject>> ppReleaseRequest,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double LeaseStartTime,
            Double LeaseStopTime,
            Uint32 dwNumAddresses,
            Pointer<Pointer<Utf16>> ppAddresses,
            Pointer<Utf16> pRequestID,
            Pointer<Utf16> pServerAddress,
            Pointer<Pointer<COMObject>> ppReleaseRequest,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double LeaseStartTime,
            double LeaseStopTime,
            int dwNumAddresses,
            Pointer<Pointer<Utf16>> ppAddresses,
            Pointer<Utf16> pRequestID,
            Pointer<Utf16> pServerAddress,
            Pointer<Pointer<COMObject>> ppReleaseRequest,
          )>()(
        ptr.ref.lpVtbl,
        LeaseStartTime,
        LeaseStopTime,
        dwNumAddresses,
        ppAddresses,
        pRequestID,
        pServerAddress,
        ppReleaseRequest,
      );

  int CreateLeaseInfoFromVariant(
    double LeaseStartTime,
    double LeaseStopTime,
    VARIANT vAddresses,
    Pointer<Utf16> pRequestID,
    Pointer<Utf16> pServerAddress,
    Pointer<Pointer<COMObject>> ppReleaseRequest,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double LeaseStartTime,
            Double LeaseStopTime,
            VARIANT vAddresses,
            Pointer<Utf16> pRequestID,
            Pointer<Utf16> pServerAddress,
            Pointer<Pointer<COMObject>> ppReleaseRequest,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double LeaseStartTime,
            double LeaseStopTime,
            VARIANT vAddresses,
            Pointer<Utf16> pRequestID,
            Pointer<Utf16> pServerAddress,
            Pointer<Pointer<COMObject>> ppReleaseRequest,
          )>()(
        ptr.ref.lpVtbl,
        LeaseStartTime,
        LeaseStopTime,
        vAddresses,
        pRequestID,
        pServerAddress,
        ppReleaseRequest,
      );
}

/// @nodoc
const CLSID_McastAddressAllocation = '{DF0DAEF2-A289-11D1-8697-006008B0E5D2}';

/// {@category com}
class McastAddressAllocation extends IMcastAddressAllocation {
  McastAddressAllocation(Pointer<COMObject> ptr) : super(ptr);

  factory McastAddressAllocation.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_McastAddressAllocation);
    final iid = calloc<GUID>()..ref.setGUID(IID_IMcastAddressAllocation);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return McastAddressAllocation(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
