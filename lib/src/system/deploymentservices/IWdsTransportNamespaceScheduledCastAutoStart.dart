// IWdsTransportNamespaceScheduledCastAutoStart.dart

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

import '../../system/deploymentservices/IWdsTransportNamespaceScheduledCast.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWdsTransportNamespaceScheduledCastAutoStart =
    '{D606AF3D-EA9C-4219-961E-7491D618D9B9}';

/// {@category Interface}
/// {@category com}
class IWdsTransportNamespaceScheduledCastAutoStart
    extends IWdsTransportNamespaceScheduledCast {
  // vtable begins at 29, is 4 entries long.
  IWdsTransportNamespaceScheduledCastAutoStart(Pointer<COMObject> ptr)
      : super(ptr);

  int get MinimumClients {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulMinimumClients,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulMinimumClients,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set MinimumClients(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(30)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Uint32 ulMinimumClients,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int ulMinimumClients,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  double get StartTime {
    final retValuePtr = calloc<Double>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> pStartTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> pStartTime,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set StartTime(double value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(32)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Double StartTime,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          double StartTime,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

/// @nodoc
const CLSID_WdsTransportNamespaceScheduledCastAutoStart =
    '{A1107052-122C-4B81-9B7C-386E6855383F}';

/// {@category com}
class WdsTransportNamespaceScheduledCastAutoStart
    extends IWdsTransportNamespaceScheduledCastAutoStart {
  WdsTransportNamespaceScheduledCastAutoStart(Pointer<COMObject> ptr)
      : super(ptr);

  factory WdsTransportNamespaceScheduledCastAutoStart.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()
      ..ref.setGUID(CLSID_WdsTransportNamespaceScheduledCastAutoStart);
    final iid = calloc<GUID>()
      ..ref.setGUID(IID_IWdsTransportNamespaceScheduledCastAutoStart);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return WdsTransportNamespaceScheduledCastAutoStart(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
