// IVdsLunControllerPorts.dart

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
import '../../storage/virtualdiskservice/IEnumVdsObject.dart';

/// @nodoc
const IID_IVdsLunControllerPorts = '{451FE266-DA6D-406A-BB60-82E534F85AEB}';

/// {@category Interface}
/// {@category com}
class IVdsLunControllerPorts extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IVdsLunControllerPorts(Pointer<COMObject> ptr) : super(ptr);

  int AssociateControllerPorts(
    Pointer<GUID> pActiveControllerPortIdArray,
    int lNumberOfActiveControllerPorts,
    Pointer<GUID> pInactiveControllerPortIdArray,
    int lNumberOfInactiveControllerPorts,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pActiveControllerPortIdArray,
            Int32 lNumberOfActiveControllerPorts,
            Pointer<GUID> pInactiveControllerPortIdArray,
            Int32 lNumberOfInactiveControllerPorts,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pActiveControllerPortIdArray,
            int lNumberOfActiveControllerPorts,
            Pointer<GUID> pInactiveControllerPortIdArray,
            int lNumberOfInactiveControllerPorts,
          )>()(
        ptr.ref.lpVtbl,
        pActiveControllerPortIdArray,
        lNumberOfActiveControllerPorts,
        pInactiveControllerPortIdArray,
        lNumberOfInactiveControllerPorts,
      );

  int QueryActiveControllerPorts(
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
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
}
