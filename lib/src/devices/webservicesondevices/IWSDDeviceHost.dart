// IWSDDeviceHost.dart

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
import '../../foundation/structs.g.dart';
import '../../devices/webservicesondevices/IWSDXMLContext.dart';
import '../../devices/webservicesondevices/IWSDAddress.dart';
import '../../devices/webservicesondevices/structs.g.dart';
import '../../devices/webservicesondevices/IWSDDeviceHostNotify.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IWSDDeviceHost = '{917FE891-3D13-4138-9809-934C8ABEB12C}';

/// {@category Interface}
/// {@category com}
class IWSDDeviceHost extends IUnknown {
  // vtable begins at 3, is 12 entries long.
  IWSDDeviceHost(Pointer<COMObject> ptr) : super(ptr);

  int Init(
    Pointer<Utf16> pszLocalId,
    Pointer<COMObject> pContext,
    Pointer<Pointer<COMObject>> ppHostAddresses,
    int dwHostAddressCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszLocalId,
            Pointer<COMObject> pContext,
            Pointer<Pointer<COMObject>> ppHostAddresses,
            Uint32 dwHostAddressCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszLocalId,
            Pointer<COMObject> pContext,
            Pointer<Pointer<COMObject>> ppHostAddresses,
            int dwHostAddressCount,
          )>()(
        ptr.ref.lpVtbl,
        pszLocalId,
        pContext,
        ppHostAddresses,
        dwHostAddressCount,
      );

  int Start(
    int ullInstanceId,
    Pointer<WSD_URI_LIST> pScopeList,
    Pointer<COMObject> pNotificationSink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 ullInstanceId,
            Pointer<WSD_URI_LIST> pScopeList,
            Pointer<COMObject> pNotificationSink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ullInstanceId,
            Pointer<WSD_URI_LIST> pScopeList,
            Pointer<COMObject> pNotificationSink,
          )>()(
        ptr.ref.lpVtbl,
        ullInstanceId,
        pScopeList,
        pNotificationSink,
      );

  int Stop() => ptr.ref.lpVtbl.value
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

  int Terminate() => ptr.ref.lpVtbl.value
          .elementAt(6)
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

  int RegisterPortType(
    Pointer<WSD_PORT_TYPE> pPortType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WSD_PORT_TYPE> pPortType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WSD_PORT_TYPE> pPortType,
          )>()(
        ptr.ref.lpVtbl,
        pPortType,
      );

  int SetMetadata(
    Pointer<WSD_THIS_MODEL_METADATA> pThisModelMetadata,
    Pointer<WSD_THIS_DEVICE_METADATA> pThisDeviceMetadata,
    Pointer<WSD_HOST_METADATA> pHostMetadata,
    Pointer<WSD_METADATA_SECTION_LIST> pCustomMetadata,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WSD_THIS_MODEL_METADATA> pThisModelMetadata,
            Pointer<WSD_THIS_DEVICE_METADATA> pThisDeviceMetadata,
            Pointer<WSD_HOST_METADATA> pHostMetadata,
            Pointer<WSD_METADATA_SECTION_LIST> pCustomMetadata,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WSD_THIS_MODEL_METADATA> pThisModelMetadata,
            Pointer<WSD_THIS_DEVICE_METADATA> pThisDeviceMetadata,
            Pointer<WSD_HOST_METADATA> pHostMetadata,
            Pointer<WSD_METADATA_SECTION_LIST> pCustomMetadata,
          )>()(
        ptr.ref.lpVtbl,
        pThisModelMetadata,
        pThisDeviceMetadata,
        pHostMetadata,
        pCustomMetadata,
      );

  int RegisterService(
    Pointer<Utf16> pszServiceId,
    Pointer<COMObject> pService,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszServiceId,
            Pointer<COMObject> pService,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszServiceId,
            Pointer<COMObject> pService,
          )>()(
        ptr.ref.lpVtbl,
        pszServiceId,
        pService,
      );

  int RetireService(
    Pointer<Utf16> pszServiceId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszServiceId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszServiceId,
          )>()(
        ptr.ref.lpVtbl,
        pszServiceId,
      );

  int AddDynamicService(
    Pointer<Utf16> pszServiceId,
    Pointer<Utf16> pszEndpointAddress,
    Pointer<WSD_PORT_TYPE> pPortType,
    Pointer<WSDXML_NAME> pPortName,
    Pointer<WSDXML_ELEMENT> pAny,
    Pointer<COMObject> pService,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszServiceId,
            Pointer<Utf16> pszEndpointAddress,
            Pointer<WSD_PORT_TYPE> pPortType,
            Pointer<WSDXML_NAME> pPortName,
            Pointer<WSDXML_ELEMENT> pAny,
            Pointer<COMObject> pService,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszServiceId,
            Pointer<Utf16> pszEndpointAddress,
            Pointer<WSD_PORT_TYPE> pPortType,
            Pointer<WSDXML_NAME> pPortName,
            Pointer<WSDXML_ELEMENT> pAny,
            Pointer<COMObject> pService,
          )>()(
        ptr.ref.lpVtbl,
        pszServiceId,
        pszEndpointAddress,
        pPortType,
        pPortName,
        pAny,
        pService,
      );

  int RemoveDynamicService(
    Pointer<Utf16> pszServiceId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszServiceId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszServiceId,
          )>()(
        ptr.ref.lpVtbl,
        pszServiceId,
      );

  int SetServiceDiscoverable(
    Pointer<Utf16> pszServiceId,
    int fDiscoverable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszServiceId,
            Int32 fDiscoverable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszServiceId,
            int fDiscoverable,
          )>()(
        ptr.ref.lpVtbl,
        pszServiceId,
        fDiscoverable,
      );

  int SignalEvent(
    Pointer<Utf16> pszServiceId,
    Pointer pBody,
    Pointer<WSD_OPERATION> pOperation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszServiceId,
            Pointer pBody,
            Pointer<WSD_OPERATION> pOperation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszServiceId,
            Pointer pBody,
            Pointer<WSD_OPERATION> pOperation,
          )>()(
        ptr.ref.lpVtbl,
        pszServiceId,
        pBody,
        pOperation,
      );
}
