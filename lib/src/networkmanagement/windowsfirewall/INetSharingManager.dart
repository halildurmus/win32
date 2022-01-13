// INetSharingManager.dart

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
import '../../foundation/structs.g.dart';
import '../../networkmanagement/windowsfirewall/structs.g.dart';
import '../../networkmanagement/windowsfirewall/INetSharingPublicConnectionCollection.dart';
import '../../networkmanagement/windowsfirewall/INetSharingPrivateConnectionCollection.dart';
import '../../networkmanagement/windowsfirewall/INetConnection.dart';
import '../../networkmanagement/windowsfirewall/INetSharingConfiguration.dart';
import '../../networkmanagement/windowsfirewall/INetSharingEveryConnectionCollection.dart';
import '../../networkmanagement/windowsfirewall/INetConnectionProps.dart';

/// @nodoc
const IID_INetSharingManager = '{C08956B7-1CD3-11D1-B1C5-00805FC1270E}';

/// {@category Interface}
/// {@category com}
class INetSharingManager extends IDispatch {
  // vtable begins at 7, is 6 entries long.
  INetSharingManager(Pointer<COMObject> ptr) : super(ptr);

  int get SharingInstalled {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pbInstalled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pbInstalled,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get_EnumPublicConnections(
    int Flags,
    Pointer<Pointer<COMObject>> ppColl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Flags,
            Pointer<Pointer<COMObject>> ppColl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Flags,
            Pointer<Pointer<COMObject>> ppColl,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
        ppColl,
      );

  int get_EnumPrivateConnections(
    int Flags,
    Pointer<Pointer<COMObject>> ppColl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Flags,
            Pointer<Pointer<COMObject>> ppColl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Flags,
            Pointer<Pointer<COMObject>> ppColl,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
        ppColl,
      );

  int get_INetSharingConfigurationForINetConnection(
    Pointer<COMObject> pNetConnection,
    Pointer<Pointer<COMObject>> ppNetSharingConfiguration,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pNetConnection,
            Pointer<Pointer<COMObject>> ppNetSharingConfiguration,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pNetConnection,
            Pointer<Pointer<COMObject>> ppNetSharingConfiguration,
          )>()(
        ptr.ref.lpVtbl,
        pNetConnection,
        ppNetSharingConfiguration,
      );

  Pointer<COMObject> get EnumEveryConnection {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppColl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppColl,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get_NetConnectionProps(
    Pointer<COMObject> pNetConnection,
    Pointer<Pointer<COMObject>> ppProps,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pNetConnection,
            Pointer<Pointer<COMObject>> ppProps,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pNetConnection,
            Pointer<Pointer<COMObject>> ppProps,
          )>()(
        ptr.ref.lpVtbl,
        pNetConnection,
        ppProps,
      );
}

/// @nodoc
const CLSID_NetSharingManager = '{5C63C1AD-3956-4FF8-8486-40034758315B}';

/// {@category com}
class NetSharingManager extends INetSharingManager {
  NetSharingManager(Pointer<COMObject> ptr) : super(ptr);

  factory NetSharingManager.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_NetSharingManager);
    final iid = calloc<GUID>()..ref.setGUID(IID_INetSharingManager);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return NetSharingManager(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
