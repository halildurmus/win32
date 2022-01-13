// IWSDServiceMessaging.dart

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
const IID_IWSDServiceMessaging = '{94974CF4-0CAB-460D-A3F6-7A0AD623C0E6}';

/// {@category Interface}
/// {@category com}
class IWSDServiceMessaging extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IWSDServiceMessaging(Pointer<COMObject> ptr) : super(ptr);

  int SendResponse(
    Pointer pBody,
    Pointer<WSD_OPERATION> pOperation,
    Pointer<COMObject> pMessageParameters,
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
            Pointer<COMObject> pMessageParameters,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pBody,
            Pointer<WSD_OPERATION> pOperation,
            Pointer<COMObject> pMessageParameters,
          )>()(
        ptr.ref.lpVtbl,
        pBody,
        pOperation,
        pMessageParameters,
      );

  int FaultRequest(
    Pointer<WSD_SOAP_HEADER> pRequestHeader,
    Pointer<COMObject> pMessageParameters,
    Pointer<WSD_SOAP_FAULT> pFault,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WSD_SOAP_HEADER> pRequestHeader,
            Pointer<COMObject> pMessageParameters,
            Pointer<WSD_SOAP_FAULT> pFault,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WSD_SOAP_HEADER> pRequestHeader,
            Pointer<COMObject> pMessageParameters,
            Pointer<WSD_SOAP_FAULT> pFault,
          )>()(
        ptr.ref.lpVtbl,
        pRequestHeader,
        pMessageParameters,
        pFault,
      );
}
