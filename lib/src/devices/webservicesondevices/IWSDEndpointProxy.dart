// IWSDEndpointProxy.dart

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
import '../../devices/webservicesondevices/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';
import '../../devices/webservicesondevices/IWSDAsyncCallback.dart';
import '../../devices/webservicesondevices/IWSDAsyncResult.dart';

/// @nodoc
const IID_IWSDEndpointProxy = '{1860D430-B24C-4975-9F90-DBB39BAA24EC}';

/// {@category Interface}
/// {@category com}
class IWSDEndpointProxy extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IWSDEndpointProxy(Pointer<COMObject> ptr) : super(ptr);

  int SendOneWayRequest(
    Pointer pBody,
    Pointer<WSD_OPERATION> pOperation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer pBody,
            Pointer<WSD_OPERATION> pOperation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pBody,
            Pointer<WSD_OPERATION> pOperation,
          )>()(
        ptr.ref.lpVtbl,
        pBody,
        pOperation,
      );

  int SendTwoWayRequest(
    Pointer pBody,
    Pointer<WSD_OPERATION> pOperation,
    Pointer<WSD_SYNCHRONOUS_RESPONSE_CONTEXT> pResponseContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer pBody,
            Pointer<WSD_OPERATION> pOperation,
            Pointer<WSD_SYNCHRONOUS_RESPONSE_CONTEXT> pResponseContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pBody,
            Pointer<WSD_OPERATION> pOperation,
            Pointer<WSD_SYNCHRONOUS_RESPONSE_CONTEXT> pResponseContext,
          )>()(
        ptr.ref.lpVtbl,
        pBody,
        pOperation,
        pResponseContext,
      );

  int SendTwoWayRequestAsync(
    Pointer pBody,
    Pointer<WSD_OPERATION> pOperation,
    Pointer<COMObject> pAsyncState,
    Pointer<COMObject> pCallback,
    Pointer<Pointer<COMObject>> pResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer pBody,
            Pointer<WSD_OPERATION> pOperation,
            Pointer<COMObject> pAsyncState,
            Pointer<COMObject> pCallback,
            Pointer<Pointer<COMObject>> pResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pBody,
            Pointer<WSD_OPERATION> pOperation,
            Pointer<COMObject> pAsyncState,
            Pointer<COMObject> pCallback,
            Pointer<Pointer<COMObject>> pResult,
          )>()(
        ptr.ref.lpVtbl,
        pBody,
        pOperation,
        pAsyncState,
        pCallback,
        pResult,
      );

  int AbortAsyncOperation(
    Pointer<COMObject> pAsyncResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pAsyncResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pAsyncResult,
          )>()(
        ptr.ref.lpVtbl,
        pAsyncResult,
      );

  int ProcessFault(
    Pointer<WSD_SOAP_FAULT> pFault,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WSD_SOAP_FAULT> pFault,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WSD_SOAP_FAULT> pFault,
          )>()(
        ptr.ref.lpVtbl,
        pFault,
      );

  int GetErrorInfo(
    Pointer<Pointer<Utf16>> ppszErrorInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszErrorInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszErrorInfo,
          )>()(
        ptr.ref.lpVtbl,
        ppszErrorInfo,
      );

  int GetFaultInfo(
    Pointer<Pointer<WSD_SOAP_FAULT>> ppFault,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<WSD_SOAP_FAULT>> ppFault,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<WSD_SOAP_FAULT>> ppFault,
          )>()(
        ptr.ref.lpVtbl,
        ppFault,
      );
}
