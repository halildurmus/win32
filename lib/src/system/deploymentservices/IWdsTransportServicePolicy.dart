// IWdsTransportServicePolicy.dart

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

import '../../system/deploymentservices/IWdsTransportCacheable.dart';
import '../../system/deploymentservices/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWdsTransportServicePolicy = '{B9468578-9F2B-48CC-B27A-A60799C2750C}';

/// {@category Interface}
/// {@category com}
class IWdsTransportServicePolicy extends IWdsTransportCacheable {
  // vtable begins at 11, is 12 entries long.
  IWdsTransportServicePolicy(Pointer<COMObject> ptr) : super(ptr);

  int get_IpAddressSource(
    int AddressType,
    Pointer<Int32> pSourceType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 AddressType,
            Pointer<Int32> pSourceType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int AddressType,
            Pointer<Int32> pSourceType,
          )>()(
        ptr.ref.lpVtbl,
        AddressType,
        pSourceType,
      );

  int put_IpAddressSource(
    int AddressType,
    int SourceType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 AddressType,
            Int32 SourceType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int AddressType,
            int SourceType,
          )>()(
        ptr.ref.lpVtbl,
        AddressType,
        SourceType,
      );

  int get_StartIpAddress(
    int AddressType,
    Pointer<Pointer<Utf16>> pbszStartIpAddress,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 AddressType,
            Pointer<Pointer<Utf16>> pbszStartIpAddress,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int AddressType,
            Pointer<Pointer<Utf16>> pbszStartIpAddress,
          )>()(
        ptr.ref.lpVtbl,
        AddressType,
        pbszStartIpAddress,
      );

  int put_StartIpAddress(
    int AddressType,
    Pointer<Utf16> bszStartIpAddress,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 AddressType,
            Pointer<Utf16> bszStartIpAddress,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int AddressType,
            Pointer<Utf16> bszStartIpAddress,
          )>()(
        ptr.ref.lpVtbl,
        AddressType,
        bszStartIpAddress,
      );

  int get_EndIpAddress(
    int AddressType,
    Pointer<Pointer<Utf16>> pbszEndIpAddress,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 AddressType,
            Pointer<Pointer<Utf16>> pbszEndIpAddress,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int AddressType,
            Pointer<Pointer<Utf16>> pbszEndIpAddress,
          )>()(
        ptr.ref.lpVtbl,
        AddressType,
        pbszEndIpAddress,
      );

  int put_EndIpAddress(
    int AddressType,
    Pointer<Utf16> bszEndIpAddress,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 AddressType,
            Pointer<Utf16> bszEndIpAddress,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int AddressType,
            Pointer<Utf16> bszEndIpAddress,
          )>()(
        ptr.ref.lpVtbl,
        AddressType,
        bszEndIpAddress,
      );

  int get StartPort {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulStartPort,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulStartPort,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set StartPort(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(18)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Uint32 ulStartPort,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int ulStartPort,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get EndPort {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulEndPort,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulEndPort,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set EndPort(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(20)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Uint32 ulEndPort,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int ulEndPort,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get NetworkProfile {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pProfileType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pProfileType,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set NetworkProfile(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(22)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 ProfileType,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int ProfileType,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

/// @nodoc
const CLSID_WdsTransportServicePolicy =
    '{65ACEADC-2F0B-4F43-9F4D-811865D8CEAD}';

/// {@category com}
class WdsTransportServicePolicy extends IWdsTransportServicePolicy {
  WdsTransportServicePolicy(Pointer<COMObject> ptr) : super(ptr);

  factory WdsTransportServicePolicy.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_WdsTransportServicePolicy);
    final iid = calloc<GUID>()..ref.setGUID(IID_IWdsTransportServicePolicy);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return WdsTransportServicePolicy(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
