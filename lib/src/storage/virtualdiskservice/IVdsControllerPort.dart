// IVdsControllerPort.dart

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
import '../../storage/virtualdiskservice/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../storage/virtualdiskservice/IVdsController.dart';
import '../../storage/virtualdiskservice/IEnumVdsObject.dart';

/// @nodoc
const IID_IVdsControllerPort = '{18691D0D-4E7F-43E8-92E4-CF44BEEED11C}';

/// {@category Interface}
/// {@category com}
class IVdsControllerPort extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IVdsControllerPort(Pointer<COMObject> ptr) : super(ptr);

  int GetProperties(
    Pointer<VDS_PORT_PROP> pPortProp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VDS_PORT_PROP> pPortProp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VDS_PORT_PROP> pPortProp,
          )>()(
        ptr.ref.lpVtbl,
        pPortProp,
      );

  int GetController(
    Pointer<Pointer<COMObject>> ppController,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppController,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppController,
          )>()(
        ptr.ref.lpVtbl,
        ppController,
      );

  int QueryAssociatedLuns(
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        ppEnum,
      );

  int Reset() => ptr.ref.lpVtbl.value
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

  int SetStatus(
    int status,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 status,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int status,
          )>()(
        ptr.ref.lpVtbl,
        status,
      );
}
