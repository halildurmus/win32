// IWSDiscoveryPublisherNotify.dart

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
import '../../devices/webservicesondevices/IWSDMessageParameters.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWSDiscoveryPublisherNotify =
    '{E67651B0-337A-4B3C-9758-733388568251}';

/// {@category Interface}
/// {@category com}
class IWSDiscoveryPublisherNotify extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IWSDiscoveryPublisherNotify(Pointer<COMObject> ptr) : super(ptr);

  int ProbeHandler(
    Pointer<WSD_SOAP_MESSAGE> pSoap,
    Pointer<COMObject> pMessageParameters,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WSD_SOAP_MESSAGE> pSoap,
            Pointer<COMObject> pMessageParameters,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WSD_SOAP_MESSAGE> pSoap,
            Pointer<COMObject> pMessageParameters,
          )>()(
        ptr.ref.lpVtbl,
        pSoap,
        pMessageParameters,
      );

  int ResolveHandler(
    Pointer<WSD_SOAP_MESSAGE> pSoap,
    Pointer<COMObject> pMessageParameters,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WSD_SOAP_MESSAGE> pSoap,
            Pointer<COMObject> pMessageParameters,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WSD_SOAP_MESSAGE> pSoap,
            Pointer<COMObject> pMessageParameters,
          )>()(
        ptr.ref.lpVtbl,
        pSoap,
        pMessageParameters,
      );
}
