// IWSDUdpMessageParameters.dart

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

import '../../devices/webservicesondevices/IWSDMessageParameters.dart';
import '../../devices/webservicesondevices/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWSDUdpMessageParameters = '{9934149F-8F0C-447B-AA0B-73124B0CA7F0}';

/// {@category Interface}
/// {@category com}
class IWSDUdpMessageParameters extends IWSDMessageParameters {
  // vtable begins at 8, is 2 entries long.
  IWSDUdpMessageParameters(Pointer<COMObject> ptr) : super(ptr);

  int SetRetransmitParams(
    Pointer<WSDUdpRetransmitParams> pParams,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WSDUdpRetransmitParams> pParams,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WSDUdpRetransmitParams> pParams,
          )>()(
        ptr.ref.lpVtbl,
        pParams,
      );

  int GetRetransmitParams(
    Pointer<WSDUdpRetransmitParams> pParams,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WSDUdpRetransmitParams> pParams,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WSDUdpRetransmitParams> pParams,
          )>()(
        ptr.ref.lpVtbl,
        pParams,
      );
}
