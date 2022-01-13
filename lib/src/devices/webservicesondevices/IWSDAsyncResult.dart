// IWSDAsyncResult.dart

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

import '../../system/com/IUnknown.dart';
import '../../devices/webservicesondevices/IWSDAsyncCallback.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../devices/webservicesondevices/structs.g.dart';
import '../../devices/webservicesondevices/IWSDEndpointProxy.dart';

/// @nodoc
const IID_IWSDAsyncResult = '{11A9852A-8DD8-423E-B537-9356DB4FBFB8}';

/// {@category Interface}
/// {@category com}
class IWSDAsyncResult extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IWSDAsyncResult(Pointer<COMObject> ptr) : super(ptr);

  int SetCallback(
    Pointer<COMObject> pCallback,
    Pointer<COMObject> pAsyncState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pCallback,
            Pointer<COMObject> pAsyncState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pCallback,
            Pointer<COMObject> pAsyncState,
          )>()(
        ptr.ref.lpVtbl,
        pCallback,
        pAsyncState,
      );

  int SetWaitHandle(
    int hWaitHandle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hWaitHandle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hWaitHandle,
          )>()(
        ptr.ref.lpVtbl,
        hWaitHandle,
      );

  int HasCompleted() => ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int GetAsyncState(
    Pointer<Pointer<COMObject>> ppAsyncState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppAsyncState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppAsyncState,
          )>()(
        ptr.ref.lpVtbl,
        ppAsyncState,
      );

  int Abort() => ptr.ref.lpVtbl.value
          .elementAt(7)
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

  int GetEvent(
    Pointer<WSD_EVENT> pEvent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WSD_EVENT> pEvent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WSD_EVENT> pEvent,
          )>()(
        ptr.ref.lpVtbl,
        pEvent,
      );

  int GetEndpointProxy(
    Pointer<Pointer<COMObject>> ppEndpoint,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEndpoint,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEndpoint,
          )>()(
        ptr.ref.lpVtbl,
        ppEndpoint,
      );
}
