// IWSDServiceProxy.dart

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

import '../../devices/webservicesondevices/IWSDMetadataExchange.dart';
import '../../devices/webservicesondevices/IWSDAsyncResult.dart';
import '../../foundation/structs.g.dart';
import '../../devices/webservicesondevices/structs.g.dart';
import '../../specialTypes.dart';
import '../../devices/webservicesondevices/IWSDEventingStatus.dart';
import '../../devices/webservicesondevices/IWSDEndpointProxy.dart';

/// @nodoc
const IID_IWSDServiceProxy = '{D4C7FB9C-03AB-4175-9D67-094FAFEBF487}';

/// {@category Interface}
/// {@category com}
class IWSDServiceProxy extends IWSDMetadataExchange {
  // vtable begins at 4, is 7 entries long.
  IWSDServiceProxy(Pointer<COMObject> ptr) : super(ptr);

  int BeginGetMetadata(
    Pointer<Pointer<COMObject>> ppResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppResult,
          )>()(
        ptr.ref.lpVtbl,
        ppResult,
      );

  int EndGetMetadata(
    Pointer<COMObject> pResult,
    Pointer<Pointer<WSD_METADATA_SECTION_LIST>> ppMetadata,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pResult,
            Pointer<Pointer<WSD_METADATA_SECTION_LIST>> ppMetadata,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pResult,
            Pointer<Pointer<WSD_METADATA_SECTION_LIST>> ppMetadata,
          )>()(
        ptr.ref.lpVtbl,
        pResult,
        ppMetadata,
      );

  int GetServiceMetadata(
    Pointer<Pointer<WSD_SERVICE_METADATA>> ppServiceMetadata,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<WSD_SERVICE_METADATA>> ppServiceMetadata,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<WSD_SERVICE_METADATA>> ppServiceMetadata,
          )>()(
        ptr.ref.lpVtbl,
        ppServiceMetadata,
      );

  int SubscribeToOperation(
    Pointer<WSD_OPERATION> pOperation,
    Pointer<COMObject> pUnknown,
    Pointer<WSDXML_ELEMENT> pAny,
    Pointer<Pointer<WSDXML_ELEMENT>> ppAny,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WSD_OPERATION> pOperation,
            Pointer<COMObject> pUnknown,
            Pointer<WSDXML_ELEMENT> pAny,
            Pointer<Pointer<WSDXML_ELEMENT>> ppAny,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WSD_OPERATION> pOperation,
            Pointer<COMObject> pUnknown,
            Pointer<WSDXML_ELEMENT> pAny,
            Pointer<Pointer<WSDXML_ELEMENT>> ppAny,
          )>()(
        ptr.ref.lpVtbl,
        pOperation,
        pUnknown,
        pAny,
        ppAny,
      );

  int UnsubscribeToOperation(
    Pointer<WSD_OPERATION> pOperation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WSD_OPERATION> pOperation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WSD_OPERATION> pOperation,
          )>()(
        ptr.ref.lpVtbl,
        pOperation,
      );

  int SetEventingStatusCallback(
    Pointer<COMObject> pStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pStatus,
          )>()(
        ptr.ref.lpVtbl,
        pStatus,
      );

  int GetEndpointProxy(
    Pointer<Pointer<COMObject>> ppProxy,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppProxy,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppProxy,
          )>()(
        ptr.ref.lpVtbl,
        ppProxy,
      );
}
