// IXMLHTTPRequest3Callback.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../data/xml/msxml/IXMLHTTPRequest2Callback.dart';
import '../../../data/xml/msxml/IXMLHTTPRequest3.dart';
import '../../../data/xml/msxml/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IXMLHTTPRequest3Callback = '{B9E57830-8C6C-4A6F-9C13-47772BB047BB}';

/// {@category Interface}
/// {@category com}
class IXMLHTTPRequest3Callback extends IXMLHTTPRequest2Callback {
  // vtable begins at 8, is 2 entries long.
  IXMLHTTPRequest3Callback(Pointer<COMObject> ptr) : super(ptr);

  int OnServerCertificateReceived(
    Pointer<COMObject> pXHR,
    int dwCertificateErrors,
    int cServerCertificateChain,
    Pointer<XHR_CERT> rgServerCertificateChain,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pXHR,
            Uint32 dwCertificateErrors,
            Uint32 cServerCertificateChain,
            Pointer<XHR_CERT> rgServerCertificateChain,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pXHR,
            int dwCertificateErrors,
            int cServerCertificateChain,
            Pointer<XHR_CERT> rgServerCertificateChain,
          )>()(
        ptr.ref.lpVtbl,
        pXHR,
        dwCertificateErrors,
        cServerCertificateChain,
        rgServerCertificateChain,
      );

  int OnClientCertificateRequested(
    Pointer<COMObject> pXHR,
    int cIssuerList,
    Pointer<Pointer<Uint16>> rgpwszIssuerList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pXHR,
            Uint32 cIssuerList,
            Pointer<Pointer<Uint16>> rgpwszIssuerList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pXHR,
            int cIssuerList,
            Pointer<Pointer<Uint16>> rgpwszIssuerList,
          )>()(
        ptr.ref.lpVtbl,
        pXHR,
        cIssuerList,
        rgpwszIssuerList,
      );
}
