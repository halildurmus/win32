// IVdsControllerControllerPort.dart

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
import '../../storage/virtualdiskservice/IEnumVdsObject.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IVdsControllerControllerPort =
    '{CA5D735F-6BAE-42C0-B30E-F2666045CE71}';

/// {@category Interface}
/// {@category com}
class IVdsControllerControllerPort extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IVdsControllerControllerPort(Pointer<COMObject> ptr) : super(ptr);

  int QueryControllerPorts(
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
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
