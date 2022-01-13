// IWSDServiceProxyEventing.dart

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

import '../../devices/webservicesondevices/IWSDServiceProxy.dart';
import '../../devices/webservicesondevices/structs.g.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../devices/webservicesondevices/IWSDAsyncCallback.dart';
import '../../devices/webservicesondevices/IWSDAsyncResult.dart';

/// @nodoc
const IID_IWSDServiceProxyEventing = '{F9279D6D-1012-4A94-B8CC-FD35D2202BFE}';

/// {@category Interface}
/// {@category com}
class IWSDServiceProxyEventing extends IWSDServiceProxy {
  // vtable begins at 11, is 12 entries long.
  IWSDServiceProxyEventing(Pointer<COMObject> ptr) : super(ptr);

  int SubscribeToMultipleOperations(
    Pointer<WSD_OPERATION> pOperations,
    int dwOperationCount,
    Pointer<COMObject> pUnknown,
    Pointer<WSD_EVENTING_EXPIRES> pExpires,
    Pointer<WSDXML_ELEMENT> pAny,
    Pointer<Pointer<WSD_EVENTING_EXPIRES>> ppExpires,
    Pointer<Pointer<WSDXML_ELEMENT>> ppAny,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WSD_OPERATION> pOperations,
            Uint32 dwOperationCount,
            Pointer<COMObject> pUnknown,
            Pointer<WSD_EVENTING_EXPIRES> pExpires,
            Pointer<WSDXML_ELEMENT> pAny,
            Pointer<Pointer<WSD_EVENTING_EXPIRES>> ppExpires,
            Pointer<Pointer<WSDXML_ELEMENT>> ppAny,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WSD_OPERATION> pOperations,
            int dwOperationCount,
            Pointer<COMObject> pUnknown,
            Pointer<WSD_EVENTING_EXPIRES> pExpires,
            Pointer<WSDXML_ELEMENT> pAny,
            Pointer<Pointer<WSD_EVENTING_EXPIRES>> ppExpires,
            Pointer<Pointer<WSDXML_ELEMENT>> ppAny,
          )>()(
        ptr.ref.lpVtbl,
        pOperations,
        dwOperationCount,
        pUnknown,
        pExpires,
        pAny,
        ppExpires,
        ppAny,
      );

  int BeginSubscribeToMultipleOperations(
    Pointer<WSD_OPERATION> pOperations,
    int dwOperationCount,
    Pointer<COMObject> pUnknown,
    Pointer<WSD_EVENTING_EXPIRES> pExpires,
    Pointer<WSDXML_ELEMENT> pAny,
    Pointer<COMObject> pAsyncState,
    Pointer<COMObject> pAsyncCallback,
    Pointer<Pointer<COMObject>> ppResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WSD_OPERATION> pOperations,
            Uint32 dwOperationCount,
            Pointer<COMObject> pUnknown,
            Pointer<WSD_EVENTING_EXPIRES> pExpires,
            Pointer<WSDXML_ELEMENT> pAny,
            Pointer<COMObject> pAsyncState,
            Pointer<COMObject> pAsyncCallback,
            Pointer<Pointer<COMObject>> ppResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WSD_OPERATION> pOperations,
            int dwOperationCount,
            Pointer<COMObject> pUnknown,
            Pointer<WSD_EVENTING_EXPIRES> pExpires,
            Pointer<WSDXML_ELEMENT> pAny,
            Pointer<COMObject> pAsyncState,
            Pointer<COMObject> pAsyncCallback,
            Pointer<Pointer<COMObject>> ppResult,
          )>()(
        ptr.ref.lpVtbl,
        pOperations,
        dwOperationCount,
        pUnknown,
        pExpires,
        pAny,
        pAsyncState,
        pAsyncCallback,
        ppResult,
      );

  int EndSubscribeToMultipleOperations(
    Pointer<WSD_OPERATION> pOperations,
    int dwOperationCount,
    Pointer<COMObject> pResult,
    Pointer<Pointer<WSD_EVENTING_EXPIRES>> ppExpires,
    Pointer<Pointer<WSDXML_ELEMENT>> ppAny,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WSD_OPERATION> pOperations,
            Uint32 dwOperationCount,
            Pointer<COMObject> pResult,
            Pointer<Pointer<WSD_EVENTING_EXPIRES>> ppExpires,
            Pointer<Pointer<WSDXML_ELEMENT>> ppAny,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WSD_OPERATION> pOperations,
            int dwOperationCount,
            Pointer<COMObject> pResult,
            Pointer<Pointer<WSD_EVENTING_EXPIRES>> ppExpires,
            Pointer<Pointer<WSDXML_ELEMENT>> ppAny,
          )>()(
        ptr.ref.lpVtbl,
        pOperations,
        dwOperationCount,
        pResult,
        ppExpires,
        ppAny,
      );

  int UnsubscribeToMultipleOperations(
    Pointer<WSD_OPERATION> pOperations,
    int dwOperationCount,
    Pointer<WSDXML_ELEMENT> pAny,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WSD_OPERATION> pOperations,
            Uint32 dwOperationCount,
            Pointer<WSDXML_ELEMENT> pAny,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WSD_OPERATION> pOperations,
            int dwOperationCount,
            Pointer<WSDXML_ELEMENT> pAny,
          )>()(
        ptr.ref.lpVtbl,
        pOperations,
        dwOperationCount,
        pAny,
      );

  int BeginUnsubscribeToMultipleOperations(
    Pointer<WSD_OPERATION> pOperations,
    int dwOperationCount,
    Pointer<WSDXML_ELEMENT> pAny,
    Pointer<COMObject> pAsyncState,
    Pointer<COMObject> pAsyncCallback,
    Pointer<Pointer<COMObject>> ppResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WSD_OPERATION> pOperations,
            Uint32 dwOperationCount,
            Pointer<WSDXML_ELEMENT> pAny,
            Pointer<COMObject> pAsyncState,
            Pointer<COMObject> pAsyncCallback,
            Pointer<Pointer<COMObject>> ppResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WSD_OPERATION> pOperations,
            int dwOperationCount,
            Pointer<WSDXML_ELEMENT> pAny,
            Pointer<COMObject> pAsyncState,
            Pointer<COMObject> pAsyncCallback,
            Pointer<Pointer<COMObject>> ppResult,
          )>()(
        ptr.ref.lpVtbl,
        pOperations,
        dwOperationCount,
        pAny,
        pAsyncState,
        pAsyncCallback,
        ppResult,
      );

  int EndUnsubscribeToMultipleOperations(
    Pointer<WSD_OPERATION> pOperations,
    int dwOperationCount,
    Pointer<COMObject> pResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WSD_OPERATION> pOperations,
            Uint32 dwOperationCount,
            Pointer<COMObject> pResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WSD_OPERATION> pOperations,
            int dwOperationCount,
            Pointer<COMObject> pResult,
          )>()(
        ptr.ref.lpVtbl,
        pOperations,
        dwOperationCount,
        pResult,
      );

  int RenewMultipleOperations(
    Pointer<WSD_OPERATION> pOperations,
    int dwOperationCount,
    Pointer<WSD_EVENTING_EXPIRES> pExpires,
    Pointer<WSDXML_ELEMENT> pAny,
    Pointer<Pointer<WSD_EVENTING_EXPIRES>> ppExpires,
    Pointer<Pointer<WSDXML_ELEMENT>> ppAny,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WSD_OPERATION> pOperations,
            Uint32 dwOperationCount,
            Pointer<WSD_EVENTING_EXPIRES> pExpires,
            Pointer<WSDXML_ELEMENT> pAny,
            Pointer<Pointer<WSD_EVENTING_EXPIRES>> ppExpires,
            Pointer<Pointer<WSDXML_ELEMENT>> ppAny,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WSD_OPERATION> pOperations,
            int dwOperationCount,
            Pointer<WSD_EVENTING_EXPIRES> pExpires,
            Pointer<WSDXML_ELEMENT> pAny,
            Pointer<Pointer<WSD_EVENTING_EXPIRES>> ppExpires,
            Pointer<Pointer<WSDXML_ELEMENT>> ppAny,
          )>()(
        ptr.ref.lpVtbl,
        pOperations,
        dwOperationCount,
        pExpires,
        pAny,
        ppExpires,
        ppAny,
      );

  int BeginRenewMultipleOperations(
    Pointer<WSD_OPERATION> pOperations,
    int dwOperationCount,
    Pointer<WSD_EVENTING_EXPIRES> pExpires,
    Pointer<WSDXML_ELEMENT> pAny,
    Pointer<COMObject> pAsyncState,
    Pointer<COMObject> pAsyncCallback,
    Pointer<Pointer<COMObject>> ppResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WSD_OPERATION> pOperations,
            Uint32 dwOperationCount,
            Pointer<WSD_EVENTING_EXPIRES> pExpires,
            Pointer<WSDXML_ELEMENT> pAny,
            Pointer<COMObject> pAsyncState,
            Pointer<COMObject> pAsyncCallback,
            Pointer<Pointer<COMObject>> ppResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WSD_OPERATION> pOperations,
            int dwOperationCount,
            Pointer<WSD_EVENTING_EXPIRES> pExpires,
            Pointer<WSDXML_ELEMENT> pAny,
            Pointer<COMObject> pAsyncState,
            Pointer<COMObject> pAsyncCallback,
            Pointer<Pointer<COMObject>> ppResult,
          )>()(
        ptr.ref.lpVtbl,
        pOperations,
        dwOperationCount,
        pExpires,
        pAny,
        pAsyncState,
        pAsyncCallback,
        ppResult,
      );

  int EndRenewMultipleOperations(
    Pointer<WSD_OPERATION> pOperations,
    int dwOperationCount,
    Pointer<COMObject> pResult,
    Pointer<Pointer<WSD_EVENTING_EXPIRES>> ppExpires,
    Pointer<Pointer<WSDXML_ELEMENT>> ppAny,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WSD_OPERATION> pOperations,
            Uint32 dwOperationCount,
            Pointer<COMObject> pResult,
            Pointer<Pointer<WSD_EVENTING_EXPIRES>> ppExpires,
            Pointer<Pointer<WSDXML_ELEMENT>> ppAny,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WSD_OPERATION> pOperations,
            int dwOperationCount,
            Pointer<COMObject> pResult,
            Pointer<Pointer<WSD_EVENTING_EXPIRES>> ppExpires,
            Pointer<Pointer<WSDXML_ELEMENT>> ppAny,
          )>()(
        ptr.ref.lpVtbl,
        pOperations,
        dwOperationCount,
        pResult,
        ppExpires,
        ppAny,
      );

  int GetStatusForMultipleOperations(
    Pointer<WSD_OPERATION> pOperations,
    int dwOperationCount,
    Pointer<WSDXML_ELEMENT> pAny,
    Pointer<Pointer<WSD_EVENTING_EXPIRES>> ppExpires,
    Pointer<Pointer<WSDXML_ELEMENT>> ppAny,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WSD_OPERATION> pOperations,
            Uint32 dwOperationCount,
            Pointer<WSDXML_ELEMENT> pAny,
            Pointer<Pointer<WSD_EVENTING_EXPIRES>> ppExpires,
            Pointer<Pointer<WSDXML_ELEMENT>> ppAny,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WSD_OPERATION> pOperations,
            int dwOperationCount,
            Pointer<WSDXML_ELEMENT> pAny,
            Pointer<Pointer<WSD_EVENTING_EXPIRES>> ppExpires,
            Pointer<Pointer<WSDXML_ELEMENT>> ppAny,
          )>()(
        ptr.ref.lpVtbl,
        pOperations,
        dwOperationCount,
        pAny,
        ppExpires,
        ppAny,
      );

  int BeginGetStatusForMultipleOperations(
    Pointer<WSD_OPERATION> pOperations,
    int dwOperationCount,
    Pointer<WSDXML_ELEMENT> pAny,
    Pointer<COMObject> pAsyncState,
    Pointer<COMObject> pAsyncCallback,
    Pointer<Pointer<COMObject>> ppResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WSD_OPERATION> pOperations,
            Uint32 dwOperationCount,
            Pointer<WSDXML_ELEMENT> pAny,
            Pointer<COMObject> pAsyncState,
            Pointer<COMObject> pAsyncCallback,
            Pointer<Pointer<COMObject>> ppResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WSD_OPERATION> pOperations,
            int dwOperationCount,
            Pointer<WSDXML_ELEMENT> pAny,
            Pointer<COMObject> pAsyncState,
            Pointer<COMObject> pAsyncCallback,
            Pointer<Pointer<COMObject>> ppResult,
          )>()(
        ptr.ref.lpVtbl,
        pOperations,
        dwOperationCount,
        pAny,
        pAsyncState,
        pAsyncCallback,
        ppResult,
      );

  int EndGetStatusForMultipleOperations(
    Pointer<WSD_OPERATION> pOperations,
    int dwOperationCount,
    Pointer<COMObject> pResult,
    Pointer<Pointer<WSD_EVENTING_EXPIRES>> ppExpires,
    Pointer<Pointer<WSDXML_ELEMENT>> ppAny,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WSD_OPERATION> pOperations,
            Uint32 dwOperationCount,
            Pointer<COMObject> pResult,
            Pointer<Pointer<WSD_EVENTING_EXPIRES>> ppExpires,
            Pointer<Pointer<WSDXML_ELEMENT>> ppAny,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WSD_OPERATION> pOperations,
            int dwOperationCount,
            Pointer<COMObject> pResult,
            Pointer<Pointer<WSD_EVENTING_EXPIRES>> ppExpires,
            Pointer<Pointer<WSDXML_ELEMENT>> ppAny,
          )>()(
        ptr.ref.lpVtbl,
        pOperations,
        dwOperationCount,
        pResult,
        ppExpires,
        ppAny,
      );
}
