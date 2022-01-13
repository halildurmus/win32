// IWdsTransportConfigurationManager.dart

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
import '../../system/deploymentservices/IWdsTransportServicePolicy.dart';
import '../../foundation/structs.g.dart';
import '../../system/deploymentservices/IWdsTransportDiagnosticsPolicy.dart';
import '../../system/deploymentservices/structs.g.dart';

/// @nodoc
const IID_IWdsTransportConfigurationManager =
    '{84CC4779-42DD-4792-891E-1321D6D74B44}';

/// {@category Interface}
/// {@category com}
class IWdsTransportConfigurationManager extends IDispatch {
  // vtable begins at 7, is 9 entries long.
  IWdsTransportConfigurationManager(Pointer<COMObject> ptr) : super(ptr);

  Pointer<COMObject> get ServicePolicy {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppWdsTransportServicePolicy,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppWdsTransportServicePolicy,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get DiagnosticsPolicy {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppWdsTransportDiagnosticsPolicy,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppWdsTransportDiagnosticsPolicy,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get_WdsTransportServicesRunning(
    int bRealtimeStatus,
    Pointer<Int16> pbServicesRunning,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 bRealtimeStatus,
            Pointer<Int16> pbServicesRunning,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bRealtimeStatus,
            Pointer<Int16> pbServicesRunning,
          )>()(
        ptr.ref.lpVtbl,
        bRealtimeStatus,
        pbServicesRunning,
      );

  int EnableWdsTransportServices() => ptr.ref.lpVtbl.value
          .elementAt(10)
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

  int DisableWdsTransportServices() => ptr.ref.lpVtbl.value
          .elementAt(11)
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

  int StartWdsTransportServices() => ptr.ref.lpVtbl.value
          .elementAt(12)
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

  int StopWdsTransportServices() => ptr.ref.lpVtbl.value
          .elementAt(13)
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

  int RestartWdsTransportServices() => ptr.ref.lpVtbl.value
          .elementAt(14)
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

  int NotifyWdsTransportServices(
    int ServiceNotification,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 ServiceNotification,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ServiceNotification,
          )>()(
        ptr.ref.lpVtbl,
        ServiceNotification,
      );
}

/// @nodoc
const CLSID_WdsTransportConfigurationManager =
    '{8743F674-904C-47CA-8512-35FE98F6B0AC}';

/// {@category com}
class WdsTransportConfigurationManager
    extends IWdsTransportConfigurationManager {
  WdsTransportConfigurationManager(Pointer<COMObject> ptr) : super(ptr);

  factory WdsTransportConfigurationManager.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()
      ..ref.setGUID(CLSID_WdsTransportConfigurationManager);
    final iid = calloc<GUID>()
      ..ref.setGUID(IID_IWdsTransportConfigurationManager);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return WdsTransportConfigurationManager(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
