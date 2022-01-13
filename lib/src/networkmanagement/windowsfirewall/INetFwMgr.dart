// INetFwMgr.dart

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
import '../../networkmanagement/windowsfirewall/INetFwPolicy.dart';
import '../../foundation/structs.g.dart';
import '../../networkmanagement/windowsfirewall/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_INetFwMgr = '{F7898AF5-CAC4-4632-A2EC-DA06E5111AF2}';

/// {@category Interface}
/// {@category com}
class INetFwMgr extends IDispatch {
  // vtable begins at 7, is 5 entries long.
  INetFwMgr(Pointer<COMObject> ptr) : super(ptr);

  Pointer<COMObject> get LocalPolicy {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> localPolicy,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> localPolicy,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get CurrentProfileType {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> profileType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> profileType,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int RestoreDefaults() => ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int IsPortAllowed(
    Pointer<Utf16> imageFileName,
    int ipVersion,
    int portNumber,
    Pointer<Utf16> localAddress,
    int ipProtocol,
    Pointer<VARIANT> allowed,
    Pointer<VARIANT> restricted,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> imageFileName,
            Int32 ipVersion,
            Int32 portNumber,
            Pointer<Utf16> localAddress,
            Int32 ipProtocol,
            Pointer<VARIANT> allowed,
            Pointer<VARIANT> restricted,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> imageFileName,
            int ipVersion,
            int portNumber,
            Pointer<Utf16> localAddress,
            int ipProtocol,
            Pointer<VARIANT> allowed,
            Pointer<VARIANT> restricted,
          )>()(
        ptr.ref.lpVtbl,
        imageFileName,
        ipVersion,
        portNumber,
        localAddress,
        ipProtocol,
        allowed,
        restricted,
      );

  int IsIcmpTypeAllowed(
    int ipVersion,
    Pointer<Utf16> localAddress,
    int type,
    Pointer<VARIANT> allowed,
    Pointer<VARIANT> restricted,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 ipVersion,
            Pointer<Utf16> localAddress,
            Uint8 type,
            Pointer<VARIANT> allowed,
            Pointer<VARIANT> restricted,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ipVersion,
            Pointer<Utf16> localAddress,
            int type,
            Pointer<VARIANT> allowed,
            Pointer<VARIANT> restricted,
          )>()(
        ptr.ref.lpVtbl,
        ipVersion,
        localAddress,
        type,
        allowed,
        restricted,
      );
}

/// @nodoc
const CLSID_NetFwMgr = '{304CE942-6E39-40D8-943A-B913C40C9CD4}';

/// {@category com}
class NetFwMgr extends INetFwMgr {
  NetFwMgr(Pointer<COMObject> ptr) : super(ptr);

  factory NetFwMgr.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_NetFwMgr);
    final iid = calloc<GUID>()..ref.setGUID(IID_INetFwMgr);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return NetFwMgr(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
