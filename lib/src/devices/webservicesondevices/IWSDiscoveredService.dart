// IWSDiscoveredService.dart

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

/// @nodoc
const IID_IWSDiscoveredService = '{4BAD8A3B-B374-4420-9632-AAC945B374AA}';

/// {@category Interface}
/// {@category com}
class IWSDiscoveredService extends IUnknown {
  // vtable begins at 3, is 11 entries long.
  IWSDiscoveredService(Pointer<COMObject> ptr) : super(ptr);

  int GetEndpointReference(
    Pointer<Pointer<WSD_ENDPOINT_REFERENCE>> ppEndpointReference,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<WSD_ENDPOINT_REFERENCE>> ppEndpointReference,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<WSD_ENDPOINT_REFERENCE>> ppEndpointReference,
          )>()(
        ptr.ref.lpVtbl,
        ppEndpointReference,
      );

  int GetTypes(
    Pointer<Pointer<WSD_NAME_LIST>> ppTypesList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<WSD_NAME_LIST>> ppTypesList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<WSD_NAME_LIST>> ppTypesList,
          )>()(
        ptr.ref.lpVtbl,
        ppTypesList,
      );

  int GetScopes(
    Pointer<Pointer<WSD_URI_LIST>> ppScopesList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<WSD_URI_LIST>> ppScopesList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<WSD_URI_LIST>> ppScopesList,
          )>()(
        ptr.ref.lpVtbl,
        ppScopesList,
      );

  int GetXAddrs(
    Pointer<Pointer<WSD_URI_LIST>> ppXAddrsList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<WSD_URI_LIST>> ppXAddrsList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<WSD_URI_LIST>> ppXAddrsList,
          )>()(
        ptr.ref.lpVtbl,
        ppXAddrsList,
      );

  int GetMetadataVersion(
    Pointer<Uint64> pullMetadataVersion,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> pullMetadataVersion,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> pullMetadataVersion,
          )>()(
        ptr.ref.lpVtbl,
        pullMetadataVersion,
      );

  int GetExtendedDiscoXML(
    Pointer<Pointer<WSDXML_ELEMENT>> ppHeaderAny,
    Pointer<Pointer<WSDXML_ELEMENT>> ppBodyAny,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<WSDXML_ELEMENT>> ppHeaderAny,
            Pointer<Pointer<WSDXML_ELEMENT>> ppBodyAny,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<WSDXML_ELEMENT>> ppHeaderAny,
            Pointer<Pointer<WSDXML_ELEMENT>> ppBodyAny,
          )>()(
        ptr.ref.lpVtbl,
        ppHeaderAny,
        ppBodyAny,
      );

  int GetProbeResolveTag(
    Pointer<Pointer<Utf16>> ppszTag,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszTag,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszTag,
          )>()(
        ptr.ref.lpVtbl,
        ppszTag,
      );

  int GetRemoteTransportAddress(
    Pointer<Pointer<Utf16>> ppszRemoteTransportAddress,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszRemoteTransportAddress,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszRemoteTransportAddress,
          )>()(
        ptr.ref.lpVtbl,
        ppszRemoteTransportAddress,
      );

  int GetLocalTransportAddress(
    Pointer<Pointer<Utf16>> ppszLocalTransportAddress,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszLocalTransportAddress,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszLocalTransportAddress,
          )>()(
        ptr.ref.lpVtbl,
        ppszLocalTransportAddress,
      );

  int GetLocalInterfaceGUID(
    Pointer<GUID> pGuid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pGuid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pGuid,
          )>()(
        ptr.ref.lpVtbl,
        pGuid,
      );

  int GetInstanceId(
    Pointer<Uint64> pullInstanceId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> pullInstanceId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> pullInstanceId,
          )>()(
        ptr.ref.lpVtbl,
        pullInstanceId,
      );
}
