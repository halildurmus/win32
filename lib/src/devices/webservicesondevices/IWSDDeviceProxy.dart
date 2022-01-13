// IWSDDeviceProxy.dart

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
import '../../devices/webservicesondevices/IWSDAddress.dart';
import '../../devices/webservicesondevices/IWSDXMLContext.dart';
import '../../devices/webservicesondevices/IWSDDeviceProxy.dart';
import '../../devices/webservicesondevices/IWSDAsyncResult.dart';
import '../../devices/webservicesondevices/structs.g.dart';
import '../../devices/webservicesondevices/IWSDServiceProxy.dart';
import '../../devices/webservicesondevices/IWSDEndpointProxy.dart';

/// @nodoc
const IID_IWSDDeviceProxy = '{EEE0C031-C578-4C0E-9A3B-973C35F409DB}';

/// {@category Interface}
/// {@category com}
class IWSDDeviceProxy extends IUnknown {
  // vtable begins at 3, is 10 entries long.
  IWSDDeviceProxy(Pointer<COMObject> ptr) : super(ptr);

  int Init(
    Pointer<Utf16> pszDeviceId,
    Pointer<COMObject> pDeviceAddress,
    Pointer<Utf16> pszLocalId,
    Pointer<COMObject> pContext,
    Pointer<COMObject> pSponsor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszDeviceId,
            Pointer<COMObject> pDeviceAddress,
            Pointer<Utf16> pszLocalId,
            Pointer<COMObject> pContext,
            Pointer<COMObject> pSponsor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszDeviceId,
            Pointer<COMObject> pDeviceAddress,
            Pointer<Utf16> pszLocalId,
            Pointer<COMObject> pContext,
            Pointer<COMObject> pSponsor,
          )>()(
        ptr.ref.lpVtbl,
        pszDeviceId,
        pDeviceAddress,
        pszLocalId,
        pContext,
        pSponsor,
      );

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
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pResult,
          )>()(
        ptr.ref.lpVtbl,
        pResult,
      );

  int GetHostMetadata(
    Pointer<Pointer<WSD_HOST_METADATA>> ppHostMetadata,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<WSD_HOST_METADATA>> ppHostMetadata,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<WSD_HOST_METADATA>> ppHostMetadata,
          )>()(
        ptr.ref.lpVtbl,
        ppHostMetadata,
      );

  int GetThisModelMetadata(
    Pointer<Pointer<WSD_THIS_MODEL_METADATA>> ppManufacturerMetadata,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<WSD_THIS_MODEL_METADATA>> ppManufacturerMetadata,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<WSD_THIS_MODEL_METADATA>> ppManufacturerMetadata,
          )>()(
        ptr.ref.lpVtbl,
        ppManufacturerMetadata,
      );

  int GetThisDeviceMetadata(
    Pointer<Pointer<WSD_THIS_DEVICE_METADATA>> ppThisDeviceMetadata,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<WSD_THIS_DEVICE_METADATA>> ppThisDeviceMetadata,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<WSD_THIS_DEVICE_METADATA>> ppThisDeviceMetadata,
          )>()(
        ptr.ref.lpVtbl,
        ppThisDeviceMetadata,
      );

  int GetAllMetadata(
    Pointer<Pointer<WSD_METADATA_SECTION_LIST>> ppMetadata,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<WSD_METADATA_SECTION_LIST>> ppMetadata,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<WSD_METADATA_SECTION_LIST>> ppMetadata,
          )>()(
        ptr.ref.lpVtbl,
        ppMetadata,
      );

  int GetServiceProxyById(
    Pointer<Utf16> pszServiceId,
    Pointer<Pointer<COMObject>> ppServiceProxy,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszServiceId,
            Pointer<Pointer<COMObject>> ppServiceProxy,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszServiceId,
            Pointer<Pointer<COMObject>> ppServiceProxy,
          )>()(
        ptr.ref.lpVtbl,
        pszServiceId,
        ppServiceProxy,
      );

  int GetServiceProxyByType(
    Pointer<WSDXML_NAME> pType,
    Pointer<Pointer<COMObject>> ppServiceProxy,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WSDXML_NAME> pType,
            Pointer<Pointer<COMObject>> ppServiceProxy,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WSDXML_NAME> pType,
            Pointer<Pointer<COMObject>> ppServiceProxy,
          )>()(
        ptr.ref.lpVtbl,
        pType,
        ppServiceProxy,
      );

  int GetEndpointProxy(
    Pointer<Pointer<COMObject>> ppProxy,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
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
