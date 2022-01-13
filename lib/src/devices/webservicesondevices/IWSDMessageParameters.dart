// IWSDMessageParameters.dart

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
import '../../devices/webservicesondevices/IWSDAddress.dart';
import '../../foundation/structs.g.dart';
import '../../devices/webservicesondevices/IWSDMessageParameters.dart';

/// @nodoc
const IID_IWSDMessageParameters = '{1FAFE8A2-E6FC-4B80-B6CF-B7D45C416D7C}';

/// {@category Interface}
/// {@category com}
class IWSDMessageParameters extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IWSDMessageParameters(Pointer<COMObject> ptr) : super(ptr);

  int GetLocalAddress(
    Pointer<Pointer<COMObject>> ppAddress,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppAddress,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppAddress,
          )>()(
        ptr.ref.lpVtbl,
        ppAddress,
      );

  int SetLocalAddress(
    Pointer<COMObject> pAddress,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pAddress,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pAddress,
          )>()(
        ptr.ref.lpVtbl,
        pAddress,
      );

  int GetRemoteAddress(
    Pointer<Pointer<COMObject>> ppAddress,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppAddress,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppAddress,
          )>()(
        ptr.ref.lpVtbl,
        ppAddress,
      );

  int SetRemoteAddress(
    Pointer<COMObject> pAddress,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pAddress,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pAddress,
          )>()(
        ptr.ref.lpVtbl,
        pAddress,
      );

  int GetLowerParameters(
    Pointer<Pointer<COMObject>> ppTxParams,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppTxParams,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppTxParams,
          )>()(
        ptr.ref.lpVtbl,
        ppTxParams,
      );
}
